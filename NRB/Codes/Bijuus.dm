world/New()
	spawn(-1) LoadBijuus()
	..()
world/Del()
	spawn(-1) SalvarBijuus()
	..()


var/WIchibi
var/WNibi
var/WSanbi
var/WYonbi
var/WGobi
var/WRokubi
var/WShichibi
var/WHachibi
var/WKyuubi
var/WJuubi

mob/var
	Ichibi=0
	Nibi=0
	Sanbi=0
	Yonbi=0
	Gobi=0
	Rokubi=0
	Sishibi=0
	Hachibi=0
	Kyuubi=0
	Juubi=0

proc
	SalvarBijuus()
		var/savefile/F = new("Bijuus.sav")
		F["WIchibi"] << WIchibi
		F["WNibi"] << WNibi
		F["WSanbi"] << WSanbi
		F["WYonbi"] << WYonbi
		F["WGobi"] << WGobi
		F["WRokubi"] << WRokubi
		F["WShichibi"] << WShichibi
		F["WHachibi"] << WHachibi
		F["WKyuubi"] << WKyuubi
		F["WJuubi"] << WJuubi
		//Write(F)
	LoadBijuus()
		if(fexists("Bijuus.sav"))
			var/savefile/F = new("Bijuus.sav")
			F["WIchibi"] >> WIchibi
			F["WNibi"] >> WNibi
			F["WSanbi"] >> WSanbi
			F["WYonbi"] >> WYonbi
			F["WGobi"] >> WGobi
			F["WRokubi"] >> WRokubi
			F["WShichibi"] >> WShichibi
			F["WHachibi"] >> WHachibi
			F["WKyuubi"] >> WKyuubi
			F["WJuubi"] >> WJuubi
			//Read(F)

		if(!WIchibi) WIchibi=new/Bijuu
		if(!WNibi) WNibi=new/Bijuu
		if(!WSanbi) WSanbi=new/Bijuu
		if(!WYonbi) WYonbi=new/Bijuu
		if(!WGobi) WGobi=new/Bijuu
		if(!WRokubi) WRokubi=new/Bijuu
		if(!WShichibi) WShichibi=new/Bijuu
		if(!WHachibi) WHachibi=new/Bijuu
		if(!WKyuubi) WKyuubi=new/Bijuu
		if(!WJuubi) WJuubi=new/Bijuu

Bijuu
	var/dono="Ninguem"

mob/jutsus
	verb
		Libertar_Kyuubi()
			set name = "Libertar Kyuubi"
			set category="Bijuu"
			if(usr.Jinchuuriki&&usr.Kyuubi||usr.ADM==1)
				WKyuubi:dono="Ninguem"
				WKyuubi=new/Bijuu
				usr.Kyuubi=0
				usr.Jinchuuriki=0
				usr.verbs -= new /mob/jutsu/verb/GGKai()
				usr.verbs -= new /mob/Jinc/verb/BDamaJinchu()
				usr.verbs -= new /mob/Jinc/verb/KyuubiPowerup()
				usr.verbs -= new /mob/Jinc/verb/Powerup2()
				usr.verbs -= new /mob/jutsus/verb/Libertar_Kyuubi()
				usr<<"Você soltou a Bijuu!"
				world<<"<center><font color=red><b>A Kyuubi está solta novamente!"
				//usr.SalvarAgora()
				SalvarBijuus()

		Libertar_Juubi()
			set name = "Libertar Juubi"
			set category="Bijuu"
			if(usr.Jinchuuriki&&usr.Juubi||usr.ADM==1)
				WJuubi:dono="Ninguem"
				WJuubi=new/Bijuu
				usr.Juubi=0
				usr.Jinchuuriki=0
				usr.verbs -= new /mob/Jinc/verb/BDamaJinchu()
				usr.verbs -= new /mob/Jinc/verb/JuubiPowerup()
				usr.verbs -= new /mob/jutsus/verb/Libertar_Juubi()
				usr<<"Você soltou a Bijuu!"
				world<<"<center><font color=red><b>A Juubi está solta novamente!"
				//usr.SalvarAgora()
				SalvarBijuus()
				for(var/obj/Cajado6Caminhos/CJ in usr) del CJ

		Libertar_Hachibi()
			set name = "Libertar Hachibi"
			set category="Bijuu"
			if(usr.Jinchuuriki&&usr.Hachibi||usr.ADM==1)
				WHachibi:dono="Ninguem"
				WHachibi=new/Bijuu
				usr.Hachibi=0
				usr.Jinchuuriki=0
				usr.verbs -= new /mob/jutsu/verb/GGKai()
				usr.verbs -= new /mob/Jinc/verb/BDamaJinchu()
				usr.verbs -= new /mob/Jinc/verb/HachibiPowerup()
				usr.verbs -= new /mob/Jinc/verb/Powerup2()
				usr.verbs -= new /mob/jutsus/verb/Libertar_Hachibi()
				usr<<"Você soltou a Bijuu!"
				world<<"<center><font color=#696969><b>O Hachibi está solto novamente!"
				//usr.SalvarAgora()
				SalvarBijuus()


		Libertar_Shichibi()
			set name = "Libertar Nanabi"
			set category="Bijuu"
			if(usr.Jinchuuriki&&usr.Sishibi||usr.ADM==1)
				WShichibi:dono="Ninguem"
				WShichibi=new/Bijuu
				usr.Sishibi=0
				usr.Jinchuuriki=0
				usr.verbs -= new /mob/jutsu/verb/GGKai()
				usr.verbs -= new /mob/Jinc/verb/BDamaJinchu()
				usr.verbs -= new /mob/Jinc/verb/NanabiPowerup()
				usr.verbs -= new /mob/Jinc/verb/Powerup2()
				usr.verbs -= new /mob/jutsus/verb/Libertar_Shichibi()
				usr<<"Você soltou a Bijuu!"
				world<<"<center><font color=green><b>O Nanabi está solto novamente!"
				//usr.SalvarAgora()
				SalvarBijuus()


		Libertar_Rokubi()
			set name = "Libertar Rokubi"
			set category="Bijuu"
			if(usr.Jinchuuriki&&usr.Rokubi||usr.ADM==1)
				WRokubi:dono="Ninguem"
				WRokubi=new/Bijuu
				usr.Rokubi=0
				usr.Jinchuuriki=0
				usr.verbs -= new /mob/jutsu/verb/GGKai()
				usr.verbs -= new /mob/Jinc/verb/BDamaJinchu()
				usr.verbs -= new /mob/Jinc/verb/RokubiPowerup()
				usr.verbs -= new /mob/Jinc/verb/Powerup2()
				usr.verbs -= new /mob/jutsus/verb/Libertar_Rokubi()
				usr<<"Você soltou a Bijuu!"
				world<<"<center><font color=#FF4500><b>O Rokubi está solto novamente!"
				//usr.SalvarAgora()
				SalvarBijuus()


		Libertar_Gobi()
			set name = "Libertar Gobi"
			set category="Bijuu"
			if(usr.Jinchuuriki&&usr.Gobi||usr.ADM==1)
				WGobi:dono="Ninguem"
				WGobi=new/Bijuu
				usr.Gobi=0
				usr.Jinchuuriki=0
				usr.verbs -= new /mob/jutsu/verb/GGKai()
				usr.verbs -= new /mob/Jinc/verb/BDamaJinchu()
				usr.verbs -= new /mob/Jinc/verb/GobiPowerup()
				usr.verbs -= new /mob/Jinc/verb/Powerup2()
				usr.verbs -= new /mob/jutsus/verb/Libertar_Gobi()
				usr<<"Você soltou a Bijuu!"
				world<<"<center><font color=white><b>O Gobi está solto novamente!"
				//usr.SalvarAgora()
				SalvarBijuus()


		Libertar_Yonbi()
			set name = "Libertar Yonbi"
			set category="Bijuu"
			if(usr.Jinchuuriki&&usr.Yonbi||usr.ADM==1)
				WYonbi:dono="Ninguem"
				WYonbi=new/Bijuu
				usr.Yonbi=0
				usr.Jinchuuriki=0
				usr.verbs -= new /mob/jutsu/verb/GGKai()
				usr.verbs -= new /mob/Jinc/verb/BDamaJinchu()
				usr.verbs -= new /mob/Jinc/verb/YonbiPowerup()
				usr.verbs -= new /mob/Jinc/verb/Powerup2()
				usr.verbs -= new /mob/jutsus/verb/Libertar_Yonbi()
				usr<<"Você soltou a Bijuu!"
				world<<"<center><font color=#b8860b><b>O Yonbi está solto novamente!"
				//usr.SalvarAgora()
				SalvarBijuus()


		Libertar_Sanbi()
			set name = "Libertar Sanbi"
			set category="Bijuu"
			if(usr.Jinchuuriki&&usr.Sanbi||usr.ADM==1)
				WSanbi:dono="Ninguem"
				WSanbi=new/Bijuu
				usr.Sanbi=0
				usr.Jinchuuriki=0
				usr.verbs -= new /mob/jutsu/verb/GGKai()
				usr.verbs -= new /mob/Jinc/verb/BDamaJinchu()
				usr.verbs -= new /mob/Jinc/verb/SanbiPowerup()
				usr.verbs -= new /mob/Jinc/verb/Powerup2()
				usr.verbs -= new /mob/jutsus/verb/Libertar_Sanbi()
				usr<<"Você soltou a Bijuu!"
				world<<"<center><font color=cyan><b>O Sanbi está solto novamente!"
				//usr.SalvarAgora()
				SalvarBijuus()


		Libertar_Nibi()
			set name = "Libertar Nibi"
			set category="Bijuu"
			if(usr.Jinchuuriki&&usr.Nibi||usr.ADM==1)
				WNibi:dono="Ninguem"
				WNibi=new/Bijuu
				usr.Nibi=0
				usr.Jinchuuriki=0
				usr.verbs -= new /mob/jutsu/verb/GGKai()
				usr.verbs -= new /mob/Jinc/verb/BDamaJinchu()
				usr.verbs -= new /mob/Jinc/verb/NibiPowerup()
				usr.verbs -= new /mob/Jinc/verb/Powerup2()
				usr.verbs -= new /mob/jutsus/verb/Libertar_Nibi()
				usr<<"Você soltou a Bijuu!"
				world<<"<center><font color=blue><b>O Nibi está solto novamente!"
				//usr.SalvarAgora()
				SalvarBijuus()


		Libertar_Ichibi()
			set name = "Libertar Ichibi"
			set category="Bijuu"
			if(usr.Jinchuuriki&&usr.Ichibi||usr.ADM==1)
				WIchibi:dono="Ninguem"
				WIchibi=new/Bijuu
				usr.Ichibi=0
				usr.Jinchuuriki=0
				usr.verbs -= new /mob/jutsu/verb/GGKai()
				usr.verbs -= new /mob/Jinc/verb/BDamaJinchu()
				usr.verbs -= new /mob/Jinc/verb/IchibiPowerup()
				usr.verbs -= new /mob/Jinc/verb/Powerup2()
				usr.verbs -= new /mob/jutsus/verb/Libertar_Ichibi()
				usr<<"Você soltou a Bijuu!"
				world<<"<center><font color=yellow><b>O Ichibi está solto novamente!"
				//usr.SalvarAgora()
				SalvarBijuus()


