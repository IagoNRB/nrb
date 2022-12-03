mob/var/podecachoeira=0
mob/var/foicachoeira=0

mob/var/podeselaremsi=0

mob/var/tempoteichibi=0
mob/var/tempotenibi=0
mob/var/tempotesanbi=0
mob/var/tempoteyonbi=0
mob/var/tempotegobi=0
mob/var/tempoterokubi=0
mob/var/tempotenanabi=0
mob/var/tempotehachibi=0
mob/var/tempotekyuubi=0
mob/var/tempotejuubi=0
//=======================NPC Rikudou Sennin=========================//

mob/npc/RikudouSennin
	name = "{NPC}Rikudou Sennin"
	icon = 'UltimetiumNPCS.dmi'
	icon_state= "Rikudou Sennin"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Rikudou"
			switch(input("O que você faz aqui?",text) in list ("Quero ser o Jinchuuriki","Esqueça"))
				if("Quero ser o Jinchuuriki")
					if(!usr.Jinchuuriki&&!usr.podeselaremsi)
						usr<<"Olá. encontre o antigo Jinchuriki..."
						usr.podeselaremsi=1
					else
						usr<<"Voce não tem pode de bijuu ou já é Jinchuuriki!"
				if("Esqueça")
					usr<<"Adeus"
					return
//=======================NPC Killer Bee=========================//

mob/npc/Killerbee
	name = "{NPC}Killer Bee"
	icon = 'UltimetiumNPCS.dmi'
	icon_state= "Jiu 8"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Bee"
			switch(input("O que você faz aqui?",text) in list ("Gostaria de controlar minha Bijuu","Já reconheci meu Eu interior","Esqueça"))
				if("Gostaria de controlar minha Bijuu")
					if(usr.Jinchuuriki&&usr.kyuu3==1&&usr.level>=500&&usr.vitorias>=500&&usr.chakraN>=200000)
						usr<<"Olá. encontre a Cachoeira da Verdade..."
						usr.podecachoeira=1
					else
						usr<<"Não tenho tempo para bobeira!"
				if("Já reconheci meu Eu interior")
					if(usr.Jinchuuriki&&usr.foicachoeira)
						usr<<"Parabéns, agora voce dominou sua bijuu..."
						usr.badass=1
						usr.foicachoeira=0
						usr.verbs += new /mob/Jinc/verb/Powerup2()
					else
						usr<<"Voce não foi na cachoeira!"
				if("Esqueça")
					usr<<"Adeus"
					return

//========================Quest Cachoeira da Verdade============//
turf
	Espelho
		icon = 'SO.dmi'
		icon_state = ""
		density=0
		layer=0
		Enter(mob/M)
			..()
			if(ismob(M))
				if(M.Jinchuuriki==1&&usr.podecachoeira)
					M.froze=1
					M.move=0
					sleep(100)
					M.Espelho()
					return
				return 1
			else if(isobj(M))
				del(M)
			else ..()
		Exit(mob/M)
			..()
			if(ismob(M))
				return 1
			else if(isobj(M))
				del (M)
			else ..()

mob
	proc
		Espelho()
			src.loc = locate(33,1,5)
			src.froze=0
			src.move=1
			src<<"Você enxergou a si mesmo na cachoeira e encontrou a essência de sua personalidade..."
			var/mob/Bijuus/CloneCachoeira/C = new /mob/Bijuus/CloneCachoeira
			if(C)
				C.name = "Clone [usr.name]"
				C.icon = src.icon
				C.overlays += src.overlays
				C.loc = locate(usr.x, usr.y+5, usr.z)
				flick("smoke2",C)
				C.health=src.maxhealth
				C.tai = src.tai
				C.nin = src.nin
				C.gen = src.gen
				C.shurikenskill = src.shurikenskill


//==============////===================================================//


