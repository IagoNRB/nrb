/*mob
	proc
		Levelup()
			if(src.exp >= src.mexp)
				src.level += 1
				src << "<font color = red>Você passou de level!"
				src.exp = 0
				src.mexp = round(src.level*100)
				//Ranking(src)
				if(src.level>=100)if(src.client)add_score("[src.name]", "[src.key]", get_date(), src.level)
				if(src.level==250)
					world << "\yellow <b><font size=2>[src] é agora um Ninja Rank D!"
					src.bingob="D"
				if(src.level==400)
					world << "\yellow <b><font size=2>[src] é agora um Ninja Rank C!"
					src.bingob="C"
				if(src.level==600)
					world << "\yellow <b><font size=2>[src] é agora um Ninja Rank B!"
					src.bingob="B"
				if(src.level==800)
					world << "\yellow <b><font size=2>[src] é agora um Ninja Rank A!"
					src.bingob="A"
				if(src.level==1000)
					world << "\yellow <b><font size=2>[src] é agora um Ninja Rank S!"
					src.bingob="S"*/

mob/var/veterano=0



mob/var/mexpantiga=0
mob
	proc
		Levelup()
			if(src.level == 1000)
				src<<"Você já chegou ao level máximo."
				src.icon_state=null
				src.Frozen=0
				src.cast=0
				if(src.libering==1)
					src<<"Você parou de Liberar Chakra!"
					src.libering=0
					src.cannin=1
					spawn(100)
						src.cannin=0
				if(src.vlibering==1)
					src<<"Você parou de Liberar Chakra!"
					src.vlibering=0
					src.vcannin=1
					spawn(100)
						src.vcannin=0
				if(src.concing==1)
					src<<"Você parou de Concentrar!"
					src.concing=0
					src.cangen=1
					spawn(100)
						src.cangen=0
				if(src.vconcing==1)
					src<<"Você parou de Concentrar!"
					src.vconcing=0
					src.vcangen=1
					spawn(100)
						src.vcangen=0
				if(src.taitreino==1)
					src<<"Você parou de Treinar Taijutsu!"
					src.taitreino=0
					src.cantai=1
					spawn(100)
						src.cantai=0
				if(src.vtaitreino==1)
					src<<"Você parou de Treinar Taijutsu!"
					src.vtaitreino=0
					src.canvtai=1
					spawn(100)
						src.canvtai=0
				if(src.armastreino==1)
					src<<"Você parou de Treinar Armas!"
					src.armastreino=0
					src.canarmas=1
					spawn(100)
						src.canarmas=0
				if(src.varmastreino==1)
					src<<"Você parou de Treinar Armas!"
					src.varmastreino=0
					src.vcanarmas=1
					spawn(100)
						src.vcanarmas=0
				if(src.LogSecretotaitrain==1)
					src<<"Você parou de Treinar Taijutsu!"
					src.LogSecretotaitrain=0
					src.canLogSecretotaitrain=1
					spawn(100)
						src.canLogSecretotaitrain=0
				if(src.LogSecretonintrain==1)
					src<<"Você parou de Treinar Ninjutsu!"
					src.LogSecretonintrain=0
					src.canLogSecretonintrain=1
					spawn(100)
						src.canLogSecretonintrain=0
				if(src.LogSecretogentrain==1)
					src<<"Você parou de Treinar Genjutsu!"
					src.LogSecretogentrain=0
					src.canLogSecretogentrain=1
					spawn(100)
						src.canLogSecretogentrain=0
				if(src.LogSecretoarmtrain==1)
					src<<"Você parou de Treinar Armas!"
					src.LogSecretoarmtrain=0
					src.canLogSecretoarmtrain=1
					spawn(100)
						src.canLogSecretoarmtrain=0
				if(src.log10taitrain==1)
					src<<"Você parou de Treinar Taijutsu!"
					src.log10taitrain=0
					src.canlog10taitrain=1
					spawn(100)
						src.canlog10taitrain=0
				if(src.log10nintrain==1)
					src<<"Você parou de Treinar Ninjutsu!"
					src.log10nintrain=0
					src.canlog10nintrain=1
					spawn(100)
						src.canlog10nintrain=0
				if(src.log10gentrain==1)
					src<<"Você parou de Treinar Genjutsu!"
					src.log10gentrain=0
					src.canlog10gentrain=1
					spawn(100)
						src.canlog10gentrain=0
				if(src.log10armtrain==1)
					src<<"Você parou de Treinar Armas!"
					src.log10armtrain=0
					src.canlog10armtrain=1
					spawn(100)
						src.canlog10armtrain=0
				if(src.log4taitrain==1)
					src<<"Você parou de Treinar Taijutsu!"
					src.log4taitrain=0
					src.canlog4taitrain=1
					spawn(100)
						src.canlog4taitrain=0
				if(src.log4nintrain==1)
					src<<"Você parou de Treinar Ninjutsu!"
					src.log4nintrain=0
					src.canlog4nintrain=1
					spawn(100)
						src.canlog4nintrain=0
				if(src.log4gentrain==1)
					src<<"Você parou de Treinar Genjutsu!"
					src.log4gentrain=0
					src.canlog4gentrain=1
					spawn(100)
						src.canlog4gentrain=0
				if(src.log4armtrain==1)
					src<<"Você parou de Treinar Armas!"
					src.log4armtrain=0
					src.canlog4armtrain=1
					spawn(100)
						src.canlog4armtrain=0
				if(src.Log5armtrain==1)
					src<<"Você parou de Treinar tudo!"
					src.Log5armtrain=0
					src.canLog5armtrain=1
					spawn(100)
						src.canLog5armtrain=0
				if(src.Log11armtrain==1)
					src<<"Você parou de Treinar tudo!"
					src.Log11armtrain=0
					src.canLog11armtrain=1
					spawn(100)
						src.canLog11armtrain=0
				if(src.Log100armtrain==1)
					src<<"Você parou de Treinar tudo!"
					src.Log100armtrain=0
					src.canLog100armtrain=1
					spawn(100)
						src.canLog100armtrain=0
				if(src.climbing)
					src<<"Você parou de Treinar seu HP."
					src.climbing=0
					src.Frozen=0
					src.froze=0
					src.move=1
					src.canMontanhaHP=1
					src.cast=1
					src.verbs -= /mob/cliff/verb/TreinarHP
					src.loc=locate(x,velhay,z)
					src.Mountain=0
					spawn(600)
						src.canMontanhaHP=0
						src.cast=0
						src<<"Já pode treinar novamente!"
				return
			if(src.rank == "Estudante"||src.rank == "Genin")
				if(src.level >=325)
					src<<"Você já chegou ao level máximo como Genin."
					src.icon_state=null
					src.Frozen=0
					src.cast=0
					if(src.libering==1)
						src<<"Você parou de Liberar Chakra!"
						src.libering=0
						src.cannin=1
						src.cast=1
						spawn(100)
							src.cannin=0
							src.cast=0
					if(src.vlibering==1)
						src<<"Você parou de Liberar Chakra!"
						src.vlibering=0
						src.vcannin=1
						spawn(100)
							src.vcannin=0
					if(src.concing==1)
						src<<"Você parou de Concentrar!"
						src.concing=0
						src.cangen=1
						spawn(100)
							src.cangen=0
					if(src.vconcing==1)
						src<<"Você parou de Concentrar!"
						src.vconcing=0
						src.vcangen=1
						spawn(100)
							src.vcangen=0
					if(src.taitreino==1)
						src<<"Você parou de Treinar Taijutsu!"
						src.taitreino=0
						src.cantai=1
						spawn(100)
							src.cantai=0
					if(src.vtaitreino==1)
						src<<"Você parou de Treinar Taijutsu!"
						src.vtaitreino=0
						src.canvtai=1
						spawn(100)
							src.canvtai=0
					if(src.armastreino==1)
						src<<"Você parou de Treinar Armas!"
						src.armastreino=0
						src.canarmas=1
						spawn(100)
							src.canarmas=0
					if(src.varmastreino==1)
						src<<"Você parou de Treinar Armas!"
						src.varmastreino=0
						src.vcanarmas=1
						spawn(100)
							src.vcanarmas=0
					if(src.LogSecretotaitrain==1)
						src<<"Você parou de Treinar Taijutsu!"
						src.LogSecretotaitrain=0
						src.canLogSecretotaitrain=1
						spawn(100)
							src.canLogSecretotaitrain=0
					if(src.LogSecretonintrain==1)
						src<<"Você parou de Treinar Ninjutsu!"
						src.LogSecretonintrain=0
						src.canLogSecretonintrain=1
						spawn(100)
							src.canLogSecretonintrain=0
					if(src.LogSecretogentrain==1)
						src<<"Você parou de Treinar Genjutsu!"
						src.LogSecretogentrain=0
						src.canLogSecretogentrain=1
						spawn(100)
							src.canLogSecretogentrain=0
					if(src.LogSecretoarmtrain==1)
						src<<"Você parou de Treinar Armas!"
						src.LogSecretoarmtrain=0
						src.canLogSecretoarmtrain=1
						spawn(100)
							src.canLogSecretoarmtrain=0
					if(src.log10taitrain==1)
						src<<"Você parou de Treinar Taijutsu!"
						src.log10taitrain=0
						src.canlog10taitrain=1
						spawn(100)
							src.canlog10taitrain=0
					if(src.log10nintrain==1)
						src<<"Você parou de Treinar Ninjutsu!"
						src.log10nintrain=0
						src.canlog10nintrain=1
						spawn(100)
							src.canlog10nintrain=0
					if(src.log10gentrain==1)
						src<<"Você parou de Treinar Genjutsu!"
						src.log10gentrain=0
						src.canlog10gentrain=1
						spawn(100)
							src.canlog10gentrain=0
					if(src.log10armtrain==1)
						src<<"Você parou de Treinar Armas!"
						src.log10armtrain=0
						src.canlog10armtrain=1
						spawn(100)
							src.canlog10armtrain=0
					if(src.log4taitrain==1)
						src<<"Você parou de Treinar Taijutsu!"
						src.log4taitrain=0
						src.canlog4taitrain=1
						spawn(100)
							src.canlog4taitrain=0
					if(src.log4nintrain==1)
						src<<"Você parou de Treinar Ninjutsu!"
						src.log4nintrain=0
						src.canlog4nintrain=1
						spawn(100)
							src.canlog4nintrain=0
					if(src.log4gentrain==1)
						src<<"Você parou de Treinar Genjutsu!"
						src.log4gentrain=0
						src.canlog4gentrain=1
						spawn(100)
							src.canlog4gentrain=0
					if(src.log4armtrain==1)
						src<<"Você parou de Treinar Armas!"
						src.log4armtrain=0
						src.canlog4armtrain=1
						spawn(100)
							src.canlog4armtrain=0
					if(src.Log5armtrain==1)
						src<<"Você parou de Treinar tudo!"
						src.Log5armtrain=0
						src.canLog5armtrain=1
						spawn(100)
							src.canLog5armtrain=0
					if(src.Log11armtrain==1)
						src<<"Você parou de Treinar tudo!"
						src.Log11armtrain=0
						src.canLog11armtrain=1
						spawn(100)
							src.canLog11armtrain=0
					if(src.Log100armtrain==1)
						src<<"Você parou de Treinar tudo!"
						src.Log100armtrain=0
						src.canLog100armtrain=1
						spawn(100)
							src.canLog100armtrain=0
					if(src.climbing)
						src<<"Você parou de Treinar seu HP."
						src.climbing=0
						src.Frozen=0
						src.froze=0
						src.move=1
						src.canMontanhaHP=1
						src.cast=1
						src.verbs -= /mob/cliff/verb/TreinarHP
						src.loc=locate(x,velhay,z)
						src.Mountain=0
						spawn(600)
							src.canMontanhaHP=0
							src.cast=0
							src<<"Já pode treinar novamente!"
					return
			if(src.rank == "Chuunin")
				if(src.level >=450)
					src<<"Você já chegou ao level máximo como Chuunin."
					src.icon_state=null
					src.Frozen=0
					src.cast=0
					if(src.libering==1)
						src<<"Você parou de Liberar Chakra!"
						src.libering=0
						src.cannin=1
						spawn(100)
							src.cannin=0
					if(src.vlibering==1)
						src<<"Você parou de Liberar Chakra!"
						src.vlibering=0
						src.vcannin=1
						spawn(100)
							src.vcannin=0
					if(src.concing==1)
						src<<"Você parou de Concentrar!"
						src.concing=0
						src.cangen=1
						spawn(100)
							src.cangen=0
					if(src.vconcing==1)
						src<<"Você parou de Concentrar!"
						src.vconcing=0
						src.vcangen=1
						spawn(100)
							src.vcangen=0
					if(src.taitreino==1)
						src<<"Você parou de Treinar Taijutsu!"
						src.taitreino=0
						src.cantai=1
						spawn(100)
							src.cantai=0
					if(src.vtaitreino==1)
						src<<"Você parou de Treinar Taijutsu!"
						src.vtaitreino=0
						src.canvtai=1
						spawn(100)
							src.canvtai=0
					if(src.armastreino==1)
						src<<"Você parou de Treinar Armas!"
						src.armastreino=0
						src.canarmas=1
						spawn(100)
							src.canarmas=0
					if(src.varmastreino==1)
						src<<"Você parou de Treinar Armas!"
						src.varmastreino=0
						src.vcanarmas=1
						spawn(100)
							src.vcanarmas=0
					if(src.LogSecretotaitrain==1)
						src<<"Você parou de Treinar Taijutsu!"
						src.LogSecretotaitrain=0
						src.canLogSecretotaitrain=1
						spawn(100)
							src.canLogSecretotaitrain=0
					if(src.LogSecretonintrain==1)
						src<<"Você parou de Treinar Ninjutsu!"
						src.LogSecretonintrain=0
						src.canLogSecretonintrain=1
						spawn(100)
							src.canLogSecretonintrain=0
					if(src.LogSecretogentrain==1)
						src<<"Você parou de Treinar Genjutsu!"
						src.LogSecretogentrain=0
						src.canLogSecretogentrain=1
						spawn(100)
							src.canLogSecretogentrain=0
					if(src.LogSecretoarmtrain==1)
						src<<"Você parou de Treinar Armas!"
						src.LogSecretoarmtrain=0
						src.canLogSecretoarmtrain=1
						spawn(100)
							src.canLogSecretoarmtrain=0
					if(src.log10taitrain==1)
						src<<"Você parou de Treinar Taijutsu!"
						src.log10taitrain=0
						src.canlog10taitrain=1
						spawn(100)
							src.canlog10taitrain=0
					if(src.log10nintrain==1)
						src<<"Você parou de Treinar Ninjutsu!"
						src.log10nintrain=0
						src.canlog10nintrain=1
						spawn(100)
							src.canlog10nintrain=0
					if(src.log10gentrain==1)
						src<<"Você parou de Treinar Genjutsu!"
						src.log10gentrain=0
						src.canlog10gentrain=1
						spawn(100)
							src.canlog10gentrain=0
					if(src.log10armtrain==1)
						src<<"Você parou de Treinar Armas!"
						src.log10armtrain=0
						src.canlog10armtrain=1
						spawn(100)
							src.canlog10armtrain=0
					if(src.log4taitrain==1)
						src<<"Você parou de Treinar Taijutsu!"
						src.log4taitrain=0
						src.canlog4taitrain=1
						spawn(100)
							src.canlog4taitrain=0
					if(src.log4nintrain==1)
						src<<"Você parou de Treinar Ninjutsu!"
						src.log4nintrain=0
						src.canlog4nintrain=1
						spawn(100)
							src.canlog4nintrain=0
					if(src.log4gentrain==1)
						src<<"Você parou de Treinar Genjutsu!"
						src.log4gentrain=0
						src.canlog4gentrain=1
						spawn(100)
							src.canlog4gentrain=0
					if(src.log4armtrain==1)
						src<<"Você parou de Treinar Armas!"
						src.log4armtrain=0
						src.canlog4armtrain=1
						spawn(100)
							src.canlog4armtrain=0
					if(src.Log5armtrain==1)
						src<<"Você parou de Treinar tudo!"
						src.Log5armtrain=0
						src.canLog5armtrain=1
						spawn(100)
							src.canLog5armtrain=0
					if(src.Log11armtrain==1)
						src<<"Você parou de Treinar tudo!"
						src.Log11armtrain=0
						src.canLog11armtrain=1
						spawn(100)
							src.canLog11armtrain=0
					if(src.Log100armtrain==1)
						src<<"Você parou de Treinar tudo!"
						src.Log100armtrain=0
						src.canLog100armtrain=1
						spawn(100)
							src.canLog100armtrain=0
					if(src.climbing)
						src<<"Você parou de Treinar seu HP."
						src.climbing=0
						src.Frozen=0
						src.froze=0
						src.move=1
						src.canMontanhaHP=1
						src.cast=1
						src.verbs -= /mob/cliff/verb/TreinarHP
						src.loc=locate(x,velhay,z)
						src.Mountain=0
						spawn(600)
							src.canMontanhaHP=0
							src.cast=0
							src<<"Já pode treinar novamente!"
					return
			if(src.exp < src.mexp)
				src.mexpantiga = src.mexp
				return
			if(src.exp >= src.mexp)
				src.level += 1
				src << output("<font color = red>Você passou de level!","output2.sistema")
				src.mexp = src.level*601 + src.mexpantiga
				if(src.level>=1)if(src.client)add_score("[src.name]", "[src.key]", get_date(), src.level)
				if(src.level==150)
					world <<output( "\yellow <b><font size=2>[src] é agora um Ninja Rank D!","output2.sistema")
					/*if(src.ticketlog10>=1)
						src.ticketlog10 = 0
						src.SalvarAgora()
						if(src.log10taitrain||src.log10armtrain||src.log10nintrain||src.log10gentrain)
							src.log10taitrain=0
							src.log10armtrain=0
							src.log10nintrain=0
							src.log10gentrain=0
							src.SalvarAgora()
							world<<"[src] foi kikado por não ter parado de upar no Log 10 ao chegar no Level 150!"
							del(src)*/
					src.bingob="D"
				if(src.level==250)
					world << output("\yellow <b><font size=2>[src] é agora um Ninja Rank C!","output2.sistema")
					src.bingob="C"
					/*if(src.log10taitrain||src.log10gentrain||src.log10nintrain||src.log10armtrain)
						world << "[src] foi kickado automaticamente do servidor pois tentou upar no Log 10 acima do level autorizado!"
						src << "Você foi kickado automaticamente do servidor pois tentou upar no Log 10 acima do level autorizado!"
						src.SalvarAgora()
						del(src)*/
				if(src.level==350&&usr.seals>=100)
					world << output("\yellow <b><font size=2>[src] é agora um Ninja Rank B!","output2.sistema")
					src.bingob="B"
				if(src.level==600&&usr.seals>=100)
					world << output("\cyan <b><font size=2>[src] é agora um Ninja Rank A!","output2.sistema")
					src.bingob="A"
				if(src.level==800&&usr.seals>=100)
					world << output("\white <b><font size=2>[src] é agora um Ninja Rank S!","output2.sistema")
					src.bingob="S"
				if(src.level==1000)
					world << output("\red <b><font size == 3> [src] chegou ao level máximo! Parabéns!!!","output2.sistema")


mob/ADM/verb
	VerExp()
		set name = "Ver Experiencia"
		set category = "ADM"
		var/lvlinicial = 0
		var/lvl = input("Qual level?","Level") as num
		var/expantiga = 0
		var/exp = 0
		var/tempo = 0
		var/exptempo = 0
		var/stats = 1
		var/hp = 500
		while(lvlinicial < lvl)
			lvlinicial = lvlinicial + 1
			exp = (lvlinicial*125) + expantiga
			expantiga = exp
			while(exptempo < exp)
				tempo = tempo + 1
				exptempo = exptempo + 125
				hp = hp + 8
				stats = stats + 5
			usr<<"Level [lvlinicial] - XP: [exp] | HP: [hp] | Stats:[stats]"
		world<<"<font color=red>a exp é: [exp]"
		usr<<"<font color=green>Tempo estimado é de : [tempo/1440] dias"
		usr<<"<font color=blue>Up de stats estimado é de : [stats]"
		usr<<"<font color=yellow>Up de HP estimado é de : [hp]"
mob
	proc
		makeHunter()
			if(src.hunternin)return
			if(src.rank=="Jounin"&&src.bmission>=60&&src.missingkills>=50)
				src.esquadrao ="Oinins"
				src.squads=1
				world<<"<font face=tahoma><b>[src]</b> agora é um <b>Oinin!</b>"
				if(src.Village=="Konoha")
					src.ChakraC=100
					src.verbs+= new /mob/jutsu/verb/JourouSenbon
					var/obj/HSuit/B = new/obj/HSuit
					var/obj/Ranbu/R = new/obj/Ranbu
					B.loc=src
					R.loc=src
					src.rank="Oinin"
					src.hunternin=1
				if(src.Village=="Hoshi")
					src.ChakraC=100
					src.verbs+= new /mob/jutsu/verb/JourouSenbon
					var/obj/HSuit/B = new/obj/HSuit
					var/obj/Anbu/R = new/obj/Anbu
					B.loc=src
					R.loc=src
					src.rank="Oinin"
					src.hunternin=1
				if(src.Village =="Suna")
					src.ChakraC=100
					src.verbs+= new /mob/jutsu/verb/JourouSenbon
					src.rank="Oinin"
					src.hunternin=1
					var/obj/Sanbu/R = new/obj/Sanbu
					var/obj/HSuit/S = new/obj/HSuit
					S.loc = src
					R.loc = src
				if(src.Village =="Oto")
					src.ChakraC=100
					src.verbs+= new /mob/jutsu/verb/JourouSenbon
					src.rank="Oinin"
					src.hunternin=1
					var/obj/Danbu/R = new/obj/Danbu
					var/obj/HSuit/S = new/obj/HSuit
					S.loc = src
					R.loc = src
				if(src.Village =="Kusa")
					src.ChakraC=100
					src.verbs+= new /mob/jutsu/verb/JourouSenbon
					src.rank="Oinin"
					src.hunternin=1
					var/obj/Ganbu/R = new/obj/Ganbu
					var/obj/HSuit/S = new/obj/HSuit
					S.loc = src
					R.loc = src
				if(src.Village =="Ame")
					src.ChakraC=100
					src.verbs+= new /mob/jutsu/verb/JourouSenbon
					src.rank="Oinin"
					src.hunternin=1
					var/obj/Banbu/R = new/obj/Banbu
					var/obj/HSuit/S = new/obj/HSuit
					S.loc = src
					R.loc = src
				if(src.Village =="Kumo")
					src.ChakraC=100
					src.verbs+= new /mob/jutsu/verb/JourouSenbon
					src.rank="Oinin"
					src.hunternin=1
					var/obj/Yanbu/R = new/obj/Yanbu
					var/obj/HSuit/S = new/obj/HSuit
					S.loc = src
					R.loc = src
				if(src.Village =="Kiri")
					src.ChakraC=100
					src.verbs+= new /mob/jutsu/verb/JourouSenbon
					src.rank="Oinin"
					src.hunternin=1
					var/obj/Banbu/R = new/obj/Banbu
					var/obj/HSuit/S = new/obj/HSuit
					S.loc = src
					R.loc = src
				if(src.Village =="Iwa")
					src.ChakraC=100
					src.verbs+= new /mob/jutsu/verb/JourouSenbon
					src.rank="Oinin"
					src.hunternin=1
					var/obj/Eanbu/R = new/obj/Eanbu
					var/obj/HSuit/S = new/obj/HSuit
					S.loc = src
					R.loc = src
				if(src.Village =="Yuki")
					src.ChakraC=100
					src.verbs+= new /mob/jutsu/verb/JourouSenbon
					src.rank="Oinin"
					src.hunternin=1
					var/obj/Panbu/R = new/obj/Panbu
					var/obj/HSuit/S = new/obj/HSuit
					S.loc = src
					R.loc = src
				if(src.Village =="Taki")
					src.ChakraC=100
					src.verbs+= new /mob/jutsu/verb/JourouSenbon
					src.rank="Oinin"
					src.hunternin=1
					var/obj/Banbu/R = new/obj/Banbu
					var/obj/HSuit/S = new/obj/HSuit
					S.loc = src
					R.loc = src

mob
	proc
		makeJounin()
			if(src.hunternin)return
			if(src.seals>=100)return
			if(src.rank=="Chuunin"&&src.seals<100)
				if(src.dmission>=200&&src.cmission>=125&&src.bmission>=45&&src.honra>=2000)
					world<<output("[src] agora e um Jounin","output2.sistema")
					src.seals=100
					src.rank="Jounin"
					src.jounin=1
					if(src.estilostamina&&!src.boostjounin)
						src.maxhealth += src.maxhealth/15
						src.boostjounin=1
					if(src.estilochakra&&!src.boostjounin)
						src.Mchakra += src.Mchakra/15
						src.boostjounin=1
					if(src.estiloforca&&!src.boostjounin)
						src.Mtai += src.Mtai/15
						src.boostjounin=1
					if(src.Village=="Konoha")
						var/obj/Jouninsuit/R = new/obj/Jouninsuit
						R.loc=src
					if(src.Village =="Suna")
						var/obj/JouninSuna/S = new/obj/JouninSuna
						S.loc = src
					if(src.Village =="Oto")
						var/obj/Jouninsuit/S = new/obj/Jouninsuit
						S.loc = src
					if(src.Village =="Ame")
						var/obj/JouninAme/S = new/obj/JouninAme
						S.loc = src
					if(src.Village =="Kumo")
						var/obj/JouninKumo/S = new/obj/JouninKumo
						S.loc = src
					if(src.Village =="Kiri")
						var/obj/JouninKiri/S = new/obj/JouninKiri
						S.loc = src
					if(src.Village =="Iwa")
						var/obj/JouninIwa/S = new/obj/JouninIwa
						S.loc = src


var
	Chuunintime
	Chuuninfloresta
	Jounintime
	Chuuninexam
mob/var
	tmp/finals=0
	jounin=0
	missingnin=0
	hunternin=0


mob/var/sefodeulegal=0
mob/var/tmp
	testing=0
	cantest=1
var
	Bmission=1
obj/GT2
	chuunintest
	name = "Chuunin Test"
	icon = 'Test.dmi'
	verb
		TakeTest()
			set name = "Fazer Exame"
			set src in oview(1)
			if(usr.sefodeulegal)
				usr<<"Você Falhou no teste. Retardado"
				return
			if(Chuunintime&&usr.cantest&&Chuuninfloresta||ChuunintimeS&&usr.cantest&&ChuuninflorestaS)
				usr.cantest=1
				usr.testing=1
				switch(input("Se você atira uma shuriken, em que sentido ela gira?") in list("Horário","Anti-horário","Depende","Ela não gira"))
					if("Depende")
						usr.points += 1
					else
						usr.points += 0
				switch(input("Em que lugar Kushina e Minato se inspiraram para dar ao filho o nome Naruto?") in list("Em um Livro","Em um filme","Em um amigo","Nenhum dos anteriores"))
					if("Em um Livro")
						usr.points += 1
					else
						usr.points += 0
				switch(input("Qual a idade aproximada de Kakuzu quando ele morreu?") in list("30-40","50-60","80-90","90-100"))
					if("90-100")
						usr.points += 1
					else
						usr.points += 0
				switch(input("De que país é a mãe de naruto?") in list("País do fogo","País do redemoinho","País do chá","País do arroz","País da nuvem"))
					if("País do redemoinho")
						usr.points += 1
					else
						usr.points += 0
				switch(input("Quantos hokages estão vivos?") in list("Um","Cinco","Nove","Sete"))
					if("Um")
						usr.points += 1
					else
						usr.points += 0
				switch(input("Quem e considerado tesoureiro da Akatsuki?") in list("Deidara","Tobi","Pain","Kakuzu","Konan"))
					if("Kakuzu")
						usr.points += 1
					else
						usr.points += 0
				switch(input("O que significa a expressao Kunoichi?") in list("Ninja cozinheiro","Mulher ninja","Ninja mensageiro","Ninja que caça Nukenins","Jounin"))
					if("Mulher ninja")
						usr.points += 1
					else
						usr.points += 0
				switch(input("Quem guarda a chave do jutsu de selamento da Kyuubi?") in list("Namikaze","Madara","Naruto","Gerotora","Tsunade"))
					if("Gerotora")
						usr.points += 1
					else
						usr.points += 0
				switch(input("Quem e Mitokadu Homura?") in list("Shinobi de Ame","Renegado de Kiri","Conselheiro de Konoha","Nenhuma das alternativas"))
					if("Conselheiro de Konoha")
						usr.points += 1
					else
						usr.points += 0
				switch(input("Quem foi o Shodaime Hokage?") in list("Tobirama","Minato","Hiruzen","Nenhum dos Anteriores"))
					if("Nenhum dos Anteriores")
						usr.points+= 1
					else
						usr.points += 0
				switch(input("Qual o nome do Jutsu Criado por Naruto?") in list("Raiton Raibashi","Fuuton Nagashi","Kuchyose:FRS","Nenhum dos Anteriores"))
					if("Nenhum dos Anteriores")
						usr.points += 1
					else
						usr.points += 0
				switch(input("Quem Ressucitou os 4 Hokages na Última Guerra Ninja") in list("Kabuto","Madara","Orochimaru","Nenhuma das alternativas"))
					if("Orochimaru")
						usr.points += 1
					else
						usr.points += 0
				switch(input("Oque aconteceu com Kabuto?") in list("Preso em um Genjutsu","Morto","Selado","Nenhuma das alternativas"))
					if("Preso em um Genjutsu")
						usr.points += 1
					else
						usr.points += 0
				switch(input("Qual o Nome Verdadeiro do Yonbi?") in list("Son Goku","Kurozarake","Kagami","Kurama"))
					if("Son Goku")
						usr.points += 1
					else
						usr.points += 0
				switch(input("Oque aconteceu com Tsunade?") in list("Fugiu","Perdeu os Braços","Perdeu as Pernas","Desistiu da Guerra"))
					if("Perdeu as Pernas")
						usr.points += 1
					else
						usr.points += 0
				switch(input("Qual o Nome da Nova Serpente do Sasuke") in list("Mandu","Manda","Aoha","Aoda"))
					if("Aoda")
						usr.points += 1
					else
						usr.points += 0
				switch(input("Quem e o Novo Possuidor do FMS?") in list("Sasuke","Itachi","Kakashi","Ninguém"))
					if("Sasuke")
						usr.points += 1
					else
						usr.points += 0
				switch(input("O que é Elemento Shouton?") in list("Gelo","Ácido","Cristal","Poeira"))
					if("Cristal")
						usr.points += 1
					else
						usr.points += 0
				switch(input("Quem Possui o Elemento Youton?") in list("Tsuchikage","Mizukage","Kazekage","Hokage"))
					if("Mizukage")
						usr.points += 1
					else
						usr.points += 0
				switch(input("Quem morreu para salvar uma Ninja?") in list("Itachi","Neji","Ino","Chouji"))
					if("Neji")
						usr.points += 1
					else
						usr.points += 0
				switch(input("Quem Foi Assassinado pela Juubi?") in list("Pais de Ino e Shikamaru","Pai do Neji","Konohamaru","Iruka salvando Naruto"))
					if("Pais de Ino e Shikamaru")
						usr.points += 1
					else
						usr.points += 0
				switch(input("Quem é o Novo Jinchuuriki do Juubi?") in list("Orochimaru","Madara","Naruto","Sasuke"))
					if("Madara")
						usr.points += 1
					else
						usr.points += 0
				if(usr.points>=21)
					if(Chuunintime&&Chuuninfloresta)
						//usr.testefeito=1
						//alert("Você passou no Exame Chuunin, espere até a próxima fase começar!")
						usr.testing=0
						usr.cantest=0
						usr.random=rand(1,2)
						if(usr.random==1)
							usr.heavenscroll=1
							var/obj/objetos/heavenscroll/B = new/obj/objetos/heavenscroll
							B.loc = usr
							usr<<"Você ganhou o Pergaminha do Céu."
							usr<<"Você passou na primeira parte do exame. Boa sorte na floresta da morte."
							usr<<"Há 16 portões e 1 torre no meio do segundo mapa. Suba para o norte para chegar ao segundo mapa.Você deve matar alguém que tenha o pergaminho que você precise e então correr para Torre"
							usr<<"Mesmo que você tenha os 2 pergaminhos e morrer antes de chegar a torre, você PERDE!"
						if(usr.random==2)
							usr.earthscroll=1
							var/obj/objetos/earthscroll/B = new/obj/objetos/earthscroll
							B.loc = usr
							usr<<"Você ganhou o Pergaminho da Terra."
							usr<<"Você passou na primeira parte do exame. Boa sorte na floresta da morte."
							usr<<"Há 16 portões e 1 torre no meio do segundo mapa. Suba para o norte para chegar ao segundo mapa. Você deve matar alguém que tenha o pergaminho que você precise e então correr para Torre"
							usr<<"Mesmo que você tenha os 2 pergaminhos e morrer antes de chegar a torre, você PERDE!"
						world<<"\red <b>Chuunin Info:</b>\white <b>[usr]</b> Passou para a Floresta da Morte!"
						usr.PK=1
						usr.froze=0
						usr.move=1
						usr.csfloresta=1
						usr.random=rand(1,16)
						if(usr.random==1)
							usr.loc=locate(52,100,3)
							return
						if(usr.random==2)
							usr.loc=locate(78,100,3)
							return
						if(usr.random==3)
							usr.loc=locate(25,100,3)
							return
						if(usr.random==4)
							usr.loc=locate(100,100,3)
							return
						if(usr.random==5)
							usr.loc=locate(100,80,3)
							return
						if(usr.random==6)
							usr.loc=locate(100,52,3)
							return
						if(usr.random==7)
							usr.loc=locate(100,28,3)
							return
						if(usr.random==8)
							usr.loc=locate(100,1,3)
							return
						if(usr.random==9)
							usr.loc=locate(81,1,3)
							return
						if(usr.random==10)
							usr.loc=locate(53,1,3)
							return
						if(usr.random==11)
							usr.loc=locate(24,1,3)
							return
						if(usr.random==12)
							usr.loc=locate(1,1,3)
							return
						if(usr.random==13)
							usr.loc=locate(1,26,3)
							return
						if(usr.random==14)
							usr.loc=locate(1,51,3)
							return
						if(usr.random==15)
							usr.loc=locate(1,79,3)
							return
						if(usr.random==16)
							usr.loc=locate(1,100,3)
							return
					/*else
						usr<<"A parte do Exame Chuunin acabou!"
						usr.sefodeulegal=1
						usr.testing=0
						return*/
					else if(ChuunintimeS&&ChuuninflorestaS)
						//usr.testefeito=1
						//alert("Você passou no Exame Chuunin, espere até a próxima fase começar!")
						usr.testing=0
						usr.cantest=0
						usr.random=rand(1,2)
						if(usr.random==1)
							usr.heavenscroll=1
							var/obj/objetos/heavenscroll/B = new/obj/objetos/heavenscroll
							B.loc = usr
							usr<<"Você ganhou o Pergaminha do Céu."
							usr<<"Você passou na primeira parte do exame. Boa sorte no Deserto da morte."
							usr<<"Há 16 portões e 1 torre no meio do segundo mapa. Suba para o norte para chegar ao segundo mapa.Você deve matar alguém que tenha o pergaminho que você precise e então correr para Torre"
							usr<<"Mesmo que você tenha os 2 pergaminhos e morrer antes de chegar a torre, você PERDE!"
						if(usr.random==2)
							usr.earthscroll=1
							var/obj/objetos/earthscroll/B = new/obj/objetos/earthscroll
							B.loc = usr
							usr<<"Você ganhou o Pergaminho da Terra."
							usr<<"Você passou na primeira parte do exame. Boa sorte no Deserto da morte."
							usr<<"Há 16 portões e 1 torre no meio do segundo mapa. Suba para o norte para chegar ao segundo mapa. Você deve matar alguém que tenha o pergaminho que você precise e então correr para Torre"
							usr<<"Mesmo que você tenha os 2 pergaminhos e morrer antes de chegar a torre, você PERDE!"
						world<<"\red <b>Chuunin Info:</b>\white <b>[usr]</b> Passou para o Deserto da Morte!"
						usr.PK=1
						usr.froze=0
						usr.move=1
						usr.csdeserto=1
						usr.random=rand(1,16)
						if(usr.random==1)
							usr.loc=locate(202,1,3)
							return
						if(usr.random==2)
							usr.loc=locate(223,1,3)
							return
						if(usr.random==3)
							usr.loc=locate(253,1,3)
							return
						if(usr.random==4)
							usr.loc=locate(280,1,3)
							return
						if(usr.random==5)
							usr.loc=locate(298,1,3)
							return
						if(usr.random==6)
							usr.loc=locate(201,26,3)
							return
						if(usr.random==7)
							usr.loc=locate(201,51,3)
							return
						if(usr.random==8)
							usr.loc=locate(201,79,3)
							return
						if(usr.random==9)
							usr.loc=locate(201,99,3)
							return
						if(usr.random==10)
							usr.loc=locate(224,100,3)
							return
						if(usr.random==11)
							usr.loc=locate(252,100,3)
							return
						if(usr.random==12)
							usr.loc=locate(277,100,3)
							return
						if(usr.random==13)
							usr.loc=locate(297,100,3)
							return
						if(usr.random==14)
							usr.loc=locate(298,80,3)
							return
						if(usr.random==15)
							usr.loc=locate(298,52,3)
							return
						if(usr.random==16)
							usr.loc=locate(298,28,3)
							return
					/*else
						usr<<"A parte do Exame Chuunin acabou!"
						usr.sefodeulegal=1
						usr.testing=0
						return*/
				else
					usr<<"Você falhou. Tente novamente!"
					usr.sefodeulegal=0
					usr.testing=0
					usr.cantest=1
					return
			else
				usr<<"Não está tendo CS ainda!"



