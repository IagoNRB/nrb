client
	script = "<STYLE>BODY {background: black; color: white}  IMG.icon{width:48;height:48}</STYLE>"
	command_text = "OOC "
mob
	Login()
		var/M
		for(M in KeysBanidas)
			if(findtext(usr.key, M))
				usr<<"<font color=blue>Conexão Recusada: A 'Guest key' Caiu.</font>."
				spawn(10)
				del(usr)
		if(emguerra)
			usr<< "<font color=green>O Servidor está em guerra. Tente logar mais tarde!</font>"
			del(usr)
		usr.deslogado=1
		usr.loc = locate(25,16,4)
/*		var/sorteio=rand(1,3)
		if(sorteio==1)
			usr.loc = locate(45,45,4)
		if(sorteio==2)
			usr.loc = locate(25,16,4)
		if(sorteio==3)
			usr.loc = locate(82,48,4)*/
		usr.client.view=6
		/*new/obj/Barrahp/health_02(usr.client)
		new/obj/Barrahp/health_03(usr.client)
		usr.updateHealth()*/
		usr.TempoVIP()
		/*new/obj/Barrachakra/chakrar_02(usr.client)
		new/obj/Barrachakra/chakrar_03(usr.client)
		usr.updateChakra()*/
		world << output("<font color=white><b>[usr]</b> está na tela de Login!","output2.sistema")
		winset(src,"suporte","is-visible = false")
		winset(src,"mainwindow","is-maximized=1")
		if(usr.key=="Iago762"||usr.key==""||usr.key==""||usr.key=="")
			usr.GM=1
			usr.ADM=1
			usr.Village = "Konoha"
			usr.villageselected=1
			usr.verbs += typesof(/mob/ADM/verb)
			usr.verbs += typesof(/mob/AmeLider/verb)
			usr.verbs += typesof(/mob/KiriLider/verb)
			usr.verbs += typesof(/mob/GM1/verb)
			usr.verbs += typesof(/mob/GM/verb)
			//usr.verbs += new /mob/KageLider/verb/Diplomacia()
			//usr.verbs += new /mob/jutsu/verb/NovoKamui()
			if(usr.key=="Iago762")
				usr.verbs += new /mob/jutsu/verb/AtirarEscudo()
				usr.verbs += new /mob/Lua/verb/LuaVerb()
				usr.verbs += new /mob/Jinc/verb/JuubiPowerup()
				usr.verbs += new /mob/jutsu/verb/GGKai()
				usr.verbs += new /mob/jutsus/verb/Libertar_Juubi()
				usr.verbs += new /mob/ADM/verb/desbugSUB()
				usr.verbs += new /mob/jutsus/verb/Libertar_Kyuubi()
				usr.verbs += new /mob/jutsus/verb/Libertar_Hachibi()
				usr.verbs += new /mob/jutsus/verb/Libertar_Shichibi()
				usr.verbs += new /mob/jutsus/verb/Libertar_Rokubi()
				usr.verbs += new /mob/jutsus/verb/Libertar_Gobi()
				usr.verbs += new /mob/jutsus/verb/Libertar_Yonbi()
				usr.verbs += new /mob/jutsus/verb/Libertar_Sanbi()
				usr.verbs += new /mob/jutsus/verb/Libertar_Nibi()
				usr.verbs += new /mob/jutsus/verb/Libertar_Ichibi()
				usr.verbs += new /mob/jutsus/verb/MakeKyuubi()
				usr.verbs += new /mob/jutsus/verb/MakeIchibi()
				usr.verbs += new /mob/jutsus/verb/MakeNibi()
				usr.verbs += new /mob/jutsus/verb/MakeSanbi()
				usr.verbs += new /mob/jutsus/verb/Makeyonbi()
				usr.verbs += new /mob/jutsus/verb/MakeGobi()
				usr.verbs += new /mob/jutsus/verb/MakeRokubi()
				usr.verbs += new /mob/jutsus/verb/MakeSishibi()
				usr.verbs += new /mob/jutsus/verb/MakeHachibi()
				usr.verbs += new /mob/Jutsu/verb/KatonGoukaMesshitsu()
				usr.verbs += new /mob/Jutsu/verb/KatonGoukaMekkyaku()
				usr.verbs += new /mob/Jutsu/verb/KatonRyuuenHoukanoJutsu()
				usr.verbs += new /mob/Jutsu/verb/TengaiShinsei()
				usr.verbs += new /mob/Jutsu/verb/MadaraRef()
				usr.verbs += new /mob/Jutsu/verb/MadaraSearch()
				usr.verbs += new /obj/bunshins/Limbobunshin/verb/Limbunshin()
				usr.verbs += new /mob/jutsu/verb/SusanooSasuke()
				usr.sharingan3=1
				usr.mssasuke=1
				usr.verbs += new /mob/uchiha/verb/MangekyouPrep()
				usr.mangekyou=1
				usr.dnasenjuu=1
				usr.sharingan0=0
				usr.shari=1
				usr.ST=1
				usr.FMS=1
				usr.verbs += new /mob/uchiha/verb/Eternal()
				usr.verbs += new /mob/Pein/verb/Rinnegan()
				usr.verbs += new /mob/jutsu/verb/SusanooRinnegan()
				usr.verbs += new /mob/raiton/verb/Raitonheki()
				usr.verbs += new /mob/doton/verb/Doroudorno()
				usr.verbs += new /mob/doton/verb/DotonDoryuuheki()
				usr.verbs += new /mob/suiton/verb/SuitonDoryuudan()
				usr.verbs += new /mob/fuuton/verb/Fuutonheki()
				usr.verbs += new /mob/katon/verb/KatonHousenka()
				usr.verbs += new /mob/katon/verb/Katonheki()
				usr.verbs += new /mob/Pein/verb/Shinra()
				usr.verbs += new /mob/Pein/verb/Banshou()
				usr.verbs += new /mob/jutsu/verb/ShodBuff()
				usr.verbs += new /mob/jutsu/verb/MokKyuu()
				usr.verbs += new /mob/jutsu/verb/MokuSousou()
				usr.verbs += new /mob/jutsu/verb/Moksawa()
				usr.verbs += new /mob/Shodaime/verb/MokutonHijutsu()
				usr.verbs += new /obj/bunshins/Mokbunshin/verb/Mokbunshin()
				usr.hyuugahinata=1
				usr.bya2=1
				usr.Hyuuga=1
				usr.verbs += new /mob/hyuuga/verb/Tenseigan()
				usr.Uzumaki=1
				usr.verbs += new /mob/treino/verb/naturalCh()
				usr.verbs += new /mob/naruto/verb/ModoSannin()
				usr.Hyuuga=1
				usr.Shodaime=1
				usr.Uchiha=1
				usr.verbs += new /mob/Pein/verb/ChibakuTensei()
				usr.verbs += new /mob/jutsu/verb/NovoIza()
				usr.sabeizanagi=1
				usr.verbs += new /mob/jutsu/verb/NovoIzanami()
				usr.sabeizanami=1
				usr.temsharinganiza=1000
				usr.verbs += new /mob/Hatake/verb/Susanoo()
				usr.kamui=1
				usr.amaterasu=1
				usr.verbs += new /mob/jutsu/verb/Novoamat2()

		if(usr.key=="Iago762"||usr.key=="")
			usr.verbs += typesof(/mob/Shisui/verb)
		if(usr.key=="Iago762" || usr.key=="" || usr.key=="")
			usr.GM=1
			usr.Village = "Konoha"
			usr.villageselected=1
			usr.verbs += typesof(/mob/GM/verb)
		//usr.inicio()
		usr.Choice()

	Logout()
		//if(!(src.ckey in temporelogando)) spawn(-1) tempo30(src.ckey)
	//	del(src)
		if(emguerra&&usr.morreunaguerra)
			var/mob/Guerra/Morto/M = new /mob/Guerra/Morto
			M.name = usr.name
			M.name2 = usr.key
			M.loc = usr.loc
			M.Mtai = usr.Mtai
			M.Mnin = usr.Mnin
			M.Mgen = usr.Mgen
			M.Mshurikenskill = usr.Mshurikenskill
			M.maxhealth = usr.maxhealth
			if(usr.Uchiha)M.Uchiha = 1
			if(usr.msobito)M.msobito = 1
			if(usr.mssasuke)M.mssasuke = 1
			if(usr.msitachi)M.msitachi = 1
			if(usr.Hyuuga)M.Hyuuga = 1
			if(usr.Shodaime)M.Shodaime = 1
			if(usr.Jinchuuriki)
				if(WIchibi:dono == "[usr.key]")M.Ichibi= "[usr.key]"
				if(WNibi:dono == "[usr.key]")M.Nibi = "[usr.key]"
				if(WSanbi:dono == "[usr.key]")M.Sanbi = "[usr.key]"
				if(WYonbi:dono == "[usr.key]")M.Yonbi = "[usr.key]"
				if(WGobi:dono == "[usr.key]")M.Gobi = "[usr.key]"
				if(WRokubi:dono == "[usr.key]")M.Rokubi = "[usr.key]"
				if(WShichibi:dono == "[usr.key]")M.Sishibi = "[usr.key]"
				if(WHachibi:dono == "[usr.key]")M.Hachibi = "[usr.key]"
				if(WKyuubi:dono == "[usr.key]")M.Kyuubi = "[usr.key]"
			M.morreunaguerra = 1
			world<<"[usr] deslogou do servidor, mas seu corpo continuará lá. Todas as informações continuarão sendo salvas"
			return
		if(src in PlayersSuporte)
			PlayersSuporte.Remove(src)
			src.loc=locate(456,174,3)
		for(var/obj/stonewallH/ZS in world)
			if(ZS.Gowner==usr)
				del(ZS)
		for(var/obj/shibaritrail/TS in world)
			if(TS.owner==usr)
				del(TS)
		for(var/obj/shibari/AS in world)
			for(var/mob/M in world)
				if(M.key==AS.capturou)
					M.Frozen=0
					M.caught=0
					M.overlays-='kagekubi.dmi'
					M.overlays-='kagekubi.dmi'
					M.overlays-='kagekubi.dmi'
			if(AS.owner==usr)
				del(AS)
		usr.treinando=0
		usr.kuchiyoseusing=0
		usr.Frozen=0
		usr.treinamento=0
		usr.morto=0
		usr.Weights=0
		usr.inkaku=0
		if(usr.climbing)
			usr.loc=locate(456,174,3)
			usr.climbing=0
		usr.ride=0
		usr.treinando=0
		usr.rastreando=0
		usr.libering=0
		usr.verbs -= /mob/cliff/verb/TreinarHP
		usr.verbs -= /mob/Toneri/verb/Fly
		usr.verbs -= /mob/Toneri/verb/KinrinToneri
		usr.verbs -= /mob/Toneri/verb/Ginrin
		usr.verbs -= /mob/Toneri/verb/Juzu
		usr.verbs -= /mob/Toneri/verb/Shinra2
		usr.verbs -= /mob/Toneri/verb/Banshou2
		usr.verbs -= /mob/Toneri/verb/KBT
		usr.overlays -= 'tenseiganmodochakra.dmi'
		usr.overlays-='sealsy.dmi'
		usr.overlays-='CurseSeal Juugo.dmi'
		usr.gkai=0
		usr.levando=0
		if(usr.Henge)
			usr.overlays = null
			usr.Henge = 0
			var/list/O = usr.overlays.Copy()
			usr.overlays = O.Copy()
			usr.icon = usr.Oicon
		usr.Kshibari=0
		usr.sombrafreeze=0
		usr.parado=0
		usr.Frozen=0
		usr.gama=0
		usr.cast=0
		usr.modobudaon=0
		usr.verbs -= new /mob/jutsu/verb/Budaataque()
		usr.verbs -= new /mob/mokuton/verb/GolenAtaque()
		usr.overlays-=/obj/BudaSenjuu/part1
		usr.overlays-=/obj/BudaSenjuu/part2
		usr.overlays-=/obj/BudaSenjuu/part3
		usr.overlays-=/obj/BudaSenjuu/part4
		usr.overlays-=/obj/BudaSenjuu/part5
		usr.overlays-=/obj/BudaSenjuu/part6
		usr.overlays-=/obj/BudaSenjuu/part7
		usr.overlays-=/obj/BudaSenjuu/part8
		usr.overlays-=/obj/BudaSenjuu/part9
		usr.overlays-=/obj/BudaSenjuu/part10
		usr.overlays-=/obj/BudaSenjuu/part11
		usr.overlays-=/obj/BudaSenjuu/part12
		usr.overlays-=/obj/BudaSenjuu/part13
		usr.overlays-=/obj/BudaSenjuu/part14
		usr.overlays-=/obj/BudaSenjuu/part15
		usr.overlays-=/obj/BudaSenjuu/part16
		usr.overlays-=/obj/BudaSenjuu/part17
		usr.overlays-=/obj/BudaSenjuu/part18
		usr.overlays-=/obj/BudaSenjuu/part19
		usr.overlays-=/obj/BudaSenjuu/part20
		usr.overlays-=/obj/BudaSenjuu/part21
		usr.overlays-=/obj/BudaSenjuu/part22
		usr.overlays-=/obj/BudaSenjuu/part23
		usr.overlays-=/obj/BudaSenjuu/part24
		usr.overlays-=/obj/BudaSenjuu/part25
		usr.golemon=0
		usr.parado=0
		usr.invisibility=0
		usr.nocaute=0
		usr.sincronia=0
		usr.kuchiyoseusing=0
		if(evento_registro)usr.verbs+=new/mob/Evento/verb/Evento_Registro
		else usr.verbs-=new/mob/Evento/verb/Evento_Registro
		usr.Inrr=0
		usr.Infr=0
		usr.map=0
		usr.def=0
		PessoaEvento.Remove(src)
		usr.OOC=1
		usr.S2=0
		usr.S3=0
		usr.DesclassificarCS()
		usr.suicidando=0
		usr.delay=0
		usr.delai=0
		usr.labirinto=0
		usr.verbs -= new /mob/medical/verb/SliceTendons()
		usr.verbs -= new /mob/medical/verb/ScrewNerves()
		usr.overlays -='kaku.dmi'
		usr.earthscroll=0
		usr.heavenscroll=0
		usr.overlays -= 'peacock.dmi'
		usr.overlays -='Rainarmor.dmi'
		usr.Rainarmor=0
		usr.prisaomultipla=0
		usr.overlays -= 'cloud.dmi'
		usr.overlays -= 'flight.dmi'
		usr.overlays-='staraura.dmi'
		usr.overlays-='WaterStrom.dmi'
		usr.overlays-='rockball.dmi'
		usr.treinando=0
		usr.roubandocorpo=0
		usr.karura=0
		usr.atacando=0
		usr.atirando=0
		usr.kamui2=0
		usr.treinamento=0
		usr.antigen=0
		usr.fantasma=0
		usr.mokuton=0
		usr.mson=0
		usr.kai=0
		usr.genjando=0
		usr.overlays-='auraraikage.dmi'
		usr.overlays-='rasenganpain.dmi'
		usr.Move_Delay=0.7
		usr.compy=0
		usr.Kaiten=0
		usr.mask=0
		usr.sapo=0
		usr.NoDuelo = 0
		usr.reserving=0
		usr.overlays-='Iarmor.dmi'
		usr.overlays-='Futarmor.dmi'
		usr.overlays-='gelo.dmi'
		usr.overlays-='Esphere.dmi'
		usr.see_invisible = 0
		usr.kbon=0
		usr.kbon2=0
		usr.agua=0
		usr.copy=0
		usr.overlays-='libs.dmi'
		usr.overlays-='Aura2.dmi'
		usr.overlays-='mediter(1).dmi'
		usr.overlays-='vento.dmi'
		usr.overlays-='vlib.dmi'
		usr.overlays-='vcon.dmi'
		usr.overlays-='vmed.dmi'
		usr.captured=0
		usr.caught=0
		usr.froze=0
		usr.buff=0
		usr.parado=0
		usr.pb=0
		usr.Frozen=0
		usr.aura=0
		usr.Warmor=0
		usr.sennin=0
		usr.genj=0
		usr.overlays -= 'Wprison.dmi'
		usr.counter=0
		usr.overlays-='counter.dmi'
		usr.gc=0
		usr.overlays-='counter.dmi'
		src:sight &= ~BLIND
		if(usr.taiexp>=101)
			usr.taiup()
			usr.taiexp=0
		if(usr.chakra<=usr.Mchakra)
			usr.chakra=usr.Mchakra
		if(usr.health<=usr.maxhealth)
			usr.health=usr.maxhealth
		usr.overlays -='kyuubi.dmi'
		usr.overlays-='sharingan.dmi'
		usr.overlays-='rinnegan.dmi'
		usr.overlays -= 'ModoEremita.dmi'
		usr.incs=0
		usr.overlays-='cs.dmi'
		usr.overlays-='cs.dmi'
		usr.overlays-='cs.dmi'
		usr.overlays-='cs2.dmi'
		usr.overlays-='cs2.dmi'
		usr.overlays-='cs2.dmi'
		usr.overlays-='cs3.dmi'
		usr.overlays-='cs3.dmi'
		usr.overlays-='cs3.dmi'
		usr.overlays-=/obj/CCurseSeal3T
		usr.overlays-=/obj/CKyuubi4Tails
		usr.overlays-=/obj/TKyuubi4Tails
		usr.overlays-=/obj/BLKyuubi4Tails
		usr.overlays-=/obj/BRKyuubi4Tails
		usr.overlays-=/obj/TLKyuubi4Tails
		usr.overlays-=/obj/TRKyuubi4Tails
		usr.overlays-=/obj/Cnekomata2Tails
		usr.overlays-=/obj/Tnekomata2Tails
		usr.overlays-=/obj/SanbiAuraT
		usr.overlays-=/obj/CSanbi3Tails
		usr.overlays-=/obj/T1Sanbi3Tails
		usr.overlays-=/obj/BLSanbi3Tails
		usr.overlays-=/obj/BRSanbi3Tails
		usr.overlays-=/obj/TLSanbi3Tails
		usr.overlays-=/obj/TRSanbi3Tails
		usr.overlays-=/obj/CYonbi4Tails
		usr.overlays-=/obj/TYonbi4Tails
		usr.overlays-=/obj/BLYonbi4Tails
		usr.overlays-=/obj/BRYonbi4Tails
		usr.overlays-=/obj/TLYonbi4Tails
		usr.overlays-=/obj/TRYonbi4Tails
		usr.overlays-=/obj/CGobi5Tails
		usr.overlays-=/obj/TGobi5Tails
		usr.overlays-=/obj/BLGobi5Tails
		usr.overlays-=/obj/BRGobi5Tails
		usr.overlays-=/obj/TLGobi5Tails
		usr.overlays-=/obj/TRGobi5Tails
		usr.overlays-=/obj/CRokubi6Tails
		usr.overlays-=/obj/TRokubi6Tails
		usr.overlays-=/obj/BLRokubi6Tails
		usr.overlays-=/obj/BRRokubi6Tails
		usr.overlays-=/obj/TLRokubi6Tails
		usr.overlays-=/obj/TRRokubi6Tails
		usr.overlays-=/obj/CSishibi7Tails
		usr.overlays-=/obj/TSishibi7Tails
		usr.overlays-=/obj/BLSishibi7Tails
		usr.overlays-=/obj/BRSishibi7Tails
		usr.overlays-=/obj/TLSishibi7Tails
		usr.overlays-=/obj/TRSishibi7Tails
		usr.overlays-=/obj/CHachibi8Tails
		usr.overlays-=/obj/THachibi8Tails
		usr.overlays-=/obj/BLHachibi8Tails
		usr.overlays-=/obj/BRHachibi8Tails
		usr.overlays-=/obj/TLHachibi8Tails
		usr.overlays-=/obj/TRHachibi8Tails
		usr.overlays-='nekomata.dmi'
		usr.overlays-='Sanbi1.dmi'
		usr.overlays-='Sanbi Aura.dmi'
		usr.overlays-='Yonbi Aura.dmi'
		usr.overlays-='Gobi Aura.dmi'
		usr.overlays-='Hachibi Aura.dmi'
		usr.overlays-='Sishibi Aura.dmi'
		usr.overlays-='Rokubi Aura.dmi'
		usr.overlays-=/obj/CCurseSeal3T
		usr.overlays-=/obj/TCurseSeal3T
		usr.overlays-=/obj/BLCurseSeal3T
		usr.overlays-=/obj/BRCurseSeal3T
		usr.overlays-=/obj/TLCurseSeal3T
		usr.overlays-=/obj/TRCurseSeal3T
		usr.overlays-=/obj/CCurseSeal3White
		usr.overlays-=/obj/TCurseSeal3White
		usr.overlays-=/obj/BLCurseSeal3White
		usr.overlays-=/obj/BRCurseSeal3White
		usr.overlays-=/obj/TLCurseSeal3White
		usr.overlays-=/obj/TRCurseSeal3White
		usr.overlays-=/obj/CCurseSeal3Black
		usr.overlays-=/obj/TCurseSeal3Black
		usr.overlays-=/obj/BLCurseSeal3Black
		usr.overlays-=/obj/BRCurseSeal3Black
		usr.overlays-=/obj/TLCurseSeal3Black
		usr.overlays-=/obj/TRCurseSeal3Black
		usr.overlays-=/obj/CCurseSeal3Blue
		usr.overlays-=/obj/TCurseSeal3Blue
		usr.overlays-=/obj/BLCurseSeal3Blue
		usr.overlays-=/obj/BRCurseSeal3Blue
		usr.overlays-=/obj/TLCurseSeal3Blue
		usr.overlays-=/obj/TRCurseSeal3Blue
		usr.overlays-=/obj/CCurseSeal3Red
		usr.overlays-=/obj/TCurseSeal3Red
		usr.overlays-=/obj/BLCurseSeal3Red
		usr.overlays-=/obj/BRCurseSeal3Red
		usr.overlays-=/obj/TLCurseSeal3Red
		usr.overlays-=/obj/TRCurseSeal3Red
		usr.overlays-=/obj/CCurseSeal3Vamp
		usr.overlays-=/obj/TCurseSeal3Vamp
		usr.overlays-=/obj/BLCurseSeal3Vamp
		usr.overlays-=/obj/BRCurseSeal3Vamp
		usr.overlays-=/obj/TLCurseSeal3Vamp
		usr.overlays-=/obj/TRCurseSeal3Vamp
		usr.overlays-=/obj/CCurseSeal3Yellow
		usr.overlays-=/obj/TCurseSeal3Yellow
		usr.overlays-=/obj/BLCurseSeal3Yellow
		usr.overlays-=/obj/BRCurseSeal3Yellow
		usr.overlays-=/obj/TLCurseSeal3Yellow
		usr.overlays-=/obj/TRCurseSeal3Yellow
		usr.overlays -= 'BaseT Wing Shield.dmi'
		usr.overlays -= 'Base white Wing Shield.dmi'
		usr.overlays -= 'BaseBlack Wing Shield.dmi'
		usr.overlays -= 'BaseBlue Wing Shield.dmi'
		usr.overlays -= 'BaseRed Wing Shield.dmi'
		usr.overlays -= 'BaseVamp Wing Shield.dmi'
		usr.overlays -= 'BaseYellow Wing Shield.dmi'
		usr.overlays-='Kyuubi Aura Shield.dmi'
		usr.overlays-='Sanbi Aura Shield.dmi'
		usr.overlays-='Yonbi Aura Shield.dmi'
		usr.overlays-='Rokubi Aura Shield.dmi'
		usr.overlays-='Hachibi Aura Shield.dmi'
		usr.overlays-=/obj/SunaShigure1
		usr.overlays-=/obj/SunaShigure2
		usr.overlays-=/obj/SunaShigure3
		usr.overlays-=/obj/SunaShigure4
		usr.overlays-=/obj/SunaShigure5
		usr.overlays-=/obj/SunaShigure6
		usr.overlays-=/obj/SunaShigure7
		usr.overlays-=/obj/SunaShigure8
		usr.overlays-=/obj/SunaShigure9
		usr.overlays-=/obj/SunaShigure10
		usr.overlays-=/obj/SunaShigure11
		usr.overlays-=/obj/SunaShigure12
		usr.overlays-=/obj/SunaShigure13
		usr.overlays-=/obj/SunaShigure14
		usr.overlays-=/obj/SunaShigure15
		usr.overlays-=/obj/SunaShigure16
		usr.overlays-=/obj/SunaShigure17
		usr.overlays-=/obj/SunaShigure18
		usr.overlays-=/obj/SunaShigure19
		usr.overlays-=/obj/SunaShigure20
		usr.overlays-=/obj/SunaShigure21
		usr.overlays-=/obj/SunaShigure22
		usr.overlays-=/obj/SunaShigure23
		usr.overlays-=/obj/SunaShigure24
		usr.overlays-=/obj/SunaShigure25
		usr.KASS=0
		usr.CSWS=0
		usr.buoyu=0
		usr.tagset=0
		usr.Flight=0
		usr.density = 1
		usr.health = usr.maxhealth
		usr.chakra = usr.Mchakra
		usr.stamina = usr.Mstamina
		usr.overlays -= 'Flight.dmi'
		usr.overlays -= 'wings.dmi'
		usr.stop = 0
		usr.dead=0
		usr.resting = 0
		usr.doing = 0
		usr.pb=0
		usr.Frozen = 0
		usr.Moveing = 0
		usr.cast = 0
		usr.doing = 0
		usr.Mountain=0
		usr.onwater=0
		usr.onpulo=0
		usr.makeHunter()
		usr.tagset=0
		usr.tai = usr.Mtai
		usr.nin = usr.Mnin
		usr.gen = usr.Mgen
		usr.focusing =0
		usr.shurikenskill=usr.Mshurikenskill
		usr.icon = usr.Oicon
		usr.overlays -= 'Bun.dmi'
		usr.Kshibari = 0
		usr.kubi = 0
		usr.cast = 0
		usr.overlays -= 'meattank.dmi'
		usr.inspike = 0
		usr.overlays -= 'hakkeshou.dmi'
		usr.Kaiten = 0
		usr.overlays -= 'gatsuuga.dmi'
		usr.ingat = 0
		usr.overlays -= 'lotus.dmi'
		usr.overlays -= 'Marmor.dmi'
		usr.overlays -= 'mist.dmi'
		usr.Marmor = 0
		usr.overlays -= 'Larmor.dmi'
		usr.Larmor = 0
		usr.overlays -= 'Iarmor.dmi'
		usr.Iarmor = 0
		usr.overlays -= 'BeeArmor.dmi'
		usr.Barmor = 0
		usr.overlays -= 'Farmor.dmi'
		usr.Farmor = 0
		usr.overlays -= 'Zarmor.dmi'
		usr.Zarmor = 0
		usr.SHarmor = 0
		usr.overlays -= 'sharingan.dmi'
		usr.overlays -= 'Bun.dmi'
		usr.overlays -= 'Chidori.dmi'
		usr.overlays -= 'Rasengan.dmi'
		usr.overlays -= 'electricity.dmi'
		usr.overlays -= 'byakugan.dmi'
		usr.overlays -= /obj/Sphere
		usr.sphere = 0
		usr.overlays -= 'Sarmor.dmi'
		usr.Sarmor = 0
		usr.overlays -= 'uzaroo.dmi'
		usr.inbaika = 0
		usr.overlays -= 'MTS.dmi'
		usr.intank = 0
		usr.overlays -= 'Tan.dmi'
		usr.overlays -= 'white.dmi'
		usr.overlays -= 'black.dmi'
		usr.overlays -= 'blue.dmi'
		usr.overlays -= 'red.dmi'
		usr.overlays -= 'yellow.dmi'
		usr.overlays -= 'vamp.dmi'
		usr.overlays -= 'omote.dmi'
		usr.overlays -= 'ura.dmi'
		usr.overlays -= 'karasu.dmi'
		usr.dotono = 0
		usr.screwed=0
		usr.points =0
		usr.YT=0
		usr.jashin=0
		usr.finals=0
		usr.underlays-='hyuugacircle.dmi'
		usr.overlays-='hyuugacircle.dmi'
		usr.OOC=1
		usr.PMBlock=0
		usr.inkyuubi=0
		usr.innibi=0
		usr.insanbi=0
		usr.inyonbi=0
		usr.ingobi=0
		usr.inrokubi=0
		usr.insishibi=0
		usr.inhachibi=0
		usr.kawa=0
		usr.overlays -='kyuubi.dmi'
		usr.overlays-='sharingan.dmi'
		usr.incs=0
		usr.overlays-='cs.dmi'
		usr.overlays-='cs.dmi'
		usr.overlays-='cs.dmi'
		usr.overlays-='cs2.dmi'
		usr.overlays-='cs2.dmi'
		usr.overlays-='cs2.dmi'
		usr.overlays-='cs3.dmi'
		usr.overlays-='cs3.dmi'
		usr.overlays-='cs3.dmi'
		usr.inthewar=0
		usr.cansave=0