mob/npc/Bijuu
	name="{NPC}Sabio das Bijuus"
	icon='UltimetiumNPCS.dmi'
	icon_state="velho deprimido"
	PK=0
	imortal = 1
	health=9999999999999999999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Bijuu"
			switch(input("O que você faz aqui?",text) in list ("Tenho uma Bijuu. Quero seu poder!","Libere o demônio dentro de mim."))
				if("Tenho uma Bijuu. Quero seu poder!")
					if(!usr.Jinchuuriki)
						usr<<"Você não tem uma bijuu."
						return
					if(usr.seals<100)
						usr<<"Vc precisa ser jounin ou mais"
						return
					if(usr.Kyuubi)
						if(usr.kyuu2>=1)
							if(usr.kyuu2>=1&&usr.level>=400&&usr.vitorias>=400&&usr.chakraN>=150000)
								usr<<"Você treinou duro."
								usr.kyuu3=1
								sleep(30)
								usr<<"Pronto, enfraqueci seu selo. Fantástico!"
							else
								usr<<"Você ainda não é forte bastante."
						else
							if(usr.Kyuubi==1&&usr.level>=300&&usr.vitorias>=300)
								usr<<"Uau, você se tornou bem mais forte em tão pouco tempo. Ok, relaxe, vou cuidar disso para você"
								usr.kyuu2=1
								sleep(30)
								usr<<"Pronto, enfraqueci seu selo. Fantástico!"
							else
								usr<<"Seu rank é muito baixo."
					else if(usr.Nibi)
						if(usr.kyuu2>=1)
							if(usr.kyuu2>=1&&usr.level>=400&&usr.vitorias>=400&&usr.chakraN>=150000)
								usr<<"Uau, você se tornou bem mais forte em tão pouco tempo. Ok, relaxe, vou cuidar disso para você"
								usr.kyuu3=1
								sleep(30)
								usr<<"Pronto, enfraqueci seu selo. Fantástico!"
							else
								usr<<"Você ainda não matou o bastante."
						else
							if(usr.Nibi==1&&usr.level>=300&&usr.vitorias>=300)
								usr<<"Uau, você se tornou bem mais forte em tão pouco tempo. Ok, relaxe, vou cuidar disso para você"
								usr.kyuu2=1
								sleep(30)
								usr<<"Pronto, parece que você conseguiu aguentar tamanho poder. Fantástico!"
							else
								usr<<"Seu rank é muito baixo."
					else if(usr.Sanbi)
						if(usr.kyuu2>=1)
							if(usr.kyuu2>=1&&usr.level>=400&&usr.vitorias>=400&&usr.chakraN>=150000)
								usr<<"Uau, você se tornou bem mais forte em tão pouco tempo. Ok, relaxe, vou cuidar disso para você"
								usr.kyuu3=1
								sleep(30)
								usr<<"Pronto, enfraqueci seu selo. Fantástico!"
							else
								usr<<"Você ainda não matou o bastante."
						else
							if(usr.Sanbi==1&&usr.level>=300&&usr.vitorias>=300)
								usr<<"Uau, você se tornou bem mais forte em tão pouco tempo. Ok, relaxe, vou cuidar disso para você"
								usr.kyuu2=1
								sleep(30)
								usr<<"Pronto, parece que você conseguiu aguentar tamanho poder. Fantástico!"
							else
								usr<<"Seu rank é muito baixo."

					else if(usr.Yonbi)
						if(usr.kyuu2>=1)
							if(usr.kyuu2>=1&&usr.level>=400&&usr.vitorias>=400&&usr.chakraN>=150000)
								usr<<"Uau, você se tornou bem mais forte em tão pouco tempo. Ok, relaxe, vou cuidar disso para você"
								usr.kyuu3=1
								sleep(30)
								usr<<"Pronto, enfraqueci seu selo. Fantástico!"
							else
								usr<<"Você ainda não matou o bastante."
						else
							if(usr.Yonbi==1&&usr.level>=300&&usr.vitorias>=300)
								usr<<"Uau, você se tornou bem mais forte em tão pouco tempo. Ok, relaxe, vou cuidar disso para você"
								usr.kyuu2=1
								sleep(30)
								usr<<"Pronto, parece que você conseguiu aguentar tamanho poder. Fantástico!"
							else
								usr<<"Seu rank é muito baixo."

					else if(usr.Gobi)
						if(usr.kyuu2>=1)
							if(usr.kyuu2>=1&&usr.level>=400&&usr.vitorias>=400&&usr.chakraN>=150000)
								usr<<"Uau, você se tornou bem mais forte em tão pouco tempo. Ok, relaxe, vou cuidar disso para você"
								usr.kyuu3=1
								sleep(30)
								usr<<"Pronto, enfraqueci seu selo. Fantástico!"
							else
								usr<<"Você ainda não matou o bastante."
						else
							if(usr.Gobi==1)
								usr<<"Uau, você se tornou bem mais forte em tão pouco tempo. Ok, relaxe, vou cuidar disso para você"
								usr.kyuu2=1
								sleep(30)
								usr<<"Pronto, parece que você conseguiu aguentar tamanho poder. Fantástico!"
							else
								usr<<"Seu rank é muito baixo."

					else if(usr.Rokubi)
						if(usr.kyuu2>=1)
							if(usr.kyuu2>=1&&usr.level>=400&&usr.vitorias>=400&&usr.chakraN>=150000)
								usr<<"Uau, você se tornou bem mais forte em tão pouco tempo. Ok, relaxe, vou cuidar disso para você"
								usr.kyuu3=1
								sleep(30)
								usr<<"Pronto, enfraqueci seu selo. Fantástico!"
							else
								usr<<"Você ainda não matou o bastante."
						else
							if(usr.Rokubi==1&&usr.level>=300&&usr.vitorias>=300)
								usr<<"Uau, você se tornou bem mais forte em tão pouco tempo. Ok, relaxe, vou cuidar disso para você"
								usr.kyuu2=1
								sleep(30)
								usr<<"Pronto, parece que você conseguiu aguentar tamanho poder. Fantástico!"
							else
								usr<<"Seu rank é muito baixo."

					else if(usr.Sishibi)
						if(usr.kyuu2>=1)
							if(usr.kyuu2>=1&&usr.level>=400&&usr.vitorias>=400&&usr.chakraN>=150000)
								usr<<"Uau, você se tornou bem mais forte em tão pouco tempo. Ok, relaxe, vou cuidar disso para você"
								usr.kyuu3=1
								sleep(30)
								usr<<"Pronto, enfraqueci seu selo. Fantástico!"
							else
								usr<<"Você ainda não matou o bastante."
						else
							if(usr.Sishibi==1&&usr.level>=300&&usr.vitorias>=300)
								usr<<"Uau, você se tornou bem mais forte em tão pouco tempo. Ok, relaxe, vou cuidar disso para você"
								usr.kyuu2=1
								sleep(30)
								usr<<"Pronto, parece que você conseguiu aguentar tamanho poder. Fantástico!"
							else
								usr<<"Seu rank é muito baixo."

					else if(usr.Hachibi)
						if(usr.kyuu2>=1)
							if(usr.kyuu2>=1&&usr.level>=400&&usr.vitorias>=400&&usr.chakraN>=150000)
								usr<<"Uau, você se tornou bem mais forte em tão pouco tempo. Ok, relaxe, vou cuidar disso para você"
								usr.kyuu3=1
								sleep(30)
								usr<<"Pronto, enfraqueci seu selo. Fantástico!"
							else
								usr<<"Você ainda não matou o bastante."
						else
							if(usr.Hachibi==1&&usr.level>=300&&usr.vitorias>=300)
								usr<<"Uau, você se tornou bem mais forte em tão pouco tempo. Ok, relaxe, vou cuidar disso para você"
								usr.kyuu2=1
								sleep(30)
								usr<<"Pronto, parece que você conseguiu aguentar tamanho poder. Fantástico!"
							else
								usr<<"Seu rank é muito baixo."


				if("Libere o demônio dentro de mim.")
					if(usr.Ichibi)
						if(usr.seals<100)
							usr<<"Vc precisa ser jounin ou mais"
						else if(usr.Ichibi==1&&usr.kaku2<=0&&usr.level>=300&&usr.vitorias>=300)
							usr<<"Parece que você se tornou mais forte. Vamos ver se agora aguenta o poder do Shukaku."
							usr.kaku2=1
							sleep(30)
							usr<<"Pronto, parece que você conseguiu aguentar tamanho poder. Fantástico!"
						else if(usr.kaku2>=1&&usr.level>=400&&usr.vitorias>=400&&usr.chakraN>=150000)
							usr<<"Você treinou bastante. Talvez seja hora..."
							usr.kaku3=1
							sleep(30)
							usr<<"Pronto, parece que você conseguiu aguentar tamanho poder. Fantástico!"
						else
							usr<<"Você ainda é fraco."
					else
						usr<<"Mentiroso. Saia daqui antes que eu o mate!"


