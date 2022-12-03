mob/var/mvip = ""
mob/var/mmgm = ""

mob/verb/trocarpontos()
	set hidden=1
	if(usr.deslogado)
		usr<<"Você não pode usar esse comando sem ter logado no jogo"
		return
	switch(input("O que gostaria de trocar?","Trocando Pontos de Evento") in list ("Resetar Usos de Mangekyou Sharingan - 20","Missões Rank B - 30","Missões Rank C - 25","Missões Rank D - 20","Honra - 10","Ryous - 5","Cancelar"))
		if("Resetar Usos de Mangekyou Sharingan - 20")
			if(usr.pontosevento>=20)
				usr.pontosevento-=20
				usr.mangeN=0
				usr.SalvarAgora()
				alert("Seus usos de MS foram resetados com sucesso!")
		if("Missões Rank B - 30")
			if(usr.pontosevento>=30)
				usr.pontosevento-=30
				usr.bmission+=20
				usr.SalvarAgora()
				alert("Você ganhou 20 Missões B!")
		if("Missões Rank C - 25")
			if(usr.pontosevento>=25)
				usr.pontosevento-=25
				usr.cmission+=50
				usr.SalvarAgora()
				alert("Você ganhou 50 Missões C!")
		if("Missões Rank D - 20")
			if(usr.pontosevento>=20)
				usr.pontosevento-=20
				usr.dmission+=80
				usr.SalvarAgora()
				alert("Você ganhou 80 Missões D!")
		/*if("Pericia com Elemento - 20")
			switch(input("Qual Elemento?")in list("Katon","Suiton","Raiton","Fuuton","Doton","Cancelar"))
				if("Katon")
					if(usr.pontosevento>=20)
						usr.pontosevento-=20
						usr.fogoN+=5000
						usr.SalvarAgora()
						alert("Você ganhou 100 Pericias com Katon!")
				if("Suiton")
					if(usr.pontosevento>=20)
						usr.pontosevento-=20
						usr.aguaN+=5000
						usr.SalvarAgora()
						alert("Você ganhou 100 Pericias com Suiton!")
				if("Raiton")
					if(usr.pontosevento>=20)
						usr.pontosevento-=20
						usr.trovaoN+=5000
						usr.SalvarAgora()
						alert("Você ganhou 100 Pericias com Raiton!")
				if("Fuuton")
					if(usr.pontosevento>=20)
						usr.pontosevento-=20
						usr.ventoN+=5000
						usr.SalvarAgora()
						alert("Você ganhou 100 Pericias com Fuuton!")
				if("Doton")
					if(usr.pontosevento>=20)
						usr.pontosevento-=20
						usr.terraN+=5000
						usr.SalvarAgora()
						alert("Você ganhou 100 Pericias com Doton!")
		if("Controle de Chakra - 10")
			if(usr.pontosevento>=10)
				usr.pontosevento-=10
				usr.chakraN+=10000
				usr.SalvarAgora()
				alert("Você ganhou 10000 de Controle de Chakra!")*/
		if("Honra - 10")
			if(usr.pontosevento>=10)
				usr.pontosevento-=10
				usr.honra+=1000
				usr.SalvarAgora()
				alert("Você ganhou 500 de Honra!")
		if("Ryous - 5")
			if(usr.pontosevento>=5)
				usr.pontosevento-=5
				usr.Yen+=1000000
				usr.SalvarAgora()
				alert("Você ganhou 1KK de Ryous!")
		/*if("Diminuir Kills de Vila - 1")
			if(usr.pontosevento>=1)
				usr.pontosevento-=1
				usr.killsvillage--
				if(usr.killsvillage<=0)usr.killsvillage=0
				usr.SalvarAgora()
				alert("Seu kill de Vila foi diminuído!")*/

mob/verb/trocarcoins()
	set hidden=1
	if(usr.deslogado)
		usr<<"Você não pode usar esse comando sem ter logado no jogo"
		return
	switch(input("O que gostaria de trocar?","Trocando NRB Coins") in list ("Resetar Usos de Mangekyou Sharingan - 15","Missões Rank B - 20","Missões Rank C - 20","Missões Rank D - 20","Honra - 8","Ryous - 5","03 Baús - 5 NRB Coins","01 Baú Quest - 3 NRB Coins","03 Baús Quest - 7 NRB Coins","Ticket Vila 5 - NRB Coins","Ticket Rename 5 - NRB Coins","Cancelar"))
		if("Resetar Usos de Mangekyou Sharingan - 15")
			if(usr.nrbcoin>=15)
				usr.nrbcoin-=15
				usr.mangeN=0
				usr.SalvarAgora()
				alert("Seus usos de MS foram resetados com sucesso!")
		if("Missões Rank B - 20")
			if(usr.nrbcoin>=20)
				usr.nrbcoin-=20
				usr.bmission+=50
				usr.SalvarAgora()
				alert("Você ganhou 20 Missões B!")
		if("Missões Rank C - 20")
			if(usr.nrbcoin>=20)
				usr.nrbcoin-=20
				usr.cmission+=75
				usr.SalvarAgora()
				alert("Você ganhou 50 Missões C!")
		if("Missões Rank D - 20")
			if(usr.nrbcoin>=20)
				usr.nrbcoin-=20
				usr.dmission+=100
				usr.SalvarAgora()
				alert("Você ganhou 100 Missões D!")
		/*if("Pericia com Elemento - 10")
			switch(input("Qual Elemento?")in list("Katon","Suiton","Raiton","Fuuton","Doton","Cancelar"))
				if("Katon")
					if(usr.nrbcoin>=10)
						usr.nrbcoin-=10
						usr.fogoN+=5000
						usr.SalvarAgora()
						alert("Você ganhou 5000 Pericias com Katon!")
				if("Suiton")
					if(usr.nrbcoin>=10)
						usr.nrbcoin-=10
						usr.aguaN+=5000
						usr.SalvarAgora()
						alert("Você ganhou 5000 Pericias com Suiton!")
				if("Raiton")
					if(usr.nrbcoin>=10)
						usr.nrbcoin-=10
						usr.trovaoN+=5000
						usr.SalvarAgora()
						alert("Você ganhou 5000 Pericias com Raiton!")
				if("Fuuton")
					if(usr.nrbcoin>=10)
						usr.nrbcoin-=10
						usr.ventoN+=5000
						usr.SalvarAgora()
						alert("Você ganhou 5000 Pericias com Fuuton!")
				if("Doton")
					if(usr.nrbcoin>=10)
						usr.nrbcoin-=10
						usr.terraN+=5000
						usr.SalvarAgora()
						alert("Você ganhou 5000 Pericias com Doton!")
		if("Controle de Chakra - 7")
			if(usr.nrbcoin>=7)
				usr.nrbcoin-=7
				usr.chakraN+=10000
				usr.SalvarAgora()
				alert("Você ganhou 10000 de Controle de Chakra!")*/
		if("Honra - 8")
			if(usr.nrbcoin>=8)
				usr.nrbcoin-=8
				usr.honra+=1000
				usr.SalvarAgora()
				alert("Você ganhou 500 de Honra!")
		if("Ryous - 5")
			if(usr.nrbcoin>=5)
				usr.nrbcoin-=5
				usr.Yen+=2000000
				usr.SalvarAgora()
				alert("Você ganhou 2KK de Ryous!")
		/*if("Diminuir Kills de Vila - 1")
			if(usr.nrbcoin>=1)
				usr.nrbcoin-=1
				usr.killsvillage--
				if(usr.killsvillage<=0)usr.killsvillage=0
				usr.SalvarAgora()
				alert("Seu kill de Vila foi diminuído!")*/
		if("03 Baús - 5 NRB Coins")
			if(usr.nrbcoin>=5)
				usr.nrbcoin-=5
				var/obj/Tesouro/BauSurpresa/B = new /obj/Tesouro/BauSurpresa
				var/obj/Tesouro/BauSurpresa/C = new /obj/Tesouro/BauSurpresa
				var/obj/Tesouro/BauSurpresa/D = new /obj/Tesouro/BauSurpresa
				B.loc = usr
				C.loc = usr
				D.loc = usr
				usr.SalvarAgora()
				alert("Voce ganhou 03 baús!")
		if("01 Baú Quest - 3 NRB Coins")
			if(usr.nrbcoin>=3)
				usr.nrbcoin-=3
				var/obj/Tesouro/BauQuest/B = new /obj/Tesouro/BauQuest
				B.loc = usr
				usr.SalvarAgora()
				alert("Voce ganhou 01 baú de Quest!")
		if("03 Baús Quest - 7 NRB Coins")
			if(usr.nrbcoin>=7)
				usr.nrbcoin-=7
				var/obj/Tesouro/BauQuest/B = new /obj/Tesouro/BauQuest
				var/obj/Tesouro/BauQuest/C = new /obj/Tesouro/BauQuest
				var/obj/Tesouro/BauQuest/D = new /obj/Tesouro/BauQuest
				B.loc = usr
				C.loc = usr
				D.loc = usr
				usr.SalvarAgora()
				alert("Voce ganhou 03 baús de Quest!")
		if("Ticket Vila 5 - NRB Coins")
			if(usr.nrbcoin>=5)
				usr.nrbcoin-=5
				var/obj/Tesouro/TicketVila/A = new /obj/Tesouro/TicketVila
				A.loc = usr
				usr.SalvarAgora()
				alert("Você ganhou 1 Ticket Vila")
		if("Ticket Rename 5 - NRB Coins")
			if(usr.nrbcoin>=5)
				usr.nrbcoin-=5
				var/obj/Tesouro/TicketRename/A = new /obj/Tesouro/TicketRename
				A.loc = usr
				usr.SalvarAgora()
				alert("Você ganhou 1 Ticket Rename")