//		usr.resetoverlay()
		if(usr.rank=="Genin"||usr.rank=="Chuunin")
			usr.verbs -= new /mob/jutsu/verb/Cristal1()
			usr.verbs -= new /mob/jutsu/verb/Cristal2()
			usr.verbs -= new /mob/jutsu/verb/Acido1()
			usr.verbs -= new /mob/jutsu/verb/Lava1()
			usr.verbs -= new /mob/jutsu/verb/Lava2()
			usr.verbs -= new /mob/Ranton/verb/Tempestade1()
			usr.verbs -= new /mob/fuuton/verb/Kami()
			usr.verbs -= new /mob/fuuton/verb/Gufu()
			if(usr.Clan=="Uchiha")
				usr.verbs -= new /mob/mokuton/verb/MokutonQ()
				//usr.verbs -= new /mob/jutsu/verb/Mokutongin()
				usr.verbs -= new /mob/gaara/verb/SunaShushinNoJutsu()
				usr.verbs -= new /mob/gaara/verb/Sandk()
		usr.inNHJ = 0
		usr.inTC = 0
		if(usr.Village=="Nukenin" || usr.Village=="Nenhum")
			usr.Village = "Nenhum"
			usr.verbs -= /mob/akat/verb/ChangeFace
			usr.verbs -= /mob/sss/verb/ChangeFace
			usr.verbs -= /mob/so/verb/ChangeFace
			usr.verbs -= /mob/taka/verb/ChangeFace
			usr.Takamember=0
			usr.Village2=""
			usr.faceicon=null
			usr.esquadrao=""
			usr.mouse_over_pointer=null
		for(var/mob/puppet/P in usr.contents)
			del(P)
		usr.icon = usr.Oicon
		usr.icon_state = ""
		if(usr.recompensa>=1)
			usr.recompensa -= rand(100,400)
			if(usr.recompensa<=0)
				usr.recompensa=0
		else
			usr.recompensa=0
		if(usr.level<150)usr.bingob="E"
		if(usr.level>=150&&usr.level<250)usr.bingob="D"
		if(usr.level>=250&&usr.level<350)usr.bingob="C"
		if(usr.level>=350&&usr.level<600&&usr.seals>=100)usr.bingob="B"
		if(usr.level>=600&&usr.level<800&&usr.seals>=100)usr.bingob="A"
		if(usr.level>=800&&usr.seals>=100)usr.bingob="S"
		if(usr.Village == "Konoha")
			var/obj/Vila/Konoha/K = new/obj/Vila/Konoha
			usr.mouse_over_pointer = K
		if(usr.Village == "Kiri")
			var/obj/Vila/Kiri/K2 = new/obj/Vila/Kiri
			usr.mouse_over_pointer = K2
		if(usr.Village == "Suna")
			var/obj/Vila/Suna/S2 = new/obj/Vila/Suna
			usr.mouse_over_pointer = S2
		if(usr.Village == "Iwa")
			var/obj/Vila/Iwa/I = new/obj/Vila/Iwa
			usr.mouse_over_pointer = I
		if(usr.Village == "Ame")
			var/obj/Vila/Ame/A = new/obj/Vila/Ame
			usr.mouse_over_pointer = A
		if(usr.Village == "Kumo")
			var/obj/Vila/Kumo/K3 = new/obj/Vila/Kumo
			usr.mouse_over_pointer = K3
		if(usr.Village == "Akatsuki" || usr.Village == "Taka")
			var/obj/Vila/Akatsuki/A2 = new/obj/Vila/Akatsuki
			usr.mouse_over_pointer = A2
		if(usr.Village == "Sound Organization")
			var/obj/Vila/SoundOrganization/SO = new/obj/Vila/SoundOrganization
			usr.mouse_over_pointer = SO
		if(usr.rank == "7Swordsmen")
			var/obj/Vila/SevenSwords/SS = new/obj/Vila/SevenSwords
			usr.mouse_over_pointer = SS
		usr.OOC=1
		usr.PMBlock=0
		usr.velocista=0
		usr.cansave=1
		if(usr.honra<=0)usr.honra=0
		if(usr.killsvillage<=0)usr.killsvillage=0
		usr.TempoDesafio()
		usr.OOC=1
		usr.PMBlock=0
		usr.cansave=1
		usr.ignorardesafio=0
		usr.carregandocorpo=0
		//usr.verbs += new /mob/jutsu/verb/Frs2()
		//var/obj/nevoaacida/held/agua_ki = new /obj/nevoaacida/held
		//usr.overlays -=agua_ki
		for(var/obj/pravenda/corponormal/B in usr.contents)
			del(B)
		for(var/obj/pravenda/corpouchiha/C in usr.contents)
			del(C)
		if(usr.Clan<>"Sansara")
			usr.pain=0
		if(usr.killsvillage <=0)usr.killsvillage=0
		for(var/obj/Weed/W in usr.contents)
			usr.picked += 1
		for(var/obj/shibari/K in world)
			if(K.owner==src)
				del(K)
		for(var/obj/shibaritrail/T in world)
			if(T.owner==src)
				del(T)
		if(usr.taiexp>=1000)
			usr.taiexp=0
		if(usr.ninexp>=100)
			usr.ninexp=0
		if(usr.genexp>=100)
			usr.genexp=0
		usr.verbs -= new /mob/Akimichi/verb/NikudanSensha()
		usr.verbs -= new /mob/Akimichi/verb/NikudanHariSensha()
		usr.Weights=0
		usr.inkaku=0
		usr.Inrr=0
		usr.Infr=0
		usr.map=0
		usr.def=0
		usr.mindado=0
		usr.sombrafreeze=0
		usr.kubi=0
		usr.mind=0
		usr.OOC=1
		usr.nocaute=0
		usr.flute=0
		usr.colar=0
		usr.rinne=0
		usr.shari=0
		usr.bya=0
		usr.ggkai=0
		usr.labirinto=0
		usr.delai=0
		usr.marked=0
		usr.marcou=0
		usr.treinadinha=0
		usr.trainando=0
		usr.overlays -='kaku.dmi'
		usr.earthscroll=0
		usr.heavenscroll=0
		usr.overlays -= 'peacock.dmi'
		usr.overlays -='Rainarmor.dmi'
		usr.Rainarmor=0
		usr.prisaomultipla=0
		usr.overlays -= 'cloud.dmi'
		usr.overlays -= 'flight.dmi'
		usr.overlays-='staraura.dmi'
		usr.overlays-='WaterStrom.dmi'
		usr.overlays-='rockball.dmi'
		usr.overlays -= 'TessenkanoMai.dmi'
		usr.overlays -= 'Hana.dmi'
		usr.treinando=0
		usr.roubandocorpo=0
		usr.karura=0
		usr.atacando=0
		usr.atirando=0
		usr.kamui2=0
		usr.treinamento=0
		usr.antigen=0
		usr.fantasma=0
		usr.mokuton=0
		usr.mson=0
		usr.kai=0
		usr.genjando=0
