SET ESCA OFF
SET DEVI TO SCRE
SET PRIN OFF
SET EXAC OFF
SET SYSFORMATS ON
SET BELL OFF
SET CLOCK OFF
SET OPTIMIZE ON
CLEAR MACROS         && Отмена системных назначений клавиш F1-F12
SET RESOURCE Off     && не Cохранять настройки
SET MULTILOCKS ON    && Блокировка нескольких записей сразу
SET TALK OFF         && Не отображать результаты выполнения
                     && команд APPEND, AVERAGE,CALCULATE и др.
SET DATE GERMAN      && Тип общепринятой в России даты
SET CENTURY ON       && Столетие полностью
SET DELETED ON       && Помеченные к удалению записи невидимы
SET SAFETY OFF       && Не выдавать запрос на уничтожение
SET STATUS OFF
SET CONSOLE OFF
SET DEFAULT TO "D:\Project\Группировка со старым гридом\"
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