proc/florestamorte(mob/x)
	x.random=rand(1,2)
	if(x.random==1)
		x.heavenscroll=1
		var/obj/objetos/heavenscroll/B = new/obj/objetos/heavenscroll
		B.loc = x
		x<<"Você ganhou o Pergaminho do Céu."
		x<<"Você passou na primeira parte do exame. Boa sorte na floresta da morte."
		x<<"Há 16 portões e 1 torre no meio do segundo mapa. Suba para o norte para chegar ao segundo mapa.Você deve matar alguém que tenha o pergaminho que você precise e então correr para Torre"
		x<<"Mesmo que você tenha os 2 pergaminhos e morrer antes de chegar a torre, você PERDE!"
	if(x.random==2)
		x.earthscroll=1
		var/obj/objetos/earthscroll/B = new/obj/objetos/earthscroll
		B.loc = x
		x<<"Você ganhou o Pergaminho da Terra."
		x<<"Você passou na primeira parte do exame. Boa sorte na floresta da morte."
		x<<"Há 16 portões e 1 torre no meio do segundo mapa. Suba para o norte para chegar ao segundo mapa. Você deve matar alguém que tenha o pergaminho que você precise e então correr para Torre"
		x<<"Mesmo que você tenha os 2 pergaminhos e morrer antes de chegar a torre, você PERDE!"
	x.PK=1
	x.froze=0
	x.move=1
	x.testefeito=0
	x.deathforest=1
	x.random=rand(1,16)
	if(x.random==1)
		x.loc=locate(52,100,3)
		return
	if(x.random==2)
		x.loc=locate(78,100,3)
		return
	if(x.random==3)
		x.loc=locate(25,100,3)
		return
	if(x.random==4)
		x.loc=locate(100,100,3)
		return
	if(x.random==5)
		x.loc=locate(100,80,3)
		return
	if(x.random==6)
		x.loc=locate(100,52,3)
		return
	if(x.random==7)
		x.loc=locate(100,28,3)
		return
	if(x.random==8)
		x.loc=locate(100,1,3)
		return
	if(x.random==9)
		x.loc=locate(81,1,3)
		return
	if(x.random==10)
		x.loc=locate(53,1,3)
		return
	if(x.random==11)
		x.loc=locate(24,1,3)
		return
	if(x.random==12)
		x.loc=locate(1,1,3)
		return
	if(x.random==13)
		x.loc=locate(1,26,3)
		return
	if(x.random==14)
		x.loc=locate(1,51,3)
		return
	if(x.random==15)
		x.loc=locate(1,79,3)
		return
	if(x.random==16)
		x.loc=locate(1,100,3)
		return

proc/atualizarfloresta()
	while(Chuuninfloresta)
		sleep(1800)
		var/floresta=0
		for(var/mob/m in world)spawn()if(m)if(m.client)if(m.deathforest)if(Chuuninfloresta)floresta++
		if(Chuuninfloresta)world<<"\red <b>Chuunin Info:</b>\white Tem <b>[floresta]</b> shinobis na Floresta da Morte!"

proc/atualizarflorestaS()
	while(ChuuninflorestaS)
		sleep(1800)
		var/DesertoS=0
		for(var/mob/m in world)spawn()if(m)if(m.client)if(m.deathforest)if(ChuuninflorestaS)DesertoS++
		if(ChuuninflorestaS)world<<"\red <b>Chuunin Info:</b>\white Tem <b>[DesertoS]</b> shinobis no Deserto da Morte!"

proc/encerrarfloresta()
	Chuuninfloresta=0
	for(var/mob/M in world)
		spawn()
			if(M)
				if(M.client)
					if(M.z==3&&M.x>0&&M.x<101&&M.y>0&&M.y<102)
						M.deathforest=0
						M.loc=locate(456,174,3)
						return
	spawn()world<<"\red <b>Chuunin Info:</b>\white A Floresta da Morte acabou!"
	spawn(40)world<<"\red <b>Chuunin Info:</b>\white A última fase do Chuunin Shiken começa agora!"


proc/encerrarflorestaS()
	ChuuninflorestaS=0
	for(var/mob/M in world)
		spawn()
			if(M)
				if(M.client)
					if(M.z==3&&M.x>199&&M.x<300&&M.y>0&&M.y<103)
						M.deathforest=0
						M.loc=locate(456,174,3)
						return
	spawn()world<<"\red <b>Chuunin Info:</b>\white A Floresta da Morte acabou!"
	spawn(40)world<<"\red <b>Chuunin Info:</b>\white A última fase do Chuunin Shiken começa agora!"

mob/var/provafeita=0
mob/var/jfalhou=0

obj/GTJ
	jounintest
	name = "Jounin Test"
	icon = 'Test.dmi'
	verb
		TakeTest()
			set name = "Fazer Exame"
			set src in oview(1)
			if(usr.provafeita==1)
				return
			if(usr.jfalhou)
				usr<<"Vc ja falhou nesse exame. Aguarde o proximo"
				return
			if(usr.testing==1)
				usr<<"Vc já está fazendo o teste"
				return
			if(Jounintime&&usr.rank=="Chuunin")
				usr.testing=1
				switch(input("Se um uchiha se casasse com uma hyuuga o filho teria?") in list("Sempre Byakugan","Sempre Sharingan","Um em cada olho","Os dois fundidos","Talvez sharingan,talvez byakugan"))
					if("Um em cada olho")
						usr.points += 1
					else
						usr.points += 0
				switch(input("O que se supoe que seja Uzumakigakure no sato?") in list("Vila oculta fundada por naruto","Vila oculta do redemoinho","N existe tal coisa","Vila oculta onde nasceu o personagem do livro de Jiraya"))
					if("Vila oculta do redemoinho")
						usr.points += 1
					else
						usr.points += 0
				switch(input("O portao que se localiza entre os pulmoes e o...?") in list("2","1","5","3"))
					if("3")
						usr.points += 1
					else
						usr.points += 0
				switch(input("Qual o nome das lâminas que Asuma usa?") in list("Jouhyou","Aian Nakkuru","Kemuridama","Laminas Especiais","Samehada"))
					if("Aian Nakkuru")
						usr.points += 1
					else
						usr.points += 0
				switch(input("Quem eh o Rei?") in list("Lorde Feudal","Kage","Criancas da vila","Trabalhadores da vila"))
					if("Criancas da vila")
						usr.points += 1
					else
						usr.points += 0
				switch(input("O Kage Bunshin no jutsu é um?") in list("Kinjutsu","Ninjutsu","Genjutsu","Senjutsu","Taijutsu"))
					if("Kinjutsu")
						usr.points += 1
					else
						usr.points += 0
				switch(input("O que significa Rinnegan?") in list("Olhos Fantasmas","Olhos profeticos","Olhos espirais","Olhos da dor","Olhos da reencarnacao"))
					if("Olhos da reencarnacao")
						usr.points += 1
					else
						usr.points += 0
				switch(input("Nas lutas do NRB qual a forma conhecida para se quebrar um defesa absoluta?") in list("Jutsus perseguidores","Jutsus de contato","Jutsus de area","N existe"))
					if("Jutsus de area")
						usr.points += 1
					else
						usr.points += 0
				switch(input("Quem foi o primeiro lider da extinta Uchiha Police no NRB?") in list("Dark","Soul Black","Ycezkun","Hiashi"))
					if("Dark")
						usr.points += 1
					else
						usr.points += 0
				switch(input("Quem foi o Nidaime Hoshikage do NRB?") in list("Monde","Moykano","Azarameth","Marcones"))
					if("Moykano")
						usr.points+= 1
					else
						usr.points += 0
				switch(input("Quem foi o Shodaime Raikage do NRB?") in list("Monde","Sky","Near","Marcones","SparkTHZ"))
					if("SparkTHZ")
						usr.points += 1
					else
						usr.points += 0
				if(usr.points>=10&&Jounintime)
					usr.testing=0
					usr.labirinto=1
					world<<"[usr] passou no exame escrito Jounin"
					usr<<"Vc agora está na última parte do exame. Passe pelo labirinto e n morra...Boa Sorte!!!"
					usr.random=rand(1,4)
					if(usr.random==1)
						usr.loc=locate(62,2,39)
						return
					if(usr.random==2)
						usr.loc=locate(92,2,39)
						return
					if(usr.random==3)
						usr.loc=locate(21,3,39)
						return
					if(usr.random==4)
						usr.loc=locate(99,30,39)
						return

				else
					usr<<"Você falhou. Tente novamente na próxima."
					usr.jfalhou=1
					usr.testing=0
					usr.nocaute=1
					return
			else
				usr<<"Você precisa ser Chuunin para fazer esse exame."
				return



obj/objetos
	earthscroll
		name = "Pergaminho da terra"
		icon = 'Earth.dmi'
		verb
			Pegar()
				set src in oview(1)
				if(usr.earthscroll >= 1)
					usr<<"Você já tem esse pergaminho."
				else
					src.loc = usr
					usr<<"Você pegou um(a) [src]"
					usr.earthscroll = 1
			Destroy()
			 set hidden = 1
			 del(src)
obj/objetos
	heavenscroll
		name = "Pergaminho do céu"
		icon = 'Heaven.dmi'
		verb
			Pegar()
				set src in oview(1)
				if(usr.heavenscroll >= 1)
					usr<<"Você já tem esse pergaminho."
				else
					src.loc = usr
					usr<<"Você pegou um(a) [src]"
					usr.heavenscroll = 1
			Destroy()
			 set hidden = 1
			 del(src)

obj/GT
	Genintest
	name = "Teste Gennin"
	icon = 'teste.dmi'
	verb
		TakeExam()
			set src in oview(1)
			set name = "Teste Gennin"
			if(usr.dir!=NORTH)
				usr<<"Desculpe, você precisa estar virado de frente para a prova"
				return
			if(usr.rank=="Genin"||usr.rank=="Chuunin"||usr.rank=="Jounin"||usr.rank=="Kage"||usr.gsprova)
				usr<<"Parece que você já fez o teste e passou nele..."
				return
			if(usr.Genintest)
				usr<<"Você já está fazendo o teste."
				return
			if(usr.rank=="Estudante")
				usr.cantest=0
				usr.Frozen=1
				usr.Genintest=1
				usr.score=1
				switch(input("Que animal sasuke sumona?") in list("Falcao","Lesmas","Cachorros","Elefantes","Sapos"))
					if("Falcao")
						usr.score += 1
					else
						usr.score += 0
				switch(input("Quantos membro a Akatsuki possui?") in list("9","8","10","11"))
					if("10")
						usr.score += 1
					else
						usr.score += 0
				switch(input("Qual a finalidade do Taijutsu?") in list("Combate mano a mano","Combate a distância","Confundir mentalmente o inimigo","Doujutsu"))
					if("Combate mano a mano")
						usr.score += 1
					else
						usr.score += 0
				switch(input("Qual a finalidade do Ninjutsu?") in list("Combate mano a mano","Combate a distância","Confundir mentalmente o inimigo","Doujutsu"))
					if("Combate a distância")
						usr.score += 1
					else
						usr.score += 0
				switch(input("Qual a finalidade do Genjutsu?") in list("Combate mano a mano","Combate a distância","Confundir mentalmente o inimigo","Doujutsu"))
					if("Confundir mentalmente o inimigo")
						usr.score += 1
					else
						usr.score += 0
				switch(input("Mizu no Kinobiri exige?") in list("Ninjutsu","Pericia com selos","Controle de chakra","Pericia com armas","TaiJutsu"))
					if("Controle de chakra")
						usr.score += 1
					else
						usr.score += 0
				switch(input("Que elemento eh o Hyouton?") in list("Fogo","Gelo","Metal","Madeira","Ar"))
					if("Gelo")
						usr.score += 1
					else
						usr.score += 0
				switch(input("Os dois descendentes do Eremita originaram os clans...") in list("Senju e Hyuuga","Uchiha e Hyuuga","Uzumaki e Senju","Senju e Uchiha","Nenhum"))
					if("Senju e Uchiha")
						usr.score += 1
					else
						usr.score += 0
				switch(input("Que nome se da aos jutsus proibidos?") in list("Senjutsu","Hijutsu","Kinjutsu","Genjusu","Metajutsu"))
					if("Kinjutsu")
						usr.score += 1
					else
						usr.score += 0
				switch(input("A um Uchiha e vantajoso treinar?") in list("Genjutsu","Ninjutsu","TaiJutsu","Controle de chakra","Controle de pesos"))
					if("Genjutsu")
						usr.score += 1
					else
						usr.score += 0
				switch(input("O pai de Kakashi era conhecido como...?") in list("Relâmpago amarelo","Canino branco","Mestre Copiador","Mestre dos caes","Mascarado"))
					if("Canino branco")
						usr.score += 1
						if(usr.score >= 10)
							usr<<"Parabéns, você passou no Exame Gennin.!"
							usr.testing=0
							usr.Frozen=0
							usr.gsprova=1
							return
						else
							usr<<"Você falhou no Exame Gennin. Tente de novo!."
							usr.testing=0
							usr.Genintest=0
							usr.Frozen=0
							return
					else
						usr.score += 0
						if(usr.score >= 9)
							usr<<"Parabéns, você passou no Exame Gennin.!"
							usr.testing=0
							usr.Frozen=0
							usr.gsprova=1
							return
						else
							usr<<"Você falhou no Exame Gennin. Tente de novo!"
							usr.testing=0
							usr.Frozen=0
							usr.Genintest=0


//====================== MISSOES ===============================================================


mob/var
	tmp/inmission=0
	amission=0
	tmp/roguekills=0
var
	peoplein=0
obj
	Weed
		name="Mato"
		icon = 'weed.dmi'
		verb
			Pegar()
				set src in oview(1)
				var/place = src.loc
				usr.picked += 1
				usr<<"<font face=verdana>Você pegou um(a) [src]"
				src.loc = usr
				spawn(600)
					var/obj/Weed/W = new/obj/Weed
					W.loc = place

obj
	Argila
		icon = 'iconmissao.dmi'
		icon_state = "argila"
		verb
			Pick()
				set src in oview(1)
				var/place = src.loc
				usr<<"<font face=verdana>Você pegou um(a) [src]"
				usr.picked += 1
				src.loc = usr
				spawn(600)
					var/obj/Argila/W = new/obj/Argila
					W.loc = place

obj
	Martelo
		icon = 'iconmissao.dmi'
		icon_state = "martelo"
		verb
			Pick()
				set src in oview(1)
				var/place = src.loc
				usr<<"<font face=verdana>Você pegou um(a) [src]"
				usr.picked += 1
				src.loc = usr
				spawn(600)
					var/obj/Martelo/W = new/obj/Martelo
					W.loc = place


obj
	Latatinta
		icon = 'iconmissao.dmi'
		icon_state = "lata de tinta"
		verb
			Pick()
				set src in oview(1)
				var/place = src.loc
				usr<<"<font face=verdana>Você pegou um(a) [src]"
				usr.picked += 1
				src.loc = usr
				spawn(600)
					var/obj/Latatinta/W = new/obj/Latatinta
					W.loc = place


obj
	Erva
		icon = 'iconmissao.dmi'
		icon_state = "erva"
		verb
			Pick()
				set src in oview(1)
				var/place = src.loc
				usr<<"<font face=verdana>Você pegou um(a) [src]"
				usr.picked += 1
				src.loc = usr
				spawn(600)
					var/obj/Erva/W = new/obj/Erva
					W.loc = place

obj
	Tigela
		icon = 'iconmissao.dmi'
		icon_state = "tigela"
		verb
			Pick()
				set src in oview(1)
				var/place = src.loc
				usr<<"<font face=verdana>Você pegou um(a) [src]"
				usr.picked += 1
				src.loc = usr
				spawn(600)
					var/obj/Tigela/W = new/obj/Tigela
					W.loc = place

obj
	Flores
		icon = 'iconmissao.dmi'
		icon_state = "flores"
		verb
			Pick()
				set src in oview(1)
				var/place = src.loc
				usr<<"<font face=verdana>Você pegou um(a) [src]"
				usr.picked += 1
				src.loc = usr
				spawn(600)
					var/obj/Flores/W = new/obj/Flores
					W.loc = place

obj
	Marionete
		icon = 'iconmissao.dmi'
		icon_state = "marionete"
		verb
			Pick()
				set src in oview(1)
				var/place = src.loc
				usr<<"<font face=verdana>Você pegou um(a) [src]"
				usr.picked += 1
				src.loc = usr
				spawn(600)
					var/obj/Marionete/W = new/obj/Marionete
					W.loc = place

obj
	Marionete3
		icon = 'iconmissao.dmi'
		icon_state = "marionete3"
		verb
			Pick()
				set src in oview(1)
				var/place = src.loc
				usr<<"<font face=verdana>Você pegou um(a) [src]"
				usr.picked += 1
				src.loc = usr
				spawn(600)
					var/obj/Marionete3/W = new/obj/Marionete3
					W.loc = place

obj
	Marionete2
		icon = 'iconmissao.dmi'
		icon_state = "marionete2"
		verb
			Pick()
				set src in oview(1)
				var/place = src.loc
				usr<<"<font face=verdana>Você pegou um(a) [src]"
				usr.picked += 1
				src.loc = usr
				spawn(600)
					var/obj/Marionete2/W = new/obj/Marionete2
					W.loc = place

obj
	Marionete1
		icon = 'iconmissao.dmi'
		icon_state = "marionete1"
		verb
			Pick()
				set src in oview(1)
				var/place = src.loc
				usr<<"<font face=verdana>Você pegou um(a) [src]"
				usr.picked += 1
				src.loc = usr
				spawn(600)
					var/obj/Marionete1/W = new/obj/Marionete1
					W.loc = place
obj
	Hidden_Scroll
		name = "Pergaminho Proibido"
		icon = 'scroll.dmi'
		icon_state="katon"
		verb
			Pegar()
				set src in oview(1)
				if(locate(/obj/Hidden_Scroll) in usr.contents)
					usr<<"Você já o tem!"
					return
				var/place = src.loc
				usr<<"<font face=verdana>Você pegou o [src]"
				usr.gotscroll = 1
				src.loc = usr
				spawn(600)
					var/obj/Hidden_Scroll/H = new/obj/Hidden_Scroll
					H.loc = place

mob/MissionJounin
	name = "{NPC}Designador de Missoes"
	icon = 'mjounin.dmi'
	health = 99999999999999999999999999999999999999999999999999999999999999999999999999999999999
	human = 0
	imortal = 1
	verb
		Falar()
			set src in oview(3)
			//set category ="Missao"
			switch(input("Você está certificado para qual nível de missão?", text) in list ("D","C","B","A","S","Terminei minha missão","Desistir da missão"))
				if("D")
					if(usr.inmissionD||usr.inmissionD2||usr.inmissionD3||usr.inmissionD4||usr.inmissionD5||usr.inmissionC||usr.inmissionC2||usr.inmissionC3||usr.inmissionC4||usr.inmissionC5||usr.inmissionB||usr.inmissionB2||usr.inmissionA||usr.inmissionS)
						usr<<"Você já está encarregado de uma missão"
						return
					if(usr.rank == "Nukenin")
						usr<<"Nukenins não podem fazer missão, sobreviva a custa dos que estão no Bingo Book!"
						return
					else
						var/random = rand(1,4)
						if(random==1)
							usr << "Existe muito mato atrapalhando os habitantes da vila. Recolha alguns deles para nos ajudar"
							usr.inmissionD=1
						if(random==2)
							usr <<"Me traga um bloco de argila das regiões perto da vila para ajudarmos os construtores de novas moradias"
							usr.inmissionD2=1
						if(random==3)
							usr <<"Vá ao Ramen e ajude o Cozinheiro de lá"
							usr.ajudar=1
							usr.inmissionD3=1
						if(random==4)
							usr << "Há um punhado de pergaminhos na casa do kage, traga-os para mim"
							usr.inmissionD5=1
				if("C")
					if(usr.rank == "Estudante"&&usr.bingob=="D")
						usr<<"Você precisa ser no mínimo Genin Ninja Rank C para fazer uma missão de Rank C."
						return
					if(usr.rank == "Nukenin")
						usr<<"Nukenins não podem fazer missão, sobreviva a custa dos que estão no Bingo Book!"
						return
					if(usr.inmissionD||usr.inmissionD2||usr.inmissionD3||usr.inmissionD4||usr.inmissionD5||usr.inmissionC||usr.inmissionC2||usr.inmissionC3||usr.inmissionC4||usr.inmissionC5||usr.inmissionB||usr.inmissionB2||usr.inmissionA||usr.inmissionS)
						usr<<"Você já está encarregado de uma missão"
						return
					else
						var/random2 = rand(1,5)
						if(random2 ==1)
							usr << "Você precisa trazer para mim uma erva especial de força encontrada nos arredores de Kumogakure"
							usr.inmissionC=1
						if(random2 ==2)
							usr << "Recentemente houve uma série de roubos perto de Sunagakure, gostaria que você fosse lá e conversasse com o  Sr.Klaus que tem informações precisas sobre o ocorrido"
							usr.inmissionC2=1
						if(random2 ==3)
							usr << "Há um Pergaminho nosso que foi roubado em algum lugar da vila Yuki (Neve). traga o pergaminho de volta para ser recompensado."
							usr.inmissionC3=1
						if(random2 ==4)
							usr << "Há um bando de ladrões perto de Kumogakure. Vá até la e os derrote"
							usr.inmissionC4=1
						if(random2 ==5)
							usr << "Leve esses documentos para Sasuke em Konoha."
							usr.inmissionC5=1
							usr.documentos=1
				if("B")
					if(usr.rank == "Estudante"||usr.rank=="Genin")
						usr<<"Para fazer essa missão você deve ser, no mínimo, Chuunin!"
						return
					if(usr.rank == "Nukenin")
						usr<<"Nukenins não podem fazer missão, sobreviva a custa dos que estão no Bingo Book!"
						return
					if(usr.inmissionD||usr.inmissionD2||usr.inmissionD3||usr.inmissionD4||usr.inmissionD5||usr.inmissionC||usr.inmissionC2||usr.inmissionC3||usr.inmissionC4||usr.inmissionC5||usr.inmissionB||usr.inmissionB2||usr.inmissionA||usr.inmissionS)
						usr<<"Você já está encarregado de uma missão"
						return
					else
						var/random2 = rand(1,2)
						if(random2 ==1)
							usr<<"Derrote 10 Ladroes perto de Kumogakure."
							usr.inmissionB=1
						if(random2 ==2)
							usr<<"Derrote o Ninja Assassino Perto de Kumogakure."
							usr.inmissionB2=1
				if("A")
					if(usr.rank == "Estudante"||usr.rank=="Genin"||usr.rank=="Chuunin")
						usr<<"Para fazer essa missão você deve ser, no mínimo, Jounin."
						return
					if(usr.rank == "Nukenin")
						usr<<"Nukenins não podem fazer missão, sobreviva a custa dos que estão no Bingo Book!"
						return
					if(usr.inmissionD||usr.inmissionD2||usr.inmissionD3||usr.inmissionD4||usr.inmissionD5||usr.inmissionC||usr.inmissionC2||usr.inmissionC3||usr.inmissionC4||usr.inmissionC5||usr.inmissionB||usr.inmissionB2||usr.inmissionA||usr.inmissionS)
						usr<<"Você já está encarregado de uma missão"
						return
					else
						switch(input("Você irá embarcar em sua missão. Tem certeza?", text) in list ("Sim","Não"))
							if("Sim")
								usr.loc=locate(71,425,1)
								usr.inmission=1
								usr.inmissionA=1
								alert("Objetivo: Derrote Dosu Kinuta!")
								usr.verbs += new /mob/mission/verb/Escape()
								sleep(6000)
								if(usr&&usr.inmissionA)
									usr<<"Desculpe, você demorou demais, o Kage ficou impaciente. Tente denovo na próxima vez!"
									usr.inmission=0
									usr.inmissionA=0
									usr.loc=locate(456,174,3)
									usr.verbs -= new /mob/mission/verb/Escape()
									usr.verbs -= new /mob/mission/verb/Escape()
									usr.verbs -= new /mob/mission/verb/Escape()
									return
							else
								usr<<"Ok"
								return
				if("S")
					if(usr.rank == "Estudante"||usr.rank=="Genin"||usr.rank=="Chuunin"||usr.bingob=="D"||usr.bingob=="C"||usr.bingob=="B")
						usr<<"Para fazer essa missão você deve ser, no mínimo, Jounin Ninja Rank A!"
						return
					if(usr.rank == "Nukenin")
						usr<<"Nukenins não podem fazer missão, sobreviva a custa dos que estão no Bingo Book!"
						return
					if(usr.inmissionD||usr.inmissionD2||usr.inmissionD3||usr.inmissionD4||usr.inmissionD5||usr.inmissionC||usr.inmissionC2||usr.inmissionC3||usr.inmissionC4||usr.inmissionC5||usr.inmissionB||usr.inmissionB2||usr.inmissionA||usr.inmissionS)
						usr<<"Você já está encarregado de uma missão"
						return
					else
						switch(input("Você irá embarcar em sua missão. Tem certeza?", text) in list ("Sim","Não"))
							if("Sim")
								usr.loc=locate(613,627,9)
								usr.inmission=1
								usr.inmissionS=1
								alert("Objetivo: Detecte Orochimaru e o derrote em tempo!")
								usr.verbs += new /mob/mission/verb/Escape()
								sleep(6000)
								if(usr&&usr.inmission)
									usr<<"Desculpe, você demorou demais, o Kage ficou impaciente. Tente denovo na próxima vez!"
									usr.inmission=0
									usr.inmissionS=0
									usr.loc=locate(456,174,3)
									usr.verbs -= new /mob/mission/verb/Escape()
									usr.verbs -= new /mob/mission/verb/Escape()
									usr.verbs -= new /mob/mission/verb/Escape()
									return
							else
								usr<<"Ok"
								return
				if("Terminei minha missão")
					if(usr.inmissionD==1)
						if(locate(/obj/Weed) in usr.contents)
							usr<<"Excelente, mto obrigado pela sua ajuda jovem genin"
							usr.Yen += usr.picked * 20
							if(usr.Village == "Konoha")
								konohafundo += usr.picked*20
							if(usr.Village == "Ame")
								amefundo += usr.picked*20
							if(usr.Village == "Kiri")
								kirifundo += usr.picked*20
							if(usr.Village == "Kumo")
								kumofundo += usr.picked*20
							if(usr.Village == "Iwa")
								iwafundo += usr.picked*20
							if(usr.Village == "Suna")
								sunafundo += usr.picked*20
							usr.picked = 0
							usr.dmission+=1
							usr.honra+=rand(1,3)
							usr.inmissionD=0
							for(var/obj/Weed/W in usr.contents)
								del(W)
							if(!(usr.key in CanNotMiss))
								usr.missaostatskills+=1
								usr.pontodestats+=1
								usr.exp+=130
								usr.Levelup()
								usr<<"Você recebeu XP e ponto de Stats!"
								if(usr.missaostatskills%50==0) CanNotMiss+=usr.key
							else
								usr<<"Você não pode mais receber XP por missões por hoje!"
					if(usr.inmissionD2==1)
						if(locate(/obj/argila) in usr.contents)
							usr.inmissionD2=0
							usr.dmission+=1
							usr.honra+=rand(1,2)
							usr.Yen+=rand(2000,3000)
							if(usr.Village == "Konoha")
								konohafundo += rand(1000,2000)
							if(usr.Village == "Ame")
								amefundo += rand(1000,2000)
							if(usr.Village == "Kiri")
								kirifundo += rand(1000,2000)
							if(usr.Village == "Kumo")
								kumofundo += rand(1000,2000)
							if(usr.Village == "Iwa")
								iwafundo += rand(1000,2000)
							if(usr.Village == "Suna")
								sunafundo += rand(1000,2000)
							for(var/obj/argila/W in usr.contents)
								del(W)
							usr<<"Ótimo trabalho, com isso os artesãos vão ficar mto felizes"
							if(!(usr.key in CanNotMiss))
								usr.missaostatskills+=1
								usr.pontodestats+=1
								usr.exp+=130
								usr.Levelup()
								usr<<"Você recebeu XP e ponto de Stats!"
								if(usr.missaostatskills%50==0) CanNotMiss+=usr.key
							else
								usr<<"Você não pode mais receber XP por missões por hoje!"
					if(usr.inmissionD3==1)
						if(usr.ajudante==1)
							usr.ajudante=0
							usr.peixe=0
							usr.inmissionD3=0
							usr.Yen+=rand(3000,4000)
							if(usr.Village == "Konoha")
								konohafundo += rand(1000,2000)
							if(usr.Village == "Ame")
								amefundo += rand(1000,2000)
							if(usr.Village == "Kiri")
								kirifundo += rand(1000,2000)
							if(usr.Village == "Kumo")
								kumofundo += rand(1000,2000)
							if(usr.Village == "Iwa")
								iwafundo += rand(1000,2000)
							if(usr.Village == "Suna")
								sunafundo += rand(1000,2000)
							usr.honra+=rand(1,3)
							usr.dmission+=1
							usr<<"Fantastico, pelo visto o cozinheiro gostou muito de sua ajuda"
							for(var/obj/peixe/W in usr.contents)
								del(W)
							if(!(usr.key in CanNotMiss))
								usr.missaostatskills+=1
								usr.pontodestats+=1
								usr.exp+=130
								usr.Levelup()
								usr<<"Você recebeu XP e ponto de Stats!"
								if(usr.missaostatskills%50==0) CanNotMiss+=usr.key
							else
								usr<<"Você não pode mais receber XP por missões por hoje!"
					if(usr.inmissionD4==1)
						if(usr.ratos>=10)
							usr.ratos = 0
							usr.inmissionD4=0
							usr.Yen+=rand(5000,6000)
							if(usr.Village == "Konoha")
								konohafundo += rand(1000,2000)
							if(usr.Village == "Ame")
								amefundo += rand(1000,2000)
							if(usr.Village == "Kiri")
								kirifundo += rand(1000,2000)
							if(usr.Village == "Kumo")
								kumofundo += rand(1000,2000)
							if(usr.Village == "Iwa")
								iwafundo += rand(1000,2000)
							if(usr.Village == "Suna")
								sunafundo += rand(1000,2000)
							usr.dmission+=1
							usr.honra+=rand(1,5)
							usr<<"Graças a você , as pessoas da vila vão poder dormir melhor"
							if(!(usr.key in CanNotMiss))
								usr.missaostatskills+=1
								usr.pontodestats+=1
								usr.exp+=130
								usr.Levelup()
								usr<<"Você recebeu XP e ponto de Stats!"
								if(usr.missaostatskills%50==0) CanNotMiss+=usr.key
							else
								usr<<"Você não pode mais receber XP por missões por hoje!"
					if(usr.inmissionD5==1)
						if(locate(/obj/pergaminhokage) in usr.contents)
							usr.inmissionD5=0
							usr.Yen +=rand(2000,3000)
							if(!(usr.key in CanNotMiss))
								usr.missaostatskills+=1
								usr.pontodestats+=1
								usr.exp+=130
								usr.Levelup()
								usr<<"Você recebeu XP e ponto de Stats!"
								if(usr.missaostatskills%50==0) CanNotMiss+=usr.key
							else
								usr<<"Você não pode mais receber XP por missões por hoje!"
							if(usr.Village == "Konoha")
								konohafundo += rand(1000,2000)
							if(usr.Village == "Ame")
								amefundo += rand(1000,2000)
							if(usr.Village == "Kiri")
								kirifundo += rand(1000,2000)
							if(usr.Village == "Kumo")
								kumofundo += rand(1000,2000)
							if(usr.Village == "Iwa")
								iwafundo += rand(1000,2000)
							if(usr.Village == "Suna")
								sunafundo += rand(1000,2000)
							usr.dmission+=1
							usr.honra+=rand(1,3)
							for(var/obj/pergaminhokage/W in usr.contents)
								del(W)
							usr<<"Muito bom, vou agora mesmo levar esses pergaminhos ao Capitão Anbu"
					if(usr.inmissionC==1)
						if(usr.erva==1&&usr.pegouerva==1)
							usr<<"Muito bom trabalho, meus parabéns"
							usr.inmissionC=0
							usr.cmission+=1
							usr.honra+=rand(5,10)
							usr.Yen+=rand(6000,8000)
							if(usr.Village == "Konoha")
								konohafundo += rand(3000,4000)
							if(usr.Village == "Ame")
								amefundo += rand(3000,4000)
							if(usr.Village == "Kiri")
								kirifundo += rand(3000,4000)
							if(usr.Village == "Kumo")
								kumofundo += rand(3000,4000)
							if(usr.Village == "Iwa")
								iwafundo += rand(3000,4000)
							if(usr.Village == "Suna")
								sunafundo += rand(3000,4000)
							usr.erva=0
							usr.pegouerva=0
							for(var/obj/erva/W in usr.contents)
								del(W)
							if(!(usr.key in CanNotMiss))
								usr.missaostatskills+=2
								usr.pontodestats+=1
								usr.exp+=260
								usr.Levelup()
								usr<<"Você recebeu XP e ponto de Stats!"
								if(usr.missaostatskills%50==0) CanNotMiss+=usr.key
							else
								usr<<"Você não pode mais receber XP por missões por hoje!"
					if(usr.inmissionC2==1)
						if(usr.information==1)
							usr<<"Incrivel....com essas informações nossos Jounins conseguirão dar cabo desses shinobis patifes"
							usr.inmissionC2=0
							usr.cmission+=1
							usr.honra+=rand(6,9)
							usr.Yen+=rand(8000,10000)
							if(usr.Village == "Konoha")
								konohafundo += rand(3000,4000)
							if(usr.Village == "Ame")
								amefundo += rand(3000,4000)
							if(usr.Village == "Kiri")
								kirifundo += rand(3000,4000)
							if(usr.Village == "Kumo")
								kumofundo += rand(3000,4000)
							if(usr.Village == "Iwa")
								iwafundo += rand(3000,4000)
							if(usr.Village == "Suna")
								sunafundo += rand(3000,4000)
							usr.information=0
							if(!(usr.key in CanNotMiss))
								usr.missaostatskills+=2
								usr.pontodestats+=2
								usr.exp+=260
								usr.Levelup()
								usr<<"Você recebeu XP e ponto de Stats!"
								if(usr.missaostatskills%50==0) CanNotMiss+=usr.key
							else
								usr<<"Você não pode mais receber XP por missões por hoje!"
					if(usr.inmissionC3==1)
						if(locate(/obj/Hidden_Scroll) in usr.contents)
							usr<<"Ótimo trabalho..acertei confiar em você"
							usr.cmission+=1
							usr.honra+=rand(5,10)
							usr.Yen+=rand(6000,8000)
							if(usr.Village == "Konoha")
								konohafundo += rand(3000,4000)
							if(usr.Village == "Ame")
								amefundo += rand(3000,4000)
							if(usr.Village == "Kiri")
								kirifundo += rand(3000,4000)
							if(usr.Village == "Kumo")
								kumofundo += rand(3000,4000)
							if(usr.Village == "Iwa")
								iwafundo += rand(3000,4000)
							if(usr.Village == "Suna")
								sunafundo += rand(3000,4000)
							usr.inmissionC3=0
							for(var/obj/Hidden_Scroll/HS in usr.contents)
								del(HS)
							if(!(usr.key in CanNotMiss))
								usr.missaostatskills+=2
								usr.pontodestats+=2
								usr.exp+=260
								usr.Levelup()
								usr<<"Você recebeu XP e ponto de Stats!"
								if(usr.missaostatskills%50==0) CanNotMiss+=usr.key
							else
								usr<<"Você não pode mais receber XP por missões por hoje!"
					if(usr.inmissionC4==1)
						if(usr.ladroes>=2)
							usr.ladroes = 0
							usr<<"Incrivel...vejo que sua fama é verdadeira"
							usr.cmission+=1
							usr.honra+=rand(6,9)
							usr.Yen+=rand(8000,10000)
							if(usr.Village == "Konoha")
								konohafundo += rand(3000,4000)
							if(usr.Village == "Ame")
								amefundo += rand(3000,4000)
							if(usr.Village == "Kiri")
								kirifundo += rand(3000,4000)
							if(usr.Village == "Kumo")
								kumofundo += rand(3000,4000)
							if(usr.Village == "Iwa")
								iwafundo += rand(3000,4000)
							if(usr.Village == "Suna")
								sunafundo += rand(3000,4000)
							usr.inmissionC4=0
							if(!(usr.key in CanNotMiss))
								usr.missaostatskills+=2
								usr.pontodestats+=2
								usr.exp+=260
								usr.Levelup()
								usr<<"Você recebeu XP e ponto de Stats!"
								if(usr.missaostatskills%50==0) CanNotMiss+=usr.key
							else
								usr<<"Você não pode mais receber XP por missões por hoje!"
					if(usr.inmissionC5==1)
						if(usr.docs==1)
							usr.docs=0
							usr<<"Muito obrigado por sua ajuda"
							usr.inmissionC5=0
							usr.honra+=rand(5,10)
							usr.cmission+=1
							usr.Yen+=rand(6000,8000)
							if(usr.Village == "Konoha")
								konohafundo += rand(3000,4000)
							if(usr.Village == "Ame")
								amefundo += rand(3000,4000)
							if(usr.Village == "Kiri")
								kirifundo += rand(3000,4000)
							if(usr.Village == "Kumo")
								kumofundo += rand(3000,4000)
							if(usr.Village == "Iwa")
								iwafundo += rand(3000,4000)
							if(usr.Village == "Suna")
								sunafundo += rand(3000,4000)
							if(!(usr.key in CanNotMiss))
								usr.missaostatskills+=2
								usr.pontodestats+=2
								usr.exp+=260
								usr.Levelup()
								usr<<"Você recebeu XP e ponto de Stats!"
								if(usr.missaostatskills%50==0) CanNotMiss+=usr.key
							else
								usr<<"Você não pode mais receber XP por missões por hoje!"
				if("Desistir da missão")
					if(usr.inmission==1||usr.inmissionD==1||usr.inmissionD2==1||usr.inmissionD3==1||usr.inmissionD4==1||usr.inmissionD5==1||usr.inmissionC==1||usr.inmissionC2==1||usr.inmissionC3==1||usr.inmissionC4==1||usr.inmissionC5==1||usr.inmissionB==1||usr.inmissionB2==1||usr.inmissionA==1||usr.inmissionS==1)
						switch(input("Você tem certeza que deseja desistir de sua missão atual?", text) in list ("Sim","Não"))
							if("Sim")
								usr.inmissionD=0
								usr.inmissionD2=0
								usr.inmissionD3=0
								usr.inmissionD4=0
								usr.inmissionD5=0
								usr.inmissionB=0
								usr.inmissionB2=0
								usr.inmissionC=0
								usr.inmissionC2=0
								usr.inmissionC3=0
								usr.inmissionC4=0
								usr.inmissionC5=0
								usr.inmissionA=0
								usr.inmissionS=0
								usr.inmission=0
								usr.roguekills=0
								usr.information=0
								usr.docs=0
								usr.documentos=0
								usr.ajudante=0
								//usr.erva=0
								//usr.pegouerva=0
								//usr.ratos=0
								//usr.peixe=0
								//usr.picked=0
								usr<<"Missão cancelada!"
							if("Não")
								usr<<"Então vá concluí-la!"
					else
						usr<<"Você não tem nenhuma missão designada no momento!"