/*		usr.inmissionD=0
		usr.inmissionD2=0
		usr.inmissionD3=0
		usr.inmissionD4=0
		usr.inmissionD5=0
		usr.inmissionC=0
		usr.inmissionC2=0
		usr.inmissionC3=0
		usr.inmissionC4=0
		usr.inmissionC5=0
		usr.inmissionB=0
		usr.inmissionA=0
		usr.inmissionS=0*/
		usr.overlays-='auraraikage.dmi'
		usr.overlays-='rasenganpain.dmi'
		usr.overlays-='magenaura.dmi'
		usr.Move_Delay=0.7
		usr.compy=0
		usr.Kaiten=0
		usr.mask=0
		usr.sapo=0
		usr.NoDuelo = 0
		usr.reserving=0
		usr.overlays-='Iarmor.dmi'
		usr.overlays-='Futarmor.dmi'
		usr.overlays-='gelo.dmi'
		usr.overlays-='Esphere.dmi'
		usr.see_invisible = 0
		usr.kbon=0
		usr.kbon2=0
		usr.agua=0
		usr.copy=0
		usr.overlays-='libs.dmi'
		usr.overlays-='Aura2.dmi'
		usr.overlays-='mediter(1).dmi'
		usr.overlays-='vento.dmi'
		usr.overlays-='vlib.dmi'
		usr.overlays-='vcon.dmi'
		usr.overlays-='vmed.dmi'
		usr.overlays-='magenaura.dmi'
		usr.captured=0
		usr.caught=0
		usr.froze=0
		usr.buff=0
		usr.parado=0
		usr.pb=0
		usr.Frozen=0
		usr.aura=0
		usr.Warmor=0
		usr.sennin=0
		usr.genj=0
		usr.overlays -= 'Wprison.dmi'
		usr.counter=0
		usr.overlays-='counter.dmi'
		usr.gc=0
		usr.overlays-='counter.dmi'
		src:sight &= ~BLIND
		usr.overlays -='kyuubi.dmi'
		usr.overlays-='sharingan.dmi'
		usr.overlays-='rinnegan.dmi'
		usr.overlays -= 'ModoEremita.dmi'
		usr.incs=0
		usr.overlays-='cs.dmi'
		usr.overlays-='cs.dmi'
		usr.overlays-='cs.dmi'
		usr.overlays-='cs2.dmi'
		usr.overlays-='cs2.dmi'
		usr.overlays-='cs2.dmi'
		usr.overlays-='cs3.dmi'
		usr.overlays-='cs3.dmi'
		usr.overlays-='cs3.dmi'
		usr.overlays-=/obj/CCurseSeal3T
		usr.overlays-=/obj/CKyuubi4Tails
		usr.overlays-=/obj/TKyuubi4Tails
		usr.overlays-=/obj/BLKyuubi4Tails
		usr.overlays-=/obj/BRKyuubi4Tails
		usr.overlays-=/obj/TLKyuubi4Tails
		usr.overlays-=/obj/TRKyuubi4Tails
		usr.overlays-=/obj/Cnekomata2Tails
		usr.overlays-=/obj/Tnekomata2Tails
		usr.overlays-=/obj/SanbiAuraT
		usr.overlays-=/obj/CSanbi3Tails
		usr.overlays-=/obj/T1Sanbi3Tails
		usr.overlays-=/obj/BLSanbi3Tails
		usr.overlays-=/obj/BRSanbi3Tails
		usr.overlays-=/obj/TLSanbi3Tails
		usr.overlays-=/obj/TRSanbi3Tails
		usr.overlays-=/obj/CYonbi4Tails
		usr.overlays-=/obj/TYonbi4Tails
		usr.overlays-=/obj/BLYonbi4Tails
		usr.overlays-=/obj/BRYonbi4Tails
		usr.overlays-=/obj/TLYonbi4Tails
		usr.overlays-=/obj/TRYonbi4Tails
		usr.overlays-=/obj/CGobi5Tails
		usr.overlays-=/obj/TGobi5Tails
		usr.overlays-=/obj/BLGobi5Tails
		usr.overlays-=/obj/BRGobi5Tails
		usr.overlays-=/obj/TLGobi5Tails
		usr.overlays-=/obj/TRGobi5Tails
		usr.overlays-=/obj/CRokubi6Tails
		usr.overlays-=/obj/TRokubi6Tails
		usr.overlays-=/obj/BLRokubi6Tails
		usr.overlays-=/obj/BRRokubi6Tails
		usr.overlays-=/obj/TLRokubi6Tails
		usr.overlays-=/obj/TRRokubi6Tails
		usr.overlays-=/obj/CSishibi7Tails
		usr.overlays-=/obj/TSishibi7Tails
		usr.overlays-=/obj/BLSishibi7Tails
		usr.overlays-=/obj/BRSishibi7Tails
		usr.overlays-=/obj/TLSishibi7Tails
		usr.overlays-=/obj/TRSishibi7Tails
		usr.overlays-=/obj/CHachibi8Tails
		usr.overlays-=/obj/THachibi8Tails
		usr.overlays-=/obj/BLHachibi8Tails
		usr.overlays-=/obj/BRHachibi8Tails
		usr.overlays-=/obj/TLHachibi8Tails
		usr.overlays-=/obj/TRHachibi8Tails
		usr.overlays-='nekomata.dmi'
		usr.overlays-='Sanbi1.dmi'
		usr.overlays-='Sanbi Aura.dmi'
		usr.overlays-='Yonbi Aura.dmi'
		usr.overlays-='Gobi Aura.dmi'
		usr.overlays-='Hachibi Aura.dmi'
		usr.overlays-='Sishibi Aura.dmi'
		usr.overlays-='Rokubi Aura.dmi'
		usr.overlays-=/obj/CCurseSeal3T
		usr.overlays-=/obj/TCurseSeal3T
		usr.overlays-=/obj/BLCurseSeal3T
		usr.overlays-=/obj/BRCurseSeal3T
		usr.overlays-=/obj/TLCurseSeal3T
		usr.overlays-=/obj/TRCurseSeal3T
		usr.overlays-=/obj/CCurseSeal3White
		usr.overlays-=/obj/TCurseSeal3White
		usr.overlays-=/obj/BLCurseSeal3White
		usr.overlays-=/obj/BRCurseSeal3White
		usr.overlays-=/obj/TLCurseSeal3White
		usr.overlays-=/obj/TRCurseSeal3White
		usr.overlays-=/obj/CCurseSeal3Black
		usr.overlays-=/obj/TCurseSeal3Black
		usr.overlays-=/obj/BLCurseSeal3Black
		usr.overlays-=/obj/BRCurseSeal3Black
		usr.overlays-=/obj/TLCurseSeal3Black
		usr.overlays-=/obj/TRCurseSeal3Black
		usr.overlays-=/obj/CCurseSeal3Blue
		usr.overlays-=/obj/TCurseSeal3Blue
		usr.overlays-=/obj/BLCurseSeal3Blue
		usr.overlays-=/obj/BRCurseSeal3Blue
		usr.overlays-=/obj/TLCurseSeal3Blue
		usr.overlays-=/obj/TRCurseSeal3Blue
		usr.overlays-=/obj/CCurseSeal3Red
		usr.overlays-=/obj/TCurseSeal3Red
		usr.overlays-=/obj/BLCurseSeal3Red
		usr.overlays-=/obj/BRCurseSeal3Red
		usr.overlays-=/obj/TLCurseSeal3Red
		usr.overlays-=/obj/TRCurseSeal3Red
		usr.overlays-=/obj/CCurseSeal3Vamp
		usr.overlays-=/obj/TCurseSeal3Vamp
		usr.overlays-=/obj/BLCurseSeal3Vamp
		usr.overlays-=/obj/BRCurseSeal3Vamp
		usr.overlays-=/obj/TLCurseSeal3Vamp
		usr.overlays-=/obj/TRCurseSeal3Vamp
		usr.overlays-=/obj/CCurseSeal3Yellow
		usr.overlays-=/obj/TCurseSeal3Yellow
		usr.overlays-=/obj/BLCurseSeal3Yellow
		usr.overlays-=/obj/BRCurseSeal3Yellow
		usr.overlays-=/obj/TLCurseSeal3Yellow
		usr.overlays-=/obj/TRCurseSeal3Yellow
		usr.overlays -= 'BaseT Wing Shield.dmi'
		usr.overlays -= 'Base white Wing Shield.dmi'
		usr.overlays -= 'BaseBlack Wing Shield.dmi'
		usr.overlays -= 'BaseBlue Wing Shield.dmi'
		usr.overlays -= 'BaseRed Wing Shield.dmi'
		usr.overlays -= 'BaseVamp Wing Shield.dmi'
		usr.overlays -= 'BaseYellow Wing Shield.dmi'
		usr.overlays-='Kyuubi Aura Shield.dmi'
		usr.overlays-='Sanbi Aura Shield.dmi'
		usr.overlays-='Yonbi Aura Shield.dmi'
		usr.overlays-='Rokubi Aura Shield.dmi'
		usr.overlays-='Hachibi Aura Shield.dmi'
		usr.KASS=0
		usr.CSWS=0
		usr.buoyu=0
		usr.tagset=0
		usr.Flight=0
		usr.density = 1
		usr.health = usr.maxhealth
		usr.chakra = usr.Mchakra
		usr.stamina = usr.Mstamina
		usr.overlays -= 'Flight.dmi'
		usr.overlays -= 'wings.dmi'
		usr.stop = 0
		usr.dead=0
		usr.resting = 0
		usr.doing = 0
		usr.pb=0
		usr.Frozen = 0
		usr.Moveing = 0
		usr.cast = 0
		usr.doing = 0
		usr.Mountain=0
		usr.onwater=0
		usr.onpulo=0
		usr.makeHunter()
		usr.tagset=0
		usr.tai = usr.Mtai
		usr.nin = usr.Mnin
		usr.gen = usr.Mgen
		usr.focusing =0
		usr.shurikenskill=usr.Mshurikenskill
		usr.icon = usr.Oicon
		usr.gt=0
		usr.overlays -= 'Bun.dmi'
		usr.Kshibari = 0
		usr.kubi = 0
		usr.cast = 0
		usr.overlays -= 'meattank.dmi'
		usr.inspike = 0
		usr.overlays -= 'hakkeshou.dmi'
		usr.Kaiten = 0
		usr.overlays -= 'gatsuuga.dmi'
		usr.ingat = 0
		usr.overlays -= 'lotus.dmi'
