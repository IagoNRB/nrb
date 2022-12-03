var
	gedoucomichibi
	gedoucomnibi
	gedoucomsanbi
	gedoucomyonbi
	gedoucomgobi
	gedoucomrokubi
	gedoucomnanabi
	gedoucomhachibi
	gedoucomkyuubi
	juubiformado
	juubisolto

//=======================Jutsu Extação================//
mob/jutsus
	verb
		ExtrairBijuu(mob/M in oview(1))
			set name = "Extrair Bijuu!"
			set category="Jutsus"
			if(M.health>0)
				usr<<"Ele não está desmaiado para extrair."
				return
			if(emguerra==0)
				return
			if(!M.client)
				usr<<"Ele precisa estar logado!"
				return
			else
				usr.random=rand(1,4)
				if(usr.random==1)
					if(M.Jinchuuriki)
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
							M.maxhealth-=usr.maxhealth/20
							M.Mchakra-=usr.Mchakra/20
							M.Mtai-=usr.Mtai/20
							M.Mgen-=usr.Mgen/20
							M.Mnin-=usr.Mnin/20
							M.Mshurikenskill-=Mshurikenskill/20
							M.chakraN-=usr.chakraN/20
							M.Resistencia-=usr.Resistencia/20
							M.veloN-=usr.veloN/20
							//Perder Jutsus
							usr.verbs += new /mob/jutsus/verb/MakeIchibi()
							var/obj/PoteIchibi/I = new/obj/PoteIchibi
							I.loc = usr
							//usr.SalvarAgora()
								//M.SalvarAgora()
							SalvarBijuus()
							usr<<"Você extraiu o Ichibi de [M]."
							M<<"Você sente sua bijuu sendo extraída e agora nada mais especial resta em você... Voce perdeu um pouco de suas forças!"
							world<<"[M] teve sua bijuu extraída!"
						else if(WNibi:dono=="[M.key]")
							M.Jinchuuriki=0
							M.Nibi=0
							WNibi:dono="Ninguem"
							WNibi=new/Bijuu
							M.verbs -= new /mob/jutsu/verb/GGKai()
							M.verbs -= new /mob/Jinc/verb/BDamaJinchu()
							M.verbs -= new /mob/Jinc/verb/NibiPowerup()
							M.verbs -= new /mob/Jinc/verb/Powerup2()
							M.verbs -= new /mob/jutsus/verb/Libertar_Nibi()
							M.maxhealth-=usr.maxhealth/20
							M.Mchakra-=usr.Mchakra/20
							M.Mtai-=usr.Mtai/20
							M.Mgen-=usr.Mgen/20
							M.Mnin-=usr.Mnin/20
							M.Mshurikenskill-=Mshurikenskill/20
							M.chakraN-=usr.chakraN/20
							M.Resistencia-=usr.Resistencia/20
							M.veloN-=usr.veloN/20
							//Perder Jutsus
							usr.verbs += new /mob/jutsus/verb/MakeNibi()
							var/obj/PoteNibi/N = new/obj/PoteNibi
							N.loc = usr
							//usr.SalvarAgora()
							//M.SalvarAgora()
							SalvarBijuus()
							usr<<"Você extraiu o Nibi de [M]."
							M<<"Você sente sua bijuu sendo extraída e agora nada mais especial resta em você... Voce perdeu um pouco de suas forças!"
							world<<"[M] teve sua bijuu extraída!"
						else if(WSanbi:dono=="[M.key]")
							M.Jinchuuriki=0
							M.Sanbi=0
							WSanbi:dono="Ninguem"
							WSanbi=new/Bijuu
							M.verbs -= new /mob/jutsu/verb/GGKai()
							M.verbs -= new /mob/Jinc/verb/BDamaJinchu()
							M.verbs -= new /mob/Jinc/verb/SanbiPowerup()
							M.verbs -= new /mob/Jinc/verb/Powerup2()
							M.verbs -= new /mob/jutsus/verb/Libertar_Sanbi()
							M.maxhealth-=usr.maxhealth/20
							M.Mchakra-=usr.Mchakra/20
							M.Mtai-=usr.Mtai/20
							M.Mgen-=usr.Mgen/20
							M.Mnin-=usr.Mnin/20
							M.Mshurikenskill-=Mshurikenskill/20
							M.chakraN-=usr.chakraN/20
							M.Resistencia-=usr.Resistencia/20
							M.veloN-=usr.veloN/20
							//Perder Jutsus
							usr.verbs += new /mob/jutsus/verb/MakeSanbi()
							var/obj/PoteSanbi/S = new/obj/PoteSanbi
							S.loc = usr
							//usr.SalvarAgora()
							//M.SalvarAgora()
							SalvarBijuus()
							usr<<"Você extraiu o Sanbi de [M]."
							M<<"Você sente sua bijuu sendo extraída e agora nada mais especial resta em você... Voce perdeu um pouco de suas forças!"
							world<<"[M] teve sua bijuu extraída!"
						else if(WYonbi:dono=="[M.key]")
							M.Jinchuuriki=0
							M.Yonbi=0
							WYonbi:dono="Ninguem"
							WYonbi=new/Bijuu
							M.verbs -= new /mob/jutsu/verb/GGKai()
							M.verbs -= new /mob/Jinc/verb/BDamaJinchu()
							M.verbs -= new /mob/Jinc/verb/YonbiPowerup()
							M.verbs -= new /mob/Jinc/verb/Powerup2()
							M.verbs -= new /mob/jutsus/verb/Libertar_Yonbi()
							M.maxhealth-=usr.maxhealth/20
							M.Mchakra-=usr.Mchakra/20
							M.Mtai-=usr.Mtai/20
							M.Mgen-=usr.Mgen/20
							M.Mnin-=usr.Mnin/20
							M.Mshurikenskill-=Mshurikenskill/20
							M.chakraN-=usr.chakraN/20
							M.Resistencia-=usr.Resistencia/20
							M.veloN-=usr.veloN/20
							//Perder Jutsus
							usr.verbs += new /mob/jutsus/verb/Makeyonbi()
							var/obj/PoteYonbi/Y = new/obj/PoteYonbi
							Y.loc = usr
							//usr.SalvarAgora()
							//M.SalvarAgora()
							SalvarBijuus()
							usr<<"Você extraiu o Yonbi de [M]."
							M<<"Você sente sua bijuu sendo extraída e agora nada mais especial resta em você... Voce perdeu um pouco de suas forças!"
							world<<"[M] teve sua bijuu extraída!"
						else if(WGobi:dono=="[M.key]")
							M.Jinchuuriki=0
							M.Gobi=0
							WGobi:dono="Ninguem"
							WGobi=new/Bijuu
							M.verbs -= new /mob/jutsu/verb/GGKai()
							M.verbs -= new /mob/Jinc/verb/BDamaJinchu()
							M.verbs -= new /mob/Jinc/verb/GobiPowerup()
							M.verbs -= new /mob/Jinc/verb/Powerup2()
							M.verbs -= new /mob/jutsus/verb/Libertar_Gobi()
							M.maxhealth-=usr.maxhealth/20
							M.Mchakra-=usr.Mchakra/20
							M.Mtai-=usr.Mtai/20
							M.Mgen-=usr.Mgen/20
							M.Mnin-=usr.Mnin/20
							M.Mshurikenskill-=Mshurikenskill/20
							M.chakraN-=usr.chakraN/20
							M.Resistencia-=usr.Resistencia/20
							M.veloN-=usr.veloN/20
							//Perder Jutsus
							usr.verbs += new /mob/jutsus/verb/MakeGobi()
							var/obj/PoteGobi/G = new/obj/PoteGobi
							G.loc = usr
							//usr.SalvarAgora()
							//M.SalvarAgora()
							SalvarBijuus()
							usr<<"Você extraiu o Gobi de [M]."
							M<<"Você sente sua bijuu sendo extraída e agora nada mais especial resta em você... Voce perdeu um pouco de suas forças!"
							world<<"[M] teve sua bijuu extraída!"
						else if(WRokubi:dono=="[M.key]")
							M.Jinchuuriki=0
							M.Rokubi=0
							WRokubi:dono="Ninguem"
							WRokubi=new/Bijuu
							M.verbs -= new /mob/jutsu/verb/GGKai()
							M.verbs -= new /mob/Jinc/verb/BDamaJinchu()
							M.verbs -= new /mob/Jinc/verb/RokubiPowerup()
							M.verbs -= new /mob/Jinc/verb/Powerup2()
							M.verbs -= new /mob/jutsus/verb/Libertar_Rokubi()
							M.maxhealth-=usr.maxhealth/20
							M.Mchakra-=usr.Mchakra/20
							M.Mtai-=usr.Mtai/20
							M.Mgen-=usr.Mgen/20
							M.Mnin-=usr.Mnin/20
							M.Mshurikenskill-=Mshurikenskill/20
							M.chakraN-=usr.chakraN/20
							M.Resistencia-=usr.Resistencia/20
							M.veloN-=usr.veloN/20
							//Perder Jutsus
							usr.verbs += new /mob/jutsus/verb/MakeRokubi()
							var/obj/PoteRokubi/R = new/obj/PoteRokubi
							R.loc = usr
							//usr.SalvarAgora()
							SalvarBijuus()
							//M.SalvarAgora()
							usr<<"Você extraiu o Rokubi de [M]."
							M<<"Você sente sua bijuu sendo extraída e agora nada mais especial resta em você... Voce perdeu um pouco de suas forças!"
							world<<"[M] teve sua bijuu extraída!"
						else if(WShichibi:dono=="[M.key]")
							M.Jinchuuriki=0
							M.Sishibi=0
							WShichibi:dono="Ninguem"
							WShichibi=new/Bijuu
							M.verbs -= new /mob/jutsu/verb/GGKai()
							M.verbs -= new /mob/Jinc/verb/BDamaJinchu()
							M.verbs -= new /mob/Jinc/verb/NanabiPowerup()
							M.verbs -= new /mob/Jinc/verb/Powerup2()
							M.verbs -= new /mob/jutsus/verb/Libertar_Shichibi()
							M.maxhealth-=usr.maxhealth/20
							M.Mchakra-=usr.Mchakra/20
							M.Mtai-=usr.Mtai/20
							M.Mgen-=usr.Mgen/20
							M.Mnin-=usr.Mnin/20
							M.Mshurikenskill-=Mshurikenskill/20
							M.chakraN-=usr.chakraN/20
							M.Resistencia-=usr.Resistencia/20
							M.veloN-=usr.veloN/20
							//Perder Jutsus
							usr.verbs += new /mob/jutsus/verb/MakeSishibi()
							var/obj/PoteShichibi/SC = new/obj/PoteShichibi
							SC.loc = usr
							//usr.SalvarAgora()
							SalvarBijuus()
							//M.SalvarAgora()
							usr<<"Você extraiu o Shichibi de [M]."
							M<<"Você sente sua bijuu sendo extraída e agora nada mais especial resta em você... Voce perdeu um pouco de suas forças!"
							world<<"[M] teve sua bijuu extraída!"
						else if(WHachibi:dono=="[M.key]")
							M.Jinchuuriki=0
							M.Hachibi=0
							WHachibi:dono="Ninguem"
							WHachibi=new/Bijuu
							M.verbs -= new /mob/jutsu/verb/GGKai()
							M.verbs -= new /mob/Jinc/verb/BDamaJinchu()
							M.verbs -= new /mob/Jinc/verb/HachibiPowerup()
							M.verbs -= new /mob/Jinc/verb/Powerup2()
							M.verbs -= new /mob/jutsus/verb/Libertar_Hachibi()
							M.maxhealth-=usr.maxhealth/20
							M.Mchakra-=usr.Mchakra/20
							M.Mtai-=usr.Mtai/20
							M.Mgen-=usr.Mgen/20
							M.Mnin-=usr.Mnin/20
							M.Mshurikenskill-=Mshurikenskill/20
							M.chakraN-=usr.chakraN/20
							M.Resistencia-=usr.Resistencia/20
							M.veloN-=usr.veloN/20
							//Perder Jutsus
							usr.verbs += new /mob/jutsus/verb/MakeHachibi()
							var/obj/PoteHachibi/H = new/obj/PoteHachibi
							H.loc = usr
							//usr.SalvarAgora()
							SalvarBijuus()
							//M.SalvarAgora()
							usr<<"Você extraiu o Hachibi de [M]."
							M<<"Você sente sua bijuu sendo extraída e agora nada mais especial resta em você... Voce perdeu um pouco de suas forças!"
							world<<"[M] teve sua bijuu extraída!"
						else if(WKyuubi:dono=="[M.key]")
							M.Jinchuuriki=0
							M.Kyuubi=0
							WKyuubi:dono="Ninguem"
							WKyuubi=new/Bijuu
							M.verbs -= new /mob/jutsu/verb/GGKai()
							M.verbs -= new /mob/Jinc/verb/BDamaJinchu()
							M.verbs -= new /mob/Jinc/verb/KyuubiPowerup()
							M.verbs -= new /mob/Jinc/verb/Powerup2()
							M.verbs -= new /mob/jutsus/verb/Libertar_Kyuubi()
							M.maxhealth-=usr.maxhealth/20
							M.Mchakra-=usr.Mchakra/20
							M.Mtai-=usr.Mtai/20
							M.Mgen-=usr.Mgen/20
							M.Mnin-=usr.Mnin/20
							M.Mshurikenskill-=Mshurikenskill/20
							M.chakraN-=usr.chakraN/20
							M.Resistencia-=usr.Resistencia/20
							M.veloN-=usr.veloN/20
							//Perder Jutsus
							var/obj/PoteKyuubi/K = new/obj/PoteKyuubi
							K.loc = locate(usr.x,usr.y-1,usr.z)
							//usr.SalvarAgora()
							SalvarBijuus()
							//M.SalvarAgora()
							usr<<"Você extraiu a Kyuubi de [M]."
							M<<"Você sente sua bijuu sendo extraída e agora nada mais especial resta em você... Voce perdeu um pouco de suas forças!"
							world<<"[M] teve sua bijuu extraída!"
						else if(WJuubi:dono=="[M.key]")
							M.Jinchuuriki=0
							M.Juubi=0
							WJuubi:dono="Ninguem"
							WJuubi=new/Bijuu
							M.verbs -= new /mob/jutsu/verb/GGKai()
							M.verbs -= new /mob/Jinc/verb/JuubiBDamaJinchu()
							M.verbs -= new /mob/Jinc/verb/JuubiPowerup()
							M.verbs -= new /mob/jutsus/verb/Libertar_Juubi()
							M.maxhealth-=usr.maxhealth/4
							M.Mchakra-=usr.Mchakra/4
							M.Mtai-=usr.Mtai/4
							M.Mgen-=usr.Mgen/4
							M.Mnin-=usr.Mnin/4
							M.Mshurikenskill-=Mshurikenskill/4
							M.chakraN-=usr.chakraN/4
							M.Resistencia-=usr.Resistencia/4
							M.veloN-=usr.veloN/4
							M.overlays = null
							M.icon='Base white.dmi'
							M.underlays = null
							for(var/obj/Cajado6Caminhos/CJ in M) del CJ
							//Perder Jutsus
							var/obj/PoteJuubi/J = new/obj/PoteJuubi
							J.loc = locate(usr.x,usr.y-1,usr.z)
							//usr.SalvarAgora()
							SalvarBijuus()
							//M.SalvarAgora()
							usr<<"Você extraiu a Juubi de [M]."
							M<<"Você sente sua bijuu sendo extraída e agora nada mais especial resta em você... Voce perdeu um pouco de suas forças!"
							world<<"[M] teve sua bijuu extraída!"
					else
						usr<<"Ele não é um Jichuuriki!"
				else
					usr<<"Você não suportou o poderoso chakra da Bijuu e falhou desta vez!"

