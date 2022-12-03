//NRB Nova Versão.....Todos os codes revistos, refeitos, corrigidos e adaptados..
//Inicio.....21/01/2010...Finalizado...15/03/2010
world
	New()
		..()
		//spawn(-1) LoadBijuus()
		//spawn(-1) SubAkatLoad()
		log=file("erros.txt")
		spawn(1) TirarNevoaeChuva()
		spawn(2) BanLoad()
		spawn(3) BancosLoad()
		spawn(4) TransformarDia()
		spawn(5) autoLua()
		spawn(6) Min_Acontecimentos()
//		spawn(7) LoadTBunshin()
		spawn(7200) AutoLink2()
		spawn(100)INVASAOL()
		spawn(150)INVASAOSUNA()
		spawn(200)INVASAOOTO()
		spawn(250)INVASAOKUMO()
		spawn(300)INVASAOIWA()
		spawn(350)INVASAOKIRI()
		spawn(400)INVASAOAME()
		spawn(8400) AutoLink3()
		spawn(600) world.AutoRepop()
		spawn(36000) DeletarKB()
		//spawn(144000) AutoReboot()
		//spawn(10) Clock()
		spawn(150) bingobook()



var/horas=8
var/minutos=0
var/segundos=0

world/proc
	TirarNevoaeChuva()
		set background=1
		for(var/obj/kriga/N in world)
			if(N.z==100)
				N.icon=null
		for(var/obj/Chuva/C in world)
			if(C.z==100)
				C.icon=null

	Clock()
		set background=1
		AtivarReboot
			if(horas==0&&minutos==0&&segundos==0)
				world << "<center><b><font size=4><font color=blue>Servidor irá rebootar em 30 segundos. Salve seu jogo!"
				sleep(250)
				world << "<center><b><font size=7><font color=blue>Reboot em 5"
				sleep(10)
				world << "<center><b><font size=7><font color=blue>4"
				sleep(10)
				world << "<center><b><font size=7><font color=blue>3"
				sleep(10)
				world << "<center><b><font size=7><font color=blue>2"
				sleep(10)
				world << "<center><b><font size=7><font color=blue>1"
				sleep(10)
				for(var/mob/M in world)if(M.client)M.SalvarAgora()
				SubAkatSave()
				SalvarBijuus()
				world.Reboot()
				return
		if(minutos==0)
			horas--
			if(horas<=0)horas=0
			minutos = 59
			if(horas==0)
				horas=0
				minutos=0
			if(horas==0&&minutos==0&&segundos==0)
				goto AtivarReboot
			//if(horas==0)minutos=0
		if(segundos==0)
			segundos = 59
			minutos--
			if(horas==0&&minutos==0)
				horas=0
				minutos=0
				segundos=0
			if(horas==0&&minutos==0&&segundos==0)
				goto AtivarReboot
		else
			segundos--
		spawn(10)	world.Clock()

world
	hub = "IagoNaruto.NarutoRevolucaoBrasil"
	hub_password = "iagonrb"
	name = "Naruto: Boruto Revolução Brasil"
	status = "<font size=1><font face=verdana><font color=green>Rate Alta Versão 12.2022 - Entre no discord https://discord.gg/tZ7xgPsy"
	view=8
	loop_checks=0