/*		usr.gate1 = 0
		usr.overlays -= 'lotus.dmi'
		usr.gate2 = 0
		usr.overlays -= 'lotus.dmi'
		usr.gate3 = 0
		usr.overlays -= 'lotus.dmi'
		usr.gate4 = 0
		usr.overlays -= 'lotus.dmi'
		usr.gate5 = 0
		usr.overlays -= 'lotus.dmi'
		usr.gate6 = 0
		usr.overlays -= 'lotus.dmi'
		usr.gate7 = 0
		usr.overlays -= 'lotus.dmi'
		usr.gate8 = 0*/
		usr.overlays -= 'Marmor.dmi'
		usr.overlays -= 'mist.dmi'
		usr.Marmor = 0
		usr.overlays -= 'Larmor.dmi'
		usr.Larmor = 0
		usr.overlays -= 'Iarmor.dmi'
		usr.Iarmor = 0
		usr.overlays -= 'BeeArmor.dmi'
		usr.Barmor = 0
		usr.overlays -= 'Farmor.dmi'
		usr.Farmor = 0
		usr.overlays -= 'Zarmor.dmi'
		usr.Zarmor = 0
		usr.SHarmor = 0
		usr.overlays -= 'sharingan.dmi'
		usr.overlays -= 'Bun.dmi'
		usr.overlays -= 'Chidori.dmi'
		usr.overlays -= 'Rasengan.dmi'
		usr.overlays -= 'electricity.dmi'
		usr.overlays -= 'byakugan.dmi'
		usr.overlays -= /obj/Sphere
		usr.sphere = 0
		usr.overlays -= 'Sarmor.dmi'
		usr.Sarmor = 0
		usr.overlays -= 'uzaroo.dmi'
		usr.inbaika = 0
		usr.overlays -= 'MTS.dmi'
		usr.intank = 0
		usr.overlays -= 'Tan.dmi'
		usr.overlays -= 'white.dmi'
		usr.overlays -= 'black.dmi'
		usr.overlays -= 'blue.dmi'
		usr.overlays -= 'red.dmi'
		usr.overlays -= 'yellow.dmi'
		usr.overlays -= 'vamp.dmi'
		usr.overlays -= 'omote.dmi'
		usr.overlays -= 'ura.dmi'
		usr.overlays -= 'karasu.dmi'
		usr.dotono = 0
		usr.screwed=0
		usr.points =0
		usr.finals=0
		usr.inmission=0
		usr.inkyuubi=0
		usr.innibi=0
		usr.insanbi=0
		usr.inyonbi=0
		usr.ingobi=0
		usr.inrokubi=0
		usr.insishibi=0
		usr.inhachibi=0
		usr.overlays -='kyuubi.dmi'
		usr.overlays-='sharingan.dmi'
		usr.incs=0
		usr.overlays-='cs.dmi'
		usr.overlays-='cs.dmi'
		usr.overlays-='cs.dmi'
		usr.overlays-='cs2.dmi'
		usr.overlays-='cs2.dmi'
		usr.overlays-='cs2.dmi'
		usr.overlays-='cs3.dmi'
		usr.overlays-='cs3.dmi'
		usr.overlays-='cs3.dmi'
		usr.overlays -= 'bonesword.dmi'
		usr.overlays -= 'tessenka.dmi'
		usr.inthewar=0
		usr.icon = usr.Oicon
		usr.icon_state = ""
		usr.OOC=1
		usr.ignorardesafio=0
		usr.DeletarEspelho()
		usr.inkaku=0
		usr.Inrr=0
		usr.Infr=0
		usr.faixatirada=0
		usr.cast=0
		usr.sapo=0
		usr.sennin=0
		usr.gama=0
		usr.rasho=0
		usr.Parasited=0
		usr.hakkando=0
		if(usr.naopodesuicidar)
			if(usr.bugounaopode>=3)
				Bans:Add(usr.key)
				Bans[usr.key]="[usr.client.address]"
				world<<"<font color = red>[usr] foi banido por deslogar no Jutsu Proibido!</font>"
				text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) teve sua <b>Key Banida</b> por <b>deslogar no Jutsu Proibido!<BR>","GMlog.html")
				del(usr)
			usr.bugounaopode+=1
			world<<"[usr] Deslogou no Jutsu troca de mentes, se continuar será banido!"
		if(usr.mindado)
			if(usr.bugoumind>=3)
				Bans:Add(usr.key)
				Bans[usr.key]="[usr.client.address]"
				world<<"<font color = red>[usr] foi banido por deslogar no Jutsu Proibido!</font>"
				text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) teve sua <b>Key Banida</b> por <b>deslogar no Jutsu Proibido!<BR>","GMlog.html")
				del(usr)
			usr.bugoumind+=1
			world<<"[usr] Deslogou no Jutsu troca de mentes, se continuar será banido!"
		if(usr.kotoado)
			if(usr.bugoukoto>=3)
				Bans:Add(usr.key)
				Bans[usr.key]="[usr.client.address]"
				world<<"<font color = red>[usr] foi banido por deslogar no Jutsu Proibido!</font>"
				text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) teve sua <b>Key Banida</b> por <b>deslogar no Jutsu Proibido!<BR>","GMlog.html")
				del(usr)
			usr.bugoukoto+=1
			world<<"[usr] Deslogou no Jutsu Kotoamatsukami, se continuar será banido!"
		if(usr.daisando)
			if(usr.bugouolhousando>=3)
				Bans:Add(usr.key)
				Bans[usr.key]="[usr.client.address]"
				world<<"<font color = red>[usr] foi banido por deslogar usando Daisan no Me.</font>"
				text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) teve sua <b>Key Banida</b> por <b>deslogar usando Daisan no Me!<BR>","GMlog.html")
				del(usr)
			usr.bugouolhousando+=1
			world<<"[usr] Deslogou usando Daisan no Me, se continuar será banido!"
			for(var/mob/M in world)
				if(M.client)
					if(usr.sunaeye==M)
						usr.client.eye = usr
						usr.sunaeye = ""
						usr.froze = 0
						usr.cast = 0
						usr.move = 1
						usr.daisando=0
						M.daisado=0
						M<<"[usr] deslogou e parou de te espionar!"
		if(usr.daisado)
			if(usr.bugouolho>=3)
				Bans:Add(usr.key)
				Bans[usr.key]="[usr.client.address]"
				world<<"<font color = red>[usr] foi banido por deslogar no Daisan no Me.</font>"
				text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) teve sua <b>Key Banida</b> por <b>deslogar no Daisan no Me!<BR>","GMlog.html")
				del(usr)
			usr.bugouolho+=1
			world<<"[usr] Deslogou no Daisan no Me, se continuar será banido!"
			for(var/mob/M in world)
				if(M.client)
					if(M.sunaeye==usr)
						M.client.eye = M
						M.sunaeye = ""
						M.froze = 0
						M.cast = 0
						M.move = 1
						M.daisando=0
						M <<"O olho de areia se desfaz, pois [usr] deslogou!"
		if(usr.sombrafreeze&&usr.kubi)
			if(usr.bugousombra>=3)
				Bans:Add(usr.key)
				Bans[usr.key]="[usr.client.address]"
				world<<"<font color = red>[usr] foi banido por deslogar no Jutsu de Sombra.</font>"
				text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) teve sua <b>Key Banida</b> por <b>deslogar no Jutsu de Sombra!<BR>","GMlog.html")
				del(usr)
			usr.bugousombra+=1
			world<<"[usr] Deslogou no Jutsu de Sombra, se continuar será banido!"
		if(usr.gate8)
			if(usr.bugou8portao>=3)
				Bans:Add(usr.key)
				Bans[usr.key]="[usr.client.address]"
				world<<"<font color = red>[usr] foi banido por deslogar com 8º Portão Aberto!</font>"
				text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) teve sua <b>Key Banida</b> por <b>deslogar com 8º Portão Aberto!<BR>","GMlog.html")
				del(usr)
			usr.bugou8portao+=1
			world<<"[usr] Deslogou com 8º Portão Aberto, se continuar será banido!"
		if(usr.perdendocoracao)
			if(usr.bugoucoracao>=3)
				Bans:Add(usr.key)
				Bans[usr.key]="[usr.client.address]"
				world<<"<font color = red>[usr] foi banido por deslogar enquanto perdia seu coração!</font>"
				text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) teve sua <b>Key Banida</b> por <b>deslogar enquanto perdia seu coração!<BR>","GMlog.html")
				del(usr)
			usr.bugoucoracao+=1
			world<<"[usr] Deslogou enquanto perdia seu coração, se continuar será banido!"
		if(usr.naart)
			usr.naart = 0
			usr.loc = locate(456,174,3)
			temarenat=0
			world<<output("[usr] deslogou na Arena Tradicional, agora ela não está mais em uso!","output2.sistema")
			for(var/mob/M in world)
				if(M.client<>usr.client)
					if(M.z==4&&M.x>344&&M.x<382&&M.y>5&&M.y<36)
						M.naart=0
						M.Suicides()
		if(usr.najau)
			usr.najau = 0
			usr.loc = locate(456,174,3)
			temjaula=0
			world<<output("[usr] deslogou na Arena: Jaula, agora ela não está mais em uso!","output2.sistema")
			for(var/mob/M in world)
				if(M.client<>usr.client)
					if(M.z==2&&M.x>278&&M.x<294&&M.y>264&&M.y<282)
						M.najau=0
						M.Suicides()
		if(usr.naare)
			usr.naare = 0
			usr.loc = locate(456,174,3)
			temarena=0
			world<<output("[usr] deslogou na Arena, agora ela não está mais em uso!","output2.sistema")
			for(var/mob/M in world)
				if(M.client<>usr.client)
					if(M.z==10&&M.x>447&&M.x<510&&M.y>38&&M.y<70)
						M.naare=0
						M.Suicides()
		usr.overlays-=/obj/Susanoo/part1
		usr.overlays-=/obj/Susanoo/part2
		usr.overlays-=/obj/Susanoo/part3
		usr.overlays-=/obj/Susanoo/part4
		usr.overlays-=/obj/Susanoo/part5
		usr.overlays-=/obj/Susanoo/part6
		usr.overlays-=/obj/Susanoo/part7
		usr.overlays-=/obj/Susanoo/part8
		usr.overlays-=/obj/Susanoo/part9
		usr.overlays-=/obj/Susanoo/part10
		usr.overlays-=/obj/Susanoo/part11
		usr.overlays-=/obj/Susanoo/part12
		usr.overlays-=/obj/Susanoo/part13
		usr.overlays-=/obj/Susanoo/part14
		usr.overlays-=/obj/Susanoo/part15
		usr.overlays-=/obj/Susanoo/part16
		usr.overlays-=/obj/Susanoo/part17
		usr.overlays-=/obj/Susanoo/part18
		usr.overlays-=/obj/Susanoo/part19
		usr.overlays-=/obj/Susanoo/part20
		usr.overlays-=/obj/Susanoo/part21
		usr.overlays-=/obj/Susanoo/part22
		usr.overlays-=/obj/Susanoo/part23
		usr.overlays-=/obj/Susanoo/part24
		usr.overlays-=/obj/Susanoo/part25
		usr.overlays-=/obj/Susanoo/part26
		usr.overlays-=/obj/SusanooShisuiR/part1
		usr.overlays-=/obj/SusanooShisuiR/part2
		usr.overlays-=/obj/SusanooShisuiR/part3
		usr.overlays-=/obj/SusanooShisuiR/part4
		usr.overlays-=/obj/SusanooShisuiR/part5
		usr.overlays-=/obj/SusanooShisuiR/part6
		usr.overlays-=/obj/SusanooShisuiR/part7
		usr.overlays-=/obj/SusanooShisuiR/part8
		usr.overlays-=/obj/SusanooShisuiR/part9
		usr.overlays-=/obj/SusanooShisuiR/part10
		usr.overlays-=/obj/SusanooShisuiR/part11
		usr.overlays-=/obj/SusanooShisuiR/part12
		usr.overlays-=/obj/SusanooShisuiR/part13
		usr.overlays-=/obj/SusanooShisuiR/part14
		usr.overlays-=/obj/SusanooShisuiR/part15
		usr.overlays-=/obj/SusanooShisuiR/part16
		usr.overlays-=/obj/SusanooShisuiR/part17
		usr.overlays-=/obj/SusanooShisuiR/part18
		usr.overlays-=/obj/SusanooShisuiR/part19
		usr.overlays-=/obj/SusanooShisuiR/part20
		usr.overlays-=/obj/SusanooShisuiR/part21
		usr.overlays-=/obj/SusanooShisuiR/part22
		usr.overlays-=/obj/SusanooShisuiR/part23
		usr.overlays-=/obj/SusanooShisuiR/part24
		usr.overlays-=/obj/SusanooShisuiR/part25
		usr.susanoShisuion=0
		usr.susanoShisuion2=0
		usr.susanoShisuion3=0
		usr.sshnv3=0
		usr.sshnv2=0
		usr.sshnv1=0
		usr.overlays-= /obj/susanoShisuicaveira/caveiraS1
		usr.overlays-= /obj/susanoShisuicaveira/caveiraS2
		usr.overlays-= /obj/susanoShisuicaveira/caveiraS3
		usr.overlays-= /obj/susanoShisuicaveira/caveiraS4
		usr.overlays-= /obj/susanoShisuicaveira/caveiraS5
		usr.overlays-= /obj/susanoShisuicaveira/caveiraS6
		usr.overlays-= /obj/susanoShisuicaveira/caveiraS7
		usr.overlays-= /obj/susanoShisuicaveira/caveiraS8
		usr.overlays-= /obj/susanoShisuicaveira/caveiraS9
		usr.overlays-= /obj/susanoshisuipele/peleS1
		usr.overlays-= /obj/susanoshisuipele/peleS2
		usr.overlays-= /obj/susanoshisuipele/peleS3
		usr.overlays-= /obj/susanoshisuipele/peleS4
		usr.overlays-= /obj/susanoshisuipele/peleS5
		usr.overlays-= /obj/susanoshisuipele/peleS6
		usr.overlays-= /obj/susanoshisuipele/peleS7
		usr.overlays-= /obj/susanoshisuipele/peleS8
		usr.overlays-= /obj/susanoshisuipele/peleS9
		usr.overlays-=/obj/susanoShisuicompleto/completoS1
		usr.overlays-=/obj/susanoShisuicompleto/completoS2
		usr.overlays-=/obj/susanoShisuicompleto/completoS3
		usr.overlays-=/obj/susanoShisuicompleto/completoS4
		usr.overlays-=/obj/susanoShisuicompleto/completoS5
		usr.overlays-=/obj/susanoShisuicompleto/completoS6
		usr.overlays-=/obj/susanoShisuicompleto/completoS7
		usr.overlays-=/obj/susanoShisuicompleto/completoS8
		usr.overlays-=/obj/susanoShisuicompleto/completoS9
		usr.verbs -= new /mob/jutsu/verb/SusanooTotsukaAtk()
		usr.verbs -= new /mob/jutsu/verb/SusanooShisui2()
		usr.verbs -= new /mob/jutsu/verb/SusanooShisui3()
		usr.parasitedby=null
		usr.overlays -= 'dragãoZIM.dmi'
		usr.overlays-=/obj/Golempartes/gol1
		usr.overlays-=/obj/Golempartes/gol2
		usr.overlays-=/obj/Golempartes/gol3
		usr.overlays-=/obj/Golempartes/gol4
		usr.overlays-=/obj/Golempartes/gol5
		usr.overlays-=/obj/Golempartes/gol6
		usr.overlays-=/obj/Golempartes/gol7
		if(usr.precisaoveneno>=100)
			usr.precisaoveneno=100
		usr.overlays-=/obj/Golempartes/gol8
		usr.overlays-=/obj/Golempartes/gol9
		usr.verbs -= new /mob/mokuton/verb/GolenAtaque()
		usr.golemon=0
		usr.overlays -= '8portao.dmi'
		usr.overlays -= 'lotus.dmi'
		usr.overlays -= 'lotus.dmi'
		usr.overlays -= 'lotus.dmi'
		usr.overlays -= 'lotus.dmi'
		usr.overlays -= 'lotus.dmi'
		usr.overlays -= 'lotus.dmi'
		usr.overlays -= 'lotus.dmi'
		usr.overlays -= 'lotus.dmi'
		usr.overlays -= 'gatepower.dmi'
		usr.overlays -= 'gate3chakra.dmi'
		usr.overlays -= '8portao.dmi'
		usr.overlays -= 'Lariat Apanhar.dmi'
		usr.overlays -= 'AFK.dmi'
		usr.armorkisame=0
		if(usr.inizanami==1)
			usr.inizanami = 1
			usr.Move_Delay=10
			usr.froze=1
			usr.loc = locate(392,454,7)
		usr.armorkisame2=0
//		usr.cdck=0
//		usr.cdizanami=0
		usr.inprison=0
		usr.cast=0
		usr.incs=0
		usr.mokuton=0
		usr.desselado=0
		usr.kamui2=0
		usr.overlays-='Kamui1.dmi'
		usr.copy=0
		usr.fcopy=0
		usr.roubandocoracao=0
		usr.perdendocoracao=0
//		usr.cdgenkai=0
//		usr.cdchougenkai=0
//		usr.cdretsu=0
//		usr.cdmoji=0
//		usr.cdkajuugan=0
		usr.Raikirion=0
//		usr.cdraikiri=0
		usr.usandoarmaduraa=0
//		usr.cdhirudora=0
//		usr.cdsenbonh=0
//		usr.cdgouken=0
//		usr.cdjuhou=0
//		usr.cdgainoturno=0
		usr.tenseiganon=0
//		usr.cdkawarimimizu=0
		usr.mask=0
		usr.pb=0
//		usr.cdelea=0
		usr.arremessandoky=0
		usr.overlays -= 'hinatajohu.dmi'
//		usr.cdsflecha=0
//		usr.cdsshuriken=0
//		usr.cdprisaom=0
		usr.marcou=0
		usr.marked=0
//		usr.cdfuruz=0
//		usr.cdsuirouk=0
//		usr.cdrouboc=0
//		usr.copiando=0
		usr.genjando=0
		usr.lamina=0
		usr.kawa=0
//		usr.tempokawa=0
		usr.jashin=0
		usr.Blood=0
		usr.laminado=0
//		usr.cdcorpopein=0
		usr.genjutsuativo=0
		usr.genjcorvo=0
		usr.pillred=0
		usr.shari=0
		usr.mson=0
		usr.levando=0
		usr.espiando=0
		usr.eletrico=0