//==============================Jinc 1===================================///
mob/npc/ShukakuJin
	name = "{NPC}Jinchuriki Ichibi"
	icon = 'npcsx.dmi'
	icon_state= "IchibiJinc"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Jinchuriki"
			switch(input("O que você faz aqui?",text) in list ("Gostaria de ser o Jinchuriki","Esqueça"))
				if("Gostaria de ser o Jinchuriki")
					if(!usr.Jinchuuriki&&usr.podeselaremsi&&usr.tempoteichibi)
						usr<<"Voce sente um poder invadindo seu corpo... Voce e o novo Jinchuriki do Ichibi!"
						usr.podeselaremsi=0
						usr.verbs -= new /mob/jutsus/verb/MakeIchibi()
						usr.tempoteichibi=0
						//usr.SalvarAgora()
						usr.Jinchuuriki=1
						usr.Ichibi=1
						usr.verbs += new /mob/Jinc/verb/IchibiPowerup()
						usr.verbs += new /mob/jutsus/verb/Libertar_Ichibi()
						WIchibi:dono=usr.key
						SalvarBijuus()
						for(var/obj/PoteIchibi/I in usr) del I
						text2file("[time2text(world.realtime)]: <b>[usr]</b>(Key: [usr.key] || selou em si o <b>Shukaku</b>!<BR>","GMlog.html")
					else
						usr<<"Voce não tem o Pote do Ichibi!"
				if("Esqueça")
					usr<<"Adeus"
					return