//=================================================================================//
mob/ADM/verb
	SalvarBijuus()
		set name = "Salvar Bijuus"
		set category="ADM"
	LoadBijuus()
		set name = "Load Bijuus"
		set category="ADM"



	InvocarBijuus()
		set name = "Invocar Bijuus"
		set category = "ADM"
		if(WIchibi:dono=="Ninguem")
			var/mob/Bijuus/Ichibi/I = new()
			I.loc = locate(320, 106, 9)
			world<<"<center><font color=yellow><b>O Ichibi foi Invocado!"
		else
			usr<<"O Ichibi não foi invocado pois já está selado!"
		if(WNibi:dono=="Ninguem")
			var/mob/Bijuus/Nibi/N = new()
			N.loc = locate(131, 249, 9)
			world<<"<center><font color=blue><b>O Nibi foi Invocado!"
		else
			usr<<"O Nibi não foi invocado pois já está selado!"
		if(WSanbi:dono=="Ninguem")
			var/mob/Bijuus/Sanbi/S = new()
			S.loc = locate(171, 363, 9)
			world<<"<center><font color=cyan><b>O Sanbi foi Invocado!"
		else
			usr<<"O Sanbi não foi invocado pois já está selado!"
		if(WYonbi:dono=="Ninguem")
			var/mob/Bijuus/Yonbi/Y = new()
			Y.loc = locate(328, 434, 9)
			world<<"<center><font color=#b8860b><b>O Yonbi foi Invocado!"
		else
			usr<<"O Yonbi não foi invocado pois já está selado!"
		if(WGobi:dono=="Ninguem")
			var/mob/Bijuus/Gobi/G = new()
			G.loc = locate(476, 290, 9)
			world<<"<center><font color=white><b>O Gobi foi Invocado!"
		else
			usr<<"O Gobi não foi invocado pois já está selado!"
		if(WRokubi:dono=="Ninguem")
			var/mob/Bijuus/Rokubi/R = new()
			R.loc = locate(590, 379, 9)
			world<<"<center><font color=#FF4500><b>O Rokubi foi Invocado!"
		else
			usr<<"O Rokubi não foi invocado pois já está selado!"
		if(WShichibi:dono=="Ninguem")
			var/mob/Bijuus/Nanabi/SH = new()
			SH.loc = locate(630, 238, 9)
			world<<"<center><font color=green><b>O Nanabi foi Invocado!"
		else
			usr<<"O Nanabi não foi invocado pois já está selado!"
		if(WHachibi:dono=="Ninguem")
			var/mob/Bijuus/Hachibi/H = new()
			H.loc = locate(630, 114, 9)
			world<<"<center><font color=#696969><b>O Hachibi foi Invocado!"
		else
			usr<<"O Hachibi não foi invocado pois já está selado!"
		if(WKyuubi:dono=="Ninguem")
			var/mob/Bijuus/Kyuubi/K = new()
			K.loc = locate(518, 43, 9)
			world<<"<center><font color=red><b>A Kyuubi foi Invocada!"
		else
			usr<<"A Kyuubi não foi invocada pois já está selada!"
		if(juubisolto)
			var/mob/Bijuus/Kyuubi/K = new()
			K.loc = locate(518, 43, 9)
			world<<"<center><font color=red><b>A Juubi foi Invocada!"
		else
			usr<<"A Juubi não foi invocada pois não está solta!"