//		usr.cdsuicidio=0
		usr.gkai=0
		usr.kai=0
		usr.ggkai=0
		usr.map=0
		usr.def=0
		usr.cast=0
		usr.mokuton=0
		usr.buff=0
		usr.NoDuelo = 0
		usr.parado=0
		usr.overlays -='kaku.dmi'
		usr.earthscroll=0
		usr.heavenscroll=0
		usr.overlays -= 'peacock.dmi'
		usr.overlays -='Rainarmor.dmi'
		usr.Rainarmor=0
		usr.overlays -= 'cloud.dmi'
		usr.verbs -= new /mob/jutsu/verb/DogSastreio()
		usr.overlays -= 'wings.dmi'
		usr.overlays-='staraura.dmi'
		usr.overlays-='WaterStrom.dmi'
		usr.overlays-='rockball.dmi'
		usr.treinamento=0
		usr.treinando=0
		usr.roubandocorpo=0
		usr.antigen=0
		usr.atirando=0
		usr.overlays-='gelo.dmi'
		usr.overlays-='auraraikage.dmi'
		usr.fantasma=0
		usr.prisaomultipla=0
		usr.Kaiten=0
		usr.compy=0
		usr.mask=0
		usr.kamui2=0
		usr.reserving=0
		usr.overlays-='rasenganpain.dmi'
		src.overlays -= 'socoextremo.dmi'
		usr.overlays-='Iarmor.dmi'
		usr.overlays-='Futarmor.dmi'
		usr.overlays-='Esphere.dmi'
		usr.verbs -= /mob/uchiha/verb/Tsukiyomi
		usr.see_invisible = 0
		usr.kbon=0
		usr.kbon2=0
		usr.karura=0
		usr.agua=0
		usr.overlays-='libs.dmi'
		usr.overlays-='Aura2.dmi'
		usr.overlays-='mediter(1).dmi'
		usr.overlays-='vento.dmi'
		usr.overlays-='vlib.dmi'
		usr.overlays-='vcon.dmi'
		usr.overlays-='vmed.dmi'
		usr.genj=0
		usr.usandoarmadurau=0
		usr.captured=0
		usr.caught=0
		usr.froze=0
		usr.pb=0
		usr.Frozen=0
		usr.aura=0
		usr.Warmor=0
		usr.overlays -= 'Wprison.dmi'
		usr.counter=0
		usr.overlays-='counter.dmi'
		usr.gc=0
		usr.overlays-='counter.dmi'
		src:sight &= ~BLIND
		if(usr.gt)
			usr.chakra=usr.Mchakra
			usr.health=usr.maxhealth
			return
		usr.buoyu=0
		usr.tagset=0
		usr.Flight=0
		usr.cansave=0
		usr.health = usr.maxhealth
		usr.chakra = usr.Mchakra
		usr.stamina = usr.Mstamina
		usr.density = 1
		usr.overlays -= 'Flight.dmi'
		usr.overlays -= 'wings.dmi'
		usr.verbs -= new /mob/tag/verb/Explode
		usr.verbs -= new /mob/gaara2/verb/AttackNorth()
		usr.verbs -= new /mob/gaara2/verb/AttackSouth()
		usr.verbs -= new /mob/gaara2/verb/AttackEast()
		usr.verbs -= new /mob/gaara2/verb/AttackWest()
		usr.verbs -= new /mob/jiraya2/verb/AttackNorth()
		usr.verbs -= new /mob/jiraya2/verb/AttackSouth()
		usr.verbs -= new /mob/jiraya2/verb/AttackWest()
		usr.verbs -= new /mob/jiraya2/verb/AttackEast()
		usr.verbs -= new /mob/jutsu/verb/SusanooTotsukaAtk()
		usr.verbs -= new /mob/jutsu/verb/Susaatak()
		usr.verbs -= new /mob/jutsu/verb/SusanooAtk2()
		usr.verbs -= new /mob/jutsu/verb/SusaatakR()
		usr.verbs -= new /mob/jutsu/verb/SusanooShuri()
		usr.susanoObitoon=0
		usr.susanoObitoon2=0
		usr.susanoObitoon3=0
		usr.SusanooRinneganon=0
		usr.spnv=0
		usr.sonv1=0
		usr.sonv2=0
		usr.sonv3=0
		usr.verbs -= new /mob/jutsu/verb/SusanooObito2()
		usr.verbs -= new /mob/jutsu/verb/SusanooObito3()
		usr.overlays-=/obj/SusanooR/part1
		usr.overlays-=/obj/SusanooR/part2
		usr.overlays-=/obj/SusanooR/part3
		usr.overlays-=/obj/SusanooR/part4
		usr.overlays-=/obj/SusanooR/part5
		usr.overlays-=/obj/SusanooR/part6
		usr.overlays-=/obj/SusanooR/part7
		usr.overlays-=/obj/SusanooR/part8
		usr.overlays-=/obj/SusanooR/part9
		usr.overlays-=/obj/SusanooR/part10
		usr.overlays-=/obj/SusanooR/part11
		usr.overlays-=/obj/SusanooR/part12
		usr.overlays-=/obj/SusanooR/part13
		usr.overlays-=/obj/SusanooR/part14
		usr.overlays-=/obj/SusanooR/part15
		usr.overlays-=/obj/SusanooR/part16
		usr.overlays-=/obj/SusanooR/part17
		usr.overlays-=/obj/SusanooR/part18
		usr.overlays-=/obj/SusanooR/part19
		usr.overlays-=/obj/SusanooR/part20
		usr.overlays-=/obj/SusanooR/part21
		usr.overlays-=/obj/SusanooR/part22
		usr.overlays-=/obj/SusanooR/part23
		usr.overlays-=/obj/SusanooR/part24
		usr.overlays-=/obj/SusanooR/part25
		usr.overlays-= /obj/susanoSasukecompleto/completoS1
		usr.overlays-= /obj/susanoSasukecompleto/completoS2
		usr.overlays-= /obj/susanoSasukecompleto/completoS3
		usr.overlays-= /obj/susanoSasukecompleto/completoS4
		usr.overlays-= /obj/susanoSasukecompleto/completoS5
		usr.overlays-= /obj/susanoSasukecompleto/completoS6
		usr.overlays-= /obj/susanoSasukecompleto/completoS7
		usr.overlays-= /obj/susanoSasukecompleto/completoS8
		usr.overlays-= /obj/susanoSasukecompleto/completoS9
		usr.overlays-= /obj/susanosasukepele/peleS1
		usr.overlays-= /obj/susanosasukepele/peleS2
		usr.overlays-= /obj/susanosasukepele/peleS3
		usr.overlays-= /obj/susanosasukepele/peleS4
		usr.overlays-= /obj/susanosasukepele/peleS5
		usr.overlays-= /obj/susanosasukepele/peleS6
		usr.overlays-= /obj/susanosasukepele/peleS7
		usr.overlays-= /obj/susanosasukepele/peleS8
		usr.overlays-= /obj/susanosasukepele/peleS9
		usr.overlays-= /obj/susanoSasukecaveira/caveiraS1
		usr.overlays-= /obj/susanoSasukecaveira/caveiraS2
		usr.overlays-= /obj/susanoSasukecaveira/caveiraS3
		usr.overlays-= /obj/susanoSasukecaveira/caveiraS4
		usr.overlays-= /obj/susanoSasukecaveira/caveiraS5
		usr.overlays-= /obj/susanoSasukecaveira/caveiraS6
		usr.overlays-= /obj/susanoSasukecaveira/caveiraS7
		usr.overlays-= /obj/susanoSasukecaveira/caveiraS8
		usr.overlays-= /obj/susanoSasukecaveira/caveiraS9
		usr.overlays-= /obj/susanoSasukecaveira/caveiraS10
		usr.overlays-=/obj/ObitoSusanoocompeto/part1
		usr.overlays-=/obj/ObitoSusanoocompeto/part2
		usr.overlays-=/obj/ObitoSusanoocompeto/part3
		usr.overlays-=/obj/ObitoSusanoocompeto/part4
		usr.overlays-=/obj/ObitoSusanoocompeto/part5
		usr.overlays-=/obj/ObitoSusanoocompeto/part6
		usr.overlays-=/obj/ObitoSusanoocompeto/part7
		usr.overlays-=/obj/ObitoSusanoocompeto/part8
		usr.overlays-=/obj/ObitoSusanoocompeto/part9
		usr.overlays-=/obj/ObitoSusanoocompeto/part10
		usr.overlays-=/obj/ObitoSusanoocompeto/part11
		usr.overlays-=/obj/ObitoSusanoocompeto/part12
		usr.overlays-=/obj/ObitoSusanoocompeto/part13
		usr.overlays-=/obj/ObitoSusanoocompeto/part14
		usr.overlays-=/obj/ObitoSusanoocompeto/part15
		usr.overlays-=/obj/ObitoSusanoocompeto/part16
		usr.overlays-=/obj/ObitoSusanoocompeto/part17
		usr.overlays-=/obj/ObitoSusanoocompeto/part18
		usr.overlays-=/obj/ObitoSusanoocompeto/part19
		usr.overlays-=/obj/ObitoSusanoocompeto/part20
		usr.overlays-=/obj/ObitoSusanoocompeto/part21
		usr.overlays-=/obj/ObitoSusanoocompeto/part22
		usr.overlays-=/obj/ObitoSusanoocompeto/part23
		usr.overlays-=/obj/ObitoSusanoocompeto/part24
		usr.overlays-=/obj/ObitoSusanoocompeto/part25
		usr.susanoSasukeon=0
		usr.susanoSasukeon2=0
		usr.susanoSasukeon3=0
		usr.ssnv1=0
		usr.ssnv2=0
		usr.ssnv3=0
		usr.verbs -= new /mob/jutsu/verb/SusanooSasuke2()
		usr.verbs -= new /mob/jutsu/verb/SusanooSasuke3()
		usr.susanoItachion=0
		usr.susanoItachion2=0
		usr.susanoItachion3=0
		usr.verbs -= new /mob/jutsu/verb/SusanooItachi2()
		usr.verbs -= new /mob/jutsu/verb/SusanooItachi3()
		usr.sinv1=0
		usr.sinv2=0
		usr.sinv3=0
		usr.overlays-= /obj/susanoitachicaveira/caveira1
		usr.overlays-= /obj/susanoitachicaveira/caveira2
		usr.overlays-= /obj/susanoitachicaveira/caveira3
		usr.overlays-= /obj/susanoitachicaveira/caveira4
		usr.overlays-= /obj/susanoitachicaveira/caveira5
		usr.overlays-= /obj/susanoitachicaveira/caveira6
		usr.overlays-= /obj/susanoitachicaveira/caveira7
		usr.overlays-= /obj/susanoitachicaveira/caveira8
		usr.overlays-= /obj/susanoitachicaveira/caveira9
		usr.overlays-= /obj/susanooinicia/sus1
		usr.overlays-= /obj/susanooinicia/sus2
		usr.overlays-= /obj/susanooinicia/sus3
		usr.overlays-= /obj/susanoitachipele/pele1
		usr.overlays-= /obj/susanoitachipele/pele2
		usr.overlays-= /obj/susanoitachipele/pele3
		usr.overlays-= /obj/susanoitachipele/pele4
		usr.overlays-= /obj/susanoitachipele/pele5
		usr.overlays-= /obj/susanoitachipele/pele6
		usr.overlays-= /obj/susanoitachipele/pele7
		usr.overlays-= /obj/susanoitachipele/pele8
		usr.overlays-= /obj/susanoitachipele/pele9
		usr.raim=0
		usr.raim2=0
		usr.stop = 0
		usr.dead=0
		usr.resting = 0
		usr.doing = 0
		usr.cdizan=0
		usr.Frozen = 0
		usr.izanagion=0
		usr.Moveing = 0
		usr.doing = 0
		usr.Mountain=0
		usr.AFK=0
		usr.onwater=0
		usr.onpulo=0
		usr.tagset=0
		usr.tai = usr.Mtai
		usr.nin = usr.Mnin
		usr.gen = usr.Mgen
		usr.focusing =0
		usr.shurikenskill=usr.Mshurikenskill
		usr.icon = usr.Oicon
		usr.icon_state = ""
		usr.overlays -= 'Bun.dmi'
		usr.Kshibari = 0
		usr.cast = 0
		usr.overlays -= 'meattank.dmi'
		usr.inspike = 0
		usr.overlays -= 'hakkeshou.dmi'
		usr.overlays -= 'gatsuuga.dmi'
		usr.ingat = 0
		usr.overlays -= 'lotus.dmi'
		usr.gate1 = 0
		usr.overlays -= 'lotus.dmi'
		usr.gate2 = 0
		usr.overlays -= 'lotus.dmi'
		usr.gate3 = 0
		usr.overlays -= 'lotus.dmi'
		usr.gate4 = 0
		usr.overlays -= 'lotus.dmi'
		usr.gate5 = 0
		usr.overlays -= 'lotus.dmi'
		usr.gate6 = 0
		usr.overlays -= 'lotus.dmi'
		usr.gate7 = 0
		usr.overlays -= 'lotus.dmi'
		usr.gate8 = 0
		usr.overlays -= 'Marmor.dmi'
		usr.overlays -= 'mist.dmi'
		usr.Marmor = 0
		usr.overlays -= 'Larmor.dmi'
		usr.Larmor = 0
		usr.overlays -= 'Iarmor.dmi'
		usr.Iarmor = 0
		usr.overlays -= 'BeeArmor.dmi'
		usr.Barmor = 0
		usr.overlays -= 'Farmor.dmi'
		usr.Farmor = 0
		usr.overlays -= 'Zarmor.dmi'
		usr.Zarmor = 0
		usr.SHarmor = 0
		usr.overlays -= 'sharingan.dmi'
		usr.overlays -= 'ModoEremita.dmi'
		usr.overlays -= 'Bun.dmi'
		usr.overlays -= 'Chidori.dmi'
		usr.overlays -= 'Rasengan.dmi'
		usr.overlays -= 'electricity.dmi'
		usr.overlays -= 'byakugan.dmi'
		usr.overlays -= /obj/Sphere
		usr.verbs -= new /mob/hidan/verb/Matar()
		usr.sphere = 0
		usr.Blood = 0
		usr.haveBlood = 0
		usr.Bloodperson=null
		usr.Blood = 0
		usr.overlays -= 'Bloods.dmi'
		usr.jashin = 0
		usr.overlays -= 'Sarmor.dmi'
		usr.Sarmor = 0
		usr.overlays -= 'uzaroo.dmi'
		usr.inbaika = 0
		usr.overlays -= 'MTS.dmi'
		usr.intank = 0
		usr.overlays -= 'Tan.dmi'
		usr.overlays -= 'white.dmi'
		usr.overlays -= 'black.dmi'
		usr.overlays -= 'blue.dmi'
		usr.overlays -= 'red.dmi'
		usr.overlays -= 'yellow.dmi'
		usr.overlays -= 'vamp.dmi'
		usr.overlays -= 'omote.dmi'
		usr.overlays -= 'ura.dmi'
		usr.overlays -= 'karasu.dmi'
		usr.dotono = 0
		usr.screwed=0
		usr.points =0
		usr.verbs -= new /mob/jutsu/verb/SusaatakR()
		usr.finals=0
		usr.inmission=0
		usr.deathforest=0
		usr.inkyuubi=0
		usr.innibi=0
		usr.insanbi=0
		usr.inyonbi=0
		usr.ingobi=0
		usr.inrokubi=0
		usr.insishibi=0
		usr.inhachibi=0
		usr.overlays -='kyuubi.dmi'
		usr.overlays-='sharingan.dmi'
		usr.overlays-='rinnegan.dmi'
		usr.incs=0
		usr.overlays-='cs.dmi'
		usr.overlays-='cs.dmi'
		usr.overlays-='cs.dmi'
		usr.overlays-='cs2.dmi'
		usr.overlays-='cs2.dmi'
		usr.overlays-='cs2.dmi'
		usr.overlays-='cs3.dmi'
		usr.overlays-='cs3.dmi'
		usr.overlays-='cs3.dmi'
		if(usr.killsvillage==0)
			usr.killsvillage=0
		usr.KASS=0
		usr.CSWS=0
		usr.kuroari=0
		usr.karasu=0
		usr.kuroari=0
		usr.Makyoufreeze=0
		usr.kuroariselecionada=0
		usr.karasuselecionada=0
		usr.sanshouoselecionada=0
		usr.controlando=0
		usr.arenafreeze=0
		for(var/obj/objetos/earthscroll/F in usr.contents) del(F)
		for(var/obj/objetos/heavenscroll/F in usr.contents) del(F)
		if(usr.party&&!usr.partydono)
			usr.verbs-= /mob/Party/verb/SairP
			usr.verbs-= /mob/Party/verb/PartyE
			usr.verbs-= /mob/Party/verb/PartyMSG
			for(var/mob/M in world)
				if(M.name == usr.partysensei)
					M.precruits -= 1
					M<<"[usr] deslogou e saiu da sua Party!"
					M.partysensei=""
					M.Equipe=""
		if(usr.partydono)
			usr.verbs-= /mob/Party/verb/SairP
			usr.verbs-= /mob/Party/verb/PartyE
			usr.verbs-= /mob/Party/verb/PartyMSG
			usr.verbs-= /mob/Party/verb/RemoverP
			usr.verbs-= /mob/Party/verb/ConvidarP
			usr.verbs-= /mob/Party/verb/NSenseiP
			usr.verbs-= /mob/Party/verb/ConvidarPG
			for(var/mob/M in world)
				if(M.partysensei == usr.partysensei)
					M.party = 0
					M.partysensei=""
					usr.partydono=0
					M.Equipe=""
					M<<"[usr] deslogou e a Party foi desfeita!"
					M.verbs-= /mob/Party/verb/SairP
					M.verbs-= /mob/Party/verb/PartyE
					M.verbs-= /mob/Party/verb/PartyMSG
					M.verbs-= /mob/Party/verb/RemoverP
					M.verbs-= /mob/Party/verb/ConvidarP
					M.verbs-= /mob/Party/verb/NSenseiP
					M.verbs-= /mob/Party/verb/ConvidarPG
		usr.party=0
		usr.partydono=0
		usr.partysensei=""
		usr.precruits=0
		usr.Equipe=""
		usr.SalvarAgora()
		usr.deslogado=1
		world<<output("<font color = yellow><b>[usr]</b> deslogou do servidor!","output2.sistema")
		..()
		del(usr)


//===============================================================
mob/var/GM=0
obj/mapa
	density = 1
obj/genj
	density = 1
	icon = 'genjsharingan.bmp'
obj/Full4
	density = 1
	layer = MOB_LAYER+10002
	icon= 'log1.png'
obj/Full5
	density = 1
	layer = MOB_LAYER+10002
	icon= 'log2.png'
obj/Full6
	density = 1
	layer = MOB_LAYER+10002
	icon= 'log3.png'
obj/Rinneg
	density = 1
	layer = 10
	icon= 'rinneg.png'


mob/var/escolheuestilo=0
obj/Finished
	density=1
	icon = 'botao.dmi'
	layer = MOB_LAYER+10002
	Click()
		if(usr.villageselected&&usr.baseselected)
			usr.loc=locate(49,14,6)
			usr.cansave=1
			usr.OOC=1
			usr.rank="Estudante"
			usr.bingob="E"
			usr.Idade = rand(5,8)
			usr.client.view=8
			usr.EhVip = 1
			usr.fimdiavip = text2num(time2text(world.realtime,"DD"))
			usr.fimmesvip = text2num(time2text(world.realtime,"MM"))
			usr.fimanovip = text2num(time2text(world.realtime,"YYYY"))
			usr.fimdiavip += 3
			if(usr.fimdiavip>30)
				usr.fimmesvip += 1 ; usr.fimdiavip -= 30
				if(usr.fimmesvip>12)
					usr.fimanovip += 1 ; usr.fimmesvip -= 12
			usr<<output("Você recebeu o VIP promocional de criação até dia [usr.fimdiavip] / [usr.fimmesvip] / [usr.fimanovip]","output2.sistema")
			usr.verbs += new /mob/Vip/verb/Teleporte()
			usr.verbs += new /mob/Vip/verb/VConcentrar()
			usr.verbs += new /mob/Vip/verb/VLiberarChakra()
			usr.verbs += new /mob/Star/verb/StarBarrier()
			usr.verbs += new /mob/star/verb/Aura()
			//usr.ticketlog10 += 1000
			usr.ContadorIdade()
			new/obj/Simbhp/health_01(usr.client)
			new/obj/Simbch/chakrar_01(usr.client)
			new/obj/Simbst/stamina_01(usr.client)
			usr.colocar_hud()
			world<<output("<font color=white><b>>Info<</b><font color=#DAA520> [usr] de <b>[usr.Village]</b> acaba de nascer <b><u></u></b>.<font color=white>([usr.key])</font>","output2.sistema")
			usr.deslogado=0
/*			var/savefile/F=new("players/[usr.key].sav")
			Write(F)*/
			usr.SalvarAgora()
		else
			usr<<"Você precisa escolher sua vila e sua skin!"
			return
obj/Skincolorselect
	density=1
	icon = 'botao.dmi'
	layer = MOB_LAYER+10002
	Click()
		usr.baseselected=0
		switch(input("Qual o seu sexo?", text) in list ("Masculino","Feminino"))
			if("Masculino")
				switch(input("Escolha uma cor de pele", text) in list ("Branco","Moreno","Negro"))
					if("Moreno")
						usr.icon='Base white.dmi'
						usr.Oicon='Base white.dmi'
						usr.baseselected=1
					if("Branco")
						usr.icon='NovaBaseBranca.dmi'
						usr.Oicon='NovaBaseBranca.dmi'
						usr.baseselected=1
					if("Negro")
						usr.icon='BaseBlack.dmi'
						usr.Oicon='BaseBlack.dmi'
						usr.baseselected=1
			if("Feminino")
				switch(input("Escolha uma cor de pele", text) in list ("Branca","Vampiro","Negra"))
					if("Branca")
						usr.icon='Female white.dmi'
						usr.Oicon='Female white.dmi'
						usr.baseselected=1
					if("Vampiro")
						usr.icon='FemaleVamp.dmi'
						usr.Oicon='FemaleVamp.dmi'
						usr.baseselected=1
					if("Negra")
						usr.icon='FemaleBlack.dmi'
						usr.Oicon='FemaleBlack.dmi'
						usr.baseselected=1

