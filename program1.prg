SET ESCA OFF
SET DEVI TO SCRE
SET PRIN OFF
SET EXAC OFF
SET SYSFORMATS ON
SET BELL OFF
SET CLOCK OFF
SET OPTIMIZE ON
CLEAR MACROS         && ������ ��������� ���������� ������ F1-F12
SET RESOURCE Off     && �� C�������� ���������
SET MULTILOCKS ON    && ���������� ���������� ������� �����
SET TALK OFF         && �� ���������� ���������� ����������
                     && ������ APPEND, AVERAGE,CALCULATE � ��.
SET DATE GERMAN      && ��� ������������ � ������ ����
SET CENTURY ON       && �������� ���������
SET DELETED ON       && ���������� � �������� ������ ��������
SET SAFETY OFF       && �� �������� ������ �� �����������
SET STATUS OFF
SET CONSOLE OFF
SET DEFAULT TO "D:\Project\����������� �� ������ ������\"
SET PATH TO "F:\NORMAW\ASUV\PICT\" ADDITIVE 
SET PATH TO "F:\NORMAW\ASUV\LIBR\" ADDITIVE 
PUBLIC con_bd,temp_baz,family,nom_ch,naimz_dlin,con_bd1,ci_num
family = ""
nom_ch = ""
naimz_dlin = ""
ci_num = ""
PRIVATE i
str_tmp = "select * from cnz "
cConnString="driver={SQL Server};SERVER=nitel-hp;Trusted_Connection=yes;DATABASE=cvodka;WSID=VFP;APP=VFP;"
con_bd=SQLSTRINGCONNECT(cConnString, .T.)
cConnString="driver={SQL Server};SERVER=nitel-hp;Trusted_Connection=yes;DATABASE=uit;WSID=VFP;APP=VFP;"
con_bd1=SQLSTRINGCONNECT(cConnString, .T.)
DO FORM planpostav_otobr_nom_verh_01