mob/ADM
	verb
		Quemtaemqualbijuu()
			set name = "Ver Bijuus Mundo"
			set category = "ADM"
			var/html = {"
<html><body bgcolor=black text=#CCCCCC link=white vlink=white alink=white>
<center><b><h3>Ver Bijuus Mundo:</b></h3></center><br><br><table width =100%>"}
			html += {"
			<tr><td>Ichibi</td><td>[WIchibi:dono]</td></tr>
			<tr><td>Nibi</td><td>[WNibi:dono]</td></tr>
			<tr><td>Sanbi</td><td>[WSanbi:dono]</td></tr>
			<tr><td>Yonbi</td><td>[WYonbi:dono]</td></tr>
			<tr><td>Gobi</td><td>[WGobi:dono]</td></tr>
			<tr><td>Rokubi</td><td>[WRokubi:dono]</td></tr>
			<tr><td>Nanabi</td><td>[WShichibi:dono]</td></tr>
			<tr><td>Hachibi</td><td>[WHachibi:dono]</td></tr>
			<tr><td>Kyuubi</td><td>[WKyuubi:dono]</td></tr>
			<tr><td>Juubi</td><td>[WJuubi:dono]</td></tr>
			</table></html>"}
			usr<<browse(html,"window=info")

//=================================================================================//

mob/jutsus
	verb
		MakeKyuubi(mob/M in oview(1))
			set name = "Selar Kyuubi"
			set category = "Selar Bijuu"
			if(WKyuubi:dono <> "Ninguem")
				usr<<"Alguém já carrega esta Bijuu!"
				return
			if(!M.client)
				usr<<"Não pode selar em NPCs."
				return
			if(M.ADM&&!usr.ADM&&!usr.GM||M.GM&&!usr.ADM&&!usr.GM)
				usr<<"Você não pode selar bijuu em GMs."
				return
			if(!M.Jinchuuriki&&M.client)
				M.Jinchuuriki=1
				M.Kyuubi=1
				WKyuubi:dono=M.key
				M.verbs += new /mob/Jinc/verb/KyuubiPowerup()
				M.verbs += new /mob/jutsus/verb/Libertar_Kyuubi()
				M<<"Você sente um grande poder sendo selado para dentro de você."
				usr<<"Você selou em [M] a Kyuubi"
				usr.verbs -= new /mob/jutsus/verb/MakeKyuubi()
				for(var/obj/PoteKyuubi/K in usr) del K
				usr.tempotekyuubi=0
				//usr.SalvarAgora()
				//M.SalvarAgora()
				SalvarBijuus()
				text2file("[time2text(world.realtime)]: <b>[M]</b>([M:key]) teve o bijuu <b>Kyuubi</b> selado em si por <b>[usr]</b>([usr.key])<BR>","GMlog.html")
				return
			else
				usr << "[M] já é um Jinchuuriki!"
				return

		MakeIchibi(mob/M in oview(1))
			set name = "Selar Ichibi"
			set category = "Selar Bijuu"
			if(WIchibi:dono <> "Ninguem")
				usr<<"Alguém já carrega esta Bijuu!"
				return
			if(!M.client)
				usr<<"Não pode selar em NPCs."
				return
			if(!M.Jinchuuriki&&M.client)
				M.Jinchuuriki=1
				M.Ichibi=1
				usr.tempoteichibi=0
				//usr.SalvarAgora()
				//M.SalvarAgora()
				WIchibi:dono=M.key
				SalvarBijuus()
				M.verbs += new /mob/Jinc/verb/IchibiPowerup()
				M.verbs += new /mob/jutsus/verb/Libertar_Ichibi()
				M<<"Você sente um grande poder sendo selado para dentro de você."
				usr<<"Você selou em [M] a Shukaku"
				usr.verbs -= new /mob/jutsus/verb/MakeIchibi()
				for(var/obj/PoteIchibi/I in usr) del I
				text2file("[time2text(world.realtime)]: <b>[M]</b>([M:key]) teve o bijuu <b>Ichibi</b> selado em si por <b>[usr]</b>([usr.key])<BR>","GMlog.html")
				return
			else
				usr << "[M] já é um Jinchuuriki!"
				return

		MakeNibi(mob/M in oview(1))
			set name = "Selar Nibi"
			set category = "Selar Bijuu"
			if(WNibi:dono <> "Ninguem")
				usr<<"Alguém já carrega esta Bijuu!"
				return
			if(!M.client)
				usr<<"Não pode selar em NPCs."
				return
			if(!M.Jinchuuriki&&M.client)
				M.Jinchuuriki=1
				M.Nibi=1
				WNibi:dono=M.key
				usr.tempotenibi=0
				//usr.SalvarAgora()
				//M.SalvarAgora()
				SalvarBijuus()
				M.verbs += new /mob/Jinc/verb/NibiPowerup()
				M.verbs += new /mob/jutsus/verb/Libertar_Nibi()
				M<<"Você sente um grande poder sendo selado para dentro de você."
				usr<<"Você selou em [M] a Nibi"
				usr.verbs -= new /mob/jutsus/verb/MakeNibi()
				for(var/obj/PoteNibi/N in usr) del N
				text2file("[time2text(world.realtime)]: <b>[M]</b>([M:key]) teve o bijuu <b>Nibi</b> selado em si por <b>[usr]</b>([usr.key])<BR>","GMlog.html")
				return
			else
				usr << "[M] já é um Jinchuuriki!"
				return

		MakeSanbi(mob/M in oview(1))
			set name = "Selar Sanbi"
			set category = "Selar Bijuu"
			if(WSanbi:dono <> "Ninguem")
				usr<<"Alguém já carrega esta Bijuu!"
				return
			if(!M.client)
				usr<<"Não pode selar em NPCs."
				return
			if(!M.Jinchuuriki&&M.client)
				M.Jinchuuriki=1
				M.Sanbi=1
				usr.tempotesanbi=0
				//usr.SalvarAgora()
				WSanbi:dono=M.key
				//M.SalvarAgora()
				SalvarBijuus()
				M.verbs += new /mob/Jinc/verb/SanbiPowerup()
				M.verbs += new /mob/jutsus/verb/Libertar_Sanbi()
				M<<"Você sente um grande poder sendo selado para dentro de você."
				usr<<"Você selou em [M] a Sanbi"
				usr.verbs -= new /mob/jutsus/verb/MakeSanbi()
				for(var/obj/PoteSanbi/S in usr) del S
				text2file("[time2text(world.realtime)]: <b>[M]</b>([M:key]) teve o bijuu <b>Sanbi</b> selado em si por <b>[usr]</b>([usr.key])<BR>","GMlog.html")
				return
			else
				usr << "[M] já é um Jinchuuriki!"
				return

		Makeyonbi(mob/M in oview(1))
			set name = "Selar Yonbi"
			set category = "Selar Bijuu"
			if(WYonbi:dono <> "Ninguem")
				usr<<"Alguém já carrega esta Bijuu!"
				return
			if(!M.client)
				usr<<"Não pode selar em NPCs."
				return
			if(!M.Jinchuuriki&&M.client)
				M.Jinchuuriki=1
				M.Yonbi=1
				WYonbi:dono=M.key
				usr.tempoteyonbi=0
				//usr.SalvarAgora()
				//M.SalvarAgora()
				SalvarBijuus()
				M.verbs += new /mob/Jinc/verb/YonbiPowerup()
				M.verbs += new /mob/jutsus/verb/Libertar_Yonbi()
				M<<"Você sente um grande poder sendo selado para dentro de você."
				usr<<"Você selou em [M] a Yonbi"
				usr.verbs -= new /mob/jutsus/verb/Makeyonbi()
				for(var/obj/PoteYonbi/Y in usr) del Y
				text2file("[time2text(world.realtime)]: <b>[M]</b>([M:key]) teve o bijuu <b>Yonbi</b> selado em si por <b>[usr]</b>([usr.key])<BR>","GMlog.html")
				return
			else
				usr << "[M] já é um Jinchuuriki!"
				return

		MakeGobi(mob/M in oview(1))
			set name = "Selar Gobi"
			set category = "Selar Bijuu"
			if(WGobi:dono <> "Ninguem")
				usr<<"Alguém já carrega esta Bijuu!"
				return
			if(!M.client)
				usr<<"Não pode selar em NPCs."
				return
			if(!M.Jinchuuriki&&M.client)
				M.Jinchuuriki=1
				M.Gobi=1
				WGobi:dono=M.key
				usr.tempotegobi=0
				//usr.SalvarAgora()
//				M.SalvarAgora()
				SalvarBijuus()
				M.verbs += new /mob/Jinc/verb/GobiPowerup()
				M.verbs += new /mob/jutsus/verb/Libertar_Gobi()
				M<<"Você sente um grande poder sendo selado para dentro de você."
				usr<<"Você selou em [M] a Gobi"
				usr.verbs -= new /mob/jutsus/verb/MakeGobi()
				for(var/obj/PoteGobi/G in usr) del G
				text2file("[time2text(world.realtime)]: <b>[M]</b>([M:key]) teve o bijuu <b>Gobi</b> selado em si por <b>[usr]</b>([usr.key])<BR>","GMlog.html")
				return
			else
				usr << "[M] já é um Jinchuuriki!"
				return

		MakeRokubi(mob/M in oview(1))
			set name = "Selar Rokubi"
			set category = "Selar Bijuu"
			if(WRokubi:dono <> "Ninguem")
				usr<<"Alguém já carrega esta Bijuu!"
				return
			if(!M.client)
				usr<<"Não pode selar em NPCs."
				return
			if(!M.Jinchuuriki&&M.client)
				M.Jinchuuriki=1
				M.Rokubi=1
				usr.tempoterokubi=0
				//usr.SalvarAgora()
				WRokubi:dono=M.key
				//M.SalvarAgora()
				SalvarBijuus()
				M.verbs += new /mob/Jinc/verb/RokubiPowerup()
				M.verbs += new /mob/jutsus/verb/Libertar_Rokubi()
				M<<"Você sente um grande poder sendo selado para dentro de você."
				usr<<"Você selou em [M] a Rokubi"
				usr.verbs -= new /mob/jutsus/verb/MakeRokubi()
				for(var/obj/PoteRokubi/R in usr) del R
				text2file("[time2text(world.realtime)]: <b>[M]</b>([M:key]) teve o bijuu <b>Rokubi</b> selado em si por <b>[usr]</b>([usr.key])<BR>","GMlog.html")
				return
			else
				usr << "[M] já é um Jinchuuriki!"
				return

		MakeSishibi(mob/M in oview(1))
			set name = "Selar Shichibi"
			set category = "Selar Bijuu"
			if(WShichibi:dono <> "Ninguem")
				usr<<"Alguém já carrega esta Bijuu!"
				return
			if(!M.client)
				usr<<"Não pode selar em NPCs."
				return
			if(!M.Jinchuuriki&&M.client)
				M.Jinchuuriki=1
				M.Sishibi=1
				WShichibi:dono=M.key
				usr.tempotenanabi=0
				//usr.SalvarAgora()
				//M.SalvarAgora()
				SalvarBijuus()
				M.verbs += new /mob/Jinc/verb/NanabiPowerup()
				M.verbs += new /mob/jutsus/verb/Libertar_Shichibi()
				M<<"Você sente um grande poder sendo selado para dentro de você."
				usr<<"Você selou em [M] a Sishibi"
				usr.verbs -= new /mob/jutsus/verb/MakeSishibi()
				for(var/obj/PoteShichibi/SC in usr) del SC
				text2file("[time2text(world.realtime)]: <b>[M]</b>([M:key]) teve o bijuu <b>Sichibi</b> selado em si por <b>[usr]</b>([usr.key])<BR>","GMlog.html")
				return
			else
				usr << "[M] já é um Jinchuuriki!"
				return

		MakeHachibi(mob/M in oview(1))
			set name = "Selar Hachibi"
			set category = "Selar Bijuu"
			if(WHachibi:dono <> "Ninguem")
				usr<<"Alguém já carrega esta Bijuu!"
				return
			if(!M.client)
				usr<<"Não pode selar em NPCs."
				return
			if(!M.Jinchuuriki&&M.client)
				M.Jinchuuriki=1
				M.Hachibi=1
				WHachibi:dono=M.key
				usr.tempotehachibi=0
				//usr.SalvarAgora()
				//M.SalvarAgora()
				SalvarBijuus()
				M.verbs += new /mob/Jinc/verb/HachibiPowerup()
				M.verbs += new /mob/jutsus/verb/Libertar_Hachibi()
				M<<"Você sente um grande poder sendo selado para dentro de você."
				usr<<"Você selou em [M] a Hachibi"
				usr.verbs -= new /mob/jutsus/verb/MakeHachibi()
				for(var/obj/PoteHachibi/H in usr) del H
				text2file("[time2text(world.realtime)]: <b>[M]</b>([M:key]) teve o bijuu <b>Hachibi</b> selado em si por <b>[usr]</b>([usr.key])<BR>","GMlog.html")
				return
			else
				usr << "[M] já é um Jinchuuriki!"
				return

//=================================================================================//


mob
	Bijuus
		New()
			spawn(2) src.LoopBiju()
			..()
		proc
			LoopBiju()
				while(1)
					if(src.health<src.maxhealth) src.health+=src.maxhealth/50
					sleep(5)

		Ichibi
			New()
				src.overlays+=/obj/IchibipartesX/IPart1
				src.overlays+=/obj/IchibipartesX/IPart2
				src.overlays+=/obj/IchibipartesX/IPart3
				src.overlays+=/obj/IchibipartesX/IPart4
				src.overlays+=/obj/IchibipartesX/IPart6
				src.overlays+=/obj/IchibipartesX/IPart7
				src.overlays+=/obj/IchibipartesX/IPart8
				src.overlays+=/obj/IchibipartesX/IPart9
				walk_rand(src)
				..()
			name= "{Bijuu}Shukaku"
			icon = 'Ichibipartes.dmi'
			icon_state="5"
			Village="Clanss"
			Tekken = 1
			waterwalk = 1
			maxhealth=5500000
			health = 5500000
			stamina = 3000000
			chakra = 9999999999
			tai = 1000000
			nin = 1000000
			gen = 1000000
			shurikenskill=1000000
			NPC=1
			bijuunpc=1



		Nibi
			New()
				src.overlays+=/obj/NibipartesX/MPart1
				src.overlays+=/obj/NibipartesX/MPart2
				src.overlays+=/obj/NibipartesX/MPart3
				src.overlays+=/obj/NibipartesX/MPart4
				src.overlays+=/obj/NibipartesX/MPart6
				src.overlays+=/obj/NibipartesX/MPart7
				src.overlays+=/obj/NibipartesX/MPart8
				src.overlays+=/obj/NibipartesX/MPart9
				walk_rand(src)
				..()
			name= "{Bijuu}Matatabi"
			icon = 'Nibipartes.dmi'
			icon_state="5"
			Village="Clanss"
			Tekken = 1
			waterwalk = 1
			maxhealth=6500000
			health = 6500000
			stamina = 3000000
			chakra = 9999999999
			tai = 1000000
			nin = 1000000
			gen = 1000000
			shurikenskill=1000000
			NPC=1
			bijuunpc=1



		Sanbi
			New()
				src.overlays+=/obj/Sanbipartes/HPart1
				src.overlays+=/obj/Sanbipartes/HPart2
				src.overlays+=/obj/Sanbipartes/HPart3
				src.overlays+=/obj/Sanbipartes/HPart4
				src.overlays+=/obj/Sanbipartes/HPart5
				src.overlays+=/obj/Sanbipartes/HPart6
				src.overlays+=/obj/Sanbipartes/HPart8
				src.overlays+=/obj/Sanbipartes/HPart9
				src.overlays+=/obj/Sanbipartes/HPart10
				src.overlays+=/obj/Sanbipartes/HPart11
				src.overlays+=/obj/Sanbipartes/HPart12
				src.overlays+=/obj/Sanbipartes/HPart13
				src.overlays+=/obj/Sanbipartes/HPart14
				src.overlays+=/obj/Sanbipartes/HPart15
				src.overlays+=/obj/Sanbipartes/HPart16
				walk_rand(src)
				..()
			name= "{Bijuu}Isobu"
			icon = 'Sanbipartes.dmi'
			icon_state="7"
			Village="Clanss"
			Tekken = 1
			waterwalk = 1
			maxhealth=7000000
			health = 7000000
			stamina = 3000000
			chakra = 9999999999
			tai = 1000000
			nin = 1000000
			gen = 1000000
			shurikenskill=1000000
			NPC=1
			bijuunpc=1



		Yonbi
			New()
				src.overlays+=/obj/YonbipartesX/YPart1
				src.overlays+=/obj/YonbipartesX/YPart2
				src.overlays+=/obj/YonbipartesX/YPart3
				src.overlays+=/obj/YonbipartesX/YPart4
				src.overlays+=/obj/YonbipartesX/YPart6
				src.overlays+=/obj/YonbipartesX/YPart7
				src.overlays+=/obj/YonbipartesX/YPart8
				src.overlays+=/obj/YonbipartesX/YPart9
				walk_rand(src)
				..()
			name= "{Bijuu}Son Goku"
			icon = 'Yonbipartes.dmi'
			icon_state="5"
			Village="Clanss"
			Tekken = 1
			waterwalk = 1
			maxhealth=7500000
			health = 7500000
			stamina = 6500000
			chakra = 9999999999
			tai = 1500000
			nin = 1500000
			gen = 1500000
			shurikenskill=1500000
			NPC=1
			bijuunpc=1



		Gobi
			New()
				src.overlays+=/obj/GobipartesX/GPart1
				src.overlays+=/obj/GobipartesX/GPart2
				src.overlays+=/obj/GobipartesX/GPart3
				src.overlays+=/obj/GobipartesX/GPart4
				src.overlays+=/obj/GobipartesX/GPart6
				src.overlays+=/obj/GobipartesX/GPart7
				src.overlays+=/obj/GobipartesX/GPart8
				src.overlays+=/obj/GobipartesX/GPart9
				walk_rand(src)
				..()
			name= "{Bijuu}Kokuo"
			icon = 'Gobipartes.dmi'
			icon_state="5"
			Village="Clanss"
			Tekken = 1
			waterwalk = 1
			maxhealth=7500000
			health = 7500000
			stamina = 3500000
			chakra = 9999999999
			tai = 1100000
			nin = 1100000
			gen = 1100000
			shurikenskill=1100000
			NPC=1
			bijuunpc=1




		Rokubi
			New()
				src.overlays+=/obj/RokubipartesX/RPart1
				src.overlays+=/obj/RokubipartesX/RPart2
				src.overlays+=/obj/RokubipartesX/RPart3
				src.overlays+=/obj/RokubipartesX/RPart4
				src.overlays+=/obj/RokubipartesX/RPart6
				src.overlays+=/obj/RokubipartesX/RPart7
				src.overlays+=/obj/RokubipartesX/RPart8
				src.overlays+=/obj/RokubipartesX/RPart9
				walk_rand(src)
				..()
			name= "{Bijuu}Saiken"
			icon = 'Rokubipartes.dmi'
			icon_state="5"
			Village="Clanss"
			Tekken = 1
			waterwalk = 1
			maxhealth=8500000
			health = 8500000
			stamina = 3500000
			chakra = 9999999999
			tai = 1150000
			nin = 1150000
			gen = 1150000
			shurikenskill=1150000
			NPC=1
			bijuunpc=1




		Nanabi
			New()
				src.overlays+=/obj/NanabipartesX/NPart1
				src.overlays+=/obj/NanabipartesX/NPart2
				src.overlays+=/obj/NanabipartesX/NPart3
				src.overlays+=/obj/NanabipartesX/NPart4
				src.overlays+=/obj/NanabipartesX/NPart6
				src.overlays+=/obj/NanabipartesX/NPart7
				src.overlays+=/obj/NanabipartesX/NPart8
				src.overlays+=/obj/NanabipartesX/NPart9
				walk_rand(src)
				..()
			name= "{Bijuu}Choumei"
			icon = 'Nanabipartes.dmi'
			icon_state="5"
			Village="Clanss"
			Tekken = 1
			waterwalk = 1
			maxhealth=9000000
			health = 9000000
			stamina = 4000000
			chakra = 9999999999
			tai = 2000000
			nin = 2000000
			gen = 2000000
			shurikenskill=2000000
			NPC=1
			bijuunpc=1



		Hachibi
			New()
				src.overlays+=/obj/Hachibipartes/HPart1
				src.overlays+=/obj/Hachibipartes/HPart2
				src.overlays+=/obj/Hachibipartes/HPart3
				src.overlays+=/obj/Hachibipartes/HPart4
				src.overlays+=/obj/Hachibipartes/HPart5
				src.overlays+=/obj/Hachibipartes/HPart6
				src.overlays+=/obj/Hachibipartes/HPart8
				src.overlays+=/obj/Hachibipartes/HPart9
				src.overlays+=/obj/Hachibipartes/HPart10
				src.overlays+=/obj/Hachibipartes/HPart11
				src.overlays+=/obj/Hachibipartes/HPart12
				src.overlays+=/obj/Hachibipartes/HPart13
				src.overlays+=/obj/Hachibipartes/HPart14
				src.overlays+=/obj/Hachibipartes/HPart15
				src.overlays+=/obj/Hachibipartes/HPart16
				walk_rand(src)
				..()
			name= "{Bijuu}Gyuki"
			icon = 'Hachibipartes.dmi'
			icon_state="7"
			Village="Clanss"
			Tekken = 1
			waterwalk = 1
			maxhealth=9500000
			health = 9500000
			stamina = 4000000
			chakra = 9999999999
			tai = 2300000
			nin = 2300000
			gen = 2300000
			shurikenskill=2300000
			NPC=1
			bijuunpc=1



		Kyuubi
			New()
				src.overlays+=/obj/KyuubipartesX/KPart1
				src.overlays+=/obj/KyuubipartesX/KPart2
				src.overlays+=/obj/KyuubipartesX/KPart3
				src.overlays+=/obj/KyuubipartesX/KPart4
				src.overlays+=/obj/KyuubipartesX/KPart6
				src.overlays+=/obj/KyuubipartesX/KPart7
				src.overlays+=/obj/KyuubipartesX/KPart8
				src.overlays+=/obj/KyuubipartesX/KPart9
				walk_rand(src)
				..()
			name= "{Bijuu}Kurama"
			icon = 'Kyuubipartes.dmi'
			icon_state="5"
			Village="Clanss"
			Tekken = 1
			waterwalk = 1
			maxhealth=10000000
			health = 10000000
			stamina = 4000000
			chakra = 9999999999
			tai = 2500000
			nin = 2500000
			gen = 2500000
			shurikenskill=2500000
			NPC=1
			bijuunpc=1

		CloneCachoeira
			name= "{Bijuu}Clone"
			icon = 'Kyuubi.dmi'
			icon_state=""
			Village="Clanss"
			Tekken = 1
			waterwalk = 1
			NPC=1
			clonenpc=1
			guardp=1



//=========================================================================//

obj
	PoteIchibi
		name = "Pote Ichibi"
		icon='pergaminhobijuus.dmi'
		icon_state="bijuus"
		verb
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]."
				usr.verbs += new /mob/jutsus/verb/MakeIchibi()
				usr.tempoteichibi=1
				//usr.SalvarAgora()
obj
	PoteNibi
		name = "Pote Nibi"
		icon='pergaminhobijuus.dmi'
		icon_state="bijuus"
		verb
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]."
				usr.verbs += new /mob/jutsus/verb/MakeNibi()
				usr.tempotenibi=1
				//usr.SalvarAgora()