//=======================Selamento GedouMazou==============================//
obj
	GedoMazoS
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 1
		verb
			SelarGedo()
				set name = "Selar Bijuu"
				set category = "Gedou Mazou"
				set src in oview(1)
				if(usr.tempoteichibi)
					if(!gedoucomichibi)
						WIchibi:dono="Gedou Mazou"
						usr.tempoteichibi=0
						usr.verbs -= new /mob/jutsus/verb/MakeIchibi()
						for(var/obj/PoteIchibi/I in usr) del I
						gedoucomichibi=1
						usr<<"Você selou o Ichibi na Gedou Mazou!"
						text2file("[time2text(world.realtime)]: Gedo Mazo teve o bijuu <b>Ichibi</b> selado em si por <b>[usr]</b>([usr.key])<BR>","GMlog.html")
						SalvarBijuus()
					else
						usr<<"Já existe esta bijuu nela, contate um ADM!"
				if(usr.tempotenibi)
					if(!gedoucomnibi)
						WNibi:dono="Gedou Mazou"
						usr.tempotenibi=0
						usr.verbs -= new /mob/jutsus/verb/MakeNibi()
						for(var/obj/PoteNibi/N in usr) del N
						gedoucomnibi=1
						usr<<"Você selou o Nibi na Gedou Mazou!"
						text2file("[time2text(world.realtime)]: Gedo Mazo teve o bijuu <b>Nibi</b> selado em si por <b>[usr]</b>([usr.key])<BR>","GMlog.html")
						SalvarBijuus()
					else
						usr<<"Já existe esta bijuu nela, contate um ADM!"
				if(usr.tempotesanbi)
					if(!gedoucomsanbi)
						WSanbi:dono="Gedou Mazou"
						usr.tempotesanbi=0
						usr.verbs -= new /mob/jutsus/verb/MakeSanbi()
						usr<<"Você selou o Sanbi na Gedou Mazou!"
						gedoucomsanbi=1
						for(var/obj/PoteSanbi/S in usr) del S
						text2file("[time2text(world.realtime)]: Gedo Mazo teve o bijuu <b>Sanbi</b> selado em si por <b>[usr]</b>([usr.key])<BR>","GMlog.html")
						SalvarBijuus()
					else
						usr<<"Já existe esta bijuu nela, contate um ADM!"
				if(usr.tempoteyonbi)
					if(!gedoucomyonbi)
						WYonbi:dono="Gedou Mazou"
						usr.tempoteyonbi=0
						usr.verbs -= new /mob/jutsus/verb/Makeyonbi()
						for(var/obj/PoteYonbi/Y in usr) del Y
						gedoucomyonbi=1
						usr<<"Você selou o Yonbi na Gedou Mazou!"
						text2file("[time2text(world.realtime)]: Gedo Mazo teve o bijuu <b>Yonbi</b> selado em si por <b>[usr]</b>([usr.key])<BR>","GMlog.html")
						SalvarBijuus()
					else
						usr<<"Já existe esta bijuu nela, contate um ADM!"
				if(usr.tempotegobi)
					if(!gedoucomgobi)
						WGobi:dono="Gedou Mazou"
						usr.tempotegobi=0
						usr.verbs -= new /mob/jutsus/verb/MakeGobi()
						for(var/obj/PoteGobi/G in usr) del G
						usr<<"Você selou o Gobi na Gedou Mazou!"
						gedoucomgobi=1
						text2file("[time2text(world.realtime)]: Gedo Mazo teve o bijuu <b>Gobi</b> selado em si por <b>[usr]</b>([usr.key])<BR>","GMlog.html")
						SalvarBijuus()
					else
						usr<<"Já existe esta bijuu nela, contate um ADM!"
				if(usr.tempoterokubi)
					if(!gedoucomrokubi)
						WRokubi:dono="Gedou Mazou"
						usr.tempoterokubi=0
						usr.verbs -= new /mob/jutsus/verb/MakeRokubi()
						for(var/obj/PoteRokubi/R in usr) del R
						usr<<"Você selou o Rokubi na Gedou Mazou!"
						gedoucomrokubi=1
						text2file("[time2text(world.realtime)]: Gedo Mazo teve o bijuu <b>Rokubi</b> selado em si por <b>[usr]</b>([usr.key])<BR>","GMlog.html")
						SalvarBijuus()
					else
						usr<<"Já existe esta bijuu nela, contate um ADM!"
				if(usr.tempotenanabi)
					if(!gedoucomnanabi)
						WShichibi:dono="Gedou Mazou"
						usr.tempotenanabi=0
						usr.verbs -= new /mob/jutsus/verb/MakeSishibi()
						for(var/obj/PoteShichibi/SC in usr) del SC
						usr<<"Você selou o Nanabi na Gedou Mazou!"
						gedoucomnanabi=1
						text2file("[time2text(world.realtime)]: Gedo Mazo teve o bijuu <b>Nanabi</b> selado em si por <b>[usr]</b>([usr.key])<BR>","GMlog.html")
						SalvarBijuus()
					else
						usr<<"Já existe esta bijuu nela, contate um ADM!"
				if(usr.tempotehachibi)
					if(!gedoucomhachibi)
						WHachibi:dono="Gedou Mazou"
						usr.tempotehachibi=0
						usr.verbs -= new /mob/jutsus/verb/MakeHachibi()
						for(var/obj/PoteHachibi/H in usr) del H
						usr<<"Você selou o Hachibi na Gedou Mazou!"
						gedoucomhachibi=1
						text2file("[time2text(world.realtime)]: Gedo Mazo teve o bijuu <b>Hachibi</b> selado em si por <b>[usr]</b>([usr.key])<BR>","GMlog.html")
						SalvarBijuus()
					else
						usr<<"Já existe esta bijuu nela, contate um ADM!"
				if(usr.tempotekyuubi)
					if(!gedoucomkyuubi)
						WKyuubi:dono="Gedou Mazou"
						usr.tempotekyuubi=0
						usr.verbs -= new /mob/jutsus/verb/MakeKyuubi()
						for(var/obj/PoteKyuubi/K in usr) del K
						usr<<"Você selou a Kyuubi na Gedou Mazou!"
						gedoucomkyuubi=1
						text2file("[time2text(world.realtime)]: Gedo Mazo teve o bijuu <b>Kyuubi</b> selado em si por <b>[usr]</b>([usr.key])<BR>","GMlog.html")
						SalvarBijuus()
					else
						usr<<"Já existe esta bijuu nela, contate um ADM!"

			FormarJuubi()
				set name = "Formar Juubi"
				set category = "Gedou Mazou"
				set src in oview(1)
				if(gedoucomichibi&&gedoucomnibi&&gedoucomsanbi&&gedoucomyonbi&&gedoucomgobi&&gedoucomrokubi&&gedoucomnanabi&&gedoucomhachibi&&gedoucomkyuubi)
					juubiformado=1
					gedoucomichibi=0
					gedoucomnibi=0
					gedoucomsanbi=0
					gedoucomyonbi=0
					gedoucomgobi=0
					gedoucomrokubi=0
					gedoucomnanabi=0
					gedoucomhachibi=0
					gedoucomkyuubi=0
					view()<<"Juubi formado com sucesso!"
				else
					view()<<"Ainda falta alguma(s) Bijuu(s)!"
			JinchuurikiJuubi()
				set name = "Virar Jinchuuriki do Juubi"
				set category = "Gedou Mazou"
				set src in oview(1)
				if(juubiformado)
					usr.Jinchuuriki=1
					usr.Juubi=1
					WJuubi:dono=usr.key
					juubiformado=0
					usr.icon='Juubijinchuuriki.dmi'
					var/obj/Cajado6Caminhos/CJ = new()
					CJ.loc=usr
					usr.verbs += new /mob/Jinc/verb/JuubiPowerup()
					usr.verbs += new /mob/jutsu/verb/GGKai()
					usr.verbs += new /mob/jutsus/verb/Libertar_Juubi()
					usr<<"Você sente um grande poder sendo selado para dentro de você... Você se tornou o novo Rikudou Sennin!"
					text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) teve o bijuu <b>Juubi</b> selado em si pela Estatua Gedou Mazou!<BR>","GMlog.html")
				else
					usr<<"O Juubi não está formado na Gedou Mazou!"