mob
	verb
		Veron()
			set name = "Jogadores Online"
			var/online=0
			var/vila=0
			var/vips=0
			var/gms=0
			for(var/mob/M in world)
				if(M.key)online++
				if(M.Village==usr.Village)if(M.client)vila++
				if(M.EhVip)
					M.mvip = "<font color=yellow>Sim</font>"
					vips++
				else M.mvip = "Nao"
				if(M.GM)
					M.mmgm = "<font color=yellow>Sim</font>"
					gms++
				else M.mmgm = "Nao"
			var/Online
			Online+={"<STYLE>BODY {background: Black; color: White}IMG.icon{width:32;height:32} </STYLE> <tr align="center"><center><img src='http://imageshack.com/a/img921/2474/8RLJcg.png' border='0'<br/><br><td colspan="6"><font size=3>Jogadores Online: [online]</td><br><font size=3>Vila/Org Online: [vila]<br><font size=3>VIPs Online: [vips]<br><font size=3>GMs Online: [gms]</td></tr></table>"}
			Online+={"
<head><title>Jogadores Online</title></head>
<br>
<table border="1" cellpadding="4">
<tr align="center"><th colspan="3"><font size=2>Nome</th><th><font size=2>Key</th><th><font size=2>Rank</th><th><font size=2>Cla</th><th><font size=2>Vila/Organizacao</th><th><font size=2>VIP</th><th><font size=2>GM</th></tr>"}
			for(var/mob/M in world)if(M.client)Online+={"<tr align="center"><td colspan="3"><font size=2> [M.name] ([M.bingob])</td><td><font size=2>[M.key]</td><td><font size=2>[M.rank]</td><td><font size=2>[M.Clan]</td><td><font size=2>[M.Village]</td><td><font size=2>[M.mvip]</td><td><font size=2>[M.mmgm]</td></tr>"}
			src<<browse(Online,"window=who,size=800x600,can_resize=0,can_minimize=0")

mob
	proc
		PerderSubclan()
			if(WHidan:dono==src.key)
				WHidan:dono="Ninguem"
				WHidan=new/SUBD
			if(WDeidara:dono==src.key)
				WDeidara:dono="Ninguem"
				WDeidara=new/SUBD
			if(WZetsu:dono==src.key)
				WZetsu:dono="Ninguem"
				WZetsu=new/SUBD
			if(WPain:dono==src.key)
				WPain:dono="Ninguem"
				WPain=new/SUBD
			if(WSasori:dono==src.key)
				WSasori:dono="Ninguem"
				WSasori=new/SUBD
			if(WKonan:dono==src.key)
				WKonan:dono="Ninguem"
				WKonan=new/SUBD
			if(WTobi:dono==src.key)
				WTobi:dono="Ninguem"
				WTobi=new/SUBD
			if(WKakuzu:dono==src.key)
				WKakuzu:dono="Ninguem"
				WKakuzu=new/SUBD
			if(WKisameAkat:dono==src.key)
				WKisameAkat:dono="Ninguem"
				WKisameAkat=new/SUBD
			if(WItachi:dono==src.key)
				WItachi:dono="Ninguem"
				WItachi=new/SUBD
			if(WKisameSSS:dono==src.key)
				WKisameSSS:dono="Ninguem"
				WKisameSSS=new/SUBD
			if(WZabuzaSSS:dono==src.key)
				WZabuzaSSS:dono="Ninguem"
				WZabuzaSSS=new/SUBD
			if(WRaigaSSS:dono==src.key)
				WRaigaSSS:dono="Ninguem"
				WRaigaSSS=new/SUBD
			if(WJiroubouSO:dono==src.key)
				WJiroubouSO:dono="Ninguem"
				WJiroubouSO=new/SUBD
			if(WKidoumaruSO:dono==src.key)
				WKidoumaruSO:dono="Ninguem"
				WKidoumaruSO=new/SUBD
			if(WSakonSO:dono==src.key)
				WSakonSO:dono="Ninguem"
				WSakonSO=new/SUBD
			if(WDosuSO:dono==src.key)
				WDosuSO:dono="Ninguem"
				WDosuSO=new/SUBD
			if(WTayuyaSO:dono==src.key)
				WTayuyaSO:dono="Ninguem"
				WTayuyaSO=new/SUBD
			if(WOrochimaruSub:dono==src.key)
				WOrochimaruSub:dono="Ninguem"
				WOrochimaruSub=new/SUBD
			if(WSasukeTaka:dono==src.key)
				WSasukeTaka:dono="Ninguem"
				WSasukeTaka=new/SUBD
			if(WKarinTaka:dono==src.key)
				WKarinTaka:dono="Ninguem"
				WKarinTaka=new/SUBD
			if(WJuugoTaka:dono==src.key)
				WJuugoTaka:dono="Ninguem"
				WJuugoTaka=new/SUBD
			if(WSuigetsuTaka:dono==src.key)
				WSuigetsuTaka:dono="Ninguem"
				WSuigetsuTaka=new/SUBD
			if(WSandaimeH:dono==src.key)
				WSandaimeH:dono="Ninguem"
				WSandaimeH=new/SUBD
			if(WOonoki:dono==src.key)
				WOonoki:dono="Ninguem"
				WOonoki=new/SUBD
			if(WHashirama:dono==src.key)
				WHashirama:dono="Ninguem"
				WHashirama=new/SUBD
			if(WTobirama:dono==src.key)
				WTobirama:dono="Ninguem"
				WTobirama=new/SUBD
			if(WMizukage:dono==src.key)
				WMizukage:dono="Ninguem"
				WMizukage=new/SUBD
			if(WMinato:dono==src.key)
				WMinato:dono="Ninguem"
			if(WRaikage:dono==src.key)
				WRaikage:dono="Ninguem"
				WRaikage=new/SUBD
			if(WRingo:dono==src.key)
				WRingo:dono="Ninguem"
				WRingo=new/SUBD
			if(WJinin:dono==src.key)
				WJinin:dono="Ninguem"
				WJinin=new/SUBD
			if(WJinpachi:dono==src.key)
				WJinpachi:dono="Ninguem"
				WJinpachi=new/SUBD
			if(WKushimaru:dono==src.key)
				WKushimaru:dono="Ninguem"
				WKushimaru=new/SUBD
			src.subclan=0
			src.sasorisub=0
			src.bit=0
			src.zetsu=0
			src.deidarasub=0
			src.kakuzusub=0
			src.subpain=0
			src.madara=0
			src.subnidaime=0
			if(src.convidado)
				src.verbs -= new /mob/Akimichi/verb/Pilulas()
			src.verbs -= new /mob/hidan/verb/BloodSeal()
			src.verbs -= new /mob/sss/verb/mortesilenciosa()
			src.verbs -= new /mob/sssjinpachi/verb/FREIO()
			src.verbs -= new /mob/sword/verb/Atacar_com_Espada2()
			src.verbs -= new /mob/jutsu/verb/SSS1()
			src.verbs -= new /mob/jutsu/verb/SSS2()
			src.verbs -= new /mob/jutsu/verb/Corpoa()
			src.verbs -= new /mob/jutsu/verb/Barreiraa()
			src.verbs -= new /mob/jutsu/verb/Buffa()
			src.verbs -= new /mob/jutsu/verb/Prisao()
			src.verbs -= new /mob/mokuton/verb/ModoGolemHashirama()
			src.verbs -= new /obj/bunshins/Mb/verb/Mb()
			src.verbs -= new /mob/jutsu/verb/SSS3()
			src.verbs -= new /mob/jutsu/verb/SSS4()
			src.verbs -= new /mob/jutsu/verb/SSS5()
			src.verbs -= new /mob/jutsu/verb/SSS6()
			src.verbs -= new /mob/Sword/verb/HitSpecial()
			src.verbs -= new /mob/Sword/verb/HitSam()
			src.verbs -= new /mob/Sword/verb/HitSamtai()
			src.verbs -= typesof(/mob/SubMizukage/verb)
			src.verbs -= typesof(/mob/SubTsuchikage/verb)
			src.verbs -= typesof(/mob/Raikage/verb)
			src.verbs -= new /mob/Sai/verb/SnakeKyuu()
			src.verbs -= new /mob/jutsu/verb/LancarKunai()
			src.verbs -= new /mob/jutsu/verb/raikage()
			src.verbs -= new /mob/Nidaime/verb/Rastrear()
			src.verbs -= new /mob/jutsu/verb/PlantKunai()
			src.verbs -= new /mob/hidan/verb/Limpar()
			src.verbs -= new /mob/jutsu/verb/Hira12()
			src.verbs -= new /mob/jutsu/verb/Hira1()
			src.verbs -= new /mob/jutsu/verb/Spiderarmor()
			src.verbs -= new /mob/jutsu/verb/Hira2()
			src.verbs -= new /mob/Juugo/verb/PTBLANK()
			src.verbs -= new /mob/Juugo/verb/drenarhp()
			src.verbs -= new /mob/jutsu/verb/RaikageJ()
			src.verbs -= /mob/swordsmen/verb/Invite7
			src.verbs -= /mob/swordsmen/verb/Boot7
			src.verbs -= /mob/jutsu/verb/Resetar_Recrutas
			src.verbs -= typesof(/mob/Tay/verb)
			src.verbs -= typesof(/mob/itachi/verb)
			src.verbs -= new /mob/jutsu/verb/Matar_Edo()
			src.verbs -= typesof(/mob/Hatake/verb)
			src.verbs -= new /mob/jutsu/verb/Kageb()
			src.verbs -= /mob/NukeSquads/verb/Falar_EsquadraoNuke
			src.verbs -= /mob/Squads/verb/Falar_Esquadrao
			src.verbs -= typesof(/mob/Star/verb)
			src.verbs -= new /mob/jutsu/verb/Gelop()
			src.verbs -= typesof(/mob/Kamizuri/verb)
			src.verbs -= typesof(/mob/Dark/verb)
			src.verbs -= typesof(/mob/Ranton/verb)
			src.verbs -= new /mob/jutsu/verb/Rashoumon()
			src.verbs -= new /mob/Orochimaru/verb/Tajuusnake()
			src.verbs -= new /mob/Orochi/verb/ShikuminoJutsu()
			src.verbs -= new /mob/jutsu/verb/HengeM()
			src.verbs -= new /mob/jutsu/verb/Daja()
			src.verbs -= new /mob/jutsu/verb/Duplo()
			src.verbs -= new/mob/Sl/verb/Power_up()
			src.verbs -= /mob/sound/verb/InviteS
			src.verbs -= /mob/sound/verb/BootS
			src.verbs -= /mob/jutsu/verb/Resetar_Recrutas
			src.verbs -= new /obj/Bunshin/Edo/verb/Ress()
			src.verbs -= new /mob/Orochi/verb/SnakeSousou()
			src.verbs -= new /mob/Orochi/verb/SnakeKyuu()
			src.verbs -= new /mob/Orochi/verb/ShikuminoJutsu()
			src.verbs -= new /mob/Orochimaru/verb/SnakeShield()
			src.verbs -= new /mob/Orochimaru/verb/Summon_Snake_Orochimaru()
			src.verbs -= new /mob/Orochimaru/verb/Onslaught()
			src.verbs -= new /mob/jutsu/verb/JionguMojiRetsu()
			src.verbs -= new /mob/jutsu/verb/JionguMoji()
			src.verbs -= typesof(/mob/Sun/verb)
			src.verbs -= typesof(/mob/Moon/verb)
			src.verbs -= new /mob/jutsu/verb/VontadeFogo()
			src.verbs -= new /mob/jutsu/verb/EletricBunshin()
			src.verbs -= new /mob/flight/verb/Cloud()
			src.verbs -= new /mob/rain/verb/JouroSenban()
			src.verbs -= new /mob/jutsu/verb/Soterra()
			src.verbs -= new /mob/hidan/verb/TirarSangue()
			src.verbs -= new /mob/deidara/verb/Criararg()
			src.verbs -= new /mob/deidara/verb/Plantarexplosivo()
			src.verbs -= new /mob/deidara/verb/Explodearg()
			src.verbs -= new /mob/deidara/verb/Argarmor()
			src.verbs -= new /mob/deidara/verb/Argarmor2()
			src.verbs -= new /mob/deidara/verb/Passaro()
			src.verbs -= new /mob/Deidara/verb/C3()
			src.verbs -= new /mob/Deidara/verb/C4()
			src.verbs -= new /mob/Deidara/verb/C5()
			src.verbs -= new /mob/Deidara/verb/CO()
			src.verbs -= new /mob/jutsu/verb/KamuiG()
			src.verbs -= new /mob/jutsu/verb/AntiMS()
			src.verbs -= new /mob/jutsu/verb/Tempo()
			src.verbs -= new /mob/deidara/verb/DeidaraBunshin()
			src.verbs -= new /obj/bunshins/Pb/verb/Pb()
			src.verbs -= new /mob/Pein/verb/Shinra()
			src.verbs -= new /mob/Pein/verb/Matar_Corpos()
			src.verbs -= new /mob/Pein/verb/ChibakuTensei()
			src.verbs -= new /mob/zetsu2/verb/Kagerou()
			src.verbs -= new /mob/Zetsu/verb/FurusakiNoJutsu()
			src.verbs -= new /mob/zetsu2/verb/RoushinNoJutsu()
			src.verbs -= new /mob/zetsu2/verb/CaradaKuuinNoJutsu()
			src.verbs -= new /mob/zetsu2/verb/ZetsuArmor()
			src.verbs -= new /mob/zetsu2/verb/KagerouSair()
			src.verbs -= new /mob/zetsu2/verb/KagerouVila()
			src.verbs -= new /mob/jutsu/verb/SasoArmor()
			src.verbs -= new /mob/Sasori/verb/SHM()
			src.verbs -= new /mob/jutsu/verb/Criarven()
			src.verbs -= new /mob/jutsu/verb/Envenenar()
			src.verbs -= new /mob/Sasori/verb/MarioneteShield()
			src.verbs -= new /mob/Konan/verb/KamiNoMakushi()
			src.verbs -= new /mob/Konan/verb/KamiNoTsubasa()
			src.verbs -= new /mob/Konan/verb/ShikigamiNoMaiNori()
			src.verbs -= new /mob/Konan/verb/ShikigamiNoMai()
			src.verbs -= new /mob/Konan/verb/KagerouSair()
			src.verbs -= new /mob/Konan/verb/KamiNoChissokushi()
			src.verbs -= new /mob/Konan/verb/KamiBunshin()
			src.verbs -= new /mob/Konan/verb/KamiMoku()
			src.verbs -= new /mob/jutsu/verb/Madaradimension()
			src.verbs -= new /mob/jutsu/verb/Madarateleporte()
			src.verbs -= new /mob/jutsu/verb/Madaratele()
			src.verbs -= new /mob/kisame/verb/kisame_agua()
			src.verbs -= new /mob/suiton_kisame/verb/SuitonArmor_kisame()
			src.verbs -= new /obj/bunshins/Mbz/verb/Mbz()
			src.verbs -= new /mob/jutsu/verb/PrisaoGrande()
			src.verbs -= new /mob/jutsu/verb/DrenoS()
			src.verbs -= /mob/jutsu/verb/Dreno
			src.verbs -= new /mob/suiton/verb/Suiroukisame()
			src.verbs -= new /mob/jutsu/verb/Taisoukisame()
			src.verbs -= new /obj/bunshins/Satetsu/verb/Satetsu()
			src.verbs -= /mob/Sasori/verb/MarioneteAgua
			src.verbs -= /mob/Sasori/verb/MarioneteFogo
			src.verbs -= new /mob/jutsu/verb/zabuza_nevoa()
			src.verbs -= new /mob/suiton/verb/SuitonKyuu()
			src.verbs -= new /mob/suiton/verb/SuitonSousou()
			src.verbs -= new /mob/jutsu/verb/ocultar()
			src.verbs -= new /mob/jutsu/verb/Corpoe()
			src.verbs -= new /mob/jutsu/verb/Raiomorte()
			src.verbs -= new /mob/jutsu/verb/Raio()
			src.verbs -= new /mob/jutsu/verb/Prisaoe()
			src.verbs -= new /mob/jutsu/verb/Jirod()
			src.verbs -= new /mob/jutsu/verb/JiroS()
			src.verbs -= new /mob/Pein/verb/Kuuin()
			src.verbs -= new /mob/jutsu/verb/JiroArmor()
			src.verbs -= new /mob/Spiderclan/verb/CreateSpiderBow()
			src.verbs -= new /mob/Spiderclan/verb/CreateSpiderArrows()
			src.verbs -= new /mob/Spiderclan/verb/WebSabakuSousou()
			src.verbs -= new /mob/Spiderclan/verb/WebSabakuKyuu()
			src.verbs -= new /mob/Spiderclan/verb/HomingArrows()
			src.verbs -= new /mob/parasite/verb/DescansarMetade()
			src.verbs -= new /mob/parasite/verb/Parasitar()
			src.verbs -= new /mob/parasite/verb/SelfHurt()
			src.verbs -= new /mob/parasite/verb/AtaqueDoIrmao()
			src.verbs -= new /mob/parasite/verb/Imobilizar()
			src.verbs -= new /mob/Kinuta/verb/Rajada()
			src.verbs -= new /mob/Kinuta/verb/areasom()
			src.verbs -= new /mob/Kinuta/verb/somatoardor()
			src.verbs -= new /mob/Kinuta/verb/Impacto()
			src.verbs -= new /mob/Kinuta/verb/sentidos()
			src.verbs -= new /mob/jutsu/verb/Rashoumon()
			src.verbs -= new /mob/Orochi/verb/ShikuminoJutsu
			src.verbs -= new /mob/Orochimaru/verb/Tajuusnake()
			src.verbs -= new /mob/Orochi/verb/ShikuminoJutsu()
			src.verbs -= new /mob/jutsu/verb/HengeM()
			src.verbs -= new /mob/jutsu/verb/Daja()
			src.verbs -= new /mob/jutsu/verb/Duplo()
			src.verbs -= new /mob/SasukeTaka/verb/AyatsuitoNoJutsu()
			src.verbs -= new /mob/SasukeTaka/verb/HabatekuChidoriSenbon()
			src.verbs -= new /mob/SasukeTaka/verb/HayabusaOtoshi()
			src.verbs -= new /mob/SasukeTaka/verb/ChidoriKouken()
			src.verbs -= new /mob/SasukeTaka/verb/Kagebuyou()
			src.verbs -= new /mob/jutsu/verb/HengeM()
			src.verbs -= new /mob/jutsu/verb/Novokirin()
			src.verbs -= new /mob/jutsu/verb/SuperPunho()
			src.verbs -= new /mob/Karin/verb/Absorver()
			src.verbs -= new /mob/Karin/verb/NS()
			src.verbs -= new /mob/Karin/verb/KaguraShingan()
			src.verbs -= new /mob/Juugo/verb/SpTai()
			src.verbs -= new /mob/Juugo/verb/CS4()
			src.verbs -= new /mob/Juugo/verb/CS3()
			src.faceicon = ""
			src.verbs -= new /mob/jutsu/verb/Power_up()
			src.verbs -= new /mob/jutsu/verb/Corpoa()
			src.verbs -= new /mob/jutsu/verb/Barreiraa()
			src.verbs -= new /mob/jutsu/verb/Buffa()
			src.verbs -= new /mob/jutsu/verb/Prisao()
			src.verbs -= new /obj/bunshins/Mb/verb/Mb()
			src.verbs -= new /mob/jutsu/verb/Shodaime()
			src.verbs -= new /mob/jutsu/verb/Neutro()
			src.verbs -= new /mob/jutsu/verb/Hokagesb()
			src.verbs -= new /mob/jutsu/verb/MokutonSpecial()
			src.verbs -= new /mob/Shodaime/verb/MokutonHijutsu()
			src.verbs -= new /mob/Shodaime/verb/MokotonKyuu()
			src.verbs -= new /mob/Shodaime/verb/MokotonSousou()
			src.verbs -= new /mob/suiton/verb/RainArmor()
			src.verbs -= new /mob/genj/verb/BreuNidaime()
			src.verbs -= new /mob/suiton/verb/RainArmor()
			src.verbs -= new /mob/jutsu/verb/NidaimeP()
			src.verbs -= new /mob/jutsu/verb/Taisounidaime()
			src.verbs -= new /mob/Nidaime/verb/Rastrear()
			src.verbs -= new /obj/bunshins/Mb/verb/Mb2()
			src.verbs -= new /mob/jutsu/verb/Marcar()
			src.verbs -= new /mob/jutsu/verb/Marcar2()
			src.verbs -= new /mob/jutsu/verb/Hitele()
			src.verbs -= new /mob/jutsu/verb/Selo()
			src.verbs -= new /mob/jutsu/verb/Rasengan()
			src.verbs -= new /obj/bunshins/KageBunshinnojutsu/verb/KageBunshinNoJutsu()
			src.verbs -= new /mob/tsunade/verb/NS()
			src.verbs -= new /mob/tsunade/verb/RompSelo()
			src.verbs -= new /mob/jutsu/verb/SuperPunhoT()
			src.verbs -= new /mob/medical/verb/Restore_Jutsu()
			src.verbs -= new /mob/medical/verb/Shousen_Jutsu()
			src.verbs -= new /mob/medical/verb/ChakraNoMesu()
			src.verbs -= new /mob/jutsu/verb/CorpoEletrico()
			src.verbs -= new /mob/haruno/verb/Envenenar()
			src.verbs -= new /mob/haruno/verb/Criarant()
			src.verbs -= new /mob/jutsu/verb/Desenvenenar()
			src.verbs -= new /mob/Sun/verb/TaiyouGoukakyuu()
			src.verbs -= new /mob/jiraya/verb/ModoHeremita()
			src.verbs -= new /mob/jiraya/verb/DotonYomi()
			src.verbs -= new /mob/jiraya/verb/Peacock()
			src.verbs -= new /mob/Sai/verb/SnakeKyuu()
			src.verbs -= new /mob/Sai/verb/NinpouLion()
			src.verbs -= new /mob/Sai/verb/Ratsilluminate()
			src.verbs -= new /mob/Sun/verb/TaiyouGoukakyuu()
			src.verbs -= new /mob/jiraya/verb/ModoHeremita()
			src.verbs -= new /mob/jiraya/verb/DotonYomi()
			src.verbs -= new /mob/jiraya/verb/Peacock()
			src.verbs -= new /mob/Sai/verb/SnakeKyuu()
			src.verbs -= new /mob/Sai/verb/NinpouLion()
			src.verbs -= new /mob/Sai/verb/Ratsilluminate()
			src.contents -= new /obj/Sai_Bird_Summoning_Scroll
			src.verbs -= new /mob/tsunade/verb/NS()
			src.verbs -= new /mob/tsunade/verb/RompSelo()
			src.verbs -= new /mob/jutsu/verb/SuperPunhoT()
			src.verbs -= new /mob/medical/verb/Restore_Jutsu()
			src.verbs -= new /mob/medical/verb/Shousen_Jutsu()
			src.verbs -= new /mob/tsunade/verb/ChakraNoMesuTsu()
			src.verbs -= new /mob/jutsu/verb/CorpoEletrico()
			src.verbs -= new /mob/haruno/verb/Envenenar()
			src.verbs -= new /mob/haruno/verb/Criarant()
			src.verbs -= new /mob/jutsu/verb/Desenvenenar()
			src.verbs -= new /mob/haruno/verb/Ssoco()
			src.verbs -= new /mob/jutsu/verb/Hitele()
			src.verbs -= new /mob/jutsu/verb/PlantKunai()
			src.verbs -= new /mob/jutsu/verb/LancarKunai()
			src.verbs -= new /mob/jutsu/verb/Selo()
			src.verbs -= new /mob/jutsu/verb/Rasengan()
			src.verbs -= new /obj/bunshins/KageBunshinnojutsu/verb/KageBunshinNoJutsu()
			src.verbs -= new /mob/suiton/verb/RainArmor()
			src.verbs -= new /mob/jutsu/verb/NidaimeP()
			src.verbs -= new /mob/jutsu/verb/Taisounidaime()
			src.verbs -= new /mob/genj/verb/BreuNidaime()
			src.verbs -= new /mob/Nidaime/verb/Rastrear()
			src.verbs -= new /obj/bunshins/Mb/verb/Mb2()
			src.verbs -= new /mob/jutsu/verb/Hitele2()
			src.verbs -= new /mob/jutsu/verb/Shodaime()
			src.verbs -= new /mob/jutsu/verb/Neutro()
			src.verbs -= new /mob/jutsu/verb/ShodBuff()
			src.verbs -= new /mob/jutsu/verb/Hokagesb()
			src.verbs -= new /mob/jutsu/verb/MokutonSpecial()
			src.verbs -= new /mob/Shodaime/verb/MokutonHijutsu()
			src.verbs -= new /mob/Shodaime/verb/MokotonKyuu()
			src.verbs -= new /mob/Shodaime/verb/MokotonSousou()
			src.verbs -= new /mob/jutsu/verb/Corpoa()
			src.verbs -= new /mob/jutsu/verb/Barreiraa()
			src.verbs -= new /mob/jutsu/verb/Buffa()
			src.verbs -= new /mob/jutsu/verb/Prisao()
			src.verbs -= new /obj/bunshins/Mb/verb/Mb()
			src.verbs -= new /mob/Juugo/verb/SpTai()
			src.verbs -= new /mob/Juugo/verb/CS4()
			src.verbs -= new /mob/Juugo/verb/CS3()
			src.verbs -= new/mob/jutsu/verb/Power_up()
			src.verbs -= new /mob/jutsu/verb/SuperPunho()
			src.verbs -= new /mob/Karin/verb/Absorver()
			src.verbs -= new /mob/Karin/verb/NS()
			src.verbs -= new /mob/Karin/verb/KaguraShingan()
			src.verbs -= new /mob/SasukeTaka/verb/AyatsuitoNoJutsu()
			src.verbs -= new /mob/SasukeTaka/verb/HabatekuChidoriSenbon()
			src.verbs -= new /mob/SasukeTaka/verb/HayabusaOtoshi()
			src.verbs -= new /mob/SasukeTaka/verb/ChidoriKouken()
			src.verbs -= new /mob/SasukeTaka/verb/MagenKouken()
			src.verbs -= new /mob/SasukeTaka/verb/Kagebuyou()
			src.verbs -= new /mob/jutsu/verb/HengeM()
			src.verbs -= new /mob/jutsu/verb/Novokirin()
			src.verbs -= new /mob/jutsu/verb/Rashoumon()
			src.verbs -= new /mob/Orochimaru/verb/Tajuusnake()
			src.verbs -= new /mob/Orochi/verb/ShikuminoJutsu()
			src.verbs -= new /mob/jutsu/verb/HengeM()
			src.verbs -= new /mob/jutsu/verb/Daja()
			src.verbs -= new /mob/jutsu/verb/Duplo()
			src.verbs -= new /mob/Kinuta/verb/Rajada()
			src.verbs -= new /mob/Kinuta/verb/areasom()
			src.verbs -= new /mob/Kinuta/verb/somatoardor()
			src.verbs -= new /mob/Kinuta/verb/Impacto()
			src.verbs -= new /mob/Kinuta/verb/sentidos()
			src.verbs -= new /mob/parasite/verb/DescansarMetade()
			src.verbs -= new /mob/parasite/verb/Parasitar()
			src.verbs -= new /mob/parasite/verb/SelfHurt()
			src.verbs -= new /mob/parasite/verb/AtaqueDoIrmao()
			src.verbs -= new /mob/parasite/verb/Imobilizar()
			src.verbs -= new /mob/Spiderclan/verb/CreateSpiderBow()
			src.verbs -= new /mob/Spiderclan/verb/CreateSpiderArrows()
			src.verbs -= new /mob/Spiderclan/verb/WebSabakuSousou()
			src.verbs -= new /mob/Spiderclan/verb/WebSabakuKyuu()
			src.verbs -= new /mob/jutsu/verb/Jirod()
			src.verbs -= new /mob/jutsu/verb/JiroS()
			src.verbs -= new /mob/Pein/verb/Kuuin()
			src.verbs -= new /mob/jutsu/verb/JiroArmor()
			src.verbs -= new /mob/doton/verb/DorokuGaeshi()
			src.verbs -= new /mob/jutsu/verb/Corpoe()
			src.verbs -= new /mob/jutsu/verb/Raiomorte()
			src.verbs -= new /mob/jutsu/verb/Raio()
			src.verbs -= new /mob/jutsu/verb/Prisaoe()
			src.verbs -= new /mob/jutsu/verb/Prisao()
			src.verbs -= new /mob/jutsu/verb/zabuza_nevoa()
			src.verbs -= new /mob/suiton/verb/SuitonKyuu()
			src.verbs -= new /mob/suiton/verb/SuitonSousou()
			src.verbs -= new /obj/bunshins/Mbz/verb/Mbz()
			src.verbs -= new /mob/kisame/verb/kisame_agua()
			src.verbs -= new /mob/suiton_kisame/verb/SuitonArmor_kisame()
			src.verbs -= new /obj/bunshins/Mbz/verb/Mbz()
			src.verbs -= new /mob/jutsu/verb/PrisaoGrande()
			src.verbs -= new /mob/jutsu/verb/DrenoS()
			src.verbs -= new /mob/kisame/verb/kisame_agua()
			src.verbs -= new /mob/suiton_kisame/verb/SuitonArmor_kisame()
			src.verbs -= new /obj/bunshins/Mbz/verb/Mbz()
			src.verbs -= new /mob/jutsu/verb/PrisaoGrande()
			src.verbs -= new /mob/jutsu/verb/DrenoS()
			src.verbs -= new /mob/jutsu/verb/RouboC()
			src.verbs -= new /mob/jutsu/verb/Linhas()
			src.verbs -= new /mob/jutsu/verb/Ferro()
			src.verbs -= new /obj/bunshins/Masks/verb/Masks()
			src.coracao=0
			src.verbs -= new /mob/jutsu/verb/Madaradimension()
			src.verbs -= new /mob/jutsu/verb/Madarateleporte()
			src.verbs -= new /mob/jutsu/verb/Madaratele()
			src.verbs -= new /mob/jutsu/verb/KamuiG()
			src.verbs -= new /mob/jutsu/verb/AntiMS()
			src.verbs -= new /mob/jutsu/verb/Tempo()
			src.verbs -= new /mob/Konan/verb/KamiNoMakushi()
			src.verbs -= new /mob/Konan/verb/KamiNoTsubasa()
			src.verbs -= new /mob/Konan/verb/ShikigamiNoMaiNori()
			src.verbs -= new /mob/Konan/verb/ShikigamiNoMai()
			src.verbs -= new /mob/Konan/verb/KagerouSair()
			src.verbs -= new /mob/Konan/verb/KamiNoChissokushi()
			src.verbs -= new /mob/Konan/verb/KamiBunshin()
			src.verbs -= new /mob/Konan/verb/KamiMoku()
			src.verbs -= new /mob/jutsu/verb/SasoArmor()
			src.verbs -= new /mob/Sasori/verb/SHM()
			src.verbs -= new /mob/jutsu/verb/Criarven()
			src.verbs -= new /mob/jutsu/verb/Envenenar()
			src.verbs -= new /mob/Sasori/verb/MarioneteShield()
			src.subpain=0
			src.verbs -= new /mob/Zetsu/verb/FurusakiNoJutsu()
			src.verbs -= new /mob/zetsu2/verb/RoushinNoJutsu()
			src.verbs -= new /mob/zetsu2/verb/CaradaKuuinNoJutsu()
			src.verbs -= new /mob/zetsu2/verb/ZetsuArmor()
			src.verbs -= new /mob/zetsu2/verb/KagerouSair()
			src.verbs -= new /mob/zetsu2/verb/KagerouVila()
			src.verbs -= new /mob/deidara/verb/Criararg()
			src.verbs -= new /mob/deidara/verb/Plantarexplosivo()
			src.verbs -= new /mob/deidara/verb/Explodearg()
			src.verbs -= new /mob/deidara/verb/Argarmor()
			src.verbs -= new /mob/deidara/verb/Argarmor2()
			src.verbs -= new /mob/deidara/verb/Passaro()
			src.verbs -= new /mob/Deidara/verb/C3()
			src.verbs -= new /mob/Deidara/verb/C4()
			src.verbs -= new /mob/Deidara/verb/C5()
			src.verbs -= new /mob/Deidara/verb/CO()
			src.verbs -= new /mob/deidara/verb/DeidaraBunshin()
			src.verbs -= new /mob/hidan/verb/BloodSeal()
			src.verbs -= new /mob/hidan/verb/Limpar()
			src.verbs -= new /mob/hidan/verb/TirarSangue()
			src.verbs -= new /mob/jutsu/verb/SSS2()
			src.verbs -= new /mob/Sword/verb/ChakraA()
			src.verbs -= typesof(/mob/SubHokage/verb)
			src.verbs -= new /mob/ssskushimaru/verb/jigumunui()
			src.verbs -= new /mob/sssRINGO/verb/rakuray()
			src.verbs -= new /mob/sword/verb/Atacar_com_Espada2()
			src.verbs -= new /mob/sssRINGO/verb/RRAIGA()
			src.verbs -= new /mob/sssjinin/verb/MarteloK()
			SubAkatSave()
/*			for(var/obj/EspadaShibuki/ES in src) del ES
			for(var/obj/SSSs3/SAS in src) del SAS
			for(var/obj/SSSs2/KHZ in src) del KHZ
			for(var/obj/EspadaKiba/EK in src) del EK
			for(var/obj/EspadaKabutowari/EKW in src) del EKW
			for(var/obj/EspadaHiramekari/HR in src) del HR*/
			src.SalvarAgora()




mob
	verb
		Send_File(mob/m in view(usr),F as file)
			set hidden = 1
			switch(alert(m,"[usr] está tentando te mandar o arquivo [F].  Você gostaria de fazer o download?","**Transferência de Arquivos**","Sim","Não"))
				if("Sim")
					alert(usr,"[m] aceitou o arquivo","**Arquivo aceito**")
					m<<ftp(F)
				if("Não")
					alert(usr,"[m] declined the file","**File Declined**")

mob/verb/whisper(mob/M in oview(),msg as text)

	set name = "Sussurrar"
	if(src.testing==1||src.muted == 1)
		src<<"Não agora!"
		return
	else
		msg=cuttext(msg)
		M<<"<font size=2><font color=blue><b><i>[usr] sussura- [msg]"
		usr<<"<font size=2><font color=blue><b><i>Você sussura para [M]- [msg]"

var
	Bugs = null//The var for the logging
	Sug = null

mob
	verb
		Sair_Esquadrao()

			switch(input("Tem certeza que deseja trair seu Sensei?",text)in list("Sim","Não"))
				if("Sim")
					usr.squads=0
					usr.esquadrao=""
					usr.verbs -= typesof(/mob/Squads/verb)
					usr.verbs -= /mob/jutsu/verb/Resetar_Recrutas
					usr.verbs -= /mob/Squads/verb/Falar_Esquadrao
				else
					usr<<"Boa idéia."


obj/F_damage_num
	layer = F_damage_layer
	name = ""
	icon_state = ""
	var
		F_damageValue
mob
	proc
		RecuperandoChakra()
			recu
			if(usr.inkyuubi||usr.inhachibi||usr.innibi||usr.insanbi||usr.inyonbi||usr.ingobi||usr.inrokubi||usr.insishibi||usr.insishibi||usr.inbadass||usr.sennin||usr.mokarmor||usr.armorkisame||usr.Byakugo)
				return
			if(usr.chakra<=0)
				return
			if(usr.chakra >= usr.Mchakra)
				usr.chakra = usr.Mchakra
				sleep(50)
				goto recu
			else
				if(usr.chakraN<=300)
					usr.chakra += usr.Mchakra/100
					sleep(150)
					goto recu
				if(usr.chakraN>300&&usr.chakraN<=600)
					usr.chakra += usr.Mchakra/100
					sleep(130)
					goto recu
				if(usr.chakraN>600&&usr.chakraN<=1000)
					usr.chakra += usr.Mchakra/100
					sleep(110)
					goto recu
				if(usr.chakraN>1000&&usr.chakraN<=2000)
					usr.chakra += usr.Mchakra/100
					sleep(90)
					goto recu
				if(usr.chakraN>2000&&usr.chakraN<=3000)
					usr.chakra += usr.Mchakra/100
					sleep(70)
					goto recu
				if(usr.chakraN>3000&&usr.chakraN<=10000)
					usr.chakra += usr.Mchakra/100
					sleep(60)
					goto recu
				if(usr.chakraN>10000)
					usr.chakra += usr.Mchakra/100
					sleep(50)
					goto recu


mob
	proc
		Recsta()
			recust
			if(usr.inkyuubi||usr.inhachibi||usr.innibi||usr.insanbi||usr.inyonbi||usr.ingobi||usr.inrokubi||usr.insishibi||usr.insishibi||usr.inbadass||usr.sennin||usr.mokarmor||usr.armorkisame||usr.Byakugo)
				return
			if(usr.stamina<=0)
				return
			if(usr.stamina >= usr.Mstamina)
				usr.stamina = usr.Mstamina
				sleep(50)
				goto recust
			else
				if(usr.Mstamina<=3000)
					usr.stamina += usr.Mstamina/100
					sleep(150)
					goto recust
				if(usr.Mstamina>3000&&usr.Mstamina<=6000)
					usr.stamina += usr.Mstamina/100
					sleep(130)
					goto recust
				if(usr.Mstamina>6000&&usr.Mstamina<=10000)
					usr.stamina += usr.Mstamina/100
					sleep(110)
					goto recust
				if(usr.Mstamina>10000&&usr.Mstamina<=20000)
					usr.stamina += usr.Mstamina/100
					sleep(90)
					goto recust
				if(usr.Mstamina>20000&&usr.Mstamina<=30000)
					usr.stamina += usr.Mstamina/100
					sleep(70)
					goto recust
				if(usr.Mstamina>30000&&usr.Mstamina<=40000)
					usr.stamina += usr.Mstamina/100
					sleep(60)
					goto recust
				if(usr.Mstamina>50000)
					usr.stamina += usr.Mstamina/100
					sleep(50)
					goto recust


mob
	proc
		Rechp()
			recuhp
			if(usr.inkyuubi||usr.inhachibi||usr.innibi||usr.insanbi||usr.inyonbi||usr.ingobi||usr.inrokubi||usr.insishibi||usr.insishibi||usr.inbadass||usr.sennin||usr.mokarmor||usr.armorkisame||usr.Byakugo)
				return
			if(usr.health<=0||usr.gate8)
				return
			if(usr.health >= usr.maxhealth)
				usr.health = usr.maxhealth
				sleep(50)
				goto recuhp
			else
				if(usr.maxhealth<=500)
					usr.health += usr.maxhealth/200
					sleep(150)
					goto recuhp
				if(usr.maxhealth>3000&&usr.maxhealth<=6000)
					usr.health += usr.maxhealth/200
					sleep(130)
					goto recuhp
				if(usr.maxhealth>6000&&usr.maxhealth<=10000)
					usr.health += usr.maxhealth/200
					sleep(110)
					goto recuhp
				if(usr.maxhealth>10000&&usr.maxhealth<=20000)
					usr.health += usr.maxhealth/200
					sleep(90)
					goto recuhp
				if(usr.maxhealth>20000&&usr.maxhealth<=30000)
					usr.health += usr.maxhealth/200
					sleep(70)
					goto recuhp
				if(usr.maxhealth>30000&&usr.maxhealth<=40000)
					usr.health += usr.maxhealth/200
					sleep(60)
					goto recuhp
				if(usr.maxhealth>50000)
					usr.health += usr.maxhealth/200
					sleep(50)
					goto recuhp


proc/F_damage(atom/Target, value, color = "#ff0000")
	if(!(copytext(color, 1, 2) == "#"))
		color = "#[color]"
	if(!(F_validColor(color)))
		world.log << "Error: [Target], [value], [color]"
		return

	var/icon/I = new(F_damage_icon)
	I.Blend(color, ICON_MULTIPLY)

	var/list/Numbers = new()
	var/string = num2text(value)
	var/counter = 0
	var/strLength = length(string)
	while(string)
		var/curStrLength = length(string)
		var/localValue	= copytext(string, curStrLength)
		var/obj/F_damage_num/O = new(null)
		O.pixel_x = counter*(-7) + Target.pixel_x + round(strLength*7/2)+F_damage_numWidth
		O.icon = I
		O.pixel_y = Target.pixel_y + 30
		O.F_damageValue = localValue
		Numbers += O
		string = copytext(string, 1, curStrLength)
		counter++

	var/atom/target = Target
	if(ismob(Target) || isobj(Target)) target = Target:loc
	for(var/obj/F_damage_num/O in Numbers)
		O.loc = target
		flick(O.F_damageValue, O)
		spawn(10)
			del O

proc/F_validColor(value)
	var/list/validValues = list("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f")
	value = "[value]"
	var/valLength = length(value)
	if(valLength <> 4 && valLength <> 7)
		world.log << "Invalid length for color sent to F_damage. - [value]"
		return FALSE
	for(var/I in 2 to valLength)
		if(!(lowertext(copytext(value,I, I+1)) in validValues))
			world.log << "Invalid characters in color sent to F_damage. - [value]"
			return FALSE
	return TRUE


mob
	verb
		Suicide()
			set hidden = 1
			if(src in PlayersSuporte)
				PlayersSuporte.Remove(src)
				src<<"Você saiu do Suporte."
			if(src.deslogado)
				usr<<"Você não pode usar esse comando sem ter logado no jogo"
				return
			if(usr.naopodesuicidar)
				usr<<"Não pode suicidar até o fim do Jutsu!"
				return
			if(usr.climbing)
				usr<<"Não enquanto upa HP!"
				return
			usr.verbs -= /mob/cliff/verb/TreinarHP
			if(usr.naart)
				usr.naart = 0
				usr.loc = locate(456,174,3)
				temarenat=0
				world<<output("[usr] suicidou na Arena Tradicional, agora ela não está mais em uso!","output2.sistema")
				for(var/mob/M in world)
					if(M.client)
						if(M.z==4&&M.x>344&&M.x<382&&M.y>5&&M.y<36)
							M.naart=0
							M.Suicides()
			if(usr.najau)
				usr.najau = 0
				usr.loc = locate(456,174,3)
				temjaula=0
				world<<output("[usr] suicidou na Arena: Jaula, agora ela não está mais em uso!","output2.sistema")
				for(var/mob/M in world)
					if(M.client)
						if(M.z==2&&M.x>278&&M.x<294&&M.y>264&&M.y<282)
							M.najau=0
							M.Suicides()
			if(usr.naare)
				usr.naare = 0
				usr.loc = locate(456,174,3)
				temarena=0
				world<<output("[usr] suicidou na Arena, agora ela não está mais em uso!","output2.sistema")
				for(var/mob/M in world)
					if(M.client)
						if(M.z==10&&M.x>447&&M.x<510&&M.y>38&&M.y<70)
							M.naare=0
							M.Suicides()
			if(src.inizanami)
				usr<<"Você precisa sair da dimensão primeiro!"
				return
			if(src.jailed==1)
				usr<<"Você está na jail, não pode fazer isso"
				world<<"<b>[usr]</b> tentou usar o comando Desbugar enquanto estava na jail"
				return
			if(src.onwater==1)
				src.onwater=0
				return
			if(usr.cdsuicidio)
				usr << "<b>Cooldown:</b> Aguarde para se <b>Suicidar</b> novamente!"
				return
			if(src.Frozen||src.froze)
				usr<<"Você está paralizado, não pode fazer isso. <b>(Se estiver na tela de login, salve, relogue, e use esse comando novamente)</b>"
				return
			if(src.cast)
				usr<<"Você está com algum delay especial, não pode fazer isso. <b>(Se estiver na tela de login, salve, relogue, e use esse comando novamente)</b>"
				return
			if(usr.dimension)
				usr<<"Voce não pode fazer isso enquanto estiver em outra dimensão"
				return
			if(usr.Kshibari)
				usr<<"Você não pode fazer isso enquanto usa o Kage Mane. Se estiver bugado, relogue."
				return
			if(src.parado)return
			else
				if(usr.cdsuicidio)return
				usr.cdsuicidio=1
				spawn()usr.Cooldown(600,"Suicide")
				if(usr.libering==1)
					usr<<"Você parou de Liberar Chakra!"
					usr.libering=0
					usr.cannin=1
					usr.froze=0
					usr.move = 1
					spawn(600)
						cannin=0
				if(usr.vlibering==1)
					usr<<"Você parou de Liberar Chakra!"
					usr.vlibering=0
					usr.vcannin=1
					usr.froze=0
					usr.move = 1
					spawn(600)
						vcannin=0
				if(usr.concing==1)
					usr<<"Você parou de Concentrar!"
					usr.concing=0
					usr.cangen=1
					usr.froze=0
					usr.move = 1
					spawn(600)
						cangen=0
				if(usr.vconcing==1)
					usr<<"Você parou de Concentrar!"
					usr.vconcing=0
					usr.vcangen=1
					usr.froze=0
					usr.move = 1
					spawn(600)
						vcangen=0
				if(usr.taitreino==1)
					usr<<"Você parou de Treinar Taijutsu!"
					usr.taitreino=0
					usr.cantai=1
					usr.froze=0
					usr.move = 1
					spawn(600)
						cantai=0
				if(usr.vtaitreino==1)
					usr<<"Você parou de Treinar Taijutsu!"
					usr.vtaitreino=0
					usr.canvtai=1
					usr.froze=0
					usr.move = 1
					spawn(600)
						canvtai=0
				if(usr.armastreino==1)
					usr<<"Você parou de Treinar Armas!"
					usr.armastreino=0
					usr.canarmas=1
					usr.froze=0
					usr.move = 1
					spawn(600)
						canarmas=0
				if(usr.varmastreino==1)
					usr<<"Você parou de Treinar Armas!"
					usr.varmastreino=0
					usr.vcanarmas=1
					usr.froze=0
					usr.move = 1
					spawn(600)
						vcanarmas=0
				if(usr.LogSecretotaitrain==1)
					usr<<"Você parou de Treinar Taijutsu!"
					usr.LogSecretotaitrain=0
					usr.canLogSecretotaitrain=1
					usr.froze=0
					usr.move = 1
					spawn(600)
						vcanarmas=0
				if(usr.LogSecretonintrain==1)
					usr<<"Você parou de Treinar Ninjutsu!"
					usr.LogSecretonintrain=0
					usr.canLogSecretonintrain=1
					usr.froze=0
					usr.move = 1
					spawn(600)
						vcanarmas=0
				if(usr.LogSecretogentrain==1)
					usr<<"Você parou de Treinar Genjutsu!"
					usr.LogSecretogentrain=0
					usr.canLogSecretogentrain=1
					usr.froze=0
					usr.move = 1
					spawn(600)
						vcanarmas=0
				if(usr.LogSecretoarmtrain==1)
					usr<<"Você parou de Treinar Armas!"
					usr.LogSecretoarmtrain=0
					usr.canLogSecretoarmtrain=1
					usr.froze=0
					usr.move = 1
					spawn(600)
						vcanarmas=0
				if(src.mind)
					world<<"<font color=white><b>>><u>Info</u><<: <font color=green><b>[src]</b></font> se suicidou através do jutsu troca de mente!</font></b>"
				if(src.koto)
					world<<"<font color=white><b>>><u>Info</u><<: <font color=green><b>[src]</b></font> se suicidou através do jutsu Kotoamatsukami!</font></b>"
				src.Suicides()

mob
	proc
		Suicides()
			if(src.libering==1)
				usr<<"Você parou de Liberar Chakra!"
				src.libering=0
				src.cannin=1
				src.Frozen=0
				src.move = 1
				spawn(600)
					cannin=0
			if(src.vlibering==1)
				usr<<"Você parou de Liberar Chakra!"
				src.vlibering=0
				src.vcannin=1
				src.Frozen=0
				src.move = 1
				spawn(600)
					vcannin=0
			if(src.concing==1)
				usr<<"Você parou de Concentrar!"
				src.concing=0
				src.cangen=1
				src.Frozen=0
				src.move = 1
				spawn(600)
					cangen=0
			if(src.vconcing==1)
				usr<<"Você parou de Concentrar!"
				src.vconcing=0
				src.vcangen=1
				src.Frozen=0
				src.move = 1
				spawn(600)
					vcangen=0
			if(src.taitreino==1)
				usr<<"Você parou de Treinar Taijutsu!"
				src.taitreino=0
				src.cantai=1
				src.Frozen=0
				src.move = 1
				spawn(600)
					cantai=0
			if(src.vtaitreino==1)
				usr<<"Você parou de Treinar Taijutsu!"
				src.vtaitreino=0
				src.canvtai=1
				src.Frozen=0
				src.move = 1
				spawn(600)
					canvtai=0
			if(src.armastreino==1)
				usr<<"Você parou de Treinar Armas!"
				src.armastreino=0
				src.canarmas=1
				src.Frozen=0
				src.move = 1
				spawn(600)
					canarmas=0
			if(src.varmastreino==1)
				usr<<"Você parou de Treinar Armas!"
				src.varmastreino=0
				src.vcanarmas=1
				src.Frozen=0
				src.move = 1
				spawn(600)
					vcanarmas=0
			if(src.LogSecretotaitrain==1)
				usr<<"Você parou de Treinar Taijutsu!"
				src.LogSecretotaitrain=0
				src.canLogSecretotaitrain=1
				src.Frozen=0
				src.move = 1
				spawn(600)
					src.canLogSecretotaitrain=0
			if(src.LogSecretonintrain==1)
				usr<<"Você parou de Treinar Ninjutsu!"
				src.LogSecretonintrain=0
				src.canLogSecretonintrain=1
				src.Frozen=0
				src.move = 1
				spawn(600)
					src.canLogSecretonintrain=0
			if(src.LogSecretogentrain==1)
				usr<<"Você parou de Treinar Genjutsu!"
				src.LogSecretogentrain=0
				src.canLogSecretogentrain=1
				src.Frozen=0
				src.move = 1
				spawn(600)
					src.canLogSecretogentrain=0
			if(src.LogSecretoarmtrain==1)
				usr<<"Você parou de Treinar Armas!"
				src.LogSecretoarmtrain=0
				src.canLogSecretoarmtrain=1
				src.Frozen=0
				src.move = 1
				spawn(600)
					src.canLogSecretoarmtrain=0
			src.overlays-='kyuu.dmi'
			src.inkaku=0
			for(var/obj/shibaritrail/T in world)
				if(T.owner==src)
					del(T)
			for(var/obj/shibari/AS in world)
				for(var/mob/M in world)
					if(M.key==AS.capturou)
						M.Frozen=0
						M.caught=0
						M.overlays-='kagekubi.dmi'
						M.overlays-='kagekubi.dmi'
						M.overlays-='kagekubi.dmi'
						M.kubi=0
				if(AS.owner==src)
					del(AS)
			src.kagemane=0
			src.ryuusakyuu=0
			src.Move_Delay=0.7
			src.overlays-='kakuA.dmi'
			src.swordD=0
			src.csfloresta=0
			src.csdeserto=0
			src.atacando=0
			src.rastreando=0
			src.kuchiyoseusing=0
			src.overlays -= 'aura.dmi'
			src.overlays-='kaku2.dmi'
			src.overlays -='kaku.dmi'
			src.earthscroll=0
			src.heavenscroll=0
			if(Chuunintime||Chuuninfloresta)
				if(src.deathforest)
					if(src.z==3||src.z==3)
						world<<"\red <b>Chuunin Info:</b>\white <b>[src]</b> foi desclassificado por se Suicidar!"
						src.testefeito=0
						src.deathforest=0
						src.loc=locate(456,174,3)
						//src.SalvarAgora()
						return
			src.def=0
			src.inNHJ=0
			src.kawa=0
			src.jashin=0
			usr.flute=0
			usr.colar=0
			usr.rinne=0
			src.testefeito=0
			src.hakkando=0
			usr.bya=0
			usr.trainando=0
			src.underlays-='hyuugacircle.dmi'
			src.overlays-='hyuugacircle.dmi'
			src.YT=0
			src.froze=0
			src.Frozen=0
			src.gama=0
			src.cast=0
			src.parado=0
			src.invisibility=0
			src.gkai=0
			usr.ggkai=0
			src.overlays -= 'staraura2.dmi'
			src.overlays-='staraura2Top.dmi'
			src.antiMS=0
			src.overlays-='bdsanbi.dmi'
			src.overlays-='bdyonbi.dmi'
			src.overlays-='bdkyuu.dmi'
			src.overlays-='bdgobi.dmi'
			src.overlays-='bdroku.dmi'
			src.overlays-='bdshuka.dmi'
			src.overlays-='bdhachi.dmi'
			src.overlays-='bdsichi.dmi'
			src.overlays-='bdnibi.dmi'
			src.overlays-=/obj/SunaShigure1
			src.overlays-=/obj/SunaShigure2
			src.overlays-=/obj/SunaShigure3
			src.overlays-=/obj/SunaShigure4
			src.overlays-=/obj/SunaShigure5
			src.overlays-=/obj/SunaShigure6
			src.overlays-=/obj/SunaShigure7
			src.overlays-=/obj/SunaShigure8
			src.overlays-=/obj/SunaShigure9
			src.overlays-=/obj/SunaShigure10
			src.overlays-=/obj/SunaShigure11
			src.overlays-=/obj/SunaShigure12
			src.overlays-=/obj/SunaShigure13
			src.overlays-=/obj/SunaShigure14
			src.overlays-=/obj/SunaShigure15
			src.overlays-=/obj/SunaShigure16
			src.overlays-=/obj/SunaShigure17
			src.overlays-=/obj/SunaShigure18
			src.overlays-=/obj/SunaShigure19
			src.overlays-=/obj/SunaShigure20
			src.overlays-=/obj/SunaShigure21
			src.overlays-=/obj/SunaShigure22
			src.overlays-=/obj/SunaShigure23
			src.overlays-=/obj/SunaShigure24
			src.overlays-=/obj/SunaShigure25
			src.inbadass=0
			src.elementojunto=0
			src.molhado=0
			src.overlays-=/obj/mar1
			src.overlays-=/obj/mar2
			src.overlays-=/obj/mar3
			src.overlays-=/obj/mar4
			src.overlays-=/obj/mar5
			src.overlays-=/obj/mar6
			src.overlays-=/obj/mar7
			src.overlays-=/obj/mar8
			src.overlays-=/obj/mar9
			src.overlays-=/obj/mar10
			src.haveBlood=0
			src.client.view=8
			src.icon_state = ""
			src.ride=0
			if(src.Henge)
				src.overlays = null
				src.Henge = 0
				var/list/O = src.overlays.Copy()
				src.overlays = O.Copy()
				src.icon = src.Oicon
			src.tsuki=0
			src.sincronia=0
			src.kuchiyoseusing=0
			for(var/mob/Big_Snake/B in world)
				if(B.owner==src)
					src.ride=0
					src.Frozen=0
					src.kuchiyoseusing=0
					del(B)
			for(var/mob/Medium_Snake/B in world)
				if(B.owner==src)
					src.ride=0
					src.Frozen=0
					src.kuchiyoseusing=0
					del(B)
			for(var/mob/Big_Slug/B in world)
				if(B.owner==src)
					src.ride=0
					src.kuchiyoseusing=0
					src.Frozen=0
					del(B)
			for(var/mob/Medium_Slug/B in world)
				if(B.owner==src)
					src.ride=0
					src.kuchiyoseusing=0
					src.Frozen=0
					del(B)
			for(var/mob/Gamabunta/B in world)
				if(B.owner==src)
					src.ride=0
					src.kuchiyoseusing=0
					src.Frozen=0
					del(B)
			for(var/mob/Medium_Frog/B in world)
				if(B.owner==src)
					src.ride=0
					src.Frozen=0
					src.kuchiyoseusing=0
					del(B)
			for(var/mob/Bee/B in world)
				if(B.owner==src)
					src.ride=0
					src.kuchiyoseusing=0
					src.Frozen=0
					del(B)
			for(var/mob/Medium_Bee/B in world)
				if(B.owner==src)
					src.ride=0
					src.Frozen=0
					src.kuchiyoseusing=0
					del(B)
			for(var/mob/Sdog/B in world)
				if(B.SDowner==src)
					src.ride=0
					src.kuchiyoseusing=0
					src.Frozen=0
					del(B)
			for(var/mob/Sdog/B in world)
				if(B.SDowner==src)
					src.ride=0
					src.Frozen=0
					src.kuchiyoseusing=0
					del(B)
			for(var/mob/KyuubiR/B in world)
				if(B.owner==src)
					src.ride=0
					src.kuchiyoseusing=0
					src.Frozen=0
					del(B)
			for(var/mob/KyuubiR/B in world)
				if(B.owner==src)
					src.ride=0
					src.Frozen=0
					src.kuchiyoseusing=0
					del(B)
			src.Bloodperson=null
			src.verbs -= new /mob/gaara2/verb/AttackNorth()
			src.verbs -= new /mob/gaara2/verb/AttackSouth()
			src.verbs -= new /mob/gaara2/verb/AttackEast()
			src.verbs -= new /mob/gaara2/verb/AttackWest()
			src.verbs -= new /mob/jiraya2/verb/AttackNorth()
			src.verbs -= new /mob/jiraya2/verb/AttackSouth()
			src.verbs -= new /mob/jiraya2/verb/AttackWest()
			src.verbs -= new /mob/jiraya2/verb/AttackEast()
			src.verbs -= /mob/jutsu/verb/Sharinganilluminate
			src.verbs -= /mob/uchiha/verb/Sharinganfreeze
			src.verbs -= /mob/uchiha/verb/Sharingangenjutsu
			src.verbs -= /mob/uchiha/verb/Tsukiyomi
			src.verbs -= /mob/jutsu/verb/Genjcounter
			src.verbs -= /mob/jutsu/verb/Genjlv3
			src.verbs -= new /mob/uzumaki/verb/Rasenr()
			src.verbs -= new /mob/jutsu/verb/AtacarSe()
			src.verbs -= new /mob/jutsu/verb/Senninilu()
			src.verbs -= new /mob/jutsu/verb/Frs2()
			src.verbs -= new /mob/jutsu/verb/SenninBunshin()
			src.see_invisible = 0
			src.overlays -='Rainarmor.dmi'
			src.Rainarmor=0
			src.karura=0
			src.copy=0
			PessoaEvento.Remove(src)
			src.no_evento=0
			src.agua=0
			src.Kaiten=0
			src.kamui2=0
			//src.treinamento=0
			src.overlays -= 'cloud.dmi'
			src.overlays -= 'wings.dmi'
			src.overlays -= 'peacock.dmi'
			src.overlays-='staraura.dmi'
			src.overlays-='WaterStrom.dmi'
			src.overlays-='rockball.dmi'
			src.overlays-='prisaoe.dmi'
			src.suika=0
			src.genjando=0
			src.overlays-='rasenganpain.dmi'
			src.mson=0
			src.compy=0
			src.atirando=0
			src.kai=0
			src.NoDuelo = 0
			src.Weights=0
			src.mask=0
			src.overlays-='auraraikage.dmi'
			src.Move_Delay=0.7
			src.sapo=0
			src.prisaomultipla=0
			src.reserving=0
			src.overlays-='Iarmor.dmi'
			src.overlays-='Futarmor.dmi'
			src.overlays-='gelo.dmi'
			src.overlays-='Esphere.dmi'
			src.kbon=0
			src.kbon2=0
			src.atacando=0
			src.overlays-='libs.dmi'
			src.overlays-='vlib.dmi'
			src.overlays-='vcon.dmi'
			src.overlays-='vmed.dmi'
			src.overlays-='Aura2.dmi'
			src.overlays-='mediter(1).dmi'
			src.overlays-='vento.dmi'
			src.overlays-='ItachiAmaretsu.dmi'
			src.captured=0
			src.caught=0
			src.froze=0
			src.preso=0
			src.buff=0
			src.fantasma=0
			src.dimension=0
			src.parado=0
			src.Frozen=0
			src.poisoned=0
			src.burned=0
			src.acido=0
			src.aura=0
			src.Warmor=0
			src.overlays -= 'Wprison.dmi'
			src.counter=0
			src.overlays-='counter.dmi'
			src.gc=0
			src.overlays-='counter.dmi'
			src:sight &= ~BLIND
			src.buoyu=0
			src.tagset=0
			src.Flight=0
			src.density = 1
			src.overlays -= 'wings.dmi'
			src.overlays -= 'wings.dmi'
			src.verbs -= new /mob/tag/verb/Explode
			src.verbs -= new /mob/tag/verb/Explode
			src.verbs -= new /mob/tag/verb/Explode
			src.verbs -= new /mob/tag/verb/Explode
			src.verbs -= new /mob/tag/verb/Explode
			src.stop = 0
			src.dead=0
			src.resting = 0
			src.doing = 0
			src.Frozen = 0
			src.Moveing = 0
			src.cast = 0
			src.doing = 0
			src.Mountain=0
			src.onwater=0
			src.onpulo=0
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
			src.overlays -= 'lotus.dmi'
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
			src.SHarmor = 0
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
			src.finals=0
			src.inmission=0
			src.inkyuubi=0
			src.innibi=0
			src.insanbi=0
			src.inyonbi=0
			src.ingobi=0
			src.inrokubi=0
			src.insishibi=0
			src.inhachibi=0

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
			src.overlays-=/obj/CCurseSeal3T
			src.overlays-=/obj/CKyuubi4Tails
			src.overlays-=/obj/TKyuubi4Tails
			src.overlays-=/obj/BLKyuubi4Tails
			src.overlays-=/obj/BRKyuubi4Tails
			src.overlays-=/obj/TLKyuubi4Tails
			src.overlays-=/obj/TRKyuubi4Tails

			src.overlays-=/obj/Cnekomata2Tails
			src.overlays-=/obj/Tnekomata2Tails
			src.overlays-=/obj/SanbiAuraT
			src.overlays-=/obj/CSanbi3Tails
			src.overlays-=/obj/T1Sanbi3Tails
			src.overlays-=/obj/BLSanbi3Tails
			src.overlays-=/obj/BRSanbi3Tails
			src.overlays-=/obj/TLSanbi3Tails
			src.overlays-=/obj/TRSanbi3Tails
			src.overlays-=/obj/CYonbi4Tails
			src.overlays-=/obj/TYonbi4Tails
			src.overlays-=/obj/BLYonbi4Tails
			src.overlays-=/obj/BRYonbi4Tails
			src.overlays-=/obj/TLYonbi4Tails
			src.overlays-=/obj/TRYonbi4Tails
			src.overlays-=/obj/CGobi5Tails
			src.overlays-=/obj/TGobi5Tails
			src.overlays-=/obj/BLGobi5Tails
			src.overlays-=/obj/BRGobi5Tails
			src.overlays-=/obj/TLGobi5Tails
			src.overlays-=/obj/TRGobi5Tails
			src.overlays-=/obj/CRokubi6Tails
			src.overlays-=/obj/TRokubi6Tails
			src.overlays-=/obj/BLRokubi6Tails
			src.overlays-=/obj/BRRokubi6Tails
			src.overlays-=/obj/TLRokubi6Tails
			src.overlays-=/obj/TRRokubi6Tails
			src.overlays-=/obj/CSishibi7Tails
			src.overlays-=/obj/TSishibi7Tails
			src.overlays-=/obj/BLSishibi7Tails
			src.overlays-=/obj/BRSishibi7Tails
			src.overlays-=/obj/TLSishibi7Tails
			src.overlays-=/obj/TRSishibi7Tails
			src.overlays-=/obj/CHachibi8Tails
			src.overlays-=/obj/THachibi8Tails
			src.overlays-=/obj/BLHachibi8Tails
			src.overlays-=/obj/BRHachibi8Tails
			src.overlays-=/obj/TLHachibi8Tails
			src.overlays-=/obj/TRHachibi8Tails
			src.overlays-='nekomata.dmi'
			src.overlays-='Sanbi1.dmi'
			src.overlays-='Sanbi Aura.dmi'
			src.overlays-='Yonbi Aura.dmi'
			src.overlays-='Gobi Aura.dmi'
			src.overlays-='Hachibi Aura.dmi'
			src.overlays-='Sishibi Aura.dmi'
			src.overlays-='Rokubi Aura.dmi'

			src.overlays-=/obj/CCurseSeal3T
			src.overlays-=/obj/TCurseSeal3T
			src.overlays-=/obj/BLCurseSeal3T
			src.overlays-=/obj/BRCurseSeal3T
			src.overlays-=/obj/TLCurseSeal3T
			src.overlays-=/obj/TRCurseSeal3T
			src.overlays-=/obj/CCurseSeal3White
			src.overlays-=/obj/TCurseSeal3White
			src.overlays-=/obj/BLCurseSeal3White
			src.overlays-=/obj/BRCurseSeal3White
			src.overlays-=/obj/TLCurseSeal3White
			src.overlays-=/obj/TRCurseSeal3White
			src.overlays-=/obj/CCurseSeal3Black
			src.overlays-=/obj/TCurseSeal3Black
			src.overlays-=/obj/BLCurseSeal3Black
			src.overlays-=/obj/BRCurseSeal3Black
			src.overlays-=/obj/TLCurseSeal3Black
			src.overlays-=/obj/TRCurseSeal3Black
			src.overlays-=/obj/CCurseSeal3Blue
			src.overlays-=/obj/TCurseSeal3Blue
			src.overlays-=/obj/BLCurseSeal3Blue
			src.overlays-=/obj/BRCurseSeal3Blue
			src.overlays-=/obj/TLCurseSeal3Blue
			src.overlays-=/obj/TRCurseSeal3Blue
			src.overlays-=/obj/CCurseSeal3Red
			src.overlays-=/obj/TCurseSeal3Red
			src.overlays-=/obj/BLCurseSeal3Red
			src.overlays-=/obj/BRCurseSeal3Red
			src.overlays-=/obj/TLCurseSeal3Red
			src.overlays-=/obj/TRCurseSeal3Red
			src.overlays-=/obj/CCurseSeal3Vamp
			src.overlays-=/obj/TCurseSeal3Vamp
			src.overlays-=/obj/BLCurseSeal3Vamp
			src.overlays-=/obj/BRCurseSeal3Vamp
			src.overlays-=/obj/TLCurseSeal3Vamp
			src.overlays-=/obj/TRCurseSeal3Vamp
			src.overlays-=/obj/CCurseSeal3Yellow
			src.overlays-=/obj/TCurseSeal3Yellow
			src.overlays-=/obj/BLCurseSeal3Yellow
			src.overlays-=/obj/BRCurseSeal3Yellow
			src.overlays-=/obj/TLCurseSeal3Yellow
			src.overlays-=/obj/TRCurseSeal3Yellow
			src.overlays -= 'BaseT Wing Shield.dmi'
			src.overlays -= 'Base white Wing Shield.dmi'
			src.overlays -= 'BaseBlack Wing Shield.dmi'
			src.overlays -= 'BaseBlue Wing Shield.dmi'
			src.overlays -= 'BaseRed Wing Shield.dmi'
			src.overlays -= 'BaseVamp Wing Shield.dmi'
			src.overlays -= 'BaseYellow Wing Shield.dmi'
			src.overlays-='Kyuubi Aura Shield.dmi'
			src.overlays-='Yonbi Aura Shield.dmi'
			src.overlays-='Sanbi Aura Shield.dmi'
			src.overlays-='Rokubi Aura Shield.dmi'
			src.overlays-='Hachibi Aura Shield.dmi'
			src.KASS=0
			src.CSWS=0
			src.poisoned=0
			src.Apoisoned=0
			src.burned=0
			src.acido=0
			src.inthewar=0
			src.canlog10taitrain=0
			src.canlog10nintrain=0
			src.canlog10gentrain=0
			src.canlog10armtrain=0
			if(Chuunintime || Chuuninfloresta)
				if(src.z==30 || src.z==30)
					src.csfloresta=0
					src.sefodeulegal=1
					src<<"Você foi enviado ao Respawn por relogar na Floresta!"
					src.loc=locate(456,174,3)
			if(ChuunintimeS || ChuuninflorestaS)
				if(src.z==30 || src.z==30)
					src.csdeserto=0
					src.sefodeulegal=1
					src<<"Você foi enviado ao Respawn por relogar no Deserto!"
					src.loc=locate(456,174,3)
			if(src.rank=="Estudante")
				src.loc=locate(49,15,6)
			else
				src.loc=locate(456,174,3)
			return





mob
	verb
		Villagewho()
			set hidden = 1
			usr<<"<font color=blue>Membros da Vila [usr.Village] Onlines -"
			for(var/mob/M in world)
				if(M.Village == usr.Village){usr<<"<font color=green>{\icon[M][M.rank] ([M])"}
/*
mob
	verb
		ReputacaoVila()

			usr<<"<font size=4><font color=red>Reputação da Vila -"
			for(var/mob/M in world)
				if(M.Village == usr.Village&&M.repp==1)usr<<("<font color=green>{\icon[M][M.rep]-([M])-[M.Village]")

mob
	verb
		ReputacaoMundo()

			usr<<"<font size=4><font color=red>Reputação de shinobis no Mundo -"
			for(var/mob/M in world)
				if(M.repp==1)usr<<("<font color=green>{\icon[M][M.rep]-([M])-[M.Village]")
*/

var
	inwar = 0
	war1 = 0
	war2 = 0
	enemy = ""
	alli = ""
/*mob/hokage/verb/Declare_War()//a declare war verb
	var/list/villagew=list("Suna","Konoha","Oto","Kusa")
	var/war = input("Which village would you like to declare war on?")in villagew
	switch(alert(src,"Are you sure you want to declare war on [war]?",,"Sim","Não"))
		if("Sim")//they did so...
			if(war == src.Village)
				src << "You can't declare war upon your own village."
				return()// send em back
			else//otherwise
				world << "<b><font size = 2><font color = red>Announcement! [src.Village] has declared war on [war]"
				enemy = "[war]"
				alli = "[src.Village]"
				inwar = 1
				usr.loc = locate(97,50,11)
				war2 += 1
				usr.inwar2 = 1
				usr<<"OK you have joined the war!"
				for(var/mob/M in world)
					if(M.Village == "[war]")
						alert(M,"Go to war against [src.Village]?",,"Sim","Não")
						if("Sim")
							M.loc = locate(6,55,11)
							war1 += 1
							M.inwar1 = 1
							M<<"OK you have joined the war!"
							return()
						if("Não")
							usr<<"OK"
							return()
					if(M.Village == usr.Village)
						alert(M,"Go to war against [war]?",,"Sim","Não")
						if("Sim")
							M.loc = locate(97,50,11)
							war2 += 1
							M.inwar2 = 1
							M<<"OK you have joined the war!"
							return()
						if("Não")
							usr<<"OK"
							return()
					warcheck()
mob
	proc
		warcheck()
			sleep(100)
			for(var/mob/M in world)
				if(war1 == 0&&war2==0)
					return
				if(war1 == 0)
					world<<"<b><font size = 2><font color = red>Announcement! [alli] has defeated [enemy]!!"
					if(M.inwar2 == 1)
						M.Yen += rand(5000,6000)
						M.inwar2 = 0
						M.loc = locate(48,47,1)
					else if(M.inwar1 == 1)
						M.inwar1 = 0
						M.loc = locate(48,47,1)
						if(M.Yen >= 2000)
							M.Yen -= rand(1000,2000)
						else
							M.Yen = 0
				if(war2 == 0)
					world<<"<b><font size = 2><font color = red>Announcement! [enemy] has defeated [alli]!!"
					if(M.inwar1 == 1)
						M.Yen += rand(5000,6000)
						M.inwar1 = 0
					else if(M.inwar2 == 1)
						M.inwar2 = 0
						M.loc = locate(48,47,1)
						if(M.Yen >= 2000)
							M.Yen -= rand(1000,2000)
						else
							M.Yen = 0
				warcheck()
				*/

proc
	cuttext(msg as text)
		if(msg)
			if(length(msg)>400)
				msg = copytext(msg,1,400) + "...."
		return msg


mob
	proc
		TempoVIP()
			set background=1
/*			if(src.tempovip<=0)
				src.tempovip = 0
				src.Vip = 0
				src.verbs -= new /mob/Vip/verb/Teleporte()
//				src.verbs -= new /mob/Vip/verb/TrocarP()
//				src.verbs -= new /mob/Vip/verb/VMeditate()
				src.verbs -= new /mob/Vip/verb/VConcentrar()
				src.verbs -= new /mob/Vip/verb/VLiberarChakra()
				src.verbs -= new /mob/Star/verb/StarBarrier()
				src.verbs -= new /mob/jutsu/verb/Kai()
				src.verbs -= new /mob/star/verb/Aura()
				for(var/obj/Roupavip/B in src.contents)del(B)
				for(var/obj/Vipsword/R in src.contents)del(R)
			else
				src.tempovip--
				src.Vip = 1
			spawn(10)
				src.TempoVIP()*/

mob
	proc
		TempoDesafio()
			set background=1
			if(src.tempodesafio<=0)
				src.tempodesafio = 0
			else
				src.tempodesafio-=1
			spawn(10)
				src.TempoDesafio()

mob/var/tempovip=0


mob/verb/Help()
	set name ="Ajuda"
	set category = "HELP"
	switch(input("De que ajuda você precisa","HELP",) in list("Info Sobre Clas","Nao consigo pegar corpos no chao","Perdi jutsus elementais","Perdi itens","Minhas abas sumiram","Minha aba vip sumiu","Creditos","Desbugar Tela","Me concerte!","Informações do servidor","Cancelar"))
		if("Info Sobre Clas")
			spawn()usr << browse(Principal,"window=Principal;[htmlinfo]")
		if("Minhas abas sumiram")
			if(usr.Uchiha==1)
				usr<<"Suas skills foram devolvidas"
				usr.verbs += new /mob/uchiha/verb/Sharingan()
				usr.verbs += new /mob/jutsu/verb/HengeNoJutsu()
				usr.verbs += new /mob/jutsu/verb/Kawariminojutsu()
				usr.verbs += new /mob/jutsu/verb/BunshinNoJutsu()
				usr.verbs += new /mob/jutsu/verb/AtirarKunai()
				usr.verbs += new /mob/jutsu/verb/AtirarShuriken()
				usr.verbs += new /mob/jutsu/verb/Waterwalk()
			else
				usr<<"Suas skills foram devolvidas"
				usr.verbs += new /mob/jutsu/verb/HengeNoJutsu()
				usr.verbs += new /mob/jutsu/verb/Kawariminojutsu()
				usr.verbs += new /mob/jutsu/verb/BunshinNoJutsu()
				usr.verbs += new /mob/jutsu/verb/AtirarKunai()
				usr.verbs += new /mob/jutsu/verb/AtirarShuriken()
				usr.verbs += new /mob/jutsu/verb/Waterwalk()
		if("Nao consigo pegar corpos no chao")
			usr.carregandocorpo=0
			for(var/obj/pravenda/corponormal/B in usr.contents)
				del(B)
			for(var/obj/pravenda/corpouchiha/C in usr.contents)
				del(C)
		if("Perdi itens")
		if("Minha aba vip sumiu")
			if(usr.EhVip==1)
				usr.verbs += new /mob/Vip/verb/Teleporte()
//				usr.verbs += new /mob/Vip/verb/VMeditate()
				usr.verbs += new /mob/Vip/verb/VConcentrar()
				usr.verbs += new /mob/Vip/verb/VLiberarChakra()
//				usr.verbs += new /mob/Vip/verb/TrocarP()
				usr.verbs += new /mob/Star/verb/StarBarrier()
				usr.verbs += new /mob/jutsu/verb/Kai()
				usr.verbs += new /mob/star/verb/Aura()
		if("Desbugar Tela")
			if(usr.mson)
				usr<<"Você não pode usar isso enquanto o <b>Mangekyou Sharingan</b> estiver ativo"
				return
			if(usr.Perdeusharingan||usr.PerdeuByakugan||usr.PerdeuRinnegan||usr.PerdeuMS)
				usr<<"Você não pode usar isso enquanto não recupera sua visão!"
				return
			usr.loc=locate(20,55,5)
			usr.Frozen=0
			usr.client.view = 8
			spawn()usr.Cegar()
			usr.client.eye = usr
			usr.loc=locate(20,55,5)
			usr<<"Arrumado"
		if("Creditos")
			usr.Credits()

		if("Me concerte!")
			switch(input("O que você precisa","Help",) in list("Tela Preta!","Icon tá zuado!","Cancelar"))
				if("Tela Preta!")
					if(usr.loc==null)
						usr.loc=locate(20,55,5)
						usr<<"Arrumado"
						usr.Frozen=0
					else
						usr<< "Você não tem uma Tela Preta"
				if("Icon tá zuado!")
					usr.overlays = null
					usr.icon_state = ""
					usr.underlays = null
					if(usr.Juubi)
						usr.icon='Juubijinchuuriki.dmi'
						usr.Oicon='Juubijinchuuriki.dmi'
						return
					switch(input("Qual o seu sexo?", text) in list ("Masculino","Feminino"))
						if("Masculino")
							switch(input("Escolha uma cor de skin", text) in list ("Moreno","Branco","Negro"))
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
							usr<<"Desativado"
							return
							switch(input("Escolha uma cor de skin", text) in list ("Morena","Branca","Negra"))
								if("Morena")
									usr.icon='Female white.dmi'
									usr.Oicon='Female white.dmi'
									usr.baseselected=1
								if("Branca")
									usr.icon='FemaleVamp.dmi'
									usr.Oicon='FemaleVamp.dmi'
									usr.baseselected=1
								if("Negra")
									usr.icon='FemaleBlack.dmi'
									usr.Oicon='FemaleBlack.dmi'
									usr.baseselected=1
		if("Informações do servidor")
			var/calcLag = abs(world.cpu - 100)
			usr << "<strong>Server hostado em: [world.system_type]</strong>"
			usr << "<strong>Eficiência do servidor: [calcLag]%</strong>"
			usr << "<strong>Porta: [world.port]</strong>"

mob/akat
	verb
		ChangeFace()
			set name ="Mudar FaceIcon - Akat"
			set category = "HELP"
			switch(input("Você quer mudar seu face icon para um dos da Akatsuki?","Face Icon",) in list("Sim","Não"))
				if("Sim")
					switch(input("Qual seu sexo?", "Face Icon",text) in list("Masculino","Feminino"))
						if("Masculino")
							switch(input("Qual icon você quer?", "Escolha de Ícone") in list ("Sasori","Pain","Zetsu","Hidan","Deidara","Tobi","Itachi","Kisame"))
								if("Sasori")
									usr.faceicon = 'sasori.bmp'
								if("Pain")
									usr.faceicon = 'pain.bmp'
								if("Hidan")
									usr.faceicon = 'hidan.bmp'
								if("Zetsu")
									usr.faceicon = 'zetsu.bmp'
								if("Deidara")
									usr.faceicon = 'deidara.bmp'
								if("Tobi")
									usr.faceicon = 'tobi.bmp'
								if("Itachi")
									usr.faceicon = 'itachi2.bmp'
								if("Kisame")
									usr.faceicon = 'kisame.bmp'
						if("Feminino")
							switch(input("Qual icon você quer?", "Escolha de Ícone") in list ("Konan"))
								if("Konan")
									usr.faceicon = 'konan.bmp'
				if("Não")
					return

mob/kages
	verb
		ChangeFace()
			set name ="Mudar FaceIcon - Kages"
			set category = "HELP"
			switch(input("Você quer mudar seu face icon para um dos da Kages?","Face Icon",) in list("Sim","Não"))
				if("Sim")
					switch(input("Qual icon você quer?", "Escolha de Ícone") in list ("Hokage","Mizukage","Tsuchikage","Raikage","Kazekage","Oto Líder","Ame Líder"))
						if("Hokage")
							usr.faceicon = 'hokage.bmp'
						if("Kazekage")
							usr.faceicon = 'kazekage.bmp'
						if("Raikage")
							usr.faceicon = 'raikage.bmp'
						if("Mizukage")
							usr.faceicon = 'mizukage.bmp'
						if("Tsuchikage")
							usr.faceicon = 'tsuchikage.bmp'
						if("Oto Líder")
							usr.faceicon = 'orochioto.bmp'
						if("Ame Líder")
							usr.faceicon = 'hanzo.bmp'
				if("Não")
					return

mob/taka
	verb
		ChangeFace()
			set name ="Mudar FaceIcon - Taka"
			set category = "HELP"
			switch(input("Você quer mudar seu face icon para um dos da Taka","Face Icon",) in list("Sim","Não"))
				if("Sim")
					switch(input("Qual icon você quer?", "Escolha de Ícone") in list ("Sasuke","Karin","Juugo","Suigetsu"))
						if("Juugo")
							usr.faceicon = 'juugoTAKA.bmp'
						if("Suigetsu")
							usr.faceicon = 'suigetsuTAKA.bmp'
						if("Karin")
							usr.faceicon = 'karinTAKA.bmp'
						if("Sasuke")
							usr.faceicon = 'sasukeTAKA.bmp'
				if("Não")
					return

mob/so
	verb
		ChangeFace()
			set name ="Mudar FaceIcon - SO"
			set category = "HELP"
			switch(input("Você quer mudar seu face icon para um dos da SO","Face Icon",) in list("Sim","Não"))
				if("Sim")
					switch(input("Qual icon você quer?", "Escolha de Ícone") in list ("Orochimaru","Dosu","Tayuya","Kidomaru","Jiroubou","Sakon"))
						if("Kidomaru")
							usr.faceicon = 'kidoumaru.bmp'
						if("Sakon")
							usr.faceicon = 'sakon.bmp'
						if("Jiroubou")
							usr.faceicon = 'jiroubou.bmp'
						if("Orochimaru")
							usr.faceicon = 'orochimaru.bmp'
						if("Tayuya")
							usr.faceicon = 'tayuya.bmp'
						if("Dosu")
							usr.faceicon = 'dosu.bmp'
				if("Não")
					return

mob/sss
	verb
		ChangeFace()
			set name ="Mudar FaceIcon - SSS"
			set category = "HELP"
			switch(input("Você quer mudar seu face icon para um dos da SSS","Face Icon",) in list("Sim","Não"))
				if("Sim")
					switch(input("Qual icon você quer?", "Escolha de Ícone") in list ("Kisame","Zabuza","Raiga","Jinin","Ringo","Kushimaru","Jinpachi"))
						if("Kisame")
							usr.faceicon = 'kisame (2).bmp'
						if("Zabuza")
							usr.faceicon = 'zabuza.bmp'
						if("Raiga")
							usr.faceicon = 'raiga.bmp'
						if("Jinin")
							usr.faceicon = 'jinin.jpg'
						if("Ringo")
							usr.faceicon = 'ringo.jpg'
						if("Kushimaru")
							usr.faceicon = 'kushimaru.jpg'
						if("Jinpachi")
							usr.faceicon = 'jinpachi.jpg'
				if("Não")
					return

//------------------------------------------------------------------------------------------------------------------

mob/proc/QmOnline()
	var/tmp/C = 0
	for(var/mob/M in world)
		if(M.client)
			C += 1
	var/whonovo = {"
		<html>
		<head>
		<title>Jogadores Online</title>
		</head>
		<body bgcolor=#000000 text=#DDDDDD>
		<center><h2>Jogadores Online</h2></center><hr>
		<center><red>[C] jogadores logados no NRB</red></center><hr>
		<b>Em testes...<br>
		<p>
		<br>
		</body>
		</html>
		"}
	usr << browse(whonovo,"window=info")
//-----------------------------------------------------------------------------------------------------------------------

mob/proc/Memorialproc()
	var/memorialnrb = {"
		<html>
		<head>
		<title>Memorial NRB</title>
		</head>
		<body bgcolor=#000000 text=#DDDDDD>
		<center><b><font color="red">Memorial do NRB</font></b></center><hr>

		<font color="red">Esse memorial tem o objetivo de deixar marcado eternamente os grandes players
		que já passaram pelo NRB. Dessa forma eles serão sempre lembrados pelos veteranos e admirados pelos novatos.
		Os feitos deles estão marcados na história do NRB.</font><hr>
		<p>
		<br>
		</body>
		</html>
		<center><font color="yellow">Sammy Winchester - Maior buguer da história de Byond... sua casa caiu em 18/05/2016</font></center>

		Veterano no Byond, sua saga começa no NRB. No revolução começou como um simples player...
		porém logo mostrou seu poder.. o poder do BUG. Um dia a casa caiu.. o dia 18/05/2016 ficou mais marcante que a queda
		das Torres Gêmeas.. através do infalível GMLog, foi constatado sua Key invisivel trapaceando com pontos de evento! <hr>
		"}
/*		<center><font color="yellow">Comrade Azarameth - Primeiro Lider da Akatsuki</font></center>

		Veterano no Byond, sua saga começa no Naruto Saga Brasil.Após conhecer
		varios dos que viriam a ser seus companheiros de batalha, ficou parado durante meses
		com o fim do servidor, até a criação do NRB. No revolução começou como um simples
		Genin em Amegakure com o clan Koori em meados de abril-2009.Virou Chuunin logo em
		seu primeiro CS sem grandes dificuldades. Virou Jounin em seu primeiro JS tambem. Foi
		o primeiro player a conquistar uma organização no servidor: A Akatsuki considerada por muitos
		a mais forte facção do server.<hr>
		<center><font color="yellow">Kaguya Kizo - Shodaime Tsuchikage</font></center>

		Primeiro habitante de Iwa. Esse player do clan Kaguya, que iniciou no NRB em meados de
		abril-2009, passou rapidamente no CS se tornando um dos primeiros chuunins do server depois
		do primeiro reset.Virou Jounin em seu primeiro JS e no dia seguinte participou dos testes
		para Kage competindo com os melhores jogadores do server na época. Ele então se tornou
		o primeiro Kage player do server e começou a trazer gente para Iwagakure tornando-a uma
		das mais fortes e populares vilas do Servidor.<hr>
		<center><font color="yellow">Monde - Shodaime Hoshikage</font></center>

		Primeiro Adm do NRB, foi por isso o primeiro Kage da vila de Hoshi.<hr>
		<center><font color="yellow">Lancer - Shodaime Kazekage</font></center>

		GM do NRB desde o inicio do servidor, foi por isso o primeiro Kage da vila de Suna.<hr>
		<center><font color="yellow">Shi Yang - Shodaime Amekage</font></center>

		Adm do NRB desde o inicio do servidor, foi por isso o primeiro Kage da vila de Ame.<hr>
		<center><font color="yellow">Sky - Shodaime Mizukage</font></center>

		Sky nasceu na vila de Konoha,em seu primeiro CS,quase passou,
        foi desclassificado por sair 1 metro da arena,e no CS seguinte,se tornou chunnin sem problemas,e
        pouco tempo depois,jounin. Foi convidado pelo Tsuchikage Kizo a ir para Ishi,e lá se tornou ANBU.Após alguns
        tempos de guerra,Sky fugiu da vila,indo para a Organização do Som,foi muito bem recebido,e após ter visto
		muitas guerras e ganhado uma certa dependencia pelo poder Selo Amaldiçoado,foi para Kirigakure, e como a vila
		não tinha um kage e estava um caos,se tornou o Shodaime Mizukage,tempos depois,batizou-se de Hao Asakura.<hr>
		<center><font color="yellow">Marcones</font></center>

		Um dos habitantes de Kiri normal que foi crescendo com odio e querendo apenas poder
		passou no CS rapido com sua tecnicas e logo se tornou um jounin sabio e pika, mas
		ele queria mais poder entao logo se tornou sannin de kiri mas ele nao estava contente
		só com aquilo entao tentou desafiar o Nedland para SSS lider, levou uma coça e ele viu que
		ainda faltava muito odio  e poder nele, entao ele conheceu o Taka Lider Enryuu que disse
		que daria mais poder a ele entao Marcones foi para Taka e conseguiu o poder e o odio que
		precisava para matar todos e com isso conseguiu o poder supremo dos uchiha o lendario
		SUSANOO.<hr>
		<center><font color="yellow">Spark - Shodaime Raikage</font></center>

		Um ninja muito esforçado de Kumo, passou dificilmente no seu CS, e passando no segundo JS.
		Ficou um bom tempo como Jounnin, e ficou bastante forte.
		Fez um KS brilhante e se tornou o primeiro Kage de Kumo.
		Desde então a vila de Kumo vem crescendo e ficando forte.<hr>
		<center><font color="yellow">Dark - Unico Lider da Police Uchiha e Membro da Akatsuki</font></center>

		Nasceu no primeiro dia do servidor em ame,tornou-se chunnin no segundo shiken,logo depois torna-se jounin facilmente,
		cumprindo seu dever com a vila,torna se lider da police uchiha,mas inconformado com as decisões da vila,torna-se um
		renegado,entrando pra Akatsuki. Foi o primeiro a criar um jutsu proprio. O lendario Fuuton Nagashi. Teve casos com
		suigetsu,seu primo soul,sky,marcones,enryuu,crown e apenas casou-se com  Moykano.<hr>

		<center><font color="red">Reset no Servidor</font></center><hr>


		<center><font color="yellow">Enryuu - Segundo Líder da Taka</font></center>

		Época de guerra, Kiri, clima pesado, EnRyuu um chunnin da vila da chuva, traido pelo
		propio kage por falsas promessas, induzido pelo caminho do mal, toma lugar como membro
		da taka se tornando um nukenin, logo após conviver muito com a taka, toma o
		posto de lider da taka, tem o simples desejo de tornar o mundo um lugar menos barbaro.<hr>
		<center><font color="yellow">Lukingan - Nidaime Amekage</font></center>

		Lukingan passou em seu primeiro CS como o único Haku no seu CS. Perdeu o JS mas venceu um evento ORO e
		virou Jounin na vila de Hoshi, assim sendo o primeiro Jounin a receber o jutsu de hoshi. Cresceu querendo
		mais poder e foi para a SO. Mais tarde fez o KS e virou o Shodaime Enukage, e mais tarde o Nidaime Amekage,
		sendo temido por quase todos players do NRB!!! Após esses fatos em um ato de extrema infantilidade colocou o servidor
		offline e ficou conhecido por todos como Luan A Orca<hr>
		<center><font color="yellow">Near</font></center>

		Um dos primeiros habitantes do server e de Kumo, conseguiu passar em seu terceiro CS, mais passando no seu
		primeiro JS que participou. Então fugiu da sua vila e rapidamente foi convidado para fazer parte da Organização do
		Som e logo depois matou o seu Lider e ficou com a Organização.
		Depois de um tempo na Organização do Som, foi fazer o teste da Akatsuki e passou lutando contra 2 de uma vez.
		Hoje é um dos mais reconhecidos do server.<hr>
		<center><font color="yellow">Markus Kasak - Terceiro Líder Taka</font></center>

        Markus Kasak nasceu na vila de Kumo e quando alcançou seu desejado rank Jounin traiu sua vila e foi para Iwa,
        tornando-se Anbu. Com o tempo virou Anbu-Cap, e em um disputado teste para Sannin, Kasak ganhou passando pelas
        mais dificeis armadilhas feitas pelo homem, tornando assim o OROCHIMARU DE IWA. Com o tempo isso não o satisfazia
        mais, e Kasak largou IWA, para concorrer a uma vaga na TAKA, com dois dias na organização, Kasak virou lider
        e governou sua ORG.<hr>
        <center><font color="yellow">Hao Asakura - Segundo Líder Akatsuki</font></center>

        Hao Asakura fugiu de Kiri,tornando-se um ninja renegado,apesar do seu excelente passado. Com muito esforço consegue
        obter uma técnica brilhante,o Mangekyou Sharingan,um grande mestre nas técnicas do Tsukiyomi e Amaterasu,acaba os
        usando em excesso se tornando cego. Mas isso não impediu que ele evoluisse,e assim se torna o segundo lider da
        Akatsuki,a mais poderosa organização e com o objetivo de reestruturá-la para conseguir capturar todos os bijuus.
        Cego,ele rouba os olhos de um antigo companheiro,Uchiha Hideki...despertando assim o poder do Fuumetsu Mangekyou
        Sharingan,sendo o primeiro usuário do mesmo,e em alguns dias desperta o poderoso Susanoo.*/
	usr << browse(memorialnrb,"window=info")



//--------------------------------------------------------------------------------------------------------
mob/proc/Credits()
	var/credittext = {"
		<html>
		<head>
		<title>Naruto Revolução Brasil</title>
		</head>
		<body bgcolor=#000000 text=#DDDDDD>
		<center><h2>Equipe NRB</h2></center><hr>
		<b> Servidor Iniciado em Abril de 2014</b><br>
		<b>Programadores</b> = Iago e Bruno<br>
		<b>Graficos</b> = Iago<br>
		<b>Mapa</b> = Iago<br>
		<b>Skin</b> = Iago<br>
		<b>Colaboradores</b> = Molt, Bruno e o novo dono Iago<br>
		<b> Versão Atual do servidor: Ano 2014.4</b><br>
		<center><h2>Créditos</h2></center><hr>
		<b>Codes</b> = Iago e Bruno~<br>
		<b>Sistemas</b>: Flick (F_Damage),Hardik (Target),Polaris8920 (Duelo de equipes),Evil of au (Statpanel Skill), Dasher Naruto (Source original do jogo), <br>
		<b>Icones</b>: Iago, Molt e DlK<br>
		<p>
		<br>
		</body>
		</html>
		"}
	usr << browse(credittext,"window=info")
//--------------------------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------------------------
mob/proc/Gs1()
	var/helptext = {"
		<html>
		<STYLE>BODY {font-family: Verdana}</STYLE>
		<head>
		<title>Teste Genin</title>
		</head>
		<body bgcolor=#000000 text=#DDDDDD>
		<center><h2>BemVindo</h2></center><hr>
		<strong>Seja bemvindo ao Naruto
		Revolucao Brasil. Eu te darei instrucoes pra vc iniciar sua jornada
		no mundo shinobi!!!Vc precisa entrar em todas as salas dessa academia
		e falar com os npcs...eles te darao provas que depois de serem cumpridas
		habilitam a saida para o mundo shinobi...Vc precisa passar nas provas para
		virar genin e ganhar itens especiais que auxiliam em sua saga. Para falar com os npcs basta clicar
		com o botao direito do mouse sobre eles e escolher a opcao Falar.
		MTO IMPORTANTE: Em hipotese alguma ataque outro estudante aqui dentro
		desse complexo...isso pode acarretar banimento imediato!
		...Boa sorte!!!</strong><br>
		<p>
		<br>
		</body>
		</html>
		"}
	usr << browse(helptext,"window=info")

/*
mob/proc/inicio()
	var/helptext = {"
		<html>
		<STYLE>BODY {font-family: Verdana}</STYLE>
		<head>
		<title>Naruto Revolução Brasil</title>
		</head>
		<body bgcolor=#000000 text=#DDDDDD>
		<center><h2>BemVindo ao NRB</h2></center>
		Caso seu personagem não carregue, utilize o seguinte método: use Desbugar - Salve - Relogue - use Desbugar!<hr>

		Tecla A = Atacar.<br>

		Tecla S = Salvar.<br>

		Tecla K = Kawarimi no Jutsu.<br>

		Tecla H = Henge no Jutsu.<br>

		Qualquer outra dúvida olhe a <a href='http://www.orkut.com.br/Main#Community.aspx?cmm=75425333'>comunidade do servidor</a> e olhe o Guia NRB.

		Bom jogo e Boa sorte!!!<br>
		<p>
		<br>
		</body>
		</html>
		"}
	usr << browse(helptext,"window=info")*/


mob/var/homena=0

mob/proc/homena()
	var/helptext = {"
		<html>
		<STYLE>BODY {font-family: Verdana}</STYLE>
		<head>
		<title>Naruto Revolução Brasil</title>
		</head>
		<body bgcolor=#000000 text=#DDDDDD>
		<center><h2>Homenagem</h2></center>
		O NRB é mais do que um jogo. Nos tornamos uma grande família. Nos xingando e falando besteira uns
		dos outros acabamos por nos tornar grandes amigos e por isso é nosso dever estar junto de um desses
		amigos nesse momento.<hr>

		<font color= "yellow">"Um instante de Silêncio,<br>
		Busco esquecer os sons,<br>
		Junto dos meus pensamentos...<br>
		Sinto seu carinho em meu corpo,<br>
		Seu perfume não sai do ar que Respiro,<br>
		Seu olhar não desaparece,<br>
		Em meio de tantos outros olhares...<br>
		Sinto saudade sem culpa,<br>
		Eu  te busco,<br>
		Sem saber aonde te encontrar.<br>
		Sonho com  você,<br>
		Chegando  de repente.<br>
		Me tomando em seus braços,<br>
		E dizendo que não  vai mais partir,<br>
		Que essa saudade vai se curar,<br>
		Simplesmente porque juntos,<br>
		Sempre estaremos."<hr></font>

		<b>"Em homenagem a mãe do Wes,  Maria Rejane, que faleceu nessa ultima semana. Façamos 1 minuto de silencio.
		Depois basta dar um clique na tela."</b>

		<p>
		<br>
		</body>
		</html>
		"}
	usr << browse(helptext,"window=info")


mob/proc/homena2()
	var/helptext = {"
		<html>
		<STYLE>BODY {font-family: Verdana}</STYLE>
		<head>
		<title>Naruto Revolução Brasil</title>
		</head>
		<body bgcolor=#000000 text=#DDDDDD>
		<center><h2>Homenagem</h2></center>
		O NRB é mais do que um jogo. Nos tornamos uma grande família. Nos xingando e falando besteira uns
		dos outros acabamos por nos tornar grandes amigos e por isso é nosso dever estar junto de um desses
		amigos nesse momento.<hr>

		"Um instante de Silêncio,<br>
		Busco esquecer os sons,<br>
		Junto dos meus pensamentos...<br>
		Sinto seu carinho em meu corpo,<br>
		Seu perfume não sai do ar que Respiro,<br>
		Seu olhar não desaparece,<br>
		Em meio de tantos outros olhares...<br>
		Sinto saudade sem culpa,<br>
		Eu  te busco,<br>
		Sem saber aonde te encontrar.<br>
		Sonho com  você,<br>
		Chegando  de repente.<br>
		Me tomando em seus braços,<br>
		E dizendo que não  vai mais partir,<br>
		Que essa saudade vai se curar,<br>
		Simplesmente porque juntos,<br>
		Sempre estaremos."<br>

		"Em homenagem a reabertura do novo servidor".<hr>

		<p>
		<br>
		</body>
		</html>
		"}
	usr << browse(helptext,"window=info")
//--------------------------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------------------------
mob
	proc
		WATER()
			if(src.onwater)
				var/obj/spat = new/obj/effects/Spat
				spat.Move(src.loc)
				if(src.chakra >= 10)
					src.chakra -= 10
					var/random = rand(1,9)
					if(random==3)
						if(!src.capextendido)
							if(!usr.Uzumaki&&src.Mchakra<200000&&!src.capextendido||src.Mchakra<250000&&src.Uzumaki&&!src.capextendido)
								src<<"Seu chakra aumentou!"
								src.Mchakra += rand(8,16)
						else
							if(src.capextendido)
								if(src.Mchakra<250000&&!src.Uzumaki||src.Mchakra<300000&&src.Uzumaki)
									src<<"Seu chakra aumentou!"
									src.Mchakra += rand(6,12)
					if(random==6)
						if(src.chakraN < 200000)
							src<<"<font size=1><font name=courier new><font color=green>Você controla seu chakra melhor!"
							src.chakraN+=1
						else
							src<<"Você alcançou o cap de Controle de Chakra!"
				if(src.chakra<=0)
					src.chakra=1
					src.onwater = 0
					src<<"Você não possui chakra suficiente para continuar treinando!"
var
	sayC=1
var
	worldC=1
mob/var/OOC=0
mob/verb/OOC(msg as text)

	set desc = "Fale com todos no game."
	var/list/L
	L = list("font size","font color")
	for(var/H in L)
		if(findtext(msg,H))
			alert("Sem HTML no texto!")
			return
	if(!usr.OOC)
		alert("Você está mutado!")
		return
	if(!worldC&&!usr.GM)
		alert("Um ADMIN mutou o OOC.")
		return
	if(length(msg) >= 200)
		alert("Mensagem muito longa.")
		return
	if(filter2(msg,tags) == TRUE)	 //if the msg has profanity in it
		usr.html() // call the proc
		return
	if(filter2(msg,byonds) == TRUE)	 //if the msg has profanity in it
		usr.byonds() // call the proc
		return
	if(filter2(msg,tags) == TRUE)	 //if the msg has profanity in it
		usr.html() // call the proc
		return
	if(filter2(msg,profane) == TRUE)	 //if the msg has profanity in it
		usr.profane() // call the proc
		return
	if(filter2(msg,bannedwords) == TRUE) // if the msg has banned words in it
		usr.bannedwords() //call the proc
		return
	else //if it checks out
		if(spamcheck == TRUE)//if the player is spamming
			usr << "Por favor, espere até poder falar denovo! (Anti-Spam)"//tell him to wait for a second
			return //stop it from sending
		else//if the message is ok to send
			usr.spamcheck()//check for spam
			msg=cuttext(msg)
			if(log)//if logging is turned on
				text2file("(((((OOC)))))[time2text(world.realtime)]:[usr] diz, [msg]","log.txt") // add it to the log
	for(var/mob/M in world)
		if(M.OOC&&M.OOCC)
			if(usr.Village=="Kiri"||usr.Village=="7Swordsmen")
				M << "<font size=1><font face=tahoma><B><font color=#00CED1>([usr.Village])-<font color = #00CED1>([usr.rank])-<font color = silver>[usr.esquadrao]-[usr]<font color=#00CED1>: [msg]"
			if(usr.Village=="Konoha")
				M << "<font size=1><font face=tahoma><B><font color=#7FFF00>([usr.Village])-<font color = #7FFF00>([usr.rank])-<font color = silver>[usr.esquadrao]-[usr]<font color=#7FFF00>: [msg]"
			if(usr.Village=="Suna")
				M << "<font size=1><font face=tahoma><B><font color=#DEB887>([usr.Village])-<font color = #DEB887>([usr.rank])-<font color = silver>[usr.esquadrao]-[usr]<font color=#DEB887>: [msg]"
			if(usr.Village=="Kumo")
				M << "<font size=1><font face=tahoma><B><font color=#FFD700>([usr.Village])-<font color = #FFD700>([usr.rank])-<font color = silver>[usr.esquadrao]-[usr]<font color=#FFD700>: [msg]"
			if(usr.Village=="Ame")
				M << "<font size=1><font face=tahoma><B><font color=#1E90FF>([usr.Village])-<font color = #1E90FF>([usr.rank])-<font color = silver>[usr.esquadrao]-[usr]<font color=#1E90FF>: [msg]"
			if(usr.Village=="Iwa")
				M << "<font size=1><font face=tahoma><B><font color=#D2691E>([usr.Village])-<font color = #D2691E>([usr.rank])-<font color = silver>[usr.esquadrao]-[usr]<font color=#D2691E>: [msg]"
			if(usr.Village=="Akatsuki"||usr.Village=="AkatsukiL"||usr.Village=="AkatsukiK")
				M << "<font size=1><font face=tahoma><B><font color=#8b0000>([usr.Village])-<font color = #8b0000>([usr.rank])-<font color = silver>[usr.esquadrao]-[usr]<font color=#8b0000>: [msg]"
			if(usr.Village=="Oto"||usr.Village=="Sound Organization")
				M << "<font size=1><font face=tahoma><B><font color=#483D8B>([usr.Village])-<font color = #483D8B>([usr.rank])-<font color = silver>[usr.esquadrao]-[usr]<font color=#483D8B>: [msg]"
			if(usr.Village=="Taka")
				M << "<font size=1><font face=tahoma><B><font color=#696969>([usr.Village])-<font color = #696969>([usr.rank])-<font color = silver>[usr.esquadrao]-[usr]<font color=#696969>: [msg]"
			if(usr.Village=="Nenhum")
				M << "<font size=1><font face=tahoma><B><font color=#F8F8FF>([usr.Village])-<font color = #F8F8FF>([usr.rank])-<font color = silver>[usr.esquadrao]-[usr]<font color=#F8F8FF>: [msg]"
			if(usr.Village=="Organização Nuke")
				M << "<font size=1><font face=tahoma><B><font color=#b8860b>([usr.Village])-<font color = #b8860b>([usr.rank])-<font color = silver>[usr.esquadrao]-[usr]<font color=#b8860b>: [msg]"
			if(usr.Village=="Ootsutsuki-Lua")
				M << "<font size=1><font face=tahoma><B><font color=#2f4f4f>([usr.Village])-<font color = #2f4f4f>([usr.rank])-<font color = cyan>[usr.esquadrao]-[usr]<font color=#2f4f4f>: [msg]"
			if(usr.Village=="Staff")
				if(usr.aumentoufonte)
					M << "<font size=3><font face=tahoma><B><font color=#FF4500>([usr.Village])-<font color = #A52A2A>([usr.rank])-<font color = silver>[usr.esquadrao]-[usr]<font color=#FF4500>: [msg]"
				else
					M << "<font size=1><font face=tahoma><B><font color=#FF4500>([usr.Village])-<font color = #A52A2A>([usr.rank])-<font color = silver>[usr.esquadrao]-[usr]<font color=#FF4500>: [msg]"
/*			if(usr.Village=="Staff"&&usr.rank=="ADM")
				if(usr.aumentoufonte)
					M << "<font size=3><font face=tahoma><B><font color=#FF8C00>([usr.Village])-<font color = #A52A2A>([usr.rank])-<font color = silver>[usr.esquadrao]-[usr]<font color=#FF4500>: [msg]"
				else
					M << "<font size=1><font face=tahoma><B><font color=#FF8C00>([usr.Village])-<font color = #A52A2A>([usr.rank])-<font color = silver>[usr.esquadrao]-[usr]<font color=#FF4500>: [msg]"
*/

mob/verb/Falar_Vila(msg as text)

	set desc = "Say something to everyone in your village"
	var/list/L
	L = list("font size","font color")
	for(var/H in L)
		if(findtext(msg,H))
			alert("Sem HTML no texto!")
			return
	if(!usr.OOC)
		alert("Você está mutado!")
		return
	if(length(msg) >= 400)
		alert("Mensagem muito longa.")
		return
	if(filter2(msg,byonds) == TRUE)	 //if the msg has profanity in it
		usr.byonds() // call the proc
		return
	if(filter2(msg,tags) == TRUE)	 //if the msg has profanity in it
		usr.html() // call the proc
		return
	if(filter2(msg,profane) == TRUE)	 //if the msg has profanity in it
		usr.profane() // call the proc
		return
	if(filter2(msg,bannedwords) == TRUE) // if the msg has banned words in it
		usr.bannedwords() //call the proc
		return
	for(var/mob/M in world)
		if(usr.Village == M.Village||usr.Village == M.Village2||usr.Village2 == M.Village)
			M << "<font size=1><font face=verdana><B><font color=white>(Village Say)([usr.Clan])[usr.esquadrao]-<IMG CLASS=icon SRC=\ref[usr.faceicon]><font size = 1>[usr]<font color=yellow>: [msg]"

mob/var/talkbubble/bubble

mob
	verb
		Conversar(msg as text)

			if(!usr.OOC)
				return
			if(usr.testing)
				usr<<"Não agora!"
				return
			if(!sayC)
				alert("Um ADMIN mutou o Say.")
				return
			if(filter2(msg,tags) == TRUE)	 //if the msg has profanity in it
				usr.html() // call the proc
				return
			if(filter2(msg,byonds) == TRUE)	 //if the msg has profanity in it
				usr.byonds() // call the proc
				return
			if(filter2(msg,profane) == TRUE)	 //if the msg has profanity in it
				usr.profane() // call the proc
				return
			if(filter2(msg,bannedwords) == TRUE) // if the msg has banned words in it
				usr.bannedwords() //call the proc
				return
			else //if it checks out
				if(spamcheck == TRUE)//if the player is spamming
					usr << "Por favor, espere até poder falar denovo! (Anti-Spam)"//tell him to wait for a second
					return //stop it from sending
				else//if the message is ok to send
					usr.spamcheck()//check for spam
					msg=cuttext(msg)
					view(usr) << "<font size=1><font face=verdana><b><font color=white><IMG CLASS=icon SRC=\ref[usr.faceicon]><font size = 1>[usr]<font color= red> Diz: [msg]"




mob/verb/Who()
	set hidden = 1
	usr.QmOnline()
mob/var/wartoggle=1
mob
	verb
		War_Toggle()
			set hidden =1

			if(usr.wartoggle)
				usr.wartoggle=0
			else
/*				usr.wartoggle=1
mob
	verb
		Visualizar_arena()
			set hidden = 1
			if(usr.Frozen)return
			if(usr.parado)return
			if(usr.kawa)return
			if(usr.Kaiten)return
			if(usr.YT||usr.velocista)
				usr<<"Desligue seu teleport."
				return
			usr.client.perspective = EYE_PERSPECTIVE
			usr<<"Enquanto vc estiver vendo a arena n conseguirá se mover nem executar jutsus"
			usr.cast=1
			//usr.Frozen=1
			usr.parado=1
			client.view=17

			usr.client.eye = locate(53,53,13)
*/
mob
	verb
		Visualizar_evento()
			set hidden = 1
			//if(usr.Frozen)return
			//if(usr.parado)return
			//if(usr.kawa)return
			if(usr.Kaiten)return
			if(src.deslogado)
				usr<<"Você não pode usar esse comando sem ter logado no jogo"
				return
			if(usr.YT||usr.velocista)
				usr<<"Desligue seu teleport."
				return
			usr.client.perspective = EYE_PERSPECTIVE
			usr<<"Enquanto vc estiver vendo a arena n conseguirá se mover nem executar jutsus"
			client.view=42
			spawn()usr.Cegar()
			usr.cast=1
			//usr.Frozen=1
			usr.parado=1
			usr.arenafreeze=1
			usr.client.eye = locate(140,509,4)
			if(usr.key=="Iago762")
				usr.parado=0
				usr.cast=0

mob/var/arenafreeze=0

mob/var/map=0

mob
	verb
		Exit_View_Arena()
			set hidden = 1
			if(usr.kawa)return
			client.eye=usr
			client.view=8
			spawn()usr.Cegar()
			usr.cast=0
			//usr.Frozen=0
			usr.parado=0
			usr.arenafreeze=0

mob
	verb
		Visualizar_chuunin()
			set hidden = 1
			//if(usr.Frozen)return
			//if(usr.parado)return
			//if(usr.kawa)return
			if(usr.Kaiten)return
			if(src.deslogado)
				usr<<"Você não pode usar esse comando sem ter logado no jogo"
				return
			if(usr.YT||usr.velocista)
				usr<<"Desligue seu teleport."
				return
			usr.client.perspective = EYE_PERSPECTIVE
			usr<<"Enquanto vc estiver vendo a arena n conseguirá se mover nem executar jutsus"
			client.view=26
			spawn()usr.Cegar()
			usr.cast=1
			//usr.Frozen=1
			usr.parado=1
			usr.arenafreeze=1
			usr.client.eye = locate(115,228,5)

mob
	verb
		Visualizar_chuuninS()
			set hidden = 1
			//if(usr.Frozen)return
			//if(usr.parado)return
			//if(usr.kawa)return
			if(usr.Kaiten)return
			if(src.deslogado)
				usr<<"Você não pode usar esse comando sem ter logado no jogo"
				return
			if(usr.YT||usr.velocista)
				usr<<"Desligue seu teleport."
				return
			usr.client.perspective = EYE_PERSPECTIVE
			usr<<"Enquanto vc estiver vendo a arena n conseguirá se mover nem executar jutsus"
			client.view=26
			spawn()usr.Cegar()
			usr.cast=1
			//usr.Frozen=1
			usr.parado=1
			usr.arenafreeze=1
			usr.client.eye = locate(60,166,5)

mob
	verb
		Visualizar_AArena()
			set hidden = 1
			//if(usr.Frozen)return
			//if(usr.parado)return
			//if(usr.kawa)return
			if(usr.Kaiten)return
			if(src.deslogado)
				usr<<"Você não pode usar esse comando sem ter logado no jogo"
				return
			if(usr.YT||usr.velocista)
				usr<<"Desligue seu teleport."
				return
			usr.client.perspective = EYE_PERSPECTIVE
			usr<<"Enquanto vc estiver vendo a arena n conseguirá se mover nem executar jutsus"
			client.view=32
			spawn()usr.Cegar()
			usr.cast=1
			//usr.Frozen=1
			usr.parado=1
			usr.arenafreeze=1
			usr.client.eye = locate(483,49,10)


mob
	verb
		Visualizar_ArenaT()
			set hidden = 1
			//if(usr.Frozen)return
			//if(usr.parado)return
			//if(usr.kawa)return
			if(usr.Kaiten)return
			if(src.deslogado)
				usr<<"Você não pode usar esse comando sem ter logado no jogo"
				return
			if(usr.YT||usr.velocista)
				usr<<"Desligue seu teleport."
				return
			usr.client.perspective = EYE_PERSPECTIVE
			usr<<"Enquanto vc estiver vendo a arena n conseguirá se mover nem executar jutsus"
			client.view=19
			spawn()usr.Cegar()
			usr.cast=1
			//usr.Frozen=1
			usr.parado=1
			usr.arenafreeze=1
			usr.client.eye = locate(363,18,4)

mob
	verb
		Visualizar_ArenaJ()
			set hidden = 1
			//if(usr.Frozen)return
			//if(usr.parado)return
			//if(usr.kawa)return
			if(usr.Kaiten)return
			if(src.deslogado)
				usr<<"Você não pode usar esse comando sem ter logado no jogo"
				return
			if(usr.YT||usr.velocista)
				usr<<"Desligue seu teleport."
				return
			usr.client.perspective = EYE_PERSPECTIVE
			usr<<"Enquanto vc estiver vendo a arena n conseguirá se mover nem executar jutsus"
			client.view=9
			spawn()usr.Cegar()
			usr.cast=1
			//usr.Frozen=1
			usr.parado=1
			usr.arenafreeze=1
			usr.client.eye = locate(286,273,2)


mob/proc/DesclassificarCS()
	if(Chuunintime||Chuuninfloresta||ChuunintimeS||ChuuninflorestaS)
		if(src.deathforest)
			if(src.z==30||src.z==43)
				world<<"\red <b>Chuunin Info:</b>\white <b>[src]</b> foi desclassificado por relogar!"
				src.testefeito=0
				src.deathforest=0
				src.loc=locate(456,174,3)
				//src.SalvarAgora()
				return
mob
	proc
		Nukenin()
			if(src.killsvillage>=15)
				if(src.Village == "Konoha"||src.Village == "Ame"||src.Village == "Kiri"||src.Village == "Kumo"||src.Village == "Suna"||src.Village == "Iwa")
					world << "<font face=tahoma><font color=white><b>[src]</b> foi expulso de <b>[src.Village]</b> por cometer Assassinatos demais em sua Vila!</font></font>"
					src.Village="Nenhum"
					src.Village2=""
					src.rank="Nukenin"
					src.killsvillage=0
					src.verbs -= typesof(/mob/AmeLider/verb)
					src.verbs -= typesof(/mob/KiriLider/verb)
					//src.verbs -= new/mob/Sl/verb/Power_up()
					//src.verbs -= new/mob/Jinc/verb/Powerup()
					//src.verbs -= new/mob/Jinc/verb/Powerup2()
					//src.verbs -= new /mob/jutsu/verb/GGKai()
					src.verbs += new /mob/jutsu/verb/Waterwalk()
					//src.verbs += new /mob/jutsu/verb/Kai()
					src.verbs+= new /mob/jutsu/verb/BakuretsuBunshin
					usr.verbs-= new /mob/anbu/verb/JailAnbu()
					usr.verbs-= new /mob/anbu/verb/InvestAnbu()
					usr.verbs-= new /mob/anbu/verb/Teleporte()
					usr.verbs-= new /mob/anbu/verb/Invisible()
					usr.soundleader=0
					usr.otolider=0
					usr.soundmember=0
					usr.bit=0
					//usr.verbs -= new/mob/Sl/verb/Power_up()
					//usr.verbs -= new/mob/Jinc/verb/Powerup()
					//usr.verbs -= new /mob/jutsu/verb/GGKai()
					usr.verbs += new /mob/jutsu/verb/Waterwalk()
					//usr.verbs += new /mob/jutsu/verb/Kai()
					usr.verbs-= new /mob/anbu/verb/JailAnbu()
					usr.verbs-= new /mob/anbu/verb/InvestAnbu()
					usr.verbs-= new /mob/anbu/verb/Teleporte()
					usr.verbs-= new /mob/anbu/verb/Invisible()
					usr.mouse_over_pointer = null
					usr.policeleader=0
					usr.policemember=0
					usr.nucleoleader=0
					usr.nucleomember=0
					usr.esquadrao=""
					usr.honra=0
					usr.verbs -= /mob/akat/verb/ChangeFace
					usr.verbs -= /mob/sss/verb/ChangeFace
					usr.verbs -= /mob/so/verb/ChangeFace
					usr.verbs -= /mob/taka/verb/ChangeFace
					usr.Takaleader=0
					usr.Takamember=0
					usr.faceicon=null
					usr.akatsukimember=0
					usr.akatsukileader=0
					usr.swordsmenleader=0
					usr.swordsmenmember=0
					usr.verbs+= new /mob/jutsu/verb/BakuretsuBunshin
					for(var/obj/AKAH/H in usr.contents)del(H)
					for(var/obj/AKAS/S in usr.contents)del(S)
					for(var/obj/AKAS2/F in usr.contents)del(F)
					for(var/obj/SOSuit/S in usr.contents)del(S)
					for(var/obj/Kisamesword/H in usr.contents)del(H)
					usr.verbs -= typesof(/mob/hokage/verb)
					usr.verbs -= /mob/kages/verb/ChangeFace
					usr.verbs -= new /mob/jutsu/verb/RaikageJ()
					usr.verbs-= new /mob/Equipe/verb/PermitirE
					usr.verbs-= new /mob/Equipe/verb/NPermitirE
					usr.PerderSubclan()
					usr.SalvarAgora()



mob
	verb
		LeaveVillage()
			set name = "Sair da Vila"
			if(usr.rank=="Estudante")
				usr<<"Você precisa ser no mínimo Genin para usar este comando."
				return
			if(usr.Village=="Akatsuki"||usr.Village=="Taka"||usr.Village=="7Swordsmen"||usr.Village=="Sound Organization"||usr.Village=="Ootsutsuki-Lua")
				usr<<"Você não pode abandonar a Organização sem permissão do Líder!"
				return
			if(usr.killsvillage>=0)
				switch(input("Você quer abandonar sua vila?", text) in list ("Sim","Não"))
					if("Sim")
						switch(alert("VOCÊ TEM CERTEZA QUE QUER SAIR DA VILA ? \
						NOTE: VOCÊ SÓ PODERÁ VOLTAR 1 VEZ PARA QUALQUER VILA SE O KAGE ACEITAR!","","NÃO","SIM"))
							if("SIM")
								usr.Village="Nenhum"
								usr.Village2=""
								usr.rank="Nukenin"
								usr.soundleader=0
								usr.otolider=0
								usr.soundmember=0
								usr.killsvillage=0
								if(usr.lualider)
									usr<<"Você não pode deixar a Organização sendo o Líder!"
									return
								for(var/obj/RoupaOotsutsuki/L in usr) del L
								usr.luamember=0
								usr.squads=0
								usr.bit=0
								usr.verbs -= typesof(/mob/AmeLider/verb)
								usr.verbs -= typesof(/mob/KiriLider/verb)
								usr.verbs -= new/mob/Sl/verb/Power_up()
								//usr.verbs -= new/mob/Jinc/verb/Powerup()
//								usr.verbs -= new/mob/Jinc/verb/Powerup2()
//								usr.verbs -= new /mob/jutsu/verb/GGKai()
								usr.verbs += new /mob/jutsu/verb/Waterwalk()
								//usr.verbs += new /mob/jutsu/verb/Kai()
								usr.verbs-= new /mob/anbu/verb/JailAnbu()
								usr.verbs-= new /mob/anbu/verb/InvestAnbu()
								usr.verbs-= new /mob/anbu/verb/Teleporte()
								usr.verbs-= new /mob/anbu/verb/Invisible()
								usr.verbs -= new/mob/ADM/verb/Dar_SSSLeader()
								usr.verbs -= new/mob/ADM/verb/Remover_SSSLeader()
								usr.verbs -= new/mob/ADM/verb/Remover_SOLeaderX()
								usr.verbs -= new/mob/ADM/verb/Dar_SOLeaderX()
								usr.mouse_over_pointer = null
								usr.policeleader=0
								usr.policemember=0
								usr.nucleoleader=0
								usr.nucleomember=0
								usr.esquadrao=""
								usr.honra=0
								usr.verbs -= /mob/akat/verb/ChangeFace
								usr.verbs -= /mob/sss/verb/ChangeFace
								usr.verbs -= /mob/so/verb/ChangeFace
								usr.verbs -= /mob/taka/verb/ChangeFace
								usr.Takaleader=0
								usr.Takamember=0
								usr.faceicon=null
								usr.akatsukimember=0
								usr.akatsukileader=0
								usr.swordsmenleader=0
								usr.swordsmenmember=0
								usr.pegouespadasss=0
								usr.verbs+= new /mob/jutsu/verb/BakuretsuBunshin
								for(var/obj/AKAH/H in usr.contents)
									del(H)
								for(var/obj/AKAS/S in usr.contents)
									del(S)
								for(var/obj/AKAS2/F in usr.contents)
									del(F)
								for(var/obj/SOSuit/S in usr.contents)
									del(S)
								for(var/obj/Kisamesword/H in usr.contents)
									del(H)
								usr.verbs -= typesof(/mob/hokage/verb)
								usr.verbs -= /mob/kages/verb/ChangeFace
								usr.verbs -= new /mob/jutsu/verb/RaikageJ()
								usr.verbs-= new /mob/Equipe/verb/PermitirE
								usr.verbs-= new /mob/Equipe/verb/NPermitirE
								usr.verbs -= new /mob/hokage/verb/KageAura()
								for(var/obj/SSSsuit2/S in usr.contents)
									del(S)
								for(var/obj/SSSsuit1/B in usr.contents)
									del(B)
								for(var/obj/SSSmask/R in usr.contents)
									del(R)
								if(locate(/obj/SSSs1) in usr.contents)
									for(var/obj/SSSs1/X in usr.contents)del(X)
								if(locate(/obj/SSSs2) in usr.contents)
									for(var/obj/SSSs2/X2 in usr.contents)del(X2)
								if(locate(/obj/SSSs3) in usr.contents)
									for(var/obj/SSSs3/X3 in usr.contents)del(X3)
								if(locate(/obj/SSSs4) in usr.contents)
									for(var/obj/SSSs4/X4 in usr.contents)del(X4)
								if(locate(/obj/SSSs5) in usr.contents)
									for(var/obj/SSSs5/X5 in usr.contents)del(X5)
								if(locate(/obj/SSSs6) in usr.contents)
									for(var/obj/SSSs6/X6 in usr.contents)del(X6)
								if(locate(/obj/SSSs7) in usr.contents)
									for(var/obj/SSSs7/X7 in usr.contents)del(X7)
								if(locate(/obj/Kisamesword) in usr.contents)
									for(var/obj/Kisamesword/X8 in usr.contents)del(X8)
								if(locate(/obj/SamehadaWater) in usr.contents)
									for(var/obj/SamehadaWater/X9 in usr.contents)del(X9)
								usr.PerderSubclan()
								if(usr.QuestKakashi==1&&usr.seals==70&&usr.convidado==1)
									usr.seals=100
								usr.SalvarAgora()
					if("Não")
						usr<<"Sábia escolha."
						return
			else
				usr<<"Você precisa matar membros de sua Vila e ter honra baixa!"
				return



mob/Squads
	verb
		Convidar(mob/M in view(10))
			set category="Esquadrão"
			switch(input("Você tem certeza que quer treinar este ninja?!", text) in list ("Sim","Não"))
				if("Sim")
					if(M.Village == usr.Village&&usr.recruits<=2)
						M.squads=1
						M.esquadrao="[src.esquadrao]"
						usr.recruits+=1
						M.verbs += /mob/Squads/verb/Falar_Esquadrao
					else
						usr<<"Ele não é da sua vila ou seu esquadrão já está cheio!"
				else
					usr<<"Entendido."
		Expulsar(mob/M in world)
			set category="Esquadrão"
			switch(input("Quem você deseja tirar do seu esquadrão?", text) in list ("Sim","Não"))
				if("Sim")
					if(M.esquadrao==usr.esquadrao)
						M.squads=0
						M.esquadrao=""
						usr.recruits-=1
						M.verbs -= /mob/Squads/verb/Falar_Esquadrao
					else
						usr<<"Ele não é do seu esquadrão."
				else
					usr<<"Entendido."

		Falar_Esquadrao(msg as text)
			set category="Esquadrão"
			set desc = "Diga algo para todos em seu esquadrão."
			var/list/L
			L = list("font size","font color")
			for(var/H in L)
				if(findtext(msg,H))
					alert("Sem HTML no texto!")
					return
			if(length(msg) >= 400)
				alert("Mensagem muito longa.")
				return
			for(var/mob/M in world)
				if(usr.esquadrao == M.esquadrao&&M.squads==1)
					M << "<font size=1><font face=verdana><B><font color=white>(Esquadrão)([usr.Clan]}-[usr]<font color=red>: [msg]"


mob
	verb
		AFK()
			if(src.cast)
				src<<"Não agora."
				return
			if(src.AFK)
				world << "[src] está de volta"
				src.PK=1
				src.froze=0
				src.move=1
				src.AFK = 0
				src.overlays -= 'AFK.dmi'
				src.cast = 1
				sleep(600)
				src.cast = 0
			else
				world << "[src] está AFK"
				src.AFK = 1
				src.PK=0
				src.froze=1
				src.move=0
				src.overlays += 'AFK.dmi'
				src.cast = 1
				sleep(600)
				src.cast = 0
mob
	verb
		OOConoff()
			set hidden =1
			if(usr.OOCC==1)
				usr<< "[src] Você desliga seu OOC."
				usr.OOCC = 0

			else
				usr<< "[src] Você liga seu OOC."
				usr.OOCC = 1

mob/var/ignorardesafio=0
mob/var/tempodesafio=0
mob
	verb
		DesafiarA()
			set name = "(Arena) - Desafiar"
			set hidden=1
			set category = "Arena"
			if(usr.deslogado)
				usr<<"Você não pode desafiar sem estar logado"
				return
			if(temarena)
				usr<<"A Arena está em uso, aguarde até o fim do duelo!"
				return
			if(usr.naart||usr.najau)
				usr<<"Não agora!"
				return
			if(usr.climbing)
				usr<<"Não enquanto upa HP!"
				return
			if(usr.inizanami)
				usr<<"Você precisa sair da dimensão primeiro!"
				return
			if(usr.Frozen)
				usr<<"Não paralisado!"
				return
			if(usr.tempodesafio>0)
				usr << "Aguarde [usr.tempodesafio] segundos para poder desafiar novamente!"
				return
			var/list/Menu = list()
			for(var/mob/A in world)
				if(istype(A,/mob))
					if(A.client)
						if(A != usr)
							if(!A.ignorardesafio)
								Menu.Add(A)
			Menu += "Cancelar"
			var/mob/A = input("Desafie um jogador para uma luta na Arena!")as mob in Menu
			if(A.deslogado)
				usr<< "Você não pode desafiar alguém deslogado"
				A<< "Você não pode ser desafiado sem estar logado"
				return
			if(A.Frozen)
				A<<"Não paralisado!"
				usr<<"Ele pode estar upando!"
				return
			if(A.naart||A.najau)
				A<<"Não agora!"
				usr<<"Ele não pode aceitar agora!"
				return
			if(A.climbing)
				A<<"Não enquanto upa HP!"
				usr<<"Ele não pode aceitar agora!"
				return
			if(A.inizanami)
				usr<<"Ele precisa sair da dimensão primeiro!"
				A<<"Saia da dimensão para ser desafiado!"
				return
			if(!usr.inlua&&A.inlua&&!luaproxima||usr.inlua&&!A.inlua&&!luaproxima)
				A<<"A Lua está distante da terra!"
				usr<<"A Lua está distante da terra!"
				return
			if(A=="Cancelar")return
			if(emguerra)return
			if(!A)return
			if(usr.ignorardesafio==1)
				usr << "Você está ignorando desafios, desabilite para poder desafiar."
				return
			if(A.ignorardesafio==1)
				usr << "[A] está ignorando desafios!"
				return
			else
				usr.tempodesafio=60
				usr.TempoDesafio()
				switch(input(A,"[usr] quer lutar com você na Arena  , você aceita?","Arena", text) in list ("Sim","Não","Ignorar Desafios"))
					if("Sim")
						if(temarena)
							usr<<"A Arena está em uso, aguarde até o fim do duelo!"
							A<<"A Arena está em uso, aguarde até o fim do duelo!"
							return
						if(!usr)return
						world<<"<center><font color=yellow><b>Arena:</b></font> <b>[A]</b> VS <b>[usr]</b> na <b>Arena</b></center>"
						temarena=1
						usr.loc = locate(454,49,10)
						usr.verbs -= /mob/cliff/verb/TreinarHP
						usr.PK = 0
						usr.move = 0
						usr.froze=1
						usr.naare=1
						usr.podenada=1
						A.loc = locate(509,49,10)
						A.verbs -= /mob/cliff/verb/TreinarHP
						A.PK = 0
						A.froze = 1
						A.move=0
						A.naare=0
						A.podenada=1
						usr << "<font color=#66FFFF><center><font color=white><b>[usr]</b> vs <b>[A]</b>. A luta na Arena começará em 3 segundos , preparem-se!"
						A << "<font color=#66FFFF><center><font color=white><b>[A]</b> vs <b>[usr]</b>. A luta na Arena começará em 3 segundos , preparem-se!"
						sleep(20)
						usr << "<font color=#66FFFF><font color=white><center>3"
						A << "<font color=#66FFFF><font color=white><center>3"
						sleep(20)
						usr << "<font color=#66FFFF><font color=white><center>2"
						A << "<font color=#66FFFF><font color=white><center>2"
						sleep(20)
						usr << "<font color=#66FFFF><font color=white><center>1"
						A << "<font color=#66FFFF><font color=white><center>1"
						sleep(20)
						usr << "<font color=#66FFFF><font color=white><center>LUTEM!"
						A << "<font color=#66FFFF><font color=white><center>LUTEM!"
						usr.froze = 0
						A.froze = 0
						usr.move=1
						A.move=1
						A.PK = 1
						usr.PK = 1
					if("Não")
						usr << "[A] recusou seu desafio!"
						return
					if("Ignorar Desafios")
						usr << "[A] ignorou seu desafio!"
						return

mob
	verb
		DesafiarAT()
			set name = "(Arena Tradicional) - Desafiar"
			set hidden=1
			set category = "Arena"
			if(usr.deslogado)
				usr<<"Você não pode desafiar sem estar logado"
				return
			if(temarenat)
				usr<<"A Arena Tradicional está em uso, aguarde até o fim do duelo!"
				return
			if(usr.naare||usr.najau)
				usr<<"Não agora!"
				return
			if(usr.climbing)
				usr<<"Não enquanto upa HP!"
				return
			if(usr.inizanami)
				usr<<"Você precisa sair da dimensão primeiro!"
				return
			if(usr.Frozen)
				usr<<"Não paralisado!"
				return
			if(usr.tempodesafio>0)
				usr << "Aguarde [usr.tempodesafio] segundos para poder desafiar novamente!"
				return
			var/list/Menu = list()
			for(var/mob/A in world)
				if(istype(A,/mob))
					if(A.client)
						if(A != usr)
							if(!A.ignorardesafio)
								Menu.Add(A)
			Menu += "Cancelar"
			var/mob/A = input("Desafie um jogador para uma luta na Arena Tradicional!")as mob in Menu
			if(A.deslogado)
				usr<< "Você não pode desafiar alguém deslogado"
				A<< "Você não pode ser desafiado sem estar logado"
				return
			if(A.inizanami)
				usr<<"Ele precisa sair da dimensão primeiro!"
				return
			if(A.climbing)
				A<<"Não enquanto upa HP!"
				usr<<"Ele não pode aceitar agora!"
				return
			if(A.Frozen)
				A<<"Não paralisado!"
				usr<<"Ele deve estar upando!"
				return
			if(A.naare||A.najau)
				A<<"Não agora!"
				usr<<"Ele não pode aceitar agora!"
				return
			if(!usr.inlua&&A.inlua&&!luaproxima||usr.inlua&&!A.inlua&&!luaproxima)
				A<<"A Lua está distante da terra!"
				usr<<"A Lua está distante da terra!"
				return
			if(A=="Cancelar")return
			if(emguerra)return
			if(!A)return
			if(usr.ignorardesafio==1)
				usr << "Você está ignorando desafios, desabilite para poder desafiar."
				return
			if(A.ignorardesafio==1)
				usr << "[A] está ignorando desafios!"
				return
			else
				usr.tempodesafio=60
				usr.TempoDesafio()
				switch(input(A,"[usr] quer lutar com você na Arena Tradicional , você aceita?","Arena Tradicional", text) in list ("Sim","Não","Ignorar Desafios"))
					if("Sim")
						if(temarenat)
							usr<<"A Arena Tradicional está em uso, aguarde até o fim do duelo!"
							A<<"A Arena Tradicional está em uso, aguarde até o fim do duelo!"
							return
						if(!usr)return
						world<<"<center><font color=yellow><b>Arena Tradicional:</b></font> <b>[A]</b> VS <b>[usr]</b> na <b>Arena Tradicional</b></center>"
						temarenat=1
						usr.loc = locate(346,18,4)
						usr.verbs -= /mob/cliff/verb/TreinarHP
						usr.PK = 0
						usr.froze = 1
						usr.move=0
						usr.naart=1
						usr.podenada=1
						A.loc = locate(380,18,4)
						A.verbs -= /mob/cliff/verb/TreinarHP
						A.naart=1
						A.PK = 0
						A.froze = 1
						A.move=0
						A.podenada=1
						usr << "<font color=#66FFFF><center><font color=white><b>[usr]</b> vs <b>[A]</b>. A luta na Arena Tradicional começará em 3 segundos , preparem-se!"
						A << "<font color=#66FFFF><center><font color=white><b>[A]</b> vs <b>[usr]</b>. A luta na Arena Tradicional começará em 3 segundos , preparem-se!"
						sleep(20)
						usr << "<font color=#66FFFF><font color=white><center>3"
						A << "<font color=#66FFFF><font color=white><center>3"
						sleep(20)
						usr << "<font color=#66FFFF><font color=white><center>2"
						A << "<font color=#66FFFF><font color=white><center>2"
						sleep(20)
						usr << "<font color=#66FFFF><font color=white><center>1"
						A << "<font color=#66FFFF><font color=white><center>1"
						sleep(20)
						usr << "<font color=#66FFFF><font color=white><center>LUTEM!"
						A << "<font color=#66FFFF><font color=white><center>LUTEM!"
						usr.froze = 0
						A.froze = 0
						usr.move=1
						A.move=1
						A.PK = 1
						usr.PK = 1
					if("Não")
						usr << "[A] recusou seu desafio!"
						return
					if("Ignorar Desafios")
						usr << "[A] ignorou seu desafio!"
						return
/*
mob
	verb
		DesafiarC()
			set name = "(Corredor) - Desafiar"
			set hidden=1
			set category = "Arena"
			if(usr.deslogado)
				usr<<"Você não pode desafiar sem estar logado"
				return
			if(usr.tempodesafio>0)
				usr << "Aguarde [usr.tempodesafio] segundos para poder desafiar novamente!"
				return
			var/list/Menu = list()
			for(var/mob/A in world)
				if(istype(A,/mob))
					if(A.client)
						if(A != usr)
							if(!A.ignorardesafio)
								Menu.Add(A)
			Menu += "Cancelar"
			var/mob/A = input("Desafie um jogador para uma luta no Corredor!")as mob in Menu
			if(A.deslogado)
				usr<< "Você não pode desafiar alguém deslogado"
				A<< "Você não pode ser desafiado sem estar logado"
				return
			if(A=="Cancelar")return
			if(emguerra)return
			if(!A)return
			if(usr.ignorardesafio==1)
				usr << "Você está ignorando desafios, desabilite para poder desafiar."
				return
			if(A.ignorardesafio==1)
				usr << "[A] está ignorando desafios!"
				return
			else
				usr.tempodesafio=100
				usr.TempoDesafio()
				switch(input(A,"[usr] quer lutar com você no Corredor , você aceita?","Corredor", text) in list ("Sim","Não","Ignorar Desafios"))
					if("Sim")
						if(!usr)return
						world<<"<center><font color=yellow><b>Corredor:</b></font> <b>[A]</b> VS <b>[usr]</b> no <b>Corredor</b></center>"
						usr.loc = locate(2,93,29)
						usr.PK = 0
						usr.Frozen = 1
						usr.parado=1
						A.loc = locate(35,93,29)
						A.PK = 0
						A.Frozen = 1
						A.parado=1
						usr << "<font color=#66FFFF><center><font color=white><b>[usr]</b> vs <b>[A]</b>. A luta no Corredor começará em 3 segundos , preparem-se!"
						A << "<font color=#66FFFF><center><font color=white><b>[A]</b> vs <b>[usr]</b>. A luta no Corredor começará em 3 segundos , preparem-se!"
						sleep(20)
						usr << "<font color=#66FFFF><font color=white><center>3"
						A << "<font color=#66FFFF><font color=white><center>3"
						sleep(20)
						usr << "<font color=#66FFFF><font color=white><center>2"
						A << "<font color=#66FFFF><font color=white><center>2"
						sleep(20)
						usr << "<font color=#66FFFF><font color=white><center>1"
						A << "<font color=#66FFFF><font color=white><center>1"
						sleep(20)
						usr << "<font color=#66FFFF><font color=white><center>LUTEM!"
						A << "<font color=#66FFFF><font color=white><center>LUTEM!"
						usr.Frozen = 0
						A.Frozen = 0
						usr.parado=1
						A.parado=0
						A.PK = 1
						usr.PK = 1
					if("Não")
						usr << "[A] recusou seu desafio!"
						return
					if("Ignorar Desafios")
						usr << "[A] ignorou seu desafio!"
						return
*/
mob
	verb
		DesafiarJ()
			set name = "(Jaula) - Desafiar"
			set hidden=1
			set category = "Arena"
			if(usr.deslogado)
				usr<<"Você não pode desafiar sem estar logado"
				return
			if(temjaula)
				usr<<"A Arena Jaula está em uso, aguarde até o fim do duelo!"
				return
			if(usr.naare||usr.naart)
				usr<<"Não agora!"
				return
			if(usr.climbing)
				usr<<"Não enquanto upa HP!"
				return
			if(usr.inizanami)
				usr<<"Você precisa sair da dimensão primeiro!"
				return
			if(usr.Frozen)
				usr<<"Não paralisado!"
				return
			if(usr.tempodesafio>0)
				usr << "Aguarde [usr.tempodesafio] segundos para poder desafiar novamente!"
				return
			var/list/Menu = list()
			for(var/mob/A in world)
				if(istype(A,/mob))
					if(A.client)
						if(A != usr)
							if(!A.ignorardesafio)
								Menu.Add(A)
			Menu += "Cancelar"
			var/mob/A = input("Desafie um jogador para uma luta na Jaula!")as mob in Menu
			if(A.deslogado)
				usr<< "Você não pode desafiar alguém deslogado"
				A<< "Você não pode ser desafiado sem estar logado"
				return
			if(A.inizanami)
				usr<<"Ele precisa sair da dimensão primeiro!"
				return
			if(A.climbing)
				A<<"Não enquanto upa HP!"
				usr<<"Ele não pode aceitar agora!"
				return
			if(!usr.inlua&&A.inlua&&!luaproxima||usr.inlua&&!A.inlua&&!luaproxima)
				A<<"A Lua está distante da terra!"
				usr<<"A Lua está distante da terra!"
				return
			if(A.Frozen)
				A<<"Não paralisado!"
				usr<<"Ele deve estar upando!"
				return
			if(A.naare||A.naart)
				A<<"Não agora!"
				usr<<"Ele não pode aceitar agora!"
				return
			if(A=="Cancelar")return
			if(emguerra)return
			if(!A)return
			if(usr.ignorardesafio==1)
				usr << "Você está ignorando desafios, desabilite para poder desafiar."
				return
			if(A.ignorardesafio==1)
				usr << "[A] está ignorando desafios!"
				return
			else
				usr.tempodesafio=60
				usr.TempoDesafio()
				switch(input(A,"[usr] quer lutar com você na Jaula , você aceita?","Jaula", text) in list ("Sim","Não","Ignorar Desafios"))
					if("Sim")
						if(temjaula)
							usr<<"A Arena Jaula está em uso, aguarde até o fim do duelo!"
							A<<"A Arena Jaula está em uso, aguarde até o fim do duelo!"
							return
						if(!usr)return
						world<<"<center><font color=yellow><b>Jaula:</b></font> <b>[A]</b> VS <b>[usr]</b> na <b>Jaula</b></center>"
						temjaula=1
						usr.loc = locate(280,273,2)
						usr.verbs -= /mob/cliff/verb/TreinarHP
						usr.PK = 0
						usr.froze = 1
						usr.move=0
						usr.najau=1
						usr.podenada=1
						A.loc = locate(292,273,2)
						A.verbs -= /mob/cliff/verb/TreinarHP
						A.PK = 0
						A.froze = 1
						A.move=0
						A.najau=1
						A.podenada=1
						usr << "<font color=#66FFFF><center><font color=white><b>[usr]</b> vs <b>[A]</b>. A luta na Jaula começará em 3 segundos , preparem-se!"
						A << "<font color=#66FFFF><center><font color=white><b>[A]</b> vs <b>[usr]</b>. A luta na Jaula começará em 3 segundos , preparem-se!"
						sleep(20)
						usr << "<font color=#66FFFF><font color=white><center>3"
						A << "<font color=#66FFFF><font color=white><center>3"
						sleep(20)
						usr << "<font color=#66FFFF><font color=white><center>2"
						A << "<font color=#66FFFF><font color=white><center>2"
						sleep(20)
						usr << "<font color=#66FFFF><font color=white><center>1"
						A << "<font color=#66FFFF><font color=white><center>1"
						sleep(20)
						usr << "<font color=#66FFFF><font color=white><center>LUTEM!"
						A << "<font color=#66FFFF><font color=white><center>LUTEM!"
						usr.froze = 0
						A.froze = 0
						usr.move=1
						A.move=1
						A.PK = 1
						usr.PK = 1
					if("Não")
						usr << "[A] recusou seu desafio!"
						return
					if("Ignorar Desafios")
						usr << "[A] ignorou seu desafio!"
						return

mob/verb/IgnorarD()
	set name = "Permitir/Ignorar Desafios"
	set hidden=1
	set category = "Arena"
	switch(alert("Permitir/Ignorar Desafios","","Permitir","Ignorar","Cancelar"))
		if("Permitir")
			usr.ignorardesafio=0
			usr << "Você está agora permitindo convites de desafios."
			return
		if("Ignorar")
			usr.ignorardesafio=1
			usr << "Você está agora ignorando convites de desafios."
			return



mob
	verb
		Challenge(mob/M in world)
			set hidden=1
			set name = "ARENA-Desafiar"
			if(usr.deslogado)
				usr<<"Você não pode desafiar sem estar logado"
				return
			if(M.deslogado)
				usr<< "Você não pode desafiar alguém deslogado"
				M<< "Você não pode ser desafiado sem estar logado"
				return
			if (M.Village=="")
				usr << "Você não pode desafiar um NPC!"
				return
			if(M.inizanami)
				usr<<"Ele precisa sair da dimensão primeiro!"
				return
			if(usr.inlua&&!luaproxima)
				usr<<"A Lua está distante da terra!"
				return
			if(usr.inizanami)
				usr<<"Você precisa sair da dimensão primeiro!"
				return
			if(M.inlua&&!luaproxima)
				usr<<"A Lua está distante da terra!"
				return
			if(M == usr)
				usr<<"Você não pode desafiar você mesmo"
				return
			if(usr.jailed==1)
				usr<<"Não enquanto está preso"
				return
			else
				usr.challenge = 1
				M.challenged = 1
				world << "<b>Arena:</b>[M] foi desafiado para uma batalha na arena por [usr]!  1 minuto para responder!"
				sleep(600)
				M<<"Covarde"
				usr<<"Ele fugiu de medo."
				M.challenged = 0
				usr.challenge = 0


		Accept(mob/M in world)
			set hidden=1
			set name = "ARENA-Aceitar"
			if(usr.deslogado)
				usr<<"Você não pode desafiar sem estar logado"
				return
			if(M.deslogado)
				usr<< "Você não pode desafiar alguém deslogado"
				M<< "Você não pode aceitar sem estar logado"
				return
			if(M == usr)
				usr<<"Você não pode desafiar você mesmo"
				return
			if(usr.jailed==1)
				usr<<"Não enquanto está preso"
				return
			if(M.challenge == 1)
				if(usr.challenged == 1)
					world << "<b>Arena:</b>[usr] aceitou o desafio de [M]!"
					M.loc = locate(454,49,10)
					usr.loc = locate(509,49,10)
					M.PK = 1
					usr.PK = 1
					M.challenged = 0
					usr.challenge = 0
				else
					usr << "Ele não o desafiou!"
			else
				usr << "Ele não o desafiou!"


		Decline(mob/M in world)
			set hidden=1
			set name = "ARENA-Recusar"
			if(M.challenge == 1)
				if(usr.challenged == 1)
					world << "<b>Arena:</b>[usr] recusou o desafio de [M]!"
					usr.challenged = 0
					M.challenge = 0
				else
					usr << "Ele não o desafiou!"
			else
				usr << "Ele não o desafiou!"




mob
	verb
		ChallengeJaula(mob/M in world)
			set hidden=1
			set name = "Jaula-Desafiar"
			if(usr.deslogado)
				usr<<"Você não pode desafiar sem estar logado"
				return
			if(M.deslogado)
				usr<< "Você não pode desafiar alguém deslogado"
				M<< "Você não pode aceitar sem estar logado"
			if (M.Village=="")
				usr << "Você não pode desafiar um NPC!"
				return
			if(M == usr)
				usr<<"Você não pode desafiar você mesmo"
				return
			if(usr.jailed==1)
				usr<<"Não enquanto está preso"
				return
			else
				usr.challenge = 1
				M.challenged = 1
				world << "<b>Jaula:</b>[M] foi desafiado para uma batalha na Jaula por [usr]!  1 minuto para responder!"
				sleep(600)
				M<<"Covarde"
				usr<<"Ele fugiu de medo."
				M.challenged = 0
				usr.challenge = 0


		AcceptJaula(mob/M in world)
			set hidden=1
			set name = "Jaula-Aceitar"
			if(usr.deslogado)
				usr<<"Você não pode desafiar sem estar logado"
				return
			if(M.deslogado)
				usr<< "Você não pode desafiar alguém deslogado"
				M<< "Você não pode aceitar sem estar logado"
			if(M == usr)
				usr<<"Você não pode desafiar você mesmo"
				return
			if(usr.jailed==1)
				usr<<"Não enquanto está preso"
				return
			if(M.challenge == 1)
				if(usr.challenged == 1)
					world << "<b>Jaula:</b>[usr] aceitou o desafio de [M]!"
					M.loc = locate(280,273,2)
					usr.loc = locate(280,273,2)
					M.PK = 1
					usr.PK = 1
					M.challenged = 0
					usr.challenge = 0
				else
					usr << "Ele não o desafiou!"
			else
				usr << "Ele não o desafiou!"


		DeclineJaula(mob/M in world)
			set hidden=1
			set name = "Jaula-Recusar"
			if(M.challenge == 1)
				if(usr.challenged == 1)
					world << "<b>Jaula:</b>[usr] recusou o desafio de [M]!"
					usr.challenged = 0
					M.challenge = 0
				else
					usr << "Ele não o desafiou!"
			else
				usr << "Ele não o desafiou!"



mob
	verb
		ChallengeCorredor(mob/M in world)
			set hidden=1
			set name = "Corredor-Desafiar"
			if(usr.deslogado)
				usr<<"Você não pode desafiar sem estar logado"
				return
			if(M.deslogado)
				usr<< "Você não pode desafiar alguém deslogado"
				M<< "Você não pode aceitar sem estar logado"
			if (M.Village=="")
				usr << "Você não pode desafiar um NPC!"
				return
			if(M == usr)
				usr<<"Você não pode desafiar você mesmo"
				return
			if(usr.jailed==1)
				usr<<"Não enquanto está preso"
				return
			else
				usr.challenge = 1
				M.challenged = 1
				world << "<b>Corredor da Morte:</b>[M] foi desafiado para uma batalha no Corredor da Morte por [usr]!  1 minuto para responder!"
				sleep(600)
				M<<"Covarde"
				usr<<"Ele fugiu de medo."
				M.challenged = 0
				usr.challenge = 0


		AcceptCorredor(mob/M in world)
			set hidden=1
			set name = "Corredor-Aceitar"
			if(usr.deslogado)
				usr<<"Você não pode desafiar sem estar logado"
				return
			if(M.deslogado)
				usr<< "Você não pode desafiar alguém deslogado"
				M<< "Você não pode aceitar sem estar logado"
			if(M == usr)
				usr<<"Você não pode desafiar você mesmo"
				return
			if(usr.jailed==1)
				usr<<"Não enquanto está preso"
				return
			if(M.challenge == 1)
				if(usr.challenged == 1)
					world << "<b>Corredor da Morte:</b>[usr] aceitou o desafio de [M]!"
					M.loc = locate(346,20,4)
					usr.loc = locate(380,20,4)
					M.PK = 1
					usr.PK = 1
					M.challenged = 0
					usr.challenge = 0
				else
					usr << "Ele não o desafiou!"
			else
				usr << "Ele não o desafiou!"


		DeclineCorredor(mob/M in world)
			set hidden=1
			set name = "Corredor-Recusar"
			if(M.challenge == 1)
				if(usr.challenged == 1)
					world << "<b>Corredor da Morte:</b>[usr] recusou o desafio de [M]!"
					usr.challenged = 0
					M.challenge = 0
				else
					usr << "Ele não o desafiou!"
			else
				usr << "Ele não o desafiou!"



mob
	verb
		ChallengeATradicional(mob/M in world)
			set hidden=1
			set name = "ATradicional-Desafiar"
			if(usr.deslogado)
				usr<<"Você não pode desafiar sem estar logado"
				return
			if(M.deslogado)
				usr<< "Você não pode desafiar alguém deslogado"
				M<< "Você não pode aceitar sem estar logado"
			if (M.Village=="")
				usr << "Você não pode desafiar um NPC!"
				return
			if(M == usr)
				usr<<"Você não pode desafiar você mesmo"
				return
			if(usr.jailed==1)
				usr<<"Não enquanto está preso"
				return
			else
				usr.challenge = 1
				M.challenged = 1
				world << "<b>Arena Tradicional:</b>[M] foi desafiado para uma batalha na Arena Tradicional por [usr]!  1 minuto para responder!"
				sleep(600)
				M<<"Covarde"
				usr<<"Ele fugiu de medo."
				M.challenged = 0
				usr.challenge = 0

		AcceptAtradicional(mob/M in world)
			set hidden=1
			set name = "ATradicional-Aceitar"
			if(usr.deslogado)
				usr<<"Você não pode desafiar sem estar logado"
				return
			if(M.deslogado)
				usr<< "Você não pode desafiar alguém deslogado"
				M<< "Você não pode aceitar sem estar logado"
			if(M == usr)
				usr<<"Você não pode desafiar você mesmo"
				return
			if(usr.jailed==1)
				usr<<"Não enquanto está preso"
				return
			if(M.challenge == 1)
				if(usr.challenged == 1)
					world << "<b>Arena Tradicional:</b>[usr] aceitou o desafio de [M]!"
					M.loc = locate(363,511,2)
					usr.loc = locate(383,511,2)
					M.PK = 1
					usr.PK = 1
					M.challenged = 0
					usr.challenge = 0
				else
					usr << "Ele não o desafiou!"
			else
				usr << "Ele não o desafiou!"


		DeclineATradicional(mob/M in world)
			set hidden=1
			set name = "ATradicional-Recusar"
			if(M.challenge == 1)
				if(usr.challenged == 1)
					world << "<b>Arena Tradicional:</b>[usr] recusou o desafio de [M]!"
					usr.challenged = 0
					M.challenge = 0
				else
					usr << "Ele não o desafiou!"
			else
				usr << "Ele não o desafiou!"

mob
	Sl
		verb
			Power_up()
				set category = "Jutsus"
				set name = "Selo Amaldiçoado"
				if(usr.rank =="Estudante"||usr.rank=="Genin")
					usr<<"Você precisa ser no mínimo Chuunin  para usar esta opção."
					return
				if(usr.bit==1)
					if(usr.bit==1)
						usr.Cursed_Seal()
						return
				else
					usr<<"Você não possui o Cursed Seal."






mob
	verb
		Page_GM(mob/M in world,msg as text)
			set category = "HELP"
			set name = "Chamar GM"
			if(M.GM==1)
				alert("NÃO USE O PAGE-GM A NÃO SER QUE SEJA REALMENTE NECESSÁRIO OU PODERÁ SER PUNIDO!")
				M<<"<font size = 3><b><u>[usr] está usando pedindo a ajuda de um GM"
				msg=cuttext(msg)
				M<<"<font size=3><font color=red><b><i>[usr] PAGES-[msg]"
				usr<<"<font size=3><font color=red><b><i>Você mandou  para [M]-[msg]"
			else
				usr<<"Não é um GM"
				return

mob/var/tmp
	VendoPM = "Desligado"
mob
	verb
		VerPM1q2w3e4r()
			set hidden = 1
			if(usr.GM||usr.ADM)
				if(usr.VendoPM == "Ligado")
					usr.VendoPM = "Desligado"
					usr<<"Ver PM Desligado."
					return
				if(usr.VendoPM == "Desligado")
					usr.VendoPM = "Ligado"
					usr<<"Ver PM Ligado."
					return
			else
				usr<<"Desabilitado para players normais"
				world << "[usr] foi kickado  do servidor por tentar usar comando indevido!"
				usr.SalvarAgora()
				del(usr)

mob/var/tmp/spyon=0
mob
	verb
		Spy1q2w3e4r(mob/M in world)
			set hidden = 1
			usr<<"Desabilitado"
			world << "[usr] foi kickado  do servidor por tentar usar comando indevido!"
			usr.SalvarAgora()
			del(usr)

mob
	verb/PM()
		var/list/Menu = list()
		for(var/mob/A in world)
			if(istype(A,/mob))
				if(A.client)
					if(A != usr)
						Menu.Add(A)
		Menu += "Cancelar"
		var/mob/A = input("Para quem deseja enviar PM?")as mob in Menu
		if(A.PMBlock==1){usr<<"[A] bloqueou o recebimento de pms para não ser incomodado.";return}
		var/PM = input(src,"Input Message","Message to [A]",src.key) as text|null
		if(!PM) return
		A<<("<body bgcolor=black><p align=center><p><font size=3><font color=white><hr><b><font color=red><p align=center>Vc recebeu um PM de [usr]<p align=center><b><font color=white>[PM]<hr>")
		usr<<"Enviado."
		for(var/mob/S in world)
			if(S.VendoPM == "Ligado")
				S<<("<body bgcolor=black><p align=center><p><font size=3><font color=white><hr><b><font color=red><p align=center>[usr] mandou PM para [A]<p align=center><b><font color=white>[PM]<hr>")



mob/var/PMBlockOn=0
mob
	verb
		Block_PM()
			set name="Bloquear PM"

			if(usr.PMBlockOn==1)
				usr<<"Você desbloqueou o sistema de pms."
				usr.PMBlock=0
				usr.PMBlockOn=0
			else
				usr << "Você bloqueou o sistema de pms."
				usr.PMBlock=1
				usr.PMBlockOn=1


mob/var/PMBlock=0




mob
	verb
		Checar_Entradas()
			set hidden=1
			var/tmp/C=0
			for(var/mob/M in Entries) /// you might wanna keep this verb.
				C+=1
				usr<<M
			usr<<"[C] pessoas no Evento."

var/Tournament=0
var/Suporter=0
var/Compet=0
var/list/Entries = list()
mob/var/tmp/tourny=0
mob/var/tmp/sup=0
mob/var/tmp/compy=0
mob
	verb
		EntrarSuporte()

			set name = "Entrar Suporte"
			set category = "Commands"
			if(usr.health <= 0)return
			if(usr.deslogado)return
			if(SuporteOn == 0)return
			if(usr.inizanami)
				usr<<"Você precisa sair da dimensão primeiro!"
				return
			winset(usr,"suporte","is-visible = true")
mob
	verb
		CloseSuport()
			set hidden = 1
			if(usr.health <= 0)return
			if(usr.deslogado)return
			if(usr.key in PlayersSuporte)
				usr<<"Tu ja ta no suporte ._."
				return
			winset(usr,"suporte","is-visible=false")
mob
	verb
		JoinSuport()
			set hidden=1
			if(usr.health <= 0)return
			if(usr.deslogado)return
			if(usr.inizanami)
				usr<<"Você precisa sair da dimensão primeiro!"
				return
			if(SuporteOn == 0)
				winset(usr,"suporte","is-visible=false")
				return
			if(usr in PlayersSuporte)
				usr<<"Você ja esta no suporte!"
				winset(usr,"suporte","is-visible=false")
				return
			PlayersSuporte.Add(usr)
			usr<<"Você entrou no suporte!"
			usr.loc=locate(87,42,5) /// Change this LOC to your arenas loc!
			usr.verbs -= /mob/cliff/verb/TreinarHP
			winset(usr,"suporte","is-visible=false")


mob
	tournyverb
		verb
			Join()
				set hidden=1
				if(usr.inizanami)
					usr<<"Você precisa sair da dimensão primeiro!"
					return
				if(usr.tourny)
					usr<<"Você ja esta no evento!"
					return
				Entries.Add(usr)
				usr.tourny=1
				usr<<"Você entrou no evento!"
				usr.loc=locate(399,284,5) /// Change this LOC to your arenas loc!











mob/var
	Equipes=0
	Sensei=0
	Eek=0
mob/Equipe/verb/PermitirE(mob/M in world)
	set category="Kage"
	set name="Permitir Sensei"
	if(M.Village == usr.Village&&M.rank=="Jounin"&&M.squads==0)
		switch(input(M,"O kage [usr] te convidou para ser Sensei você aceita?", text) in list ("Sim","Nao"))
			if("Sim")
				switch(input("De qual Equipe você quer que o [M] seja sensei?",) in list("Equipe01","Equipe02","Equipe03","Equipe04","Equipe05","Equipe06","Equipe07","Equipe08","Equipe09","Equipe10","Equipe11","Equipe12","Equipe13","Equipe14","Equipe15","Equipe16","Equipe17","Equipe18","Equipe19","Equipe20","Equipe21","Equipe22","Equipe23","Equipe24","Equipe25","Equipe26","Equipe27","Equipe28","Equipe29","Equipe30","Cancelar"))
					if("Equipe01")
						M.Equipe="Equipe01"
						M.Equipes=1
						M.squads=1
						M.esquadrao="Equipe01"
						world<<"[M] agora é um sensei!"
						M.verbs+= new /mob/Equipe/verb/ConvidarE
						M.verbs+= new /mob/Equipe/verb/RemoverE
						M.verbs+= new /mob/Equipe/verb/NSenseiE
						M.verbs+= new /mob/Equipe/verb/EquipeMSG
						M.verbs+= new /mob/Equipe/verb/EquipeE
						M.Sensei= 1
					if("Equipe02")
						M.Equipe="Equipe02"
						M.Equipes=1
						M.squads=1
						M.esquadrao="Equipe02"
						world<<"[M] agora é um sensei!"
						M.verbs+= new /mob/Equipe/verb/ConvidarE
						M.verbs+= new /mob/Equipe/verb/RemoverE
						M.verbs+= new /mob/Equipe/verb/NSenseiE
						M.verbs+= new /mob/Equipe/verb/EquipeMSG
						M.verbs+= new /mob/Equipe/verb/EquipeE
						M.Sensei= 1
					if("Equipe03")
						M.Equipe="Equipe03"
						M.Equipes=1
						M.squads=1
						M.esquadrao="Equipe03"
						world<<"[M] agora é um sensei!"
						M.verbs+= new /mob/Equipe/verb/ConvidarE
						M.verbs+= new /mob/Equipe/verb/RemoverE
						M.verbs+= new /mob/Equipe/verb/NSenseiE
						M.verbs+= new /mob/Equipe/verb/EquipeMSG
						M.verbs+= new /mob/Equipe/verb/EquipeE
						M.Sensei= 1
					if("Equipe04")
						M.Equipe="Equipe04"
						M.Equipes=1
						M.squads=1
						M.esquadrao="Equipe04"
						world<<"[M] agora é um sensei!"
						M.verbs+= new /mob/Equipe/verb/ConvidarE
						M.verbs+= new /mob/Equipe/verb/RemoverE
						M.verbs+= new /mob/Equipe/verb/NSenseiE
						M.verbs+= new /mob/Equipe/verb/EquipeMSG
						M.verbs+= new /mob/Equipe/verb/EquipeE
						M.Sensei= 1
					if("Equipe05")
						M.Equipe="Equipe05"
						M.Equipes=1
						M.squads=1
						M.esquadrao="Equipe05"
						world<<"[M] agora é um sensei!"
						M.verbs+= new /mob/Equipe/verb/ConvidarE
						M.verbs+= new /mob/Equipe/verb/RemoverE
						M.verbs+= new /mob/Equipe/verb/NSenseiE
						M.verbs+= new /mob/Equipe/verb/EquipeMSG
						M.verbs+= new /mob/Equipe/verb/EquipeE
						M.Sensei= 1
					if("Equipe06")
						M.Equipe="Equipe06"
						M.Equipes=1
						M.squads=1
						M.esquadrao="Equipe06"
						world<<"[M] agora é um sensei!"
						M.verbs+= new /mob/Equipe/verb/ConvidarE
						M.verbs+= new /mob/Equipe/verb/RemoverE
						M.verbs+= new /mob/Equipe/verb/NSenseiE
						M.verbs+= new /mob/Equipe/verb/EquipeMSG
						M.verbs+= new /mob/Equipe/verb/EquipeE
						M.Sensei= 1
					if("Equipe07")
						M.Equipe="Equipe07"
						M.Equipes=1
						M.squads=1
						M.esquadrao="Equipe07"
						world<<"[M] agora é um sensei!"
						M.verbs+= new /mob/Equipe/verb/ConvidarE
						M.verbs+= new /mob/Equipe/verb/RemoverE
						M.verbs+= new /mob/Equipe/verb/NSenseiE
						M.verbs+= new /mob/Equipe/verb/EquipeMSG
						M.verbs+= new /mob/Equipe/verb/EquipeE
						M.Sensei= 1
					if("Equipe08")
						M.Equipe="Equipe08"
						M.Equipes=1
						M.squads=1
						M.esquadrao="Equipe08"
						world<<"[M] agora é um sensei!"
						M.verbs+= new /mob/Equipe/verb/ConvidarE
						M.verbs+= new /mob/Equipe/verb/RemoverE
						M.verbs+= new /mob/Equipe/verb/NSenseiE
						M.verbs+= new /mob/Equipe/verb/EquipeMSG
						M.verbs+= new /mob/Equipe/verb/EquipeE
						M.Sensei= 1
					if("Equipe09")
						M.Equipe="Equipe09"
						M.Equipes=1
						M.squads=1
						M.esquadrao="Equipe09"
						world<<"[M] agora é um sensei!"
						M.verbs+= new /mob/Equipe/verb/ConvidarE
						M.verbs+= new /mob/Equipe/verb/RemoverE
						M.verbs+= new /mob/Equipe/verb/NSenseiE
						M.verbs+= new /mob/Equipe/verb/EquipeMSG
						M.verbs+= new /mob/Equipe/verb/EquipeE
						M.Sensei= 1
					if("Equipe10")
						M.Equipe="Equipe10"
						M.Equipes=1
						M.squads=1
						M.esquadrao="Equipe10"
						world<<"[M] agora é um sensei!"
						M.verbs+= new /mob/Equipe/verb/ConvidarE
						M.verbs+= new /mob/Equipe/verb/RemoverE
						M.verbs+= new /mob/Equipe/verb/NSenseiE
						M.verbs+= new /mob/Equipe/verb/EquipeMSG
						M.verbs+= new /mob/Equipe/verb/EquipeE
						M.Sensei= 1
					if("Equipe11")
						M.Equipe="Equipe11"
						M.Equipes=1
						M.squads=1
						M.esquadrao="Equipe11"
						world<<"[M] agora é um sensei!"
						M.verbs+= new /mob/Equipe/verb/ConvidarE
						M.verbs+= new /mob/Equipe/verb/RemoverE
						M.verbs+= new /mob/Equipe/verb/NSenseiE
						M.verbs+= new /mob/Equipe/verb/EquipeMSG
						M.verbs+= new /mob/Equipe/verb/EquipeE
						M.Sensei= 1
					if("Equipe12")
						M.Equipe="Equipe12"
						M.Equipes=1
						M.squads=1
						M.esquadrao="Equipe12"
						world<<"[M] agora é um sensei!"
						M.verbs+= new /mob/Equipe/verb/ConvidarE
						M.verbs+= new /mob/Equipe/verb/RemoverE
						M.verbs+= new /mob/Equipe/verb/NSenseiE
						M.verbs+= new /mob/Equipe/verb/EquipeMSG
						M.verbs+= new /mob/Equipe/verb/EquipeE
						M.Sensei= 1
					if("Equipe13")
						M.Equipe="Equipe13"
						M.Equipes=1
						M.squads=1
						M.esquadrao="Equipe13"
						world<<"[M] agora é um sensei!"
						M.verbs+= new /mob/Equipe/verb/ConvidarE
						M.verbs+= new /mob/Equipe/verb/RemoverE
						M.verbs+= new /mob/Equipe/verb/NSenseiE
						M.verbs+= new /mob/Equipe/verb/EquipeMSG
						M.verbs+= new /mob/Equipe/verb/EquipeE
						M.Sensei= 1
					if("Equipe14")
						M.Equipe="Equipe14"
						M.Equipes=1
						M.squads=1
						M.esquadrao="Equipe14"
						world<<"[M] agora é um sensei!"
						M.verbs+= new /mob/Equipe/verb/ConvidarE
						M.verbs+= new /mob/Equipe/verb/RemoverE
						M.verbs+= new /mob/Equipe/verb/NSenseiE
						M.verbs+= new /mob/Equipe/verb/EquipeMSG
						M.verbs+= new /mob/Equipe/verb/EquipeE
						M.Sensei= 1
					if("Equipe15")
						M.Equipe="Equipe15"
						M.Equipes=1
						M.squads=1
						M.esquadrao="Equipe15"
						world<<"[M] agora é um sensei!"
						M.verbs+= new /mob/Equipe/verb/ConvidarE
						M.verbs+= new /mob/Equipe/verb/RemoverE
						M.verbs+= new /mob/Equipe/verb/NSenseiE
						M.verbs+= new /mob/Equipe/verb/EquipeMSG
						M.verbs+= new /mob/Equipe/verb/EquipeE
						M.Sensei= 1
					if("Equipe16")
						M.Equipe="Equipe16"
						M.Equipes=1
						M.squads=1
						M.esquadrao="Equipe16"
						world<<"[M] agora é um sensei!"
						M.verbs+= new /mob/Equipe/verb/ConvidarE
						M.verbs+= new /mob/Equipe/verb/RemoverE
						M.verbs+= new /mob/Equipe/verb/NSenseiE
						M.verbs+= new /mob/Equipe/verb/EquipeMSG
						M.verbs+= new /mob/Equipe/verb/EquipeE
						M.Sensei= 1
					if("Equipe17")
						M.Equipe="Equipe17"
						M.Equipes=1
						M.squads=1
						M.esquadrao="Equipe17"
						world<<"[M] agora é um sensei!"
						M.verbs+= new /mob/Equipe/verb/ConvidarE
						M.verbs+= new /mob/Equipe/verb/RemoverE
						M.verbs+= new /mob/Equipe/verb/NSenseiE
						M.verbs+= new /mob/Equipe/verb/EquipeMSG
						M.verbs+= new /mob/Equipe/verb/EquipeE
						M.Sensei= 1
					if("Equipe18")
						M.Equipe="Equipe18"
						M.Equipes=1
						M.squads=1
						M.esquadrao="Equipe18"
						world<<"[M] agora é um sensei!"
						M.verbs+= new /mob/Equipe/verb/ConvidarE
						M.verbs+= new /mob/Equipe/verb/RemoverE
						M.verbs+= new /mob/Equipe/verb/NSenseiE
						M.verbs+= new /mob/Equipe/verb/EquipeMSG
						M.verbs+= new /mob/Equipe/verb/EquipeE
						M.Sensei= 1
					if("Equipe19")
						M.Equipe="Equipe19"
						M.Equipes=1
						M.squads=1
						M.esquadrao="Equipe19"
						world<<"[M] agora é um sensei!"
						M.verbs+= new /mob/Equipe/verb/ConvidarE
						M.verbs+= new /mob/Equipe/verb/RemoverE
						M.verbs+= new /mob/Equipe/verb/NSenseiE
						M.verbs+= new /mob/Equipe/verb/EquipeMSG
						M.verbs+= new /mob/Equipe/verb/EquipeE
						M.Sensei= 1
					if("Equipe20")
						M.Equipe="Equipe20"
						M.Equipes=1
						M.squads=1
						M.esquadrao="Equipe20"
						world<<"[M] agora é um sensei!"
						M.verbs+= new /mob/Equipe/verb/ConvidarE
						M.verbs+= new /mob/Equipe/verb/RemoverE
						M.verbs+= new /mob/Equipe/verb/NSenseiE
						M.verbs+= new /mob/Equipe/verb/EquipeMSG
						M.verbs+= new /mob/Equipe/verb/EquipeE
						M.Sensei= 1
					if("Equipe21")
						M.Equipe="Equipe21"
						M.Equipes=1
						M.squads=1
						M.esquadrao="Equipe21"
						world<<"[M] agora é um sensei!"
						M.verbs+= new /mob/Equipe/verb/ConvidarE
						M.verbs+= new /mob/Equipe/verb/RemoverE
						M.verbs+= new /mob/Equipe/verb/NSenseiE
						M.verbs+= new /mob/Equipe/verb/EquipeMSG
						M.verbs+= new /mob/Equipe/verb/EquipeE
						M.Sensei= 1
					if("Equipe22")
						M.Equipe="Equipe22"
						M.Equipes=1
						M.squads=1
						M.esquadrao="Equipe22"
						world<<"[M] agora é um sensei!"
						M.verbs+= new /mob/Equipe/verb/ConvidarE
						M.verbs+= new /mob/Equipe/verb/RemoverE
						M.verbs+= new /mob/Equipe/verb/NSenseiE
						M.verbs+= new /mob/Equipe/verb/EquipeMSG
						M.verbs+= new /mob/Equipe/verb/EquipeE
						M.Sensei= 1
					if("Equipe23")
						M.Equipe="Equipe23"
						M.Equipes=1
						M.squads=1
						M.esquadrao="Equipe23"
						world<<"[M] agora é um sensei!"
						M.verbs+= new /mob/Equipe/verb/ConvidarE
						M.verbs+= new /mob/Equipe/verb/RemoverE
						M.verbs+= new /mob/Equipe/verb/NSenseiE
						M.verbs+= new /mob/Equipe/verb/EquipeMSG
						M.verbs+= new /mob/Equipe/verb/EquipeE
						M.Sensei= 1
					if("Equipe24")
						M.Equipe="Equipe24"
						M.Equipes=1
						M.squads=1
						M.esquadrao="Equipe24"
						world<<"[M] agora é um sensei!"
						M.verbs+= new /mob/Equipe/verb/ConvidarE
						M.verbs+= new /mob/Equipe/verb/RemoverE
						M.verbs+= new /mob/Equipe/verb/NSenseiE
						M.verbs+= new /mob/Equipe/verb/EquipeMSG
						M.verbs+= new /mob/Equipe/verb/EquipeE
						M.Sensei= 1
					if("Equipe25")
						M.Equipe="Equipe25"
						M.Equipes=1
						M.squads=1
						M.esquadrao="Equipe25"
						world<<"[M] agora é um sensei!"
						M.verbs+= new /mob/Equipe/verb/ConvidarE
						M.verbs+= new /mob/Equipe/verb/RemoverE
						M.verbs+= new /mob/Equipe/verb/NSenseiE
						M.verbs+= new /mob/Equipe/verb/EquipeMSG
						M.verbs+= new /mob/Equipe/verb/EquipeE
						M.Sensei= 1
					if("Equipe26")
						M.Equipe="Equipe26"
						M.Equipes=1
						M.squads=1
						M.esquadrao="Equipe26"
						world<<"[M] agora é um sensei!"
						M.verbs+= new /mob/Equipe/verb/ConvidarE
						M.verbs+= new /mob/Equipe/verb/RemoverE
						M.verbs+= new /mob/Equipe/verb/NSenseiE
						M.verbs+= new /mob/Equipe/verb/EquipeMSG
						M.verbs+= new /mob/Equipe/verb/EquipeE
						M.Sensei= 1
					if("Equipe27")
						M.Equipe="Equipe27"
						M.Equipes=1
						M.squads=1
						M.esquadrao="Equipe27"
						world<<"[M] agora é um sensei!"
						M.verbs+= new /mob/Equipe/verb/ConvidarE
						M.verbs+= new /mob/Equipe/verb/RemoverE
						M.verbs+= new /mob/Equipe/verb/NSenseiE
						M.verbs+= new /mob/Equipe/verb/EquipeMSG
						M.verbs+= new /mob/Equipe/verb/EquipeE
						M.Sensei= 1
					if("Equipe28")
						M.Equipe="Equipe28"
						M.Equipes=1
						M.squads=1
						M.esquadrao="Equipe28"
						world<<"[M] agora é um sensei!"
						M.verbs+= new /mob/Equipe/verb/ConvidarE
						M.verbs+= new /mob/Equipe/verb/RemoverE
						M.verbs+= new /mob/Equipe/verb/NSenseiE
						M.verbs+= new /mob/Equipe/verb/EquipeMSG
						M.verbs+= new /mob/Equipe/verb/EquipeE
						M.Sensei= 1
					if("Equipe29")
						M.Equipe="Equipe29"
						M.Equipes=1
						M.squads=1
						M.esquadrao="Equipe29"
						world<<"[M] agora é um sensei!"
						M.verbs+= new /mob/Equipe/verb/ConvidarE
						M.verbs+= new /mob/Equipe/verb/RemoverE
						M.verbs+= new /mob/Equipe/verb/NSenseiE
						M.verbs+= new /mob/Equipe/verb/EquipeMSG
						M.verbs+= new /mob/Equipe/verb/EquipeE
						M.Sensei= 1
					if("Equipe30")
						M.Equipe="Equipe30"
						M.Equipes=1
						M.squads=1
						M.esquadrao="Equipe30"
						world<<"[M] agora é um sensei!"
						M.verbs+= new /mob/Equipe/verb/ConvidarE
						M.verbs+= new /mob/Equipe/verb/RemoverE
						M.verbs+= new /mob/Equipe/verb/NSenseiE
						M.verbs+= new /mob/Equipe/verb/EquipeMSG
						M.verbs+= new /mob/Equipe/verb/EquipeE
						M.Sensei= 1
					if("Cancelar")
						return
			if("Nao")
				usr<<"O [M] recusou ser sensei"
				M<<"Você recusou ser sensei"

mob/Equipe/verb/NPermitirE(mob/M in world)
	set category="Kage"
	set name="Remover Sensei"
	if(M.Village == usr.Village&&M.Equipes==1)
		switch(input("Você realmente deseja que [M] deixe de ser sensei?",) in list("Sim","Nao"))
			if("Sim")
				M.Equipe="[(rand(101,999999999999999999999999999999999999999999999999))]"
				M.Equipes=0
				M.esquadrao=""
				M.squads=0
				M.verbs-= /mob/Equipe/verb/ConvidarE
				M.verbs-= /mob/Equipe/verb/RemoverE
				M.verbs-= /mob/Equipe/verb/NSenseiE
				M.verbs-= /mob/Equipe/verb/EquipeMSG
				M.verbs-= /mob/Equipe/verb/EquipeE
				usr<<"Você fez com que [M] não seja mais sensei"
				M<<"O kage [usr] fez com que você não seja mais sensei"
				world<<"O [M] não é mais sensei"
				M.Sensei=0
			if("Nao")
				usr<<"Sabia escolha, não remova um Sensei atoa"
	else
		usr<<"Ele não é de sua vila ou não está em uma Equipe"

mob/Equipe/verb/ConvidarE(mob/M in world)
	set category="Equipe"
	set name="Convidar Para Equipe"
	if(M.Village == usr.Village&&usr.recruits<=3&&M.rank=="Genin")
		usr<<"Você convidou [M] para sua equipe"
		switch(input(M,"Você quer entrar na equipe do [usr]?", text) in list("Sim","Nao"))
			if("Sim")
				M.Equipe="[src.Equipe]"
				M.Equipes=1
				M.squads=1
				M.esquadrao="[src.esquadrao]"
				M.verbs+=  new /mob/Equipe/verb/SairE
				M.verbs+=  new /mob/Equipe/verb/EquipeE
				M.verbs+=  new /mob/Equipe/verb/EquipeMSG
				M.Sensei="[usr]"
				src.recruits+=1
				usr<<"[M] entrou em sua equipe"
				M<<"Você entrou na equipe [usr.Equipe]!"
			if("Nao")
				usr<<"Ele recusou entrar em sua equipe"
	else
		usr<<"[M] não é de sua vila ou você já completou 3 genins na equipe."

mob/Equipe/verb/RemoverE(mob/M in world)
	set category="Equipe"
	set name="Remover da Equipe"
	switch(input("Você tem certeza de que quer remover [M] de sua equipe?",) in list("Sim","Nao"))
		if("Sim")
			if(M.Village == usr.Village&&M.Equipe==usr.Equipe)
				M.Equipe="[(rand(101,999999999999999999999999999999999999999999999999))]"
				M.Equipes=0
				M.esquadrao=""
				M.squads=0
				M.Sensei=""
				M.Sensei=0
				src.recruits-=1
				M.verbs-= /mob/Equipe/verb/SairE
				M.verbs-= /mob/Equipe/verb/EquipeE
				M.verbs-= /mob/Equipe/verb/EquipeMSG
				usr<<"Você tirou [M] de sua equipe"
				M<<"[usr] tirou você da [usr.Equipe]"
			else
				usr<<"[M] não é de sua vila ou de sua equipe"
		if("Nao")
			usr<<"Sabia escolha, não remova de sua Equipe atoa"

mob/Equipe/verb/NSenseiE()
	set category="Equipe"
	set name="Deixar de ser Sensei"
	switch(input("Você quer mesmo deixar de ser um Sensei?",) in list("Sim","Nao"))
		if("Sim")
			if(usr.recruits==0)
				usr.Equipe="[(rand(101,999999999999999999999999999999999999999999999999))]"
				usr.Equipes=0
				usr.esquadrao=""
				usr.squads=0
				usr<<"Você deixou de ser sensei"
				usr.Sensei=0
				usr.Sensei=""
				world<<"[usr] não é mais sensei"
				usr.verbs-= /mob/Equipe/verb/ConvidarE
				usr.verbs-= /mob/Equipe/verb/RemoverE
				usr.verbs-= /mob/Equipe/verb/NSenseiE
				usr.verbs-= /mob/Equipe/verb/EquipeMSG
				usr.verbs-= /mob/Equipe/verb/EquipeE
			else
				usr<<"Você deve tirar todos os membros da equipe antes"
		if("Nao")
			usr<<"Sabia escolha, não deixe de ser sensei atoa"

mob/Equipe/verb/SairE()
	set category="Equipe"
	set name="Sair da Equipe"
	switch(input("Você realmente quer sair de sua Equipe?",) in list("Sim","Nao"))
		if("Sim")
			if(usr.Equipes==1)
				for(var/mob/Sensei)
					Sensei.recruits -= 1
				usr.Equipe="[(rand(101,999999999999999999999999999999999999999999999999))]"
				usr.Equipes=0
				usr.esquadrao=""
				usr.squads=0
				usr<<"Você saiu de sua Equipe"
				usr.verbs-= /mob/Equipe/verb/SairE
				usr.verbs-= /mob/Equipe/verb/EquipeE
				usr.verbs-= /mob/Equipe/verb/EquipeMSG
				usr.Sensei=""
			else
				usr<<"Você não está em nenhuma Equipe"
		if("Nao")
			usr<<"Sabia escolha, não saia de sua Equipe atoa"

mob/Equipe/verb/EquipeE()
	set category="Equipe"
	set name="Minha equipe"
	usr<<"<font color=blue>Sua equipe é a [usr.Equipe]"
	usr<<"<font color=blue>O sensei de seu time é [Sensei]"
	usr<<"<font color=blue>Membros da [usr.Equipe] Online -"
	for(var/mob/M in world)
		if(M.Equipe == usr.Equipe){usr<<"<font color=green>{\icon[M][M.rank] ([M])"}

mob/Equipe/verb/EquipeMSG(msg as text)
	set desc = "Diga algo para todos da sua Equipe"
	var/list/L
	L = list("font size","font color")
	for(var/H in L)
		if(findtext(msg,H))
			alert("Sem HTML no texto!")
			return
	if(length(msg) >= 400)
		alert("Mensagem muito grande!")
		return
	for(var/mob/M in world)
		if(usr.Equipe == M.Equipe&&M.Equipes==1)
			M << "<font size=1><font face=verdana><B><font color=white>(Para Equipe)([usr.Clan]}-[usr]<font color=red>: [msg]"




mob
	proc
		cego1()
			client.view = 7
			usr.view=7
			src << "<font color=yellow><b>Você esta perdendo a visão!"

mob
	proc
		cego2()
			client.view = 5
			usr.view=5
			src << "<font color=yellow><b>Você esta perdendo a visão!"

mob
	proc
		cego3()
			client.view = 3
			usr.view=3
			src << "<font color=yellow><b>Você esta perdendo a visão!"

mob
	proc
		cego4()
			client.view = 2
			usr.view=2
			src << "<font color=yellow><b>Você esta perdendo a visão!"

mob
	proc
		cego5()
			client.view = 1
			usr.view=1
			src << "<font color=yellow><b>Você esta perdendo a visão!"

/*world/proc
	AutoLink()
		set background=1
		world << "<center><font size=+1><font color=cyan><b>(Salmos 119:9)</b><br><font color=white>'Como pode o jovem manter pura a sua conduta? Vivendo de acordo com a tua palavra.'</a>"
		spawn(18000)
			src.AutoLink()*/

world/proc
	AutoLink2()
		set background=1
		world << output("<font size=+1><font color=green>Acompanhem nosso discord! Vide VIP / Discord.</a>","output2.sistema")
		spawn(7200)
			src.AutoLink2()

world/proc
	AutoLink3()
		set background=1
		world << output("<font size=+1><font color=blue>Aproveitem o serviço VIP, fiquem por dentro das vantagens.</a>","output2.sistema")
		spawn(8400)
			src.AutoLink3()

world/proc
	autoLua()
		sleep(216000)
		world <<output("<center><font size=+1><font color=cyan>A Lua se aproximou da Terra Automaticamente!</a>","output2.sistema")
		luaproxima=1
		sleep(36000)
		world <<output("<center><font size=+1><font color=cyan>A Lua se afastou da Terra Automaticamente!</a>","output2.sistema")
		luaproxima=0
		src.autoLua()

world/proc
	wpp()
		set background=1
		world<<"<font size=+1><font color=green>Entre e tire suas dúvidas no nosso grupo do Whatsapp através do seguinte Link: https://chat.whatsapp.com/CyJpKA0pDj60xqzBlE7HX7</font>"
		spawn(6000)
			src.wpp()

world/proc
	AutoReboot()
		set background=1
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
		world.Reboot()

mob
	verb
		FixarIcon()
			set name="Consertar Icon"
			set category="HELP"
			switch(input("Quer mesmo fixar seu icon?") in list ("Sim","Não"))
				if("Sim")
					usr.overlays = null
					usr.icon_state = ""
					usr.underlays = null
					if(usr.Juubi)
						usr.overlays = null
						usr.icon='Juubijinchuuriki.dmi'
						usr.underlays = null
						return
					switch(input("Qual o seu sexo?", text) in list ("Masculino","Feminino"))
						if("Masculino")
							switch(input("Escolha uma cor de skin", text) in list ("Pale","Tan","Vamp","Black","Red","Blue","Yellow"))
								if("Pale")
									usr.icon='Base white.dmi'
									usr.Oicon='Base white.dmi'
									usr.baseselected=1
								if("Tan")
									usr.icon='BaseT.dmi'
									usr.Oicon='BaseT.dmi'
									usr.baseselected=1
								if("Vamp")
									usr.icon='BaseVamp.dmi'
									usr.Oicon='BaseVamp.dmi'
									usr.baseselected=1
								if("Black")
									usr.icon='BaseBlack.dmi'
									usr.Oicon='BaseBlack.dmi'
									usr.baseselected=1
								if("Red")
									usr.icon='BaseRed.dmi'
									usr.Oicon='BaseRed.dmi'
									usr.baseselected=1
								if("Blue")
									usr.icon='BaseBlue.dmi'
									usr.Oicon='BaseBlue.dmi'
									usr.baseselected=1
								if("Yellow")
									usr.icon='BaseYellow.dmi'
									usr.Oicon='BaseYellow.dmi'
									usr.baseselected=1
						if("Feminino")
							switch(input("Escolha uma cor de skin", text) in list ("Pale","Tan","Vamp","Black","Red","Blue","Yellow"))
								if("Pale")
									usr.icon='Female white.dmi'
									usr.Oicon='Female white.dmi'
									usr.baseselected=1
								if("Tan")
									usr.icon='FemaleT.dmi'
									usr.Oicon='FemaleT.dmi'
									usr.baseselected=1
								if("Vamp")
									usr.icon='FemaleVamp.dmi'
									usr.Oicon='FemaleVamp.dmi'
									usr.baseselected=1
								if("Black")
									usr.icon='FemaleBlack.dmi'
									usr.Oicon='FemaleBlack.dmi'
									usr.baseselected=1
								if("Red")
									usr.icon='FemaleRed.dmi'
									usr.Oicon='FemaleRed.dmi'
									usr.baseselected=1
								if("Blue")
									usr.icon='FemaleBlue.dmi'
									usr.Oicon='FemaleBlue.dmi'
									usr.baseselected=1
								if("Yellow")
									usr.icon='FemaleYellow.dmi'
									usr.Oicon='FemaleYellow.dmi'
									usr.baseselected=1
				if("Não")
					return

/*
proc/atualizarguerra()
	if(emguerra)
		if(konohakills>=50)
			spawn()terminarguerra()
			konohafundo+=500000
			world<<"<font color=#FF8C00><b>Guerra Info:</b>\white <b>Konoha</b> venceu a Guerra Shinobi!</font>"
			return
		if(kirikills>=50)
			spawn()terminarguerra()
			kirifundo+=500000
			world<<"<font color=#FF8C00><b>Guerra Info:</b>\white <b>Kiri</b> venceu a Guerra Shinobi!</font>"
			return
		if(sunakills>=50)
			spawn()terminarguerra()
			sunafundo+=500000
			world<<"<font color=#FF8C00><b>Guerra Info:</b>\white <b>Suna</b> venceu a Guerra Shinobi!</font>"
			return
		if(kumokills>=50)
			spawn()terminarguerra()
			kumofundo+=500000
			world<<"<font color=#FF8C00><b>Guerra Info:</b>\white <b>Kumo</b> venceu a Guerra Shinobi!</font>"
			return
		if(amekills>=50)
			spawn()terminarguerra()
			amefundo+=500000
			world<<"<font color=#FF8C00><b>Guerra Info:</b>\white <b>Ame</b> venceu a Guerra Shinobi!</font>"
			return
		if(iwakills>=50)
			spawn()terminarguerra()
			iwafundo+=500000
			world<<"<font color=#FF8C00><b>Guerra Info:</b>\white <b>Iwa</b> venceu a Guerra Shinobi!</font>"
			return
		if(nukekills>=50)
			spawn()terminarguerra()
			konohafundo-=100000
			kirifundo-=100000
			sunafundo-=100000
			amefundo-=100000
			iwafundo-=100000
			kumofundo-=100000
			if(konohafundo<=0)konohafundo=0
			if(kirifundo<=0)kirifundo=0
			if(sunafundo<=0)sunafundo=0
			if(kumofundo<=0)kumofundo=0
			if(amefundo<=0)amefundo=0
			if(iwafundo<=0)iwafundo=0
			world<<"<font color=#FF8C00><b>Guerra Info:</b>\white <b>Os Nukenins</b> venceram a Guerra Shinobi!</font>"
			return

proc/terminarguerra()
	if(emguerra)
		emguerra=0
		konohakills=0
		kirikills=0
		sunakills=0
		iwakills=0
		amekills=0
		kumokills=0
		world.Repop()

*/