//==============================Jinc 2===================================///
mob/npc/NibiJin
	name = "{NPC}Jinchuriki Nibi"
	icon = 'UltimetiumNPCS.dmi'
	icon_state= "Jiu 2"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Jinchuriki"
			switch(input("O que você faz aqui?",text) in list ("Gostaria de ser o Jinchuriki","Esqueça"))
				if("Gostaria de ser o Jinchuriki")
					if(!usr.Jinchuuriki&&usr.podeselaremsi&&usr.tempotenibi)
						usr<<"Voce sente um poder invadindo seu corpo... Voce e o novo Jinchuriki do Nibi!"
						usr.podeselaremsi=0
						usr.verbs -= new /mob/jutsus/verb/MakeNibi()
						usr.tempotenibi=0
						//usr.SalvarAgora()
						usr.Jinchuuriki=1
						usr.Nibi=1
						usr.verbs += new /mob/Jinc/verb/NibiPowerup()
						usr.verbs += new /mob/jutsus/verb/Libertar_Nibi()
						WNibi:dono=usr.key
						SalvarBijuus()
						for(var/obj/PoteNibi/N in usr) del N
						text2file("[time2text(world.realtime)]: <b>[usr]</b>(Key: [usr.key] || selou em si o <b>Nibi</b>!<BR>","GMlog.html")
					else
						usr<<"Voce não tem o Pote do Nibi!"
				if("Esqueça")
					usr<<"Adeus"
					return

//==============================Jinc 3===================================///
mob/npc/SanbiJin
	name = "{NPC}Jinchuriki Sanbi"
	icon = 'UltimetiumNPCS.dmi'
	icon_state= "Jiu 3"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Jinchuriki"
			switch(input("O que você faz aqui?",text) in list ("Gostaria de ser o Jinchuriki","Esqueça"))
				if("Gostaria de ser o Jinchuriki")
					if(!usr.Jinchuuriki&&usr.podeselaremsi&&usr.tempotesanbi)
						usr<<"Voce sente um poder invadindo seu corpo... Voce e o novo Jinchuriki do Sanbi!"
						usr.podeselaremsi=0
						usr.verbs -= new /mob/jutsus/verb/MakeSanbi()
						usr.tempotesanbi=0
						//usr.SalvarAgora()
						usr.Jinchuuriki=1
						usr.Sanbi=1
						usr.verbs += new /mob/Jinc/verb/SanbiPowerup()
						usr.verbs += new /mob/jutsus/verb/Libertar_Sanbi()
						WSanbi:dono=usr.key
						SalvarBijuus()
						for(var/obj/PoteSanbi/S in usr) del S
						text2file("[time2text(world.realtime)]: <b>[usr]</b>(Key: [usr.key] || selou em si o <b>Sanbi</b>!<BR>","GMlog.html")
					else
						usr<<"Voce não tem o Pote do Sanbi!"
				if("Esqueça")
					usr<<"Adeus"
					return

//==============================Jinc 4===================================///
mob/npc/YonbiJin
	name = "{NPC}Jinchuriki Yonbi"
	icon = 'UltimetiumNPCS.dmi'
	icon_state= "Jiu 4"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Jinchuriki"
			switch(input("O que você faz aqui?",text) in list ("Gostaria de ser o Jinchuriki","Esqueça"))
				if("Gostaria de ser o Jinchuriki")
					if(!usr.Jinchuuriki&&usr.podeselaremsi&&usr.tempoteyonbi)
						usr<<"Voce sente um poder invadindo seu corpo... Voce e o novo Jinchuriki do Yonbi!"
						usr.podeselaremsi=0
						usr.verbs -= new /mob/jutsus/verb/Makeyonbi()
						usr.tempoteyonbi=0
						//usr.SalvarAgora()
						usr.Jinchuuriki=1
						usr.Yonbi=1
						usr.verbs += new /mob/Jinc/verb/YonbiPowerup()
						usr.verbs += new /mob/jutsus/verb/Libertar_Yonbi()
						WYonbi:dono=usr.key
						SalvarBijuus()
						for(var/obj/PoteYonbi/Y in usr) del Y
						text2file("[time2text(world.realtime)]: <b>[usr]</b>(Key: [usr.key] || selou em si o <b>Yonbi</b>!<BR>","GMlog.html")
					else
						usr<<"Voce não tem o Pote do Yonbi!"
				if("Esqueça")
					usr<<"Adeus"
					return

//==============================Jinc 5===================================///
mob/npc/GobiJin
	name = "{NPC}Jinchuriki Gobi"
	icon = 'UltimetiumNPCS.dmi'
	icon_state= "Jiu 5"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Jinchuriki"
			switch(input("O que você faz aqui?",text) in list ("Gostaria de ser o Jinchuriki","Esqueça"))
				if("Gostaria de ser o Jinchuriki")
					if(!usr.Jinchuuriki&&usr.podeselaremsi&&usr.tempotegobi)
						usr<<"Voce sente um poder invadindo seu corpo... Voce e o novo Jinchuriki do Gobi!"
						usr.podeselaremsi=0
						usr.verbs -= new /mob/jutsus/verb/MakeGobi()
						usr.tempotegobi=0
						//usr.SalvarAgora()
						usr.Jinchuuriki=1
						usr.Gobi=1
						usr.verbs += new /mob/Jinc/verb/GobiPowerup()
						usr.verbs += new /mob/jutsus/verb/Libertar_Gobi()
						WGobi:dono=usr.key
						SalvarBijuus()
						for(var/obj/PoteGobi/G in usr) del G
						text2file("[time2text(world.realtime)]: <b>[usr]</b>(Key: [usr.key] || selou em si o <b>Gobi</b>!<BR>","GMlog.html")
					else
						usr<<"Voce não tem o Pote do Gobi!"
				if("Esqueça")
					usr<<"Adeus"
					return