mob
	proc
		DeleteChar()
			SaveFile="[src.key]"
			if(fexists("players/[SaveFile].sav"))
				var/sure=alert(src,"Você tem certeza que quer deletar seu personagem?","Confirmation","Não","Sim")
				if(sure=="Sim")
					sleep(10)
					fdel("players/[SaveFile].sav")
					//usr.Apaga_Compra()//
					src << "Personagem deletado."
					/*if(src.donoC)
						Apaga_Compra()*/
				else
					src << "Delete de '[src.key].sav' cancelado"
			else
				src << "Você não tem um personagem salvo nesse servidor."
				src.Choice()
mob/var
	hairselected=0
	eyeselected=0
	villageselected=0
	baseselected=0
	elementoselected=0

obj/Konohaselecionada
	density=1
	icon = 'botao.dmi'
	layer = MOB_LAYER+10002
	Click()
		usr.Village=""
		usr.leafS=0
		usr.mistS=0
		usr.soundS=0
		usr.earthS=0
		usr.sandS=0
		usr.snowS=0
		usr.rainS=0
		usr.grassS=0
		usr.lightningS=0
		usr.snowS=0
		usr.missingS=0
		usr.villageselected=0
		switch(alert("Você tem certeza que quer ser de Konoha (Folha) ?","Konohagakure no Sato","Sim","Não"))
			if("Sim")
				usr.leafS=1
				usr.mistS=0
				usr.soundS=0
				usr.earthS=0
				usr.sandS=0
				usr.rainS=0
				usr.grassS=0
				usr.lightningS=0
				usr.snowS=0
				usr.missingS=0
				usr.villageselected=1
				usr.Village="Konoha"
				usr.waterfallS=0
				usr.loc=locate(10,46,4)

obj/Kiriselecionada
	density=1
	icon = 'botao.dmi'
	layer = MOB_LAYER+10002
	Click()
		usr.Village=""
		usr.leafS=0
		usr.mistS=0
		usr.soundS=0
		usr.earthS=0
		usr.sandS=0
		usr.snowS=0
		usr.rainS=0
		usr.grassS=0
		usr.lightningS=0
		usr.snowS=0
		usr.missingS=0
		usr.villageselected=0
		switch(alert("Você tem certeza que quer ser de Kiri (Névoa) ?","Kirigakure no Sato","Sim","Não"))
			if("Sim")
				usr.leafS=0
				usr.mistS=1
				usr.soundS=0
				usr.earthS=0
				usr.sandS=0
				usr.rainS=0
				usr.grassS=0
				usr.lightningS=0
				usr.snowS=0
				usr.missingS=0
				usr.villageselected=1
				usr.Village="Kiri"
				usr.waterfallS=0
				usr.loc=locate(10,46,4)

obj/Sunaselecionada
	density=1
	icon = 'botao.dmi'
	layer = MOB_LAYER+10002
	Click()
		usr.Village=""
		usr.leafS=0
		usr.mistS=0
		usr.soundS=0
		usr.earthS=0
		usr.sandS=0
		usr.snowS=0
		usr.rainS=0
		usr.grassS=0
		usr.lightningS=0
		usr.snowS=0
		usr.missingS=0
		usr.villageselected=0
		switch(alert("Você tem certeza que quer ser de Suna (Areia) ?","Sunagakure no Sato","Sim","Não"))
			if("Sim")
				usr.leafS=0
				usr.mistS=0
				usr.soundS=0
				usr.earthS=0
				usr.sandS=1
				usr.rainS=0
				usr.grassS=0
				usr.lightningS=0
				usr.snowS=0
				usr.missingS=0
				usr.villageselected=1
				usr.Village="Suna"
				usr.waterfallS=0
				usr.loc=locate(10,46,4)

obj/Kumoselecionada
	density=1
	icon = 'botao.dmi'
	layer = MOB_LAYER+10002
	Click()
		usr.Village=""
		usr.leafS=0
		usr.mistS=0
		usr.soundS=0
		usr.earthS=0
		usr.sandS=0
		usr.snowS=0
		usr.rainS=0
		usr.grassS=0
		usr.lightningS=0
		usr.snowS=0
		usr.missingS=0
		usr.villageselected=0
		switch(alert("Você tem certeza que quer ser de Kumo (Nuvem) ?","Kumogakure no Sato","Sim","Não"))
			if("Sim")
				usr.leafS=0
				usr.mistS=0
				usr.soundS=0
				usr.earthS=0
				usr.sandS=0
				usr.rainS=0
				usr.grassS=0
				usr.lightningS=1
				usr.snowS=0
				usr.missingS=0
				usr.villageselected=1
				usr.Village="Kumo"
				usr.waterfallS=0
				usr.loc=locate(10,46,4)

obj/Iwaselecionada
	density=1
	icon = 'botao.dmi'
	layer = MOB_LAYER+10002
	Click()
		usr.Village=""
		usr.leafS=0
		usr.mistS=0
		usr.soundS=0
		usr.earthS=0
		usr.sandS=0
		usr.snowS=0
		usr.rainS=0
		usr.grassS=0
		usr.lightningS=0
		usr.snowS=0
		usr.missingS=0
		usr.villageselected=0
		switch(alert("Você tem certeza que quer ser de Iwa (Pedra) ?","Iwagakure no Sato","Sim","Não"))
			if("Sim")
				usr.leafS=0
				usr.mistS=0
				usr.soundS=0
				usr.earthS=1
				usr.sandS=0
				usr.rainS=0
				usr.grassS=0
				usr.lightningS=0
				usr.snowS=0
				usr.missingS=0
				usr.villageselected=1
				usr.Village="Iwa"
				usr.waterfallS=0
				usr.loc=locate(10,46,4)

obj/Ameselecionada
	density=1
	icon = 'botao.dmi'
	layer = MOB_LAYER+10002
	Click()
		usr.Village=""
		usr.leafS=0
		usr.mistS=0
		usr.soundS=0
		usr.earthS=0
		usr.sandS=0
		usr.snowS=0
		usr.rainS=0
		usr.grassS=0
		usr.lightningS=0
		usr.snowS=0
		usr.missingS=0
		usr.villageselected=0
		switch(alert("Você tem certeza que quer ser de Ame (Chuva) ?","Amegakure no Sato","Sim","Não"))
			if("Sim")
				usr.leafS=0
				usr.mistS=0
				usr.soundS=0
				usr.earthS=0
				usr.sandS=0
				usr.rainS=1
				usr.grassS=0
				usr.lightningS=0
				usr.snowS=0
				usr.missingS=0
				usr.villageselected=1
				usr.Village="Ame"
				usr.waterfallS=0
				usr.loc=locate(10,46,4)

obj/Otoselecionada
	density=1
	icon = 'botao.dmi'
	layer = MOB_LAYER+10002
	Click()
		usr.Village=""
		usr.leafS=0
		usr.mistS=0
		usr.soundS=0
		usr.earthS=0
		usr.sandS=0
		usr.snowS=0
		usr.rainS=0
		usr.grassS=0
		usr.lightningS=0
		usr.snowS=0
		usr.missingS=0
		usr.villageselected=0
		switch(alert("Você tem certeza que quer ser de Oto (Som) ?","Otogakure no Sato","Sim","Não"))
			if("Sim")
				usr.leafS=0
				usr.mistS=0
				usr.soundS=0
				usr.earthS=0
				usr.sandS=0
				usr.rainS=1
				usr.grassS=0
				usr.lightningS=0
				usr.snowS=0
				usr.missingS=0
				usr.villageselected=1
				usr.Village="Oto"
				usr.waterfallS=0
				usr.loc=locate(10,46,4)

obj/Otoselecionada
	density=1
	icon = 'botao.dmi'
	layer = MOB_LAYER+10002
	Click()
		usr.Village=""
		usr.leafS=0
		usr.mistS=0
		usr.soundS=0
		usr.earthS=0
		usr.sandS=0
		usr.snowS=0
		usr.rainS=0
		usr.grassS=0
		usr.lightningS=0
		usr.snowS=0
		usr.missingS=0
		usr.villageselected=0
		switch(alert("Você tem certeza que quer ser de Oto (Som) ?","Otogakure no Sato","Sim","Não"))
			if("Sim")
				usr.leafS=0
				usr.mistS=0
				usr.soundS=0
				usr.earthS=0
				usr.sandS=0
				usr.rainS=0
				usr.grassS=0
				usr.lightningS=0
				usr.snowS=1
				usr.missingS=0
				usr.villageselected=1
				usr.Village="Oto"
				usr.waterfallS=0
				usr.loc=locate(10,46,4)

obj/Samuiselecionada
	density=1
	icon = 'botao.dmi'
	layer = 100
	Click()
		usr.Village=""
		usr.leafS=0
		usr.mistS=0
		usr.soundS=0
		usr.earthS=0
		usr.sandS=0
		usr.snowS=0
		usr.rainS=0
		usr.grassS=0
		usr.lightningS=0
		usr.snowS=0
		usr.missingS=0
		usr.villageselected=0
		switch(alert("Você tem certeza que quer ser de Tetsu no Kuni (Pais do Ferro) ?","Tetsu no Kuni","Sim","Não"))
			if("Sim")
				usr.leafS=0
				usr.mistS=0
				usr.soundS=0
				usr.earthS=0
				usr.sandS=0
				usr.rainS=0
				usr.grassS=0
				usr.lightningS=0
				usr.snowS=1
				usr.missingS=0
				usr.villageselected=1
				usr.Village="Tetsu"
				usr.waterfallS=0
				usr.loc=locate(10,46,4)

obj/Villageselect
	density=1
	icon = 'botao.dmi'
	layer = 100
	Click()
		usr.Village=""
		usr.leafS=0
		usr.mistS=0
		usr.soundS=0
		usr.earthS=0
		usr.sandS=0
		usr.snowS=0
		usr.rainS=0
		usr.grassS=0
		usr.lightningS=0
		usr.snowS=0
		usr.missingS=0
		usr.villageselected=0
		switch(input("De qual vila você quer ser?", text) in list ("Konoha (folha)","Suna (areia)","Ame (chuva)","Kumo (nuvem)","Kiri (névoa)","Iwa (pedra)"))
			if("Konoha (folha)")
				usr.leafS=1
				usr.mistS=0
				usr.soundS=0
				usr.earthS=0
				usr.sandS=0
				usr.rainS=0
				usr.grassS=0
				usr.lightningS=0
				usr.snowS=0
				usr.missingS=0
				usr.villageselected=1
				usr.Village="Konoha"
				usr.waterfallS=0
			if("Suna (areia)")
				usr.leafS=0
				usr.mistS=0
				usr.sandS=1
				usr.soundS=0
				usr.earthS=0
				usr.waterfallS=0
				usr.rainS=0
				usr.grassS=0
				usr.lightningS=0
				usr.snowS=0
				usr.missingS=0
				usr.villageselected=1
				usr.Village="Suna"
			if("Ame (chuva)")
				usr.leafS=0
				usr.mistS=0
				usr.soundS=0
				usr.sandS=0
				usr.earthS=0
				usr.rainS=1
				usr.waterfallS=0
				usr.grassS=0
				usr.lightningS=0
				usr.snowS=0
				usr.missingS=0
				usr.villageselected=1
				usr.Village="Ame"
			if("Iwa (pedra)")
				usr.leafS=0
				usr.mistS=0
				usr.soundS=0
				usr.sandS=0
				usr.earthS=1
				usr.rainS=0
				usr.waterfallS=0
				usr.grassS=0
				usr.lightningS=0
				usr.snowS=0
				usr.missingS=0
				usr.villageselected=1
				usr.Village="Iwa"
			if("Kumo (nuvem)")
				usr.leafS=0
				usr.mistS=0
				usr.soundS=0
				usr.earthS=0
				usr.sandS=0
				usr.rainS=0
				usr.waterfallS=0
				usr.grassS=0
				usr.lightningS=1
				usr.snowS=0
				usr.missingS=0
				usr.villageselected=1
				usr.Village="Kumo"
			if("Kiri (névoa)")
				usr.leafS=0
				usr.mistS=1
				usr.sandS=0
				usr.soundS=0
				usr.earthS=0
				usr.rainS=0
				usr.grassS=0
				usr.waterfallS=0
				usr.lightningS=0
				usr.snowS=0
				usr.missingS=0
				usr.villageselected=1
				usr.Village="Kiri"

obj/Hairselect
	density=1
	icon = 'botao.dmi'
	layer = MOB_LAYER+10002
	Click()
		usr.overlays=null
		usr.hairselected=0
		switch(input("Masculino or Female?", text)in list ("Masculino","Feminino"))
			if("Masculino")
				switch(input("De qual estilo de cabelo você gosta?", text) in list ("Naruto","Sasuke","Gaara","Kakashi","Kabuto","Rock Lee","Itachi","Neiji","Kimimaro","Yondaime","Orochimaru","Jiraiya","Careca"))
					if("Jiraiya")
						usr.hair = "Jiraiya"
						var/hairred = input("Quanto vermelho você gostaria no seu cabelo?") as num
						var/hairblue = input("Quanto azul você gostaria no seu cabelo?") as num
						var/hairgreen = input("Quanto verde você gostaria no seu cabelo?") as num
						var/hairover = 'jiraiyaH.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Kabuto")
						usr.hair = "Kabuto"
						var/hairred = input("Quanto vermelho você gostaria no seu cabelo?") as num
						var/hairblue = input("Quanto azul você gostaria no seu cabelo?") as num
						var/hairgreen = input("Quanto verde você gostaria no seu cabelo?") as num
						var/hairover = 'KabutoH.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Orochimaru")
						usr.hair = "Orochimaru"
						var/hairred = input("Quanto vermelho você gostaria no seu cabelo?") as num
						var/hairblue = input("Quanto azul você gostaria no seu cabelo?") as num
						var/hairgreen = input("Quanto verde você gostaria no seu cabelo?") as num
						var/hairover = 'OrochimaruH.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Kimimaro")
						usr.hair = "Kimimaro"
						var/hairred = input("Quanto vermelho você gostaria no seu cabelo?") as num
						var/hairblue = input("Quanto azul você gostaria no seu cabelo?") as num
						var/hairgreen = input("Quanto verde você gostaria no seu cabelo?") as num
						var/hairover = 'KimimaroH.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Yondaime")
						usr.hair = "Yondaime"
						var/hairred = input("Quanto vermelho você gostaria no seu cabelo?") as num
						var/hairblue = input("Quanto azul você gostaria no seu cabelo?") as num
						var/hairgreen = input("Quanto verde você gostaria no seu cabelo?") as num
						var/hairover = 'hair4.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Careca")
						usr.hair = "Careca"
						usr.hairselected=1
					if("Naruto")
						usr.hair = "Naruto"
						var/hairred = input("Quanto vermelho você gostaria no seu cabelo?") as num
						var/hairblue = input("Quanto azul você gostaria no seu cabelo?") as num
						var/hairgreen = input("Quanto verde você gostaria no seu cabelo?") as num
						var/hairover = 'Hair Naruto.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Neiji")
						usr.hair = "Neiji"
						var/hairred = input("Quanto vermelho você gostaria no seu cabelo?") as num
						var/hairblue = input("Quanto azul você gostaria no seu cabelo?") as num
						var/hairgreen = input("Quanto verde você gostaria no seu cabelo?") as num
						var/hairover = 'hair5.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Itachi")
						usr.hair = "Itachi"
						var/hairred = input("Quanto vermelho você gostaria no seu cabelo?") as num
						var/hairblue = input("Quanto azul você gostaria no seu cabelo?") as num
						var/hairgreen = input("Quanto verde você gostaria no seu cabelo?") as num
						var/hairover = 'Hair Itachi.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Gaara")
						usr.hair = "Gaara"
						var/hairred = input("Quanto vermelho você gostaria no seu cabelo?") as num
						var/hairblue = input("Quanto azul você gostaria no seu cabelo?") as num
						var/hairgreen = input("Quanto verde você gostaria no seu cabelo?") as num
						var/hairover = 'hair20.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Kakashi")
						usr.hair = "Kakashi"
						var/hairred = input("Quanto vermelho você gostaria no seu cabelo?") as num
						var/hairblue = input("Quanto azul você gostaria no seu cabelo?") as num
						var/hairgreen = input("Quanto verde você gostaria no seu cabelo?") as num
						var/hairover = 'hair11.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Sasuke")
						usr.hair = "Sasuke Classico Hair"
						var/hairred = input("Quanto vermelho você gostaria no seu cabelo?") as num
						var/hairblue = input("Quanto azul você gostaria no seu cabelo?") as num
						var/hairgreen = input("Quanto verde você gostaria no seu cabelo?") as num
						var/hairover = 'Hair Sasuke Classico.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Rock Lee")
						usr.hair = "Lee Hair"
						var/hairred = input("Quanto vermelho você gostaria no seu cabelo?") as num
						var/hairblue = input("Quanto azul você gostaria no seu cabelo?") as num
						var/hairgreen = input("Quanto verde você gostaria no seu cabelo?") as num
						var/hairover = 'hair15.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1

			if("Feminino")
				switch(input("De qual estilo de cabelo você gosta?", text) in list ("Sakura","Hinata","Ino","Careca"))
					if("Sakura")
						usr.hair = "Sakura Hair"
						var/hairred = input("Quanto vermelho você gostaria no seu cabelo?") as num
						var/hairblue = input("Quanto azul você gostaria no seu cabelo?") as num
						var/hairgreen = input("Quanto verde você gostaria no seu cabelo?") as num
						var/hairover = 'SakuraH.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Ino")
						usr.hair = "Ino"
						var/hairred = input("Quanto vermelho você gostaria no seu cabelo?") as num
						var/hairblue = input("Quanto azul você gostaria no seu cabelo?") as num
						var/hairgreen = input("Quanto verde você gostaria no seu cabelo?") as num
						var/hairover = 'inoH.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Hinata")
						usr.hair = "Hinata"
						var/hairred = input("Quanto vermelho você gostaria no seu cabelo?") as num
						var/hairblue = input("Quanto azul você gostaria no seu cabelo?") as num
						var/hairgreen = input("Quanto verde você gostaria no seu cabelo?") as num
						var/hairover = 'Hinata Hair.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Careca")
						usr.hair = "Careca"
						usr.hairselected=1

		switch(input("Escolha a cor dos seus olhos", text) in list ("Ok"))
			if("Ok")
				usr.eye = "Eyes"
				var/eyered = input("Quanto vermelho você gostaria no seu olho?") as num
				var/eyeblue = input("Quanto azul você gostaria no seu olho?") as num
				var/eyegreen = input("Quanto verde você gostaria no seu olho?") as num
				var/eyeover = 'eyes.dmi'
				eyeover += rgb(eyered,eyegreen,eyeblue)
				usr.reye = eyered
				usr.geye = eyegreen
				usr.beye = eyeblue
				usr.Oeye = eyeover
				usr.eye = usr.Oeye
				usr.overlays += usr.eye
				usr.eyeselected=1

