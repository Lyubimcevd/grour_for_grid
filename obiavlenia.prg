SET DATE GERMAN		&&���������� ������ ����������� ������ (�����, ����������) ���� Date ��� DateTime
SET DELETED ON			&&��� ������� Visual FoxPro ������������ ������ �������, ���������� �� ��������
SET SAFETY OFF		&&������� �� ������� Visual FoxPro ���������� ����, ���������� �������� �������������;
* ������������� ��������� ��������: ���������� ������������ ������, ��� ���������� ������ (Rules) ��� ������;
* ��� �����, �������� ��-���������, ��� ��������� ��������� �� ������� ��� ��������� ��������� ������ �;
* ������� Table Designer ��� ��� ������ ������� ALTER TABLE.
SET CONSOLE OFF		&&������ ��������� ��� ����������� ����� �� ��������� � ������� ���� Visual FoxPro ���;
* � �������� ����, ������������ �������������
SET TALK OFF		&&��� ������� Visual FoxPro ���������� ���������� ���������� ������
SET ESCAPE OFF		&&���������� ���������� ��������� ���������� ���������� ��������� ��� ������� ���;
* ������� ������� ESC
SET EXCLUSIVE OFF		&&��� ������� Visual FoxPro ��������� ����� ������ ������, ����������� ��� ���;
* ������������� ������������� � ��������� ���� (exclusive or shared use)
SET DEVICE TO SCREEN &&���������� ����� @ ... SAY �� �����, �������, ��� � ����
SET PRINTER OFF		&&�������� ��� ��������� ����� ������ �� �������, ��� ��������� ������� ������;
* � ����, ��� �� ������� �������
SET CENTURY ON		&&��� Visual FoxPro ���������� ����� �������� ��������� ���� ����,  � ���;
* Visual FoxPro �������������� ����, ������� ������  ������ 2-�� ������� ����
SET EXACT OFF		&&��� � Visual FoxPro ������������ ���������� ������, ������� ������ �����
SET STATUS OFF		&&���������� ��� ������� � ������ ����������� ������ ������� (Graphic Status Bar)
SET SYSFORMATS ON	&&��� ������������ ��������� ��������� OS Microsoft Windows ��� ���������;
* ��������� ���������� Visual FoxPro Windows
SET BELL ON		&&�������� ��� ��������� �������� ������
SET CLOCK OFF		&&������������ �� ��������� ���� � ������� ���� Visual FoxPro, ;
*� ����� ���������� �� ��������������
SET OPTIMIZE ON		&&�������� ��� ��������� �������� Rushmore Query Optimization
SET RESOURCE OFF
SET REPORTBEHAVIOR
SET SYSMENU AUTOMATIC
*!*	SET ENGINEBEHAVIOR 90
*##########################
PUBLIC is_enter,is_quit
is_enter = .F.
is_quit = .F.
****** ����������
PUBLIC CUR,LOHEADERS,TOCOLLECTION,TEMP_BAZ,NAIMZ_DLIN
****** ��� �������������
PUBLIC NEW_ZNACH,GRR,VX_1,ID_PODRAZDEL,PODRAZDEL,DOLGHNOST,CI_NUM,FAMILY,ID_FAMILY,SUPERVISOR,FAM
****** ��� ����
PUBLIC LPUNKT_MENU,LPUNKT_MENU1,NOM_CH,VKLADKI_VISOTA,DOBAV,DOBAV1,PUNKT_MENUS
****** ��� ����������
PUBLIC DATV,DATV1,CLI,PM,GGGG,MM,R1,ID_GR,ID_GRS
****** ���
PUBLIC HAD,HAD_NORMA,NUMBUT,PUT_1,PUT_2,PUT_3,PUT_4,PUT_5,;
	PUT_6,PUT_7,PUT_8,PUT_9,PUT_10,PUT_11,PUT_12,PUT_13,PUT_14,PUT_15,PUT_16,PUT_17,PUT_18,PUT_19,PUT_20,PUT_21,PUT_22,;
	EEE1,EEE2,EEE3,MFILE,MFILEA,MFILEV,MFILEB,VIH,PAROLL,KNOPKA,KSN,KTSSL,KTSST,;
	T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15,T16,T17,T18,T19,CLK1,CLK2,KM,KS,KN,PROZ,ZN,ZK,NOMZ1,;
	TEMP_BAZ,CON_BD,CON_BD1,CON_BD2,NOM_CH,VKLADKI_VISOTA,PAROL,NAKL,RABDP,REJ,RCU,KSN,RABDN,RABDK,ZAK,DATA_VOSST,;
	MASS_PORT,MASS_PLAN,MASS_KATAL,V_PORC,VIH,MFILE,MFILEA,MFILEV,MFILEB,RRC,PEREK,REPEREK,;
	PRINTER_DEFA,VIB_ESC,NASTR_ID,MASS_PORT,MASS_PLAN,MASS_KATAL,VIB_PORC,KOL_EKZ,PROC,RDAT,Z1,PRKOP,;
	IMIA,TEMP,TEMP2,EEE1,EEE2,EEE3,FAMILY,DAT,form_result,;
	PRINTER_DEFA,TEMP,TEMP2,VIB_ESC,NASTR_ID,M,R,N,IFP,DD,SZ,SP,POD,DT
EEE2='����������������������������������������������������������������'
EEE3="F,DULT;PBQRKVYJGHCNEA[WXIO]SM'.Zf,dult;pbqrkvyjghcnea[wxio]sm'.z"
FAM='SUBSTR(SYS(0),(AT('#',SYS(0)))+2)'
FAMILY=SUBSTR(SYS(0),(AT('#',SYS(0)))+2)

cConnString="driver={SQL Server};SERVER=nitel-hp;uid=ldo;pwd=IfLyyz4sCJ;DATABASE=cvodka;WSID=VFP;APP=VFP;"
con_bd=SQLSTRINGCONNECT(cConnString, .T.)
con_bd1 = SQLSTRINGCONNECT(cConnString, .T.)