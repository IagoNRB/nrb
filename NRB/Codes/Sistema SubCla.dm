world/New()
	spawn(-1) SubAkatLoad()
	..()
world/Del()
	spawn(-1) SubAkatSave()
	..()

var/WHidan
var/WDeidara
var/WZetsu
var/WPain
var/WSasori
var/WKonan
var/WTobi
var/WKakuzu
var/WKisameAkat
var/WItachi
var/WKisameSSS
var/WZabuzaSSS
var/WRaigaSSS
var/WJiroubouSO
var/WTayuyaSO
var/WKidoumaruSO
var/WSakonSO
var/WDosuSO
var/WOrochimaruSub
var/WSasukeTaka
var/WKarinTaka
var/WJuugoTaka
var/WSuigetsuTaka
var/WSandaimeH
var/WOonoki
var/WHashirama
var/WTobirama
var/WMizukage
var/WMinato
var/WRaikage
var/WRingo
var/WJinin
var/WJinpachi
var/WKushimaru

proc
	SubAkatSave()
		var/savefile/F = new("Subclas.sav")
		F["WHidan"] << WHidan
		F["WItachi"] << WItachi
		F["WDeidara"] << WDeidara
		F["WZetsu"] << WZetsu
		F["WPain"] << WPain
		F["WSasori"] << WSasori
		F["WKonan"] << WKonan
		F["WTobi"] << WTobi
		F["WKakuzu"] << WKakuzu
		F["WKisameAkat"] << WKisameAkat
		F["WKisameSSS"] << WKisameSSS
		F["WZabuzaSSS"] << WZabuzaSSS
		F["WRaigaSSS"] << WRaigaSSS
		F["WJiroubouSO"] << WJiroubouSO
		F["WTayuyaSO"] << WTayuyaSO
		F["WKidoumaruSO"] << WKidoumaruSO
		F["WSakonSO"] << WSakonSO
		F["WDosuSO"] << WDosuSO
		F["WOrochimaruSub"] << WOrochimaruSub
		F["WSasukeTaka"] << WSasukeTaka
		F["WKarinTaka"] << WKarinTaka
		F["WJuugoTaka"] << WJuugoTaka
		F["WSuigetsuTaka"] << WSuigetsuTaka
		F["WSandaimeH"] << WSandaimeH
		F["WOonoki"] << WOonoki
		F["WHashirama"] << WHashirama
		F["WTobirama"] << WTobirama
		F["WMizukage"] << WMizukage
		F["WMinato"] << WMinato
		F["WRaikage"] << WRaikage
		F["WRingo"] << WRingo
		F["WJinin"] << WJinin
		F["WJinpachi"] << WJinpachi
		F["WKushimaru"] << WKushimaru

	SubAkatLoad()
		if(fexists("Subclas.sav"))
			var/savefile/F = new("Subclas.sav")
			F["WHidan"] >> WHidan
			F["WDeidara"] >> WDeidara
			F["WZetsu"] >> WZetsu
			F["WPain"] >> WPain
			F["WSasori"] >> WSasori
			F["WKonan"] >> WKonan
			F["WTobi"] >> WTobi
			F["WKakuzu"] >> WKakuzu
			F["WKisameAkat"] >> WKisameAkat
			F["WItachi"] >> WItachi
			F["WKisameSSS"] >> WKisameSSS
			F["WZabuzaSSS"] >> WZabuzaSSS
			F["WRaigaSSS"] >> WRaigaSSS
			F["WJiroubouSO"] >> WJiroubouSO
			F["WKidoumaruSO"] >> WKidoumaruSO
			F["WSakonSO"] >> WSakonSO
			F["WDosuSO"] >> WDosuSO
			F["WTayuyaSO"] >> WTayuyaSO
			F["WOrochimaruSub"] >> WOrochimaruSub
			F["WSasukeTaka"] >> WSasukeTaka
			F["WKarinTaka"] >> WKarinTaka
			F["WJuugoTaka"] >> WJuugoTaka
			F["WSuigetsuTaka"] >> WSuigetsuTaka
			F["WSandaimeH"] >> WSandaimeH
			F["WOonoki"] >> WOonoki
			F["WHashirama"] >> WHashirama
			F["WTobirama"] >> WTobirama
			F["WMizukage"] >> WMizukage
			F["WMinato"] >> WMinato
			F["WRaikage"] >> WRaikage
			F["WRingo"] >> WRingo
			F["WJinin"] >> WJinin
			F["WJinpachi"] >> WJinpachi
			F["WKushimaru"] >> WKushimaru

		if(!WHidan) WHidan=new/SUBD
		if(!WDeidara) WDeidara=new/SUBD
		if(!WZetsu) WZetsu=new/SUBD
		if(!WPain) WPain=new/SUBD
		if(!WSasori) WSasori=new/SUBD
		if(!WKonan) WKonan=new/SUBD
		if(!WTobi) WTobi=new/SUBD
		if(!WKakuzu) WKakuzu=new/SUBD
		if(!WKisameAkat) WKisameAkat=new/SUBD
		if(!WItachi) WItachi=new/SUBD
		if(!WKisameSSS) WKisameSSS=new/SUBD
		if(!WZabuzaSSS) WZabuzaSSS=new/SUBD
		if(!WRaigaSSS) WRaigaSSS=new/SUBD
		if(!WJiroubouSO) WJiroubouSO=new/SUBD
		if(!WKidoumaruSO) WKidoumaruSO=new/SUBD
		if(!WSakonSO) WSakonSO=new/SUBD
		if(!WDosuSO) WDosuSO=new/SUBD
		if(!WTayuyaSO) WTayuyaSO=new/SUBD
		if(!WOrochimaruSub) WOrochimaruSub=new/SUBD
		if(!WSasukeTaka) WSasukeTaka=new/SUBD
		if(!WKarinTaka) WKarinTaka=new/SUBD
		if(!WJuugoTaka) WJuugoTaka=new/SUBD
		if(!WSuigetsuTaka) WSuigetsuTaka=new/SUBD
		if(!WSandaimeH) WSandaimeH=new/SUBD
		if(!WOonoki) WOonoki=new/SUBD
		if(!WHashirama) WHashirama=new/SUBD
		if(!WTobirama) WTobirama=new/SUBD
		if(!WMizukage) WMizukage=new/SUBD
		if(!WMinato) WMinato=new/SUBD
		if(!WRaikage) WRaikage=new/SUBD
		if(!WRingo) WRingo=new/SUBD
		if(!WJinin) WJinin=new/SUBD
		if(!WJinpachi) WJinpachi=new/SUBD
		if(!WKushimaru) WKushimaru=new/SUBD

SUBD
	var/dono="Ninguem"