//==============================Jinc 6===================================///
mob/npc/RokubiJin
	name = "{NPC}Jinchuriki Rokubi"
	icon = 'UltimetiumNPCS.dmi'
	icon_state= "Jiu 6"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Jinchuriki"
			switch(input("O que você faz aqui?",text) in list ("Gostaria de ser o Jinchuriki","Esqueça"))
				if("Gostaria de ser o Jinchuriki")
					if(!usr.Jinchuuriki&&usr.podeselaremsi&&usr.tempoterokubi)
						usr<<"Voce sente um poder invadindo seu corpo... Voce e o novo Jinchuriki do Rokubi!"
						usr.podeselaremsi=0
						usr.verbs -= new /mob/jutsus/verb/MakeRokubi()
						usr.tempoterokubi=0
						//usr.SalvarAgora()
						usr.Jinchuuriki=1
						usr.Rokubi=1
						usr.verbs += new /mob/Jinc/verb/RokubiPowerup()
						usr.verbs += new /mob/jutsus/verb/Libertar_Rokubi()
						WRokubi:dono=usr.key
						SalvarBijuus()
						for(var/obj/PoteRokubi/R in usr) del R
						text2file("[time2text(world.realtime)]: <b>[usr]</b>(Key: [usr.key] || selou em si o <b>Rokubi</b>!<BR>","GMlog.html")
					else
						usr<<"Voce não tem o Pote do Rokubi!"
				if("Esqueça")
					usr<<"Adeus"
					return

//==============================Jinc 7===================================///
mob/npc/NanabiJin
	name = "{NPC}Jinchuriki Nanabi"
	icon = 'UltimetiumNPCS.dmi'
	icon_state= "Jiu 7"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Jinchuriki"
			switch(input("O que você faz aqui?",text) in list ("Gostaria de ser o Jinchuriki","Esqueça"))
				if("Gostaria de ser o Jinchuriki")
					if(!usr.Jinchuuriki&&usr.podeselaremsi&&usr.tempotenanabi)
						usr<<"Voce sente um poder invadindo seu corpo... Voce e o novo Jinchuriki do Nanabi!"
						usr.podeselaremsi=0
						usr.verbs -= new /mob/jutsus/verb/MakeSishibi()
						usr.tempotenanabi=0
						//usr.SalvarAgora()
						usr.Jinchuuriki=1
						usr.Sishibi=1
						usr.verbs += new /mob/Jinc/verb/NanabiPowerup()
						usr.verbs += new /mob/jutsus/verb/Libertar_Shichibi()
						WShichibi:dono=usr.key
						SalvarBijuus()
						for(var/obj/PoteShichibi/SC in usr) del SC
						text2file("[time2text(world.realtime)]: <b>[usr]</b>(Key: [usr.key] || selou em si o <b>Nanabi</b>!<BR>","GMlog.html")
					else
						usr<<"Voce não tem o Pote do Nanabi!"
				if("Esqueça")
					usr<<"Adeus"
					return

//==============================Jinc 8===================================///
mob/npc/HachibiJin
	name = "{NPC}Jinchuriki Hachibi"
	icon = 'UltimetiumNPCS.dmi'
	icon_state= "Jiu 8"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Jinchuriki"
			switch(input("O que você faz aqui?",text) in list ("Gostaria de ser o Jinchuriki","Esqueça"))
				if("Gostaria de ser o Jinchuriki")
					if(!usr.Jinchuuriki&&usr.podeselaremsi&&usr.tempotehachibi)
						usr<<"Voce sente um poder invadindo seu corpo... Voce e o novo Jinchuriki do Hachibi!"
						usr.podeselaremsi=0
						usr.verbs -= new /mob/jutsus/verb/MakeHachibi()
						usr.tempotehachibi=0
						//usr.SalvarAgora()
						usr.Jinchuuriki=1
						usr.Hachibi=1
						usr.verbs += new /mob/Jinc/verb/HachibiPowerup()
						usr.verbs += new /mob/jutsus/verb/Libertar_Hachibi()
						WHachibi:dono=usr.key
						SalvarBijuus()
						for(var/obj/PoteHachibi/H in usr) del H
						text2file("[time2text(world.realtime)]: <b>[usr]</b>(Key: [usr.key] || selou em si o <b>Hachibi</b>!<BR>","GMlog.html")
					else
						usr<<"Voce não tem o Pote do Hachibi!"
				if("Esqueça")
					usr<<"Adeus"
					return