mob/mission/verb/Escape()
	set category="Missao"
	usr.loc=locate(456,174,3)
	usr.inmission=0
	usr.inmissionB=0
	usr.inmissionS=0
	usr.inmissionA=0
	usr.verbs -= new /mob/mission/verb/Escape()
	usr.verbs -= new /mob/mission/verb/Escape()
	usr.verbs -= new /mob/mission/verb/Escape()
	usr.verbs -= new /mob/mission/verb/Escape()



mob/var/tmp/inmissionD=0
mob/var/tmp/inmissionD2=0
mob/var/tmp/inmissionD3=0
mob/var/tmp/inmissionD4=0
mob/var/tmp/inmissionD5=0
mob/var/tmp/inmissionC=0
mob/var/tmp/inmissionC2=0
mob/var/tmp/inmissionC3=0
mob/var/tmp/inmissionC4=0
mob/var/tmp/inmissionC5=0
mob/var/tmp/inmissionB=0
mob/var/tmp/inmissionB2=0
mob/var/tmp/inmissionA=0
mob/var/tmp/inmissionS=0
mob/var/tmp/erva=0
mob/var/pegouerva=0
mob/var/tmp/ladroes=0
mob/var/tmp/docs=0
mob/var/tmp/documentos=0
mob/var/tmp/information=0
mob/var/tmp/blocoargila=0
mob/var/tmp/ajudante=0
mob/var/pergaminhopegado=0
mob/var/tmp/ajudar=0
mob/var/peixe=0
mob/var/ratos=0


mob
	verb
		Attack()
			set category = "TaiJutsu"
			for(var/mob/M in get_step(usr,usr.dir))
				if(M.party&&M.partysensei==usr.partysensei)return
				if(usr.battlingRC)
					usr<<"Não agora"
					return
				if(M.battlingRC)
					usr<<"Não agora"
					return
				if(M.drunk)
					view()<<"[M] desvia do ataque de [usr]!"
					return
				if(M.inspike)
					usr<<"<font size=1>Seu ataque erra [usr]!"
					return
				if(M.sphere)
					usr<<"<font size=1>Seu ataque acertar a areia que o protege!"
					return
				if(usr.Frozen||usr.froze||!usr.move)
					usr<<"Você está paralizado!"
					return
				if(usr.kawa)
					usr<<"Você está de Kawarimi!"
					return
				if(usr.cdhana)
					usr<<"Você está com cooldown por causa do Hana"
					return
				if(M.fantasma)
					usr<<"<font size=1>Vc não consegue tocá-lo!"
					return
				if(M.armorkisame||M.armorkisame2)
					usr<<"<font size=1>Vc não consegue atingi-lo nessa forma!"
					return
				if(usr.stamina<=200)
					usr<<"Pouca Stamina (200)."
					return
				if(M.PK==0)
					usr<<"Zona NON-PK!"
					return
				if(usr.PK==0)
					usr<<"Zona NON-PK!"
					return
				if(usr.hanaon)
					if(usr.cdhana)
						usr<<"Você está com cooldown por causa do Hana"
						return
					spawn() usr.Cooldown(100,"Hana")
					usr.cdhana = 1
					var/dano = usr.tai/4.25 - M.Resistencia/2
					M.health -= usr.tai/4.25 - M.Resistencia/2
					M.Death(usr)
					view(6)<<"[usr] atacou [M] com sua Hana dando [dano]"
					return
				if(usr.shikyakuon&&jyuujinon)
					if(usr.cdhana)
						usr<<"Aguarde para usar o ataque Shikyaku no Jutsu"
						return
					spawn() usr.Cooldown(100,"Hana")
					usr.cdhana = 1
					var/dano = usr.tai/2 - M.Resistencia
					M.health -= usr.tai/2 - M.Resistencia
					M.Death(usr)
					view(6)<<"[usr] atacou [M] com seu Shikyaku no Jutsu Combinado causando [dano] de dano"
					return
				if(usr.lamina)
					M.health -= usr.tai/3.5 + usr.swordD/5
					usr<<"Vc atacou [M] com sua lamina de chakra"
					M.laminadoperson="[usr]"
					M.laminado=1
					M<<"Você foi atingido pela lamina de chakra de [usr]"
					M.Death(usr)
					return
				if(usr.atacando)
					return
				if(usr.eletrico)
					if(usr.cdbiribiri)
						usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Chuusuusei Biribiri</b>!"
						return
					if(M.party&&M.partysensei==usr.partysensei)return
					if(usr.cdbiribiri)return
					usr.cdbiribiri=1
					spawn()usr.Cooldown(100,"Chuusuusei Biribiri")
					usr<<"Você atingiu [M] com seu Chuusuusei Biribiri"
					M.eletrizado()
					return
				if(M.Kaiten)
					var/damage = round(usr.tai-M.tai/4)
					if(damage <= 1)
						damage = 1
						usr <<"<font size=1>Você ataca [M], mas seu Hakkekushou Kaiten reflete o dano de volta à você"
						M <<"<font size=1>Você reflete o ataque de [usr], causando dano à ele mesmo"
						usr.health -= damage
						F_damage(usr, damage, "#ff0000")
						usr.Death(M)
						usr.dead = 1
						return
					else
						usr <<"<font size=1>Você ataca [M], mas seu Hakkekushou Kaiten reflete o dano de volta à você"
						M <<"<font size=1>Você reflete o ataque de [usr], causando dano à ele mesmo"
						usr.health -= damage
						F_damage(usr, damage, "#ff0000")
						usr.Death(M)
						src.dead = 1
						return
				else
					usr.atacando=1
					usr.stamina-=200
					if(usr.Jyuken)
						if(usr.veloN>M.veloN)
							usr.random = rand(1,3)
							if(random==1)
								usr << "<font size=1>Você ataca [M]!"
								flick("Attack",usr)
								var/damage = round(usr.tai/4) - M.Resistencia
								if(damage<=0)damage=0
								view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
								if(usr.forceN>M.forceN*2)
									if(usr.dir==SOUTH)
										M.loc = locate(usr.x,usr.y-3,usr.z)
									if(usr.dir==NORTH)
										M.loc = locate(usr.x,usr.y+3,usr.z)
									if(usr.dir==WEST)
										M.loc = locate(usr.x-3,usr.y,usr.z)
									if(usr.dir==EAST)
										M.loc = locate(usr.x+3,usr.y,usr.z)
								M.health -= damage
								M.chakra -= damage/3
								F_damage(M, damage, "#ff0000")
								M.Death(usr)
								sleep(30)
								usr.atacando=0
								return
							if(random==2)
								usr << "<font size=1>Você ataca [M]!"
								flick("Attack",usr)
								var/damage = round(usr.tai/4) - M.Resistencia
								if(damage<=0)damage=0
								view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
								M.health -= damage
								M.chakra -= damage/3
								F_damage(M, damage, "#ff0000")
								sleep(10)
								usr << "<font size=1>Você ataca [M] novamente!"
								flick("Attack",usr)
								view() << "<font size=1>[usr] ataca [M] novamente tirando um dano de [damage]!"
								if(usr.forceN>M.forceN*2)
									if(usr.dir==SOUTH)
										M.loc = locate(usr.x,usr.y-3,usr.z)
									if(usr.dir==NORTH)
										M.loc = locate(usr.x,usr.y+3,usr.z)
									if(usr.dir==WEST)
										M.loc = locate(usr.x-3,usr.y,usr.z)
									if(usr.dir==EAST)
										M.loc = locate(usr.x+3,usr.y,usr.z)
								M.health -= damage
								F_damage(M, damage, "#ff0000")
								M.Death(usr)
								sleep(30)
								usr.atacando=0
								return
							if(random==3)
								usr << "<font size=1>Você ataca [M]!"
								flick("Attack",usr)
								var/damage = round(usr.tai/4) - M.Resistencia
								if(damage<=0)damage=0
								view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
								if(usr.forceN>M.forceN*2)
									if(usr.dir==SOUTH)
										M.loc = locate(usr.x,usr.y-3,usr.z)
									if(usr.dir==NORTH)
										M.loc = locate(usr.x,usr.y+3,usr.z)
									if(usr.dir==WEST)
										M.loc = locate(usr.x-3,usr.y,usr.z)
									if(usr.dir==EAST)
										M.loc = locate(usr.x+3,usr.y,usr.z)
								M.health -= damage
								M.chakra -= damage/3
								F_damage(M, damage, "#ff0000")
								M.Death(usr)
								sleep(30)
								usr.atacando=0
								return
						if(usr.veloN>M.veloN*2)
							usr.random = rand(1,2)
							if(random==1)
								usr << "<font size=1>Você ataca [M]!"
								flick("Attack",usr)
								var/damage = round(usr.tai/4) - M.Resistencia
								if(damage<=0)damage=0
								view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
								M.health -= damage
								M.chakra -= damage/3
								F_damage(M, damage, "#ff0000")
								sleep(10)
								usr << "<font size=1>Você ataca [M] novamente!"
								flick("Attack",usr)
								view() << "<font size=1>[usr] ataca [M] novamente tirando um dano de [damage]!"
								if(usr.forceN>M.forceN*2)
									if(usr.dir==SOUTH)
										M.loc = locate(usr.x,usr.y-3,usr.z)
									if(usr.dir==NORTH)
										M.loc = locate(usr.x,usr.y+3,usr.z)
									if(usr.dir==WEST)
										M.loc = locate(usr.x-3,usr.y,usr.z)
									if(usr.dir==EAST)
										M.loc = locate(usr.x+3,usr.y,usr.z)
								M.health -= damage
								M.chakra -= damage/3
								F_damage(M, damage, "#ff0000")
								M.Death(usr)
								sleep(30)
								usr.atacando=0
								return
							if(random==2)
								usr << "<font size=1>Você ataca [M] !"
								flick("Attack",usr)
								var/damage = round(usr.tai/4) - M.Resistencia
								if(damage<=0)damage=0
								view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
								if(usr.forceN>M.forceN*2)
									if(usr.dir==SOUTH)
										M.loc = locate(usr.x,usr.y-3,usr.z)
									if(usr.dir==NORTH)
										M.loc = locate(usr.x,usr.y+3,usr.z)
									if(usr.dir==WEST)
										M.loc = locate(usr.x-3,usr.y,usr.z)
									if(usr.dir==EAST)
										M.loc = locate(usr.x+3,usr.y,usr.z)
								M.health -= damage
								M.chakra -= damage/3
								F_damage(M, damage, "#ff0000")
								sleep(10)
								usr << "<font size=1>Você ataca [M] novamente!"
								flick("Attack",usr)
								view() << "<font size=1>[usr] ataca [M] novamente tirando um dano de [damage]!"
								M.health -= damage
								M.chakra -= damage/3
								F_damage(M, damage, "#ff0000")
								sleep(10)
								usr << "<font size=1>Você ataca [M] pela terceira vez!"
								flick("Attack",usr)
								view() << "<font size=1>[usr] ataca [M] pela terceira vez tirando um dano de [damage]!"
								if(usr.forceN>M.forceN*2)
									if(usr.dir==SOUTH)
										M.loc = locate(usr.x,usr.y-3,usr.z)
									if(usr.dir==NORTH)
										M.loc = locate(usr.x,usr.y+3,usr.z)
									if(usr.dir==WEST)
										M.loc = locate(usr.x-3,usr.y,usr.z)
									if(usr.dir==EAST)
										M.loc = locate(usr.x+3,usr.y,usr.z)
								M.health -= damage
								M.chakra -= damage/3
								F_damage(M, damage, "#ff0000")
								M.Death(usr)
								sleep(30)
								usr.atacando=0
								return
						if(usr.veloN<=M.veloN)
							usr.random = rand(1,3)
							if(random==1)
								usr << "<font size=1>Você ataca [M]!"
								flick("Attack",usr)
								sleep(10)
								usr << "[M] esquivou-se do seu golpe"
								M << "Vc se esquivou do ataque de [usr]"
								sleep(30)
								usr.atacando=0
								return
							if(random==2)
								usr << "<font size=1>Você ataca [M]!"
								flick("Attack",usr)
								var/damage = round(usr.tai/4) - M.Resistencia
								if(damage<=0)damage=0
								view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
								if(usr.forceN>M.forceN*2)
									if(usr.dir==SOUTH)
										M.loc = locate(usr.x,usr.y-3,usr.z)
									if(usr.dir==NORTH)
										M.loc = locate(usr.x,usr.y+3,usr.z)
									if(usr.dir==WEST)
										M.loc = locate(usr.x-3,usr.y,usr.z)
									if(usr.dir==EAST)
										M.loc = locate(usr.x+3,usr.y,usr.z)
								M.health -= damage
								M.chakra -= damage/3
								F_damage(M, damage, "#ff0000")
								M.Death(usr)
								sleep(30)
								usr.atacando=0
								return
							if(random==3)
								usr << "<font size=1>Você ataca [M]!"
								flick("Attack",usr)
								sleep(10)
								usr << "[M] esquivou-se do seu golpe"
								M << "Vc se esquivou do ataque de [usr]"
								sleep(30)
								usr.atacando=0
								return
					else if(usr.Shodstyle)
						if(usr.veloN>M.veloN)
							usr.random = rand(1,3)
							if(random==1)
								usr << "<font size=1>Você ataca [M]!"
								flick("Attack",usr)
								var/damage = round(usr.tai/3.5) - M.Resistencia
								if(damage<=0)damage=0
								view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
								if(usr.forceN>M.forceN*2)
									if(usr.dir==SOUTH)
										M.loc = locate(usr.x,usr.y-3,usr.z)
									if(usr.dir==NORTH)
										M.loc = locate(usr.x,usr.y+3,usr.z)
									if(usr.dir==WEST)
										M.loc = locate(usr.x-3,usr.y,usr.z)
									if(usr.dir==EAST)
										M.loc = locate(usr.x+3,usr.y,usr.z)
								M.health -= damage
								F_damage(M, damage, "#ff0000")
								M.Death(usr)
								sleep(30)
								usr.atacando=0
								return
							if(random==2)
								usr << "<font size=1>Você ataca [M]!"
								flick("Attack",usr)
								var/damage = round(usr.tai/3.5 + usr.chakra/3) - M.Resistencia
								if(damage<=0)damage=0
								view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
								M.health -= damage
								F_damage(M, damage, "#ff0000")
								sleep(10)
								usr << "<font size=1>Você ataca [M] novamente!"
								flick("Attack",usr)
								view() << "<font size=1>[usr] ataca [M] novamente tirando um dano de [damage]!"
								if(usr.forceN>M.forceN*2)
									if(usr.dir==SOUTH)
										M.loc = locate(usr.x,usr.y-3,usr.z)
									if(usr.dir==NORTH)
										M.loc = locate(usr.x,usr.y+3,usr.z)
									if(usr.dir==WEST)
										M.loc = locate(usr.x-3,usr.y,usr.z)
									if(usr.dir==EAST)
										M.loc = locate(usr.x+3,usr.y,usr.z)
								M.health -= damage
								F_damage(M, damage, "#ff0000")
								M.Death(usr)
								sleep(30)
								usr.atacando=0
								return
							if(random==3)
								usr << "<font size=1>Você ataca [M]!"
								flick("Attack",usr)
								var/damage = round(usr.tai/3.5) - M.Resistencia
								if(damage<=0)damage=0
								view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
								if(usr.forceN>M.forceN*2)
									if(usr.dir==SOUTH)
										M.loc = locate(usr.x,usr.y-3,usr.z)
									if(usr.dir==NORTH)
										M.loc = locate(usr.x,usr.y+3,usr.z)
									if(usr.dir==WEST)
										M.loc = locate(usr.x-3,usr.y,usr.z)
									if(usr.dir==EAST)
										M.loc = locate(usr.x+3,usr.y,usr.z)
								M.health -= damage
								F_damage(M, damage, "#ff0000")
								M.Death(usr)
								sleep(30)
								usr.atacando=0
								return
						if(usr.veloN>M.veloN*2)
							usr.random = rand(1,2)
							if(random==1)
								usr << "<font size=1>Você ataca [M]!"
								flick("Attack",usr)
								var/damage = round(usr.tai/3.5) - M.Resistencia
								if(damage<=0)damage=0
								view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
								M.health -= damage
								F_damage(M, damage, "#ff0000")
								sleep(10)
								usr << "<font size=1>Você ataca [M] novamente!"
								flick("Attack",usr)
								view() << "<font size=1>[usr] ataca [M] novamente tirando um dano de [damage]!"
								if(usr.forceN>M.forceN*2)
									if(usr.dir==SOUTH)
										M.loc = locate(usr.x,usr.y-3,usr.z)
									if(usr.dir==NORTH)
										M.loc = locate(usr.x,usr.y+3,usr.z)
									if(usr.dir==WEST)
										M.loc = locate(usr.x-3,usr.y,usr.z)
									if(usr.dir==EAST)
										M.loc = locate(usr.x+3,usr.y,usr.z)
								M.health -= damage
								F_damage(M, damage, "#ff0000")
								M.Death(usr)
								sleep(30)
								usr.atacando=0
								return
							if(random==2)
								usr << "<font size=1>Você ataca [M] !"
								flick("Attack",usr)
								var/damage = round(usr.tai/3.5 + usr.chakra/3) - M.Resistencia
								if(damage<=0)damage=0
								view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
								M.health -= damage
								F_damage(M, damage, "#ff0000")
								sleep(10)
								usr << "<font size=1>Você ataca [M] novamente!"
								flick("Attack",usr)
								view() << "<font size=1>[usr] ataca [M] novamente tirando um dano de [damage]!"
								M.health -= damage
								F_damage(M, damage, "#ff0000")
								sleep(10)
								usr << "<font size=1>Você ataca [M] pela terceira vez!"
								flick("Attack",usr)
								view() << "<font size=1>[usr] ataca [M] pela terceira vez tirando um dano de [damage]!"
								if(usr.forceN>M.forceN*2)
									if(usr.dir==SOUTH)
										M.loc = locate(usr.x,usr.y-3,usr.z)
									if(usr.dir==NORTH)
										M.loc = locate(usr.x,usr.y+3,usr.z)
									if(usr.dir==WEST)
										M.loc = locate(usr.x-3,usr.y,usr.z)
									if(usr.dir==EAST)
										M.loc = locate(usr.x+3,usr.y,usr.z)
								M.health -= damage
								F_damage(M, damage, "#ff0000")
								M.Death(usr)
								sleep(30)
								usr.atacando=0
								return
						if(usr.veloN<=M.veloN)
							usr.random = rand(1,3)
							if(random==1)
								usr << "<font size=1>Você ataca [M]!"
								flick("Attack",usr)
								sleep(10)
								usr << "[M] esquivou-se do seu golpe"
								M << "Vc se esquivou do ataque de [usr]"
								sleep(30)
								usr.atacando=0
								return
							if(random==2)
								usr << "<font size=1>Você ataca [M]!"
								flick("Attack",usr)
								var/damage = round(usr.tai/3.5) - M.Resistencia
								if(damage<=0)damage=0
								view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
								if(usr.forceN>M.forceN*2)
									if(usr.dir==SOUTH)
										M.loc = locate(usr.x,usr.y-3,usr.z)
									if(usr.dir==NORTH)
										M.loc = locate(usr.x,usr.y+3,usr.z)
									if(usr.dir==WEST)
										M.loc = locate(usr.x-3,usr.y,usr.z)
									if(usr.dir==EAST)
										M.loc = locate(usr.x+3,usr.y,usr.z)
								M.health -= damage
								F_damage(M, damage, "#ff0000")
								M.Death(usr)
								sleep(30)
								usr.atacando=0
								return
							if(random==3)
								usr << "<font size=1>Você ataca [M]!"
								flick("Attack",usr)
								sleep(10)
								usr << "[M] esquivou-se do seu golpe"
								M << "Vc se esquivou do ataque de [usr]"
								sleep(30)
								usr.atacando=0
								return
					else if(usr.Basic)
						if(usr.veloN>M.veloN)
							usr.random = rand(1,3)
							if(random==1)
								usr << "<font size=1>Você ataca [M]!"
								flick("Attack",usr)
								var/damage = round(usr.tai/8) - M.Resistencia/2
								if(damage<=0)damage=0
								view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
								if(usr.forceN>M.forceN*2)
									if(usr.dir==SOUTH)
										M.loc = locate(usr.x,usr.y-3,usr.z)
									if(usr.dir==NORTH)
										M.loc = locate(usr.x,usr.y+3,usr.z)
									if(usr.dir==WEST)
										M.loc = locate(usr.x-3,usr.y,usr.z)
									if(usr.dir==EAST)
										M.loc = locate(usr.x+3,usr.y,usr.z)
								M.health -= damage
								F_damage(M, damage, "#ff0000")
								M.Death(usr)
								sleep(30)
								usr.atacando=0
								return
							if(random==2)
								usr << "<font size=1>Você ataca [M]!"
								flick("Attack",usr)
								var/damage = round(usr.tai/10) - M.Resistencia
								if(damage<=0)damage=0
								view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
								M.health -= damage
								F_damage(M, damage, "#ff0000")
								sleep(10)
								usr << "<font size=1>Você ataca [M] novamente!"
								flick("Attack",usr)
								view() << "<font size=1>[usr] ataca [M] novamente tirando um dano de [damage]!"
								if(usr.forceN>M.forceN*2)
									if(usr.dir==SOUTH)
										M.loc = locate(usr.x,usr.y-3,usr.z)
									if(usr.dir==NORTH)
										M.loc = locate(usr.x,usr.y+3,usr.z)
									if(usr.dir==WEST)
										M.loc = locate(usr.x-3,usr.y,usr.z)
									if(usr.dir==EAST)
										M.loc = locate(usr.x+3,usr.y,usr.z)
								M.health -= damage
								F_damage(M, damage, "#ff0000")
								M.Death(usr)
								sleep(30)
								usr.atacando=0
								return
							if(random==3)
								usr << "<font size=1>Você ataca [M]!"
								flick("Attack",usr)
								var/damage = round(usr.tai/10) - M.Resistencia
								if(damage<=0)damage=0
								view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
								if(usr.forceN>M.forceN*2)
									if(usr.dir==SOUTH)
										M.loc = locate(usr.x,usr.y-3,usr.z)
									if(usr.dir==NORTH)
										M.loc = locate(usr.x,usr.y+3,usr.z)
									if(usr.dir==WEST)
										M.loc = locate(usr.x-3,usr.y,usr.z)
									if(usr.dir==EAST)
										M.loc = locate(usr.x+3,usr.y,usr.z)
								M.health -= damage
								F_damage(M, damage, "#ff0000")
								M.Death(usr)
								sleep(30)
								usr.atacando=0
								return
						if(usr.veloN>M.veloN*2)
							usr.random = rand(1,2)
							if(random==1)
								usr << "<font size=1>Você ataca [M]!"
								flick("Attack",usr)
								var/damage = round(usr.tai/10) - M.Resistencia
								if(damage<=0)damage=0
								view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
								M.health -= damage
								F_damage(M, damage, "#ff0000")
								sleep(10)
								usr << "<font size=1>Você ataca [M] novamente!"
								flick("Attack",usr)
								view() << "<font size=1>[usr] ataca [M] novamente tirando um dano de [damage]!"
								if(usr.forceN>M.forceN*2)
									if(usr.dir==SOUTH)
										M.loc = locate(usr.x,usr.y-3,usr.z)
									if(usr.dir==NORTH)
										M.loc = locate(usr.x,usr.y+3,usr.z)
									if(usr.dir==WEST)
										M.loc = locate(usr.x-3,usr.y,usr.z)
									if(usr.dir==EAST)
										M.loc = locate(usr.x+3,usr.y,usr.z)
								M.health -= damage
								F_damage(M, damage, "#ff0000")
								M.Death(usr)
								sleep(30)
								usr.atacando=0
								return
							if(random==2)
								usr << "<font size=1>Você ataca [M] !"
								flick("Attack",usr)
								var/damage = round(usr.tai/10) - M.Resistencia
								if(damage<=0)damage=0
								view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
								M.health -= damage
								F_damage(M, damage, "#ff0000")
								sleep(10)
								usr << "<font size=1>Você ataca [M] novamente!"
								flick("Attack",usr)
								view() << "<font size=1>[usr] ataca [M] novamente tirando um dano de [damage]!"
								M.health -= damage
								F_damage(M, damage, "#ff0000")
								sleep(10)
								usr << "<font size=1>Você ataca [M] pela terceira vez!"
								flick("Attack",usr)
								view() << "<font size=1>[usr] ataca [M] pela terceira vez tirando um dano de [damage]!"
								if(usr.forceN>M.forceN*2)
									if(usr.dir==SOUTH)
										M.loc = locate(usr.x,usr.y-3,usr.z)
									if(usr.dir==NORTH)
										M.loc = locate(usr.x,usr.y+3,usr.z)
									if(usr.dir==WEST)
										M.loc = locate(usr.x-3,usr.y,usr.z)
									if(usr.dir==EAST)
										M.loc = locate(usr.x+3,usr.y,usr.z)
								M.health -= damage
								F_damage(M, damage, "#ff0000")
								M.Death(usr)
								sleep(30)
								usr.atacando=0
								return
						if(usr.veloN<=M.veloN)
							usr.random = rand(1,3)
							if(random==1)
								usr << "<font size=1>Você ataca [M]!"
								flick("Attack",usr)
								sleep(10)
								usr << "[M] esquivou-se do seu golpe"
								M << "Vc se esquivou do ataque de [usr]"
								sleep(30)
								usr.atacando=0
								return
							if(random==2)
								usr << "<font size=1>Você ataca [M]!"
								flick("Attack",usr)
								var/damage = round(usr.tai/10) - M.Resistencia
								if(damage<=0)damage=0
								view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
								if(usr.forceN>M.forceN*2)
									if(usr.dir==SOUTH)
										M.loc = locate(usr.x,usr.y-3,usr.z)
									if(usr.dir==NORTH)
										M.loc = locate(usr.x,usr.y+3,usr.z)
									if(usr.dir==WEST)
										M.loc = locate(usr.x-3,usr.y,usr.z)
									if(usr.dir==EAST)
										M.loc = locate(usr.x+3,usr.y,usr.z)
								M.health -= damage
								F_damage(M, damage, "#ff0000")
								M.Death(usr)
								sleep(30)
								usr.atacando=0
								return
							if(random==3)
								usr << "<font size=1>Você ataca [M]!"
								flick("Attack",usr)
								sleep(10)
								usr << "[M] esquivou-se do seu golpe"
								M << "Vc se esquivou do ataque de [usr]"
								sleep(30)
								usr.atacando=0
								return
mob/katanaattack
	verb
		Atacar_com_Katana()
			set category = "TaiJutsu"
			for(var/mob/M in get_step(usr,usr.dir))
				if(usr.battlingRC)
					usr<<"Não agora"
					return
				if(usr.Frozen||usr.froze||usr.kawa)
					usr<<"Não agora!"
					return
				if(M.battlingRC)
					usr<<"Não agora"
					return
				if(M.drunk)
					view()<<"[M] desvia do ataque de [usr]!"
					return
				if(M.inspike)
					usr<<"<font size=1>Seu ataque erra [usr]!"
					return
				if(M.sphere)
					usr<<"<font size=1>Seu ataque acerta a areia que o protege!"
					return
				if(M.fantasma)
					usr<<"<font size=1>Vc não consegue tocá-lo!"
					return
				if(usr.stamina<=500)
					usr<<"Pouca Stamina (500)."
					return
				if(M.PK==0)
					usr<<"Zona NON-PK!"
					return
				if(usr.PK==0)
					usr<<"Zona NON-PK!"
					return
				if(usr.atacando)
					return
				if(M.Kaiten)
					var/damage = round(usr.shurikenskill-M.shurikenskill/4) - M.Resistencia/2
					if(damage <= 1)
						damage = 1
						usr <<"<font size=1>Você ataca [M], mas seu Hakkekushou Kaiten reflete o dano de volta à você"
						M <<"<font size=1>Você reflete o ataque de [usr], causando dano à ele mesmo"
						usr.health -= damage
						F_damage(usr, damage, "#ff0000")
						usr.Death(M)
						usr.dead = 1
						return
					else
						usr <<"<font size=1>Você ataca [M], mas seu Hakkekushou Kaiten reflete o dano de volta à você"
						M <<"<font size=1>Você reflete o ataque de [usr], causando dano à ele mesmo"
						usr.health -= damage
						F_damage(usr, damage, "#ff0000")
						usr.Death(M)
						src.dead = 1
						return
				else
					usr.atacando=1
					usr.stamina-=500
					if(usr.Tekken)
						if(usr.elementojunto==1)
							if(usr.Elemento=="Raiton")
								usr.random = rand(1,2)
								if(random==1)
									usr << "<font size=1>Você ataca [M]!"
									flick("Attack",usr)
									var/damage = round(usr.tai/3 + usr.swordD/2) - M.Resistencia/2
									if(damage<=0)damage=0
									view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
									M.health -= damage
									F_damage(M, damage, "#ff0000")
									M.Death(usr)
									sleep(20)
									usr.atacando=0
									return
								if(random==2)
									usr << "<font size=1>Você ataca [M] com sua espada transmitindo seu chakra elemental!"
									flick("Attack",usr)
									var/damage = round(usr.tai/3 + usr.swordD/2) - M.Resistencia/2
									if(damage<=0)damage=0
									view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
									M<<"O chakra raiton contido na lamina da espada de [usr] paralisou seus musculos"
									M.health -= damage
									M.Frozen=1
									F_damage(M, damage, "#ff0000")
									M.Death(usr)
									sleep(40)
									M.Frozen=0
									usr.atacando=0
									return
							if(usr.Elemento=="Suiton")
								usr.random = rand(1,2)
								if(random==1)
									usr << "<font size=1>Você ataca [M]!"
									flick("Attack",usr)
									var/damage = round(usr.tai/7 + usr.swordD/2) - M.Resistencia
									if(damage<=0)damage=0
									view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
									M.health -= damage
									F_damage(M, damage, "#ff0000")
									M.Death(usr)
									sleep(20)
									usr.atacando=0
									return
								if(random==2)
									usr << "<font size=1>Você ataca [M] com sua espada transmitindo seu chakra elemental!"
									flick("Attack",usr)
									var/damage = round(usr.tai/7 + usr.swordD/2 + usr.tai/3.5) - M.Resistencia
									if(damage<=0)damage=0
									view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
									M<<"O chakra suiton contido na lamina da espada de [usr] lhe deixou impossiblitado de usar jutsus katon"
									M.health -= damage
									M.molhado=1
									F_damage(M, damage, "#ff0000")
									M.Death(usr)
									sleep(40)
									usr.atacando=0
									sleep(110)
									usr.molhado=0
									return
							if(usr.Elemento=="Doton")
								usr.random = rand(1,2)
								if(random==1)
									usr << "<font size=1>Você ataca [M]!"
									flick("Attack",usr)
									var/damage = round(usr.tai/7 + usr.swordD/2) - M.Resistencia
									if(damage<=0)damage=0
									view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
									M.health -= damage
									F_damage(M, damage, "#ff0000")
									M.Death(usr)
									sleep(20)
									usr.atacando=0
									return
								if(random==2)
									usr << "<font size=1>Você ataca [M] com sua espada transmitindo seu chakra elemental!"
									flick("Attack",usr)
									var/damage = round(usr.tai/4 + usr.swordD/1.5) - M.Resistencia
									if(damage<=0)damage=0
									view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
									M<<"O chakra doton contido na lamina da espada de [usr] deixou seu ataque muito mais potente."
									M.health -= damage
									F_damage(M, damage, "#ff0000")
									M.Death(usr)
									sleep(40)
									usr.atacando=0
									return
							if(usr.Elemento=="Katon")
								usr.random = rand(1,2)
								if(random==1)
									usr << "<font size=1>Você ataca [M]!"
									flick("Attack",usr)
									var/damage = round(usr.tai/7 + usr.swordD/2) - M.Resistencia
									if(damage<=0)damage=0
									view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
									M.health -= damage
									F_damage(M, damage, "#ff0000")
									M.Death(usr)
									sleep(20)
									usr.atacando=0
									return
								if(random==2)
									usr << "<font size=1>Você ataca [M] com sua espada transmitindo seu chakra elemental!"
									flick("Attack",usr)
									var/damage = round(usr.tai/4 + usr.swordD/2) - M.Resistencia
									if(damage<=0)damage=0
									view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
									M<<"O chakra katon contido na lamina da espada de [usr] incendiou seu corpo."
									//M.burned=1
								//	M.burnon()
									M.health -= damage
									F_damage(M, damage, "#ff0000")
									M.Death(usr)
									sleep(40)
									usr.atacando=0
									sleep(60)
									M.burned=0
									return
							if(usr.Elemento=="Fuuton")
								usr.random = rand(1,2)
								if(random==1)
									usr << "<font size=1>Você ataca [M]!"
									flick("Attack",usr)
									var/damage = round(usr.tai/3 + usr.swordD/2) - M.Resistencia/2
									if(damage<=0)damage=0
									view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
									M.health -= damage
									F_damage(M, damage, "#ff0000")
									M.Death(usr)
									sleep(20)
									usr.atacando=0
									return
								if(random==2)
									usr << "<font size=1>Você ataca [M] com sua espada transmitindo seu chakra elemental!"
									flick("Attack",usr)
									var/damage = round(usr.tai/3 + usr.swordD/2) - M.Resistencia/2
									if(damage<=0)damage=0
									view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
									M<<"O chakra fuuton contido na lamina da espada de [usr] deixou o fio de sua espada muito mais longo. Vc foi pego no vórtice de vento"
									M.health -= damage
									F_damage(M, damage, "#ff0000")
									M.Death(usr)
									sleep(10)
									usr.atacando=0
									return
						else
							usr << "<font size=1>Você ataca [M]!"
							flick("Attack",usr)
							var/damage = round(usr.shurikenskill/3.75) - M.Resistencia/1.5
							if(damage<=0)damage=0
							view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
							M.health -= damage
							F_damage(M, damage, "#ff0000")
							M.Death(usr)
							sleep(20)
							usr.atacando=0
							return
					else
						usr<<"Vc precisa estar usando Kenjutsu antes"
						return