obj
	PoteSanbi
		name = "Pote Sanbi"
		icon='pergaminhobijuus.dmi'
		icon_state="bijuus"
		verb
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]."
				usr.verbs += new /mob/jutsus/verb/MakeSanbi()
				usr.tempotesanbi=1
				//usr.SalvarAgora()
obj
	PoteYonbi
		name = "PoteYonbi"
		icon='pergaminhobijuus.dmi'
		icon_state="bijuus"
		verb
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]."
				usr.verbs += new /mob/jutsus/verb/Makeyonbi()
				usr.tempoteyonbi=1
				//usr.SalvarAgora()
obj
	PoteGobi
		name = "Pote Gobi"
		icon='pergaminhobijuus.dmi'
		icon_state="bijuus"
		verb
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]."
				usr.verbs += new /mob/jutsus/verb/MakeGobi()
				usr.tempotegobi=1
				//usr.SalvarAgora()

obj
	PoteRokubi
		name = "Pote Rokubi"
		icon='pergaminhobijuus.dmi'
		icon_state="bijuus"
		verb
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]."
				usr.verbs += new /mob/jutsus/verb/MakeRokubi()
				usr.tempoterokubi=1
				//usr.SalvarAgora()

obj
	PoteShichibi
		name = "Pote Shichibi"
		icon='pergaminhobijuus.dmi'
		icon_state="bijuus"
		verb
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]."
				usr.verbs += new /mob/jutsus/verb/MakeSishibi()
				usr.tempotenanabi=1
				//usr.SalvarAgora()