//==============================Jinc 9===================================///
mob/npc/KyuubiJin
	name = "{NPC}Jinchuriki Kyuubi"
	icon = 'npcsx.dmi'
	icon_state= "jinc 9"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Jinchuriki"
			switch(input("O que você faz aqui?",text) in list ("Gostaria de ser o Jinchuriki","Esqueça"))
				if("Gostaria de ser o Jinchuriki")
					if(!usr.Jinchuuriki&&usr.podeselaremsi&&usr.tempotekyuubi)
						usr<<"Voce sente um poder invadindo seu corpo... Voce e o novo Jinchuriki da Kyuubi!"
						usr.podeselaremsi=0
						usr.verbs -= new /mob/jutsus/verb/MakeKyuubi()
						usr.tempotekyuubi=0
						//usr.SalvarAgora()
						usr.Jinchuuriki=1
						usr.Kyuubi=1
						usr.verbs += new /mob/Jinc/verb/KyuubiPowerup()
						usr.verbs += new /mob/jutsus/verb/Libertar_Kyuubi()
						WKyuubi:dono=usr.key
						SalvarBijuus()
						for(var/obj/PoteKyuubi/K in usr) del K
						text2file("[time2text(world.realtime)]: <b>[usr]</b>(Key: [usr.key] || selou em si o <b>Kyuubi</b>!<BR>","GMlog.html")
					else
						usr<<"Voce não tem o Pote da Kyuubi!"
				if("Esqueça")
					usr<<"Adeus"
					return

mob/npc/JuubiJin
	name = "{NPC}Jinchuriki Juubi"
	icon = 'Rikudo_madara.dmi'
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Jinchuriki"
			switch(input("O que você faz aqui?",text) in list ("Gostaria de ser o Jinchuriki","Esqueça"))
				if("Gostaria de ser o Jinchuriki")
					if(!usr.Jinchuuriki&&usr.podeselaremsi&&usr.tempotejuubi)
						usr<<"Voce sente um poder invadindo seu corpo... Voce e o novo Jinchuriki da Juubi!"
						usr.random=rand(1,6)
						if(usr.random==1)
							usr.podeselaremsi=0
							usr.tempotejuubi=0
							//usr.SalvarAgora()
							usr.Jinchuuriki=1
							usr.Juubi=1
							WJuubi:dono=usr.key
							juubisolto=0
							usr.icon='Juubijinchuuriki.dmi'
							usr.verbs += new /mob/Jinc/verb/JuubiPowerup()
							usr.verbs += new /mob/jutsus/verb/Libertar_Juubi()
							usr.verbs += new /mob/jutsu/verb/GGKai()
							var/obj/Cajado6Caminhos/CJ = new()
							CJ.loc=usr
							SalvarBijuus()
							for(var/obj/PoteJuubi/J in usr) del J
							text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) teve o bijuu <b>Juubi</b> selado em si!<BR>","GMlog.html")
							return
						else
							usr<<"Você perdeu o controle da Bijuu, agora ela está solta!"
							juubisolto=1
							usr.podeselaremsi=0
							usr.tempotejuubi=0
							usr.SalvarAgora()
							Juubi=new/Bijuu
							SalvarBijuus()
							for(var/obj/PoteJuubi/J in usr) del J
							text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) perdeu o controle <b>Juubi</b> deixando ela solta!<BR>","GMlog.html")
					else
						usr<<"Voce não tem o Pote da Juubi!"
				if("Esqueça")
					usr<<"Adeus"
					return



mob/npc/AnciaoNinjas
	name = "{NPC}Anciao dos Ninjas"
	icon = 'UltimetiumNPCS.dmi'
	icon_state= "Kutal"
	PK = 0
	imortal = 1
	health = 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
	verb
		Dizer()
			set src in oview(2)
			//set category = "Anciao"
			switch(input("O que você faz aqui?",text) in list ("Preciso Aprender a Extrair Bijuu!","Preciso Aprender a Extrair DNA/Doujutsu!","Nada"))
				if("Preciso Aprender a Extrair Bijuu!")
					if(usr.seals>=100)
						usr<<"Interessante...."
						if(usr.chakraN>=200000&&usr.level>=400&&usr.Mstamina >= 200000&&!usr.sabeextrairbijuu&&usr.capextendido)
							usr<<"Vc aprendeu a Extrair Bijuus!"
							usr.verbs += new /mob/jutsus/verb/ExtrairBijuu()
							usr.sabeextrairbijuu=1
							//usr.SalvarAgora()
						else
							usr<<"Você é muito fraco para aprender isso!"
					else
						usr<<"Vc precisa ser jounin ou mais"
				if("Preciso Aprender a Extrair DNA/Doujutsu!")
					if(usr.seals>=100)
						usr<<"Interessante...."
						if(usr.chakraN>=175000&&usr.level>=350&&usr.Mstamina >= 200000&&!usr.sabeextrair&&usr.capextendido)
							usr<<"Vc aprendeu a Extrair Bijuus!"
							usr.verbs += new /mob/jutsus/verb/ExtrairMeuPau()
							usr.sabeextrair=1
							//usr.SalvarAgora()
						else
							usr<<"Você é muito fraco para aprender isso!"
					else
						usr<<"Vc precisa ser jounin ou mais"
				if("Nada")
					usr<<"Saia"