mob/var/tmp/atacandozamba=0
mob/sword
	verb
		Atacar_com_Espada()
			set category = "TaiJutsu"
			for(var/mob/M in get_step(usr,usr.dir))
				if(usr.battlingRC)
					usr<<"Não agora"
					return
				if(M.battlingRC)
					usr<<"Não agora"
					return
				if(M.drunk)
					view()<<"[M] desvia do ataque de [usr]!"
					return
				if(M.inspike)
					usr<<"<font size=1>Seu ataque erra [usr]!"
					return
				if(M.sphere)
					usr<<"<font size=1>Seu ataque acerta a areia que o protege!"
					return
				if(M.fantasma)
					usr<<"<font size=1>Vc não consegue tocá-lo!"
					return
				if(usr.stamina<=500)
					usr<<"Pouca Stamina (500)."
					return
				if(M.PK==0)
					usr<<"Zona NON-PK!"
					return
				if(usr.PK==0)
					usr<<"Zona NON-PK!"
					return
				if(usr.atacando)
					return
				if(M.Kaiten)
					var/damage = usr.shurikenskill/7 - usr.Resistencia/2
					if(damage <= 1)
						damage = 1
						usr <<"<font size=1>Você ataca [M], mas seu Hakkekushou Kaiten reflete o dano de volta à você"
						M <<"<font size=1>Você reflete o ataque de [usr], causando dano à ele mesmo"
						usr.health -= damage
						F_damage(usr, damage, "#ff0000")
						usr.Death(M)
						usr.dead = 1
						return
					else
						usr <<"<font size=1>Você ataca [M], mas seu Hakkekushou Kaiten reflete o dano de volta à você"
						M <<"<font size=1>Você reflete o ataque de [usr], causando dano à ele mesmo"
						usr.health -= damage
						F_damage(usr, damage, "#ff0000")
						usr.Death(M)
						src.dead = 1
						return
				else
					usr.atacando=1
					usr.stamina-=500
					if(usr.Tekken)
						if(usr.elementojunto==1)
							if(usr.Elemento=="Raiton")
								usr.random = rand(1,2)
								if(random==1)
									usr << "<font size=1>Você ataca [M]!"
									flick("Attack",usr)
									var/damage = usr.shurikenskill/7 + usr.trovaoN*1.75 - M.Resistencia/2
									if(damage<=0)damage=0
									view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
									M.health -= damage
									F_damage(M, damage, "#ff0000")
									M.Death(usr)
									sleep(20)
									usr.atacando=0
									return
								if(random==2)
									usr << "<font size=1>Você ataca [M] com sua espada transmitindo seu chakra elemental!"
									flick("Attack",usr)
									var/damage = usr.shurikenskill/7 + usr.trovaoN*1.75 - M.Resistencia/2
									if(damage<=0)damage=0
									view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
									M<<"O chakra raiton contido na lamina da espada de [usr] paralisou seus musculos"
									M.health -= damage
									M.Frozen=1
									F_damage(M, damage, "#ff0000")
									M.Death(usr)
									sleep(40)
									M.Frozen=0
									usr.atacando=0
									return
							if(usr.Elemento=="Suiton")
								usr.random = rand(1,2)
								if(random==1)
									usr << "<font size=1>Você ataca [M]!"
									flick("Attack",usr)
									var/damage = usr.shurikenskill/7 + usr.aguaN*1.75 - M.Resistencia/2
									if(damage<=0)damage=0
									view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
									M.health -= damage
									F_damage(M, damage, "#ff0000")
									M.Death(usr)
									sleep(20)
									usr.atacando=0
									return
								if(random==2)
									usr << "<font size=1>Você ataca [M] com sua espada transmitindo seu chakra elemental!"
									flick("Attack",usr)
									var/damage = usr.shurikenskill/7 + usr.aguaN*1.75 - M.Resistencia/2
									if(damage<=0)damage=0
									view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
									M<<"O chakra suiton contido na lamina da espada de [usr] lhe deixou impossiblitado de usar jutsus katon"
									M.health -= damage
									M.molhado=1
									F_damage(M, damage, "#ff0000")
									M.Death(usr)
									sleep(40)
									usr.atacando=0
									sleep(110)
									usr.molhado=0
									return
							if(usr.Elemento=="Doton")
								usr.random = rand(1,2)
								if(random==1)
									usr << "<font size=1>Você ataca [M]!"
									flick("Attack",usr)
									var/damage = usr.shurikenskill/7 + usr.terraN*1.75 - M.Resistencia/2
									if(damage<=0)damage=0
									view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
									M.health -= damage
									F_damage(M, damage, "#ff0000")
									M.Death(usr)
									sleep(20)
									usr.atacando=0
									return
								if(random==2)
									usr << "<font size=1>Você ataca [M] com sua espada transmitindo seu chakra elemental!"
									flick("Attack",usr)
									var/damage = usr.shurikenskill/7 + usr.terraN*1.75 - M.Resistencia/2
									if(damage<=0)damage=0
									view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
									M<<"O chakra doton contido na lamina da espada de [usr] deixou seu ataque muito mais potente."
									M.health -= damage
									F_damage(M, damage, "#ff0000")
									M.Death(usr)
									sleep(40)
									usr.atacando=0
									return
							if(usr.Elemento=="Katon")
								usr.random = rand(1,2)
								if(random==1)
									usr << "<font size=1>Você ataca [M]!"
									flick("Attack",usr)
									var/damage = usr.shurikenskill/7 + usr.fogoN*1.75 - M.Resistencia/2
									if(damage<=0)damage=0
									view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
									M.health -= damage
									F_damage(M, damage, "#ff0000")
									M.Death(usr)
									sleep(20)
									usr.atacando=0
									return
								if(random==2)
									usr << "<font size=1>Você ataca [M] com sua espada transmitindo seu chakra elemental!"
									flick("Attack",usr)
									var/damage = usr.shurikenskill/7 + usr.fogoN*1.75 - M.Resistencia/2
									if(damage<=0)damage=0
									view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
									M<<"O chakra katon contido na lamina da espada de [usr] incendiou seu corpo."
									//M.burned=1
								//	M.burnon()
									M.health -= damage
									F_damage(M, damage, "#ff0000")
									M.Death(usr)
									sleep(40)
									usr.atacando=0
									sleep(60)
									M.burned=0
									return
							if(usr.Elemento=="Fuuton")
								usr.random = rand(1,2)
								if(random==1)
									usr << "<font size=1>Você ataca [M]!"
									flick("Attack",usr)
									var/damage = usr.shurikenskill/7 + usr.ventoN*1.75 - M.Resistencia/2
									if(damage<=0)damage=0
									view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
									M.health -= damage
									F_damage(M, damage, "#ff0000")
									M.Death(usr)
									sleep(20)
									usr.atacando=0
									return
								if(random==2)
									usr << "<font size=1>Você ataca [M] com sua espada transmitindo seu chakra elemental!"
									flick("Attack",usr)
									var/damage = usr.shurikenskill/7 + usr.ventoN*1.75 - M.Resistencia/2
									if(damage<=0)damage=0
									view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
									M<<"O chakra fuuton contido na lamina da espada de [usr] deixou o fio de sua espada muito mais longo. Vc foi pego no vórtice de vento"
									M.health -= damage
									F_damage(M, damage, "#ff0000")
									M.Death(usr)
									sleep(10)
									usr.atacando=0
									return
						else
							usr << "<font size=1>Você ataca [M]!"
							flick("Attack",usr)
							var/damage = usr.shurikenskill/7 - M.Resistencia/2
							if(damage<=0)damage=0
							view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
							M.health -= damage
							F_damage(M, damage, "#ff0000")
							M.Death(usr)
							sleep(20)
							usr.atacando=0
							return
					else
						usr<<"Vc precisa estar usando Kenjutsu antes"
						return



mob
	proc
		eletric()
			src.froze = 1
			src.move=0
			src.overlays+='elec1.dmi'
			sleep(50)
			src.overlays-='elec1.dmi'
			src.froze=0
			src.move=1
			src.HakkeFreeze=0
			src.karamatsuon=0
			src.relampagoop=0

mob/var/list/MirrorDeletar = list()

mob/var/freekill=0

mob/var/morreunaguerra=0
mob/var/matouareavip=0
mob/var/matouarealogs=0

mob
	proc
		Death(mob/M)
			if(src.genjutsuativo==M)
				M<<"Vc atacou um genjutsu"
				src.genjutsuativo=0
				M.GenjOfensivo()
				return
			if(src.izanagion)
				if(src.client)
					src<<"Você desfaz o genjutsu e volta a sua realidade!"
					src.health=M.maxhealth/2
					M<<"Parece que ele não está morto!"
					src.izanagion=0
					return
			if(src.health >= 1) return
			if(M.client&&src.client)if(M<>src)
				if(src.client.computer_id == M.client.computer_id)
					if(src.freekill<=2 || M.freekill<=2)
						src<<"Tentando fazer free kill, safado."
						M<<"Você sabe do que eu estou falando!"
						world<<"[src] e [M] foram desconectados por tentar fazer Free-Kill caso continuem poderão ser banidos."
						src.freekill +=1
						M.freekill +=1
						//M.SalvarAgora()
						//src.SalvarAgora()
						spawn del(M)
						spawn del(src)
						return
					else
						Bans:Add(M.key)
						Bans[M.key]="[M.client.address]"
						Bans:Add(src.key)
						Bans[src.key]="[src.client.address]"
						CIDBans:Add(M.client.computer_id)
						CIDBans[M.key] = "[M.client.computer_id]"
						CIDBans[src.key] = "[src.client.computer_id]"
						world<<"<font color = red>[src] e [M] levaram Ban por tentar fazer FreeKill.</font>"
						text2file("[time2text(world.realtime)]: <b>[M]</b>(Key: [M.key] || CID: [M.client.computer_id]) e <b>[src]</b>(Key:[src.key] || CID: [src.client.computer_id] ) tiveram suas <b>Keys Banidas</b> por fazer FreeKill mais de uma vez!<BR>","GMlog.html")
						//M.SalvarAgora()
						//src.SalvarAgora()
						spawn del(M)
						spawn del(src)
						return
			if(src.morreunaguerra)
				M<<"[src] já está morto!"
				if(src.health<=0)src.health=0
				return
			if(M.z==2&&M.x>69&&M.x<101&&M.y>299&&M.y<324)
				if(src.client)
					if(M.matouarealogs<3)
						world<<"[M] foi desconectado por tentar matar na area de Logs Especiais, caso continue poderá ser severamente punido!"
						M.matouarealogs+=1
						//M.SalvarAgora()
						del(M)
					else if(M.matouarealogs>=3)
						Bans:Add(M.key)
						Bans[M.key]="[M.client.address]"
						world<<"<font color = red>[M] foi Banido por tentar matar na area de Logs Especiais.</font>"
						text2file("[time2text(world.realtime)]: <b>[M]</b>(Key: [M.key] || CID: [M.client.computer_id]) teve sua <b>Keys Banidas</b> por matar na area de Logs Especiais!<BR>","GMlog.html")
						//M.SalvarAgora()
						del(M)
			if(M.z==8&&M.x>0&&M.x<91&&M.y>0&&M.y<54)
				if(src.client)
					if(src != M)
						if(M.matouareavip<=10000)
							world<<output("[M] foi desconectado por tentar matar na area vip, caso continue poderá ser severamente punido!","output2.sistema")
							M.matouareavip+=1
							//M.SalvarAgora()
							del(M)
						else if(M.matouareavip>=10000)
							Bans:Add(M.key)
							Bans[M.key]="[M.client.address]"
							world<<"<font color = red>[M] foi Banido por tentar matar na area vip.</font>"
							text2file("[time2text(world.realtime)]: <b>[M]</b>(Key: [M.key] || CID: [M.client.computer_id]) teve sua <b>Keys Banidas</b> por matar na area vip!<BR>","GMlog.html")
							//M.SalvarAgora()
							del(M)

			if(src in PlayersSuporte)
				if(M in PlayersSuporte)
					M<<"Você não pode matar no suporte"
					world<<"[M] tentou matar [src], mas ambos estavam no suporte."
					return
/*			for(var/mob/enemy/Mizu2/K in world)
				for(var/mob/S in world)
					if(S == K.original)
						S.mizubunshin -= 1
				del(K)*/
			if(src.imortal == 1)
				usr<<"Ele não pode morrer!"
				return
			for(var/mob/failedslug/F in world)
				del(F)
				usr<<"Você está tentando ganhar KILL é? safado!"
				return
			for(var/mob/failedsnake/G in world)
				del(G)
				usr<<"Você está tentando ganhar KILL é? safado!"
				return
			for(var/mob/failedfrog/H in world)
				del(H)
				usr<<"Você está tentando ganhar KILL é? safado!"
				return
			for(var/mob/failedbee/I in world)
				del(I)
				usr<<"Você está tentando ganhar KILL é? safado!"
				return
			for(var/mob/Kawarimi/J in world)
				del(J)
				usr<<"Você está tentando ganhar KILL é? safado!"
				return
			if(src.caugyt==1)
				return
			if(src.jashin==1)
				if(istype(M,/obj/))
					del(M)
					return
				if(istype(M,/obj/WindmillNPC))
					del(M)
					return
				if(istype(M,/obj/Peins))
					del(M)
					return
				if(istype(M,/obj/katonG))
					del(M)
					return
				if(istype(M,/obj/Shuriken))
					del(M)
					return
				M.health -=M.tai/5 + M.nin/5 + M.gen/5
				M<<"Quem sofre os danos é você"
				if(M.health<=0)
					M.health=0
					M.Death(src)
				return
			if(src.genjcorvo==1)
				if(src.gen>=M.gen)
					M<<"Vc atacou um genjutsu"
					src.health = src.maxhealth/2
					src.genjcorvo=0
					src.Frozen=0
					src.parado=0
					M.qmtefodeu=src.key
					M.Corvos()
					//src.vitorias+=1
				src<<"Seu genjutsu falhou"
				src.genjcorvo=0
				src.Frozen=0
			if(src.genjnpc==1)
				if(M.party&&M.partysensei==src.partysensei)return
				M<<"Vc atacou um genjutsu"
				M.GenjB()
				del(src)
			if(src.mizubnpc==1)
				if(M.party&&M.partysensei==src.partysensei)return
				M<<"Vc atacou um clone de água!"
				M.MizuB()
				del(src)
			if(src.eletricnpc==1)
				if(M.party&&M.partysensei==src.partysensei)return
				M<<"Vc atacou um clone eletrico"
				M.eletric()
				del(src)
			if(src.clonenpc==1)
				M<<"Voce venceu...parabens..agora volte e conte ao Bee!"
				M.foicachoeira=1
				M.loc=locate(456,174,3)
				del(src)
			if(src.kibakunpc==1)
				M<<"Vc atacou Bunshin de Kibaku Nendo"
				M.ExpB()
				del(src)
			if(istype(src,/mob/npcs/Bunshin))
				flick("smoke2",src)
				del(src)
			if(istype(src,/mob/npcs/KBunshin))
				flick("smoke2",src)
				del(src)
			if(src.health<=0&&src.kakuzusub&&src.coracao>1)
				view(src)<<"[src] perdeu um dos seus corações!"
				src.coracao -=1
				src.health = src.maxhealth
				src.chakra = src.Mchakra
			if(src.health <= 0)
				if(istype(src,/mob/enemy/Clanmember))
					M<<"Você derrotou um dos 3 membros do clã!"
					M.quest=1
					if(M.Yen>=5000000)
						M<<"Você já está carregando mais Ryous do que é capaz."
						del(src)
					else
						var/yenganho=rand(500,1000)
						M.Yen+=yenganho
						M.honra+=rand(2,5)
						M<<"Você recebeu [yenganho] Ryous"
						del(src)

/*				if(src.name == "{Enemy}Ladrão")
					if(src in oview(3))
						M<<"Você derrotou um ladrao do bando!"
						M.ladroes+=1
						if(M.inmissionB==1)
							M.roguekills+=1
							if(M.roguekills>=10)
								M.bmission+=1
								M.honra+=rand(18,25)
								M.Yen+=50000
								M.roguekills=0
								M.inmissionB=0
								M << "Parabéns, você finalizou os Nukenins/Ladrões. Bom trabalho!"
								if(!(M.key in CanNotMiss))
									M.missaostatskills+=2
									M.pontodestats+=2
									M.exp+=260
									M.Levelup()
									M<<"Você recebeu XP e ponto de Stats!"
									if(M.missaostatskills%50==0) CanNotMiss+=M.key
								else
									M<<"Você não pode mais receber XP por missões por hoje!"
								del(src)
					else
						M<<"Você precisa estar mais próximo para matá-lo."*/

				if(src.name == "{Bijuu}Shukaku")
					world<<"O Shukaku foi derrotado!"
					src.overlays-=/obj/IchibipartesX/IPart1
					src.overlays-=/obj/IchibipartesX/IPart2
					src.overlays-=/obj/IchibipartesX/IPart3
					src.overlays-=/obj/IchibipartesX/IPart4
					src.overlays-=/obj/IchibipartesX/IPart6
					src.overlays-=/obj/IchibipartesX/IPart7
					src.overlays-=/obj/IchibipartesX/IPart8
					src.overlays-=/obj/IchibipartesX/IPart9
					M.honra+=1000
					M.Yen+=5000000
					M << "Voce derrotou o Shukaku!"
					M.tempoteichibi=1
					M.verbs += new /mob/jutsus/verb/MakeIchibi()
					var/obj/PoteIchibi/I = new/obj/PoteIchibi
					I.loc = M
					del(src)
					if(M.party)
						for(var/mob/A in oview(5))
							if(A.partysensei == M.partysensei)
								A.honra+=250
								A.Yen+=1500000
								A << "[M] derrotou o Shukaku e você ajudou!"
					text2file("[time2text(world.realtime)]: <b>[M]</b>(Key: [M.key] || matou <b>[src]</b>!<BR>","GMlog.html")


				if(src.name == "{Bijuu}Matatabi")
					world<<"O Matatabi foi derrotado!"
					src.overlays-=/obj/NibipartesX/MPart1
					src.overlays-=/obj/NibipartesX/MPart2
					src.overlays-=/obj/NibipartesX/MPart3
					src.overlays-=/obj/NibipartesX/MPart4
					src.overlays-=/obj/NibipartesX/MPart6
					src.overlays-=/obj/NibipartesX/MPart7
					src.overlays-=/obj/NibipartesX/MPart8
					src.overlays-=/obj/NibipartesX/MPart9
					M.honra+=1000
					M.Yen+=5000000
					M << "Voce derrotou o Matatabi!"
					M.tempotenibi=1
					M.verbs += new /mob/jutsus/verb/MakeNibi()
					var/obj/PoteNibi/N = new/obj/PoteNibi
					N.loc = M
					del(src)
					if(M.party)
						for(var/mob/A in oview(5))
							if(A.partysensei == M.partysensei)
								A.honra+=250
								A.Yen+=1500000
								A << "[M] derrotou o Matatabi e você ajudou!"
					text2file("[time2text(world.realtime)]: <b>[M]</b>(Key: [M.key] || matou <b>[src]</b>!<BR>","GMlog.html")


				if(src.name == "{Bijuu}Isobu")
					world<<"O Isobu foi derrotado!"
					src.overlays-=/obj/Sanbipartes/HPart1
					src.overlays-=/obj/Sanbipartes/HPart2
					src.overlays-=/obj/Sanbipartes/HPart3
					src.overlays-=/obj/Sanbipartes/HPart4
					src.overlays-=/obj/Sanbipartes/HPart5
					src.overlays-=/obj/Sanbipartes/HPart6
					src.overlays-=/obj/Sanbipartes/HPart8
					src.overlays-=/obj/Sanbipartes/HPart9
					src.overlays-=/obj/Sanbipartes/HPart10
					src.overlays-=/obj/Sanbipartes/HPart11
					src.overlays-=/obj/Sanbipartes/HPart12
					src.overlays-=/obj/Sanbipartes/HPart13
					src.overlays-=/obj/Sanbipartes/HPart14
					src.overlays-=/obj/Sanbipartes/HPart15
					src.overlays-=/obj/Sanbipartes/HPart16
					M.honra+=1000
					M.Yen+=5000000
					M << "Voce derrotou o Isobu!"
					M.tempotesanbi=1
					M.verbs += new /mob/jutsus/verb/MakeSanbi()
					var/obj/PoteSanbi/S = new/obj/PoteSanbi
					S.loc = M
					del(src)
					if(M.party)
						for(var/mob/A in oview(5))
							if(A.partysensei == M.partysensei)
								A.honra+=250
								A.Yen+=1500000
								A << "[M] derrotou o Isobu e você ajudou!"
					text2file("[time2text(world.realtime)]: <b>[M]</b>(Key: [M.key] || matou <b>[src]</b>!<BR>","GMlog.html")


				if(src.name == "{Bijuu}Son Goku")
					world<<"O Son Goku foi derrotado!"
					src.overlays-=/obj/YonbipartesX/YPart1
					src.overlays-=/obj/YonbipartesX/YPart2
					src.overlays-=/obj/YonbipartesX/YPart3
					src.overlays-=/obj/YonbipartesX/YPart4
					src.overlays-=/obj/YonbipartesX/YPart6
					src.overlays-=/obj/YonbipartesX/YPart7
					src.overlays-=/obj/YonbipartesX/YPart8
					src.overlays-=/obj/YonbipartesX/YPart9
					M.honra+=1000
					M.Yen+=5000000
					M << "Voce derrotou o Son Goku!"
					M.tempoteyonbi=1
					M.verbs += new /mob/jutsus/verb/Makeyonbi()
					var/obj/PoteYonbi/Y = new/obj/PoteYonbi
					Y.loc = M
					del(src)
					if(M.party)
						for(var/mob/A in oview(5))
							if(A.partysensei == M.partysensei)
								A.honra+=250
								A.Yen+=1500000
								A << "[M] derrotou o Son Goku e você ajudou!"
					text2file("[time2text(world.realtime)]: <b>[M]</b>(Key: [M.key] || matou <b>[src]</b>!<BR>","GMlog.html")


				if(src.name == "{Bijuu}Kokuo")
					src.overlays-=/obj/GobipartesX/GPart1
					src.overlays-=/obj/GobipartesX/GPart2
					src.overlays-=/obj/GobipartesX/GPart3
					src.overlays-=/obj/GobipartesX/GPart4
					src.overlays-=/obj/GobipartesX/GPart6
					src.overlays-=/obj/GobipartesX/GPart7
					src.overlays-=/obj/GobipartesX/GPart8
					src.overlays-=/obj/GobipartesX/GPart9
					world<<"O Kokuo foi derrotado!"
					M.honra+=1000
					M.Yen+=5000000
					M.tempotegobi=1
					M << "Voce derrotou o Kokuo!"
					M.verbs += new /mob/jutsus/verb/MakeGobi()
					var/obj/PoteGobi/G = new/obj/PoteGobi
					G.loc = M
					del(src)
					if(M.party)
						for(var/mob/A in oview(5))
							if(A.partysensei == M.partysensei)
								A.honra+=250
								A.Yen+=1500000
								A << "[M] derrotou o Kokuo e você ajudou!"
					text2file("[time2text(world.realtime)]: <b>[M]</b>(Key: [M.key] || matou <b>[src]</b>!<BR>","GMlog.html")


				if(src.name == "{Bijuu}Saiken")
					world<<"O Saiken foi derrotado!"
					src.overlays-=/obj/RokubipartesX/RPart1
					src.overlays-=/obj/RokubipartesX/RPart2
					src.overlays-=/obj/RokubipartesX/RPart3
					src.overlays-=/obj/RokubipartesX/RPart4
					src.overlays-=/obj/RokubipartesX/RPart6
					src.overlays-=/obj/RokubipartesX/RPart7
					src.overlays-=/obj/RokubipartesX/RPart8
					src.overlays-=/obj/RokubipartesX/RPart9
					M.honra+=1000
					M.Yen+=5000000
					M << "Voce derrotou o Saiken!"
					M.tempoterokubi=1
					M.verbs += new /mob/jutsus/verb/MakeRokubi()
					var/obj/PoteRokubi/R = new/obj/PoteRokubi
					R.loc = M
					del(src)
					if(M.party)
						for(var/mob/A in oview(5))
							if(A.partysensei == M.partysensei)
								A.honra+=250
								A.Yen+=1500000
								A << "[M] derrotou o Saiken e você ajudou!"
					text2file("[time2text(world.realtime)]: <b>[M]</b>(Key: [M.key] || matou <b>[src]</b>!<BR>","GMlog.html")


				if(src.name == "{Bijuu}Choumei")
					world<<"O Choumei foi derrotado!"
					src.overlays-=/obj/NanabipartesX/NPart1
					src.overlays-=/obj/NanabipartesX/NPart2
					src.overlays-=/obj/NanabipartesX/NPart3
					src.overlays-=/obj/NanabipartesX/NPart4
					src.overlays-=/obj/NanabipartesX/NPart6
					src.overlays-=/obj/NanabipartesX/NPart7
					src.overlays-=/obj/NanabipartesX/NPart8
					src.overlays-=/obj/NanabipartesX/NPart9
					M.honra+=1000
					M.Yen+=5000000
					M << "Voce derrotou o Choumei!"
					M.tempotenanabi=1
					M.verbs += new /mob/jutsus/verb/MakeSishibi()
					var/obj/PoteShichibi/SC = new/obj/PoteShichibi
					SC.loc = M
					del(src)
					if(M.party)
						for(var/mob/A in oview(5))
							if(A.partysensei == M.partysensei)
								A.honra+=250
								A.Yen+=1500000
								A << "[M] derrotou o Choumei e você ajudou!"
					text2file("[time2text(world.realtime)]: <b>[M]</b>(Key: [M.key] || matou <b>[src]</b>!<BR>","GMlog.html")


				if(src.name == "{Bijuu}Gyuki")
					world<<"O Gyuki foi derrotado!"
					src.overlays-=/obj/Hachibipartes/HPart1
					src.overlays-=/obj/Hachibipartes/HPart2
					src.overlays-=/obj/Hachibipartes/HPart3
					src.overlays-=/obj/Hachibipartes/HPart4
					src.overlays-=/obj/Hachibipartes/HPart5
					src.overlays-=/obj/Hachibipartes/HPart6
					src.overlays-=/obj/Hachibipartes/HPart8
					src.overlays-=/obj/Hachibipartes/HPart9
					src.overlays-=/obj/Hachibipartes/HPart10
					src.overlays-=/obj/Hachibipartes/HPart11
					src.overlays-=/obj/Hachibipartes/HPart12
					src.overlays-=/obj/Hachibipartes/HPart13
					src.overlays-=/obj/Hachibipartes/HPart14
					src.overlays-=/obj/Hachibipartes/HPart15
					src.overlays-=/obj/Hachibipartes/HPart16
					M.honra+=1000
					M.Yen+=5000000
					M.tempotehachibi=1
					M << "Voce derrotou o Gyuki!"
					M.verbs += new /mob/jutsus/verb/MakeHachibi()
					var/obj/PoteHachibi/H = new/obj/PoteHachibi
					H.loc = M
					del(src)
					if(M.party)
						for(var/mob/A in oview(5))
							if(A.partysensei == M.partysensei)
								A.honra+=250
								A.Yen+=1500000
								A << "[M] derrotou o Gyuki e você ajudou!"
					text2file("[time2text(world.realtime)]: <b>[M]</b>(Key: [M.key] || matou <b>[src]</b>!<BR>","GMlog.html")


				if(src.name == "{Bijuu}Kurama")
					world<<"O Kurama foi derrotado!"
					src.overlays-=/obj/KyuubipartesX/KPart1
					src.overlays-=/obj/KyuubipartesX/KPart2
					src.overlays-=/obj/KyuubipartesX/KPart3
					src.overlays-=/obj/KyuubipartesX/KPart4
					src.overlays-=/obj/KyuubipartesX/KPart6
					src.overlays-=/obj/KyuubipartesX/KPart7
					src.overlays-=/obj/KyuubipartesX/KPart8
					src.overlays-=/obj/KyuubipartesX/KPart9
					M.honra+=1000
					M.Yen+=5000000
					M.tempotekyuubi=1
					M << "Voce derrotou o Kurama!"
					M.verbs += new /mob/jutsus/verb/MakeKyuubi()
					var/obj/PoteKyuubi/K = new/obj/PoteKyuubi
					K.loc = M
					del(src)
					if(M.party)
						for(var/mob/A in oview(5))
							if(A.partysensei == M.partysensei)
								A.honra+=250
								A.Yen+=1500000
								A << "[M] derrotou o Kurama e você ajudou!"
					text2file("[time2text(world.realtime)]: <b>[M]</b>(Key: [M.key] || matou <b>[src]</b>!<BR>","GMlog.html")


/*				if(src.name == "{Enemy}Ninja Assassino")
					if(src in oview())
						M<<"Você derrotou o Ninja Assassino!"
						if(M.inmissionB2==1)
							M.bmission+=1
							M.honra+=rand(10,25)
							M.Yen+=50000
							M.inmissionB2=0
							M << "Parabéns, você completou sua missão!"
							if(!(M.key in CanNotMiss))
								M.missaostatskills+=2
								M.pontodestats+=2
								M.exp+=260
								M.Levelup()
								M<<"Você recebeu XP e ponto de Stats!"
								if(M.missaostatskills%50==0) CanNotMiss+=M.key
							else
								M<<"Você não pode mais receber XP por missões por hoje!"
						del(src)
					else
						M<<"Você precisa estar mais próximo para matá-lo."*/

				if(istype(src,/mob/samurais/Estshi))
					M<<"Você derrotou um Estudante Shinobi!"
					M.gskill +=1
					if(!src.client)del(src)

				if(src.name == "{Enemy}Nukenin")
					M<<"Você derrotou um Nukenin!"
					M.honra+=rand(2,5)
					if(M.inmissionB==1)
						M.roguekills+=1
						if(M.roguekills>=20)
							M.bmission+=1
							M.honra+=rand(10,25)
							M.Yen+=usr.roguekills*6000
							M.roguekills=0
							M.inmissionB=0
							M << "Parabéns, você finalizou os Nukenins/Ladrões, bom trabalho!"
					del(src)

				if(istype(src,/mob/enemy/leader))
					if(M.inmission)
						M<<"Você se saiu vitorioso! Aceite sua recompensa, bom trabalho!"
						M.inmission=0
						M.bmission+=1
						M.missingkills+=1
						M.loc=locate(39,68,1)
						if(M.Yen>=5000000)
							M<<"Você já está carregando mais Ryous do que é capaz."
							if(!src.client)del(src)
						else
							var/yenganho=rand(5000,10000)
							M.Yen+=yenganho
							M.honra+=rand(10,20)
							M<<"Você recebeu [yenganho] Ryous"
							if(!src.client)del(src)
				if(istype(src,/mob/samurais/orochimaru))
					if(M.inmission)
						M.inmissionS=0
						M<<"Você completou sua missão e voltou seguramente para casa!"
						M.inmission=0
						M.smission+=1
						M.loc=locate(39,68,1)
						if(M.Yen>=5000000)
							M<<"Você já está carregando mais Ryous do que é capaz."
							if(!src.client)del(src)
						else
							var/yenganho=250000
							M.Yen+=yenganho
							M.honra+=rand(25,40)
							M<<"Você recebeu [yenganho] Ryous"
						if(!(M.key in CanNotMiss))
							M.missaostatskills+=2
							M.pontodestats+=2
							M.exp+=260
							M.Levelup()
							M<<"Você recebeu XP e ponto de Stats!"
							if(M.missaostatskills%50==0) CanNotMiss+=M.key
						else
							M<<"Você não pode mais receber XP por missões por hoje!"
					if(!src.client)del(src)


				if(istype(src,/mob/samurais/NpcuchihaSobre))
					M.uchikills += 1
					M.vitorias += 1
					if(!M.canmsroubado)
						M.random = rand(1,100)
						if(M.random == 65&&M.Uchiha)
							M<<"Esse sobrevivente era poderoso, você conseguiu um Mangekyou Sharingan para implantar!"
							M.canmsroubado=1
					else
						M<<"Você encontrou um Mangekyou, mas não pode mais extrair."
					if(M.party)
						for(var/mob/A in oview(5))
							if(A.partysensei == M.partysensei)
								A.uchikills += 1
								A.vitorias += 1
								if(!A.canmsroubado)
									A.random = rand(1,100)
									if(A.random == 21&&A.Uchiha)
										A<<"Esse sobrevivente era poderoso, você conseguiu um Mangekyou Sharingan para implantar!"
										A.canmsroubado=1
								else
									A<<"Você encontrou um Mangekyou, mas não pode mais extrair."
								if(A.<5000000)
									A.Yen+=rand(5000,7500)
									A<<"Você recebeu dinheiro por ajudar a derrotar um Uchiha Sobrevivente!"
								else
									A<<"Você ajudou a derrotar um Uchiha Sobrevivente, mas já tem dinheiro demais!"
					if(M.Yen>=5000000)
						M<<"Você já está carregando mais Ryous do que é capaz."
						if(!src.client)del(src)
					else
						var/yenganho=rand(5000,7500)
						M.Yen+=yenganho
						M<<"Você recebeu [yenganho] Ryous"
						M<<"É melhor você guardar essa grana no banco."
						if(!src.client)del(src)


				if(istype(src,/mob/samurais/NpcSenjuSobre))
					M.senjukills += 1
					M.vitorias += 1
					if(!M.dnasenjuu)
						M.random = rand(1,100)
						if(M.random == 85&&M.Shodaime)
							M<<"Esse sobrevivente era poderoso, você retirou uma amostra de DNA!"
							M.dnasenjuu=1
					else
						M<<"Você encontrou um sobrevivente poderoso, mas não pode mais extrair seu DNA."
					if(M.party)
						for(var/mob/A in oview(5))
							if(A.partysensei == M.partysensei)
								A.senjukills += 1
								A.vitorias += 1
								if(!A.dnasenjuu)
									A.random = rand(1,100)
									if(A.random == 27&&A.Shodaime)
										A<<"Esse sobrevivente era poderoso, você retirou uma amostra de DNA!"
										A.dnasenjuu=1
								else
									A<<"Você encontrou um sobrevivente poderoso, mas não pode mais extrair seu DNA."
								if(A.<5000000)
									A.Yen+=rand(5000,7500)
									A<<"Você recebeu dinheiro por ajudar a derrotar um Senju Sobrevivente!"
								else
									A<<"Você ajudou a derrotar um Senju Sobrevivente, mas já tem dinheiro demais!"
					if(M.Yen>=5000000)
						M<<"Você já está carregando mais Ryous do que é capaz."
						if(!src.client)del(src)
					else
						var/yenganho=rand(5000,7500)
						M.Yen+=yenganho
						M<<"Você recebeu [yenganho] Ryous"
						M<<"É melhor você guardar essa grana no banco."
						if(!src.client)del(src)


				if(istype(src,/mob/samurais/NpcHyuugaSobre))
					M.hyuugakills += 1
					M.vitorias += 1
					if(!M.rouboubyakugan)
						M.random = rand(1,100)
						if(M.random == 98&&M.Hyuuga)
							M<<"Esse sobrevivente era poderoso, você retirou o Byakugan dele!"
							M.rouboubyakugan=1
					else
						M<<"Você encontrou um sobrevivente poderoso, mas não pode mais extrair seu Byakugan."
					if(M.party)
						for(var/mob/A in oview(5))
							if(A.partysensei == M.partysensei)
								A.hyuugakills += 1
								A.vitorias += 1
								if(!A.rouboubyakugan)
									A.random = rand(1,100)
									if(A.random == 91&&A.Hyuuga)
										A<<"Esse sobrevivente era poderoso, você retirou o Byakugan dele!"
										A.rouboubyakugan=1
								else
									A<<"Você encontrou um sobrevivente poderoso, mas não pode mais extrair seu Byakugan."
								if(A.<5000000)
									A.Yen+=rand(5000,7500)
									A<<"Você recebeu dinheiro por ajudar a derrotar um Hyuuga Sobrevivente!"
								else
									A<<"Você ajudou a derrotar um Hyuuga Sobrevivente, mas já tem dinheiro demais!"
					if(M.Yen>=5000000)
						M<<"Você já está carregando mais Ryous do que é capaz."
						if(!src.client)del(src)
					else
						var/yenganho=rand(5000,7500)
						M.Yen+=yenganho
						M<<"Você recebeu [yenganho] Ryous"
						M<<"É melhor você guardar essa grana no banco."
						if(!src.client)del(src)


				if(istype(src,/mob/samurais/DosuKinuta))
					if(M.inmissionA)
						M.inmissionA=0
						M.inmission=0
						M.amission+=1
						M.loc=locate(39,68,1)
						M<<"Parabéns, você finalizou sua missão!"
						if(M.Yen>=5000000)
							M<<"Você já está carregando mais Ryous do que é capaz."
							if(!src.client)del(src)
						else
							var/yenganho=125000
							M.Yen+=yenganho
							M.honra+=rand(20,35)
							M<<"Você recebeu [yenganho] Ryous"
							M<<"É melhor você guardar todo esse dinheiro no banco."
						if(!(M.key in CanNotMiss))
							M.missaostatskills+=2
							M.pontodestats+=2
							M.exp+=260
							M.Levelup()
							M<<"Você recebeu XP e ponto de Stats!"
							if(M.missaostatskills%50==0) CanNotMiss+=M.key
						else
							M<<"Você não pode mais receber XP por missões por hoje!"
					if(!src.client)del(src)

				if(istype(src,/mob/samurais/Ladrao))