obj
	PoteHachibi
		name = "Pote Hachibi"
		icon='pergaminhobijuus.dmi'
		icon_state="bijuus"
		verb
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]."
				usr.verbs += new /mob/jutsus/verb/MakeHachibi()
				usr.tempotehachibi=1
				//usr.SalvarAgora()

obj
	PoteKyuubi
		name = "Pote Kyuubi"
		icon='pergaminhobijuus.dmi'
		icon_state="bijuus"
		verb
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]."
				usr.verbs += new /mob/jutsus/verb/MakeKyuubi()
				usr.tempotekyuubi=1
				//usr.SalvarAgora()

obj
	PoteJuubi
		name = "Pote Juubi"
		icon='pergaminhobijuus.dmi'
		icon_state="juubi"
		verb
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]."
				usr.tempotejuubi=1
				//usr.SalvarAgora()

//=====================================Bijuu Dama=================================//

mob/Bijuu
	verb
		BijuuDama(mob/M in oview(5))
			set category = "Jutsus"
			set name = "Bijuu Dama"
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(!usr.handseals)
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			else
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				view()<<"[usr] Diz: <font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <font color=silver> Bijuu Dama"
				var/obj/BDama/K = new /obj/BDama
				K.loc = usr.loc
				K.nin=usr.nin
				K.Move_Delay=0.5
				usr.Chakragain()
				K.dir = usr.dir
				K.name="[usr]"
				K.Gowner=usr
				walk(K,usr.dir)
				if (target == null)
					del(K)
				sleep(200)
				usr.cast = 0
				del(K)


