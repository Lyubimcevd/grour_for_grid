SET DATE GERMAN		&&Определяет формат отображения данных (полей, переменных) типа Date или DateTime
SET DELETED ON			&&как система Visual FoxPro обрабатывает записи таблицы, помеченные на удаление
SET SAFETY OFF		&&выводит ли система Visual FoxPro диалоговый бокс, содержащий варианты подтверждения;
* пользователем следующих действий: перезапись существующих файлов, или выполнения Правил (Rules) для таблиц;
* или полей, значений по-умолчанию, или обработки сообщений об ошибках при изменении структуры таблиц с;
* помощью Table Designer или при помощи команды ALTER TABLE.
SET CONSOLE OFF		&&Делает доступным или недоступным вывод из программы в главное окно Visual FoxPro или;
* в активное окно, определенное пользователем
SET TALK OFF		&&как система Visual FoxPro отображает результаты выполнения команд
SET ESCAPE OFF		&&Определяет активность механизма прерывания выполнения программы или команды при;
* нажатии клавиши ESC
SET EXCLUSIVE OFF		&&как система Visual FoxPro открывает файлы таблиц данных, эксклюзивно или для;
* коллективного использования в локальной сети (exclusive or shared use)
SET DEVICE TO SCREEN &&Направляет вывод @ ... SAY на экран, принтер, или в файл
SET PRINTER OFF		&&Включает или Выключает вывод данных на принтер, или управляет выводом данных;
* в файл, или на сетевой принтер
SET CENTURY ON		&&как Visual FoxPro отображает часть столетия выражения типа дата,  и как;
* Visual FoxPro интерпретирует даты, которые заданы  только 2-мя цифрами года
SET EXACT OFF		&&как в Visual FoxPro сравниваются символьные строки, имеющие разную длину
SET STATUS OFF		&&Отображает или удаляет с экрана графическую строку Статуса (Graphic Status Bar)
SET SYSFORMATS ON	&&как используются системные установки OS Microsoft Windows для настройки;
* системных параметров Visual FoxPro Windows
SET BELL ON		&&Включает или Отключает звуковой сигнал
SET CLOCK OFF		&&показываются ли системные часы в главном окне Visual FoxPro, ;
*а также определяет их местоположение
SET OPTIMIZE ON		&&Включает или Отключает механизм Rushmore Query Optimization
SET RESOURCE OFF
SET REPORTBEHAVIOR
SET SYSMENU AUTOMATIC
*!*	SET ENGINEBEHAVIOR 90
*##########################
PUBLIC is_enter,is_quit
is_enter = .F.
is_quit = .F.
****** библиотека
PUBLIC CUR,LOHEADERS,TOCOLLECTION,TEMP_BAZ,NAIMZ_DLIN
****** Для идентификации
PUBLIC NEW_ZNACH,GRR,VX_1,ID_PODRAZDEL,PODRAZDEL,DOLGHNOST,CI_NUM,FAMILY,ID_FAMILY,SUPERVISOR,FAM
****** Для меню
PUBLIC LPUNKT_MENU,LPUNKT_MENU1,NOM_CH,VKLADKI_VISOTA,DOBAV,DOBAV1,PUNKT_MENUS
****** Для просмотров
PUBLIC DATV,DATV1,CLI,PM,GGGG,MM,R1,ID_GR,ID_GRS
****** Мои
PUBLIC HAD,HAD_NORMA,NUMBUT,PUT_1,PUT_2,PUT_3,PUT_4,PUT_5,;
	PUT_6,PUT_7,PUT_8,PUT_9,PUT_10,PUT_11,PUT_12,PUT_13,PUT_14,PUT_15,PUT_16,PUT_17,PUT_18,PUT_19,PUT_20,PUT_21,PUT_22,;
	EEE1,EEE2,EEE3,MFILE,MFILEA,MFILEV,MFILEB,VIH,PAROLL,KNOPKA,KSN,KTSSL,KTSST,;
	T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15,T16,T17,T18,T19,CLK1,CLK2,KM,KS,KN,PROZ,ZN,ZK,NOMZ1,;
	TEMP_BAZ,CON_BD,CON_BD1,CON_BD2,NOM_CH,VKLADKI_VISOTA,PAROL,NAKL,RABDP,REJ,RCU,KSN,RABDN,RABDK,ZAK,DATA_VOSST,;
	MASS_PORT,MASS_PLAN,MASS_KATAL,V_PORC,VIH,MFILE,MFILEA,MFILEV,MFILEB,RRC,PEREK,REPEREK,;
	PRINTER_DEFA,VIB_ESC,NASTR_ID,MASS_PORT,MASS_PLAN,MASS_KATAL,VIB_PORC,KOL_EKZ,PROC,RDAT,Z1,PRKOP,;
	IMIA,TEMP,TEMP2,EEE1,EEE2,EEE3,FAMILY,DAT,form_result,;
	PRINTER_DEFA,TEMP,TEMP2,VIB_ESC,NASTR_ID,M,R,N,IFP,DD,SZ,SP,POD,DT
EEE2='АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯабвгдежзийклмнопрстуфхцчшщъыьэюя'
EEE3="F,DULT;PBQRKVYJGHCNEA[WXIO]SM'.Zf,dult;pbqrkvyjghcnea[wxio]sm'.z"
FAM='SUBSTR(SYS(0),(AT('#',SYS(0)))+2)'
FAMILY=SUBSTR(SYS(0),(AT('#',SYS(0)))+2)

cConnString="driver={SQL Server};SERVER=nitel-hp;uid=ldo;pwd=IfLyyz4sCJ;DATABASE=cvodka;WSID=VFP;APP=VFP;"
con_bd=SQLSTRINGCONNECT(cConnString, .T.)
con_bd1 = SQLSTRINGCONNECT(cConnString, .T.)