//======================================Bijuus Turfs Labirintos=====================//
turf
	entradaLabIc
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(usr.density==0)
				usr<<"Não enquanto voa."
				return
			if(!usr.client)
				return
			if(usr.level >= 250&&usr.vitorias>=150&&usr.seals>=100||usr.level >= 250&&usr.vitorias>=150&&usr.rank=="Chuunin")
				usr.loc = locate(322,24,5)
			else
				usr<<"Você percebe uma entrada muito perigosa... Uma barreira te feriu gravemente!"
				world<<output("[usr] foi gravemente ferido por um jutsu de barreira que sugou seu chakra e desmaiou!","output2.sistema")
				usr.health=0
				usr.chakra=0
				usr.Death(usr)
				//usr.SalvarAgora()

	entradaLabNi
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(usr.density==0)
				usr<<"Não enquanto voa."
				return
			if(!usr.client)
				return
			if(usr.level >= 250&&usr.vitorias>=150&&usr.seals>=100||usr.level >= 250&&usr.vitorias>=150&&usr.rank=="Chuunin")
				usr.loc = locate(173,124,5)
			else
				usr<<"Você percebe uma entrada muito perigosa... Uma barreira te feriu gravemente!"
				world<<output("[usr] foi gravemente ferido por um jutsu de barreira que sugou seu chakra e desmaiou!","output2.sistema")
				usr.health=0
				usr.chakra=0
				usr.Death(usr)
				//usr.SalvarAgora()
	entradaLabSa
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(usr.density==0)
				usr<<"Não enquanto voa."
				return
			if(!usr.client)
				return
			if(usr.level >= 250&&usr.vitorias>=150&&usr.seals>=100||usr.level >= 250&&usr.vitorias>=150&&usr.rank=="Chuunin")
				usr.loc = locate(131,324,5)
			else
				usr<<"Você percebe uma entrada muito perigosa... Uma barreira te feriu gravemente!"
				world<<output("[usr] foi gravemente ferido por um jutsu de barreira que sugou seu chakra e desmaiou!","output2.sistema")
				usr.health=0
				usr.chakra=0
				usr.Death(usr)
				//usr.SalvarAgora()
	entradaLabYo
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(usr.density==0)
				usr<<"Não enquanto voa."
				return
			if(!usr.client)
				return
			if(usr.level >= 250&&usr.vitorias>=150&&usr.seals>=100||usr.level >= 250&&usr.vitorias>=150&&usr.rank=="Chuunin")
				usr.loc = locate(104,483,5)
			else
				usr<<"Você percebe uma entrada muito perigosa... Uma barreira te feriu gravemente!"
				world<<output("[usr] foi gravemente ferido por um jutsu de barreira que sugou seu chakra e desmaiou!","output2.sistema")
				usr.health=0
				usr.chakra=0
				usr.Death(usr)
				//usr.SalvarAgora()
	entradaLabGo
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(usr.density==0)
				usr<<"Não enquanto voa."
				return
			if(!usr.client)
				return
			if(usr.level >= 250&&usr.vitorias>=150&&usr.seals>=100||usr.level >= 250&&usr.vitorias>=150&&usr.rank=="Chuunin")
				usr.loc = locate(276,491,5)
			else
				usr<<"Você percebe uma entrada muito perigosa... Uma barreira te feriu gravemente!"
				world<<output("[usr] foi gravemente ferido por um jutsu de barreira que sugou seu chakra e desmaiou!","output2.sistema")
				usr.health=0
				usr.chakra=0
				usr.Death(usr)
				//usr.SalvarAgora()
	entradaLabRo
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(usr.density==0)
				usr<<"Não enquanto voa."
				return
			if(!usr.client)
				return
			if(usr.level >= 250&&usr.vitorias>=150&&usr.seals>=100||usr.level >= 250&&usr.vitorias>=150&&usr.rank=="Chuunin")
				usr.loc = locate(341,340,5)
			else
				usr<<"Você percebe uma entrada muito perigosa... Uma barreira te feriu gravemente!"
				world<<output("[usr] foi gravemente ferido por um jutsu de barreira que sugou seu chakra e desmaiou!","output2.sistema")
				usr.health=0
				usr.chakra=0
				usr.Death(usr)
				//usr.SalvarAgora()
	entradaLabSh
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(usr.density==0)
				usr<<"Não enquanto voa."
				return
			if(!usr.client)
				return
			if(usr.level >= 250&&usr.vitorias>=150&&usr.seals>=100||usr.level >= 250&&usr.vitorias>=150&&usr.rank=="Chuunin")
				usr.loc = locate(461,497,5)
			else
				usr<<"Você percebe uma entrada muito perigosa... Uma barreira te feriu gravemente!"
				world<<output("[usr] foi gravemente ferido por um jutsu de barreira que sugou seu chakra e desmaiou!","output2.sistema")
				usr.health=0
				usr.chakra=0
				usr.Death(usr)
				//usr.SalvarAgora()
	entradaLabHa
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(usr.density==0)
				usr<<"Não enquanto voa."
				return
			if(!usr.client)
				return
			if(usr.level >= 250&&usr.vitorias>=150&&usr.seals>=100||usr.level >= 250&&usr.vitorias>=150&&usr.rank=="Chuunin")
				usr.loc = locate(532,318,5)
			else
				usr<<"Você percebe uma entrada muito perigosa... Uma barreira te feriu gravemente!"
				world<<output("[usr] foi gravemente ferido por um jutsu de barreira que sugou seu chakra e desmaiou!","output2.sistema")
				usr.health=0
				usr.chakra=0
				usr.Death(usr)
				//usr.SalvarAgora()
	entradaLabKy
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(usr.density==0)
				usr<<"Não enquanto voa."
				return
			if(!usr.client)
				return
			if(usr.level >= 250&&usr.vitorias>=150&&usr.seals>=100||usr.level >= 250&&usr.vitorias>=150&&usr.rank=="Chuunin")
				usr.loc = locate(513,60,5)
			else
				usr<<"Você percebe uma entrada muito perigosa... Uma barreira te feriu gravemente!"
				world<<output("[usr] foi gravemente ferido por um jutsu de barreira que sugou seu chakra e desmaiou!","output2.sistema")
				usr.health=0
				usr.chakra=0
				usr.Death(usr)
				//usr.SalvarAgora()