obj
	BDama
		icon = 'Yami Shuuha.dmi'
		icon_state = ""
		density = 1
		New()
			spawn(200) del src
			..()
		Bump(A)
			var/mob/O = src.Gowner
			if(!O) del src
			if(ismob(A))
				var/mob/M = A
				if(M.bijuunpc)
					usr<<"Não pode ser usado em NPC!"
					return
				var/damage = O.nin - M.Resistencia/2
				if(damage<=0)damage=0
				if(damage>= 1)
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					view(M) << "[M] foi acertado pelo Bijuu Dama de [src] recebendo [damage] de dano!!"
					M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
//================================Bijuu Dama Juubi========================//
mob/var/tmp/cdjbdama=0
mob/Jinc
	verb
		JuubiBDamaJinchu() // Verb used for cast the beam
			set category = "Bijuu"
			set name = "Bijuu Dama Juubi"
			if(usr.cdjbdama)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Bijuu Dama Juubi</b>!"
				return
			if(usr.cast) // If the mob's cast var is one...
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.chakra<=8000)
				usr<<"Não tem chakra o bastante.."
				return
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			else // If the cast var isn't 1...
				usr.chakra-=8000
				if(usr.cdjbdama)return
				usr.cdjbdama=1
				spawn()usr.Cooldown(120,"Bijuu Dama Juubi")
				if(usr.chakra<=8000)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				view()<<"[usr] Diz: <font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <font color=silver> Bijuu Dama"
				sleep(30)
				usr.Chakragain()
				if(usr.dir == NORTH)
					var/obj/BJDamaJ/A = new /obj/BJDamaJ
					var/obj/BJDamaJ/B = new /obj/BJDamaJ
					var/obj/BJDamaJ/C = new /obj/BJDamaJ
					var/obj/BJDamaJ/D = new /obj/BJDamaJ
					var/obj/BJDamaJ/E = new /obj/BJDamaJ
					A.loc = locate(usr.x, usr.y+1, usr.z)
					C.loc = locate(usr.x+1, usr.y+1, usr.z)
					B.loc = locate(usr.x-1, usr.y+1, usr.z)
					D.loc = locate(usr.x-2, usr.y+1, usr.z)
					E.loc = locate(usr.x+2, usr.y+1, usr.z)
					A.nin=usr.nin/3.5 + usr.tai/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5
					B.nin=usr.nin/3.5 + usr.tai/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5
					C.nin=usr.nin/3.5 + usr.tai/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5
					D.nin=usr.nin/3.5 + usr.tai/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5
					E.nin=usr.nin/3.5 + usr.tai/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					D.Gowner=usr
					E.Gowner=usr
					A.dir = NORTH
					B.dir = NORTH
					C.dir = NORTH
					D.dir = NORTH
					E.dir = NORTH
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
					walk(D,usr.dir)
					walk(E,usr.dir)
					sleep(200)
					del(A)
					del(C)
					del(D)
					del(B)
					del(E)
					sleep(110)
				if(usr.dir == SOUTH)
					var/obj/BJDamaJ/A = new /obj/BJDamaJ
					var/obj/BJDamaJ/B = new /obj/BJDamaJ
					var/obj/BJDamaJ/C = new /obj/BJDamaJ
					var/obj/BJDamaJ/D = new /obj/BJDamaJ
					var/obj/BJDamaJ/E = new /obj/BJDamaJ
					A.loc = locate(usr.x, usr.y-1, usr.z)
					C.loc = locate(usr.x+1, usr.y-1, usr.z)
					B.loc = locate(usr.x-1, usr.y-1, usr.z)
					D.loc = locate(usr.x-2, usr.y-1, usr.z)
					E.loc = locate(usr.x+2, usr.y-1, usr.z)
					A.nin=usr.nin/3.5 + usr.tai/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5
					B.nin=usr.nin/3.5 + usr.tai/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5
					C.nin=usr.nin/3.5 + usr.tai/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5
					D.nin=usr.nin/3.5 + usr.tai/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5
					E.nin=usr.nin/3.5 + usr.tai/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					D.Gowner=usr
					E.Gowner=usr
					A.dir = SOUTH
					B.dir = SOUTH
					C.dir = SOUTH
					D.dir = SOUTH
					E.dir = SOUTH
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
					walk(D,usr.dir)
					walk(E,usr.dir)
					sleep(200)
					del(A)
					del(C)
					del(D)
					del(B)
					del(E)
					sleep(110)
				if(usr.dir == WEST)
					var/obj/BJDamaJ/A = new /obj/BJDamaJ
					var/obj/BJDamaJ/C = new /obj/BJDamaJ
					var/obj/BJDamaJ/D = new /obj/BJDamaJ
					var/obj/BJDamaJ/B = new /obj/BJDamaJ
					var/obj/BJDamaJ/E = new /obj/BJDamaJ
					A.loc = locate(usr.x-1, usr.y, usr.z)
					C.loc = locate(usr.x-1, usr.y-1, usr.z)
					D.loc = locate(usr.x-1, usr.y+1, usr.z)
					B.loc = locate(usr.x-1, usr.y+2, usr.z)
					E.loc = locate(usr.x-1, usr.y-2, usr.z)
					A.nin=usr.nin/3.5 + usr.tai/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5
					B.nin=usr.nin/3.5 + usr.tai/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5
					C.nin=usr.nin/3.5 + usr.tai/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5
					D.nin=usr.nin/3.5 + usr.tai/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5
					E.nin=usr.nin/3.5 + usr.tai/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					D.Gowner=usr
					E.Gowner=usr
					A.dir = WEST
					C.dir = WEST
					D.dir = WEST
					B.dir = WEST
					E.dir = WEST
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
					walk(D,usr.dir)
					walk(E,usr.dir)
					sleep(200)
					del(A)
					del(C)
					del(D)
					del(B)
					del(E)
					sleep(110)
				if(usr.dir == EAST)
					var/obj/BJDamaJ/A = new /obj/BJDamaJ
					var/obj/BJDamaJ/C = new /obj/BJDamaJ
					var/obj/BJDamaJ/D = new /obj/BJDamaJ
					var/obj/BJDamaJ/B = new /obj/BJDamaJ
					var/obj/BJDamaJ/E = new /obj/BJDamaJ
					A.loc = locate(usr.x+1, usr.y, usr.z)
					C.loc = locate(usr.x+1, usr.y-1, usr.z)
					D.loc = locate(usr.x+1, usr.y+1, usr.z)
					E.loc = locate(usr.x+1, usr.y+2, usr.z)
					B.loc = locate(usr.x+1, usr.y-2, usr.z)
					A.nin=usr.nin/3.5 + usr.tai/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5
					B.nin=usr.nin/3.5 + usr.tai/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5
					C.nin=usr.nin/3.5 + usr.tai/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5
					D.nin=usr.nin/3.5 + usr.tai/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5
					E.nin=usr.nin/3.5 + usr.tai/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					D.Gowner=usr
					E.Gowner=usr
					A.dir = EAST
					C.dir = EAST
					D.dir = EAST
					B.dir = EAST
					E.dir = EAST
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
					walk(D,usr.dir)
					walk(E,usr.dir)
					sleep(200)
					del(A)
					del(C)
					del(D)
					del(B)
					del(E)
					sleep(110)
					return
				return