//					if(src in oview(3))
					M<<"Você derrotou um ladrao do bando!"
					M.ladroes+=1
					if(M.inmissionB==1)
						M.roguekills+=1
						if(M.roguekills>=10)
							M.bmission+=1
							M.honra+=rand(18,25)
							M.Yen+=50000
							M.roguekills=0
							M.inmissionB=0
							M << "Parabéns, você finalizou os Nukenins/Ladrões. Bom trabalho!"
							if(!(M.key in CanNotMiss))
								M.missaostatskills+=2
								M.pontodestats+=2
								M.exp+=260
								M.Levelup()
								M<<"Você recebeu XP e ponto de Stats!"
								if(M.missaostatskills%50==0) CanNotMiss+=M.key
							else
								M<<"Você não pode mais receber XP por missões por hoje!"
					if(!src.client)del(src)


				if(istype(src,/mob/samurais/NinjaAssassino))
//					if(src in oview(5))
					M<<"Você derrotou o Ninja Assassino!"
					if(M.inmissionB2==1)
						M.bmission+=1
						M.honra+=rand(10,25)
						M.Yen+=50000
						M.inmissionB2=0
						M << "Parabéns, você completou sua missão!"
						if(!(M.key in CanNotMiss))
							M.missaostatskills+=2
							M.pontodestats+=2
							M.exp+=260
							M.Levelup()
							M<<"Você recebeu XP e ponto de Stats!"
							if(M.missaostatskills%50==0) CanNotMiss+=M.key
						else
							M<<"Você não pode mais receber XP por missões por hoje!"
					if(!src.client)del(src)



				if(istype(src,/mob/samurais/Nuke1))
					if(M.Yen>=5000000)
						M<<"Você já está carregando mais Ryous do que é capaz."
					else
						var/yenganho=rand(500,1000)
						M.Yen+=yenganho
						M<<"Você recebeu [yenganho] Ryous"
						M<<"É melhor você guardar essa grana no banco."
					if(!(M.key in CanNotUp))
						M.npcstatskills+=1
						M.pontodestats+=1
						M.honra+=rand(1,3)
						M<<"Você recebeu ponto de stats!"
						if(M.npcstatskills%50==0) CanNotUp+=M.key
						M.inmissionA=0
						M.inmission=0
						M.amission+=0
						M.makeHunter()
						if(M.level<1000)
							if(M.rank == "Estudante"||M.rank == "Genin")
								if(M.level >=325)
									M<<"Você já chegou ao level máximo como Genin."
									return
							if(M.rank == "Chuunin")
								if(M.level >=450)
									M<<"Você já chegou ao level máximo como Chuunin."
									return
							if(M.EhVip)
								M.exp+=160
							else
								M.exp+=145
							M.Levelup()
							M<<"Você recebeu XP!"
						else
							M<<"Você já está no Cap!"
					else
						M<<"Já chegou ao Cap Diário!"
					if(M.party)
						for(var/mob/A in oview(5))
							if(A.partysensei == M.partysensei)
								if(A.Yen<5000000)
									var/yenganho=rand(500,1000)
									A.Yen+=yenganho
									A<<"Você recebeu [yenganho] Ryous"
									A<<"É melhor você guardar essa grana no banco."
								else
									A<<"Você já carrega dinheiro demais!"
								if(!(A.key in CanNotUp))
									A.npcstatskills+=1
									A.pontodestats+=1
									A.honra+=rand(1,3)
									if(A.npcstatskills%50==0) CanNotUp+=A.key
									if(A.level<1000)
										if(A.rank == "Estudante"||A.rank == "Genin")
											if(A.level >=325)
												A<<"Você já chegou ao level máximo como Genin."
												return
										if(A.rank == "Chuunin")
											if(A.level >=450)
												A<<"Você já chegou ao level máximo como Chuunin."
												return
										if(A.EhVip)
											A.exp+=160
										else
											A.exp+=145
										A.Levelup()
										A<<"Você recebeu XP!"
									else
										A<<"Você não recebeu a XP pois já está no Cap Lvl!"
								else
									A<<"Você não recebeu a XP pois já está no Cap diário!"
					if(!src.client)del(src)


				if(istype(src,/mob/samurais/Nuke2))
					if(M.Yen>=5000000)
						M<<"Você já está carregando mais Ryous do que é capaz."
					else
						var/yenganho=rand(500,1000)
						M.Yen+=yenganho
						M<<"Você recebeu [yenganho] Ryous"
						M<<"É melhor você guardar essa grana no banco."
					if(!(M.key in CanNotUp))
						M.npcstatskills+=1
						M.pontodestats+=1
						M.honra+=rand(1,3)
						M<<"Você recebeu ponto de stats!"
						if(M.npcstatskills%50==0) CanNotUp+=M.key
						M.inmissionA=0
						M.inmission=0
						M.amission+=0
						M.makeHunter()
						if(M.level<1000)
							if(M.rank == "Estudante"||M.rank == "Genin")
								if(M.level >=325)
									M<<"Você já chegou ao level máximo como Genin."
									return
							if(M.rank == "Chuunin")
								if(M.level >=450)
									M<<"Você já chegou ao level máximo como Chuunin."
									return
							if(M.EhVip)
								M.exp+=160
							else
								M.exp+=145
							M.Levelup()
							M<<"Você recebeu XP!"
						else
							M<<"Você já está no Cap!"
					else
						M<<"Já chegou ao Cap Diário!"
					if(M.party)
						for(var/mob/A in oview(5))
							if(A.partysensei == M.partysensei)
								if(A.Yen<5000000)
									var/yenganho=rand(500,1000)
									A.Yen+=yenganho
									A<<"Você recebeu [yenganho] Ryous"
									A<<"É melhor você guardar essa grana no banco."
								else
									A<<"Você já carrega dinheiro demais!"
								if(!(A.key in CanNotUp))
									A.npcstatskills+=1
									A.pontodestats+=1
									A.honra+=rand(1,3)
									if(A.npcstatskills%50==0) CanNotUp+=A.key
									if(A.level<1000)
										if(A.rank == "Estudante"||A.rank == "Genin")
											if(A.level >=325)
												A<<"Você já chegou ao level máximo como Genin."
												return
										if(A.rank == "Chuunin")
											if(A.level >=450)
												A<<"Você já chegou ao level máximo como Chuunin."
												return
										if(A.EhVip)
											A.exp+=160
										else
											A.exp+=145
										A.Levelup()
										A<<"Você recebeu XP!"
									else
										A<<"Você não recebeu a XP pois já está no Cap Lvl!"
								else
									A<<"Você não recebeu a XP pois já está no Cap diário!"
					if(!src.client)del(src)

				if(istype(src,/mob/samurais/Nuke3))
					if(M.Yen>=5000000)
						M<<"Você já está carregando mais Ryous do que é capaz."
					else
						var/yenganho=rand(500,1000)
						M.Yen+=yenganho
						M<<"Você recebeu [yenganho] Ryous"
						M<<"É melhor você guardar essa grana no banco."
					if(!(M.key in CanNotUp))
						M.npcstatskills+=1
						M.pontodestats+=1
						M.honra+=rand(1,3)
						M<<"Você recebeu ponto de stats!"
						if(M.npcstatskills%50==0) CanNotUp+=M.key
						M.inmissionA=0
						M.inmission=0
						M.amission+=0
						M.makeHunter()
						if(M.level<1000)
							if(M.rank == "Estudante"||M.rank == "Genin")
								if(M.level >=325)
									M<<"Você já chegou ao level máximo como Genin."
									return
							if(M.rank == "Chuunin")
								if(M.level >=450)
									M<<"Você já chegou ao level máximo como Chuunin."
									return
							if(M.EhVip)
								M.exp+=160
							else
								M.exp+=145
							M.Levelup()
							M<<"Você recebeu XP!"
						else
							M<<"Você já está no Cap!"
					else
						M<<"Já chegou ao Cap Diário!"
					if(M.party)
						for(var/mob/A in oview(5))
							if(A.partysensei == M.partysensei)
								if(A.Yen<5000000)
									var/yenganho=rand(500,1000)
									A.Yen+=yenganho
									A<<"Você recebeu [yenganho] Ryous"
									A<<"É melhor você guardar essa grana no banco."
								else
									A<<"Você já carrega dinheiro demais!"
								if(!(A.key in CanNotUp))
									A.npcstatskills+=1
									A.pontodestats+=1
									A.honra+=rand(1,3)
									if(A.npcstatskills%50==0) CanNotUp+=A.key
									if(A.level<1000)
										if(A.rank == "Estudante"||A.rank == "Genin")
											if(A.level >=325)
												A<<"Você já chegou ao level máximo como Genin."
												return
										if(A.rank == "Chuunin")
											if(A.level >=450)
												A<<"Você já chegou ao level máximo como Chuunin."
												return
										if(A.EhVip)
											A.exp+=160
										else
											A.exp+=145
										A.Levelup()
										A<<"Você recebeu XP!"
									else
										A<<"Você não recebeu a XP pois já está no Cap Lvl!"
								else
									A<<"Você não recebeu a XP pois já está no Cap diário!"
					if(!src.client)del(src)

				if(istype(src,/mob/samurais/Nuke4))
					if(M.Yen>=5000000)
						M<<"Você já está carregando mais Ryous do que é capaz."
					else
						var/yenganho=rand(1000,1500)
						M.Yen+=yenganho
						M<<"Você recebeu [yenganho] Ryous"
						M<<"É melhor você guardar essa grana no banco."
					if(!(M.key in CanNotUp))
						M.npcstatskills+=1
						M.pontodestats+=1
						M.honra+=rand(2,4)
						M<<"Você recebeu ponto de stats!"
						if(M.npcstatskills%50==0) CanNotUp+=M.key
						M.inmissionA=0
						M.inmission=0
						M.amission+=0
						M.makeHunter()
						if(M.level<1000)
							if(M.rank == "Estudante"||M.rank == "Genin")
								if(M.level >=325)
									M<<"Você já chegou ao level máximo como Genin."
									return
							if(M.rank == "Chuunin")
								if(M.level >=450)
									M<<"Você já chegou ao level máximo como Chuunin."
									return
							if(M.EhVip)
								M.exp+=160
							else
								M.exp+=145
							M.Levelup()
							M<<"Você recebeu XP!"
						else
							M<<"Você já está no Cap!"
					else
						M<<"Já chegou ao Cap Diário!"
					if(M.party)
						for(var/mob/A in oview(5))
							if(A.partysensei == M.partysensei)
								if(A.Yen<5000000)
									var/yenganho=rand(1000,1500)
									A.Yen+=yenganho
									A<<"Você recebeu [yenganho] Ryous"
									A<<"É melhor você guardar essa grana no banco."
								else
									A<<"Você já carrega dinheiro demais!"
								if(!(A.key in CanNotUp))
									A.npcstatskills+=1
									A.pontodestats+=1
									A.honra+=rand(2,4)
									if(A.npcstatskills%50==0) CanNotUp+=A.key
									if(A.level<1000)
										if(A.rank == "Estudante"||A.rank == "Genin")
											if(A.level >=325)
												A<<"Você já chegou ao level máximo como Genin."
												return
										if(A.rank == "Chuunin")
											if(A.level >=450)
												A<<"Você já chegou ao level máximo como Chuunin."
												return
										if(A.EhVip)
											A.exp+=160
										else
											A.exp+=145
										A.Levelup()
										A<<"Você recebeu XP!"
									else
										A<<"Você não recebeu a XP pois já está no Cap Lvl!"
								else
									A<<"Você não recebeu a XP pois já está no Cap diário!"
					if(!src.client)del(src)

				if(istype(src,/mob/samurais/Nuke5))
					if(M.Yen>=5000000)
						M<<"Você já está carregando mais Ryous do que é capaz."
					else
						var/yenganho=rand(1000,1500)
						M.Yen+=yenganho
						M<<"Você recebeu [yenganho] Ryous"
						M<<"É melhor você guardar essa grana no banco."
					if(!(M.key in CanNotUp))
						M.npcstatskills+=1
						M.pontodestats+=1
						M.honra+=rand(2,4)
						M<<"Você recebeu ponto de stats!"
						if(M.npcstatskills%50==0) CanNotUp+=M.key
						M.inmissionA=0
						M.inmission=0
						M.amission+=0
						M.makeHunter()
						if(M.level<1000)
							if(M.rank == "Estudante"||M.rank == "Genin")
								if(M.level >=325)
									M<<"Você já chegou ao level máximo como Genin."
									return
							if(M.rank == "Chuunin")
								if(M.level >=450)
									M<<"Você já chegou ao level máximo como Chuunin."
									return
							if(M.EhVip)
								M.exp+=160
							else
								M.exp+=145
							M.Levelup()
							M<<"Você recebeu XP!"
						else
							M<<"Você já está no Cap!"
					else
						M<<"Já chegou ao Cap Diário!"
					if(M.party)
						for(var/mob/A in oview(5))
							if(A.partysensei == M.partysensei)
								if(A.Yen<5000000)
									var/yenganho=rand(1000,1500)
									A.Yen+=yenganho
									A<<"Você recebeu [yenganho] Ryous"
									A<<"É melhor você guardar essa grana no banco."
								else
									A<<"Você já carrega dinheiro demais!"
								if(!(A.key in CanNotUp))
									A.npcstatskills+=1
									A.pontodestats+=1
									A.honra+=rand(2,4)
									if(A.npcstatskills%50==0) CanNotUp+=A.key
									if(A.level<1000)
										if(A.rank == "Estudante"||A.rank == "Genin")
											if(A.level >=325)
												A<<"Você já chegou ao level máximo como Genin."
												return
										if(A.rank == "Chuunin")
											if(A.level >=450)
												A<<"Você já chegou ao level máximo como Chuunin."
												return
										if(A.EhVip)
											A.exp+=160
										else
											A.exp+=145
										A.Levelup()
										A<<"Você recebeu XP!"
									else
										A<<"Você não recebeu a XP pois já está no Cap Lvl!"
								else
									A<<"Você não recebeu a XP pois já está no Cap diário!"
					if(!src.client)del(src)

				if(istype(src,/mob/samurais/Nuke6))
					if(M.Yen>=5000000)
						M<<"Você já está carregando mais Ryous do que é capaz."
					else
						var/yenganho=rand(1000,1500)
						M.Yen+=yenganho
						M<<"Você recebeu [yenganho] Ryous"
						M<<"É melhor você guardar essa grana no banco."
					if(!(M.key in CanNotUp))
						M.npcstatskills+=1
						M.pontodestats+=1
						M.honra+=rand(2,4)
						M<<"Você recebeu ponto de stats!"
						if(M.npcstatskills%50==0) CanNotUp+=M.key
						M.inmissionA=0
						M.inmission=0
						M.amission+=0
						M.makeHunter()
						if(M.level<1000)
							if(M.rank == "Estudante"||M.rank == "Genin")
								if(M.level >=325)
									M<<"Você já chegou ao level máximo como Genin."
									return
							if(M.rank == "Chuunin")
								if(M.level >=450)
									M<<"Você já chegou ao level máximo como Chuunin."
									return
							if(M.EhVip)
								M.exp+=160
							else
								M.exp+=145
							M.Levelup()
							M<<"Você recebeu XP!"
						else
							M<<"Você já está no Cap!"
					else
						M<<"Já chegou ao Cap Diário!"
					if(M.party)
						for(var/mob/A in oview(5))
							if(A.partysensei == M.partysensei)
								if(A.Yen<5000000)
									var/yenganho=rand(1000,1500)
									A.Yen+=yenganho
									A<<"Você recebeu [yenganho] Ryous"
									A<<"É melhor você guardar essa grana no banco."
								else
									A<<"Você já carrega dinheiro demais!"
								if(!(A.key in CanNotUp))
									A.npcstatskills+=1
									A.pontodestats+=1
									A.honra+=rand(2,4)
									if(A.npcstatskills%50==0) CanNotUp+=A.key
									if(A.level<1000)
										if(A.rank == "Estudante"||A.rank == "Genin")
											if(A.level >=325)
												A<<"Você já chegou ao level máximo como Genin."
												return
										if(A.rank == "Chuunin")
											if(A.level >=450)
												A<<"Você já chegou ao level máximo como Chuunin."
												return
										if(A.EhVip)
											A.exp+=160
										else
											A.exp+=145
										A.Levelup()
										A<<"Você recebeu XP!"
									else
										A<<"Você não recebeu a XP pois já está no Cap Lvl!"
								else
									A<<"Você não recebeu a XP pois já está no Cap diário!"
					if(!src.client)del(src)


				if(istype(src,/mob/samurais/Nuke7))
					if(M.Yen>=5000000)
						M<<"Você já está carregando mais Ryous do que é capaz."
					else
						var/yenganho=rand(1000,1500)
						M.Yen+=yenganho
						M<<"Você recebeu [yenganho] Ryous"
						M<<"É melhor você guardar essa grana no banco."
					if(!(M.key in CanNotUp))
						M.npcstatskills+=1
						M.pontodestats+=1
						M.honra+=rand(2,4)
						M<<"Você recebeu ponto de stats!"
						if(M.npcstatskills%50==0) CanNotUp+=M.key
						M.inmissionA=0
						M.inmission=0
						M.amission+=0
						M.makeHunter()
						if(M.level<1000)
							if(M.rank == "Estudante"||M.rank == "Genin")
								if(M.level >=325)
									M<<"Você já chegou ao level máximo como Genin."
									return
							if(M.rank == "Chuunin")
								if(M.level >=450)
									M<<"Você já chegou ao level máximo como Chuunin."
									return
							if(M.EhVip)
								M.exp+=160
							else
								M.exp+=145
							M.Levelup()
							M<<"Você recebeu XP!"
						else
							M<<"Você já está no Cap!"
					else
						M<<"Já chegou ao Cap Diário!"
					if(M.party)
						for(var/mob/A in oview(5))
							if(A.partysensei == M.partysensei)
								if(A.Yen<5000000)
									var/yenganho=rand(1000,1500)
									A.Yen+=yenganho
									A<<"Você recebeu [yenganho] Ryous"
									A<<"É melhor você guardar essa grana no banco."
								else
									A<<"Você já carrega dinheiro demais!"
								if(!(A.key in CanNotUp))
									A.npcstatskills+=1
									A.pontodestats+=1
									A.honra+=rand(2,4)
									if(A.npcstatskills%50==0) CanNotUp+=A.key
									if(A.level<1000)
										if(A.rank == "Estudante"||A.rank == "Genin")
											if(A.level >=325)
												A<<"Você já chegou ao level máximo como Genin."
												return
										if(A.rank == "Chuunin")
											if(A.level >=450)
												A<<"Você já chegou ao level máximo como Chuunin."
												return
										if(A.EhVip)
											A.exp+=160
										else
											A.exp+=145
										A.Levelup()
										A<<"Você recebeu XP!"
									else
										A<<"Você não recebeu a XP pois já está no Cap Lvl!"
								else
									A<<"Você não recebeu a XP pois já está no Cap diário!"
					if(!src.client)del(src)



				if(istype(src,/mob/samurais/Nuke8))
					if(M.Yen>=5000000)
						M<<"Você já está carregando mais Ryous do que é capaz."
					else
						var/yenganho=rand(1500,2000)
						M.Yen+=yenganho
						M<<"Você recebeu [yenganho] Ryous"
						M<<"É melhor você guardar essa grana no banco."
					if(!(M.key in CanNotUp))
						M.npcstatskills+=1
						M.pontodestats+=1
						M.honra+=rand(3,5)
						M<<"Você recebeu ponto de stats!"
						if(M.npcstatskills%50==0) CanNotUp+=M.key
						M.inmissionA=0
						M.inmission=0
						M.amission+=0
						M.makeHunter()
						if(M.level<1000)
							if(M.rank == "Estudante"||M.rank == "Genin")
								if(M.level >=325)
									M<<"Você já chegou ao level máximo como Genin."
									return
							if(M.rank == "Chuunin")
								if(M.level >=450)
									M<<"Você já chegou ao level máximo como Chuunin."
									return
							if(M.EhVip)
								M.exp+=160
							else
								M.exp+=145
							M.Levelup()
							M<<"Você recebeu XP!"
						else
							M<<"Você já está no Cap!"
					else
						M<<"Já chegou ao Cap Diário!"
					if(M.party)
						for(var/mob/A in oview(5))
							if(A.partysensei == M.partysensei)
								if(A.Yen<5000000)
									var/yenganho=rand(1500,2000)
									A.Yen+=yenganho
									A<<"Você recebeu [yenganho] Ryous"
									A<<"É melhor você guardar essa grana no banco."
								else
									A<<"Você já carrega dinheiro demais!"
								if(!(A.key in CanNotUp))
									A.npcstatskills+=1
									A.pontodestats+=1
									A.honra+=rand(3,5)
									if(A.npcstatskills%50==0) CanNotUp+=A.key
									if(A.level<1000)
										if(A.rank == "Estudante"||A.rank == "Genin")
											if(A.level >=325)
												A<<"Você já chegou ao level máximo como Genin."
												return
										if(A.rank == "Chuunin")
											if(A.level >=450)
												A<<"Você já chegou ao level máximo como Chuunin."
												return
										if(A.EhVip)
											A.exp+=160
										else
											A.exp+=145
										A.Levelup()
										A<<"Você recebeu XP!"
									else
										A<<"Você não recebeu a XP pois já está no Cap Lvl!"
								else
									A<<"Você não recebeu a XP pois já está no Cap diário!"
					if(!src.client)del(src)


				if(istype(src,/mob/samurais/Nuke9))
					if(M.Yen>=5000000)
						M<<"Você já está carregando mais Ryous do que é capaz."
					else
						var/yenganho=rand(1500,2000)
						M.Yen+=yenganho
						M<<"Você recebeu [yenganho] Ryous"
						M<<"É melhor você guardar essa grana no banco."
					if(!(M.key in CanNotUp))
						M.npcstatskills+=1
						M.pontodestats+=1
						M.honra+=rand(3,5)
						M<<"Você recebeu ponto de stats!"
						if(M.npcstatskills%50==0) CanNotUp+=M.key
						M.inmissionA=0
						M.inmission=0
						M.amission+=0
						M.makeHunter()
						if(M.level<1000)
							if(M.rank == "Estudante"||M.rank == "Genin")
								if(M.level >=325)
									M<<"Você já chegou ao level máximo como Genin."
									return
							if(M.rank == "Chuunin")
								if(M.level >=450)
									M<<"Você já chegou ao level máximo como Chuunin."
									return
							if(M.EhVip)
								M.exp+=160
							else
								M.exp+=145
							M.Levelup()
							M<<"Você recebeu XP!"
						else
							M<<"Você já está no Cap!"
					else
						M<<"Já chegou ao Cap Diário!"
					if(M.party)
						for(var/mob/A in oview(5))
							if(A.partysensei == M.partysensei)
								if(A.Yen<5000000)
									var/yenganho=rand(1500,2000)
									A.Yen+=yenganho
									A<<"Você recebeu [yenganho] Ryous"
									A<<"É melhor você guardar essa grana no banco."
								else
									A<<"Você já carrega dinheiro demais!"
								if(!(A.key in CanNotUp))
									A.npcstatskills+=1
									A.pontodestats+=1
									A.honra+=rand(3,5)
									if(A.npcstatskills%50==0) CanNotUp+=A.key
									if(A.level<1000)
										if(A.rank == "Estudante"||A.rank == "Genin")
											if(A.level >=325)
												A<<"Você já chegou ao level máximo como Genin."
												return
										if(A.rank == "Chuunin")
											if(A.level >=450)
												A<<"Você já chegou ao level máximo como Chuunin."
												return
										if(A.EhVip)
											A.exp+=160
										else
											A.exp+=145
										A.Levelup()
										A<<"Você recebeu XP!"
									else
										A<<"Você não recebeu a XP pois já está no Cap Lvl!"
								else
									A<<"Você não recebeu a XP pois já está no Cap diário!"
					if(!src.client)del(src)


				if(istype(src,/mob/samurais/Nuke10))
					if(M.Yen>=5000000)
						M<<"Você já está carregando mais Ryous do que é capaz."
					else
						var/yenganho=rand(1500,2000)
						M.Yen+=yenganho
						M<<"Você recebeu [yenganho] Ryous"
						M<<"É melhor você guardar essa grana no banco."
					if(!(M.key in CanNotUp))
						M.npcstatskills+=1
						M.pontodestats+=1
						M.honra+=rand(3,5)
						M<<"Você recebeu ponto de stats!"
						if(M.npcstatskills%50==0) CanNotUp+=M.key
						M.inmissionA=0
						M.inmission=0
						M.amission+=0
						M.makeHunter()
						if(M.level<1000)
							if(M.rank == "Estudante"||M.rank == "Genin")
								if(M.level >=325)
									M<<"Você já chegou ao level máximo como Genin."
									return
							if(M.rank == "Chuunin")
								if(M.level >=450)
									M<<"Você já chegou ao level máximo como Chuunin."
									return
							if(M.EhVip)
								M.exp+=160
							else
								M.exp+=145
							M.Levelup()
							M<<"Você recebeu XP!"
						else
							M<<"Você já está no Cap!"
					else
						M<<"Já chegou ao Cap Diário!"
					if(M.party)
						for(var/mob/A in oview(5))
							if(A.partysensei == M.partysensei)
								if(A.Yen<5000000)
									var/yenganho=rand(1500,2000)
									A.Yen+=yenganho
									A<<"Você recebeu [yenganho] Ryous"
									A<<"É melhor você guardar essa grana no banco."
								else
									A<<"Você já carrega dinheiro demais!"
								if(!(A.key in CanNotUp))
									A.npcstatskills+=1
									A.pontodestats+=1
									A.honra+=rand(3,5)
									if(A.npcstatskills%50==0) CanNotUp+=A.key
									if(A.level<1000)
										if(A.rank == "Estudante"||A.rank == "Genin")
											if(A.level >=325)
												A<<"Você já chegou ao level máximo como Genin."
												return
										if(A.rank == "Chuunin")
											if(A.level >=450)
												A<<"Você já chegou ao level máximo como Chuunin."
												return
										if(A.EhVip)
											A.exp+=160
										else
											A.exp+=145
										A.Levelup()
										A<<"Você recebeu XP!"
									else
										A<<"Você não recebeu a XP pois já está no Cap Lvl!"
								else
									A<<"Você não recebeu a XP pois já está no Cap diário!"
					if(!src.client)del(src)


				if(istype(src,/mob/samurais/Nuke11))
					if(M.Yen>=5000000)
						M<<"Você já está carregando mais Ryous do que é capaz."
					else
						var/yenganho=rand(1500,2000)
						M.Yen+=yenganho
						M<<"Você recebeu [yenganho] Ryous"
						M<<"É melhor você guardar essa grana no banco."
					if(!(M.key in CanNotUp))
						M.npcstatskills+=1
						M.pontodestats+=1
						M.honra+=rand(3,5)
						M<<"Você recebeu ponto de stats!"
						if(M.npcstatskills%50==0) CanNotUp+=M.key
						M.inmissionA=0
						M.inmission=0
						M.amission+=0
						M.makeHunter()
						if(M.level<1000)
							if(M.rank == "Estudante"||M.rank == "Genin")
								if(M.level >=325)
									M<<"Você já chegou ao level máximo como Genin."
									return
							if(M.rank == "Chuunin")
								if(M.level >=450)
									M<<"Você já chegou ao level máximo como Chuunin."
									return
							if(M.EhVip)
								M.exp+=160
							else
								M.exp+=145
							M.Levelup()
							M<<"Você recebeu XP!"
						else
							M<<"Você já está no Cap!"
					else
						M<<"Já chegou ao Cap Diário!"
					if(M.party)
						for(var/mob/A in oview(5))
							if(A.partysensei == M.partysensei)
								if(A.Yen<5000000)
									var/yenganho=rand(1500,2000)
									A.Yen+=yenganho
									A<<"Você recebeu [yenganho] Ryous"
									A<<"É melhor você guardar essa grana no banco."
								else
									A<<"Você já carrega dinheiro demais!"
								if(!(A.key in CanNotUp))
									A.npcstatskills+=1
									A.pontodestats+=1
									A.honra+=rand(3,5)
									if(A.npcstatskills%50==0) CanNotUp+=A.key
									if(A.level<1000)
										if(A.rank == "Estudante"||A.rank == "Genin")
											if(A.level >=325)
												A<<"Você já chegou ao level máximo como Genin."
												return
										if(A.rank == "Chuunin")
											if(A.level >=450)
												A<<"Você já chegou ao level máximo como Chuunin."
												return
										if(A.EhVip)
											A.exp+=160
										else
											A.exp+=145
										A.Levelup()
										A<<"Você recebeu XP!"
									else
										A<<"Você não recebeu a XP pois já está no Cap Lvl!"
								else
									A<<"Você não recebeu a XP pois já está no Cap diário!"
					if(!src.client)del(src)

				if(istype(src,/mob/samurais/Leafvillageshinobi))
					M.villagekonoha+=1
					if(M.villagekonoha>=1)
						Village="Konoha"
						M.inmissionA=0
						M.inmission=0
						M.amission+=0
						M.makeHunter()
						if(M.party)
							for(var/mob/A in oview(5))
								if(A.partysensei == M.partysensei)
									if(A.<5000000)
										A.Yen+=rand(5000,7500)
										A<<"Você recebeu dinheiro por ajudar a derrotar um Village Shinobi!"
									else
										A<<"Você ajudou a derrotar um Village Shinobi, mas já tem dinheiro demais!"
						if(M.Yen>=5000000)
							M<<"Você já está carregando mais Ryous do que é capaz."
						else
							var/yenganho=rand(5000,7500)
							M.Yen+=yenganho
							M<<"Você recebeu [yenganho] Ryous"
							M<<"É melhor você guardar essa grana no banco."
					if(!src.client)del(src)

				if(istype(src,/mob/samurais/Mistvillageshinobi))
					M.villagekiri+=1
					if(M.villagekiri>=1)
						M.inmissionA=0
						M.inmission=0
						M.amission+=0
						M.makeHunter()
						if(M.party)
							for(var/mob/A in oview(5))
								if(A.partysensei == M.partysensei)
									if(A.<5000000)
										A.Yen+=rand(5000,7500)
										A<<"Você recebeu dinheiro por ajudar a derrotar um Village Shinobi!"
									else
										A<<"Você ajudou a derrotar um Village Shinobi, mas já tem dinheiro demais!"
						if(M.Yen>=5000000)
							M<<"Você já está carregando mais Ryous do que é capaz."
						else
							var/yenganho=rand(5000,7500)
							M.Yen+=yenganho
							M<<"Você recebeu [yenganho] Ryous"
							M<<"É melhor você guardar essa grana no banco."
					if(!src.client)del(src)

				if(istype(src,/mob/samurais/Rainvillageshinobi))
					M.villageame+=1
					if(M.villageame>=1)
						M.inmissionA=0
						M.inmission=0
						M.amission+=0
						M.makeHunter()
						if(M.party)
							for(var/mob/A in oview(5))
								if(A.partysensei == M.partysensei)
									if(A.<5000000)
										A.Yen+=rand(5000,7500)
										A<<"Você recebeu dinheiro por ajudar a derrotar um Village Shinobi!"
									else
										A<<"Você ajudou a derrotar um Village Shinobi, mas já tem dinheiro demais!"
						if(M.Yen>=5000000)
							M<<"Você já está carregando mais Ryous do que é capaz."
							if(!src.client)del(src)
						else
							var/yenganho=rand(5000,7500)
							M.Yen+=yenganho
							M<<"Você recebeu [yenganho] Ryous"
							M<<"É melhor você guardar essa grana no banco."
							if(!src.client)del(src)
					else
						if(!src.client)del(src)


				if(istype(src,/mob/samurais/Cloudvillageshinobi))
					M.villagekumo+=1
					if(M.villagekumo>=1)
						M.inmissionA=0
						M.inmission=0
						M.amission+=0
						M.makeHunter()
						if(M.party)
							for(var/mob/A in oview(5))
								if(A.partysensei == M.partysensei)
									if(A.<5000000)
										A.Yen+=rand(5000,7500)
										A<<"Você recebeu dinheiro por ajudar a derrotar um Village Shinobi!"
									else
										A<<"Você ajudou a derrotar um Village Shinobi, mas já tem dinheiro demais!"
						if(M.Yen>=5000000)
							M<<"Você já está carregando mais Ryous do que é capaz."
							if(!src.client)del(src)
						else
							var/yenganho=rand(5000,7500)
							M.Yen+=yenganho
							M<<"Você recebeu [yenganho] Ryous"
							M<<"É melhor você guardar essa grana no banco."
							if(!src.client)del(src)
					else
						if(!src.client)del(src)

				if(istype(src,/mob/samurais/Rockvillageshinobi))
					M.villageiwa+=1
					if(M.villageiwa>=1)
						M.inmissionA=0
						M.inmission=0
						M.amission+=0
						M.makeHunter()
						if(M.party)
							for(var/mob/A in oview(5))
								if(A.partysensei == M.partysensei)
									if(A.<5000000)
										A.Yen+=rand(5000,7500)
										A<<"Você recebeu dinheiro por ajudar a derrotar um Village Shinobi!"
									else
										A<<"Você ajudou a derrotar um Village Shinobi, mas já tem dinheiro demais!"
						if(M.Yen>=5000000)
							M<<"Você já está carregando mais Ryous do que é capaz."
							if(!src.client)del(src)
						else
							var/yenganho=rand(5000,7500)
							M.Yen+=yenganho
							M<<"Você recebeu [yenganho] Ryous"
							M<<"É melhor você guardar essa grana no banco."
							if(!src.client)del(src)
					else
						if(!src.client)del(src)

				if(istype(src,/mob/samurais/Otovillageshinobi))
					M.villageoto+=1
					if(M.villageoto>=1)
						M.inmissionA=0
						M.inmission=0
						M.amission+=0
						M.makeHunter()
						if(M.party)
							for(var/mob/A in oview(5))
								if(A.partysensei == M.partysensei)
									if(A.<5000000)
										A.Yen+=rand(5000,7500)
										A<<"Você recebeu dinheiro por ajudar a derrotar um Village Shinobi!"
									else
										A<<"Você ajudou a derrotar um Village Shinobi, mas já tem dinheiro demais!"
						if(M.Yen>=5000000)
							M<<"Você já está carregando mais Ryous do que é capaz."
							if(!src.client)del(src)
						else
							var/yenganho=rand(5000,7500)
							M.Yen+=yenganho
							M<<"Você recebeu [yenganho] Ryous"
							M<<"É melhor você guardar essa grana no banco."
							if(!src.client)del(src)
					else
						if(!src.client)del(src)


				if(istype(src,/mob/samurais/Sandvillageshinobi))
					M.villagesuna+=1
					if(M.villagesuna>=1)
						M.inmissionA=0
						M.inmission=0
						M.amission+=0
						M.makeHunter()
						if(M.party)
							for(var/mob/A in oview(5))
								if(A.partysensei == M.partysensei)
									if(A.<5000000)
										A.Yen+=rand(5000,7500)
										A<<"Você recebeu dinheiro por ajudar a derrotar um Village Shinobi!"
									else
										A<<"Você ajudou a derrotar um Village Shinobi, mas já tem dinheiro demais!"
						if(M.Yen>=5000000)
							M<<"Você já está carregando mais Ryous do que é capaz."
							if(!src.client)del(src)
						else
							var/yenganho=rand(5000,7500)
							M.Yen+=yenganho
							M<<"Você recebeu [yenganho] Ryous"
							M<<"É melhor você guardar essa grana no banco."
							if(!src.client)del(src)
					else
						if(!src.client)del(src)


				if(istype(src,/mob/marcos/monumentoLeaf))
					world << "<center><b><font size=4><font color=blue>KONOHA acaba de cair!"
					konohaqueda=1
					world << "<b><font size=2><font color=yellow> Por ter destruído o marco de Konoha, [M] conseguiu um Tesouro Ninja!</font>"
					var/obj/Tesouro/BauSurpresa/B = new /obj/Tesouro/BauSurpresa
					B.loc = M
					if(M.Village=="Kiri"||M.Village2=="Kiri")
						kirifundo+=konohafundo
						konohafundo-=konohafundo
						world << "<font size=+1> KIRI e 7SS venceram KONOHA por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Kumo")
						kumofundo+=konohafundo
						konohafundo-=konohafundo
						world << "<font size=+1> KUMO venceu KONOHA por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Ame")
						amefundo+=konohafundo
						konohafundo-=konohafundo
						world << "<font size=+1> AME venceu KONOHA por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Iwa")
						iwafundo+=konohafundo
						konohafundo-=konohafundo
						world << "<font size=+1> IWA venceu KONOHA por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Suna")
						sunafundo+=konohafundo
						konohafundo-=konohafundo
						world << "<font size=+1> SUNA venceu KONOHA por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Akatsuki"||M.Village=="AkatsukiK"||M.Village=="AkatsukiL"||M.Village=="Taka")
						akatfundo+=konohafundo
						konohafundo-=konohafundo
						world << "<font size=+1> AKATSUKI e TAKA venceram KONOHA por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Oto"||M.Village2=="Oto")
						sofundo+=konohafundo
						konohafundo-=konohafundo
						world << "<font size=+1> Oto e SO venceram KONOHA por isso ficara com todo seu dinheiro...!</font>"
					if(konohaqueda&&kumoqueda&&kiriqueda&&amequeda&&sunaqueda&&iwaqueda&&otoqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Akatsuki e Taka Venceram a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
						for(var/mob/marcos/S in world)
							del(S)
					if(konohaqueda&&kumoqueda&&kiriqueda&&amequeda&&sunaqueda&&iwaqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Otogakure e SO Venceram a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
						for(var/mob/marcos/S in world)
							del(S)
					if(konohaqueda&&kumoqueda&&kiriqueda&&amequeda&&sunaqueda&&otoqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Iwagakure Venceu a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
						for(var/mob/marcos/S in world)
							del(S)
					if(konohaqueda&&kumoqueda&&kiriqueda&&amequeda&&iwaqueda&&otoqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Sunagakure Venceu a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
						for(var/mob/marcos/S in world)
							del(S)
					if(konohaqueda&&kumoqueda&&kiriqueda&&sunaqueda&&iwaqueda&&otoqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Amegakure Venceu a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
						for(var/mob/marcos/S in world)
							del(S)
					if(konohaqueda&&kumoqueda&&amequeda&&sunaqueda&&iwaqueda&&otoqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Kirigakure e 7SS Venceram a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
						for(var/mob/marcos/S in world)
							del(S)
					if(konohaqueda&&kiriqueda&&amequeda&&sunaqueda&&iwaqueda&&otoqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Kumogakure Venceu a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
						for(var/mob/marcos/S in world)
							del(S)
					del(src)
					return
				if(istype(src,/mob/marcos/monumentoCloud))
					world << "<center><b><font size=4><font color=blue>KUMO acaba de cair!"
					kumoqueda=1
					world << "<b><font size=2><font color=yellow> Por ter destruído o marco de Kumo, [M] conseguiu um Tesouro Ninja!</font>"
					var/obj/Tesouro/BauSurpresa/B = new /obj/Tesouro/BauSurpresa
					B.loc = M
					if(M.Village=="Kiri"||M.Village2=="Kiri")
						kirifundo+=kumofundo
						kumofundo-=kumofundo
						world << "<font size=+1> KIRI e 7SS venceram KUMO por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Konoha")
						konohafundo+=kumofundo
						kumofundo-=kumofundo
						world << "<font size=+1> KONOHA venceu KUMO por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Ame")
						amefundo+=kumofundo
						kumofundo-=kumofundo
						world << "<font size=+1> AME venceu KUMO por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Iwa")
						iwafundo+=kumofundo
						kumofundo-=kumofundo
						world << "<font size=+1> IWA venceu KUMO por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Suna")
						sunafundo+=kumofundo
						kumofundo-=kumofundo
						world << "<font size=+1> SUNA venceu KUMO por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Akatsuki"||M.Village=="AkatsukiK"||M.Village=="AkatsukiL"||M.Village=="Taka")
						akatfundo+=konohafundo
						kumofundo-=kumofundo
						world << "<font size=+1> AKATSUKI e TAKA venceram KUMO por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Oto"||M.Village2=="Oto")
						sofundo+=kumofundo
						kumofundo-=kumofundo
						world << "<font size=+1> Oto e SO venceram KUMO por isso ficara com todo seu dinheiro...!</font>"
					if(kumoqueda&&konohaqueda&&kiriqueda&&amequeda&&sunaqueda&&iwaqueda&&otoqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Akatsuki e Taka Venceram a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(kumoqueda&&konohaqueda&&kiriqueda&&amequeda&&sunaqueda&&iwaqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Otogakure e SO Venceram a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(kumoqueda&&konohaqueda&&kiriqueda&&amequeda&&sunaqueda&&otoqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Iwagakure Venceu a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(kumoqueda&&konohaqueda&&kiriqueda&&amequeda&&iwaqueda&&otoqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Sunagakure Venceu a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(kumoqueda&&konohaqueda&&kiriqueda&&sunaqueda&&iwaqueda&&otoqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Amegakure Venceu a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(kumoqueda&&konohaqueda&&amequeda&&sunaqueda&&iwaqueda&&otoqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Kirigakure e 7SS Venceram a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(kumoqueda&&kiriqueda&&amequeda&&sunaqueda&&iwaqueda&&otoqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Konoha Venceu a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					del(src)
					return
				if(istype(src,/mob/marcos/monumentoMist))
					world << "<center><b><font size=4><font color=blue>KIRI acaba de cair!"
					kiriqueda=1
					world << "<b><font size=2><font color=yellow> Por ter destruído o marco de Kiri, [M] conseguiu um Tesouro Ninja!</font>"
					var/obj/Tesouro/BauSurpresa/B = new /obj/Tesouro/BauSurpresa
					B.loc = M
					if(M.Village=="Konoha")
						konohafundo+=kirifundo
						kirifundo-=kirifundo
						world << "<font size=+1> KONOHA venceu KIRI e 7SS por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Kumo")
						kumofundo+=kirifundo
						kirifundo-=kirifundo
						world << "<font size=+1> KUMO venceu KIRI e 7SS por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Ame")
						amefundo+=kirifundo
						kirifundo-=kirifundo
						world << "<font size=+1> AME venceu KIRI e 7SS por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Iwa")
						iwafundo+=kirifundo
						kirifundo-=kirifundo
						world << "<font size=+1> IWA venceu KIRI e 7SS por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Suna")
						sunafundo+=kirifundo
						kirifundo-=kirifundo
						world << "<font size=+1> SUNA venceu KIRI e 7SS por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Akatsuki"||M.Village=="AkatsukiK"||M.Village=="AkatsukiL"||M.Village=="Taka")
						akatfundo+=kirifundo
						kirifundo-=kirifundo
						world << "<font size=+1> AKATSUKI e TAKA venceram KIRI e 7SS por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Oto"||M.Village2=="Oto")
						sofundo+=kirifundo
						kirifundo-=kirifundo
						world << "<font size=+1> Oto e SO venceram KIRI e 7SS por isso ficara com todo seu dinheiro...!</font>"
					if(kiriqueda&&konohaqueda&&kumoqueda&&amequeda&&sunaqueda&&iwaqueda&&otoqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! AKATSUKI e TAKA venceram a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(kiriqueda&&konohaqueda&&kumoqueda&&amequeda&&sunaqueda&&iwaqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Otogakure e SO Venceram a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(kiriqueda&&konohaqueda&&kumoqueda&&amequeda&&sunaqueda&&otoqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Iwagakure Venceu a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(kiriqueda&&konohaqueda&&kumoqueda&&amequeda&&iwaqueda&&otoqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Sunagakure Venceu a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(kiriqueda&&konohaqueda&&kumoqueda&&sunaqueda&&iwaqueda&&otoqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Amegakure Venceu a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(kiriqueda&&konohaqueda&&amequeda&&sunaqueda&&iwaqueda&&otoqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Kumogakure Venceu a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(kiriqueda&&kumoqueda&&amequeda&&sunaqueda&&iwaqueda&&otoqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Konoha Venceu a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					del(src)
					return
				if(istype(src,/mob/marcos/monumentoRain))
					world << "<center><b><font size=4><font color=blue>AME acaba de cair!"
					amequeda=1
					world << "<b><font size=2><font color=yellow> Por ter destruído o marco de Ame, [M] conseguiu um Tesouro Ninja!</font>"
					var/obj/Tesouro/BauSurpresa/B = new /obj/Tesouro/BauSurpresa
					B.loc = M
					if(M.Village=="Konoha")
						konohafundo+=amefundo
						amefundo-=amefundo
						world << "<font size=+1> KONOHA venceu AME por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Kumo")
						kumofundo+=amefundo
						amefundo-=amefundo
						world << "<font size=+1> KUMO venceu AME por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Kiri"||M.Village2=="Kiri")
						kirifundo+=amefundo
						amefundo-=amefundo
						world << "<font size=+1> KIRI e 7SS venceram AME por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Iwa")
						iwafundo+=amefundo
						amefundo-=amefundo
						world << "<font size=+1> IWA venceu AME por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Suna")
						sunafundo+=amefundo
						amefundo-=amefundo
						world << "<font size=+1> SUNA venceu AME por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Akatsuki"||M.Village=="AkatsukiK"||M.Village=="AkatsukiL"||M.Village=="Taka")
						akatfundo+=amefundo
						amefundo-=amefundo
						world << "<font size=+1> AKATSUKI e TAKA venceram AME por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Oto"||M.Village2=="Oto")
						sofundo+=amefundo
						amefundo-=amefundo
						world << "<font size=+1> Oto e SO venceram AME por isso ficara com todo seu dinheiro...!</font>"
					if(amequeda&&konohaqueda&&kumoqueda&&kiriqueda&&sunaqueda&&iwaqueda&&otoqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! AKATSUKI e TAKA venceram a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(amequeda&&konohaqueda&&kumoqueda&&kiriqueda&&sunaqueda&&iwaqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Otogakure e SO Venceram a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(amequeda&&konohaqueda&&kumoqueda&&kiriqueda&&sunaqueda&&otoqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Iwagakure Venceu a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(amequeda&&konohaqueda&&kumoqueda&&kiriqueda&&iwaqueda&&otoqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Sunagakure Venceu a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(amequeda&&konohaqueda&&kumoqueda&&sunaqueda&&iwaqueda&&otoqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Kirigakure e 7SS Venceram a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(amequeda&&konohaqueda&&kiriqueda&&sunaqueda&&iwaqueda&&otoqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Kumogakure Venceu a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(amequeda&&kumoqueda&&kiriqueda&&sunaqueda&&iwaqueda&&otoqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Konoha Venceu a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					del(src)
					return
				if(istype(src,/mob/marcos/monumentoSand))
					world << "<center><b><font size=4><font color=blue>SUNA acaba de cair!"
					sunaqueda=1
					world << "<b><font size=2><font color=yellow> Por ter destruído o marco de Suna, [M] conseguiu um Tesouro Ninja!</font>"
					var/obj/Tesouro/BauSurpresa/B = new /obj/Tesouro/BauSurpresa
					B.loc = M
					if(M.Village=="Konoha")
						konohafundo+=sunafundo
						sunafundo-=sunafundo
						world << "<font size=+1> KONOHA venceu SUNA por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Kumo")
						kumofundo+=sunafundo
						sunafundo-=sunafundo
						world << "<font size=+1> KUMO venceu SUNA por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Kiri"||M.Village2=="Kiri")
						kirifundo+=sunafundo
						sunafundo-=sunafundo
						world << "<font size=+1> KIRI e 7SS venceram SUNA por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Iwa")
						iwafundo+=sunafundo
						sunafundo-=sunafundo
						world << "<font size=+1> IWA venceu SUNA por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Ame")
						amefundo+=sunafundo
						sunafundo-=sunafundo
						world << "<font size=+1> AME venceu SUNA por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Akatsuki"||M.Village=="AkatsukiK"||M.Village=="AkatsukiL"||M.Village=="Taka")
						akatfundo+=sunafundo
						sunafundo-=sunafundo
						world << "<font size=+1> AKATSUKI e TAKA venceram SUNA por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Oto"||M.Village2=="Oto")
						sofundo+=sunafundo
						sunafundo-=sunafundo
						world << "<font size=+1> Oto e SO venceram SUNA por isso ficara com todo seu dinheiro...!</font>"
					if(sunaqueda&&konohaqueda&&kumoqueda&&kiriqueda&&amequeda&&iwaqueda&&otoqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! AKATSUKI e TAKA venceram a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(sunaqueda&&konohaqueda&&kumoqueda&&kiriqueda&&amequeda&&iwaqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Otogakure e SO Venceram a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(sunaqueda&&konohaqueda&&kumoqueda&&kiriqueda&&amequeda&&otoqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Iwagakure Venceu a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(sunaqueda&&konohaqueda&&kumoqueda&&kiriqueda&&iwaqueda&&otoqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Amegakure Venceu a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(sunaqueda&&konohaqueda&&kumoqueda&&amequeda&&iwaqueda&&otoqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Kirigakure e 7SS Venceram a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(sunaqueda&&konohaqueda&&kiriqueda&&amequeda&&iwaqueda&&otoqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Kumogakure Venceu a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(sunaqueda&&kumoqueda&&kiriqueda&&amequeda&&iwaqueda&&otoqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Konoha Venceu a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					del(src)
					return
				if(istype(src,/mob/marcos/monumentoRock))
					world << "<center><b><font size=4><font color=blue>IWA acaba de cair!"
					iwaqueda=1
					world << "<b><font size=2><font color=yellow> Por ter destruído o marco de Iwa, [M] conseguiu um Tesouro Ninja!</font>"
					var/obj/Tesouro/BauSurpresa/B = new /obj/Tesouro/BauSurpresa
					B.loc = M
					if(M.Village=="Konoha")
						konohafundo+=iwafundo
						iwafundo-=iwafundo
						world << "<font size=+1> KONOHA venceu IWA por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Kumo")
						kumofundo+=iwafundo
						iwafundo-=iwafundo
						world << "<font size=+1> KUMO venceu IWA por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Kiri"||M.Village2=="Kiri")
						kirifundo+=iwafundo
						iwafundo-=iwafundo
						world << "<font size=+1> KIRI e 7SS venceram IWA por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Suna")
						sunafundo+=iwafundo
						iwafundo-=iwafundo
						world << "<font size=+1> SUNA venceu IWA por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Ame")
						amefundo+=iwafundo
						iwafundo-=iwafundo
						world << "<font size=+1> AME venceu IWA por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Akatsuki"||M.Village=="AkatsukiK"||M.Village=="AkatsukiL"||M.Village=="Taka")
						akatfundo+=iwafundo
						iwafundo-=iwafundo
						world << "<font size=+1> AKATSUKI e TAKA venceram IWA por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Oto"||M.Village2=="Oto")
						sofundo+=iwafundo
						iwafundo-=iwafundo
						world << "<font size=+1> Oto e SO venceram IWA por isso ficara com todo seu dinheiro...!</font>"
					if(iwaqueda&&konohaqueda&&kumoqueda&&kiriqueda&&amequeda&&sunaqueda&&otoqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! AKATSUKI e TAKA venceram a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(iwaqueda&&konohaqueda&&kumoqueda&&kiriqueda&&amequeda&&sunaqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Otogakure e SO Venceram a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(iwaqueda&&konohaqueda&&kumoqueda&&kiriqueda&&amequeda&&otoqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Sunagakure Venceu a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(iwaqueda&&konohaqueda&&kumoqueda&&kiriqueda&&sunaqueda&&otoqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Amegakure Venceu a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(iwaqueda&&konohaqueda&&kumoqueda&&amequeda&&sunaqueda&&otoqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Kirigakure e 7SS Venceram a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(iwaqueda&&konohaqueda&&kiriqueda&&amequeda&&sunaqueda&&otoqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Kumogakure Venceu a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(iwaqueda&&kumoqueda&&kiriqueda&&amequeda&&sunaqueda&&otoqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Konoha Venceu a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					del(src)
					return
				if(istype(src,/mob/marcos/monumentoSound))
					world << "<center><b><font size=4><font color=blue>Oto acaba de cair!"
					otoqueda=1
					world << "<b><font size=2><font color=yellow> Por ter destruído o marco de Oto, [M] conseguiu um Tesouro Ninja!</font>"
					var/obj/Tesouro/BauSurpresa/B = new /obj/Tesouro/BauSurpresa
					B.loc = M
					if(M.Village=="Konoha")
						konohafundo+=sofundo
						sofundo-=sofundo
						world << "<font size=+1> KONOHA venceu OTO e SO por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Kumo")
						kumofundo+=sofundo
						sofundo-=sofundo
						world << "<font size=+1> KUMO venceu OTO e SO por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Kiri"||M.Village2=="Kiri")
						kirifundo+=sofundo
						sofundo-=sofundo
						world << "<font size=+1> KIRI e 7SS venceram OTO e SO por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Suna")
						sunafundo+=sofundo
						sofundo-=sofundo
						world << "<font size=+1> SUNA venceu OTO e SO por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Ame")
						amefundo+=sofundo
						sofundo-=sofundo
						world << "<font size=+1> AME venceu OTO e SO por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Akatsuki"||M.Village=="AkatsukiK"||M.Village=="AkatsukiL"||M.Village=="Taka")
						akatfundo+=sofundo
						sofundo-=sofundo
						world << "<font size=+1> AKATSUKI e TAKA venceram OTO e SO por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Iwa")
						iwafundo+=sofundo
						sofundo-=sofundo
						world << "<font size=+1> IWA venceu OTO e SO por isso ficara com todo seu dinheiro...!</font>"
					if(otoqueda&&konohaqueda&&kumoqueda&&kiriqueda&&amequeda&&sunaqueda&&iwaqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! AKATSUKI e TAKA venceram a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(otoqueda&&konohaqueda&&kumoqueda&&kiriqueda&&amequeda&&sunaqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Iwagakure Venceu a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(otoqueda&&konohaqueda&&kumoqueda&&kiriqueda&&amequeda&&iwaqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Sunagakure Venceu a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(otoqueda&&konohaqueda&&kumoqueda&&kiriqueda&&sunaqueda&&iwaqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Amegakure Venceu a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(otoqueda&&konohaqueda&&kumoqueda&&amequeda&&sunaqueda&&iwaqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Kirigakure e 7SS Venceram a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(otoqueda&&konohaqueda&&kiriqueda&&amequeda&&sunaqueda&&iwaqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Kumogakure Venceu a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(otoqueda&&kumoqueda&&kiriqueda&&amequeda&&sunaqueda&&iwaqueda&&akatqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Konoha Venceu a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					del(src)
					return
				if(istype(src,/mob/marcos/monumentoAkatsuki))
					world << "<center><b><font size=4><font color=blue>Akatsuki acaba de cair!"
					akatqueda=1
					world << "<b><font size=2><font color=yellow> Por ter destruído o marco de Akatsuki, [M] conseguiu um Tesouro Ninja!</font>"
					var/obj/Tesouro/BauSurpresa/B = new /obj/Tesouro/BauSurpresa
					B.loc = M
					if(M.Village=="Konoha")
						konohafundo+=akatfundo
						akatfundo-=akatfundo
						world << "<font size=+1> KONOHA venceu AKATSUKI por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Kumo")
						kumofundo+=akatfundo
						akatfundo-=akatfundo
						world << "<font size=+1> KUMO venceu AKATSUKI por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Kiri"||M.Village2=="Kiri")
						kirifundo+=akatfundo
						akatfundo-=akatfundo
						world << "<font size=+1> KIRI e 7SS venceram AKATSUKI e TAKA por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Suna")
						sunafundo+=akatfundo
						akatfundo-=akatfundo
						world << "<font size=+1> SUNA venceu AKATSUKI por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Ame")
						amefundo+=akatfundo
						akatfundo-=akatfundo
						world << "<font size=+1> AME venceu AKATSUKI por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Oto"||M.Village2=="Oto")
						sofundo+=akatfundo
						akatfundo-=akatfundo
						world << "<font size=+1> Oto e SO venceram AKATSUKI e TAKA por isso ficara com todo seu dinheiro...!</font>"
					if(M.Village=="Iwa")
						iwafundo+=akatfundo
						akatfundo-=akatfundo
						world << "<font size=+1> IWA venceu AKATSUKI por isso ficara com todo seu dinheiro...!</font>"
					if(akatqueda&&konohaqueda&&kumoqueda&&kiriqueda&&amequeda&&sunaqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Otogakure e SO Venceram a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(akatqueda&&konohaqueda&&kumoqueda&&kiriqueda&&amequeda&&sunaqueda&&otoqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Iwagakure Venceu a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(akatqueda&&konohaqueda&&kumoqueda&&kiriqueda&&amequeda&&iwaqueda&&otoqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Sunagakure Venceu a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(akatqueda&&konohaqueda&&kumoqueda&&kiriqueda&&sunaqueda&&iwaqueda&&otoqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Amegakure Venceu a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(akatqueda&&konohaqueda&&kumoqueda&&amequeda&&sunaqueda&&iwaqueda&&otoqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Kirigakure e 7SS Venceram a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(akatqueda&&konohaqueda&&kiriqueda&&amequeda&&sunaqueda&&iwaqueda&&otoqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Kumogakure Venceu a Guerra!</b></center></font></font>"
						emguerra=0
						akatqueda=0
						konohaqueda=0
						kiriqueda=0
						amequeda=0
						sunaqueda=0
						iwaqueda=0
						otoqueda=0
						kumoqueda=0
						sunaqueda=0
						world.Repop()
					if(akatqueda&&kumoqueda&&kiriqueda&&amequeda&&sunaqueda&&iwaqueda&&otoqueda)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou! Konoha Venceu a Guerra!</b></center></font></font>"
						emguerra=0
						world.Repop()
					del(src)
					return
				if(istype(src,/mob/Gamabunta))
					for(var/mob/A in world)
						if(src.owner==A)
							M.kuchiyoseusing=0
					del(src)
				if(istype(src,/mob/Medium_Frog))
					for(var/mob/A in world)
						if(src.owner==A)
							M.kuchiyoseusing=0
					del(src)
				if(istype(src,/mob/Bee))
					for(var/mob/A in world)
						if(src.owner==A)
							M.kuchiyoseusing=0
					del(src)
				if(istype(src,/mob/Medium_Bee))
					for(var/mob/A in world)
						if(src.owner==A)
							M.kuchiyoseusing=0
					del(src)
				if(istype(src,/mob/Big_Slug))
					for(var/mob/A in world)
						if(src.owner==M)
							M.kuchiyoseusing=0
					del(src)
				if(istype(src,/mob/Medium_Slug))
					for(var/mob/A in world)
						if(src.owner==A)
							M.kuchiyoseusing=0
					del(src)
				if(istype(src,/mob/Big_Snake))
					for(var/mob/A in world)
						if(src.owner==A)
							M.kuchiyoseusing=0
							if(A.cobraprotegendo)
								A.icon='Base white.dmi'
								A.Oicon='Base white.dmi'
								A.cast=0
								A.Frozen=0
								A.Kaiten=0
					del(src)
				if(istype(src,/mob/Medium_Snake))
					for(var/mob/A in world)
						if(src.owner==A)
							M.kuchiyoseusing=0
					del(src)
				if(istype(src,/mob/Karasu))
					del(src)
					return
				if(istype(src,/mob/Kuroari))
					del(src)
					return
				if(istype(src,/mob/Sanshouo))
					del(src)
					return
				if(istype(src,/mob/Klog))
					M<<"Era um kawarimi!"
					del(src)
					return
				if(src.isbunshin)
					flick("smoke2",src)
					sleep(5)
					del(src)
					return
				if(src.NPC)
					del(src)
					return
				for(var/obj/shibaritrail/T in world)
					if(T.owner==src)
						del(T)
				for(var/obj/shibari/T1 in world)
					if(T1.owner==src)
						del(T1)
				if(M == src)
					if(Chuunintime||Chuuninfloresta||ChuunintimeS||ChuuninflorestaS)
						if(src.deathforest)
							src.deathforest=0
							src.testefeito=0
					world<<output("<font color=red><b>[src]</b><font color=white> acaba de desmaiar","output2.sistema")
					if(src.earthscroll)
						for(var/obj/objetos/earthscroll/S in src.contents)
							S.loc = src.loc
							//src.sefodeulegal=1
					if(src.heavenscroll)
						for(var/obj/objetos/heavenscroll/F in src.contents)
							F.loc = src.loc
							//src.sefodeulegal=1
					src.derrotas+=1
					src.kagami=0
					src.nin=src.Mnin
					src.tai=src.Mtai
					src.gen=src.Mgen
					src.YT=0
					src.underlays-='hyuugacircle.dmi'
					src.overlays-='hyuugacircle.dmi'
					src.velocista=0
					src.mindado = 0
					src.Ryoroi=0
					src.jashin=0
					if(src.Henge)
						src.overlays = null
						src.Henge = 0
						var/list/O = src.overlays.Copy()
						src.overlays = O.Copy()
						src.icon = src.Oicon
					src.incs=0
					src.honra-=1
					PessoaEvento.Remove(src)
					src.no_evento=0
					var/obj/nevoaacida/held/agua_ki = new /obj/nevoaacida/held
					src.overlays -=agua_ki
					world.bingobook()
					if(src.inmissionD||src.inmissionD2||src.inmissionD3||src.inmissionD4||src.inmissionD5||src.inmissionC||src.inmissionC2||src.inmissionC3||src.inmissionC4||src.inmissionC5||src.inmissionB||src.inmissionA||src.inmissionS)
						src.inmissionD=0
						src.inmissionC=0
						src.inmissionD2=0
						src.inmissionC2=0
						src.inmissionD3=0
						src.inmissionC3=0
						src.inmissionD4=0
						src.inmissionC4=0
						src.inmissionD5=0
						src.inmissionC5=0
						src.inmissionB=0
						src.inmissionA=0
						src.inmissionS=0
						src << "<b>Você falhou em sua missão, fracassado!</b>"
					src.screwed=0
					src.inNHJ = 0
					src.inTC = 0
					src.overlays-='cs.dmi'
					src.overlays-='cs.dmi'
					src.overlays-='cs.dmi'
					src.overlays-='cs2.dmi'
					src.overlays-='cs2.dmi'
					src.overlays-='cs2.dmi'
					src.overlays-='cs3.dmi'
					src.overlays-='cs3.dmi'
					src.overlays-='cs3.dmi'
					src.jourou=0
					src.kawa=0
					src.Flight=0
					src.Move_Delay=0.7
					src.Kshibari=0
					src.sombrafreeze=0
//					src.verbs-=typesof(/mob/cliff/verb)//
					src.verbs -= /mob/cliff/verb/TreinarHP
					src.doing = 1
					src.Frozen = 0
					src.verbs -= new /mob/mission/verb/Escape()
					src.verbs -= new /mob/mission/verb/Escape()
					src.Moveing = 0
					src.kubi=0
					src.Ryoroi=0
					src.burned=0
					src.acido=0
					src.treinando=0
					src.poisoned=0
					src.poisoned2=0
					src.poisoned3=0
					src.poisoned4=0
					src.poisoned5=0
					src.labirinto=0
					if(emguerra)
						src.morto=1
					src.loc=locate(0,0,0)
					src.PK=0
					src<<"Você vai retornar ao seu ponto de origem em 5 segundos!"
					src.verbs -= /mob/cliff/verb/TreinarHP
					//src.SalvarAgora()
					sleep(50)
					src.PK=1
					src.cast=0
					src.Yen=0
					src.doing = 0
					src.loc=locate(456,174,3)
					src.move=1
					src.Move_Delay=0.7
					src.froze=0
					src.Frozen=0
					src.Mountain=0
					src.Apoisoned=0
					src.poisoned=0
					src.poisoned2=0
					src.poisoned3=0
					src.poisoned4=0
					src.poisoned5=0
					src.mindado = 0
					src.genjando=0
					src.estilovel=0
					//src.SalvarAgora()
					//return
				else
					/*if(M.client&&src.client||!M.client&&src.client)
						if(emguerra)
							world<<"<font color=#FF8C00><b>Guerra Info:</b> \white <b>[M]</b> derrotou <b>[src]</b> na Guerra!</font>"
							src.morreunaguerra=1
							src.cast=1
							//src.SalvarAgora()
							return
						if(M.rank != "Nukenin")
							if(src.z==54&&M.z==54&&!emguerra)
								world<<"\green <b>Evento Info:</b>\white <b>[M]</b> derrotou <b>[src]</b> no Evento!"
								src.loc=locate(456,174,3)
								//src.SalvarAgora()
								return
							else if(Chuuninfloresta&&!emguerra)
								if(src.deathforest&&M.deathforest)
									if(src.z==100&&src.x>0&&src.x<101&&src.y>0&&src.y<102)
										world<<"\red <b>Chuunin Info:</b>\white <b>[M]</b> derrotou <b>[src]</b> na Floresta da Morte!"
										src.deathforest=0
										src.testefeito=0
										src.loc=locate(456,174,3)
										//src.SalvarAgora()
										return
							else if(src.Village==M.Village&&!emguerra||src.Village==M.Village2&&!emguerra||src.Village2==M.Village&&!emguerra)
								if(src.z==54||src.z==30||src.z==43)return
								world << "<font face=tahoma><u><i><font size=2><font color=red><b>[M]</b> derrotou <b>[src]</b> , sendo que eles são da mesma Vila!"
								//world << "A vila do assassino perderá  dinheiro por não manter a ordem em seu próprio território"
								if(M.Village=="Konoha")
									konohafundo-=30000
									if(konohafundo<=0)
										konohafundo=0
								if(M.Village=="Ame")
									amefundo-=30000
									if(amefundo<=0)
										amefundo=0
								if(M.Village=="Kiri"||M.Village2=="Kiri")
									kirifundo-=30000
									if(kirifundo<=0)
										kirifundo=0
								if(M.Village=="Kumo")
									kumofundo-=30000
									if(kumofundo<=0)
										kumofundo=0
								if(M.Village=="Iwa")
									iwafundo-=30000
									if(iwafundo<=0)
										iwafundo=0
								if(M.Village=="Suna")
									sunafundo-=30000
									if(sunafundo<=0)
										sunafundo=0
								if(M.Village=="Oto"||M.Village2=="Oto")
									sofundo-=30000
									if(sofundo<=0)
										sofundo=0
								M.honra-=rand(5,20)
								M.killsvillage++
								spawn()M.Nukenin()
								M.recompensa+=rand(400,700)
								if(M.honra<=0)M.honra=0
								world.bingobook()
						else
							if(!emguerra)
								world << "<font color=white><b>><u>Info</u><</b>:<font color=green><b>[M]</b><font color=white> derrotou <b><font color=red>[src]</b>!"
								M.recompensa+=rand(100,400)
								if(M.party)
									for(var/mob/A in oview(5))
										if(A.partysensei == M.partysensei)
											if(A.<5000000)
												A.recompensa+=rand(100,400)
												A<<"Você recebeu dinheiro por ajudar a derrotar um inimigo!"
											else
												A<<"Você ajudou a derrotar um inimigo, mas já tem dinheiro demais!"
								world.bingobook()*/
					if(M.client&&src.client||!M.client&&src.client)
						M.move=1
						M.cast=0
						M.Frozen=0
						M.hakkando=0
						M.HakkeFreeze=0
						M.kubi=0
						M.sombrafreeze=0
						M.kagemane=0
						M.froze=0
						M.caught=0
						M.captured=0
						/*src.najau=0
						src.naart=0
						src.naare=0
						src.podenada=0
						if(M.client)
							if(M.z==2&&M.x>278&&M.x<294&&M.y>264&&M.y<282)
								M.podenada=0
								M.najau = 0
								temjaula=0
								world<<"[M] saiu da Jaula, agora ela não está mais em uso!"
								M<<"Você foi enviado automaticamente para o Respawn!"
								M.Suicides()
							if(M.z==4&&M.x>344&&M.x<382&&M.y>5&&M.y<36)
								M.podenada=0
								M.naart = 0
								temarenat=0
								world<<"[M] saiu da Arena Tradicional, agora ela não está mais em uso!"
								M<<"Você foi enviado automaticamente para o Respawn!"
								M.Suicides()
							if(M.z==10&&M.x>447&&M.x<510&&M.y>38&&M.y<70)
								M.podenada=0
								M.naare = 0
								temarena=0
								world<<"[M] saiu da Arena, agora ela não está mais em uso!"
								M<<"Você foi enviado automaticamente para o Respawn!"
								M.Suicides()*/
						if(emguerra)
							world<<"<font color=#FF8C00><b>Guerra Info:</b> \white <b>[M]</b> derrotou <b>[src]</b> na Guerra!</font>"
							src.morreunaguerra=1
							src.Frozen=1
							src.froze=1
							src.cast=1
							//src.SalvarAgora()
							return
						if(src.z==54&&M.z==54&&!emguerra)
							world<<"\green <b>Evento Info:</b>\white <b>[M]</b> derrotou <b>[src]</b> no Evento!"
							src.loc=locate(456,174,3)
							//src.SalvarAgora()
							return
						if(Chuuninfloresta&&!emguerra)
							if(src.deathforest&&M.deathforest)
								if(src.z==100&&src.x>0&&src.x<101&&src.y>0&&src.y<102)
									world<<"\red <b>Chuunin Info:</b>\white <b>[M]</b> derrotou <b>[src]</b> na Floresta da Morte!"
									src.deathforest=0
									src.testefeito=0
									src.loc=locate(456,174,3)
									//src.SalvarAgora()
									return
						if(!emguerra)
							world <<output("<font color=white><b>>><u>Info</u><<: <font color=green><b>[M]</b></font> derrotou <font color=red><b>[src]</font></b>","output2.sistema")
							M.recompensa+=rand(100,400)
							if(M.party)
								for(var/mob/A in oview(5))
									if(A.partysensei == M.partysensei)
										if(A.<5000000)
											A.recompensa+=rand(100,400)
											A<<"Você recebeu dinheiro por ajudar a derrotar um inimigo!"
										else
											A<<"Você ajudou a derrotar um inimigo, mas já tem dinheiro demais!"
							world.bingobook()
/*					if(M.name == "{Enemy}Samurai Anciao"&&src.client)
						M.vitorias+=0
						src.derrotas+=1
					if(M.name == "{Enemy}Ninja Assassino"&&src.client)
						M.vitorias+=0
						src.derrotas+=1
					if(M.name == "{Enemy}Ladrão"&&src.client)
						M.vitorias+=0
						src.derrotas+=1*/
					if(M.name == "{Enemy}Shinobi da Caverna"&&src.client)
						M.vitorias+=0
						src.derrotas+=1
					if(M.name == "{Bijuu}Shukaku"&&src.client)
						M.vitorias+=0
						src.derrotas+=1
					if(M.name == "{Bijuu}Matatabi"&&src.client)
						M.vitorias+=0
						src.derrotas+=1
					if(M.name == "{Bijuu}Isobu"&&src.client)
						M.vitorias+=0
						src.derrotas+=1
					if(M.name == "{Bijuu}Son Goku"&&src.client)
						M.vitorias+=0
						src.derrotas+=1
					if(M.name == "{Bijuu}Kokuo"&&src.client)
						M.vitorias+=0
						src.derrotas+=1
					if(M.name == "{Bijuu}Saiken"&&src.client)
						M.vitorias+=0
						src.derrotas+=1
					if(M.name == "{Bijuu}Choumei"&&src.client)
						M.vitorias+=0
						src.derrotas+=1
					if(M.name == "{Bijuu}Gyuki"&&src.client)
						M.vitorias+=0
						src.derrotas+=1
					if(M.name == "{Bijuu}Kurama"&&src.client)
						M.vitorias+=0
						src.derrotas+=1
					if(M.name == "{Bijuu}Clone"&&src.client)
						M.vitorias+=0
						src.derrotas+=1
					if(istype(M,/mob/enemy/Mask1)&&src.client)
						src.derrotas+=1
						M.vitorias+=1
					if(istype(M,/mob/enemy/Mask2)&&src.client)
						src.derrotas+=1
						M.vitorias+=1
					if(istype(M,/mob/enemy/Mask3)&&src.client)
						src.derrotas+=1
						M.vitorias+=1
					if(istype(M,/mob/enemy/Corpo)&&src.client)
						src.derrotas+=1
						M.vitorias+=1
					if(istype(M,/mob/enemy/Mizu)&&src.client)
						src.derrotas+=1
						M.vitorias+=1
					if(istype(M,/mob/enemy/Mizu2)&&src.client)
						src.derrotas+=1
						M.vitorias+=1
					if(istype(M,/mob/npcs/KBunshin)&&src.client)
						src.derrotas+=1
						M.vitorias+=1
					if(src.Village=="Nenhum"||src.Village=="Akatsuki"||src.Village=="Organização Nuke"||src.Village=="Taka"||src.Village=="Ootsutsuki-Lua")
						M.missingkills+=1
						M.honra+=rand(2,5)
					if(!M.rank=="Estudante"&&src.rank=="Estudante")
						M.honra-=rand(2,15)
						if(M.honra<=0)
							M.honra=0
					if(!M.rank=="Kage"&&src.rank=="Kage")
						M.honra-=rand(2,10)
						if(M.honra<=0)
							M.honra=0
					if(src.akatsukileader)
						M.honra+=rand(5,25)
					if(src.earthscroll)
						for(var/obj/objetos/earthscroll/S in src.contents)
							S.loc = src.loc
							//src.sefodeulegal=1
					if(src.heavenscroll)
						for(var/obj/objetos/heavenscroll/F in src.contents)
							F.loc = src.loc
							//src.sefodeulegal=1
					if(src.Uchiha)
						M.uchikills+=1
						M.vitorias+=1
					if(src.Shodaime)
						M.senjukills+=1
						M.vitorias+=1
					if(src.Hyuuga&&src.hyuuganeji)
						M.hyuugakills+=1
						M.hyuugaNkills+=1
						M.vitorias+=1
					if(src.Hyuuga&&src.hyuugahinata)
						M.hyuugakills+=1
						M.hyuugaHkills+=1
						M.vitorias+=1
					else
						M.vitorias+=1
					if(M.party)
						for(var/mob/A in oview(5))
							if(A.partysensei == M.partysensei)
								A.honra+=rand(2,5)
								A.recompensa+=rand(100,400)
								A<<"Você recebeu recompensa por ajudar [M] a derrotar [src]!"
					M.kubi=0
					//M.move=1
					M.Frozen=0
					M.froze=0
					M.caught=0
					M.captured=0
					M.Kshibari=0
					src.sombrafreeze=0
					src.nin=src.Mnin
					src.underlays-='hyuugacircle.dmi'
					src.overlays-='hyuugacircle.dmi'
					src.jashin=0
					src.tai=src.Mtai
					src.relampagoop = 0
					src.karamatsuon=0
					src.cast = 0
					src.froze=0
					src.move=1
					src.hakkando=0
					src.HakkeFreeze=0
					src.hyoushou=0
					src.kuchiyoseusing=0
					src.karamatsuon = 0
					src.incs=0
					src.Flight=0
					src.Ryoroi=0
					src.recompensa=0
					src.testefeito=0
					world.bingobook()
					src.velocista=0
					src.derrotas+=1
					src.YT=0
					src.cast=0
					src.honra-=1
					if(src.honra<=0)
						src.honra=0
					src.gen=src.Mgen
					src.screwed=0
					src.inNHJ = 0
					src.inTC = 0
					src.no_evento=0
					if(src.Henge)
						src.overlays = null
						src.Henge = 0
						var/list/O = src.overlays.Copy()
						src.overlays = O.Copy()
						src.icon = src.Oicon
					src.kawa=0
					PessoaEvento.Remove(src)
					src.overlays-='cs.dmi'
					src.overlays-='cs.dmi'
					src.overlays-='cs.dmi'
					src.overlays-='cs2.dmi'
					src.overlays-='cs2.dmi'
					src.overlays-='cs2.dmi'
					src.overlays-='cs3.dmi'
					var/obj/nevoaacida/held/agua_ki = new /obj/nevoaacida/held
					src.overlays -=agua_ki
					src.overlays-='cs3.dmi'
					src.overlays-='cs3.dmi'
					src.jourou=0
					if(src.inmissionD||src.inmissionD2||src.inmissionD3||src.inmissionD4||src.inmissionD5||src.inmissionC||src.inmissionC2||src.inmissionC3||src.inmissionC4||src.inmissionC5||src.inmissionB||src.inmissionA||src.inmissionS)
						src.inmissionD=0
						src.inmissionC=0
						src.inmissionD2=0
						src.inmissionC2=0
						src.inmissionD3=0
						src.inmissionC3=0
						src.inmissionD4=0
						src.inmissionC4=0
						src.inmissionD5=0
						src.inmissionC5=0
						src.inmissionB=0
						src.inmissionA=0
						src.inmissionS=0
						src << "<b>Você falhou em sua missão, fracassado!</b>"
					src.Move_Delay=0.4
					src.Kshibari=0
					src.verbs-=typesof(/mob/cliff/verb)
					src.verbs -= /mob/cliff/verb/TreinarHP
					src.doing = 1
					src.Frozen = 0
					src.verbs -= new /mob/mission/verb/Escape()
					src.Moveing = 0
					src.kubi=0
					src.treinando=0
					src.health = src.maxhealth
					//src.SalvarAgora()
					src.Ryoroi=0
					if(emguerra==1)
						usr.morto=1
					if(src.Uchiha)
						var/obj/morto/corpouchiha/G = new /obj/morto/corpouchiha
						G.loc = locate(src.x,src.y,src.z)
						G.name = src.name
						G.valor = src.honra*100+src.kills*100
						src.loc=locate(0,0,0)
						src<<"Você vai retornar ao seu ponto de origem em 5 segundos!"
						src.verbs -= /mob/cliff/verb/TreinarHP
						src.burned=0
						src.acido=0
						src.kagemane=0
						src.velocista=0
						src.Apoisoned=0
						src.Flight=0
						src.inNHJ = 0
						src.inTC = 0
						src.labirinto=0
						src.YT=0
						world.bingobook()
						src.underlays-='hyuugacircle.dmi'
						src.overlays-='hyuugacircle.dmi'
						if(src.Henge)
							src.overlays = null
							src.Henge = 0
							var/list/O = src.overlays.Copy()
							src.overlays = O.Copy()
							src.icon = src.Oicon
						src.jashin=0
						src.kawa=0
						src.PK=0
						sleep(50)
						del(G)
						src.cast = 0
						src.relampagoop = 0
						src.karamatsuon = 0
						src.froze=0
						src.move=1
						src.hakkando=0
						src.HakkeFreeze=0
						src.PK=1
						src.Yen=0
						src.doing = 0
						src.Ryoroi=0
						src.loc=locate(456,174,3)
						//src.SalvarAgora()
						src.Frozen=0
						src.froze=0
						src.move=1
						src.Move_Delay = 0.7
						src.genjando=0
						src.estilovel=0
						src.mindado = 0
						src.Apoisoned=0
						src.poisoned=0
						src.poisoned2=0
						src.poisoned3=0
						src.poisoned4=0
						src.poisoned5=0
						if(src.libering==1)
							src<<"Você parou de Liberar Chakra!"
							src.libering=0
							src.cannin=1
							spawn(100)
								src.cannin=0
						if(src.vlibering==1)
							src<<"Você parou de Liberar Chakra!"
							src.vlibering=0
							src.vcannin=1
							spawn(100)
								src.vcannin=0
						if(src.concing==1)
							src<<"Você parou de Concentrar!"
							src.concing=0
							src.cangen=1
							spawn(100)
								src.cangen=0
						if(src.vconcing==1)
							src<<"Você parou de Concentrar!"
							src.vconcing=0
							src.vcangen=1
							spawn(100)
								src.vcangen=0
						if(src.taitreino==1)
							src<<"Você parou de Treinar Taijutsu!"
							src.taitreino=0
							src.cantai=1
							spawn(100)
								src.cantai=0
						if(src.vtaitreino==1)
							src<<"Você parou de Treinar Taijutsu!"
							src.vtaitreino=0
							src.canvtai=1
							spawn(100)
								src.canvtai=0
						if(src.armastreino==1)
							src<<"Você parou de Treinar Armas!"
							src.armastreino=0
							src.canarmas=1
							spawn(100)
								src.canarmas=0
						if(src.varmastreino==1)
							src<<"Você parou de Treinar Armas!"
							src.varmastreino=0
							src.vcanarmas=1
							spawn(100)
								src.vcanarmas=0
						if(src.LogSecretotaitrain==1)
							src<<"Você parou de Treinar Taijutsu!"
							src.LogSecretotaitrain=0
							src.canLogSecretotaitrain=1
							spawn(100)
								src.canLogSecretotaitrain=0
						if(src.LogSecretonintrain==1)
							src<<"Você parou de Treinar Ninjutsu!"
							src.LogSecretonintrain=0
							src.canLogSecretonintrain=1
							spawn(100)
								src.canLogSecretonintrain=0
						if(src.LogSecretogentrain==1)
							src<<"Você parou de Treinar Genjutsu!"
							src.LogSecretogentrain=0
							src.canLogSecretogentrain=1
							spawn(100)
								src.canLogSecretogentrain=0
						if(src.LogSecretoarmtrain==1)
							src<<"Você parou de Treinar Armas!"
							src.LogSecretoarmtrain=0
							src.canLogSecretoarmtrain=1
							spawn(100)
								src.canLogSecretoarmtrain=0
						if(src.log10taitrain==1)
							src<<"Você parou de Treinar Taijutsu!"
							src.log10taitrain=0
							src.canlog10taitrain=1
							spawn(100)
								src.canlog10taitrain=0
						if(src.log10nintrain==1)
							src<<"Você parou de Treinar Ninjutsu!"
							src.log10nintrain=0
							src.canlog10nintrain=1
							spawn(100)
								src.canlog10nintrain=0
						if(src.log10gentrain==1)
							src<<"Você parou de Treinar Genjutsu!"
							src.log10gentrain=0
							src.canlog10gentrain=1
							spawn(100)
								src.canlog10gentrain=0
						if(src.log10armtrain==1)
							src<<"Você parou de Treinar Armas!"
							src.log10armtrain=0
							src.canlog10armtrain=1
							spawn(100)
								src.canlog10armtrain=0
						if(src.log4taitrain==1)
							src<<"Você parou de Treinar Taijutsu!"
							src.log4taitrain=0
							src.canlog4taitrain=1
							spawn(100)
								src.canlog4taitrain=0
						if(src.log4nintrain==1)
							src<<"Você parou de Treinar Ninjutsu!"
							src.log4nintrain=0
							src.canlog4nintrain=1
							spawn(100)
								src.canlog4nintrain=0
						if(src.log4gentrain==1)
							src<<"Você parou de Treinar Genjutsu!"
							src.log4gentrain=0
							src.canlog4gentrain=1
							spawn(100)
								src.canlog4gentrain=0
						if(src.log4armtrain==1)
							src<<"Você parou de Treinar Armas!"
							src.log4armtrain=0
							src.canlog4armtrain=1
							spawn(100)
								src.canlog4armtrain=0
						if(src.Log5armtrain==1)
							src<<"Você parou de Treinar tudo!"
							src.Log5armtrain=0
							src.canLog5armtrain=1
							spawn(100)
								src.canLog5armtrain=0
						if(src.Log11armtrain==1)
							src<<"Você parou de Treinar tudo!"
							src.Log11armtrain=0
							src.canLog11armtrain=1
							spawn(100)
								src.canLog11armtrain=0
						if(src.Log100armtrain==1)
							src<<"Você parou de Treinar tudo!"
							src.Log100armtrain=0
							src.canLog100armtrain=1
							spawn(100)
								src.canLog100armtrain=0
						//src.SalvarAgora()
						return
					else
						var/obj/morto/corponormal/B = new /obj/morto/corponormal
						B.loc = locate(src.x,src.y,src.z)
						B.name = src.name
						B.valor = src.honra*100+src.kills*100
						src.loc=locate(0,0,0)
						src.velocista=0
						src<<"Você vai retornar ao seu ponto de origem em 5 segundos!"
						src.verbs -= /mob/cliff/verb/TreinarHP
						src.burned=0
						src.inNHJ = 0
						src.inTC = 0
						src.underlays-='hyuugacircle.dmi'
						src.overlays-='hyuugacircle.dmi'
						src.acido=0
						src.Apoisoned=0
						src.poisoned=0
						src.poisoned2=0
						src.poisoned3=0
						src.poisoned4=0
						src.poisoned5=0
						src.Flight=0
						src.YT=0
						world.bingobook()
						src.kawa=0
						if(src.Henge)
							src.overlays = null
							src.Henge = 0
							var/list/O = src.overlays.Copy()
							src.overlays = O.Copy()
							src.icon = src.Oicon
						src.jashin=0
						src.labirinto=0
						src.PK=0
						sleep(50)
						del(B)
						src.cast = 0
						src.karamatsuon = 0
						src.relampagoop = 0
						src.froze=0
						src.move=1
						src.hakkando=0
						src.HakkeFreeze=0
						src.PK=1
						src.cast=0
						src.Yen=0
						src.doing = 0
						src.Apoisoned=0
						src.poisoned=0
						src.poisoned2=0
						src.poisoned3=0
						src.poisoned4=0
						src.poisoned5=0
						src.Ryoroi=0
						src.loc=locate(456,174,3)
						src.froze=0
						src.Frozen=0
						src.move=1
						src.Move_Delay = 0.7
						src.genjando=0
						src.estilovel=0
						src.mindado = 0
					if(src.libering==1)
						src<<"Você parou de Liberar Chakra!"
						src.libering=0
						src.cannin=1
						spawn(100)
							src.cannin=0
					if(src.vlibering==1)
						src<<"Você parou de Liberar Chakra!"
						src.vlibering=0
						src.vcannin=1
						spawn(100)
							src.vcannin=0
					if(src.concing==1)
						src<<"Você parou de Concentrar!"
						src.concing=0
						src.cangen=1
						spawn(100)
							src.cangen=0
					if(src.vconcing==1)
						src<<"Você parou de Concentrar!"
						src.vconcing=0
						src.vcangen=1
						spawn(100)
							src.vcangen=0
					if(src.taitreino==1)
						src<<"Você parou de Treinar Taijutsu!"
						src.taitreino=0
						src.cantai=1
						spawn(100)
							src.cantai=0
					if(src.vtaitreino==1)
						src<<"Você parou de Treinar Taijutsu!"
						src.vtaitreino=0
						src.canvtai=1
						spawn(100)
							src.canvtai=0
					if(src.armastreino==1)
						src<<"Você parou de Treinar Armas!"
						src.armastreino=0
						src.canarmas=1
						spawn(100)
							src.canarmas=0
					if(src.varmastreino==1)
						src<<"Você parou de Treinar Armas!"
						src.varmastreino=0
						src.vcanarmas=1
						spawn(100)
							src.vcanarmas=0
					if(src.LogSecretotaitrain==1)
						src<<"Você parou de Treinar Taijutsu!"
						src.LogSecretotaitrain=0
						src.canLogSecretotaitrain=1
						spawn(100)
							src.canLogSecretotaitrain=0
					if(src.LogSecretonintrain==1)
						src<<"Você parou de Treinar Ninjutsu!"
						src.LogSecretonintrain=0
						src.canLogSecretonintrain=1
						spawn(100)
							src.canLogSecretonintrain=0
					if(src.LogSecretogentrain==1)
						src<<"Você parou de Treinar Genjutsu!"
						src.LogSecretogentrain=0
						src.canLogSecretogentrain=1
						spawn(100)
							src.canLogSecretogentrain=0
					if(src.LogSecretoarmtrain==1)
						src<<"Você parou de Treinar Armas!"
						src.LogSecretoarmtrain=0
						src.canLogSecretoarmtrain=1
						spawn(100)
							src.canLogSecretoarmtrain=0
					if(src.log10taitrain==1)
						src<<"Você parou de Treinar Taijutsu!"
						src.log10taitrain=0
						src.canlog10taitrain=1
						spawn(100)
							src.canlog10taitrain=0
					if(src.log10nintrain==1)
						src<<"Você parou de Treinar Ninjutsu!"
						src.log10nintrain=0
						src.canlog10nintrain=1
						spawn(100)
							src.canlog10nintrain=0
					if(src.log10gentrain==1)
						src<<"Você parou de Treinar Genjutsu!"
						src.log10gentrain=0
						src.canlog10gentrain=1
						spawn(100)
							src.canlog10gentrain=0
					if(src.log10armtrain==1)
						src<<"Você parou de Treinar Armas!"
						src.log10armtrain=0
						src.canlog10armtrain=1
						spawn(100)
							src.canlog10armtrain=0
					if(src.log4taitrain==1)
						src<<"Você parou de Treinar Taijutsu!"
						src.log4taitrain=0
						src.canlog4taitrain=1
						spawn(100)
							src.canlog4taitrain=0
					if(src.log4nintrain==1)
						src<<"Você parou de Treinar Ninjutsu!"
						src.log4nintrain=0
						src.canlog4nintrain=1
						spawn(100)
							src.canlog4nintrain=0
					if(src.log4gentrain==1)
						src<<"Você parou de Treinar Genjutsu!"
						src.log4gentrain=0
						src.canlog4gentrain=1
						spawn(100)
							src.canlog4gentrain=0
					if(src.log4armtrain==1)
						src<<"Você parou de Treinar Armas!"
						src.log4armtrain=0
						src.canlog4armtrain=1
						spawn(100)
							src.canlog4armtrain=0
					if(src.Log5armtrain==1)
						src<<"Você parou de Treinar tudo!"
						src.Log5armtrain=0
						src.canLog5armtrain=1
						spawn(100)
							src.canLog5armtrain=0
					if(src.Log11armtrain==1)
						src<<"Você parou de Treinar tudo!"
						src.Log11armtrain=0
						src.canLog11armtrain=1
						spawn(100)
							src.canLog11armtrain=0
					if(src.Log100armtrain==1)
						src<<"Você parou de Treinar tudo!"
						src.Log100armtrain=0
						src.canLog100armtrain=1
						spawn(100)
							src.canLog100armtrain=0
						//src.SalvarAgora()





mob
	proc
		Nocaute(mob/M)
			if(src.health <= 0||src.health >=1)
				return
				if(M == src)
					src.nin=src.Mnin
					src.tai=src.Mtai
					src.Frozen=1
					src.cast=1
					src.velocista=0
					src.testefeito=0
					usr.ggkai=0
					var/obj/nevoaacida/held/agua_ki = new /obj/nevoaacida/held
					src.overlays -=agua_ki
					var/list/O = src.overlays.Copy()
					if(src.Henge)
						src.overlays = null
						src.Henge = 0
						src.overlays = O.Copy()
						src.icon = src.Oicon
					src.icon = 'dead.dmi'
					src.incs=0
					PessoaEvento.Remove(src)
					src.no_evento=0
					src.gen=src.Mgen
					if(src.inmissionD||src.inmissionD2||src.inmissionD3||src.inmissionD4||src.inmissionD5||src.inmissionC||src.inmissionC2||src.inmissionC3||src.inmissionC4||src.inmissionC5||src.inmissionB||src.inmissionA||src.inmissionS)
						src.inmissionD=0
						src.inmissionC=0
						src.inmissionD2=0
						src.inmissionC2=0
						src.inmissionD3=0
						src.inmissionC3=0
						src.inmissionD4=0
						src.inmissionC4=0
						src.inmissionD5=0
						src.inmissionC5=0
						src.inmissionB=0
						src.inmissionA=0
						src.inmissionS=0
						src << "<b>Você falhou em sua missão, fracassado!</b>"
					src.screwed=0
					src.inNHJ = 0
					src.inTC = 0
					src.jashin=0
					src.YT=0
					src.Ryoroi=0
					src.kawa=0
					//src.move=1
					src.Frozen=0
					src.froze=0
					src.caught=0
					src.captured=0
					src.overlays-='cs.dmi'
					src.overlays-='cs.dmi'
					src.overlays-='cs.dmi'
					src.overlays-='cs2.dmi'
					src.overlays-='cs2.dmi'
					src.overlays-='cs2.dmi'
					src.overlays-='cs3.dmi'
					src.overlays-='cs3.dmi'
					src.overlays-='cs3.dmi'
					src.jourou=0
					src.underlays-='hyuugacircle.dmi'
					src.overlays-='hyuugacircle.dmi'
					src.Kshibari=0
					src.verbs-=typesof(/mob/cliff/verb)
					src.verbs -= /mob/cliff/verb/TreinarHP
					src.doing = 1
					src.verbs -= new /mob/mission/verb/Escape()
					src.verbs -= new /mob/mission/verb/Escape()
					src.Moveing = 0
					src.kubi=0
					if(emguerra&&src.jinc)
						src.burned=0
						src<<"Você foi nocauteado e precisa de atendimento médico para retornar a guerra."
						src<<"Seu Bijuu corre perigo. Não adianta deslogar, seu corpo continuará aqui!"
						src.acido=0
						src.poisoned=0
						src.poisoned2=0
						src.poisoned3=0
						src.poisoned4=0
						src.poisoned5=0
						src.treinando=0
						src.labirinto=0
						src.underlays-='hyuugacircle.dmi'
						src.overlays-='hyuugacircle.dmi'
						src.nocaute=0
						src.Ryoroi=0
						src.controlando=0
						src.cast=1
						src.Frozen=1
						return
					if(emguerra)
						src.burned=0
						src<<"Você foi nocauteado e precisa de atendimento médico para retornar a guerra!"
						src.acido=0
						src.poisoned=0
						src.underlays-='hyuugacircle.dmi'
						src.overlays-='hyuugacircle.dmi'
						src.treinando=0
						src.labirinto=0
						src.Ryoroi=0
						src.controlando=0
						src.cast=1
						src.Frozen=1

						return
					src<<"Você vai ser levado à enfermaria em 5 segundos. Aguarde...!"
					src.verbs -= /mob/cliff/verb/TreinarHP
					src.burned=0
					src.acido=0
					src.poisoned=0
					src.treinando=0
					src.Flight=0
					src.labirinto=0
					src.controlando=0
					src.PK=0
					sleep(50)
					src.cast=0
					src.icon = src.Oicon
					src.overlays = O.Copy()
					src.doing = 0
					src.Ryoroi=0
					src.nocaute=0
					src.Frozen=0
					src.controlando=0
					src.PK=1
					src.loc=locate(456,174,3)

					return
				else
					src.PK=0
					var/list/O = src.overlays.Copy()
					src.overlays = src.overlays.Remove(src.overlays)
					src.icon = 'dead.dmi'
					src.cast=1
					src.Frozen=1
					src.velocista=0
					src.controlando=0
					src.underlays-='hyuugacircle.dmi'
					src.overlays-='hyuugacircle.dmi'
					M.Frozen=0
					if(src.earthscroll)
						for(var/obj/objetos/earthscroll/S in src.contents)
							S.loc = M.loc
					if(src.heavenscroll)
						for(var/obj/objetos/heavenscroll/F in src.contents)
							F.loc = M.loc
					M.kubi=0
					M.move=1
					M.Frozen=0
					M.froze=0
					M.caught=0
					M.captured=0
					M.Kshibari=0
					M.sombrafreeze=0
					src.sombrafreeze=0
					if(src.Uchiha)
						M.uchikills+=1
					if(src.Shodaime)
						M.senjukills+=1
					if(src.Hyuuga&&src.hyuuganeji)
						M.hyuugakills+=1
						M.hyuugaNkills+=1
					if(src.Hyuuga&&src.hyuugahinata)
						M.hyuugakills+=1
						M.hyuugaHkills+=1
					M.vitorias+=0
					src.derrotas+=0
					src.nin=src.Mnin
					src.tai=src.Mtai
					src.incs=0
					src.recompensa=0
					src.gen=src.Mgen
					src.screwed=0
					src.Ryoroi=0
					src.Flight=0
					src.no_evento=0
					PessoaEvento.Remove(src)
					src.overlays-='cs.dmi'
					src.overlays-='cs.dmi'
					src.overlays-='cs.dmi'
					src.overlays-='cs2.dmi'
					src.overlays-='cs2.dmi'
					src.overlays-='cs2.dmi'
					var/obj/nevoaacida/held/agua_ki = new /obj/nevoaacida/held
					src.overlays -=agua_ki
					src.overlays-='cs3.dmi'
					src.overlays-='cs3.dmi'
					src.overlays-='cs3.dmi'
					src.jourou=0
					if(src.inmissionD||src.inmissionD2||src.inmissionD3||src.inmissionD4||src.inmissionD5||src.inmissionC||src.inmissionC2||src.inmissionC3||src.inmissionC4||src.inmissionC5||src.inmissionB||src.inmissionA||src.inmissionS)
						src.inmissionD=0
						src.inmissionC=0
						src.inmissionD2=0
						src.inmissionC2=0
						src.inmissionD3=0
						src.inmissionC3=0
						src.inmissionD4=0
						src.inmissionC4=0
						src.inmissionD5=0
						src.inmissionC5=0
						src.inmissionB=0
						src.inmissionA=0
						src.inmissionS=0
						src << "<b>Você falhou em sua missão, fracassado!</b>"
					src.Kshibari=0
					src.verbs-=typesof(/mob/cliff/verb)
					src.verbs -= /mob/cliff/verb/TreinarHP
					src.doing = 1
					src.verbs -= new /mob/mission/verb/Escape()
					src.verbs -= new /mob/mission/verb/Escape()
					src.Moveing = 0
					src.kubi=0

					if(emguerra&&src.jinc)
						src.burned=0
						src<<"Você foi nocauteado e precisa de atendimento médico para retornar a guerra."
						src<<"Seu Bijuu corre perigo. Não adianta deslogar, seu corpo continuará aqui!"
						src.acido=0
						src.poisoned=0
						src.poisoned2=0
						src.poisoned3=0
						src.poisoned4=0
						src.poisoned5=0
						src.treinando=0
						src.labirinto=0
						src.underlays-='hyuugacircle.dmi'
						src.overlays-='hyuugacircle.dmi'
						src.nocaute=0
						src.Ryoroi=0
						src.cast=1
						src.Frozen=1

						return
					if(emguerra)
						src.burned=0
						src<<"Você foi nocauteado e precisa de atendimento médico para retornar a guerra!"
						src.acido=0
						src.poisoned=0
						src.underlays-='hyuugacircle.dmi'
						src.overlays-='hyuugacircle.dmi'
						src.treinando=0
						src.labirinto=0
						src.Ryoroi=0
						src.cast=1
						src.Frozen=1
						return
					src<<"Você vai ser levado à enfermaria em 5 segundos!"
					src.verbs -= /mob/cliff/verb/TreinarHP
					src.burned=0
					src.acido=0
					src.treinando=0
					src.poisoned=0
					src.PK=0
					sleep(50)
					src.PK=1
					src.velocista=0
					src.cast=0
					src.underlays-='hyuugacircle.dmi'
					src.overlays-='hyuugacircle.dmi'
					src.icon = src.Oicon
					src.overlays = O.Copy()
					src.Ryoroi=0
					src.doing = 0
					src.nocaute=0
					src.Frozen=0
					src.loc=locate(456,174,3)
					return

mob/var/ADM=0
mob/var/tmp/controlando=0
mob/var/tmp/kuroariselecionada=0
mob/var/tmp/karasuselecionada=0
mob/var/tmp/sanshouoselecionada=0

mob
	DblClick()
		if(usr.Uchiha&&usr.amaterasuon&&!usr.EntonAtivado)
			if(usr.cast ||usr.froze || usr.parado || usr.arenafreeze || usr.Frozen || !usr.PK|| usr.caught || usr.captured || usr.resting || usr.Makyoufreeze || usr.sombrafreeze || usr.morreunaguerra)return
			usr<<"Você gastou 7k de chakra"
			usr.chakra-=7000
			if(usr.chakra<=0)
				usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
				usr.health=0
				usr.chakra=0
				usr.Death(usr)
				return
			var/obj/am/A = new /obj/am
			A.nin = usr.nin/3.25
			A.Gowner = usr
			A.loc = locate(src.x,src.y,src.z)
			A.burn()
			usr.Castando()
			return
		if(src.client)
			if(usr.seen)
				return
			usr<<"<font size=3><font color=red>[src]<font color=yellow> Informações:"
			usr<<"<font size=2><font color=blue>-----------------------------"
			usr<<"<font size=3><font color=red>Nome:<font color=yellow> [src.name]"
			usr<<"<font size=3><font color=red>Idade:<font color=yellow> [Idade] Anos"
			usr<<"<font size=3><font color=red>Rank:<font color=yellow> [src.rank]"
			usr<<"<font size=3><font color=red>Ninja Rank:<font color=yellow> [src.bingob]"
			usr<<"<font size=3><font color=red>Clã:<font color=yellow> [src.Clan]"
			usr<<"<font size=3><font color=red>Vila:<font color=yellow> [src.Village]"
			usr<<"<font size=3><font color=red>Honra:<font color=yellow> [src.honra]"
			usr<<"<font size=2><font color=blue>---------V/D-------------"
			usr<<"<font size=3><font color=red>Vitórias:<font color=yellow> [src.vitorias]"
			usr<<"<font size=3><font color=red>Derrotas:<font color=yellow> [src.derrotas]"
			usr<<"<font size=2><font color=blue>---------Missões-------------"
			usr<<"<font size=3><font color=red>Missões D:<font color=white> [src.dmission]"
			usr<<"<font size=3><font color=red>Missões C:<font color=white> [src.cmission]"
			usr<<"<font size=3><font color=red>Missões B:<font color=white> [src.bmission]"
			usr<<"<font size=3><font color=red>Missões A:<font color=white> [src.amission]"
			usr<<"<font size=3><font color=red>Missões S:<font color=white> [src.smission]"
			if(usr.pivete >= 10)
				usr<<"<font size=3><font color=red>Ryous:<font color=cyan> [src.Yen]"
			if(usr.GM)
				usr<<"<font size=3><font color=red>Idade:<font color=yellow> [Idade] Anos  [IdadeM] Meses"
				usr<<"<font size=3><font color=red>Honra:<font color=yellow> [src.honra]"
				usr<<"<font size=3><font color=red>Level:<font color=yellow> [src.level]"
				usr<<"<font size=3><font color=red>HP:<font color=yellow> [src.health]/[src.maxhealth]"
				usr<<"<font size=3><font color=red>Chakra:<font color=yellow> [src.chakra]/[src.Mchakra]"
				usr<<"<font size=3><font color=red>Stamina:<font color=yellow> [src.stamina]/[src.Mstamina]"
				usr<<"<font size=2><font color=blue>---------Missões-------------"
				usr<<"<font size=3><font color=red>Missões D:<font color=white> [src.dmission]"
				usr<<"<font size=3><font color=red>Missões C:<font color=white> [src.cmission]"
				usr<<"<font size=3><font color=red>Missões B:<font color=white> [src.bmission]"
				usr<<"<font size=3><font color=red>Missões A:<font color=white> [src.amission]"
				usr<<"<font size=3><font color=red>Missões S:<font color=white> [src.smission]"
			if(usr.ADM)
				usr<<"<font size=3><font color=red>Idade:<font color=yellow> [Idade] Anos  [IdadeM] Meses"
				usr<<"<font size=3><font color=red>Honra:<font color=yellow> [src.honra]"
				usr<<"<font size=3><font color=red>Taijutsu:<font color=yellow> [src.tai]/[src.Mtai]"
				usr<<"<font size=3><font color=red>Ninjutsu:<font color=yellow> [src.nin]/[src.Mnin]"
				usr<<"<font size=3><font color=red>Genjutsu:<font color=yellow> [src.gen]/[src.Mgen]"
				usr<<"<font size=3><font color=red>Perícia em Armas:<font color=yellow> [src.shurikenskill]/[src.Mshurikenskill]"
				usr<<"<font size=2><font color=blue>---------Missões-------------"
				usr<<"<font size=3><font color=red>Missões D:<font color=white> [src.dmission]"
				usr<<"<font size=3><font color=red>Missões C:<font color=white> [src.cmission]"
				usr<<"<font size=3><font color=red>Missões B:<font color=white> [src.bmission]"
				usr<<"<font size=3><font color=red>Missões A:<font color=white> [src.amission]"
				usr<<"<font size=3><font color=red>Missões S:<font color=white> [src.smission]"
			usr.seen=1
			sleep(60)
			if(usr)
				usr.seen=0
		if(usr.controlando)
			if(!usr.kuroariselecionada&&src.name == "[usr.name] Kuroari")
				usr<<"Você selecionou sua [usr.name] Kuroari"
				usr.kuroariselecionada=1
				if(usr.kuroariselecionada&&usr.karasuselecionada)
					usr.verbs += new /mob/mario/verb/Kyuu()
					usr.verbs += new /mob/mario/verb/Sousou()
				return
			if(usr.kuroariselecionada&&src.name == "[usr.name] Kuroari")
				usr<<"Você deselecionou sua [usr.name] Kuroari"
				usr.kuroariselecionada=0
				usr.kuroariseguir=0
				usr.verbs -= new /mob/mario/verb/Kyuu()
				usr.verbs -= new /mob/mario/verb/Sousou()
				return
			if(src.dono <> usr)
				usr<<"Esta marionete não pertence a você"
				return
			if(!usr.karasuselecionada&&src.name == "[usr.name] Karasu")
				usr<<"Você selecionou sua [usr.name] Karasu"
				usr.karasuselecionada=1
				if(usr.kuroariselecionada&&usr.karasuselecionada)
					usr.verbs += new /mob/mario/verb/Kyuu()
					usr.verbs += new /mob/mario/verb/Sousou()
				return
			if(usr.karasuselecionada&&src.name == "[usr.name] Karasu")
				usr<<"Você deselecionou sua [usr.name] Karasu"
				usr.karasuselecionada=0
				usr.karasuseguir=0
				usr.verbs -= new /mob/mario/verb/Kyuu()
				usr.verbs -= new /mob/mario/verb/Sousou()
				return
			if(src.dono <> usr)
				usr<<"Esta marionete não pertence a você"
			if(!usr.sanshouoselecionada&&src.name == "[usr.name] Sanshouo")
				usr<<"Você selecionou sua [usr.name] Sanshouo"
				usr.sanshouoselecionada=1
				return
			if(usr.sanshouoselecionada&&src.name == "[usr.name] Sanshouo")
				usr<<"Você deselecionou sua [usr.name] Sanshouo"
				usr.sanshouoselecionada=0
				usr.sanshouoseguir=0
				return
			if(src.dono <> usr)
				usr<<"Esta marionete não pertence a você"
mob
	proc
		DeathCheck6(mob/M)
			if(src.NPC)
				del(src)
			if(src.chakra <= 0)
				if(src.client)
					world << "<font size=1><b>[src] desmaiou!"
					src.deaths+=1
					if(Chuunintime || Chuuninfloresta)
						if(src.deathforest)
							src.testefeito=0
							src.deathforest=0
					if(src.earthscroll==1)
						src.earthscroll=0
					if(src.heavenscroll==1)
						src.heavenscroll=0
					src.PK=0
					sleep(100)
					src.PK=1
					src.loc=locate(456,174,3)
					src.health = M.maxhealth
					src.chakra = M.Mchakra
					src.Frozen = 0
					src.verbs-=typesof(/mob/cliff/verb)
					src.verbs -= /mob/cliff/verb/TreinarHP
					src.Moveing = 0
					if(src.Henge)
						src.overlays = null
						src.Henge = 0
						var/list/O = src.overlays.Copy()
						src.overlays = O.Copy()
						src.icon = src.Oicon
					src.Move_Delay=0.4
					src.Kshibari=0
					src.sombrafreeze=0
					src.kagemane=0
					src.kubi=0
					src.cast = 1
					src.makeHunter()
					src.doing = 1
					for(var/mob/npcs/Bunshin/B)
						B.Die()
						del(B)
					for(var/mob/npcs/KBunshin/K)
						K.Die()
						del(K)
					for(var/mob/Karasu/A)
						A.Die()
						del(A)
					for(var/mob/Kuroari/S)
						S.Die()
						del(S)
					for(var/mob/Sanshouo/F)
						F.Die()
						del(F)
					src.resting = 0
					src.doing = 0
					src.screwed=0
					src.jourou=0
					if(src.Mountain)
						src.Mountain=0
						src.Move_Delay = 0.7
					src.burned=0
					src.poisoned=0
					src.poisoned2=0
					src.poisoned3=0
					src.poisoned4=0
					src.poisoned5=0
					src.acido=0
					if(src.onwater)
						src.onwater=0
					if(src.puppet)
						usr.verbs -= new /mob/Kuroari/verb/Kuroariattack()
						usr.verbs -= new /mob/Karasu/verb/Karasuattack()
						usr.verbs -= new /mob/Karasu/verb/Karasuattack2()

mob
	Move()
		if(src.Moveing || src.Frozen || src.treinamento||src.sincronia || src.parado|| src.kagemane || src.hakkando || src.ryuusakyuu || src.HakkeFreeze || src.karamatsuon || src.arenafreeze || /*src.Makyoufreeze ||*/ src.morreunaguerra||src.ElementoTreino||src.sombrafreeze||src.Kaiten||usr.Kaiten||usr.nocaute)
			return
		if(!src.move)
			return
		if(locate(/obj/DenseThing) in view(1))
			src.density=1
		if(locate(/obj/MirrorDense) in view(1))
			src.density=1
		if(src.aura==0&&src.CarChibaku==1)
			src.DesChibaku=1
			src.ChibakuTensei2()
		else
			src.Moveing = 1
			..()
		if(src.aura==0&&src.CarTengai==1)
			src.DesTengai=1
			src.TengaiShinsei2()
		else
			src.Moveing = 1
			..()
			if(src.onwater)
				src.WATER()
			sleep(src.Move_Delay)
			src.Moveing = 0
			if(src.kagami)src.Move_Delay = 10
			if(src.kirigakure)src.Move_Delay = 15
			if(src.kokuangyou)src.Move_Delay = 10
			if(src.kokohitatakai)src.Move_Delay = 15
			if(!src.Mountain)
				/*if(src.Weights)
					src.Move_Delay=10
					src.health -= 2
					src.veloN ++
					if(src.Mstamina<200000)
						usr.random= rand(1,4)
						if(src.random==2 || src.random==3 || src.random==4)
							src.health-=3
							src.Mstamina += rand(1,6)
							src<<"Sua estamina aumentou"
					else
						src<<"Já alcançou o cap de Stamina!"
					if(src.health <= 0)
						src.Death(src)*/
				if(src.Weights)
					src.Move_Delay=10
					src.health-= 2
					src.random= rand(1,8)
					if(src.random<=2)
						src.health-=rand(3,6)
						if(!src.capstaextendido)
							if(src.Mstamina<200000)
								src.Mstamina += rand(1,2)
								src<<"Sua estamina aumentou"
							else
								src<<"Você já pegou o máximo de estamina!"
						else
							if(src.capstaextendido)
								if(src.Mstamina<src.maxhealth/4)
									src.Mstamina += rand(1,2)
									src<<"Sua estamina aumentou"
								else
									src<<"Você já pegou o máximo de estamina!"
						if(src.veloN<200000)
							src.veloN++
							src<<"Sua Velocidade aumentou"
						if(prob(70))
							if(src.maxhealth<50000)
								if(src.EhVip)
									if(src.level<200)
										src.maxhealth+=6.1
										src<<"Seu HP aumentou"
									else
										src.maxhealth+=2.1
										src<<"Seu HP aumentou"
								else
									if(src.level<200)
										src.maxhealth+=6
										src<<"Seu HP aumentou"
									else
										src.maxhealth+=2
										src<<"Seu HP aumentou"
							else
								src<<"Você já pegou o máximo de HP por pesos!"
					if(src.health <= 0)
						src.health=1
						src.overlays -= 'Weights.dmi'//temp icon
						src.Move_Delay = 0.7
						src.Weights = 0
						src << "Você removeu o(a) [src.name], pois está muito cansado para isso!"


mob/var/Kyuubiget=0

//================================ Saves =======================================================

var/list/clientip[] = new()
var/const/max_ip_allowed=4

client
	New()
		if(address)
			if(clientip.Find("[address]") && clientip["[address]"] > 0)
				if(src.key<>""||src.key<>""||src.key<>"")
					clientip["[address]"]++
				if(clientip["[address]"] > max_ip_allowed)
					src<<"<font color=blue>Multikey detectado!</font>"
					del(src)
			else clientip["[address]"] = 1
		..()
	Del()
		if(address && clientip.Find("[address]"))
			clientip["[address]"]--
			if(clientip["[address]"] <= 0)
				clientip -= "[address]"
		..()


mob/var/tmp/deslogado=1
mob/var/list/V
mob/var/tempovip2
mob/var/list/X
mob
	proc
		AutoSave()
			if(!src.deslogado)
				var/savefile/F = new("players/[src.key].sav")
				src.Xco = x
				src.Yco = y
				src.Zco = z
				F["last_x"] << x
				F["last_y"] << y
				F["last_z"] << z
				src.V = src.verbs
				Write(F)
				//src << "<small><font color=yellow><b>Seu jogo foi salvo com sucesso!"


mob/var
	Xco = 0
	Yco = 0
	Zco = 0
	SaveFile=""
mob
	proc
		SalvarAgora()
			if(!src.deslogado)
				var/savefile/F = new("players/[src.key].sav")
				src.Xco = x
				src.Yco = y
				src.Zco = z
				F["last_x"] << x
				F["last_y"] << y
				F["last_z"] << z
				src.V = src.verbs
				Write(F)
				//src << "<small><font color=yellow><b>Seu jogo foi salvo com sucesso!"
				spawn(600) src.SalvarAgora()
			else
				usr<<"Você <b>não</b> pode salvar na tela de login"

/*mob/verb
	Salvar()
		set hidden=1
		if(!usr.deslogado)
			usr.SalvarAgora()
		else
			usr<<"Você <b>não</b> pode salvar na tela de login"
			return*/

mob/verb
	Salvar()
		set hidden=1
		usr<<"Você <b>não</b> precisa salvar (automático)!"


/*mob
	proc
		Load()
			SaveFile="[src.key]"
			if(fexists("Save/[src.SaveFile].sav"))
				var/savefile/F = new("players/[src.key].sav")
				F["last_x"] >> x
				F["last_y"] >> y
				F["last_z"] >> z
				Read(F)*/
mob
	proc
		Load()
			if(fexists("players/[src.key].sav"))
				var/savefile/F = new("players/[src.key].sav")
				F["last_x"] >> x
				F["last_y"] >> y
				F["last_z"] >> z
				Read(F)



mob/verb
	Logar1q2w3e4r5r()
		set hidden=1

mob/verb
	Logar()
		set hidden=1

mob
	proc
		LoadParte1()
			if(fexists("players/[src.key].sav"))
/*				var/savefile/F = new("players/[src.key].sav")
				Read(F)*/
				src.morreunaguerra=0
				for(var/stuff in src.V)
					src.verbs += stuff
				src.loc = locate(Xco,Yco,Zco)
				src.tempovip = src.tempovip2
				src.loadmacros()
				if(src.naart)
					src.naart = 0
					src.loc = locate(456,174,3)
				if(src.najau)
					src.najau = 0
					src.loc = locate(456,174,3)
				if(src.naare)
					src.naare = 0
					src.loc = locate(456,174,3)
				src.ContadorIdade()
				src.cansave=1
				src.deslogado=0
				src.arenafreeze=0
				src.treinando=0
				src.treinando=0
				src.daisando=0
				src.naopodesuicidar=0
				src.daisado=0
				src.queimando=0
				src.podequeimar=0
				src.verbs -= /mob/cliff/verb/TreinarHP
				src.espionando=0
				src.podenada=0
				src.incs = 0
				src.InCS4=0
				src.InCS2=0
				src.InCS3=0
				src.treinamento=0
				src.kuchiyoseusing=0
				src.kabutouse=0
				src.sphere=0
				src.shibukiuse=0
				src.kibaworn=0
				src.Frozen=0
				src.treinamento=0
				src.morto=0
				src.Weights=0
				src.mson=0
				if(src.climbing)
					src.loc=locate(456,174,3)
					src.climbing=0
				src.fume=0
				src.inkaku=0
				src.ride=0
				src.overlays -= /obj/PlantSphere
				src.overlays -= 'goubaiu.dmi'
				src.treinando=0
				src.rastreando=0
				src.gkai=0
				src.levando=0
				if(src.Henge)
					src.overlays = null
					src.Henge = 0
					var/list/O = src.overlays.Copy()
					src.overlays = O.Copy()
					src.icon = src.Oicon
				src.Kshibari=0
				src.sombrafreeze=0
				src.parado=0
				src.Frozen=0
				src.gama=0
				src.cast=0
				src.parado=0
				src.invisibility=0
				src.nocaute=0
				src.sincronia=0
				if(evento_registro)src.verbs+=new/mob/Evento/verb/Evento_Registro
				else src.verbs-=new/mob/Evento/verb/Evento_Registro
				src.Inrr=0
				src.Infr=0
				src.map=0
				src.def=0
				PessoaEvento.Remove(src)
				src.OOC=1
				src.S2=0
				src.S3=0
				src.DesclassificarCS()
				if(src.rank=="Nukenin"&&src.Village=="Nenhum")src.PerderSubclan()
				if(src.rank=="Chuunin"&&usr.seals>=1000)
					if(src.dmission>=200&&src.cmission>=100&&src.bmission>=50&&src.honra>=350)
						if(src.Village == "Konoha")
							if(konohafundo<100000)
								src<<"Você possui os requerimentos para se tornar um Jounin, mas sua vila não possui fundos para pagar a promoção."
								return
						if(src.Village == "Kiri")
							if(kirifundo<100000)
								src<<"Você possui os requerimentos para se tornar um Jounin, mas sua vila não possui fundos para pagar a promoção."
								return
						if(src.Village == "Kumo")
							if(kumofundo<100000)
								src<<"Você possui os requerimentos para se tornar um Jounin, mas sua vila não possui fundos para pagar a promoção."
								return
						if(src.Village == "Ame")
							if(amefundo<100000)
								src<<"Você possui os requerimentos para se tornar um Jounin, mas sua vila não possui fundos para pagar a promoção."
								return
						if(src.Village == "Suna")
							if(sunafundo<100000)
								src<<"Você possui os requerimentos para se tornar um Jounin, mas sua vila não possui fundos para pagar a promoção."
								return
						if(src.Village == "Iwa")
							if(iwafundo<100000)
								src<<"Você possui os requerimentos para se tornar um Jounin, mas sua vila não possui fundos para pagar a promoção."
								return
						var/mob/M = src
						world<<"<font face=tahoma><b>[M]</b> agora é um <b>Jounin!</b>"
						src.seals=100
						src.rank="Jounin"
						src.PerderSubclan()
						src.jounin=1
						if(src.Village=="Konoha")
							konohafundo-=100000
							var/obj/Jouninsuit/R = new/obj/LeafSuit
							R.loc=src
						if(src.Village =="Suna")
							sunafundo-=100000
							var/obj/JouninSuna/R = new/obj/SandSuit
							R.loc = src
						if(src.Village =="Oto")
							var/obj/Jouninsuit/R = new/obj/Jouninsuit
							R.loc = src
/*						if(src.Village =="Kusa")
							var/obj/Jouninsuit/R = new/obj/Jouninsuit
							R.loc = src*/
						if(src.Village =="Ame")
							amefundo-=100000
							var/obj/JouninAme/R = new/obj/JouninAme
							R.loc = src
						if(src.Village =="Kumo")
							kumofundo-=100000
							var/obj/JouninKumo/R = new/obj/JouninKumo
							R.loc = src
						if(src.Village =="Kiri")
							kirifundo-=100000
							var/obj/JouninKiri/R = new/obj/MistSuit
							R.loc = src
						if(src.Village =="Iwa")
							iwafundo-=100000
							var/obj/JouninIwa/R = new/obj/JouninIwa
							R.loc = src
/*						if(src.Village =="Yuki")
							var/obj/Jouninsuit/R = new/obj/Jouninsuit
							R.loc = src
						if(src.Village =="Taki")
							var/obj/Jouninsuit/R = new/obj/Jouninsuit
							R.loc = src*/
				src.suicidando=0
				src.delay=0
				usr.delai=0
				src.labirinto=0
				src.verbs -= new /mob/medical/verb/SliceTendons()
				src.verbs -= new /mob/medical/verb/ScrewNerves()
				src.overlays -='kaku.dmi'
				src.earthscroll=0
				src.heavenscroll=0
				src.overlays -= 'peacock.dmi'
				src.overlays -='Rainarmor.dmi'
				src.Rainarmor=0
				src.prisaomultipla=0
				src.overlays -= 'cloud.dmi'
				src.overlays -= 'flight.dmi'
				src.overlays-='staraura.dmi'
				src.overlays-='WaterStrom.dmi'
				src.overlays-='rockball.dmi'
				src.treinando=0
				src.roubandocorpo=0
				src.karura=0
				src.atacando=0
				src.atirando=0
				src.kamui2=0
				src.treinamento=0
				src.antigen=0
				if(src.Doton)
					if(src.terraN<5000)
						src.nivelElementoT="Basico"
				if(src.Katon)
					if(src.fogoN<5000)
						src.nivelElementoK="Basico"
				if(src.Raiton)
					if(src.trovaoN<5000)
						src.nivelElementoR="Basico"
				if(src.Suiton)
					if(src.aguaN<5000)
						src.nivelElementoS="Basico"
				if(src.Fuuton)
					if(src.ventoN<5000)
						src.nivelElementoV="Basico"
				src.fantasma=0
				if(src.fogoN>=5000&&src.fogoN<12500)
					src.nivelElementoK="Avancado"
				if(src.fogoN>=12500&&src.fogoN<25000)
					src.nivelElementoK="Experiente"
				if(src.fogoN>=25000&&src.fogoN<50000)
					src.nivelElementoK="Dominador"
				if(src.fogoN>=50000&&src.fogoN<100000)
					src.nivelElementoK="Mestre"
				if(src.fogoN>=100000)
					src.nivelElementoK="Anciao"
				if(src.aguaN>=5000&&src.aguaN<12500)
					src.nivelElementoS="Avancado"
				if(src.aguaN>=12500&&src.aguaN<25000)
					src.nivelElementoS="Experiente"
				if(src.aguaN>=25000&&src.aguaN<50000)
					src.nivelElementoS="Dominador"
				if(src.aguaN>=50000&&src.aguaN<100000)
					src.nivelElementoS="Mestre"
				if(src.aguaN>=100000)
					src.nivelElementoS="Anciao"
				if(src.trovaoN>=5000&&src.trovaoN<12500)
					src.nivelElementoR="Avancado"
				if(src.trovaoN>=12500&&src.trovaoN<25000)
					src.nivelElementoR="Experiente"
				if(src.trovaoN>=25000&&src.trovaoN<50000)
					src.nivelElementoR="Dominador"
				if(src.trovaoN>=50000&&src.trovaoN<100000)
					src.nivelElementoR="Mestre"
				if(src.trovaoN>=100000)
					src.nivelElementoR="Anciao"
				if(src.ventoN>=5000&&src.ventoN<12500)
					src.nivelElementoV="Avancado"
				if(src.ventoN>=12500&&src.ventoN<25000)
					src.nivelElementoV="Experiente"
				if(src.ventoN>=25000&&src.ventoN<50000)
					src.nivelElementoV="Dominador"
				if(src.ventoN>=50000&&src.ventoN<100000)
					src.nivelElementoV="Mestre"
				if(src.ventoN>=100000)
					src.nivelElementoV="Anciao"
				if(src.terraN>=5000&&src.terraN<12500)
					src.nivelElementoT="Avancado"
				if(src.terraN>=12500&&src.terraN<25000)
					src.nivelElementoT="Experiente"
				if(src.terraN>=25000&&src.terraN<50000)
					src.nivelElementoT="Dominador"
				if(src.terraN>=50000&&src.terraN<100000)
					src.nivelElementoT="Mestre"
				if(src.terraN>=100000)
					src.nivelElementoT="Anciao"
				src.mokuton=0
				src.mson=0
				src.kai=0
				src.genjando=0
				src.overlays-='auraraikage.dmi'
				src.overlays-='rasenganpain.dmi'
				src.Move_Delay=0.7
				src.compy=0
				src.Kaiten=0
				src.mask=0
				src.sapo=0
				src.NoDuelo = 0
				src.reserving=0
				src.overlays-='Iarmor.dmi'
				src.overlays-='Futarmor.dmi'
				src.overlays-='gelo.dmi'
				src.overlays-='Esphere.dmi'
				src.see_invisible = 0
				src.kbon=0
				src.kbon2=0
				src.agua=0
				src.copy=0
				src.overlays-='libs.dmi'
				src.overlays-='Aura2.dmi'
				src.overlays-='mediter(1).dmi'
				src.overlays-='vento.dmi'
				src.overlays-='vlib.dmi'
				src.overlays-='vcon.dmi'
				src.overlays-='vmed.dmi'
				src.captured=0
				src.caught=0
				src.froze=0
				src.buff=0
				src.parado=0
				src.pb=0
				src.Frozen=0
				src.aura=0
				src.Warmor=0
				src.sennin=0
				src.genj=0
				src.overlays -= 'Wprison.dmi'
				src.counter=0
				src.overlays-='counter.dmi'
				src.gc=0
				src.overlays-='counter.dmi'
				src:sight &= ~BLIND
				if(!src.capextendido)
					if(src.Mchakra>=200000&&src.Uzumaki==0)
						src.Mchakra=200000
					if(src.Mchakra>=250000&&src.Uzumaki==1)
						src.Mchakra=250000
				if(src.capextendido)
					if(src.Mchakra>=src.maxhealth/4&&src.Uzumaki==0)
						src.Mchakra=src.maxhealth/4
					if(src.Uzumaki==1&&src.Mchakra>=src.maxhealth/3.75)
						src.Mchakra=src.maxhealth/3.75
				if(src.maxhealth>=5000000&&src.GM&&src.key<>"Iago762")
					src.maxhealth=5000000
				if(src.maxhealth>=100000000&&src.GM&&src.key=="Iago762")
					src.maxhealth=100000000
				if(src.maxhealth>=3000000&&!src.GM)
					src.maxhealth=3000000
				if(src.maxhealth>=500000&&src.rank=="Genin"||src.maxhealth>=1000000&&src.rank=="Nukenin"&&usr.seals<=99)
					src.maxhealth=500000
				if(src.maxhealth>=1000000&&src.rank=="Chuunin")
					src.maxhealth=1000000
				if(src.Resistencia>=src.Mtai/20 + src.Mnin/20 + src.Mgen/20 + src.Mshurikenskill/20 + src.maxhealth/50)
					src.Resistencia=src.Mtai/20 + src.Mnin/20 + src.Mgen/20 + src.Mshurikenskill/20 + src.maxhealth/50
				if(src.taiexp>=101)
					src.taiup()
					src.taiexp=0
				if(src.veloN>=200000)
					src.veloN=200000
				if(src.chakraN>=200000)
					src.chakraN=200000
				if(src.fogoN>=200000)
					src.fogoN=200000
				if(src.aguaN>=200000)
					src.aguaN=200000
				if(src.terraN>=200000)
					src.terraN=200000
				if(src.trovaoN>=200000)
					src.trovaoN=200000
				if(src.ventoN>=200000)
					src.ventoN=200000
				if(src.Mstamina>=200000&&!src.capstaextendido)
					src.Mstamina=200000
				if(src.capstaextendido)
					if(src.Mstamina>=src.maxhealth/4)
						src.Mstamina=src.maxhealth/4
				if(src.chakra<=src.Mchakra)
					src.chakra=src.Mchakra
				if(src.health<=src.maxhealth)
					src.health=src.maxhealth
				if(src.Mnin>=100000000&&!usr.GM)
					src.Mnin=100000000
				if(src.Mgen>=100000000&&!usr.GM)
					src.Mgen=100000000
				if(src.Mtai>=100000000&&!usr.GM)
					src.Mtai=100000000
				if(src.Mshurikenskill>=100000000&&!usr.GM)
					src.Mshurikenskill=100000000
				src.KASS=0
				src.CSWS=0
				src.buoyu=0
				src.tagset=0
				src.Flight=0
				src.density = 1
				src.health = src.maxhealth
				src.chakra = src.Mchakra
				src.overlays -= 'Flight.dmi'
				src.overlays -= 'wings.dmi'
				src.stop = 0
				src.dead=0
				src.resting = 0
				src.doing = 0
				src.pb=0
				src.Frozen = 0
				src.Moveing = 0
				src.cast = 0
				src.doing = 0
				src.Mountain=0
				if(src.Jail1)
					src.AutoJail1()
				if(src.Jail2)
					src.AutoJail2()
				if(src.Jail3)
					src.AutoJail3()
				if(src.Jail4)
					src.AutoJail4()
				if(src.Jail5)
					src.AutoJail5()
				src.onwater=0
				src.onpulo=0
				src.makeHunter()
				src.makeJounin()
				src.tagset=0
				src.tai = src.Mtai
				src.nin = src.Mnin
				src.gen = src.Mgen
				src.focusing =0
				src.shurikenskill=src.Mshurikenskill
				src.icon = src.Oicon
				src.overlays -= 'Bun.dmi'
				src.Kshibari = 0
				src.kubi = 0
				src.cast = 0
				src.overlays -= 'meattank.dmi'
				src.inspike = 0
				src.overlays -= 'hakkeshou.dmi'
				src.Kaiten = 0
				src.overlays -= 'gatsuuga.dmi'
				src.ingat = 0
/*				src.overlays -= 'lotus.dmi'
				src.gate1 = 0
				src.overlays -= 'lotus.dmi'
				src.gate2 = 0
				src.overlays -= 'lotus.dmi'
				src.gate3 = 0
				src.overlays -= 'lotus.dmi'
				src.gate4 = 0
				src.overlays -= 'lotus.dmi'
				src.gate5 = 0
				src.overlays -= 'lotus.dmi'
				src.gate6 = 0
				src.overlays -= 'lotus.dmi'
				src.gate7 = 0
				src.overlays -= 'lotus.dmi'
				src.gate8 = 0
				src.overlays -= 'Marmor.dmi'
				src.overlays -= 'mist.dmi'
				src.Marmor = 0
				src.overlays -= 'Larmor.dmi'
				src.Larmor = 0
				src.overlays -= 'Iarmor.dmi'
				src.Iarmor = 0
				src.overlays -= 'BeeArmor.dmi'
				src.Barmor = 0
				src.overlays -= 'Farmor.dmi'
				src.Farmor = 0
				src.overlays -= 'Zarmor.dmi'
				src.Zarmor = 0
				src.SHarmor = 0*/
				src.overlays -= 'sharingan.dmi'
				src.overlays -= 'Bun.dmi'
				src.overlays -= 'Chidori.dmi'
				src.overlays -= 'Rasengan.dmi'
				src.overlays -= 'electricity.dmi'
				src.overlays -= 'byakugan.dmi'
				src.overlays -= /obj/Sphere
				src.sphere = 0
				src.overlays -= 'Sarmor.dmi'
				src.Sarmor = 0
				src.overlays -= 'uzaroo.dmi'
				src.inbaika = 0
				src.overlays -= 'MTS.dmi'
				src.intank = 0
				src.overlays -= 'Tan.dmi'
				src.overlays -= 'white.dmi'
				src.overlays -= 'black.dmi'
				src.overlays -= 'blue.dmi'
				src.overlays -= 'red.dmi'
				src.overlays -= 'yellow.dmi'
				src.overlays -= 'vamp.dmi'
				src.overlays -= 'omote.dmi'
				src.overlays -= 'ura.dmi'
				src.overlays -= 'karasu.dmi'
				src.dotono = 0
				src.screwed=0
				src.points =0
				src.YT=0
				src.jashin=0
				src.finals=0
				src.underlays-='hyuugacircle.dmi'
				src.overlays-='hyuugacircle.dmi'
				src.inmissionD=0
				src.inmissionC=0
				src.inmissionD2=0
				src.inmissionC2=0
				src.inmissionD3=0
				src.inmissionC3=0
				src.inmissionD4=0
				src.inmissionC4=0
				src.inmissionD5=0
				src.inmissionC5=0
				src.inmissionB=0
				src.inmissionA=0
				src.inmissionS=0
				src.OOC=1
				src.PMBlock=0
				src.inkyuubi=0
				src.innibi=0
				src.insanbi=0
				src.inyonbi=0
				src.ingobi=0
				src.inrokubi=0
				src.insishibi=0
				src.inhachibi=0
				src.kawa=0
				src.overlays -='kyuubi.dmi'
				src.overlays-='sharingan.dmi'
				src.incs=0
				src.overlays-='cs.dmi'
				src.overlays-='cs.dmi'
				src.overlays-='cs.dmi'
				src.overlays-='cs2.dmi'
				src.overlays-='cs2.dmi'
				src.overlays-='cs2.dmi'
				src.overlays-='cs3.dmi'
				src.overlays-='cs3.dmi'
				src.overlays-='cs3.dmi'
				src.inthewar=0
				src.cansave=0
//				src.resetoverlay()
				src.inNHJ = 0
				src.inTC = 0
				if(src.Village=="Nukenin" || src.Village=="Nenhum")
					src.Village = "Nenhum"
					usr.verbs -= /mob/akat/verb/ChangeFace
					usr.verbs -= /mob/sss/verb/ChangeFace
					usr.verbs -= /mob/so/verb/ChangeFace
					usr.verbs -= /mob/taka/verb/ChangeFace
					usr.Takamember=0
					usr.Village2=""
					usr.faceicon=null
					usr.esquadrao=""
					usr.mouse_over_pointer=null
				src.icon = src.Oicon
				if(src.recompensa>=1)
					src.recompensa -= rand(100,400)
					if(src.recompensa<=0)
						src.recompensa=0
				else
					src.recompensa=0
				if(src.level<150)usr.bingob="E"
				if(src.level>=150&&src.level<250)src.bingob="D"
				if(src.level>=250&&src.level<350)src.bingob="C"
				if(src.level>=350&&src.level<600&&src.seals>=100)src.bingob="B"
				if(src.level>=600&&src.level<800&&src.seals>=100)src.bingob="A"
				if(src.level>=800&&src.seals>=100)src.bingob="S"
				if(src.Village == "Konoha")
					var/obj/Vila/Konoha/K = new/obj/Vila/Konoha
					src.mouse_over_pointer = K
				if(src.Village == "Kiri")
					var/obj/Vila/Kiri/K2 = new/obj/Vila/Kiri
					src.mouse_over_pointer = K2
				if(src.Village == "Suna")
					var/obj/Vila/Suna/S2 = new/obj/Vila/Suna
					src.mouse_over_pointer = S2
				if(src.Village == "Iwa")
					var/obj/Vila/Iwa/I = new/obj/Vila/Iwa
					src.mouse_over_pointer = I
				if(src.Village == "Ame")
					var/obj/Vila/Ame/A = new/obj/Vila/Ame
					src.mouse_over_pointer = A
				if(src.Village == "Kumo")
					var/obj/Vila/Kumo/K3 = new/obj/Vila/Kumo
					src.mouse_over_pointer = K3
				if(src.Village == "Akatsuki" || src.Village == "Taka")
					var/obj/Vila/Akatsuki/A2 = new/obj/Vila/Akatsuki
					src.mouse_over_pointer = A2
				if(src.Village == "Sound Organization")
					var/obj/Vila/SoundOrganization/SO = new/obj/Vila/SoundOrganization
					src.mouse_over_pointer = SO
				if(src.rank == "7Swordsmen")
					var/obj/Vila/SevenSwords/SS = new/obj/Vila/SevenSwords
					src.mouse_over_pointer = SS
				if(src.honra<=0)src.honra=0
				if(src.killsvillage<=0)src.killsvillage=0
				src.TempoDesafio()
				src.OOC=1
				src.PMBlock=0
				src.cansave=1
				src.ignorardesafio=0
				src.carregandocorpo=0
				//src.verbs += new /mob/jutsu/verb/Frs2()
				//var/obj/nevoaacida/held/agua_ki = new /obj/nevoaacida/held
				//src.overlays -=agua_ki
				for(var/obj/morto/corponormal/B in usr.contents)
					del(B)
				for(var/obj/morto/corpouchiha/C in usr.contents)
					del(C)
				src.icon = src.Oicon
				src.icon_state = ""
				src.OOC=1
				src.ignorardesafio=0
				if(src.Juubi)
					src.overlays = null
					src.icon='Juubijinchuuriki.dmi'
					src.underlays = null
				if(src.Perdeusharingan&&!src.visaorecuperada||src.PerdeuByakugan&&!src.visaorecuperada||src.PerdeuRinnegan&&!src.visaorecuperada||src.PerdeuMS&&!src.visaorecuperada)
					src.cego5()
				if(src.senjuextraido&&!src.movimentorecuperado)
					src.Move_Delay = 10
				if(SuporteOn == 1)
					winset(src,"suporte","is-visible=true")
				if(src.Uchiha&&!src.MSP)
					src.verbs += /mob/uchiha/verb/EscolherSharingan
				src.Logando()

mob/var/tmp
	controling=0

client
	North()
		if(usr.controling)
			for(var/mob/puppet/P in view(25))
				if(!P.Frozen)
					step(P,NORTH)
					return
		if(!usr.Moveing)
			if(!usr.Frozen)
				if(usr.Mountain&&!usr.Weights)
					step(usr,NORTH)
				if(usr.screwed&&!usr.drunk)
					usr.random = rand(1,3)
					if(usr.random == 1)
						step(usr,EAST)
					if(usr.random == 2)
						step(usr,NORTHEAST)
					if(usr.random == 3)
						step(usr,SOUTHWEST)
				if(usr.drunk&&!usr.screwed)
					usr.random = rand(1,4)
					if(usr.random == 1)
						step(usr,NORTH)
					if(usr.random == 2)
						step(usr,NORTH)
					if(usr.random == 4)
						step(usr,NORTH)
					if(usr.random == 3)
						step(usr,NORTHWEST)
				else
					step(usr,NORTH)
			else
				..()

		else
			return 0
	South()
		if(usr.controling)
			for(var/mob/puppet/P in view(25))
				if(!P.Frozen)
					step(P,SOUTH)
					return
		if(!usr.Moveing)
			if(!usr.Frozen)
				if(usr.Mountain&&!usr.Weights)
					step(usr,SOUTH)
				if(usr.screwed&&!usr.drunk)
					usr.random = rand(1,3)
					if(usr.random == 1)
						step(usr,WEST)
					if(usr.random == 2)
						step(usr,SOUTHEAST)
					if(usr.random == 3)
						step(usr,NORTHWEST)
				if(usr.drunk&&!usr.screwed)
					usr.random = rand(1,4)
					if(usr.random == 1)
						step(usr,SOUTH)
					if(usr.random == 2)
						step(usr,SOUTH)
					if(usr.random == 4)
						step(usr,SOUTH)
					if(usr.random == 3)
						step(usr,SOUTHEAST)
				else
					step(usr,SOUTH)
			else
				..()

		else
			return 0
	East()
		if(usr.controling)
			for(var/mob/puppet/P in view(25))
				if(!P.Frozen)
					step(P,EAST)
					return
		if(!usr.Moveing)
			if(!usr.Frozen)
				if(usr.Mountain)
					return
				if(usr.screwed&&!usr.drunk)
					usr.random = rand(1,3)
					if(usr.random == 1)
						step(usr,WEST)
					if(usr.random == 2)
						step(usr,NORTHEAST)
					if(usr.random == 3)
						step(usr,SOUTHWEST)
				if(usr.drunk&&!usr.screwed)
					usr.random = rand(1,4)
					if(usr.random == 1)
						step(usr,EAST)
					if(usr.random == 2)
						step(usr,EAST)
					if(usr.random == 4)
						step(usr,EAST)
					if(usr.random == 3)
						step(usr,NORTHEAST)
				else
					step(usr,EAST)
			else
				..()

		else
			return 0
	West()
		if(usr.controling)
			for(var/mob/puppet/P in view(25))
				if(!P.Frozen)
					step(P,WEST)
					return
		if(!usr.Moveing)
			if(!usr.Frozen)
				if(usr.Mountain&&!usr.Weights)
					return
				if(usr.screwed&&!usr.drunk)
					usr.random = rand(1,3)
					if(usr.random == 1)
						step(usr,NORTH)
					if(usr.random == 2)
						step(usr,SOUTHEAST)
					if(usr.random == 3)
						step(usr,NORTHEAST)
				if(usr.drunk&&!usr.screwed)
					usr.random = rand(1,4)
					if(usr.random == 1)
						step(usr,WEST)
					if(usr.random == 2)
						step(usr,WEST)
					if(usr.random == 4)
						step(usr,WEST)
					if(usr.random == 3)
						step(usr,SOUTHWEST)
				else
					step(usr,WEST)
			else
				..()
		else
			return 0
	Northeast()
		if(usr.controling)
			for(var/mob/puppet/P in view(25))
				if(!P.Frozen)
					step(P,NORTHEAST)
					return
		if(!usr.Moveing)
			if(!usr.Frozen)
				if(usr.Mountain)
					return
				if(usr.screwed&&!usr.drunk)
					usr.random = rand(1,3)
					if(usr.random == 1)
						step(usr,EAST)
					if(usr.random == 2)
						step(usr,NORTH)
					if(usr.random == 3)
						step(usr,SOUTH)
				if(usr.drunk&&!usr.screwed)
					usr.random = rand(1,4)
					if(usr.random == 1)
						step(usr,NORTHEAST)
					if(usr.random == 2)
						step(usr,NORTHEAST)
					if(usr.random == 3)
						step(usr,NORTH)
					if(usr.random == 4)
						step(usr,NORTHEAST)
				else
					step(usr,NORTHEAST)
			else
				..()

		else
			return 0
	Northwest()
		if(usr.controling)
			for(var/mob/puppet/P in view(25))
				if(!P.Frozen)
					step(P,NORTHWEST)
					return
		if(!usr.Moveing)
			if(!usr.Frozen)
				if(usr.Mountain)
					return
				if(usr.screwed&&!usr.drunk)
					usr.random = rand(1,3)
					if(usr.random == 1)
						step(usr,EAST)
					if(usr.random == 2)
						step(usr,WEST)
					if(usr.random == 3)
						step(usr,NORTH)
				if(usr.drunk&&!usr.screwed)
					usr.random = rand(1,4)
					if(usr.random == 1)
						step(usr,NORTHWEST)
					if(usr.random == 2)
						step(usr,NORTHWEST)
					if(usr.random == 4)
						step(usr,NORTHWEST)
					if(usr.random == 3)
						step(usr,WEST)
				else
					step(usr,NORTHWEST)
			else
				..()

		else
			return 0
	Southeast()
		if(usr.controling)
			for(var/mob/puppet/P in view(25))
				if(!P.Frozen)
					step(P,SOUTHEAST)
					return
		if(!usr.Moveing)
			if(!usr.Frozen)
				if(usr.Mountain)
					return
				if(usr.screwed&&!usr.drunk)
					usr.random = rand(1,3)
					if(usr.random == 1)
						step(usr,EAST)
					if(usr.random == 2)
						step(usr,NORTHEAST)
					if(usr.random == 3)
						step(usr,SOUTHWEST)
				if(usr.drunk&&!usr.screwed)
					usr.random = rand(1,4)
					if(usr.random == 1)
						step(usr,SOUTHEAST)
					if(usr.random == 2)
						step(usr,SOUTHEAST)
					if(usr.random == 4)
						step(usr,SOUTHEAST)
					if(usr.random == 3)
						step(usr,SOUTH)
				else
					step(usr,SOUTHEAST)
			else
				..()

		else
			return 0
	Southwest()
		if(usr.controling)
			for(var/mob/puppet/P in view(25))
				if(!P.Frozen)
					step(P,SOUTHWEST)
					return
		if(!usr.Moveing)
			if(!usr.Frozen)
				if(usr.Mountain)
					return
				if(usr.screwed&&!usr.drunk)
					usr.random = rand(1,3)
					if(usr.random == 1)
						step(usr,EAST)
					if(usr.random == 2)
						step(usr,NORTHEAST)
					if(usr.random == 3)
						step(usr,WEST)
				if(usr.drunk&&!usr.screwed)
					usr.random = rand(1,4)
					if(usr.random == 1)
						step(usr,SOUTHWEST)
					if(usr.random == 2)
						step(usr,SOUTHWEST)
					if(usr.random == 4)
						step(usr,SOUTHWEST)
					if(usr.random == 3)
						step(usr,WEST)
				else
					step(usr,SOUTHWEST)
			else
				..()
		else
			return 0


mob
	proc
		Logando()
			if(src.EhVip == 1)
				src<<output("<font color=yellow><b>Seu vip acaba em [src.fimdiavip] / [src.fimmesvip]</b></font>","output2.sistema")
				spawn src.PerderVip()
			if(src.Clan<>"Sansara")
				src.pain=0
			if(src.killsvillage <=0)src.killsvillage=0
			for(var/obj/Weed/W in usr.contents)
				usr.picked += 1
			if(src.taiexp>=1000)
				src.taiexp=0
			if(src.ninexp>=100)
				src.ninexp=0
			if(src.genexp>=100)
				src.genexp=0
			world<<output("<font color = yellow>[src] <font color=silver>([src.key]) <font color = yellow>acabou de logar no NRB","output2.sistema")
			//src<<"<font color=red>Não treine em qualquer montanha espalhada pelo mapa, pergunte no OOC para alguém qual montanha está disponível, pois, estamos com um problema em algumas</font>"
			if(usr.atualizado==0)
				usr.atualizado=1
				usr.esquadrao=usr.squad
				usr.squad=""
			usr.deslogado=0
			spawn src.MDD()
			usr.OOCC=1
			usr.PK=1
			usr.SalvarAgora()
			if(usr.treinotaiafk||usr.treinogenafk||usr.treinoninafk||usr.treinoarmafk)
				usr.move=0
				usr.Frozen=1
				usr.PK=0
/*				for (var/mob/treinos/TBunshin in world)
					if(!(K.name == "[usr.name]"))
						var/mob/treinos/TBunshin/K = new /mob/treinos/TBunshin
						if(K)
							K.name = "[usr.name]"
							K.seals = usr.seals
							K.rank = usr.rank
							K.original = usr
							K.icon = usr.icon
							K.overlays += usr.overlays
							K.loc = locate(usr.x-1, usr.y, usr.z)
							flick("smoke2",K)
							K.LoadTreino()*/
			if(usr.EhVip)
				spawn usr.Rechp()
			spawn usr.Recsta()
			spawn usr.RecuperandoChakra()



mob/proc/ChakraBunshin(gasto as num)
    set waitfor = 0
    for(var/mob/npcs/B)
        if(B.original == src)
            while(B && chakra>0)
                chakra -= gasto
                sleep(30)
            if(chakra<=0)
                src<<"Você não possuia chakra suficiente para sustentar seus bushins."
                src.health=0
                src.Death(src)