//======================================Bijuus Turfs Dimensões=====================//
turf
	entradaDimIc
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(usr.density==0)
				usr<<"Não enquanto voa."
				return
			else
				usr.loc = locate(281,107,9)
	entradaDimNi
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(usr.density==0)
				usr<<"Não enquanto voa."
				return
			else
				usr.loc = locate(90,250,9)
	entradaDimSa
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(usr.density==0)
				usr<<"Não enquanto voa."
				return
			else
				usr.loc = locate(125,365,9)
	entradaDimYo
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(usr.density==0)
				usr<<"Não enquanto voa."
				return
			else
				usr.loc = locate(290,419,9)
	entradaDimGo
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(usr.density==0)
				usr<<"Não enquanto voa."
				return
			else
				usr.loc = locate(434,256,9)
	entradaDimRo
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(usr.density==0)
				usr<<"Não enquanto voa."
				return
			else
				usr.loc = locate(540,380,9)
	entradaDimSc
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(usr.density==0)
				usr<<"Não enquanto voa."
				return
			else
				usr.loc = locate(582,239,9)
	entradaDimHa
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(usr.density==0)
				usr<<"Não enquanto voa."
				return
			else
				usr.loc = locate(579,109,9)
	entradaDimKy
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(usr.density==0)
				usr<<"Não enquanto voa."
				return
			else
				usr.loc = locate(467,36,9)


//======================================Bijuus NPCs Quests=====================//
turf
	entradaRikudou
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(usr.density==0)
				usr<<"Não enquanto voa."
				return
			if(!usr.client)
				return
			if(usr.level >= 300&&usr.vitorias>=200&&usr.seals>=100)
				usr.loc = locate(527,561,10)
			else
				usr<<"Você percebe uma entrada muito perigosa... Uma barreira te feriu gravemente!"
				world<<output("[usr] foi gravemente ferido por um jutsu de barreira que sugou seu chakra e desmaiou!","output2.sistema")
				usr.health=0
				usr.chakra=0
				usr.Death(usr)
				//usr.SalvarAgora()

	entradaSabioBijuu
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(usr.density==0)
				usr<<"Não enquanto voa."
				return
			if(!usr.client)
				return
			if(usr.level >= 300&&usr.vitorias>=200&&usr.seals>=100)
				usr.loc = locate(638,586,10)
			else
				usr<<"Você percebe uma entrada muito perigosa... Uma barreira te feriu gravemente!"
				world<<output("[usr] foi gravemente ferido por um jutsu de barreira que sugou seu chakra e desmaiou!","output2.sistema")
				usr.health=0
				usr.chakra=0
				usr.Death(usr)
	entradaBee
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(usr.density==0)
				usr<<"Não enquanto voa."
				return
			if(usr.level >= 300&&usr.vitorias>=200&&usr.seals>=100)
				usr.loc = locate(633,501,10)
			else
				usr<<"Você percebe uma entrada muito perigosa... Uma barreira te feriu gravemente!"
				world<<output("[usr] foi gravemente ferido por um jutsu de barreira que sugou seu chakra e desmaiou!","output2.sistema")
				usr.health=0
				usr.chakra=0
				usr.Death(usr)
				//usr.SalvarAgora()