mob
	Stat()
		statpanel("Stats")
		stat(usr)
		stat("--- --- --- --- --- --- --- --- --- --- --- --- ---")
		stat("           Info")
		stat("--- --- --- --- --- --- --- --- --- --- --- --- ---")
		stat("Nome: [usr] | Ninja Rank: [src.bingob]")
		stat("Idade: [Idade] Anos e [IdadeM] Meses")
		stat("Clan: [Clan]")
		stat("Natureza do chakra: [Elemento]/[Elemento2]/[Elemento3]")
		stat("Rank: [rank]")
		stat("Vila Oculta: [Village]")
		stat("Ryous: [Yen]$ | NRB Coins: [nrbcoin]")
		stat("Vitorias: [vitorias] | Derrotas: [derrotas]")
		stat("Assassinatos: [kills] | Nukenins Derrotados: [missingkills]")
		stat("Desmaios: [deaths]")
		stat("Honra: [honra]")
		if(src.pontosevento>0)stat("Pontos de Evento: [pontosevento]")
		if(!src.emquest)stat("Coordenadas: [usr.x],[usr.y],[usr.z]")
		stat("Pontos de Stats: [pontodestats]")
		stat("NPC Stats Diario: [npcstatskills]")
		stat("--- --- --- --- --- --- --- --- --- --- --- --- ---")
		stat("           Status")
		stat("--- --- --- --- --- --- --- --- --- --- --- --- ---")
		stat("Nivel: [level]")
		stat("Experiencia: [exp/10]/[mexp/10]")
		stat("-----------------------------")
		stat("Vida: [health]/[maxhealth]")
		stat("Chakra: [chakra]/[Mchakra]")
		stat("Stamina: [stamina]/[Mstamina]")
		stat("Taijutsu: [tai]/[Mtai]")
		stat("Ninjutsu: [nin]/[Mnin]")
		stat("Genjutsu: [gen]/[Mgen]")
		stat("Habilidade com Armas: [shurikenskill]/[Mshurikenskill]")
		stat("--- --- --- --- --- --- --- --- --- --- --- --- ---")
		//var/Resistencia = round(Mtai/3 + veloN/3)
//		var/Habilidade = round(Mstamina/3 + Mgen/3)
//		var/Energia = round(Mnin/3 + chakraN/3)
//		var/Vitalidade = round(Mstamina/3 + Mtai/3)
		if(!src.Sarmor||!src.inspike||!src.Barmor||!src.ssnv1||!src.ssnv2||!src.ssnv3||!src.sinv1||!src.sinv2||!src.sinv3||!src.spnv||!src.sonv1||!src.sonv2||!src.sonv3||!src.raim||!src.raim2||!src.armorkisame||!src.usandoarmadurau||!src.usandoarmaduraa||!src.modobudaon||!src.golemon||!src.sshnv1||!src.sshnv2||!src.sshnv3)
			src.Resistencia=round(src.Mtai/20 + src.Mnin/20 + src.Mgen/20 + src.Mshurikenskill/20 + src.maxhealth/50)
		if(src.Sarmor||src.inspike||src.Barmor)
			src.Resistencia=round(src.Mtai/20 + src.Mnin/20 + src.Mgen/20 + src.Mshurikenskill/20 + src.maxhealth/45)
		if(src.ssnv1||src.sinv1||src.sonv1||src.raim||src.armorkisame||src.usandoarmadurau||src.sshnv1)
			src.Resistencia=round(src.Mtai/20 + src.Mnin/20 + src.Mgen/20 + src.Mshurikenskill/20 + src.maxhealth/42)
		if(src.ssnv2||src.sinv2||src.sonv2||src.raim2||src.usandoarmaduraa||src.sshnv2)
			src.Resistencia=round(src.Mtai/20 + src.Mnin/20 + src.Mgen/20 + src.Mshurikenskill/20 + src.maxhealth/37)
		if(src.ssnv3||src.sinv3||src.sonv3||src.modobudaon||src.sshnv3)
			src.Resistencia=round(src.Mtai/20 + src.Mnin/20 + src.Mgen/20 + src.Mshurikenskill/20 + src.maxhealth/32)
		if(src.golemon)
			src.Resistencia=round(src.Mtai/20 + src.Mnin/20 + src.Mgen/20 + src.Mshurikenskill/20 + src.maxhealth/30)
		if(src.spnv)
			src.Resistencia=round(src.Mtai/20 + src.Mnin/20 + src.Mgen/20 + src.Mshurikenskill/20 + src.maxhealth/25)
		//if(src.Resistencia>=1000000)src.Resistencia=1000000
		if(src.veloN>200000)src.veloN=200000
		//if(src.Sarmor)src.Resistencia=round(src.maxhealth/8)
		stat("Resistencia: [num2text(round(src.Resistencia),500000)]")