obj
	BJDamaJ
		icon = 'Yami Shuuha.dmi'
		icon_state = ""
		density = 1
		New()
			spawn(200) del src
			..()
		Bump(A)
			var/mob/O = src.Gowner
			if(!O) del src
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(!M.PK)
					usr<<"Zona Non-PK"
					return
				var/damage = O.nin/3.5 + O.tai/3.5 + O.gen/3.5 + O.shurikenskill/3.5 - M.Resistencia/2
				if(damage<=0)damage=0
				if(damage>= 1)
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					view(M) << "[M] foi acertado pelo Bijuu Dama Juubi de [O] recebendo [damage] de dano!!"
					M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

//=================================Bijuu Dama Jynchuuriki=================//
mob/Jinc
	verb
		BDamaJinchu() // Verb used for cast the beam
			set category = "Bijuu"
			set name = "Bijuu Dama Jinchuuriki"
			if(usr.cdbdama)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Bijuu Dama Jinchuuriki</b>!"
				return
			if(usr.cast) // If the mob's cast var is one...
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.chakra<=8000)
				usr<<"Não tem chakra o bastante.."
				return
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			else // If the cast var isn't 1...
				usr.chakra-=8000
				if(usr.cdbdama)return
				usr.cdbdama=1
				spawn()usr.Cooldown(120,"Bijuu Dama Jinchuuriki")
				if(usr.chakra<=8000)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				view()<<"[usr] Diz: <font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <font color=silver> Bijuu Dama"
				sleep(30)
				usr.Chakragain()
				if(usr.dir == NORTH)
					var/obj/BDamaJ/A = new /obj/BDamaJ
					var/obj/BDamaJ/B = new /obj/BDamaJ
					var/obj/BDamaJ/C = new /obj/BDamaJ
					A.loc = locate(usr.x, usr.y+1, usr.z)
					C.loc = locate(usr.x+1, usr.y+1, usr.z)
					B.loc = locate(usr.x-1, usr.y+1, usr.z)
					A.nin=usr.nin/3.75 + usr.tai/3.75 + usr.gen/3.75 + usr.shurikenskill/3.75
					B.nin=usr.nin/3.75 + usr.tai/3.75 + usr.gen/3.75 + usr.shurikenskill/3.75
					C.nin=usr.nin/3.75 + usr.tai/3.75 + usr.gen/3.75 + usr.shurikenskill/3.75
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					A.dir = NORTH
					B.dir = NORTH
					C.dir = NORTH
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
					sleep(200)
					del(A)
					del(B)
					del(C)
					sleep(110)
				if(usr.dir == SOUTH)
					var/obj/BDamaJ/A = new /obj/BDamaJ
					var/obj/BDamaJ/B = new /obj/BDamaJ
					var/obj/BDamaJ/C = new /obj/BDamaJ
					A.loc = locate(usr.x, usr.y-1, usr.z)
					C.loc = locate(usr.x+1, usr.y-1, usr.z)
					B.loc = locate(usr.x-1, usr.y-1, usr.z)
					A.nin=usr.nin/3.75 + usr.tai/3.75 + usr.gen/3.75 + usr.shurikenskill/3.75
					B.nin=usr.nin/3.75 + usr.tai/3.75 + usr.gen/3.75 + usr.shurikenskill/3.75
					C.nin=usr.nin/3.75 + usr.tai/3.75 + usr.gen/3.75 + usr.shurikenskill/3.75
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					A.dir = SOUTH
					B.dir = SOUTH
					C.dir = SOUTH
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
					sleep(200)
					del(A)
					del(B)
					del(C)
					sleep(110)
				if(usr.dir == WEST)
					var/obj/BDamaJ/A = new /obj/BDamaJ
					var/obj/BDamaJ/C = new /obj/BDamaJ
					var/obj/BDamaJ/D = new /obj/BDamaJ
					A.loc = locate(usr.x-1, usr.y, usr.z)
					C.loc = locate(usr.x-1, usr.y-1, usr.z)
					D.loc = locate(usr.x-1, usr.y+1, usr.z)
					A.nin=usr.nin/3.75 + usr.tai/3.75 + usr.gen/3.75 + usr.shurikenskill/3.75
					C.nin=usr.nin/3.75 + usr.tai/3.75 + usr.gen/3.75 + usr.shurikenskill/3.75
					D.nin=usr.nin/3.75 + usr.tai/3.75 + usr.gen/3.75 + usr.shurikenskill/3.75
					A.Gowner=usr
					C.Gowner=usr
					D.Gowner=usr
					A.dir = WEST
					C.dir = WEST
					D.dir = WEST
					walk(A,usr.dir)
					walk(C,usr.dir)
					walk(D,usr.dir)
					sleep(200)
					del(A)
					del(C)
					del(D)
					sleep(110)
				if(usr.dir == EAST)
					var/obj/BDamaJ/A = new /obj/BDamaJ
					var/obj/BDamaJ/C = new /obj/BDamaJ
					var/obj/BDamaJ/D = new /obj/BDamaJ
					A.loc = locate(usr.x+1, usr.y, usr.z)
					C.loc = locate(usr.x+1, usr.y-1, usr.z)
					D.loc = locate(usr.x+1, usr.y+1, usr.z)
					A.nin=usr.nin/3.75 + usr.tai/3.75 + usr.gen/3.75 + usr.shurikenskill/3.75
					C.nin=usr.nin/3.75 + usr.tai/3.75 + usr.gen/3.75 + usr.shurikenskill/3.75
					D.nin=usr.nin/3.75 + usr.tai/3.75 + usr.gen/3.75 + usr.shurikenskill/3.75
					A.Gowner=usr
					C.Gowner=usr
					D.Gowner=usr
					A.dir = EAST
					C.dir = EAST
					D.dir = EAST
					walk(A,usr.dir)
					walk(C,usr.dir)
					walk(D,usr.dir)
					sleep(200)
					del(A)
					del(C)
					del(D)
					sleep(110)
					return
				return

obj
	BDamaJ
		icon = 'Yami Shuuha.dmi'
		icon_state = ""
		density = 1
		New()
			spawn(200) del src
			..()
		Bump(A)
			var/mob/O = src.Gowner
			if(!O) del src
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(!M.PK)
					usr<<"Zona Non-PK"
					return
				var/damage = O.nin/3.75 + O.tai/3.75 + O.gen/3.75 + O.shurikenskill/3.75 - M.Resistencia/2
				if(damage<=0)damage=0
				if(damage>= 1)
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					view(M) << "[M] foi acertado pelo Bijuu Dama de [O] recebendo [damage] de dano!!"
					M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)