obj/Uzumaki
	density = 1
	icon = 'botao.dmi'
	layer = MOB_LAYER+10002
	Click()
		if(usr.clany)
			return
		switch(input("Você tem certeza que deseja ser Uzumaki?", "Uzumaki") in list ("Não","Não","Sim","Não","Não"))
			if("Sim")
				if(usr.clany)return
				usr.clany = 1
				usr<<"Agora você é um especialista em Clones!"
				usr.name="Uzumaki [usr]"
				usr.NonClan=0
				usr.Realplayer = 1
				usr.human = 1
				usr.Elementos=1
				usr.Elemento="Fuuton"
				usr.Fuuton=1
				usr.Clan = "Uzumaki"
				usr.Inuzuka=0
				usr.Gaaraclan=0
				usr.Kaguya=0
				usr.Hyuuga=0
				usr.Nara=0
				usr.Medical=0
				usr.Uchiha=0
				usr.Aburame=0
				usr.Akimichi = 0
				usr.Kamizuri=0
				usr.Tenten=0
				usr.Uzumaki=1
				usr.CS=0
				usr.bit=0
				usr.Kyuubi=0
				usr.medicmen=0
				usr.mariomen=0
				usr.taijmen=0
				usr.genjmen=0
				usr.armamen=0
				usr.Temari=0
				//usr.loc = locate(16,81,4)
				usr.loc = locate(63,75,4)
			if("Não")
				if(usr.clany)return
				usr.clany = 0
				return


obj/LOGINN
	density = 1
	icon = 'botao.dmi'
	layer = MOB_LAYER+10003
	//Click()
	//	usr.Choice()


obj/Yamanaka
	density = 1
	icon = 'botao.dmi'
	layer = MOB_LAYER+10002
	Click()
		if(usr.clany)
			return
		switch(input("Quer ser do clan Yamanaka?", "Yamanaka") in list ("Não","Não","Sim","Não","Não"))
			if("Sim")
				if(usr.clany)return
				usr.clany = 1
				usr<<"Agora você é do clan Yamanaka!"
				usr.name="Yamanaka [usr]"
				usr.NonClan=0
				usr.Realplayer = 1
				usr.human = 1
				usr.Clan = "Yamanaka"
				usr.Inuzuka=0
				usr.Gaaraclan=0
				usr.Kaguya=0
				usr.Hyuuga=0
				usr.Nara=0
				usr.Medical=0
				usr.Uchiha=0
				usr.Aburame=0
				usr.Akimichi = 0
				usr.Kamizuri=0
				usr.Tenten=0
				usr.Uzumaki=0
				usr.Yamanaka=1
				usr.CS=0
				usr.bit=0
				usr.Kyuubi=0
				usr.medicmen=0
				usr.mariomen=0
				usr.taijmen=0
				usr.genjmen=0
				usr.armamen=0
				usr.Temari=0
				//usr.loc = locate(16,81,4)
				usr.loc = locate(63,75,4)
			if("Não")
				if(usr.clany)return
				usr.clany = 0
				return


obj/Senju
	density = 1
	icon = 'botao.dmi'
	layer = MOB_LAYER+10002
	Click()
		if(usr.clany)
			return
		switch(input("Você tem certeza que deseja ser Senju?", "Senju") in list ("Não","Não","Sim","Não","Não"))
			if("Sim")
				if(usr.clany)return
				usr.clany = 1
				usr<<"Agora você controla o elemento mokuton!"
				usr.name="Senju [usr]"
				usr.NonClan=0
				usr.Realplayer = 1
				usr.human = 1
				usr.Elementos=1
				usr.Elementos2=1
				usr.Elemento="Doton"
				usr.Elemento2="Suiton"
				usr.Doton=1
				usr.Suiton=1
				usr.Clan = "Senju"
				usr.Inuzuka=0
				usr.Gaaraclan=0
				usr.Kaguya=0
				usr.Hyuuga=0
				usr.Nara=0
				usr.Medical=0
				usr.Uchiha=0
				usr.Aburame=0
				usr.Akimichi = 0
				usr.Kamizuri=0
				usr.Tenten=0
				usr.Uzumaki=0
				usr.Shodaime=1
				usr.CS=0
				usr.bit=0
				usr.Kyuubi=0
				usr.medicmen=0
				usr.mariomen=0
				usr.taijmen=0
				usr.genjmen=0
				usr.armamen=0
				usr.Temari=0
				//usr.loc = locate(16,81,4)
				usr.loc = locate(63,75,4)
			if("Não")
				if(usr.clany)return
				usr.clany = 0
				return

obj/Inuzuka
	density = 1
	icon = 'botao.dmi'
	layer = MOB_LAYER+10002
	Click()
		if(usr.clany)
			return
		switch(input("Você tem certeza que deseja ser um Inuzuka?", "Inuzuka") in list ("Não","Não","Sim","Não","Não"))
			if("Sim")
				if(usr.clany)return
				usr.clany = 1
				usr<<"Agora você pertence ao clã Inuzuka!"
				usr.name="Inuzuka [usr]"
				usr.NonClan=0
				usr.Realplayer = 1
				usr.human = 1
				usr.Clan = "Inuzuka"
				usr.Inuzuka=1
				usr.Gaaraclan=0
				usr.Kaguya=0
				usr.Hyuuga=0
				usr.Nara=0
				usr.Medical=0
				usr.Uchiha=0
				usr.Aburame=0
				usr.Akimichi = 0
				usr.Kamizuri=0
				usr.Tenten=0
				usr.Uzumaki=0
				usr.Shodaime=0
				usr.CS=0
				usr.bit=0
				usr.Kyuubi=0
				usr.medicmen=0
				usr.mariomen=0
				usr.taijmen=0
				usr.genjmen=0
				usr.armamen=0
				usr.Temari=0
				var/list/L
				L = list("font size","big","small")
				var/list/T
				T = list("¬","¹","²","³","£","¢","°","ª","º")
				var/Petnome=null
				var/config = "065-090&097-122&095&032"
				while(!asciifilter(Petnome,config)||Petnome == null)Petnome = input("Escolha um Nome para seu Animal","Nome do Animal",) as text
				if(length(Petnome) < 2)
					alert("O nome do seu Animal precisa ter mais de 2 caracteres!")
					del(usr)
				if(length(Petnome) > 20)
					alert("O nome do seu Animal não pode conter mais que 20 caracteres!")
					del(usr)
				for(var/X in L)
					if(findtext(Petnome,X))
						alert("Você não pode alterar o tamanho do nome!")
						return
				for(var/X in T)
					if(findtext(Petnome,X))
						alert("Você não pode usar esses caracteres!")
						return
				usr.Petname="[html_encode(Petnome)]"
				usr.loc = locate(63,75,4)
			if("Não")
				if(usr.clany)return
				usr.clany = 0
				return

obj/SEMCLAN
	density = 1
	icon = 'botao.dmi'
	layer = 100
	Click()
		if(usr.clany)
			return
		switch(input("Quer ser um indivíduo sem clan?") in list ("Não","Não","Sim","Não","Não"))
			if("Sim")
				if(usr.clany)return
				usr.clany = 1
				usr<<"Agora você não possui clan, por isso pode escolher que tipo de shinobi vc será!"
				usr.NonClan=0
				usr.Realplayer = 1
				usr.human = 1
				usr.Clan = "Sem Clan"
				usr.Inuzuka=0
				usr.pain=0
				usr.Gaaraclan=0
				usr.Kaguya=0
				usr.Hyuuga=0
				usr.Nara=0
				usr.Medical=0
				usr.Uchiha=0
				usr.Aburame=0
				usr.Akimichi = 0
				usr.Kamizuri=0
				usr.Tenten=0
				usr.Uzumaki=0
				usr.Yamanaka=0
				usr.Nc=1
				usr.CS=0
				usr.bit=0
				usr.Kyuubi=0
				usr.medicmen=0
				usr.mariomen=0
				usr.taijmen=0
				usr.genjmen=0
				usr.armamen=0
				usr.Temari=0
				//usr.loc = locate(16,81,4)
				usr.loc = locate(63,75,4)
			if("Não")
				if(usr.clany)return
				usr.clany = 0
				return

mov
	var
		Hatake = 0
obj/clans/Hatake
	density = 1
	icon = 'botao.dmi'
	layer = 100
	Click()
		if(usr.clany)
			return
		switch(input("Você tem certeza que deseja ser Hatake?", "Hatake") in list ("Sim","Não"))
			if("Sim")
				if(usr.clany)return
				usr.clany = 1
				usr<<"Agora você tem a nobre linhagem dos Hatake!"
				usr.name="Hatake [usr]"
				usr.Hatake=1
				usr.Realplayer = 1
				usr.human = 1
				usr.Clan = "Hatake"
				usr.Akimichi=0
				usr.Uzumaki=0
				usr.Inuzuka=0
				usr.Gaaraclan=0
				usr.Kamizuri=0
				usr.Kaguya=0
				usr.Hyuuga=0
				usr.chosen = 1
				usr.Nidaime = 0
				usr.Nara=0
				usr.NonClan=0
				usr.Uchiha=0
				usr.Aburame=0
				usr.Sandaime = 0
				usr.Spiderclan=0
				usr.Temari=0
				usr.Tenten=0
				usr.Orochimaru=0
				usr.Shodaime = 0
				usr.Haku=0
				usr.Jiraya=0
				usr.medicmen=0
				usr.mariomen=0
				usr.taijmen=0
				usr.genjmen=0
				usr.armamen=0
				usr.Temari=0
				usr.overlays += 'Hatake Born.dmi'
				//usr.loc = locate(16,81,4)
				usr.loc = locate(63,75,4)
			if("Não")
				if(usr.clany)return
				usr.clany = 0
				return

turf/clans/Shodaime
	density = 1
	Click()
		if(usr.clany)
			return
		switch(input("Você quer ser do clan Senju?","Senju") in list ("Sim","Não"))
			if("Sim")
				if(usr.clany)return
				usr.clany = 1
				usr<<"Agora você tem o poder de controlar o elemento madeira!"
				usr.NonClan=0
				usr.name="Senju [usr]"
				usr.Realplayer = 1
				usr.human = 0
				usr.Jiraya = 0
				usr.Temari = 0
				usr.Clan = "Senju"
				usr.Inuzuka=0
				usr.Gaaraclan=0
				usr.Kaguya=0
				usr.Hyuuga=0
				usr.Nara=0
				usr.Medical=0
				usr.Uchiha=0
				usr.Aburame=0
				usr.Akimichi = 0
				usr.Kamizuri=0
				usr.Tenten=0
				usr.Nidaime = 0
				usr.Uzumaki=0
				usr.Sandaime = 0
				usr.Shodaime = 1
				usr.Orochimaru = 0
				usr.medicmen=0
				usr.mariomen=0
				usr.taijmen=0
				usr.genjmen=0
				usr.armamen=0
				usr.Temari=0
				//usr.loc = locate(16,81,4)
				usr.loc = locate(63,75,4)
			if("Não")
				if(usr.clany)return
				usr.clany = 0
				return

obj/Gaara
	density=1
	icon = 'botao.dmi'
	layer = MOB_LAYER+10002
	Click()
		if(usr.clany)
			return
		switch(input("Você tem certeza que deseja ser Gaara?", "Gaara") in list ("Não","Não","Sim","Não","Não"))
			if("Sim")
				if(usr.clany)return
				usr.clany = 1
				usr<<"Você pode manipular a areia!"
				usr.name="Sabaku no [usr]"
				usr.Gaaraclan=1
				usr.Elementos=1
				usr.Elementos2=1
				usr.Elemento="Doton"
				usr.Elemento2="Fuuton"
				usr.Fuuton=1
				usr.Doton=1
				usr.Realplayer = 1
				usr.human = 1
				usr.Clan = "Gaara"
				usr.Inuzuka=0
				usr.Kaguya=0
				usr.Medical=0
				usr.Hyuuga=0
				usr.Nara=0
				usr.NonClan=0
				usr.Uchiha=0
				usr.Aburame=0
				usr.Akimichi = 0
				usr.Kamizuri=0
				usr.Tenten=0
				usr.Uzumaki=0
				usr.CS=0
				usr.bit=0
				usr.Kyuubi=0
				usr.Ichibi=0
				usr.medicmen=0
				usr.mariomen=0
				usr.taijmen=0
				usr.genjmen=0
				usr.armamen=0
				usr.Temari=0
				var/obj/Gourd/B = new/obj/Gourd
				B.loc = usr
				//usr.loc = locate(16,81,4)
				usr.loc = locate(63,75,4)
			if("Não")
				if(usr.clany)return
				usr.clany=0
				return

obj/Temari
	density=1
	icon = 'botao.dmi'
	layer = MOB_LAYER+10002
	Click()
		if(usr.clany)
			return
		switch(input("Você tem certeza que deseja ser Temari?", "Temari") in list ("Não","Não","Sim","Não","Não"))
			if("Sim")
				if(usr.clany)return
				usr.clany = 1
				usr<<"Você pertence ao Clã Temari!"
				usr.name="[usr]"
				usr.Temari=1
				usr.Elementos=1
				usr.Elemento="Fuuton"
				usr.Fuuton=1
				usr.Realplayer = 1
				usr.human = 1
				usr.Clan = "Temari"
				usr.Inuzuka=0
				usr.Kaguya=0
				usr.Medical=0
				usr.Hyuuga=0
				usr.Nara=0
				usr.NonClan=0
				usr.Uchiha=0
				usr.Aburame=0
				usr.Akimichi = 0
				usr.Kamizuri=0
				usr.Tenten=0
				usr.Uzumaki=0
				usr.Gaaraclan=0
				usr.CS=0
				usr.bit=0
				usr.Kyuubi=0
				usr.Ichibi=0
				usr.medicmen=0
				usr.mariomen=0
				usr.taijmen=0
				usr.genjmen=0
				usr.armamen=0
				var/obj/Fan/B = new/obj/Fan
				B.loc = usr
				//usr.loc = locate(16,81,4)
				usr.loc = locate(63,75,4)
			if("Não")
				if(usr.clany)return
				usr.clany=0
				return

obj/Uchiha
	density = 1
	icon = 'botao.dmi'
	layer = MOB_LAYER+10002
	Click()
		if(usr.clany)
			return
		switch(input("Você tem certeza que deseja ser Uchiha?", "Uchiha") in list ("Não","Não","Sim","Não","Não"))
			if("Sim")
				if(usr.clany)return
				usr.clany = 1
				usr<<"Você pertence àgora ao lendário Clã Uchiha!"
				usr.name="Uchiha [usr]"
				usr.Uchiha=1
				usr.Realplayer = 1
				usr.Elementos=1
				usr.Elementos2=0
				usr.Elemento="Katon"
				usr.Elemento2=""
				usr.Katon=1
				usr.Raiton=0
				usr.human = 1
				usr.Clan = "Uchiha"
				usr.Inuzuka=0
				usr.chosen = 1
				usr.Gaaraclan=0
				usr.Kaguya=0
				usr.Hyuuga=0
				usr.Kamizuri=0
				usr.Nara=0
				usr.NonClan=0
				usr.Aburame=0
				usr.Akimichi = 0
				usr.Tenten=0
				usr.Uzumaki=0
				usr.medicmen=0
				usr.mariomen=0
				usr.taijmen=0
				usr.genjmen=0
				usr.Temari=0
				//usr.loc = locate(16,81,4)
				switch(input("Qual tipo de Sharingan você deseja ter?", text) in list ("Obito","Sasuke","Itachi","Shisui","Madara"))
					if("Obito")
						usr.msobito=1
						usr.msshisui=0
						usr.mssasuke=0
						usr.msitachi=0
						usr.msmadara=0
						usr.MSP=1
						usr<<"Suas futuras técnicas serão parecidas com as do Sharingan do Obito"
					if("Shisui")
						usr.msobito=0
						usr.mssasuke=0
						usr.msitachi=0
						usr.msmadara=0
						usr.msshisui=1
						usr.MSP=1
						usr<<"Suas futuras técnicas serão parecidas com as do Sharingan do Shisui"
						var/obj/Tanto/T = new/obj/Tanto
						T.loc = usr
					if("Madara")
						usr.msobito=0
						usr.msshisui=0
						usr.mssasuke=0
						usr.msitachi=0
						usr.MSP=1
						usr.msmadara=1
						usr<<"Suas futuras técnicas serão parecidas com as do Sharingan do Madara"
						var/obj/EscudoMadara/E = new/obj/EscudoMadara
						E.loc = usr
					if("Sasuke")
						usr.mssasuke=1
						usr.msshisui=0
						usr.msobito=0
						usr.msitachi=0
						usr.msmadara=0
						usr.MSP=1
						usr.Elementos2=1
						usr.Elemento2="Raiton"
						usr.Raiton=1
						usr<<"Suas futuras técnicas serão parecidas com as do Sharingan do Sasuke"
					if("Itachi")
						usr.msitachi=1
						usr.msobito=0
						usr.mssasuke=0
						usr.msshisui=0
						usr.msmadara=0
						usr.MSP=1
						usr<<"Suas futuras técnicas serão parecidas com as do Sharingan do Itachi"
				usr.loc = locate(63,75,4)
			if("Não")
				if(usr.clany)return
				usr.clany = 0
				return