/*		stat("Habilidade: [num2text(round(Habilidade),1000000)]")
		stat("Energia: [num2text(round(Energia),1000000)]")
		stat("Vitalidade: [num2text(round(Vitalidade),1000000)]")*/
		stat("Velocidade: [num2text(round(src.veloN),100000)]")
		stat("Selos: [seals]% Precisao")
		stat("Controle de Chakra: [num2text(round(usr.chakraN),200000)]")
		stat("--- --- --- --- --- --- --- --- --- --- --- --- ---")
		stat("           Pericia com Elementos:")
		stat("--- --- --- --- --- --- --- --- --- --- --- --- ---")
		if(src.Katon)
			stat("Pericia com Katon: [fogoN]    || Nivel do Elemento: [nivelElementoK]")
		else
			stat("Pericia com Katon: [fogoN]")
		if(src.Raiton)
			stat("Pericia com Raiton: [trovaoN] || Nivel do Elemento: [nivelElementoR]")
		else
			stat("Pericia com Raiton: [trovaoN]")
		if(src.Doton)
			stat("Pericia com Doton: [terraN]   || Nivel do Elemento: [nivelElementoT]")
		else
			stat("Pericia com Doton: [terraN]")
		if(src.Suiton)
			stat("Pericia com Suiton: [aguaN]   || Nivel do Elemento: [nivelElementoS]")
		else
			stat("Pericia com Suiton: [aguaN]")
		if(src.Fuuton)
			stat("Pericia com Fuuton: [ventoN]  || Nivel do Elemento: [nivelElementoV]")
		else
			stat("Pericia com Fuuton: [ventoN]")
		stat("--- --- --- --- --- --- --- --- --- --- --- --- ---")
		stat("           Missoes")
		stat("--- --- --- --- --- --- --- --- --- --- --- --- ---")
		stat("D: [dmission]")
		stat("C: [cmission]")
		stat("B: [bmission]")
		stat("A: [amission]")
		stat("S: [smission]")
		stat("--- --- --- --- --- --- --- --- --- --- --- --- ---")
		stat("           Vitórias Específicas:")
		stat("--- --- --- --- --- --- --- --- --- --- --- --- ---")
		stat("Uchihas Derrotados: [uchikills]")
		stat("Senjus Derrotados: [senjukills]")
		stat("Hyuugas Derrotados: [hyuugakills]")
		stat("--- --- --- --- --- --- --- --- --- --- --- --- ---")
		stat("           Usos:")
		stat("--- --- --- --- --- --- --- --- --- --- --- --- ---")
		stat("Bunshin No Jutsu - [BunshinN]")
		stat("Henge No Jutsu - [hengeN]")
		stat("Kawarimi no jutsu - [KawaN]")
		if(src.Uchiha)
			stat("Sharingan Usos - [Suses]")
			stat("Mangekyou Sharingan Usos - [mangeN]")
		if(src.Hyuuga&&src.hyuuganeji)
			stat("Byakugans Usos - [byaU]")
			stat("Primeira Linhagem Derrotados - [hyuugaHkills]")
		if(src.Hyuuga&&src.hyuugahinata)
			stat("Byakugans Usos - [byaU]")
			stat("Segunda Linhagem Derrotados - [hyuugaNkills]")
		if(src.temtenseigan)
			stat("Tenseigan Usos - [tenseiU]")
		if(src.Aburame)
			stat("Konchuus - [Konchuu]")
		if(src.comecouquestveneno)
			stat("Venenos Usos - [venenouses]")
		if(src.mestredevenenos)
			stat("Pericia em Venenos: [precisaoveneno]%")
		if(src.deidarasub)stat("Kibakus: [kibaku]")
		if(src.Akimichi)stat("Calorias: [calories]")
		if(src.Uzumaki)stat("Chakra Natural: [NatuC]")
		if(src.kakuzusub)stat("Coracoes: [coracao]")
		if(src.sasorisub||src.medicmen||src.mariomen)stat("Venenos: [venN]")
		if(src.Nc)stat("Venenos: [venN]")
		if(src.subpain)stat("Corpos: [corpos]")
		/*stat("--- --- --- --- --- --- --- --- --- --- --- --- ---")
		stat("           Diplomacia:")
		stat("--- --- --- --- --- --- --- --- --- --- --- --- ---")
		if(!src.Village=="Konoha")
			stat("Konoha: [DKonoha:diplomac]")
		if(!src.Village=="Kumo")
			stat("Kumo: [DKumo:diplomac]")
		if(!src.Village=="Iwa")
			stat("Iwa: [DIwa:diplomac]")
		if(!src.Village=="Suna")
			stat("Suna: [DSuna:diplomac]")
		if(!src.Village=="Kiri")
			stat("Kiri: [DKiri:diplomac]")
		if(!src.Village=="Ame")
			stat("Ame: [DAme:diplomac]")
		if(!src.Village=="Oto")
			stat("Oto: [DOto:diplomac]")
		if(!src.Village=="Taka")
			stat("Taka: [DTaka:diplomac]")
		if(!src.Village=="Akatsuki")
			stat("Akatuki: [DAkatsuki:diplomac]")
		if(!src.Village=="Ootsutsuki-Lua")
			stat("Ootsutsuki-Lua: [DOotsutsukiLua:diplomac]")
		stat("--- --- --- --- --- --- --- --- --- --- --- --- ---")*/
		if(src.ticketlog4)
			stat("--- --- --- --- --- --- --- --- --- --- --- --- ---")
			stat("TEMPO LOG 4: [usr.horasdelog]:[usr.minutosdelog]:[usr.segundosdelog]")
			stat("--- --- --- --- --- --- --- --- --- --- --- --- ---")
		if(src.ticketlog5)
			stat("--- --- --- --- --- --- --- --- --- --- --- --- ---")
			stat("TEMPO LOG 5: [usr.horasdelog]:[usr.minutosdelog]:[usr.segundosdelog]")
			stat("--- --- --- --- --- --- --- --- --- --- --- --- ---")
		if(usr.EhVip)
			stat("--- --- --- --- --- --- --- --- --- --- --- --- ---")
			stat("TEMPO VIP: [usr.fimdiavip] / [usr.fimmesvip]")
			stat("--- --- --- --- --- --- --- --- --- --- --- --- ---")
		statpanel("Inventário")
		stat("",contents)
		..()
		/*if(emguerra)
			statpanel("Guerra")
			stat("Konoha: [konohakills] Assassinatos")
			stat("Kiri: [kirikills] Assassinatos")
			stat("Suna: [sunakills] Assassinatos")
			stat("Kumo: [kumokills] Assassinatos")
			stat("Iwa: [iwakills] Assassinatos")
			stat("Ame: [amekills] Assassinatos")
			stat("Nukenin: [nukekills] Assassinatos")*/
		if(emguerra)
			statpanel("Guerra")
			for(var/mob/marcos/M in world)
				stat("[M.name]","HP: [num2text(round(M.health),1000000)]")

mob/var/Resistencia=0
var/tmp/konohakills=0
var/tmp/kirikills=0
var/tmp/sunakills=0
var/tmp/kumokills=0
var/tmp/iwakills=0
var/tmp/amekills=0
var/tmp/nukekills=0

mob/var/senjukills=0
mob/var/hyuugakills=0
mob/var/hyuugaNkills=0
mob/var/hyuugaHkills=0