//======================Desbugar Esatua====================================//
/*mob/ADM/verb/desbugGedoM()
	set category = "Desbugar Estatua"
	set name = "Desbugar Gedou Mazou"
	gedoucomichibi=0
	gedoucomnibi=0
	gedoucomsanbi=0
	gedoucomyonbi=0
	gedoucomgobi=0
	gedoucomrokubi=0
	gedoucomnanabi=0
	gedoucomhachibi=0
	gedoucomkyuubi=0*/


//===================Juubi Buff===========================================//
mob/var/tmp/cdmantojuubi=0
mob
	Jinc
		verb
			JuubiPowerup()
				set category = "Bijuu"
				set name = "Manto Juubi"
				if(usr.inbadass==1)
					usr.overlays-='bdsanbi.dmi'
					usr.overlays-='bdyonbi.dmi'
					usr.overlays-='bdkyuu.dmi'
					usr.overlays-='bdgobi.dmi'
					usr.overlays-='bdroku.dmi'
					usr.overlays-='bdshuka.dmi'
					usr.overlays-='bdhachi.dmi'
					usr.overlays-='bdsichi.dmi'
					usr.overlays-='bdnibi.dmi'
					usr.health=usr.velhohp
					usr.chakra=usr.chakra
					usr.tai = usr.Mtai
					usr.gen = usr.Mgen
					usr.nin = usr.Mnin
					usr.shurikenskill = usr.Mshurikenskill
					usr.inbadass=0
					usr.verbs -= new /mob/jutsu/verb/GGKai()
					usr.verbs -= new /mob/Jinc/verb/JuubiBDamaJinchu()
					usr<<"Você desativou o poder da Juubi!"
					return
				if(usr.Juubi==1)
					usr.verbs += new /mob/jutsu/verb/GGKai()
					usr.verbs += new /mob/Jinc/verb/JuubiBDamaJinchu()
					usr.velhohp = usr.health
					usr.velhochakra = usr.chakra
					usr.Badass()
					return
				else
					usr<<"Você não possui a Juubi!"



//=================================Turf Quest================================//
turf
	JE
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/B=A
				if(B.client)
					if(B.density==1)
						if(B.tempotejuubi)
							B.loc = locate(506,254,10)
						else
							B<<"Você precisa de um certo poder para entrar!"
							world<<"[B] foi morto pela barreira malígna!"
							B.health=0
							B.chakra=0
							B.Death(B)
							//usr.SalvarAgora()
					else
						usr<<"Não enquanto voa."

turf
	ANE
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/B=A
				if(B.client)
					if(B.density==1)
						if(B.seals>=100&&B.level>=300)
							B.loc = locate(474,250,10)
						else
							B<<"Você precisa ser mais forte para poder entrar!"
							world<<"[B] foi morto por uma barreira extremamente poderosa!"
							B.health=0
							B.chakra=0
							B.Death(B)
							//usr.SalvarAgora()
					else
						usr<<"Não enquanto voa."