obj/Iryonin
	density = 1
	icon = 'botao.dmi'
	layer = MOB_LAYER+10002
	Click()
		if(usr.clany)
			return
		switch(input("Você tem certeza que deseja ser um Ninja Médico?", "Iryonin") in list ("Não","Não","Sim","Não","Não"))
			if("Sim")
				if(usr.clany)return
				usr.clany = 1
				usr<<"Você agora é um Ninja Médico!"
				usr.name="[usr]"
				usr.Uchiha=0
				usr.medicmen=1
				usr.Realplayer = 1
				usr.human = 1
				usr.Clan = "Iryonin"
				usr.Inuzuka=0
				usr.chosen = 1
				usr.Gaaraclan=0
				usr.Kaguya=0
				usr.Hyuuga=0
				usr.Kamizuri=0
				usr.Nara=0
				usr.NonClan=0
				usr.Aburame=0
				usr.Akimichi = 0
				usr.Tenten=0
				usr.Uzumaki=0
				usr.mariomen=0
				usr.taijmen=0
				usr.genjmen=0
				usr.armamen=0
				usr.Temari=0
				//usr.loc = locate(16,81,4)
				usr.loc = locate(63,75,4)
			if("Não")
				if(usr.clany)return
				usr.clany = 0
				return

obj/Usuario_de_Marionetes
	density = 1
	icon = 'botao.dmi'
	layer = MOB_LAYER+10002
	Click()
		if(usr.clany)
			return
		switch(input("Você tem certeza que deseja ser um Usuário de Marionetes?", "Usuário de Marionetes") in list ("Não","Não","Sim","Não","Não"))
			if("Sim")
				if(usr.clany)return
				usr.clany = 1
				usr<<"Você agora é um Usuário de Marionetes!"
				usr.name="[usr]"
				usr.Uchiha=0
				usr.mariomen=1
				usr.Realplayer = 1
				usr.human = 1
				usr.Clan = "Usuario de Marionetes"
				usr.Inuzuka=0
				usr.chosen = 1
				usr.Gaaraclan=0
				usr.Kaguya=0
				usr.Hyuuga=0
				usr.Kamizuri=0
				usr.Nara=0
				usr.NonClan=0
				usr.Aburame=0
				usr.Akimichi = 0
				usr.Tenten=0
				usr.Uzumaki=0
				usr.medicmen=0
				usr.taijmen=0
				usr.genjmen=0
				usr.armamen=0
				usr.Temari=0
				//usr.loc = locate(16,81,4)
				usr.loc = locate(63,75,4)
			if("Não")
				if(usr.clany)return
				usr.clany = 0
				return

obj/Usuario_de_Taijutsu
	density = 1
	icon = 'botao.dmi'
	layer = MOB_LAYER+10002
	Click()
		if(usr.clany)
			return
		switch(input("Você tem certeza que deseja ser um Usuário de Taijutsu?", "Usuário de Taijustu") in list ("Não","Não","Sim","Não","Não"))
			if("Sim")
				if(usr.clany)return
				usr.clany = 1
				usr<<"Você agora é um Usuário de Taijutsu!"
				usr.name="[usr]"
				usr.Uchiha=0
				usr.taijmen=1
				usr.Realplayer = 1
				usr.human = 1
				usr.Clan = "Usuario de Taijutsu"
				usr.Inuzuka=0
				usr.chosen = 1
				usr.Gaaraclan=0
				usr.Kaguya=0
				usr.Hyuuga=0
				usr.Kamizuri=0
				usr.Nara=0
				usr.NonClan=0
				usr.Aburame=0
				usr.Akimichi = 0
				usr.Tenten=0
				usr.Uzumaki=0
				usr.medicmen=0
				usr.mariomen=0
				usr.genjmen=0
				usr.armamen=0
				usr.Temari=0
				//usr.loc = locate(16,81,4)
				usr.loc = locate(63,75,4)
			if("Não")
				if(usr.clany)return
				usr.clany = 0
				return

obj/Usuario_de_Genjutsu
	density = 1
	icon = 'botao.dmi'
	layer = MOB_LAYER+10002
	Click()
		if(usr.clany)
			return
		switch(input("Você tem certeza que deseja ser um Usuário de Genjutsu?", "Usuário de Genjutsu") in list ("Não","Não","Sim","Não","Não"))
			if("Sim")
				if(usr.clany)return
				usr.clany = 1
				usr<<"Você agora é um Usuário de Genjutsu!"
				usr.name="[usr]"
				usr.Uchiha=0
				usr.genjmen=1
				usr.Realplayer = 1
				usr.human = 1
				usr.Clan = "Usuario de Genjutsu"
				usr.Inuzuka=0
				usr.chosen = 1
				usr.Gaaraclan=0
				usr.Kaguya=0
				usr.Hyuuga=0
				usr.Kamizuri=0
				usr.Nara=0
				usr.NonClan=0
				usr.Aburame=0
				usr.Akimichi = 0
				usr.Tenten=0
				usr.Uzumaki=0
				usr.medicmen=0
				usr.mariomen=0
				usr.taijmen=0
				usr.armamen=0
				usr.Temari=0
				//usr.loc = locate(16,81,4)
				usr.loc = locate(63,75,4)
			if("Não")
				if(usr.clany)return
				usr.clany = 0
				return

obj/Usuario_de_Armas
	density = 1
	icon = 'botao.dmi'
	layer = MOB_LAYER+10002
	Click()
		if(usr.clany)
			return
		switch(input("Você tem certeza que deseja ser um Usuário de Armas?", "Usuário de Armas") in list ("Não","Não","Sim","Não","Não"))
			if("Sim")
				if(usr.clany)return
				usr.clany = 1
				usr<<"Você agora é um Usuário de Armas!"
				usr.name="[usr]"
				usr.Uchiha=0
				usr.armamen=1
				usr.Realplayer = 1
				usr.human = 1
				usr.Clan = "Usuario de Armas"
				usr.Inuzuka=0
				usr.chosen = 1
				usr.Gaaraclan=0
				usr.Kaguya=0
				usr.Hyuuga=0
				usr.Kamizuri=0
				usr.Nara=0
				usr.NonClan=0
				usr.Aburame=0
				usr.Akimichi = 0
				usr.Tenten=0
				usr.Uzumaki=0
				usr.medicmen=0
				usr.mariomen=0
				usr.taijmen=0
				usr.Temari=0
				//usr.loc = locate(16,81,4)
				usr.loc = locate(63,75,4)
			if("Não")
				if(usr.clany)return
				usr.clany = 0
				return

obj/choose3
	icon = 'nc.png'
	layer = MOB_LAYER+10001
	density = 1

obj/Kaguya
	density = 1
	icon = 'botao.dmi'
	layer = MOB_LAYER+10002
	Click()
		if(usr.clany)
			return
		switch(input("Você tem certeza que deseja ser Kaguya?", "Kaguya") in list ("Não","Não","Sim","Não","Não"))
			if("Sim")
				if(usr.clany)return
				usr.clany = 1
				usr<<"Você pertence àgora ao Clã Kaguya!"
				usr.name="Kaguya [usr]"
				usr.Kaguya=1
				usr.Realplayer = 1
				usr.human = 1
				usr.Clan = "Kaguya"
				usr.Inuzuka=0
				usr.Gaaraclan=0
				usr.chosen = 1
				usr.Hyuuga=0
				usr.Kamizuri=0
				usr.Nara=0
				usr.NonClan=0
				usr.Uchiha=0
				usr.Aburame=0
				usr.Akimichi = 0
				usr.Tenten=0
				usr.Uzumaki=0
				usr.medicmen=0
				usr.mariomen=0
				usr.taijmen=0
				usr.genjmen=0
				usr.armamen=0
				usr.Temari=0
				//usr.loc = locate(16,81,4)
				usr.loc = locate(63,75,4)
			if("Não")
				if(usr.clany)return
				usr.clany = 0
				return

mob/var/hyuuganeji=0
mob/var/hyuugahinata=0
obj/Hyuuga
	density = 1
	icon = 'botao.dmi'
	layer = MOB_LAYER+10002
	Click()
		if(usr.clany)
			return
		switch(input("Você tem certeza que deseja ser Hyuuga?", "Hyuuga") in list ("Não","Não","Sim","Não","Não"))
			if("Sim")
				if(usr.clany)return
				usr.clany=1
				usr<<"Você agora é um genial membro do Clã Hyuuga!"
				usr.name="Hyuuga [usr]"
				usr.Hyuuga=1
				usr.Realplayer = 1
				usr.human = 1
				usr.Clan = "Hyuuga"
				usr.Inuzuka=0
				usr.Gaaraclan=0
				usr.Kaguya=0
				usr.chosen = 1
				usr.Nara=0
				usr.Kamizuri=0
				usr.NonClan=0
				usr.Uchiha=0
				usr.Aburame=0
				usr.Akimichi = 0
				usr.Tenten=0
				usr.Uzumaki=0
				usr.medicmen=0
				usr.mariomen=0
				usr.taijmen=0
				usr.genjmen=0
				usr.armamen=0
				usr.Temari=0
				switch(input("Qual família você deseja pertencer?", text) in list ("Primária","Segundária"))
					if("Primária")
						usr.hyuugahinata=1
						usr<<"Suas futuras técnicas serão parecidas com as da Hinata"
					if("Segundária")
						usr.hyuuganeji=1
						usr.Elementos=1
						usr.Elemento="Fuuton"
						usr.Fuuton=1
						usr<<"Suas futuras técnicas serão parecidas com as do Neji"
				//usr.loc = locate(16,81,4)
				usr.loc = locate(63,75,4)
			if("Não")
				if(usr.clany)return
				usr.clany = 0
				return
mob/var
	chosen=0

obj/Akimichi
	density = 1
	icon = 'botao.dmi'
	layer = MOB_LAYER+10002
	Click()
		if(usr.clany)
			return
		switch(input("Você tem certeza que deseja ser Akimichi?", "Akimichi") in list ("Não","Não","Sim","Não","Não"))
			if("Sim")
				if(usr.clany)return
				usr.clany = 1
				usr<<"Você pertence àgora ao Clã Akimichi!"
				usr.name="Akimichi [usr]"
				usr.Akimichi=1
				usr.Realplayer = 1
				usr.human = 1
				usr.Clan = "Akimichi"
				usr.Inuzuka=0
				usr.Gaaraclan=0
				usr.chosen = 1
				usr.Kaguya=0
				usr.Uzumaki=0
				usr.Hyuuga=0
				usr.Kamizuri=0
				usr.Nara=0
				usr.NonClan=0
				usr.Uchiha=0
				usr.Aburame=0
				usr.Tenten=0
				usr.medicmen=0
				usr.mariomen=0
				usr.taijmen=0
				usr.genjmen=0
				usr.armamen=0
				usr.Temari=0
				//usr.loc = locate(16,81,4)
				usr.loc = locate(63,75,4)
			if("Não")
				if(usr.clany)return
				usr.clany = 0
				return

obj/Aburame
	density = 1
	icon = 'botao.dmi'
	layer = MOB_LAYER+10002
	Click()
		if(usr.clany)
			return
		switch(input("Você tem certeza que deseja ser Aburame?", "Aburame") in list ("Não","Não","Sim","Não","Não"))
			if("Sim")
				if(usr.clany)return
				usr.clany = 1
				usr<<"Você pertence àgora ao Clã Aburame"
				usr.name="Aburame [usr]"
				usr.Aburame=1
				usr.Realplayer = 1
				usr.Konchuu = 10
				usr.human = 1
				usr.Clan ="Aburame"
				usr.Haku = 0
				usr.Akimichi=0
				usr.Inuzuka=0
				usr.chosen = 1
				usr.Gaaraclan=0
				usr.Kaguya=0
				usr.Uzumaki=0
				usr.Kamizuri=0
				usr.Hyuuga=0
				usr.Nara=0
				usr.NonClan=0
				usr.Uchiha=0
				usr.Tenten=0
				usr.medicmen=0
				usr.mariomen=0
				usr.taijmen=0
				usr.genjmen=0
				usr.armamen=0
				usr.Temari=0
				//usr.loc = locate(16,81,4)
				usr.loc = locate(63,75,4)
			if("Não")
				if(usr.clany)return
				usr.clany = 0
				return

obj/Nara
	density = 1
	icon = 'botao.dmi'
	layer = MOB_LAYER+10002
	Click()
		if(usr.clany)
			return
		switch(input("Você tem certeza que deseja ser Nara?", "Nara") in list ("Não","Não","Sim","Não","Não"))
			if("Sim")
				if(usr.clany)return
				usr.clany = 1
				usr<<"Você manipula as sombras. É um Nara!"
				usr.name="Nara [usr]"
				usr.Nara=1
				usr.Realplayer = 1
				usr.human = 1
				usr.Clan = "Nara"
				usr.Inuzuka=0
				usr.Gaaraclan=0
				usr.Kaguya=0
				usr.Hyuuga=0
				usr.chosen = 1
				usr.Kamizuri=0
				usr.Uzumaki=0
				usr.NonClan=0
				usr.Uchiha=0
				usr.Aburame=0
				usr.Akimichi = 0
				usr.Tenten=0
				usr.medicmen=0
				usr.mariomen=0
				usr.taijmen=0
				usr.genjmen=0
				usr.armamen=0
				usr.Temari=0
				//usr.loc = locate(16,81,4)
				usr.loc = locate(63,75,4)
			if("Não")
				if(usr.clany)return
				usr.clany = 0
				return
mob/var
	clany = 0
obj/Haku
	density = 1
	icon = 'botao.dmi'
	layer = MOB_LAYER+10002
	Click()
		if(usr.clany)
			return
		switch(input("Você tem certeza que deseja ser Haku?", "Haku") in list ("Não","Não","Sim","Não","Não"))
			if("Sim")
				if(usr.clany)return
				usr.clany = 1
				usr<<"Agora você possui a linhagem sanguinea do Haku!"
				usr.name="Koori [usr]"
				usr.Haku=1
				usr.Elementos=1
				usr.Elementos2=1
				usr.Elemento="Suiton"
				usr.Elemento2="Fuuton"
				usr.Fuuton=1
				usr.Suiton=1
				usr.Realplayer = 1
				usr.human = 1
				usr.Clan = "Haku"
				usr.Akimichi=0
				usr.Uzumaki=0
				usr.Inuzuka=0
				usr.Gaaraclan=0
				usr.Kamizuri=0
				usr.Kaguya=0
				usr.Hyuuga=0
				usr.chosen = 1
				usr.Nara=0
				usr.NonClan=0
				usr.Uchiha=0
				usr.Aburame=0
				usr.Tenten=0
				usr.medicmen=0
				usr.mariomen=0
				usr.taijmen=0
				usr.genjmen=0
				usr.armamen=0
				usr.Temari=0
				//usr.loc = locate(16,81,4)
				usr.loc = locate(63,75,4)
			if("Não")
				if(usr.clany)return
				usr.clany = 0
				return

obj/INFO
	density = 1
	icon = 'botao.dmi'
	layer = MOB_LAYER+10002
	Click()
		if(usr.clany)
			return
		switch(input("Você tem certeza que deseja conhecer os Clãs?", "Informações") in list ("Não","Não","Sim","Não","Não"))
			if("Sim")
			if("Não")
				return

obj/Vila/Konoha
	icon='vilasmouse.dmi'
	icon_state="konoha"
	layer=10
obj/Vila/Kiri
	icon='vilasmouse.dmi'
	icon_state="kiri"
	layer=10
obj/Vila/Suna
	icon='vilasmouse.dmi'
	icon_state="suna"
	layer=10
obj/Vila/Kumo
	icon='vilasmouse.dmi'
	icon_state="kumo"
	layer=10
obj/Vila/Iwa
	icon='vilasmouse.dmi'
	icon_state="iwa"
	layer=10
obj/Vila/Ame
	icon='vilasmouse.dmi'
	icon_state="ame"
	layer=10
obj/Vila/Akatsuki
	icon='vilasmouse.dmi'
	icon_state="akatsuki"
	layer=10
obj/Vila/SoundOrganization
	icon='vilasmouse.dmi'
	icon_state="sound organization"
	layer=10
obj/Vila/SevenSwords
	icon='vilasmouse.dmi'
	icon_state="sss"
	layer=10