//======================Retirar Bijuu======================//
mob/ADM
	verb
		RetirarBijuu(mob/M in world)
			set name = "Retirar Bijuu"
			set category="ADM"
			if(!M.Jinchuuriki)
				usr<<"Ele não têm Bijuu!"
				return
			else
				if(WIchibi:dono=="[M.key]")
					M.Jinchuuriki=0
					M.Ichibi=0
					WIchibi:dono="Ninguem"
					WIchibi=new/Bijuu
					M.verbs -= new /mob/jutsu/verb/GGKai()
					M.verbs -= new /mob/Jinc/verb/BDamaJinchu()
					M.verbs -= new /mob/Jinc/verb/IchibiPowerup()
					M.verbs -= new /mob/Jinc/verb/Powerup2()
					M.verbs -= new /mob/jutsus/verb/Libertar_Ichibi()
					//usr.SalvarAgora()
					//M.SalvarAgora()
					SalvarBijuus()
					usr<<"Você extraiu o Ichibi de [M]."
					M<<"Você sente sua bijuu sendo extraída e agora nada mais especial resta em você... Voce perdeu um pouco de suas forças!"
					world<<"[M] teve sua bijuu retirada pela Staff!"
				if(WNibi:dono=="[M.key]")
					M.Jinchuuriki=0
					M.Nibi=0
					WNibi:dono="Ninguem"
					WNibi=new/Bijuu
					M.verbs -= new /mob/jutsu/verb/GGKai()
					M.verbs -= new /mob/Jinc/verb/BDamaJinchu()
					M.verbs -= new /mob/Jinc/verb/NibiPowerup()
					M.verbs -= new /mob/Jinc/verb/Powerup2()
					M.verbs -= new /mob/jutsus/verb/Libertar_Nibi()
					//usr.SalvarAgora()
					//M.SalvarAgora()
					SalvarBijuus()
					usr<<"Você extraiu o Nibi de [M]."
					M<<"Você sente sua bijuu sendo extraída e agora nada mais especial resta em você... Voce perdeu um pouco de suas forças!"
					world<<"[M] teve sua bijuu retirada pela Staff!"
				if(WSanbi:dono=="[M.key]")
					M.Jinchuuriki=0
					M.Sanbi=0
					WSanbi:dono="Ninguem"
					WSanbi=new/Bijuu
					M.verbs -= new /mob/jutsu/verb/GGKai()
					M.verbs -= new /mob/Jinc/verb/BDamaJinchu()
					M.verbs -= new /mob/Jinc/verb/SanbiPowerup()
					M.verbs -= new /mob/Jinc/verb/Powerup2()
					M.verbs -= new /mob/jutsus/verb/Libertar_Sanbi()
					//usr.SalvarAgora()
					//M.SalvarAgora()
					SalvarBijuus()
					usr<<"Você extraiu o Sanbi de [M]."
					M<<"Você sente sua bijuu sendo extraída e agora nada mais especial resta em você... Voce perdeu um pouco de suas forças!"
					world<<"[M] teve sua bijuu retirada pela Staff!"
				if(WYonbi:dono=="[M.key]")
					M.Jinchuuriki=0
					M.Yonbi=0
					WYonbi:dono="Ninguem"
					WYonbi=new/Bijuu
					M.verbs -= new /mob/jutsu/verb/GGKai()
					M.verbs -= new /mob/Jinc/verb/BDamaJinchu()
					M.verbs -= new /mob/Jinc/verb/YonbiPowerup()
					M.verbs -= new /mob/Jinc/verb/Powerup2()
					M.verbs -= new /mob/jutsus/verb/Libertar_Yonbi()
					//usr.SalvarAgora()
					//M.SalvarAgora()
					SalvarBijuus()
					usr<<"Você extraiu o Yonbi de [M]."
					M<<"Você sente sua bijuu sendo extraída e agora nada mais especial resta em você... Voce perdeu um pouco de suas forças!"
					world<<"[M] teve sua bijuu retirada pela Staff!"
				if(WGobi:dono=="[M.key]")
					M.Jinchuuriki=0
					M.Gobi=0
					WGobi:dono="Ninguem"
					WGobi=new/Bijuu
					M.verbs -= new /mob/jutsu/verb/GGKai()
					M.verbs -= new /mob/Jinc/verb/BDamaJinchu()
					M.verbs -= new /mob/Jinc/verb/GobiPowerup()
					M.verbs -= new /mob/Jinc/verb/Powerup2()
					M.verbs -= new /mob/jutsus/verb/Libertar_Gobi()
					//usr.SalvarAgora()
					//M.SalvarAgora()
					SalvarBijuus()
					usr<<"Você extraiu o Gobi de [M]."
					M<<"Você sente sua bijuu sendo extraída e agora nada mais especial resta em você... Voce perdeu um pouco de suas forças!"
					world<<"[M] teve sua bijuu retirada pela Staff!"
				if(WRokubi:dono=="[M.key]")
					M.Jinchuuriki=0
					M.Rokubi=0
					WRokubi:dono="Ninguem"
					WRokubi=new/Bijuu
					M.verbs -= new /mob/jutsu/verb/GGKai()
					M.verbs -= new /mob/Jinc/verb/BDamaJinchu()
					M.verbs -= new /mob/Jinc/verb/RokubiPowerup()
					M.verbs -= new /mob/Jinc/verb/Powerup2()
					M.verbs -= new /mob/jutsus/verb/Libertar_Rokubi()
					//usr.SalvarAgora()
					SalvarBijuus()
					//M.SalvarAgora()
					usr<<"Você extraiu o Rokubi de [M]."
					M<<"Você sente sua bijuu sendo extraída e agora nada mais especial resta em você... Voce perdeu um pouco de suas forças!"
					world<<"[M] teve sua bijuu retirada pela Staff!"
				if(WShichibi:dono=="[M.key]")
					M.Jinchuuriki=0
					M.Sishibi=0
					WShichibi:dono="Ninguem"
					WShichibi=new/Bijuu
					M.verbs -= new /mob/jutsu/verb/GGKai()
					M.verbs -= new /mob/Jinc/verb/BDamaJinchu()
					M.verbs -= new /mob/Jinc/verb/NanabiPowerup()
					M.verbs -= new /mob/Jinc/verb/Powerup2()
					M.verbs -= new /mob/jutsus/verb/Libertar_Shichibi()
					//usr.SalvarAgora()
					SalvarBijuus()
					//M.SalvarAgora()
					usr<<"Você extraiu o Shichibi de [M]."
					M<<"Você sente sua bijuu sendo extraída e agora nada mais especial resta em você... Voce perdeu um pouco de suas forças!"
					world<<"[M] teve sua bijuu retirada pela Staff!"
				if(WHachibi:dono=="[M.key]")
					M.Jinchuuriki=0
					M.Hachibi=0
					WHachibi:dono="Ninguem"
					WHachibi=new/Bijuu
					M.verbs -= new /mob/jutsu/verb/GGKai()
					M.verbs -= new /mob/Jinc/verb/BDamaJinchu()
					M.verbs -= new /mob/Jinc/verb/HachibiPowerup()
					M.verbs -= new /mob/Jinc/verb/Powerup2()
					M.verbs -= new /mob/jutsus/verb/Libertar_Hachibi()
					//usr.SalvarAgora()
					SalvarBijuus()
					//M.SalvarAgora()
					usr<<"Você extraiu o Hachibi de [M]."
					M<<"Você sente sua bijuu sendo extraída e agora nada mais especial resta em você... Voce perdeu um pouco de suas forças!"
					world<<"[M] teve sua bijuu retirada pela Staff!"
				if(WKyuubi:dono=="[M.key]")
					M.Jinchuuriki=0
					M.Kyuubi=0
					WKyuubi:dono="Ninguem"
					WKyuubi=new/Bijuu
					M.verbs -= new /mob/jutsu/verb/GGKai()
					M.verbs -= new /mob/Jinc/verb/BDamaJinchu()
					M.verbs -= new /mob/Jinc/verb/KyuubiPowerup()
					M.verbs -= new /mob/Jinc/verb/Powerup2()
					M.verbs -= new /mob/jutsus/verb/Libertar_Kyuubi()
					//usr.SalvarAgora()
					SalvarBijuus()
					//M.SalvarAgora()
					usr<<"Você extraiu a Kyuubi de [M]."
					M<<"Você sente sua bijuu sendo extraída e agora nada mais especial resta em você... Voce perdeu um pouco de suas forças!"
					world<<"[M] teve sua bijuu retirada pela Staff!"