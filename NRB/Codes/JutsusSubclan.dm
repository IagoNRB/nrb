cs4//Konan
mob/var
	inshikigami=0
	inshiki=0
	CS4=0
	Makushi=0
	Kouken=0
	kamui2=0
	usandosom=0

obj
	BL
		icon = 'paperwings.dmi'
		icon_state = "BL"
		pixel_y=-32
		pixel_x=-32
	BM
		icon = 'paperwings.dmi'
		icon_state = "BM"
		pixel_y=-32
	BR
		icon = 'paperwings.dmi'
		icon_state = "BR"
		pixel_x=32
		pixel_y=-32
	TL
		icon = 'paperwings.dmi'
		icon_state = "TL"
		pixel_x=-32
		pixel_y=32
	TM
		icon = 'paperwings.dmi'
		icon_state = "TM"
		pixel_y=32
	TR
		icon = 'paperwings.dmi'
		icon_state = "TR"
		pixel_y=32
		pixel_x=32
	L
		icon = 'paperwings.dmi'
		icon_state = "L"
		pixel_x=-32
	M
		icon = 'paperwings.dmi'
		icon_state = "M"
	MN
		icon = 'paperwings.dmi'
		icon_state = "MN"
		layer = MOB_LAYER + 10
	R
		icon = 'paperwings.dmi'
		icon_state = "R"
		pixel_x=32
	papertree1
		icon = 'papertree.dmi'
		icon_state = "1"
		density=1
		layer = MOB_LAYER + 10
	papertree2
		icon = 'papertree.dmi'
		icon_state = "2"
		density=1
		pixel_x=32
		layer = MOB_LAYER + 10
	papertree3
		icon = 'papertree.dmi'
		icon_state = "3"
		density=1
		pixel_y=-32
		layer = MOB_LAYER + 10
	papertree4
		icon = 'papertree.dmi'
		icon_state = "4"
		density=1
		pixel_x=32
		pixel_y=-32
		layer = MOB_LAYER + 10
	papertree5
		icon = 'papertree.dmi'
		icon_state = "5"
		density=1
		pixel_y=32
		layer = MOB_LAYER + 10
	papertree6
		icon = 'papertree.dmi'
		icon_state = "6"
		density=1
		pixel_x=32
		pixel_y=32
		layer = MOB_LAYER + 10
	shikagami
		icon = 'shikagami.dmi'
		icon_state = "1"
		layer = MOB_LAYER + 10


// Kages

//Sub Tsunade
mob/var/tmp/Byakugo=0
mob/SubHokage
	verb
		ByakugonoJutsu()
			set name="Byakugo no Jutsu"
			set category="Jutsus"
			if(usr.cast)
				return
			if(usr.froze)
				usr<<"Você está paralisado"
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
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(!usr.Byakugo)
				usr.RandomChakra01()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				view()<<"<font color = blue>[usr]: Byakugo no Jutsu!"
				usr<<"Você começa a se regenerar"
				usr.Byakugo =1
				sand
				if(usr.Byakugo)
					if(usr.health >= usr.maxhealth)usr.health = usr.maxhealth
					usr.health += usr.maxhealth/50
					usr.chakra -= usr.Mchakra/50
					if(usr.chakra <= 4000)
						usr.Byakugo = 0
						return
					else
						sleep(40)
						goto sand
			else if(usr.Byakugo)
				usr.Byakugo=0
				usr<<"Você parou sua regeneração"
		Tsutenkyaku()
			set name="Tsutenkyaku"
			set category="Jutsus"
			for(var/mob/M in oview(3))
				if(usr.cdtsutenkyaku)
					usr<<"<b><font color = red> Tempo de Cooldown ativo, espere para poder usar o Tsutenkyaku novamente"
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
				if(usr.Frozen)
					usr<<"Você está paralisado"
					return
				if(usr.caught)
					usr<<"Você foi capturado"
					return
				if(M.ingat||M.intank)
					return
				if(usr.battlingRC)
					return
				if(M.battlingRC)
					return
				if(M.drunk&&M.NonClan)
					view()<<"[M] desvia do ataque de [usr]!"
					return
				if(M.PK==0)
					usr<<"Zona NON-PK!"
					return
				if(usr.PK==0)
					usr<<"Zona NON-PK!"
					return
				if(usr.stamina<5000)
					usr<<"Você não tem stamina o suficiente."
					return
				if(usr.cdsupersoco)return
				usr.cdtsutenkyaku=1
				spawn()usr.Cooldown(120,"Tsutenkyaku")
				if(usr.chakra<5000)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				if(M.Kaiten)
					var/damage = usr.tai/4.5 + usr.shurikenskill/4.5 + usr.nin/4.5 + usr.gen/4.5 -M.tai/4.5 + M.shurikenskill/4.5 + M.nin/4.5 + M.gen/4.5
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
					flick("Attack",usr)
					var/damage = usr.tai/4.5 + usr.shurikenskill/4.5 + usr.nin/4.5 + usr.gen/4.5 - M.Resistencia/2
					if(damage <= 0)damage=0
					view()<<"<b>[usr] grita: Tsutenkyaku!"
					M.EsquivaSharingan(usr)
					usr.loc = locate(M.x,M.y,M.z)
					view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
					var/obj/Crater_Center/B = new /obj/Crater_Center
					B.loc = M.loc
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					usr.chakra -= 5000
					usr.stamina -= 5000
					M.Death(usr)
					spawn usr.Castando()
					return


mob/var/tmp/cdyoutonnoj=0
mob/SubMizukage
	verb
		KoumanoJutsu()
			set name = "Futton: Kouma no Jutsu"
			set category="Jutsus"
			if(usr.cdkouma)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Futton: Kouma no Jutsu</b>!"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.Frozen)
				usr<<"Você está paralisado"
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
			if(usr.cast)
				return
			else
				for(var/mob/M in oview(3))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(usr.cdkouma)return
					if(M.PK==0)
						usr<<"Zona NON-PK!!!"
						return
					usr.cdkouma=1
					spawn()usr.Cooldown(300,"Kouma no Jutsu")
					usr.RandomChakra05()
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Futton: Kouma no Jutsu"
					//usr.overlays+='Sharingan Amaterasu.dmi'
					var/obj/kouma/K = new /obj/kouma
					var/obj/kouma/L = new /obj/kouma
					var/obj/kouma/M1 = new /obj/kouma
					var/obj/kouma/N = new /obj/kouma
					var/obj/kouma/K2 = new /obj/kouma
					var/obj/kouma/L2 = new /obj/kouma
					var/obj/kouma/M2 = new /obj/kouma
					var/obj/kouma/N2 = new /obj/kouma
					var/obj/kouma/N3 = new /obj/kouma
					var/obj/kouma/N4 = new /obj/kouma
					var/obj/kouma/N5 = new /obj/kouma
					var/obj/kouma/N6 = new /obj/kouma
					var/obj/kouma/N7 = new /obj/kouma
					var/obj/kouma/N8 = new /obj/kouma
					var/obj/kouma/N9 = new /obj/kouma
					var/obj/kouma/N10 = new /obj/kouma
					var/obj/kouma/N11 = new /obj/kouma
					var/obj/kouma/N12 = new /obj/kouma
					var/obj/kouma/N13 = new /obj/kouma
					var/obj/kouma/N14 = new /obj/kouma
					var/obj/kouma/N15 = new /obj/kouma
					var/obj/kouma/N16 = new /obj/kouma
					var/obj/kouma/N17 = new /obj/kouma
					var/obj/kouma/N18 = new /obj/kouma
					var/obj/kouma/N19 = new /obj/kouma
					K.loc = locate(M.x-1,M.y,M.z)
					K.nin = usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.aguaN*1.5 + usr.fogoN*1.5
					K.Gowner = usr
					K.burn()
					L.loc = locate(M.x+1,M.y,M.z)
					L.nin = usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.aguaN*1.5 + usr.fogoN*1.5
					L.Gowner = usr
					L.burn()
					M1.loc = locate(M.x,M.y+1,M.z)
					M1.nin = usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.aguaN*1.5 + usr.fogoN*1.5
					M1.Gowner = usr
					M1.burn()
					N.loc = locate(M.x,M.y-1,M.z)
					N.nin = usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.aguaN*1.5 + usr.fogoN*1.5
					N.Gowner = usr
					N.burn()
					K2.loc = locate(M.x+1,M.y+1,M.z)
					K2.nin = usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.aguaN*1.5 + usr.fogoN*1.5
					K2.Gowner = usr
					K2.burn()
					L2.loc = locate(M.x+1,M.y-1,M.z)
					L2.nin = usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.aguaN*1.5 + usr.fogoN*1.5
					L2.Gowner = usr
					L2.burn()
					M2.loc = locate(M.x-1,M.y+1,M.z)
					M2.nin = usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.aguaN*1.5 + usr.fogoN*1.5
					M2.Gowner = usr
					M2.burn()
					N2.loc = locate(M.x-1,M.y-1,M.z)
					N2.nin = usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.aguaN*1.5 + usr.fogoN*1.5
					N2.Gowner = usr
					N2.burn()
					N3.loc = locate(M.x,M.y,M.z)
					N3.nin = usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.aguaN*1.5 + usr.fogoN*1.5
					N3.Gowner = usr
					N3.burn()
					N4.loc = locate(M.x-2,M.y+2,M.z)
					N4.nin = usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.aguaN*1.5 + usr.fogoN*1.5
					N4.Gowner = usr
					N4.burn()
					N5.loc = locate(M.x-2,M.y+1,M.z)
					N5.nin = usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.aguaN*1.5 + usr.fogoN*1.5
					N5.Gowner = usr
					N5.burn()
					N6.loc = locate(M.x-2,M.y,M.z)
					N6.nin = usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.aguaN*1.5 + usr.fogoN*1.5
					N6.Gowner = usr
					N6.burn()
					N7.loc = locate(M.x-2,M.y-1,M.z)
					N7.nin = usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.aguaN*1.5 + usr.fogoN*1.5
					N7.Gowner = usr
					N7.burn()
					N8.loc = locate(M.x-2,M.y-2,M.z)
					N8.nin = usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.aguaN*1.5 + usr.fogoN*1.5
					N8.Gowner = usr
					N8.burn()
					N9.loc = locate(M.x+2,M.y+2,M.z)
					N9.nin = usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.aguaN*1.5 + usr.fogoN*1.5
					N9.Gowner = usr
					N9.burn()
					N10.loc = locate(M.x+2,M.y+1,M.z)
					N10.nin = usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.aguaN*1.5 + usr.fogoN*1.5
					N10.Gowner = usr
					N10.burn()
					N11.loc = locate(M.x+2,M.y,M.z)
					N11.nin = usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.aguaN*1.5 + usr.fogoN*1.5
					N11.Gowner = usr
					N11.burn()
					N12.loc = locate(M.x+2,M.y-1,M.z)
					N12.nin = usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.aguaN*1.5 + usr.fogoN*1.5
					N12.Gowner = usr
					N12.burn()
					N13.loc = locate(M.x+2,M.y-2,M.z)
					N13.nin = usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.aguaN*1.5 + usr.fogoN*1.5
					N13.Gowner = usr
					N13.burn()
					N14.loc = locate(M.x+1,M.y+2,M.z)
					N14.nin = usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.aguaN*1.5 + usr.fogoN*1.5
					N14.Gowner = usr
					N14.burn()
					N15.loc = locate(M.x-1,M.y+2,M.z)
					N15.nin = usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.aguaN*1.5 + usr.fogoN*1.5
					N15.Gowner = usr
					N15.burn()
					N16.loc = locate(M.x,M.y+2,M.z)
					N16.nin = usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.aguaN*1.5 + usr.fogoN*1.5
					N16.Gowner = usr
					N16.burn()
					N17.loc = locate(M.x-1,M.y-2,M.z)
					N17.nin = usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.aguaN*1.5 + usr.fogoN*1.5
					N17.Gowner = usr
					N17.burn()
					N18.loc = locate(M.x,M.y-2,M.z)
					N18.nin = usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.aguaN*1.5 + usr.fogoN*1.5
					N18.Gowner = usr
					N18.burn()
					N19.loc = locate(M.x+1,M.y-2,M.z)
					N19.nin = usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.aguaN*1.5 + usr.fogoN*1.5
					N19.Gowner = usr
					N19.burn()
					M.overlays+='fuutone.dmi'
					spawn usr.Castando()
					sleep(30)
					//usr.overlays-='Sharingan Amaterasu.dmi'
					sleep(100)
					M.overlays-='fuutone.dmi'
					del(K)
					del(L)
					del(M1)
					del(N)
					del(K2)
					del(L2)
					del(M2)
					del(N2)
					del(N3)
					del(N4)
					del(N5)
					del(N6)
					del(N7)
					del(N8)
					del(N9)
					del(N10)
					del(N11)
					del(N12)
					del(N13)
					del(N14)
					del(N15)
					del(N16)
					del(N17)
					del(N18)
					del(N19)
		YoutonYoukai()
			set category = "Jutsus"
			set name = "Youton: Youkai no Jutsu"
			if(usr.cdyoukai)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Youton: Youkai no Jutsu</b>!"
				return
			if(usr.cast) // If the mob's cast var is one...
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
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
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			else // If the cast var isn't 1...
				if(usr.cdyoukai)return
				usr.cdyoukai=1
				spawn()usr.Cooldown(120,"Youkai no Jutsu")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
//				usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam
				view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Youton: Youkai no Jutsu"
				var/obj/lavayouton/F = new /obj/lavayouton/
				var/obj/lavayouton/G = new /obj/lavayouton/
				var/obj/lavayouton/H = new /obj/lavayouton/
				var/obj/lavayouton/I = new /obj/lavayouton/
				var/obj/lavayouton/J = new /obj/lavayouton/
				var/obj/lavayouton/L = new /obj/lavayouton/
				var/obj/lavayouton/A = new /obj/lavayouton/
				var/obj/lavayouton/B = new /obj/lavayouton/
				var/obj/lavayouton/M2 = new /obj/lavayouton/
				var/obj/lavayouton/N = new /obj/lavayouton/
				var/obj/lavayouton/O = new /obj/lavayouton/
				var/obj/lavayouton/P = new /obj/lavayouton/
				var/obj/lavayouton/D = new /obj/lavayouton/
				var/obj/lavayouton/E = new /obj/lavayouton/
				var/obj/lavayouton/C = new /obj/lavayouton/
				var/obj/lavayouton/K = new /obj/lavayouton/
				var/obj/lavayouton/Q = new /obj/lavayouton/
				var/obj/lavayouton/R = new /obj/lavayouton/
				var/obj/lavayouton/S = new /obj/lavayouton/
				var/obj/lavayouton/T = new /obj/lavayouton/
				var/obj/lavayouton/W = new /obj/lavayouton/
				var/obj/lavayouton/X = new /obj/lavayouton/
				var/obj/lavayouton/Y = new /obj/lavayouton/
				var/obj/lavayouton/Z = new /obj/lavayouton/
				var/obj/lavayouton/AQ = new /obj/lavayouton/
				A.owner=usr
				B.owner=usr
				C.owner=usr
				D.owner=usr
				E.owner=usr
				F.owner=usr
				G.owner=usr
				H.owner=usr
				I.owner=usr
				J.owner=usr
				K.owner=usr
				L.owner=usr
				M2.owner=usr
				N.owner=usr
				O.owner=usr
				P.owner=usr
				Q.owner=usr
				R.owner=usr
				S.owner=usr
				T.owner=usr
				W.owner=usr
				X.owner=usr
				Y.owner=usr
				Z.owner=usr
				AQ.owner=usr
				A.nin=usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.fogoN*1.5
				B.nin=usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.fogoN*1.5
				C.nin=usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.fogoN*1.5
				D.nin=usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.fogoN*1.5
				E.nin=usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.fogoN*1.5
				F.nin=usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.fogoN*1.5
				G.nin=usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.fogoN*1.5
				H.nin=usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.fogoN*1.5
				I.nin=usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.fogoN*1.5
				J.nin=usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.fogoN*1.5
				K.nin=usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.fogoN*1.5
				L.nin=usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.fogoN*1.5
				M2.nin=usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.fogoN*1.5
				N.nin=usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.fogoN*1.5
				O.nin=usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.fogoN*1.5
				P.nin=usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.fogoN*1.5
				Q.nin=usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.fogoN*1.5
				R.nin=usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.fogoN*1.5
				S.nin=usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.fogoN*1.5
				T.nin=usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.fogoN*1.5
				W.nin=usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.fogoN*1.5
				X.nin=usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.fogoN*1.5
				Y.nin=usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.fogoN*1.5
				Z.nin=usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.fogoN*1.5
				AQ.nin=usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.fogoN*1.5
				K.loc = locate(usr.x,usr.y,usr.z)
				K.senban=1
				A.loc = locate(usr.x+1,usr.y,usr.z)
				A.senban=1
				C.loc = locate(usr.x-1,usr.y,usr.z)
				C.senban=1
				B.loc = locate(usr.x,usr.y+1,usr.z)
				B.senban=1
				D.loc = locate(usr.x,usr.y-1,usr.z)
				D.senban=1
				E.loc = locate(usr.x+1,usr.y+1,usr.z)
				E.senban=1
				F.loc = locate(usr.x-1,usr.y-1,usr.z)
				F.senban=1
				G.loc = locate(usr.x-1,usr.y+1,usr.z)
				G.senban=1
				H.loc = locate(usr.x+1,usr.y-1,usr.z)
				H.senban=1
				I.loc = locate(usr.x+2,usr.y,usr.z)
				I.senban=1
				J.loc = locate(usr.x-2,usr.y,usr.z)
				J.senban=1
				L.loc = locate(usr.x,usr.y+2,usr.z)
				L.senban=1
				M2.loc = locate(usr.x,usr.y-2,usr.z)
				M2.senban=1
				N.loc = locate(usr.x+2,usr.y+2,usr.z)
				N.senban=1
				O.loc = locate(usr.x-2,usr.y-2,usr.z)
				O.senban=1
				P.loc = locate(usr.x-2,usr.y+2,usr.z)
				P.senban=1
				Q.loc = locate(usr.x+2,usr.y-2,usr.z)
				Q.senban=1
				R.loc = locate(usr.x-1,usr.y-2,usr.z)
				R.senban=1
				S.loc = locate(usr.x+1,usr.y+2,usr.z)
				S.senban=1
				T.loc = locate(usr.x+1,usr.y-2,usr.z)
				T.senban=1
				W.loc = locate(usr.x-1,usr.y+2,usr.z)
				W.senban=1
				Y.loc = locate(usr.x+2,usr.y+1,usr.z)
				Y.senban=1
				X.loc = locate(usr.x-2,usr.y-1,usr.z)
				X.senban=1
				Z.loc = locate(usr.x-2,usr.y+1,usr.z)
				Z.senban=1
				AQ.loc = locate(usr.x+2,usr.y-1,usr.z)
				AQ.senban=1
				flick("rise",A)
				flick("rise",B)
				flick("rise",C)
				flick("rise",D)
				flick("rise",E)
				flick("rise",F)
				flick("rise",G)
				flick("rise",H)
				flick("rise",I)
				flick("rise",J)
				flick("rise",K)
				flick("rise",L)
				flick("rise",M2)
				flick("rise",N)
				flick("rise",O)
				flick("rise",P)
				flick("rise",Q)
				flick("rise",R)
				flick("rise",S)
				flick("rise",T)
				flick("rise",W)
				flick("rise",X)
				flick("rise",Y)
				flick("rise",Z)
				flick("rise",AQ)
				for(var/mob/M in oview(2))
					if(M.party&&M.partysensei==usr.partysensei)return
					usr.EsquivaSharingan(M)
					if(M.Esquivou)
						M.Esquivou=0
						return
					var/damage= usr.nin/4.15 + usr.gen/4.15 + usr.tai/4.15 + usr.shurikenskill/4.15 + usr.terraN*1.75 + usr.fogoN*1.75 - M.Resistencia/2
					if(damage<=0)damage=0
					view()<<"[M] recebeu [damage] de dano do jutsu de [usr] - Youton: Youkai no Jutsu."
					if(M.fantasma)
						usr<<"<font size=1>Você não consegue tocá-lo!"
						return
					M.health-=damage
					F_damage(M, damage, "#ff0000")
					if(M.health<=0)
						M.Death(usr)
				usr.Castando()

		Suijinhashira()
			set name="Suiton: Suijinhashira"
			set category="Jutsus"
			if(usr.cdsuijin==1)
				usr<<"Você não pode usar esse jutsu com tanta frequência"
				return
			if(usr.froze&&!usr.Suijin)
				usr<<"Você está paralisado"
				return
			if(usr.Frozen&&!usr.Suijin)
				usr<<"Você está paralisado"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(!usr.Kaiten&&!usr.cast&&!usr.Suijin)
				if(usr.cdsuijin)return
				usr.cdsuijin=1
				spawn()usr.Cooldown(200,"Suijinhashira")
				usr.RandomChakra01()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Suiton: Suijinhashira"
				usr.froze = 1
				usr.move = 0
				usr.cast = 1
				usr.def = 1
				usr.overlays+=/obj/Kaiten
				usr.overlays+=/obj/Kaiten2
				usr.overlays+=/obj/Kaiten3
				usr.overlays+=/obj/Kaiten4
				usr.overlays+=/obj/Kaiten5
				usr.overlays+=/obj/Kaiten6
				usr.Kaiten =1
				usr.Suijin=1
				OMG
				if(usr.Suijin)
					usr.chakra-=usr.Mchakra/20
					if(usr.chakra <= 1000)
						usr.cast = 0
						usr.def = 0
						usr.overlays-=/obj/Kaiten
						usr.overlays-=/obj/Kaiten2
						usr.overlays-=/obj/Kaiten3
						usr.overlays-=/obj/Kaiten4
						usr.overlays-=/obj/Kaiten5
						usr.overlays-=/obj/Kaiten6
						usr.Suijin=0
						usr.Kaiten = 0
						usr.move=1
						usr.froze=0
					else
						sleep(40)
						goto OMG
			else if(usr.Suijin)
				usr.froze = 0
				usr.move = 1
				usr.cast = 0
				usr.def = 0
				usr.Suijin=0
				usr.overlays-=/obj/Kaiten
				usr.overlays-=/obj/Kaiten2
				usr.overlays-=/obj/Kaiten3
				usr.overlays-=/obj/Kaiten4
				usr.overlays-=/obj/Kaiten5
				usr.overlays-=/obj/Kaiten6
				usr.Kaiten =0
				usr.delai=1
				usr<<"Você sai do Suiton: Suijinhashira."
				sleep(30)
				usr.delai=0

		Lava2() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Youton no Jutsu"
			if(usr.cdyoutonnoj)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Youton no Jutsu</b>!"
				return
			if(usr.cast||usr.Kaiten == 1) // If the mob's cast var is one...
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.froze)
				usr<<"Você está paralisado"
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
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			else // If the cast var isn't 1...
				if(usr.cdyoutonnoj)return
				usr.cdyoutonnoj=1
				spawn()usr.Cooldown(110,"Youton no Jutsu")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				if(usr.DDD >= 25)
					usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam // Disables the mob's movement
					usr.DDD += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=red> Diz: > Youton no Jutsu"
					var/obj/lavaball/K = new /obj/lavaball
					K.loc = usr.loc
					K.nin=usr.nin/4.05 + usr.tai/4.05 + usr.gen/4.05 + usr.shurikenskill/4.05 +usr.fogoN*1.75 + usr.terraN*1.75
					K.dir = usr.dir
					K.name="[usr]"
					usr.Chakragain()
					K.Gowner=usr
					K.Move_Delay=0.4
					walk(K,usr.dir)
					sleep(20)
					usr.cast = 0
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.DDD += 1
						usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam // Disables the mob's movement
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=red> Diz: Youton no Jutsu"
						var/obj/lavaball/K = new /obj/lavaball
						K.loc = usr.loc
						K.nin=usr.nin/4.05 + usr.tai/4.05 + usr.gen/4.05 + usr.shurikenskill/4.05 +usr.fogoN*1.75 + usr.terraN*1.75
						K.dir = usr.dir
						K.name="[usr]"
						K.Gowner=usr
						K.Move_Delay=0.4
						walk(K,usr.dir)
						sleep(20)
						usr.cast = 0
					else
						usr<<"Você falhou em usar o Youton no Jutsu"

mob/SubTsuchikage
	verb
		JintonAtaque() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Jinton Ataque"
			if(usr.cdjataque)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Jinton Ataque</b>!"
				return
			if(usr.cast||usr.Kaiten) // If the mob's cast var is one...
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.caught)
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
			if(usr.cdjataque)return
			usr.RandomChakra1()
			usr.cdjataque=1
			spawn()usr.Cooldown(180,"Jinton Ataque")
			if(usr.chakra<=0)
				usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
				usr.health=0
				usr.chakra=0
				usr.Death(usr)
				return
			var/obj/JintHead/K = new /obj/JintHead
			var/obj/JintTail/T = new /obj/JintTail
			var/obj/JintTail2/J = new /obj/JintTail2
			usr.Raiton1N += 1
			usr.cast=1
			view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#ffffff>Jinton Ataque!</FONT></FONT>"
			K.Gowner=usr
			K.nin=usr.nin
			if(usr.dir==NORTH)
				if(K)
					K.loc = usr.loc
					K.dir = usr.dir
					K.y+=0
				if(J)
					J.dir = usr.dir
					J.loc = usr.loc
					J.y+=2
				if(T)
					T.dir = usr.dir
					T.loc = usr.loc
					T.y+=1
			if(usr.dir==SOUTH)
				if(K)
					K.loc = usr.loc
					K.dir = usr.dir
					K.y-=0
				if(J)
					J.dir = usr.dir
					J.loc = usr.loc
					J.y-=2
				if(T)
					T.dir = usr.dir
					T.loc = usr.loc
					T.y-=1
			if(usr.dir==WEST)
				if(K)
					K.loc = usr.loc
					K.dir = usr.dir
					K.x-=0
				if(J)
					J.dir = usr.dir
					J.loc = usr.loc
					J.x-=2
				if(T)
					T.dir = usr.dir
					T.loc = usr.loc
					T.x-=1
			if(usr.dir==EAST)
				if(K)
					K.loc = usr.loc
					K.dir = usr.dir
					K.x+=0
				if(J)
					J.dir = usr.dir
					J.loc = usr.loc
					J.x+=2
				if(T)
					T.dir = usr.dir
					T.loc = usr.loc
					T.x+=1
			for(var/mob/M in oview(4,usr))
				if(K)
					if(M.loc==K.loc)
						if(M.party&&M.partysensei==usr.partysensei)return
						if(M.Kaiten||M.sphere)
							usr<<"Seu ataque não acerta [M]"
							M<<"Você bloqueou o jutsu de [usr] - Jinton Ataque!"
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							return
						var/damage=usr.nin/3.8 + usr.gen/3.8 + usr.tai/3.8 + usr.shurikenskill/3.8 + usr.terraN*1.5 + usr.ventoN*1.5 + usr.fogoN*1.5 - M.Resistencia/2
						if(damage<=0)damage=0
						view()<<"[M] recebeu [damage] de dano do jutsu de [usr] - Jinton Ataque!"
						M.health-=damage
						F_damage(M, damage, "#ff0000")
						M.Death(usr)
			for(var/mob/M in oview(4,usr))
				if(T)
					if(M.loc==T.loc)
						if(M.party&&M.partysensei==usr.partysensei)return
						if(M.Kaiten||M.sphere)
							usr<<"Seu ataque não acerta [M]"
							M<<"Você bloqueou o jutsu de [usr] - Jinton Ataque!."
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							return
						var/damage=usr.nin/3.8 + usr.gen/3.8 + usr.tai/3.8 + usr.shurikenskill/3.8 + usr.terraN + usr.ventoN + usr.fogoN - M.Resistencia/2
						if(damage<=0)damage=0
						view()<<"[M] recebeu [damage] de dano do jutsu de [usr] - Jinton Ataque!"
						M.health-=damage
						F_damage(M, damage, "#ff0000")
						M.Death(usr)
			for(var/mob/M in oview(4,usr))
				if(J)
					if(M.loc==J.loc)
						if(M.party&&M.partysensei==usr.partysensei)return
						if(M.Kaiten||M.sphere)
							usr<<"Seu ataque não acerta [M]"
							M<<"Você bloqueou o jutsu de [usr] - Jinton Ataque!"
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							return
						var/damage=usr.nin/3.8 + usr.gen/3.8 + usr.tai/3.8 + usr.shurikenskill/3.8 + usr.terraN + usr.ventoN + usr.fogoN - M.Resistencia/2
						if(damage<=0)damage=0
						view()<<"[M] recebeu [damage] de dano do jutsu de [usr] - Jinton Ataque!"
						M.health-=damage
						F_damage(M, damage, "#ff0000")
						M.Death(usr)
			spawn usr.Castando()



mob/var/tmp/TsuchiFly=0
mob/SubTsuchikage
	verb
		TsuchiFly()
			set name = "Voar"
			set category = "Jutsus"
			set desc = "Permite o vôo através do chakra!"
			if(usr.PK==0)
				usr<<"Area NON-PK"
				return
			if(usr.inizanami)
				usr<<"Você precisa sair da dimensão primeiro!"
				return
			if(usr.cast)
				return
			if(usr.Frozen)
				usr<<"Você está freezado!"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.inso)
				return
			if(usr.froze)
				usr<<"Você está freezado!"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto treina"
				return
			if(usr.Kaiten||usr.counter)
				return
			if(usr.TsuchiFly)
				usr.TsuchiFly = 0
				usr.density = 1
				usr<<"Você <font color=red>pára de voar</font>"
				return
			if(usr.TsuchiFly==0)
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.density = 0
				usr.TsuchiFly = 1
				usr<<"Você <font color=green>começa a voar</font>"
				TsuFly
				if(usr.TsuchiFly)
					usr.chakra -= usr.Mchakra/100
					if(usr.chakra <= usr.Mchakra/100)
						usr.TsuchiFly = 0
						usr.density = 1
						usr<<"Você <font color=red>desativa</font> o Voar por falta de chakra!"
						return
					sleep(20)
					goto TsuFly


mob/SubTsuchikage
	verb
		JintonGenkai() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Jinton: Genkai Haruki no Jutsu"
			if(usr.cdjghj)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Jinton: Genkai Haruki no Jutsu</b>!"
				return
			usr.Handseals()
			if(usr.cast||usr.Kaiten == 1) // If the mob's cast var is one...
				return
			if(!usr.handseals)
				return
			if(usr.froze)
				usr<<"Você está paralizado!"
				return
			if(usr.Frozen)
				usr<<"Você está paralizado!"
				return
			if(usr.caught)
				usr<<"Você foi capturado!"
				return
			if(usr.captured)
				usr<<"Você foi capturado!"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa!"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita!"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			else // If the cast var isn't 1...
				for(var/mob/M in oview(4))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(M.froze||M.Frozen)
						usr<<"Ele já está paralisado!"
						return
					if(usr.cdjghj)return
					usr.cdjghj=1
					spawn() usr.Cooldown(110,"Jinton: Genkai Haruki no Jutsu")
					usr.chakra -= 16000
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <font color=cyan>Jinton: Genkai Haruki no Jutsu"
					usr.cast = 1
					M.froze=1
					M.move=0
					var/damage = usr.nin/4 + usr.gen/4 + usr.tai/4 + usr.shurikenskill/4 + usr.terraN*1.5 + usr.ventoN*1.5 + usr.fogoN*1.5 - M.Resistencia/2
					if(damage<=0)damage=0

					new /obj/JintonGH/JGH1(locate(M.x-1,M.y-1,M.z))
					new /obj/JintonGH/JGH2(locate(M.x,M.y-1,M.z))
					new /obj/JintonGH/JGH3(locate(M.x+1,M.y-1,M.z))
					new /obj/JintonGH/JGH4(locate(M.x-1,M.y,M.z))
					new /obj/JintonGH/JGH5(locate(M.x,M.y,M.z))
					new /obj/JintonGH/JGH6(locate(M.x+1,M.y,M.z))
					new /obj/JintonGH/JGH7(locate(M.x-1,M.y+1,M.z))
					new /obj/JintonGH/JGH8(locate(M.x,M.y+1,M.z))
					new /obj/JintonGH/JGH9(locate(M.x,M.y,M.z))
					sleep(70)
					view()<<"[M] recebeu [damage] de dano ao receber o Jinton: Genkai Haruki no Jutsu de [usr]!"
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					spawn() M.Death(usr)
					sleep(10)
					usr.cast = 0
					M.move=1
					M.froze=0

		JintonChouGenkai()
			set category = "Jutsus"
			set name = "Jinton: Chou Genkai Haruki no Jutsu"
			if(usr.cdchougenkai)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o <b>Jinton: Chou Genkai Haruki no Jutsu</b>!"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.Frozen)
				usr<<"Você está paralisado"
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
			if(usr.cast)
				return
			else
				for(var/mob/M in oview(5))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(M.PK==0)
						usr<<"Zona NON-PK!!!"
						return
					if(usr.cdchougenkai)return
					usr.RandomChakra05()
					usr.cdchougenkai=1
					spawn()usr.Cooldown(300,"Chou Genkai")
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Jinton: Chou Genkai Haruki no Jutsu"
					//usr.overlays+='Sharingan Amaterasu.dmi'
					var/obj/Chou/K = new /obj/Chou
					var/obj/Chou/L = new /obj/Chou
					var/obj/Chou/M1 = new /obj/Chou
					var/obj/Chou/N = new /obj/Chou
					var/obj/Chou/K2 = new /obj/Chou
					var/obj/Chou/L2 = new /obj/Chou
					var/obj/Chou/M2 = new /obj/Chou
					var/obj/Chou/N2 = new /obj/Chou
					var/obj/Chou/N3 = new /obj/Chou
					var/obj/Chou/N4 = new /obj/Chou
					var/obj/Chou/N5 = new /obj/Chou
					var/obj/Chou/N6 = new /obj/Chou
					var/obj/Chou/N7 = new /obj/Chou
					var/obj/Chou/N8 = new /obj/Chou
					var/obj/Chou/N9 = new /obj/Chou
					var/obj/Chou/N10 = new /obj/Chou
					var/obj/Chou/N11 = new /obj/Chou
					var/obj/Chou/N12 = new /obj/Chou
					var/obj/Chou/N13 = new /obj/Chou
					var/obj/Chou/N14 = new /obj/Chou
					var/obj/Chou/N15 = new /obj/Chou
					var/obj/Chou/N16 = new /obj/Chou
					var/obj/Chou/N17 = new /obj/Chou
					var/obj/Chou/N18 = new /obj/Chou
					var/obj/Chou/N19 = new /obj/Chou
					K.loc = locate(M.x-1,M.y,M.z)
					K.nin = usr.tai/4 + usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.terraN*1.5 + usr.ventoN*1.5 + usr.fogoN*1.5
					K.Gowner = usr
					K.burn()
					L.loc = locate(M.x+1,M.y,M.z)
					L.nin = usr.tai/4 + usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.terraN*1.5 + usr.ventoN*1.5 + usr.fogoN*1.5
					L.Gowner = usr
					L.burn()
					M1.loc = locate(M.x,M.y+1,M.z)
					M1.nin = usr.tai/4 + usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.terraN*1.5 + usr.ventoN*1.5 + usr.fogoN*1.5
					M1.Gowner = usr
					M1.burn()
					N.loc = locate(M.x,M.y-1,M.z)
					N.nin = usr.tai/4 + usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.terraN*1.5 + usr.ventoN*1.5 + usr.fogoN*1.5
					N.Gowner = usr
					N.burn()
					K2.loc = locate(M.x+1,M.y+1,M.z)
					K2.nin = usr.tai/4 + usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.terraN*1.5 + usr.ventoN*1.5 + usr.fogoN*1.5
					K2.Gowner = usr
					K2.burn()
					L2.loc = locate(M.x+1,M.y-1,M.z)
					L2.nin = usr.tai/4 + usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.terraN*1.5 + usr.ventoN*1.5 + usr.fogoN*1.5
					L2.Gowner = usr
					L2.burn()
					M2.loc = locate(M.x-1,M.y+1,M.z)
					M2.nin = usr.tai/4 + usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.terraN*1.5 + usr.ventoN*1.5 + usr.fogoN*1.5
					M2.Gowner = usr
					M2.burn()
					N2.loc = locate(M.x-1,M.y-1,M.z)
					N2.nin = usr.tai/4 + usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.terraN*1.5 + usr.ventoN*1.5 + usr.fogoN*1.5
					N2.Gowner = usr
					N2.burn()
					N3.loc = locate(M.x,M.y,M.z)
					N3.nin = usr.tai/4 + usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.terraN*1.5 + usr.ventoN*1.5 + usr.fogoN*1.5
					N3.Gowner = usr
					N3.burn()
					N4.loc = locate(M.x-2,M.y+2,M.z)
					N4.nin = usr.tai/4 + usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.terraN*1.5 + usr.ventoN*1.5 + usr.fogoN*1.5
					N4.Gowner = usr
					N4.burn()
					N5.loc = locate(M.x-2,M.y+1,M.z)
					N5.nin = usr.tai/4 + usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.terraN*1.5 + usr.ventoN*1.5 + usr.fogoN*1.5
					N5.Gowner = usr
					N5.burn()
					N6.loc = locate(M.x-2,M.y,M.z)
					N6.nin = usr.tai/4 + usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.terraN*1.5 + usr.ventoN*1.5 + usr.fogoN*1.5
					N6.Gowner = usr
					N6.burn()
					N7.loc = locate(M.x-2,M.y-1,M.z)
					N7.nin = usr.tai/4 + usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.terraN*1.5 + usr.ventoN*1.5 + usr.fogoN*1.5
					N7.Gowner = usr
					N7.burn()
					N8.loc = locate(M.x-2,M.y-2,M.z)
					N8.nin = usr.tai/4 + usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.terraN*1.5 + usr.ventoN*1.5 + usr.fogoN*1.5
					N8.Gowner = usr
					N8.burn()
					N9.loc = locate(M.x+2,M.y+2,M.z)
					N9.nin = usr.tai/4 + usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.terraN*1.5 + usr.ventoN*1.5 + usr.fogoN*1.5
					N9.Gowner = usr
					N9.burn()
					N10.loc = locate(M.x+2,M.y+1,M.z)
					N10.nin = usr.tai/4 + usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.terraN*1.5 + usr.ventoN*1.5 + usr.fogoN*1.5
					N10.Gowner = usr
					N10.burn()
					N11.loc = locate(M.x+2,M.y,M.z)
					N11.nin = usr.tai/4 + usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.terraN*1.5 + usr.ventoN*1.5 + usr.fogoN*1.5
					N11.Gowner = usr
					N11.burn()
					N12.loc = locate(M.x+2,M.y-1,M.z)
					N12.nin = usr.tai/4 + usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.terraN*1.5 + usr.ventoN*1.5 + usr.fogoN*1.5
					N12.Gowner = usr
					N12.burn()
					N13.loc = locate(M.x+2,M.y-2,M.z)
					N13.nin = usr.tai/4 + usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.terraN*1.5 + usr.ventoN*1.5 + usr.fogoN*1.5
					N13.Gowner = usr
					N13.burn()
					N14.loc = locate(M.x+1,M.y+2,M.z)
					N14.nin = usr.tai/4 + usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.terraN*1.5 + usr.ventoN*1.5 + usr.fogoN*1.5
					N14.Gowner = usr
					N14.burn()
					N15.loc = locate(M.x-1,M.y+2,M.z)
					N15.nin = usr.tai/4 + usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.terraN*1.5 + usr.ventoN*1.5 + usr.fogoN*1.5
					N15.Gowner = usr
					N15.burn()
					N16.loc = locate(M.x,M.y+2,M.z)
					N16.nin = usr.tai/4 + usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.terraN*1.5 + usr.ventoN*1.5 + usr.fogoN*1.5
					N16.Gowner = usr
					N16.burn()
					N17.loc = locate(M.x-1,M.y-2,M.z)
					N17.nin = usr.tai/4 + usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.terraN*1.5 + usr.ventoN*1.5 + usr.fogoN*1.5
					N17.Gowner = usr
					N17.burn()
					N18.loc = locate(M.x,M.y-2,M.z)
					N18.nin = usr.tai/4 + usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.terraN*1.5 + usr.ventoN*1.5 + usr.fogoN*1.5
					N18.Gowner = usr
					N18.burn()
					N19.loc = locate(M.x+1,M.y-2,M.z)
					N19.nin = usr.tai/4 + usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.terraN*1.5 + usr.ventoN*1.5 + usr.fogoN*1.5
					N19.Gowner = usr
					N19.burn()
					M.overlays+='fuutone.dmi'
					spawn usr.Castando()
					sleep(30)
					//usr.overlays-='Sharingan Amaterasu.dmi'
					sleep(50)
					M.overlays-='fuutone.dmi'

		Kajuugan()
			set category = "Jutsus"
			set name = "Doton: Kajuugan no Jutsu"
			if(usr.cdkajuugan)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o <b>Doton: Kajuugan no Jutsu</b>!"
				return
			if(usr.froze)
				usr<<"Your frozen"
				return
			if(usr.Frozen)
				usr<<"Your frozen"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.caught)
				usr<<"Your captured"
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
			if(usr.cdkajuugan)return
			usr.cdkajuugan=1
			spawn()usr.Cooldown(150,"Kajuugan")
			usr.RandomChakra1()
			if(usr.chakra<=0)
				usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
				usr.health=0
				usr.chakra=0
				usr.Death(usr)
				return
			view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Doton: Kajuugan no Jutsu!"
			for(var/mob/M in oview(3,usr))
				if(M.party&&M.partysensei==usr.partysensei)return
				view()<<"[usr] foi pego no Doton: Kajuugan no Jutsu."
				M.overlays += 'Doton Kajugan.dmi'
				M.move = 0
				M.froze = 1
				spawn(50)
					M.overlays -= 'Doton Kajugan.dmi'
					M.move = 1
					M.froze = 0

/*mob/Kazekage
	verb
		*/

obj/Chou
	icon = 'JintonX.dmi'
	icon_state = "Transforma em poeira."
	density = 0
	New()
		spawn(50) del(src)
		..()
	proc/burn()
		var/mob/O = src.Gowner
		for(var/mob/M in src.loc)
			if(!O) del(src)
			if(M<>src.Gowner)
			{
				var/damage=usr.tai/4 + usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.terraN*1.5 + usr.ventoN*1.5 + usr.fogoN*1.5 - M.Resistencia/2 - M.Resistencia/2
				if(damage<=0) damage=0
				if(M.fantasma)
					O<<"<font size=1>Vc não consegue tocá-lo!"
					return
				if(damage>=1)
					M.health-=damage
					F_damage(M,damage,"#ff0000")
					view(O)<<"[M] recebeu [damage] de dano por entrar na área do Chou Genkai Haruki no Jutsu!"
					if(M.health<=0) M.Death(O)
			}
		spawn(10)
		src.burn()


mob/var/tmp/Suijin=0
obj/kouma
	icon = 'smoke.dmi'
	density = 0
	New()
		spawn(100) del(src)
	proc/burn()
		var/mob/O = src.Gowner
		for(var/mob/M in src.loc)
			if(!O) del src
			if(M<>src.Gowner)
				var/damage = usr.nin/4.35 + usr.gen/4.35 + usr.tai/4.35 + usr.shurikenskill/4.35 + usr.aguaN*1.5 + usr.fogoN*1.5 - M.Resistencia/2
				if(damage<=0)damage=0
				if(M.fantasma)
					usr<<"<font size=1>Vc não consegue tocá-lo!"
					return
				if(damage >= 1)
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					view(M) << "[M] recebeu [damage] de dano por entrar na área do Kouma no Jutsu!"
					if(M.health<=0)
						M.Death(O)
		spawn(10)
		src.burn()
//Sasuke Taka



mob/almaAK
	verb
		Reproduzir_Alma()
			set category = "Jutsus"
			set name = "Gentoshin no Jutsu"
			if(usr.AkatView==0)
				usr.AkatView=1
				var/mob/npcs/Bunshin/K = new /mob/npcs/KBunshin
				K.name = "[usr.name] Imagem"
				K.Village= "[usr.Village]"
				K.icon = usr.icon
				K.overlays = usr.overlays
				if(usr.ak1==1)
					K.loc = locate(44,92,10)
				if(usr.ak2==1)
					K.loc = locate(45,93,10)
				if(usr.ak3==1)
					K.loc = locate(47,99,10)
				if(usr.ak4==1)
					K.loc = locate(46,94,10)
				if(usr.ak5==1)
					K.loc = locate(47,94,10)
				if(usr.ak6==1)
					K.loc = locate(49,94,10)
				if(usr.ak7==1)
					K.loc = locate(50,94,10)
				if(usr.ak8==1)
					K.loc = locate(51,94,10)
				if(usr.ak9==1)
					K.loc = locate(52,93,10)
				if(usr.ak10==1)
					K.loc = locate(52,92,10)
				usr.client.perspective = EYE_PERSPECTIVE
				//client.view=6
				spawn()usr.Cegar()
				usr.client.eye = locate(48,92,10)
				return
			if(usr.AkatView==1)
				usr.AkatView=0
				for(var/mob/K in world)
					if(K.name=="[usr.name] (Imagem)")
						del(K)
				client.eye=usr
				//client.view=6
				spawn()usr.Cegar()
				return

//Juugo




mob/var
	cdmokutongin = 0
mob/Juugo
	verb
		Mokutongin() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Mokuton Palm"
			if(usr.cdmokutongin)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Mokuton Palm</b>!"
				return
			if(usr.Kaiten) // If the mob's cast var is one...
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.chakra <= 1000)
				usr<<"Você não tem chakra o bastante."
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
			usr.cdmokutongin=1
			spawn()usr.Cooldown(150,"Mokuton Palm")
			usr.chakra -= 999
			var/obj/MokHead/K = new /obj/MokHead
			var/obj/MokTail/T = new /obj/MokTail
			var/obj/MokTail2/J = new /obj/MokTail2
			var/obj/MokTail3/B = new /obj/MokTail3
			usr.Raiton1N += 1
			view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#ffffff>Mokuton Palm!</FONT></FONT>"
			K.Gowner=usr
			K.nin=usr.tai
			if(usr.dir==NORTH)
				if(K)
					K.loc = usr.loc
					K.dir = usr.dir
					K.y+=4
				if(J)
					J.dir = usr.dir
					J.loc = usr.loc
					J.y+=1
				if(B)
					B.dir = usr.dir
					B.loc = usr.loc
					B.y+=2
				if(T)
					T.dir = usr.dir
					T.loc = usr.loc
					T.y+=3
			if(usr.dir==SOUTH)
				if(K)
					K.loc = usr.loc
					K.dir = usr.dir
					K.y-=4
				if(J)
					J.dir = usr.dir
					J.loc = usr.loc
					J.y-=1
				if(B)
					B.dir = usr.dir
					B.loc = usr.loc
					B.y-=2
				if(T)
					T.dir = usr.dir
					T.loc = usr.loc
					T.y-=3
			if(usr.dir==WEST)
				if(K)
					K.loc = usr.loc
					K.dir = usr.dir
					K.x-=4
				if(J)
					J.dir = usr.dir
					J.loc = usr.loc
					J.x-=1
				if(B)
					B.dir = usr.dir
					B.loc = usr.loc
					B.x-=2
				if(T)
					T.dir = usr.dir
					T.loc = usr.loc
					T.x-=3
			if(usr.dir==EAST)
				if(K)
					K.loc = usr.loc
					K.dir = usr.dir
					K.x+=4
				if(J)
					J.dir = usr.dir
					J.loc = usr.loc
					J.x+=1
				if(B)
					B.dir = usr.dir
					B.loc = usr.loc
					B.x+=2
				if(T)
					T.dir = usr.dir
					T.loc = usr.loc
					T.x+=3

			for(var/mob/M in oview(4))
				if(K)
					if(M.loc==K.loc)
						if(M.Kaiten||M.sphere)
							usr<<"Seu ataque não faz efeito em [M]."
							M<<"Você bloqueou o jutsu de [usr]"
							return
						var/damage=usr.nin*1 - M.Resistencia
						if(damage<=0)damage=0
						view()<<"[M] tirou [damage] de dano em [usr] com seu Mokuton Palm"
						M.health-=damage
						F_damage(M, damage, "#ff0000")
						M.Death(usr)
			for(var/mob/M in oview(4))
				if(T)
					if(M.loc==T.loc)
						if(M.Kaiten||M.sphere)
							usr<<"Seu ataque não faz efeito em [M]."
							M<<"Você bloqueou o jutsu de [usr]"
							return
						var/damage=usr.nin*1 - M.Resistencia
						if(damage<=0)damage=0
						view()<<"[M] tirou [damage] de dano em [usr] com seu Mokuton Palm"
						M.health-=damage
						F_damage(M, damage, "#ff0000")
						M.Death(usr)
			for(var/mob/M in oview(4))
				if(B)
					if(M.loc==B.loc)
						if(M.Kaiten||M.sphere)
							usr<<"Seu ataque não faz efeito em [M]."
							M<<"Você bloqueou o jutsu de [usr]"
							return
						var/damage=usr.nin*1 - M.Resistencia
						if(damage<=0)damage=0
						view()<<"[M] tirou [damage] de dano em [usr] com seu Mokuton Palm"
						M.health-=damage
						F_damage(M, damage, "#ff0000")
						M.Death(usr)
			for(var/mob/M in oview(4))
				if(J)
					if(M.loc==J.loc)
						if(M.Kaiten||M.sphere)
							usr<<"Seu ataque não faz efeito em [M]."
							M<<"Você bloqueou o jutsu de [usr]"
							return
						var/damage=usr.nin*1 - M.Resistencia
						if(damage<=0)damage=0
						view()<<"[M] tirou [damage] de dano em [usr] com seu Mokuton Palm"
						M.health-=damage
						F_damage(M, damage, "#ff0000")
						M.Death(usr)
			sleep(10)
			usr.Frozen=0
			sleep(25)
			del(K)
			del(T)
			usr.Castando()

obj
	Saks2
		icon='supertai.dmi'
		layer = MOB_LAYER+1
		New()
			spawn(30) del src
			..()

mob/var/cdsptai = 0
mob/Juugo
	verb
		SpTai()
			set category = "Jutsus"
			set name = "Super Taijutsu"
			if(usr.cdsptai)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Mokuton Palm</b>!"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
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
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.chakra <= 40000)
				usr<<"Você não possui chakra suficiente!"
				return
			else // If the cast var isn't 1...
				usr.cdsptai=1
				spawn()usr.Cooldown(150,"Super Taijutsu")// Sets the cast var to 1, so he cant fire another beam
				view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz:Super Taijutsu!"
				var/obj/Saks2/F = new /obj/Saks2/
				var/obj/Saks2/G = new /obj/Saks2/
				var/obj/Saks2/H = new /obj/Saks2/
				var/obj/Saks2/I = new /obj/Saks2/
				var/obj/Saks2/J = new /obj/Saks2/
				var/obj/Saks2/L = new /obj/Saks2/
				var/obj/Saks2/A = new /obj/Saks2/
				var/obj/Saks2/B = new /obj/Saks2/
				var/obj/Saks2/M2 = new /obj/Saks2/
				var/obj/Saks2/N = new /obj/Saks2/
				var/obj/Saks2/O = new /obj/Saks2/
				var/obj/Saks2/P = new /obj/Saks2/
				var/obj/Saks2/D = new /obj/Saks2/
				var/obj/Saks2/E = new /obj/Saks2/
				var/obj/Saks2/C = new /obj/Saks2/
				var/obj/Saks2/K = new /obj/Saks2/
				var/obj/Saks2/Q = new /obj/Saks2/
				var/obj/Saks2/R = new /obj/Saks2/
				var/obj/Saks2/S = new /obj/Saks2/
				var/obj/Saks2/T = new /obj/Saks2/
				var/obj/Saks2/W = new /obj/Saks2/
				var/obj/Saks2/X = new /obj/Saks2/
				var/obj/Saks2/Y = new /obj/Saks2/
				var/obj/Saks2/Z = new /obj/Saks2/
				var/obj/Saks2/AB = new /obj/Saks2/
				var/obj/Saks2/AC = new /obj/Saks2/
				var/obj/Saks2/AD = new /obj/Saks2/
				var/obj/Saks2/AE = new /obj/Saks2/
				var/obj/Saks2/AF = new /obj/Saks2/
				var/obj/Saks2/AG = new /obj/Saks2/
				var/obj/Saks2/AH = new /obj/Saks2/
				var/obj/Saks2/AI = new /obj/Saks2/
				var/obj/Saks2/AJ = new /obj/Saks2/
				var/obj/Saks2/AK = new /obj/Saks2/
				var/obj/Saks2/AL = new /obj/Saks2/
				var/obj/Saks2/AM = new /obj/Saks2/
				var/obj/Saks2/AN = new /obj/Saks2/
				var/obj/Saks2/AO = new /obj/Saks2/
				var/obj/Saks2/AP = new /obj/Saks2/
				var/obj/Saks2/AQ = new /obj/Saks2/
				var/obj/Saks2/AR = new /obj/Saks2/
				var/obj/Saks2/AS = new /obj/Saks2/
				var/obj/Saks2/AT = new /obj/Saks2/
				var/obj/Saks2/AU = new /obj/Saks2/
				var/obj/Saks2/AV = new /obj/Saks2/
				var/obj/Saks2/AW = new /obj/Saks2/
				var/obj/Saks2/AX= new /obj/Saks2/
				var/obj/Saks2/AY = new /obj/Saks2/
				var/obj/Saks2/AZ = new /obj/Saks2/

				usr.chakra -= 40000
				A.owner=usr
				B.owner=usr
				C.owner=usr
				D.owner=usr
				E.owner=usr
				F.owner=usr
				G.owner=usr
				H.owner=usr
				I.owner=usr
				J.owner=usr
				K.owner=usr
				L.owner=usr
				M2.owner=usr
				N.owner=usr
				O.owner=usr
				P.owner=usr
				Q.owner=usr
				R.owner=usr
				S.owner=usr
				T.owner=usr
				W.owner=usr
				X.owner=usr
				Y.owner=usr
				Z.owner=usr
				AB.owner=usr
				AC.owner=usr
				AD.owner=usr
				AE.owner=usr
				AF.owner=usr
				AG.owner=usr
				AH.owner=usr
				AI.owner=usr
				AJ.owner=usr
				AK.owner=usr
				AL.owner=usr
				AM.owner=usr
				AN.owner=usr
				AO.owner=usr
				AP.owner=usr
				AQ.owner=usr
				AR.owner=usr
				AS.owner=usr
				AV.owner=usr
				AW.owner=usr
				AX.owner=usr
				AY.owner=usr
				AZ.owner=usr
				AU.owner=usr
				AV.owner=usr
				A.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				B.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				C.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				D.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				E.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				F.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				G.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				H.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				I.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				J.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				K.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				L.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				M2.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				N.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				O.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				P.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				Q.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				R.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				S.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				T.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				W.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				X.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				Y.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				Z.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				AB.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				AC.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				AD.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				AE.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				AF.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				AG.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				AH.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				AI.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				AJ.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				AK.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				AL.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				AM.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				AN.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				AO.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				AP.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				AQ.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				AR.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				AS.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				AV.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				AW.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				AX.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				AY.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				AZ.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				AU.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				AV.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				K.loc = locate(usr.x,usr.y,usr.z)
				K.senban=1
				A.loc = locate(usr.x+1,usr.y,usr.z)
				A.senban=1
				C.loc = locate(usr.x-1,usr.y,usr.z)
				C.senban=1
				B.loc = locate(usr.x,usr.y+1,usr.z)
				B.senban=1
				D.loc = locate(usr.x,usr.y-1,usr.z)
				D.senban=1
				E.loc = locate(usr.x+1,usr.y+1,usr.z)
				E.senban=1
				F.loc = locate(usr.x-1,usr.y-1,usr.z)
				F.senban=1
				G.loc = locate(usr.x-1,usr.y+1,usr.z)
				G.senban=1
				H.loc = locate(usr.x+1,usr.y-1,usr.z)
				H.senban=1
				I.loc = locate(usr.x+2,usr.y,usr.z)
				I.senban=1
				J.loc = locate(usr.x-2,usr.y,usr.z)
				J.senban=1
				L.loc = locate(usr.x,usr.y+2,usr.z)
				L.senban=1
				M2.loc = locate(usr.x,usr.y-2,usr.z)
				M2.senban=1
				N.loc = locate(usr.x+2,usr.y+2,usr.z)
				N.senban=1
				O.loc = locate(usr.x-2,usr.y-2,usr.z)
				O.senban=1
				P.loc = locate(usr.x-2,usr.y+2,usr.z)
				P.senban=1
				Q.loc = locate(usr.x+2,usr.y-2,usr.z)
				Q.senban=1
				R.loc = locate(usr.x+3,usr.y,usr.z)
				R.senban=1
				S.loc = locate(usr.x-3,usr.y,usr.z)
				S.senban=1
				T.loc = locate(usr.x,usr.y+3,usr.z)
				T.senban=1
				W.loc = locate(usr.x,usr.y-3,usr.z)
				W.senban=1
				X.loc = locate(usr.x+3,usr.y+3,usr.z)
				X.senban=1
				Y.loc = locate(usr.x-3,usr.y-3,usr.z)
				Y.senban=1
				Z.loc = locate(usr.x-3,usr.y+3,usr.z)
				Z.senban=1
				AB.loc = locate(usr.x-3,usr.y-2,usr.z)
				AB.senban=1
				AC.loc = locate(usr.x+3,usr.y+2,usr.z)
				AC.senban=1
				AD.loc = locate(usr.x+3,usr.y-2,usr.z)
				AD.senban=1
				AE.loc = locate(usr.x-3,usr.y+2,usr.z)
				AE.senban=1
				AF.loc = locate(usr.x+2,usr.y+3,usr.z)
				AF.senban=1
				AG.loc = locate(usr.x-2,usr.y-3,usr.z)
				AG.senban=1
				AH.loc = locate(usr.x-2,usr.y+3,usr.z)
				AH.senban=1
				AI.loc = locate(usr.x+2,usr.y-3,usr.z)
				AI.senban=1
				AJ.loc = locate(usr.x-1,usr.y-2,usr.z)
				AJ.senban=1
				AK.loc = locate(usr.x+1,usr.y+2,usr.z)
				AK.senban=1
				AL.loc = locate(usr.x+1,usr.y-2,usr.z)
				AL.senban=1
				AM.loc = locate(usr.x-1,usr.y+2,usr.z)
				AM.senban=1
				AN.loc = locate(usr.x+2,usr.y+1,usr.z)
				AN.senban=1
				AO.loc = locate(usr.x-2,usr.y-1,usr.z)
				AO.senban=1
				AP.loc = locate(usr.x-2,usr.y+1,usr.z)
				AP.senban=1
				AQ.loc = locate(usr.x+2,usr.y-1,usr.z)
				AQ.senban=1
				AR.loc = locate(usr.x-1,usr.y-3,usr.z)
				AR.senban=1
				AS.loc = locate(usr.x+1,usr.y+3,usr.z)
				AS.senban=1
				AT.loc = locate(usr.x+1,usr.y-3,usr.z)
				AT.senban=1
				AU.loc = locate(usr.x-1,usr.y+3,usr.z)
				AU.senban=1
				AV.loc = locate(usr.x+3,usr.y+1,usr.z)
				AV.senban=1
				AW.loc = locate(usr.x-3,usr.y-1,usr.z)
				AW.senban=1
				AX.loc = locate(usr.x-3,usr.y+1,usr.z)
				AX.senban=1
				AY.loc = locate(usr.x+3,usr.y-1,usr.z)
				AY.senban=1
				AZ.loc = locate(usr.x+3,usr.y-3,usr.z)
				AZ.senban=1
				flick("rise",A)
				flick("rise",B)
				flick("rise",C)
				flick("rise",D)
				flick("rise",E)
				flick("rise",F)
				flick("rise",G)
				flick("rise",H)
				flick("rise",I)
				flick("rise",J)
				flick("rise",K)
				flick("rise",L)
				flick("rise",M2)
				flick("rise",N)
				flick("rise",O)
				flick("rise",P)
				flick("rise",Q)
				flick("rise",R)
				flick("rise",S)
				flick("rise",T)
				flick("rise",W)
				flick("rise",X)
				flick("rise",Y)
				flick("rise",Z)
				flick("rise",AB)
				flick("rise",AC)
				flick("rise",AD)
				flick("rise",AE)
				flick("rise",AF)
				flick("rise",AG)
				flick("rise",AH)
				flick("rise",AI)
				flick("rise",AJ)
				flick("rise",AK)
				flick("rise",AL)
				flick("rise",AM)
				flick("rise",AN)
				flick("rise",AO)
				flick("rise",AP)
				flick("rise",AQ)
				flick("rise",AR)
				flick("rise",AS)
				flick("rise",AT)
				flick("rise",AU)
				flick("rise",AV)
				flick("rise",AW)
				flick("rise",AX)
				flick("rise",AY)
				flick("rise",AZ)
				for(var/mob/M in oview(5,usr))
					if(M.party&&M.partysensei==usr.partysensei)
						usr.cast = 0
						return
					var/damage= usr.nin/3.85 + usr.tai/3.85 + usr.gen/3.85 + usr.shurikenskill/3.85 - M.Resistencia/2.15
					if(damage<=0)damage=0
					view()<<"[M] recebeu [damage] de dano do Super Taijutsu de [usr]"
					if(M.fantasma)
						usr<<"<font size=1>Vc não consegue tocá-lo!"
						return
					M.health-=damage
					F_damage(M, damage, "#ff0000")
					if(M.health<=0)
						M.Death(usr)
				sleep(30)
				usr.Castando()


//Karin


mob/var/cdssoco = 1
mob/
	Karin
		verb
			Ssoco()
				set category = "Jutsus"
				set name = "Super Soco"
				if(usr.cdssoco)
					usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Super Soco</b>!"
					return
				if(!usr.canattack)
					return
				if(usr.PK==0)
					usr<<"Zona NON-PK!"
					return
				else
					for(var/mob/M in oview(5))
						if(M.party&&M.partysensei==usr.partysensei)return
						if(M.PK==0)
							usr<<"Zona NON-PK!"
							return
						if(M.ingat||M.intank)
							return
						if(usr.battlingRC)
							return
						if(M.battlingRC)
							return
						if(M.drunk&&M.NonClan)
							view()<<"[M] desvia do ataque de [usr]!"
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
							if(usr.Tekken&&usr.canattack)
								usr.cdssoco = 1
								spawn()usr.Cooldown(150,"Super Soco")
								usr.canattack=0
								usr << "<font size=1>Você ataca [M] com seus punhos cobertos de chakra!"
								flick("Attack",usr)

								var/damage = round(usr.nin/3,usr.nin/2.5) - M.Resistencia
								if(damage<=0)damage=0
								damage+=rand(1,damage)
								if(damage <= 1)
									damage = 1
									view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
									M.health -= damage
									F_damage(M, damage, "#ff0000")
									M.Death(usr)
									if(istype(M,/mob/enemy))
										M.killlist += src.name
									if(istype(M,/mob/player))
										usr.random = rand(1,8)
										if(random == 5||random==1)
											usr.taiexp += rand(1,3)
											usr.exp += rand(1,2)
											usr.Levelup()
											usr.taiup()
											sleep(2)
											usr.canattack=1
										else
											sleep(2)
											usr.canattack=1
											return
									else
										usr.random = rand(1,20)
										if(random == 5||random==1)
											usr.taiexp += rand(1,3)
											usr.taiup()
											usr.exp += rand(1,2)
											usr.Levelup()
											sleep(2)
											usr.canattack=1
										else
											sleep(2)
											usr.canattack=1
											return
								else
									view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
									M.health -= damage
									F_damage(M, damage, "#ff0000")
									M.Death(usr)
									if(istype(M,/mob/enemy))
										M.killlist += src.name
									if(istype(M,/mob/player))
										usr.random = rand(1,8)
										if(random == 5||random==1)
											usr.taiexp += rand(1,3)
											usr.taiup()
											usr.exp += rand(1,2)
											usr.Levelup()
											sleep(2)
											usr.canattack=1
										else
											sleep(2)
											usr.canattack=1
											return
									else
										usr.random = rand(1,20)
										if(random == 5||random==1)
											usr.taiexp += rand(1,3)
											usr.taiup()
											usr.exp += rand(1,2)
											usr.Levelup()
											sleep(2)
											usr.canattack=1
										else
											sleep(2)
											usr.canattack=1
											return
							else if(usr.Jyuken&&usr.canattack)
								if(usr.chakra >= 2)
									usr.canattack =0
									usr << "<font size=1>Você ataca [M] usando o Jyuuken!"
									flick("Attack",usr)
									flick("Jyuken",usr)
									var/damage = round(usr.nin*1,usr.nin/1.6) - M.Resistencia
									damage+=rand(1,damage)
									if(damage <= 1)
										damage = 1
										view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
										M.health -= damage
										F_damage(M, damage, "#ff0000")
										usr.chakra -= 2
										M.Death(usr)
										if(istype(M,/mob/enemy))
											M.killlist += src.name
										if(istype(M,/mob/player))
											usr.random = rand(1,8)
											if(random == 5||random==1)
												usr.taiexp += rand(1,3)
												usr.taiup()
												usr.exp += rand(1,2)
												usr.Levelup()
												sleep(2)
												usr.canattack=1
											else
												sleep(2)
												usr.Levelup()
												usr.canattack=1
												return
										else
											usr.random = rand(1,20)
											if(random == 5||random==1)
												usr.taiexp += rand(1,3)
												usr.taiup()
												usr.exp += rand(1,2)
												usr.Levelup()
												sleep(2)
												usr.canattack=1
											else
												sleep(2)
												usr.Levelup()
												usr.canattack=1
												return
									else
										view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
										M.health -= damage
										F_damage(M, damage, "#ff0000")
										usr.chakra -= 2
										M.Death(usr)
										if(istype(M,/mob/enemy))
											M.killlist += src.name
										if(istype(M,/mob/player))
											usr.random = rand(1,8)
											if(random == 5||random==1)
												usr.taiexp += rand(1,3)
												usr.taiup()
												usr.exp += rand(1,2)
												usr.Levelup()
												sleep(2)
												usr.canattack=1
											else
												sleep(2)
												usr.Levelup()
												usr.canattack=1
												return
										else
											usr.random = rand(1,20)
											if(random == 5||random==1)
												usr.taiexp += rand(1,3)
												usr.taiup()
												usr.exp += rand(1,2)
												usr.Levelup()
												sleep(2)
												usr.canattack=1
											else
												sleep(2)
												usr.Levelup()
												usr.canattack=1
												return
								else
									usr<<"<font size=1>Você não tem chakra o bastante para manter o Jyuuken, então você agora está usando o Tekken"
									usr.Jyuken = 0
									usr.Tekken = 1
									return
							else if(usr.Basic&&usr.canattack)
								usr.canattack =0
								usr << "<font size=1>Você ataca [M] com seus punhos cobertos de chakra!"
								flick("Attack",usr)
								var/damage = round(usr.nin*1) - M.Resistencia
								if(damage<=0)damage=0
								damage+=rand(1,damage)
								if(damage <= 1)
									damage = 1
									view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
									M.health -= damage
									F_damage(M, damage, "#ff0000")
									M.Death(usr)
									if(istype(M,/mob/enemy))
										M.killlist += src.name
									usr.random = rand(1,8)
									if(random == 5||random==1)
										usr.taiexp += rand(1,3)
										usr.taiup()
										usr.exp += rand(1,2)
										usr.Levelup()
										sleep(2)
										usr.canattack=1
									else
										sleep(2)
										usr.Levelup()
										usr.canattack=1
										return
								else
									view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
									M.health -= damage
									M.Death(usr)
						//usr.canattack=0
						///sleep(15)
						//usr.canattack=1
						usr.Castando()

obj
	SensatsuHa
		icon = 'needles.dmi'
		icon_state = "Needles"
		density = 1
		New()
			spawn(50) del src
			..()
		Bump(A)
			var/mob/O = src.Gowner
			if(!O) del src
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = O.shurikenskill/5 + O.ventoN*1.5 + O.aguaN*1.5 - M.Resistencia/2
				if(damage >= 1)
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					view(M) << "[M] foi acertado pelo Sensatsu de [O] recebendo [damage] de dano!!"
					M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	Haryate
		density = 1
		hary01
			icon = 'haryate.dmi'
			icon_state = "1"
			layer = MOB_LAYER+1
			New()
				spawn(70) del src
				..()
			Bump(A)
				var/mob/O = src.Gowner
				if(!O) del src
				if(ismob(A))
					var/mob/M = A
					if(M.party&&M.partysensei==O.partysensei)return
					if(M.Kaiten||M.sphere)
						return
					if(M.PK==0)
						return
					var/damage = src.nin - M.Resistencia/2
					if(damage >= 1)
						M.health -= damage
						M.chakra -= M.Mchakra*0.05
						F_damage(M, damage, "#ff0000")
						view(M) << "[M] foi acertado pelo Haryate recebendo [damage] de dano!!"
						if(M.health<=0)
							M.Death(O)
						if(M.chakra<=0)
							M.health=0
							M.Death(O)
						step(M,O.dir)
					del(src)
				if(istype(A,/obj/))
					var/obj/T = A
					if(T.density)
						del(src)
				if(istype(A,/obj/))
					del(src)
		hary02
			icon = 'haryate.dmi'
			icon_state = "2"
			layer = MOB_LAYER+1
			New()
				spawn(70) del src
				..()
			Bump(A)
				var/mob/O = src.Gowner
				if(!O) del src
				if(ismob(A))
					var/mob/M = A
					if(M.party&&M.partysensei==O.partysensei)return
					if(M.Kaiten||M.sphere)
						return
					if(M.PK==0)
						return
					var/damage = src.nin - M.Resistencia/2
					if(damage >= 1)
						M.health -= damage
						M.chakra -= M.Mchakra*0.05
						F_damage(M, damage, "#ff0000")
						view(M) << "[M] foi acertado pelo Haryate recebendo [damage] de dano!!"
						if(M.health<=0)
							M.Death(O)
						if(M.chakra<=0)
							M.health=0
							M.Death(O)
						step(M,O.dir)
					del(src)
				if(istype(A,/obj/))
					var/obj/T = A
					if(T.density)
						del(src)
				if(istype(A,/obj/))
					del(src)
		hary03
			icon = 'haryate.dmi'
			icon_state = "3"
			layer = MOB_LAYER+1
			New()
				spawn(70) del src
				..()
			Bump(A)
				var/mob/O = src.Gowner
				if(!O) del src
				if(ismob(A))
					var/mob/M = A
					if(M.party&&M.partysensei==O.partysensei)return
					if(M.Kaiten||M.sphere)
						return
					if(M.PK==0)
						return
					var/damage = src.nin - M.Resistencia/2
					if(damage >= 1)
						M.health -= damage
						M.chakra -= M.Mchakra*0.05
						F_damage(M, damage, "#ff0000")
						view(M) << "[M] foi acertado pelo Haryate recebendo [damage] de dano!!"
						if(M.health<=0)
							M.Death(O)
						if(M.chakra<=0)
							M.health=0
							M.Death(O)
						step(M,O.dir)
					del(src)
				if(istype(A,/obj/))
					var/obj/T = A
					if(T.density)
						del(src)
				if(istype(A,/obj/))
					del(src)
		hary04
			icon = 'haryate.dmi'
			icon_state = "4"
			layer = MOB_LAYER+1
			New()
				spawn(70) del src
				..()
			Bump(A)
				var/mob/O = src.Gowner
				if(!O) del src
				if(ismob(A))
					var/mob/M = A
					if(M.party&&M.partysensei==O.partysensei)return
					if(M.Kaiten||M.sphere)
						return
					if(M.PK==0)
						return
					var/damage = src.nin - M.Resistencia/2
					if(damage >= 1)
						M.health -= damage
						M.chakra -= M.Mchakra*0.05
						F_damage(M, damage, "#ff0000")
						view(M) << "[M] foi acertado pelo Haryate recebendo [damage] de dano!!"
						if(M.health<=0)
							M.Death(O)
						if(M.chakra<=0)
							M.health=0
							M.Death(O)
						step(M,O.dir)
					del(src)
				if(istype(A,/obj/))
					var/obj/T = A
					if(T.density)
						del(src)
				if(istype(A,/obj/))
					del(src)
		hary05
			icon = 'haryate.dmi'
			icon_state = "5"
			layer = MOB_LAYER+1
			New()
				spawn(70) del src
				..()
			Bump(A)
				var/mob/O = src.Gowner
				if(!O) del src
				if(ismob(A))
					var/mob/M = A
					if(M.party&&M.partysensei==O.partysensei)return
					if(M.Kaiten||M.sphere)
						return
					if(M.PK==0)
						return
					var/damage = src.nin - M.Resistencia/2
					if(damage >= 1)
						M.health -= damage
						M.chakra -= M.Mchakra*0.05
						F_damage(M, damage, "#ff0000")
						view(M) << "[M] foi acertado pelo Haryate recebendo [damage] de dano!!"
						if(M.health<=0)
							M.Death(O)
						if(M.chakra<=0)
							M.health=0
							M.Death(O)
						step(M,O.dir)
					del(src)
				if(istype(A,/obj/))
					var/obj/T = A
					if(T.density)
						del(src)
				if(istype(A,/obj/))
					del(src)
		hary06
			icon = 'haryate.dmi'
			icon_state = "6"
			layer = MOB_LAYER+1
			New()
				spawn(70) del src
				..()
			Bump(A)
				var/mob/O = src.Gowner
				if(!O) del src
				if(ismob(A))
					var/mob/M = A
					if(M.party&&M.partysensei==O.partysensei)return
					if(M.Kaiten||M.sphere)
						return
					if(M.PK==0)
						return
					var/damage = src.nin - M.Resistencia/2
					if(damage >= 1)
						M.health -= damage
						M.chakra -= M.Mchakra*0.05
						F_damage(M, damage, "#ff0000")
						view(M) << "[M] foi acertado pelo Haryate recebendo [damage] de dano!!"
						if(M.health<=0)
							M.Death(O)
						if(M.chakra<=0)
							M.health=0
							M.Death(O)
						step(M,O.dir)
					del(src)
				if(istype(A,/obj/))
					var/obj/T = A
					if(T.density)
						del(src)
				if(istype(A,/obj/))
					del(src)
		hary07
			icon = 'haryate.dmi'
			icon_state = "7"
			layer = MOB_LAYER+1
			New()
				spawn(70) del src
				..()
			Bump(A)
				var/mob/O = src.Gowner
				if(!O) del src
				if(ismob(A))
					var/mob/M = A
					if(M.party&&M.partysensei==O.partysensei)return
					if(M.Kaiten||M.sphere)
						return
					if(M.PK==0)
						return
					var/damage = src.nin - M.Resistencia/2
					if(damage >= 1)
						M.health -= damage
						M.chakra -= M.Mchakra*0.05
						F_damage(M, damage, "#ff0000")
						view(M) << "[M] foi acertado pelo Haryate recebendo [damage] de dano!!"
						if(M.health<=0)
							M.Death(O)
						if(M.chakra<=0)
							M.health=0
							M.Death(O)
						step(M,O.dir)
					del(src)
				if(istype(A,/obj/))
					var/obj/T = A
					if(T.density)
						del(src)
				if(istype(A,/obj/))
					del(src)
		hary08
			icon = 'haryate.dmi'
			icon_state = "8"
			layer = MOB_LAYER+1
			New()
				spawn(70) del src
				..()
			Bump(A)
				var/mob/O = src.Gowner
				if(!O) del src
				if(ismob(A))
					var/mob/M = A
					if(M.party&&M.partysensei==O.partysensei)return
					if(M.Kaiten||M.sphere)
						return
					if(M.PK==0)
						return
					var/damage = src.nin - M.Resistencia/2
					if(damage >= 1)
						M.health -= damage
						M.chakra -= M.Mchakra*0.05
						F_damage(M, damage, "#ff0000")
						view(M) << "[M] foi acertado pelo Haryate recebendo [damage] de dano!!"
						if(M.health<=0)
							M.Death(O)
						if(M.chakra<=0)
							M.health=0
							M.Death(O)
						step(M,O.dir)
					del(src)
				if(istype(A,/obj/))
					var/obj/T = A
					if(T.density)
						del(src)
				if(istype(A,/obj/))
					del(src)



//==== SUBCLANS =================================================================================

//==== DEIDARA / AKATSUKI =======================================================================

mob/var/cdargila = 0//toma nerf maldito

mob/deidara
	verb
		Criararg()
			set category = "Jutsus"
			set name = "Criar Argila"
			if(usr.cdargila)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Criar Argila</b>!"
				return
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
				return
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
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
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.kibaku>300)
				usr<<"Você está carregando explosivos demais! (Maximo de 100)"
				return
			else
				usr.cdargila = 1
				spawn()usr.Cooldown(100,"Criar Argila")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.kibaku += 10
				usr<<"Você está criando argila..."
				sleep(50)
				usr<<"Você criou 10 porções de argila"
				usr.Castando()



mob/var/cdplantar = 0
mob/deidara
	verb
		Plantarexplosivo()
			set category = "Jutsus"
			set name = "C1 Kikkai"
			if(usr.cdplantar)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o o C1 Kikkai</b>!"
				return
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
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
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.cast)
				return
			if(usr.kibaku < 2)
				usr<<"Você não tem mais explosivos para colocar!"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			else
				for(var/mob/M in oview(2))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(M)
						if(M.havekibaku)
							usr<<"Apenas um explosivo por vez."
							return
					if(M.PK==0)
						usr<<"Zona NON-PK!!!"
						return
					if(M.Kaiten||M.sphere)
						usr << "Seu explosivo seria destruído se tentasse colocá-lo agora."
						return
					usr.cdplantar = 1
					spawn()usr.Cooldown(150,"C1 Kikkai")
					usr.RandomChakra01()
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					usr<<"Você plantou o C1 em [M]!"
					usr.Castando()
					usr.kibaku -= 1
					M.havekibaku = 1
					M.kibakuperson="[usr]"
					M.placekibaku()
					sleep(900)
					if(M)
						M.havekibaku=0
						M.kibakuperson=""
						usr<<"O explosivo colocado em [M] se desfez."


mob/var/cdkatsu = 0
mob/deidara
	verb
		Explodearg()
			set category = "Jutsus"
			set name = "KATSU"
			if(usr.cdkatsu)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Katsu</b>!"
				return
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
				return
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
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
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			for(var/mob/M in world)
				if(M.havekibaku&&M.kibakuperson=="[usr]")
					usr.cdkatsu=1
					spawn()usr.Cooldown(100,"KATSU")
					usr.RandomChakra1()
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					flick("boom",M)
					var/damage = usr.nin/4.25 + usr.tai/4.25 + usr.gen/4.25 + usr.shurikenskill/4.25 + usr.terraN*1.5 - M.Resistencia/2
					if(damage<=0)damage=0
					M<<"Os explosivos de argila de [usr] explodem em você dando [damage] de dano!"
					usr<<"Sua argila explode em [M] dando [damage] de dano!"
					M.havekibaku=0
					M.kibakuperson=null
					usr.Chakragain()
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					M.Death(usr)
					usr.Castando()

mob/var/cdc1 = 0
mob/deidara
	verb
		Argarmor()
			set category = "Jutsus"
			set name = "C1"
			if(usr.cdc1)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>C1</b>!"
				return
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
				return
			if(usr.froze)
				usr<<"Você está paralisado"
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
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.kibaku < 5)
				usr<<"Você não tem mais argila para usar! (5)"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(!usr.Barmor&&!usr.cast)
				usr.cdc1 = 1
				spawn()usr.Cooldown(30,"C1")
				usr.RandomChakra01()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				view()<<"<font color = blue>[usr]: C1!"
				usr.overlays += 'argila.dmi'
				usr.Barmor =1
				usr.nin = usr.nin*1.05
				usr.kibaku -=5
				sand
				if(usr.Barmor)
					usr.chakra -=50
					if(usr.chakra <= 4)
						usr.overlays -= 'argila.dmi'
						usr.Barmor = 0
						usr.nin = usr.Mnin
						return
					else
						sleep(4)
						goto sand
			else if(usr.Barmor)
				usr.overlays -= 'argila.dmi'
				usr.Barmor =0
				usr.nin = usr.Mnin
				usr<<"Você desativa o C1."

mob/var/cdc2 = 0
mob/deidara
	verb
		Argarmor2()
			set category = "Jutsus"
			set name = "C2 Shinryuu"
			if(usr.cdc2)
				usr<<"<b> Aguarde o Cooldown do C2 Shinryuu</b>"
				return
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
				return
			if(usr.froze)
				usr<<"Você está paralisado"
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
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.kibaku < 20)
				usr<<"Você não tem mais argila para usar! (20)"
				return
			if(usr.Flight==0)
				usr.cdc2 = 1
				spawn()usr.Cooldown(350,"C2 Shinryuu")
				usr.RandomChakra1()
				spawn usr.Castando()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.density = 0
				usr.kibaku-=20
				usr.overlays += 'Cloud.dmi'
				usr.Flight = 1
				sleep(200)
				usr.overlays-= 'Cloud.dmi'
				usr<<"A argila se desfaz"
				usr.density = 1
				usr.Flight = 0
			else
				usr<<"Já esta ativo"


mob/var/cdc2p = 0
mob/deidara
	verb
		Passaro() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "C2 Passaro"
			if(usr.cdc2p)
				usr<<"<b> Aguarde o Cooldown do C2 passaro </b>"
			if(usr.Kaiten == 1) // If the mob's cast var is one...
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
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
			if(usr.kibaku<5)
				usr<<"Pouca argila (5)"
				return
			else // If the cast var isn't 1...
				usr.cdc2p = 1 // Sets the cast var to 1, so he cant fire another beam // Disables the mob's movement
				spawn()usr.Cooldown(100,"C2 Passaro")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.kibaku-=5
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: C2!"
				var/obj/Passaro/K = new /obj/Passaro
				spawn usr.Castando()
				K.loc = usr.loc
				K.nin=usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5
				K.dir = usr.dir
				K.Move_Delay=0.5
				K.name="[usr]"
				K.Gowner=usr
				usr.Chakragain()
				walk(K,usr.dir)
				if (target == null)
					del(K)


obj
	Passaro
		icon = 'deidarajutsus.dmi'
		icon_state = "passaro"
		density = 1
		New()
			spawn(45) del src
			..()
		Bump(A)
			var/mob/O = src.Gowner
			if(!O) del src
			if(ismob(A))
				var/mob/M = A
				if(M.party&&M.partysensei==O.partysensei)return
				if(M.Kaiten||M.sphere)
					return
				if(M.rd)
					del(src)
					return
				if(M.PK==0)
					return
				flick("boom",M)
				var/damage = O.nin/4.5 + O.tai/4.5 + O.gen/4.5 + O.shurikenskill/4.5 + O.terraN*1.5 - M.Resistencia/2
				if(damage >= 1)
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					view(M) << "[M] foi acertado pelo C2 tirando [damage] de dano!!"
					M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)


mob/var/cdc3=0
mob/Deidara
	verb
		C3()
			set category = "Jutsus"
			set name = "C3 Nendoshin"
			if(usr.cdc3) // If the mob's cast var is one...
				usr<<"<b>Cooldown : Aguarde para usar o C3 </b>"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
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
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.kibaku < 50)
				usr<<"Você não tem mais argila para usar! (50)"
				return
			else
				usr.cdc3 = 1
				spawn()usr.Cooldown(120,"C3 Nendoshin")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.kibaku-=50
				view()<<"[usr]<font color=green> Diz: C3!"
				var/obj/c31/K = new /obj/c31/
				K.loc = locate(usr.x,usr.y-1,usr.z)
				Execution(/obj/chib/Darkness,10)
				spawn usr.Castando()
				sleep(70)
				del(K)
				usr.cast=0


mob/var/cdc4 =0
mob/Deidara
	verb
		C4()
			set category = "Jutsus"
			set name = "C4 Karura"
			if(usr.cdc4) // If the mob's cast var is one...
				usr<<"<b> Cooldown : Aguarde para usar o C4 Karura </b>"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
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
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.kibaku < 70)
				usr<<"Você não tem mais argila para usar! (70)"
				return
			else
				usr.cdc4 = 1
				spawn()usr.Cooldown(100,"C4 Karura")
				usr.RandomChakra05()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.kibaku-=70
				view()<<"[usr]<font color=green> Diz: C4 Karura!"
				var/obj/ap/K = new /obj/ap
				var/obj/ap/L = new /obj/ap
				var/obj/ap/D = new /obj/ap
				var/obj/ap/N = new /obj/ap
				var/obj/ap/O = new /obj/ap
				var/obj/ap/P = new /obj/ap
				var/obj/ap/Q = new /obj/ap
				var/obj/ap/R = new /obj/ap
				var/obj/ap/S = new /obj/ap
				var/obj/ap/T = new /obj/ap
				var/obj/ap/U = new /obj/ap
				var/obj/ap/V = new /obj/ap
				var/obj/ap/X = new /obj/ap
				var/obj/ap/Y = new /obj/ap
				var/obj/ap/Z = new /obj/ap
				var/obj/ap/W = new /obj/ap
				K.loc = locate(usr.x+1,usr.y,usr.z)
				K.nin = usr.nin/4.15 + usr.tai/4.15 + usr.gen/4.15 + usr.shurikenskill/4.15 + usr.terraN*1.5
				K.Gowner = usr
				K.burn()
				L.loc = locate(usr.x,usr.y+1,usr.z)
				L.nin = usr.nin/4.15 + usr.tai/4.15 + usr.gen/4.15 + usr.shurikenskill/4.15 + usr.terraN*1.5
				L.Gowner = usr
				L.burn()
				D.loc = locate(usr.x-1,usr.y,usr.z)
				D.nin = usr.nin/4.15 + usr.tai/4.15 + usr.gen/4.15 + usr.shurikenskill/4.15 + usr.terraN*1.5
				D.Gowner = usr
				D.burn()
				N.loc = locate(usr.x,usr.y-3,usr.z)
				N.nin = usr.nin/4.15 + usr.tai/4.15 + usr.gen/4.15 + usr.shurikenskill/4.15 + usr.terraN*1.5
				N.Gowner = usr
				N.burn()
				O.loc = locate(usr.x+2,usr.y,usr.z)
				O.nin = usr.nin/4.15 + usr.tai/4.15 + usr.gen/4.15 + usr.shurikenskill/4.15 + usr.terraN*1.5
				O.Gowner = usr
				O.burn()
				P.loc = locate(usr.x,usr.y+2,usr.z)
				P.nin = usr.nin/4.15 + usr.tai/4.15 + usr.gen/4.15 + usr.shurikenskill/4.15 + usr.terraN*1.5
				P.Gowner = usr
				P.burn()
				Q.loc = locate(usr.x-2,usr.y,usr.z)
				Q.nin = usr.nin/4.15 + usr.tai/4.15 + usr.gen/4.15 + usr.shurikenskill/4.15 + usr.terraN*1.5
				Q.Gowner = usr
				Q.burn()
				R.loc = locate(usr.x,usr.y-2,usr.z)
				R.nin = usr.nin/4.15 + usr.tai/4.15 + usr.gen/4.15 + usr.shurikenskill/4.15 + usr.terraN*1.5
				R.Gowner = usr
				R.burn()
				S.loc = locate(usr.x+3,usr.y,usr.z)
				S.nin = usr.nin/4.15 + usr.tai/4.15 + usr.gen/4.15 + usr.shurikenskill/4.15 + usr.terraN*1.5
				S.Gowner = usr
				S.burn()
				T.loc = locate(usr.x,usr.y+3,usr.z)
				T.nin = usr.nin/4.15 + usr.tai/4.15 + usr.gen/4.15 + usr.shurikenskill/4.15 + usr.terraN*1.5
				T.Gowner = usr
				T.burn()
				U.loc = locate(usr.x-3,usr.y,usr.z)
				U.nin = usr.nin/4.15 + usr.tai/4.15 + usr.gen/4.15 + usr.shurikenskill/4.15 + usr.terraN*1.5
				U.Gowner = usr
				U.burn()
				V.loc = locate(usr.x,usr.y-3,usr.z)
				V.nin = usr.nin/4.15 + usr.tai/4.15 + usr.gen/4.15 + usr.shurikenskill/4.15 + usr.terraN*1.5
				V.Gowner = usr
				V.burn()
				X.loc = locate(usr.x+4,usr.y,usr.z)
				X.nin = usr.nin/4.15 + usr.tai/4.15 + usr.gen/4.15 + usr.shurikenskill/4.15 + usr.terraN*1.5
				X.Gowner = usr
				X.burn()
				Y.loc = locate(usr.x,usr.y+4,usr.z)
				Y.nin = usr.nin/4.15 + usr.tai/4.15 + usr.gen/4.15 + usr.shurikenskill/4.15 + usr.terraN*1.5
				Y.Gowner = usr
				Y.burn()
				Z.loc = locate(usr.x-4,usr.y,usr.z)
				Z.nin = usr.nin/4.15 + usr.tai/4.15 + usr.gen/4.15 + usr.shurikenskill/4.15 + usr.terraN*1.5
				Z.Gowner = usr
				Z.burn()
				W.loc = locate(usr.x,usr.y-4,usr.z)
				W.nin = usr.nin/4.15 + usr.tai/4.15 + usr.gen/4.15 + usr.shurikenskill/4.15 + usr.terraN*1.5
				W.Gowner = usr
				W.burn()
				for(var/mob/M in orange(50))
					if(M.party&&M.partysensei==usr.partysensei)return
					var/damage=usr.nin/4.15 + usr.tai/4.15 + usr.gen/4.15 + usr.shurikenskill/4.15 + usr.terraN*1.5 - M.Resistencia/2.15
					if(damage<=0)damage=0
					view()<<"[M] tomou [damage] de dano do C4 de [usr]."
					if(M.fantasma)
						usr<<"<font size=1>Vc não consegue tocá-lo!"
						return
					M.health-=damage
					F_damage(M, damage, "#ff0000")
					if(M.health<=0)
						M.Death(usr)
				spawn usr.Castando()
				sleep(100)
				del(K)
				del(L)
				del(D)
				del(N)
				del(O)
				del(P)
				del(Q)
				del(R)
				del(S)
				del(T)
				del(U)
				del(V)
				del(X)
				del(Y)
				del(Z)
				del(W)

obj/ap
	icon = 'aranha deidara.dmi'
	density = 0
	New()
		spawn(100) del(src)
	proc
		burn()
			var/mob/O = src.Gowner
			for(var/mob/M in view(1))
				if(!O) del src
				if(M.x==src.x&&M.y==src.y)
					if(M == src.Gowner)
						return
					if(M.party&&M.partysensei==O.partysensei)return
					var/damage = O.nin/4.15 + O.tai/4.15 + O.gen/4.15 + O.shurikenskill/4.15 + O.terraN*1.5 - M.Resistencia/2
					if(damage >= 1)
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						view(M) << "[M] recebeu [damage] de dano da explosão da microbomba de [O]!!"
						M.Death(O)
			spawn(20)
			src.burn()

obj/ap2
	icon = 'SO.dmi'
	icon_state = "floor"
	density = 0
	New()
		spawn(150) del(src)
	proc
		burn()
			var/mob/O = src.Gowner
			for(var/mob/M in view(1))
				if(!O) del src
				if(M.x==src.x&&M.y==src.y)
					if(M == src.Gowner)
						return
					if(M.party&&M.partysensei==O.partysensei)return
					var/damage = O.nin/4.15 + O.tai/4.15 + O.gen/4.15 + O.shurikenskill/4.15 + O.terraN*1.5 - M.Resistencia/2
					if(damage >= 1)
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						view(M) << "[M] recebeu [damage] de dano da explosão da mina de [usr]!!"
						M.Death(O)
			spawn(30)
			src.burn()


mob/var/cdc5 = 0
mob/Deidara
	verb
		C5()
			set category = "Jutsus"
			set name = "C5 Kibaku"
			if(usr.cdc5) // If the mob's cast var is one...
				usr<<"<b> Cooldown : Aguarde para usar o C5 Kibaku </b>"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
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
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.kibaku < 80)
				usr<<"Você não tem mais argila para usar! (80)"
				return
			else
				usr.cdc5 = 1
				spawn()usr.Cooldown(120,"C5 Kibaku")
				usr.RandomChakra05()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.kibaku-=80
				view()<<"[usr]<font color=green> Diz: C5 Kibaku!"
				usr<<"Vc plantou diversas minas terrestres"
				var/obj/ap/K = new /obj/ap2
				var/obj/ap/L = new /obj/ap2
				var/obj/ap/M = new /obj/ap2
				var/obj/ap/N = new /obj/ap2
				var/obj/ap/O = new /obj/ap2
				var/obj/ap/P = new /obj/ap2
				var/obj/ap/Q = new /obj/ap2
				var/obj/ap/R = new /obj/ap2
				var/obj/ap/S = new /obj/ap2
				var/obj/ap/T = new /obj/ap2
				var/obj/ap/U = new /obj/ap2
				var/obj/ap/V = new /obj/ap2
				var/obj/ap/X = new /obj/ap2
				var/obj/ap/Y = new /obj/ap2
				var/obj/ap/Z = new /obj/ap2
				var/obj/ap/W = new /obj/ap2
				K.loc = locate(usr.x+1,usr.y,usr.z)
				K.nin = usr.nin/4.15 + usr.tai/4.15 + usr.gen/4.15 + usr.shurikenskill/4.15 + usr.terraN*1.5
				K.Gowner = usr
				K.burn()
				L.loc = locate(usr.x,usr.y+1,usr.z)
				L.nin = usr.nin/4.15 + usr.tai/4.15 + usr.gen/4.15 + usr.shurikenskill/4.15 + usr.terraN*1.5
				L.Gowner = usr
				L.burn()
				M.loc = locate(usr.x-1,usr.y,usr.z)
				M.nin = usr.nin/4.15 + usr.tai/4.15 + usr.gen/4.15 + usr.shurikenskill/4.15 + usr.terraN*1.5
				M.Gowner = usr
				M.burn()
				N.loc = locate(usr.x,usr.y-1,usr.z)
				N.nin = usr.nin/4.15 + usr.tai/4.15 + usr.gen/4.15 + usr.shurikenskill/4.15 + usr.terraN*1.5
				N.Gowner = usr
				N.burn()
				O.loc = locate(usr.x+2,usr.y,usr.z)
				O.nin = usr.nin/4.15 + usr.tai/4.15 + usr.gen/4.15 + usr.shurikenskill/4.15 + usr.terraN*1.5
				O.Gowner = usr
				O.burn()
				P.loc = locate(usr.x,usr.y+2,usr.z)
				P.nin = usr.nin/4.15 + usr.tai/4.15 + usr.gen/4.15 + usr.shurikenskill/4.15 + usr.terraN*1.5
				P.Gowner = usr
				P.burn()
				Q.loc = locate(usr.x-3,usr.y,usr.z)
				Q.nin = usr.nin/4.15 + usr.tai/4.15 + usr.gen/4.15 + usr.shurikenskill/4.15 + usr.terraN*1.5
				Q.Gowner = usr
				Q.burn()
				R.loc = locate(usr.x,usr.y-3,usr.z)
				R.nin = usr.nin/4.15 + usr.tai/4.15 + usr.gen/4.15 + usr.shurikenskill/4.15 + usr.terraN*1.5
				R.Gowner = usr
				R.burn()
				S.loc = locate(usr.x+4,usr.y,usr.z)
				S.nin = usr.nin/4.15 + usr.tai/4.15 + usr.gen/4.15 + usr.shurikenskill/4.15 + usr.terraN*1.5
				S.Gowner = usr
				S.burn()
				T.loc = locate(usr.x,usr.y+4,usr.z)
				T.nin = usr.nin/4.15 + usr.tai/4.15 + usr.gen/4.15 + usr.shurikenskill/4.15 + usr.terraN*1.5
				T.Gowner = usr
				T.burn()
				U.loc = locate(usr.x-5,usr.y,usr.z)
				U.nin = usr.nin/4.15 + usr.tai/4.15 + usr.gen/4.15 + usr.shurikenskill/4.15 + usr.terraN*1.5
				U.Gowner = usr
				U.burn()
				V.loc = locate(usr.x,usr.y-5,usr.z)
				V.nin = usr.nin/4.15 + usr.tai/4.15 + usr.gen/4.15 + usr.shurikenskill/4.15 + usr.terraN*1.5
				V.Gowner = usr
				V.burn()
				X.loc = locate(usr.x+6,usr.y,usr.z)
				X.nin = usr.nin/4.15 + usr.tai/4.15 + usr.gen/4.15 + usr.shurikenskill/4.15 + usr.terraN*1.5
				X.Gowner = usr
				X.burn()
				Y.loc = locate(usr.x,usr.y+6,usr.z)
				Y.nin = usr.nin/4.15 + usr.tai/4.15 + usr.gen/4.15 + usr.shurikenskill/4.15 + usr.terraN*1.5
				Y.Gowner = usr
				Y.burn()
				Z.loc = locate(usr.x-7,usr.y,usr.z)
				Z.nin = usr.nin/4.15 + usr.tai/4.15 + usr.gen/4.15 + usr.shurikenskill/4.15 + usr.terraN*1.5
				Z.Gowner = usr
				Z.burn()
				W.loc = locate(usr.x,usr.y-7,usr.z)
				W.nin = usr.nin/4.15 + usr.tai/4.15 + usr.gen/4.15 + usr.shurikenskill/4.15 + usr.terraN*1.5
				W.Gowner = usr
				W.burn()
				spawn usr.Castando()
				sleep(150)
				del(K)
				del(L)
				del(M)
				del(N)
				del(O)
				del(P)
				del(Q)
				del(R)
				del(S)
				del(T)
				del(U)
				del(V)
				del(X)
				del(Y)
				del(Z)
				del(W)


mob/var/kibakunpc=0
mob/deidara
	verb
		DeidaraBunshin()
			set name = "Kibaku Bunshin"
			set category = "Jutsus"
			if(usr.cast)
				return
			if(usr.caught)
				usr<<"Você foi capturado!"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.kibaku < 30)
				usr << "Pouca argila (30)!!"
				return
			if(usr.inso)
				return
			if(usr.froze)
				usr<<"Você está paralizado!"
				return
			if(usr.Frozen)
				usr<<"Você está paralizado!"
				return
			if(usr.captured)
				usr<<"Você foi capturado!"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa!"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita!"
				return
			else
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
//				usr.cast = 1
				usr.KillBunshin()
				usr << "Vc usou seus clones kibaku"
				var/mob/npcs/GenjBunshin/A = new /mob/npcs/GenjBunshin
				var/mob/npcs/GenjBunshin/B = new /mob/npcs/GenjBunshin
				var/mob/npcs/GenjBunshin/C = new /mob/npcs/GenjBunshin
				usr.Chakragain()
				if(A)
					A.name = "[usr.name]"
					if(usr.party)
						A.party=1
						A.partysensei="[usr.partysensei]"
					A.original = usr
					A.kibakunpc = 1
					A.icon = usr.icon
					A.overlays += usr.overlays
					A.loc = locate(usr.x-1, usr.y, usr.z)
					flick("smoke2",A)
					A.max_exp = 2
					A.exp = 2
					A.tai = usr.gen/2
					A.health = 10
				if(B)
					B.name = "[usr.name]"
					if(usr.party)
						B.party=1
						B.partysensei="[usr.partysensei]"
					B.original = usr
					B.kibakunpc = 1
					B.icon = usr.icon
					B.overlays += usr.overlays
					B.loc = locate(usr.x-2, usr.y, usr.z)
					flick("smoke2",B)
					B.max_exp = 2
					B.exp = 2
					B.tai = usr.gen/2
					B.health = 10
				if(C)
					C.name = "[usr.name]"
					if(usr.party)
						C.party=1
						C.partysensei="[usr.partysensei]"
					C.original = usr
					C.kibakunpc = 1
					C.icon = usr.icon
					C.overlays += usr.overlays
					C.loc = locate(usr.x+1, usr.y, usr.z)
					flick("smoke2",C)
					C.max_exp = 2
					C.exp = 2
					C.tai = usr.gen/2
					C.health = 10
				sleep(2)
//				usr.cast=0
				usr.Castando()
				usr.kibaku-=30


mob
	proc
		ExpB()
			if(istype(src,/obj/))
				del(src)
				return
			flick("boom",src)
			src.health -= src.nin/4.5 + src.tai/4.5 + src.gen/4.5 + src.shurikenskill/4.5 + src.terraN*1.5 - src.Resistencia/2
			src.Death(src)


mob/var/cdco = 0
mob/Deidara
	verb
		CO()
			set category = "Jutsus"
			set name = "CO Arte Suprema"
			if(emguerra)return
			if(usr.cdco) // If the mob's cast var is one...
				usr<<"<b> Cooldown : Aguarde Milenios para usar o CO </b>"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
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
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.kibaku < 99)
				usr<<"Você não tem mais argila para usar! (99)"
				return
			else
				usr.cdco = 1
				spawn()usr.Cooldown(600,"CO Arte Suprema")
				usr.RandomChakra5()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.kibaku-=99
				view()<<"[usr]<font color=green> Diz: CO Arte Suprema!"
				view()<<"[usr]<font color=green> Diz: My art is a Bang!"
				for(var/mob/M in orange(10))
					var/damage= usr.nin*10 + usr.tai*10 + usr.gen*10 + usr.shurikenskill*10 + terraN*1.5
					view()<<"[M] tomou [damage] de dano do CO de [usr]."
					if(M.fantasma)
						usr<<"<font size=1>Vc não consegue tocá-lo!"
						return
					if(M.bijuunpc)
						usr<<"Não pode ser usado em Bijuu!"
						return
					M.health-=damage
					F_damage(M, damage, "#ff0000")
					if(M.health<=0)
						M.Death(usr)
				sleep(10)
				usr<<"Por usar um kinjutsu vc terá 1% de seus stats cortados"
				usr.maxhealth-=usr.maxhealth/100
				usr.Mchakra-=usr.Mchakra/100
				usr.Mtai-=usr.Mtai/100
				usr.Mgen-=usr.Mgen/100
				usr.Mnin-=usr.Mnin/100
				usr.Mshurikenskill-=Mshurikenskill/100
				usr.chakraN-=usr.chakraN/100
				usr.Resistencia-=usr.Resistencia/100
				usr.veloN-=usr.veloN/100
				//usr.SalvarAgora()
				usr<<"Você se explodiu com seu jutsu!"
				usr.health=0
				usr.Death(usr)
				usr.cast=0

//==== NAGATO ===================================================================================


obj/var/tmp/CH=0
obj
	ch1
		icon='Chibaku Tensei.dmi'
		icon_state= "1"
		layer = MOB_LAYER+1
	ch2
		icon='Chibaku Tensei.dmi'
		icon_state= "2"
		layer = MOB_LAYER+1
	ch3
		icon='Chibaku Tensei.dmi'
		icon_state= "3"
		layer = MOB_LAYER+1
	ch4
		icon='Chibaku Tensei.dmi'
		icon_state= "4"
		layer = MOB_LAYER+1
	ch5
		icon='Chibaku Tensei.dmi'
		icon_state= "5"
		layer = MOB_LAYER+1
	ch6
		icon='Chibaku Tensei.dmi'
		icon_state= "6"
		layer = MOB_LAYER+1
	ch7
		icon='Chibaku Tensei.dmi'
		icon_state= "7"
		layer = MOB_LAYER+1
	ch8
		icon='Chibaku Tensei.dmi'
		icon_state= "8"
		layer = MOB_LAYER+1
	ch9
		icon='Chibaku Tensei.dmi'
		icon_state= "9"
		layer = MOB_LAYER+1


mob/var/tmp/cdchiba = 0
mob/var
	CarChibaku=0
	DesChibaku=0

mob/Pein
	verb
		ChibakuTensei()
			set category ="Doujutsu"
			set name ="Chibaku Tensei"
			if(usr.cdchiba)
				usr<<"Aguarde o Cooldown do Chibaku Tensei"
				return
			else
				if(usr.cdchiba)return
				usr.cdchiba=1
				spawn()usr.Cooldown(1200,"Chibaku Tensei")
				usr.ChibakuTensei2()
mob
	proc
		ChibakuTensei2()
			if(usr.DesChibaku==1)
				usr.DesChibaku=0
				usr.CarChibaku=0
				usr<<"Seu Jutsu desativou por ter andado."
				usr.aura=0
				return
			if(usr.aura==0)
				usr.RandomChakra5()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.CarChibaku=1
				usr<< "Você está concentrando o seu chakra"
				sleep(100)
				usr.aura=1
				usr.overlays+='chib.dmi'
				view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: CHIBAKU TENSEI!"
				var/obj/ch1/A = new /obj/ch1/
				var/obj/ch2/B = new /obj/ch2/
				var/obj/ch3/C = new /obj/ch3/
				var/obj/ch4/D = new /obj/ch4/
				var/obj/ch5/E = new /obj/ch5/
				var/obj/ch6/F = new /obj/ch6/
				var/obj/ch7/G = new /obj/ch7/
				var/obj/ch8/H = new /obj/ch8/
				var/obj/ch9/I = new /obj/ch9/
				A.loc = locate(usr.x-1,usr.y+1,usr.z)
				A.CH=1
				B.loc = locate(usr.x,usr.y+1,usr.z)
				B.CH=1
				C.loc = locate(usr.x+1,usr.y+1,usr.z)
				C.CH=1
				D.loc = locate(usr.x-1,usr.y,usr.z)
				D.CH=1
				E.loc = locate(usr.x,usr.y,usr.z)
				E.CH=1
				F.loc = locate(usr.x+1,usr.y,usr.z)
				F.CH=1
				G.loc = locate(usr.x-1,usr.y-1,usr.z)
				G.CH=1
				H.loc = locate(usr.x,usr.y-1,usr.z)
				H.CH=1
				I.loc = locate(usr.x+1,usr.y-1,usr.z)
				I.CH=1
				flick("rise",A)
				flick("rise",B)
				flick("rise",C)
				flick("rise",D)
				flick("rise",E)
				flick("rise",F)
				flick("rise",G)
				flick("rise",H)
				flick("rise",I)
				Execution(/obj/chib/Darkness,30)
				spawn()usr.Cooldown(450,"Chibaku Tensei")
				sleep(50)
				del(A)
				del(B)
				del(C)
				del(D)
				del(E)
				del(F)
				del(G)
				del(H)
				del(I)
				usr.overlays-='chib.dmi'
				usr.CarChibaku=0
				usr.aura=0

obj/chib/Darkness //define the obj
	icon = 'invis.dmi' //give the obj an icon; icon_states can be used as well
	layer = MOB_LAYER+1 //give the obj a layer above that of the mob so that it has an 'overlay' appearence
	New() //Called by the new() proc in the 'parameter'
		spawn(50) del(src) //

mob/proc/Execution(path,radius) //Define the 'parameter' with an arg that will reference a typepath. You may want to give the proc a different name (i.e. Execution to AoE_Param) in your game
	for(var/obj/T in orange(radius,src)) //For every turf within radius tiles of the player, INCLUDING the location of the player...
		new path(T) //...create a new Darkness obj at the turf's location
	for(var/mob/M in orange(radius,src)) //For every mob within radius tiles of the player, INCLUDING the location of the player...
		src.chibakudamage(M,radius)

mob/proc/chibakudamage(mob/M,radius)
	if(M.fantasma)
		return//Define the proc along with an arg referencing to the mob you're attacking and the radius of the attack
	var/damage=usr.nin/4.15 + usr.tai/4.15 + usr.gen/4.15 + usr.shurikenskill/4.15 + usr.terraN*1.5 - M.Resistencia/2 //define the variable that will be used for damage dealing
	M.loc = locate(usr.x,usr.y+3,usr.z)
	M.verbs -= /mob/cliff/verb/TreinarHP
	damage = damage/**(radius + 1 - get_dist(src,M))*/
	if(damage<=0)damage=0 //damage calculator formula that's felxible to ANY rang
	M.health -= damage //Subtract the calculated 'damage' from the mob's Health variable
	if(M.health<=0)
		M.Death(usr)


//==== ZETSU ===================================================================================



mob/Zetsu
	verb
		FurusakiNoJutsu()
			set category = "Jutsus"
			set name = "Furusaki No Jutsu"
			if(usr.ingat)
				return
			if(usr.intank)
				return
			if(usr.Kaiten)
				return
			if(usr.cdfuruz)
				usr<<"<b> Cooldown: Aguarde para usar o Furusaki no Jutsu </b>"
				return
			if(usr.sphere)
				usr<<"Não enquanto usa a Esfera de Areia."
				return
			if(usr.froze)
				usr<<"Você está paralisado"
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
			if(usr.inMei)
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			else
				if(usr.cdfuruz)return
				usr.cdfuruz = 1
				spawn()usr.Cooldown(300,"Furusaki No Jutsu")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				var/list/O = usr.overlays.Copy()
				view()<<"<font color=silver><b><font face=verdana>[usr]: Furusaki No Jutsu!"
				usr.icon = 'invis.dmi'
				usr.cast=1
				usr.inMei = 1
				usr.overlays = usr.overlays.Remove(usr.overlays)
				sleep(100)
				usr.icon = usr.Oicon
				usr.overlays = O.Copy()
				sleep(10)
				usr.inMei = 0
				usr.Castando()



mob/zetsu2/verb
	RoushinNoJutsu()
		set category = "Jutsus"
		set name = "Roushin no Jutsu"
		if(usr.genjcorvo)
			usr<<"Vc esta usando uma tecnica de gejutsu...espere ela terminar"
			return
		if(usr.genjutsuativo)
			usr<<"Vc esta usando uma tecnica de gejutsu...espere ela terminar"
			return
		if(usr.Frozen||usr.froze||usr.captured||!usr.move)
			usr<<"Você está paralisado!"
			return
		if(YT == 1)
			usr.YT = 0
			usr << "Você desativou o Roushin no Jutsu"
			return
		if(YT == 0)
			usr.YT = 1
			usr << "Você ativo o Roushin no Jutsu"
			return


mob/var/tmp/cdck = 0
mob/zetsu2
	verb
		CaradaKuuinNoJutsu()
			set name ="Carada Kuuin no Jutsu"
			set category = "Jutsus"
			if(usr.cdck) // If the mob's cast var is one...
				usr<<"<b> Cooldown : Aguarde para usar o Carada Kuuin no Jutsu </b>"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
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
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
				return
			if(usr.climbing)
				usr<<"Não enquanto sobe montanhas"
				return
			if(usr.hyoushou)
				return
			usr.RandomChakra1()
			if(usr.chakra<=0)
				usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
				usr.health=0
				usr.chakra=0
				usr.Death(usr)
				return
			if(usr.cdck)return
			usr.cdck = 1
			spawn()usr.Cooldown(150,"Carada Kuuin no Jutsu")
			usr<<" Seu Jutsu Começou"
			usr.health -= 190
			for(var/mob/M in oview(3))
				if(M.party&&M.partysensei==usr.partysensei)return
				if(M.tachisuruon)
					usr<<"Ele está intocável!"
					return
				var/damage = usr.gen/4.5 + usr.tai/4.5 + usr.nin/4.5 + usr.shurikenskill/4.5 - M.Resistencia/2
				if(damage<=0)damage=0
				if(M.fantasma)
					usr<<"Vc não pode tocá-lo"
					return
				view()<<"<font color=silver><center><b><font face=verdana>[usr] Diz: <FONT COLOR=#4d71df>Carada Kuuin no Jutsu!</FONT></FONT> "
				view()<<"<center><B><font size=2><font color=blue>[usr] acerta [M] tirando [damage] de dano!"
				flick('Esphere.dmi',M)
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				M.chakra -= damage/4
				F_damage(M, damage, "#800080")
				if(M.health<=0||M.chakra<=0)
					M.health=0
					M.Death(usr)
			sleep(5)
			for(var/mob/M in oview(3))
				if(M.party&&M.partysensei==usr.partysensei)return
				if(M.tachisuruon)
					usr<<"Ele está intocável!"
					return
				var/damage1 = usr.gen/4.5 + usr.tai/4.5 + usr.nin/4.5 + usr.shurikenskill/4.5 - M.Resistencia/2
				var/damage = usr.gen/9 + usr.tai/9 + usr.nin/9 + usr.shurikenskill/9 - M.Resistencia/2
				if(damage<=0)damage=0
				if(damage1<=0)damage1=0
				if(M.fantasma)
					usr<<"Vc não pode tocá-lo"
					return
				flick('Esphere.dmi',M)
				M.health -= damage1
				F_damage(M, damage, "#ff0000")
				M.chakra -= damage
				F_damage(M, damage, "#800080")
				view()<<"<B><center><font size=2><font color=blue>[usr] acerta [M] tirando [damage] de dano!"
				if(M.health<=0||M.chakra<=0)
					M.health=0
					M.Death(usr)
			sleep(5)
			for(var/mob/M in oview(3))
				if(M.party&&M.partysensei==usr.partysensei)return
				if(M.tachisuruon)
					usr<<"Ele está intocável!"
					return
				var/damage = usr.gen/4.5 + usr.tai/4.5 + usr.nin/4.5 + usr.shurikenskill/4.5 - M.Resistencia/2
				var/damage2 = usr.gen/9 + usr.tai/9 + usr.nin/9 + usr.shurikenskill/9 - M.Resistencia/2
				if(damage<=0)damage=0
				if(damage2<=0)damage2=0
				if(M.fantasma)
					usr<<"Vc não pode tocá-lo"
					return
				flick('Esphere.dmi',M)
				M.health -= damage2
				F_damage(M, damage, "#ff0000")
				M.chakra -= damage2/4
				F_damage(M, damage, "#800080")
				view()<<"<B><font size=2><center><font color=blue>[usr] acerta [M] tirando [damage] de dano!"
				if(M.health<=0||M.chakra<=0)
					M.health=0
					M.Death(usr)
			sleep(5)
			for(var/mob/M in oview(3))
				if(M.party&&M.partysensei==usr.partysensei)return
				if(M.tachisuruon)
					usr<<"Ele está intocável!"
					return
				var/damage = usr.gen/4.5 + usr.tai/4.5 + usr.nin/4.5 + usr.shurikenskill/4.5 - M.Resistencia/2
				var/damage2 = usr.gen/9 + usr.tai/9 + usr.nin/9 + usr.shurikenskill/9 - M.Resistencia/2
				if(damage<=0)damage=0
				if(damage2<=0)damage2=0
				if(M.fantasma)
					usr<<"Vc não pode tocá-lo"
					return
				flick('Esphere.dmi',M)
				M.health -= damage2
				F_damage(M, damage, "#ff0000")
				M.chakra -= damage2/4
				F_damage(M, damage, "#800080")
				view()<<"<B><font size=2><center><font color=blue>[usr] acerta [M] tirando [damage] de dano!"
				if(M.health<=0||M.chakra<=0)
					M.health=0
					M.Death(usr)
			sleep(5)
			for(var/mob/M in oview(3))
				if(M.party&&M.partysensei==usr.partysensei)return
				if(M.tachisuruon)
					usr<<"Ele está intocável!"
					return
				var/damage = usr.gen/4.5 + usr.tai/4.5 + usr.nin/4.5 + usr.shurikenskill/4.5 - M.Resistencia/2
				var/damage2 = usr.gen/9 + usr.tai/9 + usr.nin/9 + usr.shurikenskill/9 - M.Resistencia/2
				if(damage<=0)damage=0
				if(damage2<=0)damage2=0
				if(M.fantasma)
					usr<<"Vc não pode tocá-lo"
					return
				flick('Esphere.dmi',M)
				M.health -= damage2
				F_damage(M, damage, "#ff0000")
				M.chakra -= damage2/4
				F_damage(M, damage, "#800080")
				view()<<"<B><font size=2><center><font color=blue>[usr] acerta [M] tirando [damage] de dano!"
				if(M.health<=0||M.chakra<=0)
					M.health=0
					M.Death(usr)
			sleep(5)
			for(var/mob/M in oview(3))
				if(M.party&&M.partysensei==usr.partysensei)return
				if(M.tachisuruon)
					usr<<"Ele está intocável!"
					return
				var/damage = usr.gen/4.5 + usr.tai/4.5 + usr.nin/4.5 + usr.shurikenskill/4.5 - M.Resistencia/2
				var/damage2 = usr.gen/9 + usr.tai/9 + usr.nin/9 + usr.shurikenskill/9 - M.Resistencia/2
				if(damage<=0)damage=0
				if(damage2<=0)damage2=0
				if(M.fantasma)
					usr<<"Vc não pode tocá-lo"
					return
				flick('Esphere.dmi',M)
				M.health -= damage2
				F_damage(M, damage, "#ff0000")
				M.chakra -= damage2/4
				F_damage(M, damage, "#800080")
				view()<<"<B><font size=2><center><font color=blue>[usr] acerta [M] tirando [damage] de dano!"
				if(M.health<=0||M.chakra<=0)
					M.health=0
					M.Death(usr)
			sleep(5)
			for(var/mob/M in oview(3))
				if(M.party&&M.partysensei==usr.partysensei)return
				if(M.tachisuruon)
					usr<<"Ele está intocável!"
					return
				var/damage = usr.gen/4.5 + usr.tai/4.5 + usr.nin/4.5 + usr.shurikenskill/4.5 - M.Resistencia/2
				var/damage2 = usr.gen/9 + usr.tai/9 + usr.nin/9 + usr.shurikenskill/9 - M.Resistencia/2
				if(damage<=0)damage=0
				if(damage2<=0)damage2=0
				if(M.fantasma)
					usr<<"Vc não pode tocá-lo"
					return
				flick('Esphere.dmi',M)
				M.health -= damage2
				F_damage(M, damage, "#ff0000")
				M.chakra -= damage2/4
				F_damage(M, damage, "#800080")
				view()<<"<B><font size=2><center><font color=blue>[usr] acerta [M] tirando [damage] de dano!"
				if(M.health<=0||M.chakra<=0)
					M.health=0
					M.Death(usr)
			usr<<" Seu Jutsu Terminou"


mob/zetsu2
	verb
		ZetsuArmor()
			set category = "Jutsus"
			set name = "Zetsu Armor"
			if(usr.cast)
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
				return
			if(!usr.Iarmor&&!usr.cast)
				usr.Castando()
				usr.RandomChakra01()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				view()<<"<font color = blue>[usr]: Zetsu Armor!"
				usr.Iarmor =1
				usr.gen = usr.gen*1.05
				usr.nin = usr.nin*1.05
				usr.shurikenskill = usr.shurikenskill*1.05
				usr.tai = usr.tai*1.05
				fire
				if(usr.Iarmor)
					usr.chakra -=1000
					if(usr.chakra <= 4)
						usr.Iarmor = 0
						usr.buff=0
						usr.gen = usr.Mgen
						usr.nin = usr.Mnin
						usr.shurikenskill = usr.Mshurikenskill
						usr.tai = usr.Mtai
						usr<<"Você desativa a Zetsu Armor por falta de chakra!"
						return
					else
						sleep(40)
						goto fire
			else if(usr.Iarmor)
				usr.Iarmor =0
				usr.buff=0
				usr.gen = usr.Mgen
				usr.nin = usr.Mnin
				usr.shurikenskill = usr.Mshurikenskill
				usr.tai = usr.Mtai
				usr<<"Você desativa a Zetsu Armor!"

mob/var/tmp/cdkagerou=0
mob/zetsu2
	verb
		Kagerou()
			set category = "Jutsus"
			set name = "Kagerou"
			if(usr.deslogado)
				usr<<"Você precisa logar primeiro para usar este comando."
				return
			if(usr.cdkagerou)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Kagerou</b>!"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			else // If the cast var isn't 1...
				if(usr.cdkagerou)return
				usr.cdkagerou=1
				spawn()usr.Cooldown(100,"Kagerou")
				for(var/mob/M in oview(30))
					if(M.client)
						if(M.GM||M.ADM)return
						if(M.z==usr.z)
							usr<<"{\icon[M][M.name]"
							usr<<"Rank: [M.rank]"
							usr<<"Health: [M.health]"
							usr<<"Chakra: [M.chakra]"
							usr<<"Location: [M.x],[M.y]"

mob/zetsu2
	verb
		KagerouVila()
			set category = "Jutsus"
			set name = "Kagerou Vila"
			if(usr.z==1||usr.z==8&&usr.x>0&&usr.x<377&&usr.y>442&&usr.y<=700)
				usr.client.perspective = EYE_PERSPECTIVE
				client.view=100
				spawn()usr.Cegar()
				usr.client.eye = locate(usr.x,usr.y,usr.z)
			else
				usr<<"Não pode usar aqui dentro!"

mob/zetsu2
	verb
		KagerouPlayer(mob/M in oview(30))
			set category = "Jutsus"
			set name = "Kagerou Player"
			usr.client.perspective = EYE_PERSPECTIVE
			client.view=10
			spawn()usr.Cegar()
			usr.client.eye = locate(M.x,M.y,M.z)

mob/zetsu2
	verb
		KagerouSair()
			set category = "Jutsus"
			set name = "Kagerou Sair"
			client.eye=usr
			client.view=8
			spawn()usr.Cegar()


//==== SASORI ===================================================================================


//jutsu de elementos selados

mob/jutsu
	verb
		SasoArmor()
			set category = "Jutsus"
			set name = "Invocar 3Kazekage"
			if(usr.cast)
				usr<<"Não agora."
				return
			if(usr.froze)
				usr<<"Você está paralisado"
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
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(!usr.Barmor)
				usr.RandomChakra01()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				view()<<"<font color = blue>[usr]: invocou o Terceiro Kazekage!"
				usr.Barmor =1
				usr.nin = usr.nin*1.05
				usr.tai = usr.tai*1.05
				usr.gen = usr.gen*1.05
				usr.shurikenskill = usr.shurikenskill*1.05
				usr.overlays+='3Kazekage.dmi'
				usr.verbs += new /obj/bunshins/Satetsu/verb/Satetsu()
				sand
				if(usr.Barmor)
					usr.chakra -=usr.Mchakra/100
					if(usr.chakra <= usr.Mchakra/100)
						usr.Barmor = 0
						usr.overlays-='3Kazekage.dmi'
						usr.verbs -= new /obj/bunshins/Satetsu/verb/Satetsu()
						usr.nin = usr.Mnin
						usr.tai = usr.Mtai
						usr.gen = usr.Mgen
						usr.shurikenskill = usr.Mshurikenskill
						return
					else
						sleep(20)
						goto sand
			else if(usr.Barmor)
				usr.Barmor =0
				usr.overlays-='3Kazekage.dmi'
				usr.verbs -= new /obj/bunshins/Satetsu/verb/Satetsu()
				usr.nin = usr.Mnin
				usr.tai = usr.Mtai
				usr.gen = usr.Mgen
				usr.shurikenskill = usr.Mshurikenskill
				usr<<"Você desfez o Terceiro Kazekage."


obj
	bunshins
		Satetsu //being worked on dont use
			verb/Satetsu()
				set name = "Satetsu Shiguri"
				set category = "Jutsus"
				if(usr.cast)
					return
				if(usr.caught)
					usr<<"Você foi capturado"
					return
				if(usr.PK==0)
					usr<<"Zona NON-PK!!!"
					return
				if(usr.inso)
					return
				if(usr.froze)
					usr<<"Você está paralisado"
					return
				if(usr.Frozen)
					usr<<"Você está paralisado"
					return
				if(usr.captured)
					usr<<"Você foi capturado"
					return
				if(usr.resting)
					usr<<"Não enquanto descansa"
					return
				if(usr.meditating)
					usr<<"Não enquanto medita"
					return
				if(usr.libering)
					usr<<"Não enquanto libera chakra"
					return
				if(usr.concing)
					usr<<"Não enquanto se concentra"
					return
				if(usr.Kaiten)
					return
				else
					usr.RandomChakra05()
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					usr.cast = 1
					usr.KillBunshin()
					view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Satetsu Shiguri !!"
					var/mob/npcs/Bunshin/A = new /mob/npcs/KBunshin
					var/mob/npcs/Bunshin/B = new /mob/npcs/KBunshin
					var/mob/npcs/Bunshin/C = new /mob/npcs/KBunshin
					var/mob/npcs/Bunshin/D = new /mob/npcs/KBunshin
					var/mob/npcs/Bunshin/E = new /mob/npcs/KBunshin
					var/mob/npcs/Bunshin/F = new /mob/npcs/KBunshin
					var/mob/npcs/Bunshin/G = new /mob/npcs/KBunshin
					var/mob/npcs/Bunshin/H = new /mob/npcs/KBunshin
					var/mob/npcs/Bunshin/I = new /mob/npcs/KBunshin
					var/mob/npcs/Bunshin/J = new /mob/npcs/KBunshin
					var/mob/npcs/Bunshin/K = new /mob/npcs/KBunshin
					var/mob/npcs/Bunshin/L = new /mob/npcs/KBunshin
					var/mob/npcs/Bunshin/M = new /mob/npcs/KBunshin
					var/mob/npcs/Bunshin/N = new /mob/npcs/KBunshin
					var/mob/npcs/Bunshin/O = new /mob/npcs/KBunshin
					var/mob/npcs/Bunshin/P = new /mob/npcs/KBunshin
					var/mob/npcs/Bunshin/Q = new /mob/npcs/KBunshin
					var/mob/npcs/Bunshin/R = new /mob/npcs/KBunshin
					var/mob/npcs/Bunshin/S = new /mob/npcs/KBunshin
					var/mob/npcs/Bunshin/T = new /mob/npcs/KBunshin
					var/mob/npcs/Bunshin/U = new /mob/npcs/KBunshin
					if(A)
						A.name = "Satetsu"
						A.original = usr
						A.icon = 'satetsu.dmi'
						A.loc = locate(usr.x-1, usr.y, usr.z)
						flick("smoke2",A)
						A.max_exp = 2
						A.exp = 2
						A.tai = usr.shurikenskill/4 + usr.tai/4 + usr.gen/4 + usr.nin/4
						A.health = 9999999999999999999999999999999999999999999999999999999999999999999999999999
					if(B)
						B.name = "Satetsu"
						B.original = usr
						B.icon = 'satetsu.dmi'
						B.loc = locate(usr.x-1, usr.y, usr.z)
						flick("smoke2",A)
						B.max_exp = 2
						B.exp = 2
						B.tai = usr.shurikenskill/4 + usr.tai/4 + usr.gen/4 + usr.nin/4
						B.health = 9999999999999999999999999999999999999999999999999999999999999999999999999999

					if(C)
						C.name = "Satetsu"
						C.original = usr
						C.icon = 'satetsu.dmi'
						C.loc = locate(usr.x-1, usr.y, usr.z)
						flick("smoke2",A)
						C.max_exp = 2
						C.exp = 2
						C.tai = usr.shurikenskill/4 + usr.tai/4 + usr.gen/4 + usr.nin/4
						C.health = 9999999999999999999999999999999999999999999999999999999999999999999999999999
					if(D)
						D.name = "Satetsu"
						D.original = usr
						D.icon = 'satetsu.dmi'
						D.loc = locate(usr.x-1, usr.y, usr.z)
						flick("smoke2",A)
						D.max_exp = 2
						D.exp = 2
						D.tai = usr.shurikenskill/4 + usr.tai/4 + usr.gen/4 + usr.nin/4
						D.health = 9999999999999999999999999999999999999999999999999999999999999999999999999999

					if(E)
						E.name = "Satetsu"
						E.original = usr
						E.icon = 'satetsu.dmi'
						E.loc = locate(usr.x-1, usr.y, usr.z)
						flick("smoke2",A)
						E.max_exp = 2
						E.exp = 2
						E.tai = usr.shurikenskill/4 + usr.tai/4 + usr.gen/4 + usr.nin/4
						E.health = 9999999999999999999999999999999999999999999999999999999999999999999999999999

					if(F)
						F.name = "Satetsu"
						F.original = usr
						F.icon = 'satetsu.dmi'
						F.loc = locate(usr.x-1, usr.y, usr.z)
						flick("smoke2",A)
						F.max_exp = 2
						F.exp = 2
						F.tai = usr.shurikenskill/4 + usr.tai/4 + usr.gen/4 + usr.nin/4
						F.health = 9999999999999999999999999999999999999999999999999999999999999999999999999999

					if(G)
						A.name = "Satetsu"
						A.original = usr
						A.icon = 'satetsu.dmi'
						A.loc = locate(usr.x-1, usr.y, usr.z)
						flick("smoke2",A)
						A.max_exp = 2
						A.exp = 2
						A.tai = usr.shurikenskill/4 + usr.tai/4 + usr.gen/4 + usr.nin/4
						A.health = 9999999999999999999999999999999999999999999999999999999999999999999999999999

					if(H)
						H.name = "Satetsu"
						H.original = usr
						H.icon = 'satetsu.dmi'
						H.loc = locate(usr.x-1, usr.y, usr.z)
						flick("smoke2",A)
						H.max_exp = 2
						H.exp = 2
						H.tai = usr.shurikenskill/4 + usr.tai/4 + usr.gen/4 + usr.nin/4
						H.health = 9999999999999999999999999999999999999999999999999999999999999999999999999999

					if(I)
						I.name = "Satetsu"
						I.original = usr
						I.icon = 'satetsu.dmi'
						I.loc = locate(usr.x-1, usr.y, usr.z)
						flick("smoke2",A)
						I.max_exp = 2
						I.exp = 2
						I.tai = usr.shurikenskill/4 + usr.tai/4 + usr.gen/4 + usr.nin/4
						I.health = 9999999999999999999999999999999999999999999999999999999999999999999999999999

					if(J)
						J.name = "Satetsu"
						J.original = usr
						J.icon = 'satetsu.dmi'
						J.loc = locate(usr.x-1, usr.y, usr.z)
						flick("smoke2",A)
						J.max_exp = 2
						J.exp = 2
						J.tai = usr.shurikenskill/4 + usr.tai/4 + usr.gen/4 + usr.nin/4
						J.health = 9999999999999999999999999999999999999999999999999999999999999999999999999999

					if(K)
						K.name = "Satetsu"
						K.original = usr
						K.icon = 'satetsu.dmi'
						K.loc = locate(usr.x-1, usr.y, usr.z)
						flick("smoke2",A)
						K.max_exp = 2
						K.exp = 2
						K.tai = usr.shurikenskill/4 + usr.tai/4 + usr.gen/4 + usr.nin/4
						K.health = 9999999999999999999999999999999999999999999999999999999999999999999999999999

					if(L)
						L.name = "Satetsu"
						L.original = usr
						L.icon = 'satetsu.dmi'
						L.loc = locate(usr.x-1, usr.y, usr.z)
						flick("smoke2",A)
						L.max_exp = 2
						L.exp = 2
						L.tai = usr.shurikenskill/4 + usr.tai/4 + usr.gen/4 + usr.nin/4
						L.health = 9999999999999999999999999999999999999999999999999999999999999999999999999999

					if(M)
						M.name = "Satetsu"
						M.original = usr
						M.icon = 'satetsu.dmi'
						M.loc = locate(usr.x-1, usr.y, usr.z)
						flick("smoke2",A)
						M.max_exp = 2
						M.exp = 2
						M.tai = usr.shurikenskill/4 + usr.tai/4 + usr.gen/4 + usr.nin/4
						M.health = 9999999999999999999999999999999999999999999999999999999999999999999999999999

					if(N)
						N.name = "Satetsu"
						N.original = usr
						N.icon = 'satetsu.dmi'
						N.loc = locate(usr.x-1, usr.y, usr.z)
						flick("smoke2",A)
						N.max_exp = 2
						N.exp = 2
						N.tai = usr.shurikenskill/4 + usr.tai/4 + usr.gen/4 + usr.nin/4
						N.health = 9999999999999999999999999999999999999999999999999999999999999999999999999999

					if(O)
						O.name = "Satetsu"
						O.original = usr
						O.icon = 'satetsu.dmi'
						O.loc = locate(usr.x-1, usr.y, usr.z)
						flick("smoke2",A)
						O.max_exp = 2
						O.exp = 2
						O.tai = usr.shurikenskill/4 + usr.tai/4 + usr.gen/4 + usr.nin/4
						O.health = 9999999999999999999999999999999999999999999999999999999999999999999999999999

					if(P)
						P.name = "Satetsu"
						P.original = usr
						P.icon = 'satetsu.dmi'
						P.loc = locate(usr.x-1, usr.y, usr.z)
						flick("smoke2",A)
						P.max_exp = 2
						P.exp = 2
						P.tai = usr.shurikenskill/4 + usr.tai/4 + usr.gen/4 + usr.nin/4
						P.health = 9999999999999999999999999999999999999999999999999999999999999999999999999999

					if(Q)
						Q.name = "Satetsu"
						Q.original = usr
						Q.icon = 'satetsu.dmi'
						Q.loc = locate(usr.x-1, usr.y, usr.z)
						flick("smoke2",A)
						Q.max_exp = 2
						Q.exp = 2
						Q.tai = usr.shurikenskill/4 + usr.tai/4 + usr.gen/4 + usr.nin/4
						Q.health = 9999999999999999999999999999999999999999999999999999999999999999999999999999

					if(R)
						R.name = "Satetsu"
						R.original = usr
						R.icon = 'satetsu.dmi'
						R.loc = locate(usr.x-1, usr.y, usr.z)
						flick("smoke2",A)
						R.max_exp = 2
						R.exp = 2
						R.tai = usr.shurikenskill/4 + usr.tai/4 + usr.gen/4 + usr.nin/4
						R.health = 9999999999999999999999999999999999999999999999999999999999999999999999999999

					if(S)
						A.name = "Satetsu"
						A.original = usr
						A.icon = 'satetsu.dmi'
						A.loc = locate(usr.x-1, usr.y, usr.z)
						flick("smoke2",A)
						A.max_exp = 2
						A.exp = 2
						A.tai = usr.shurikenskill/4 + usr.tai/4 + usr.gen/4 + usr.nin/4
						A.health = 9999999999999999999999999999999999999999999999999999999999999999999999999999

					if(T)
						T.name = "Satetsu"
						T.original = usr
						T.icon = 'satetsu.dmi'
						T.loc = locate(usr.x-1, usr.y, usr.z)
						flick("smoke2",A)
						T.max_exp = 2
						T.exp = 2
						T.tai = usr.shurikenskill/4 + usr.tai/4 + usr.gen/4 + usr.nin/4
						T.health = 9999999999999999999999999999999999999999999999999999999999999999999999999999

					if(U)
						U.name = "Satetsu"
						U.original = usr
						U.icon = 'satetsu.dmi'
						U.loc = locate(usr.x-1, usr.y, usr.z)
						flick("smoke2",A)
						U.max_exp = 2
						U.exp = 2
						U.tai = usr.shurikenskill/4 + usr.tai/4 + usr.gen/4 + usr.nin/4
						U.health = 9999999999999999999999999999999999999999999999999999999999999999999999999999

					usr.cast=0



obj
	CSasoriHumanForm
		icon = 'sasoriFmarionete.dmi'
		icon_state = "C"
		layer = MOB_LAYER + 20
	BLSasoriHumanForm
		icon = 'sasoriFmarionete.dmi'
		icon_state = "BL"
		pixel_x=-32
		layer = MOB_LAYER + 20
	BRSasoriHumanForm
		icon = 'sasoriFmarionete.dmi'
		icon_state = "BR"
		pixel_x=32
		layer = MOB_LAYER + 20

mob/Sasori
	verb
		SHM() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Forma Marionete Humana"
			if(usr.froze)
				usr<<"Your frozen"
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
			if(usr.Frozen)
				usr<<"Your frozen"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.saso==0) // If the cast var isn't 1...
				usr.overlays+=/obj/CSasoriHumanForm
				usr.overlays+=/obj/BLSasoriHumanForm
				usr.overlays+=/obj/BRSasoriHumanForm
				view()<<"[usr]'esta usando o seu corpo marionete agora!"
				usr.verbs += /mob/Sasori/verb/MarioneteAgua
				usr.verbs += /mob/Sasori/verb/MarioneteFogo
				usr.saso=1
				usr.inSHM=1
				usr.soriU += 1
				usr.nin = usr.nin*1.05
				usr.tai = usr.tai*1.05
				usr.gen = usr.gen*1.05
				usr.shurikenskill = usr.shurikenskill*1.05
			else if(usr.saso)
				usr<<"Você saiu da forma de marionete ."
				usr.verbs -= /mob/Sasori/verb/MarioneteAgua
				usr.verbs -= /mob/Sasori/verb/MarioneteFogo
				usr.overlays-=/obj/CSasoriHumanForm
				usr.overlays-=/obj/BLSasoriHumanForm
				usr.overlays-=/obj/BRSasoriHumanForm
				usr.nin = usr.Mnin
				usr.tai = usr.Mtai
				usr.gen = usr.Mgen
				usr.shurikenskill = usr.Mshurikenskill
				usr.goingmange=0
				usr.saso = 0
				sleep(50)
				usr.inSHM=0
				return

mob/var/inSHM
mob/var/saso=0
mob/var/soriU=0


mob/jutsu
	verb
		Criarven()
			set category = "Jutsus"
			set name = "Criar Veneno"
			if(usr.cdcriarveneno)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Criar Veneno</b>!"
			if(usr.cast)
				return
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
				return
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
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
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			/*if(usr.venN>=15)
				usr<<"Você está carregando veneno demais! (max.15)"
				return*/
			else
				if(usr.cdcriarveneno)return
				usr.cdcriarveneno=1
				spawn()usr.Cooldown(100,"Criar Veneno")
				usr.RandomChakra01()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.venN += 5
				usr<<"Você está criando veneno..."
				sleep(40)
				usr<<"Você criou 5 ampolas de veneno"


mob/jutsu
	verb
		Envenenar()
			set category = "Jutsus"
			set name = "Envenenar"
			if(usr.cast)
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
				return
			else
				for(var/mob/M in oview(2))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(M.poisoned)
						usr<<"[M] já está envenenado."
						return
					if(usr.venN>=1)
						usr.RandomChakra1()
						if(usr.chakra<=0)
							usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
							usr.health=0
							usr.chakra=0
							usr.Death(usr)
							return
						usr.venN-=1
						M.poisoned=1
						M.poison()
						usr<< "Você envenenou [M]"
						M<< "Você foi envenenado por [usr]"
					else
						usr<<"Você não possui veneno suficiente"


mob/Sasori
	verb
		MarioneteShield() // Verb used for cast the beam
			set category = "Marionetes"
			set name = "Proteção Marionete"
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.froze&&!usr.Kaiten)
				usr<<"Você está paralisado"
				return
			if(usr.Frozen&&!usr.Kaiten)
				usr<<"Você está paralisado"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.InSCWS)
				usr<<"Não enquanto você usa seu Escudo de Asas!"
				return
			if(usr.InKASS)
				usr<<"Não enquanto você usa sua Aura Protetora da Kyuubi!"
				return
			if(!usr.Kaiten&&!usr.cast)
				usr.RandomChakra01()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT SIZE=+1><FONT COLOR=#a9a9a9>P</FONT><FONT COLOR=#b4b3b2>r</FONT><FONT COLOR=#bfbebb>o</FONT><FONT COLOR=#cac8c4>t</FONT><FONT COLOR=#d5d2cd>e</FONT><FONT COLOR=#dfdcd6>ç</FONT><FONT COLOR=#eae7df>ã</FONT><FONT COLOR=#f5f1e8>o</FONT><FONT COLOR=#fffaf0> </FONT><FONT COLOR=#f9f4ec>M</FONT><FONT COLOR=#f2eee6>a</FONT><FONT COLOR=#ebe7e1>r</FONT><FONT COLOR=#e4e1db>i</FONT><FONT COLOR=#dcdad6>o</FONT><FONT COLOR=#d5d4d0>n</FONT><FONT COLOR=#cecdcb>e</FONT><FONT COLOR=#c7c7c5>t</FONT><FONT COLOR=#c0c0c0>e</FONT></FONT> "
				usr.cast = 1
				usr.def = 1
				usr.overlays += 'hiruk.dmi'
				usr.Kaiten =1
				usr.DefesaAbsoluta=1
				OMG
				if(usr.Kaiten)
					usr.chakra-=usr.Mchakra/100
					if(usr.chakra <= usr.Mchakra/100)
						usr.cast = 0
						usr.def = 0
						usr.overlays -= 'hiruk.dmi'
						usr.Kaiten = 0
						usr.DefesaAbsoluta=0
					else
						sleep(20)
						goto OMG
			else if(usr.Kaiten)
				usr.cast = 0
				usr.def = 0
				usr.overlays -= 'hiruk.dmi'
				usr.Kaiten =0
				usr<<"Você Tirou A Proteção Marionete."
				usr.DefesaAbsoluta=0


mob/var/cdmf = 0
mob/Sasori
	verb
		MarioneteFogo() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Katon Marionete"
			if(usr.cdmf)
				usr<<"<b> Cooldown : Aguarde para usar este Jutsu Novamente</b>"
				return
			usr.Handseals()
			if(usr.Kaiten == 1) // If the mob's cast var is one...
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(!usr.handseals)
				return
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return

			else // If the cast var isn't 1...
				usr.RandomChakra01()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				if(usr.Katon4N >= 165)
					usr.cdmf = 1 // Sets the cast var to 1, so he cant fire another beam // Disables the mob's movement
					spawn()usr.Cooldown(150,"Katon Marionete")
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#dc143c>K</FONT><FONT COLOR=#d8163b>a</FONT><FONT COLOR=#d3183a>t</FONT><FONT COLOR=#ce1a38>o</FONT><FONT COLOR=#c91c36>n</FONT><FONT COLOR=#c41e34>:</FONT><FONT COLOR=#be2133> </FONT><FONT COLOR=#b92331>M</FONT><FONT COLOR=#b4252f>a</FONT><FONT COLOR=#af272d>r</FONT><FONT COLOR=#aa292c>i</FONT><FONT COLOR=#a52a2a>o</FONT><FONT COLOR=#a62a2a></FONT><FONT COLOR=#a82929>n</FONT><FONT COLOR=#a92929>e</FONT><FONT COLOR=#aa2828>t</FONT><FONT COLOR=#ab2727>e</FONT><FONT COLOR=#ad2626> </FONT><FONT COLOR=#ae2525></FONT><FONT COLOR=#af2424></FONT><FONT COLOR=#b02424></FONT><FONT COLOR=#b22323></FONT><FONT COLOR=#b22222>!</FONT>"
					usr.Katon4N += 1
					var/obj/MarioneteFogo/K = new /obj/MarioneteFogo
					K.loc = usr.loc
					K.nin=usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.fogoN*1.5
					K.Move_Delay=0
					usr.Chakragain()
					K.dir = usr.dir
					K.name="[usr]"
					K.Gowner=usr
					walk(K,usr.dir)
					if (target == null)
						del(K)
					sleep(45)
					del(K)
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam // Disables the mob's movement
						usr.Katon4N += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#dc143c>K</FONT><FONT COLOR=#d8163b>a</FONT><FONT COLOR=#d3183a>t</FONT><FONT COLOR=#ce1a38>o</FONT><FONT COLOR=#c91c36>n</FONT><FONT COLOR=#c41e34>:</FONT><FONT COLOR=#be2133> </FONT><FONT COLOR=#b92331>M</FONT><FONT COLOR=#b4252f>a</FONT><FONT COLOR=#af272d>r</FONT><FONT COLOR=#aa292c>i</FONT><FONT COLOR=#a52a2a>o</FONT><FONT COLOR=#a62a2a></FONT><FONT COLOR=#a82929>n</FONT><FONT COLOR=#a92929>e</FONT><FONT COLOR=#aa2828>t</FONT><FONT COLOR=#ab2727>e</FONT><FONT COLOR=#ad2626> </FONT><FONT COLOR=#ae2525></FONT><FONT COLOR=#af2424></FONT><FONT COLOR=#b02424></FONT><FONT COLOR=#b22323></FONT><FONT COLOR=#b22222>!</FONT>"
						var/obj/MarioneteFogo/K = new /obj/MarioneteFogo
						K.loc = usr.loc
						K.nin=usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.fogoN*1.5
						usr.Chakragain()
						K.dir = usr.dir
						K.name="[usr]"
						K.Move_Delay=0
						K.Gowner=usr
						walk(K,usr.dir)
						if (target == null)
							del(K)
						sleep(10)
						usr.cast = 0
						usr.Move_Delay = usr.Savedspeed
						sleep(45)
						del(K)
					else
						usr<<"Você falhou ao usar Katon Marionete."

mob/var/cdma = 0
mob/Sasori
	verb
		MarioneteAgua() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Suiton Marionete"
			if(usr.cdma)
				usr<<"<b>Cooldown : Aguarde para usar o Suiton Marionete </b>"
				return
			usr.Handseals()
			if(usr.Kaiten == 1) // If the mob's cast var is one...
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(!usr.handseals)
				return
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return

			else // If the cast var isn't 1...
				usr.RandomChakra01()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				if(usr.Katon4N >= 165)
					usr.cdma = 1 // Sets the cast var to 1, so he cant fire another beam // Disables the mob's movement
					spawn()usr.Cooldown(150,"Suiton Marionete")
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT SIZE=+1><FONT COLOR=#0000ff>S</FONT><FONT COLOR=#001bff>u</FONT><FONT COLOR=#0037ff>i</FONT><FONT COLOR=#0052ff>t</FONT><FONT COLOR=#006eff>o</FONT><FONT COLOR=#0089ff>n</FONT><FONT COLOR=#00a5ff> </FONT><FONT COLOR=#00bfff>M</FONT><FONT COLOR=#08b5fc>a</FONT><FONT COLOR=#11aaf8>r</FONT><FONT COLOR=#199ff4>i</FONT><FONT COLOR=#2195f1>o</FONT><FONT COLOR=#298aed>n</FONT><FONT COLOR=#327fe9>e</FONT><FONT COLOR=#3a74e5>t</FONT><FONT COLOR=#4169e1>e</FONT></FONT>"
					usr.Katon4N += 1
					var/obj/MarioneteFogo/K = new /obj/MarioneteAgua
					K.loc = usr.loc
					K.nin=usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.aguaN*1.5
					K.Move_Delay=0
					usr.Chakragain()
					K.dir = usr.dir
					K.name="[usr]"
					K.Gowner=usr
					walk(K,usr.dir)
					if (target == null)
						del(K)
					sleep(45)
					del(K)
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.cdma = 1 // Sets the cast var to 1, so he cant fire another beam // Disables the mob's movement
						spawn()usr.Cooldown(150,"Suiton Marionete")
						usr.Katon4N += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT SIZE=+1><FONT COLOR=#0000ff>S</FONT><FONT COLOR=#001bff>u</FONT><FONT COLOR=#0037ff>i</FONT><FONT COLOR=#0052ff>t</FONT><FONT COLOR=#006eff>o</FONT><FONT COLOR=#0089ff>n</FONT><FONT COLOR=#00a5ff> </FONT><FONT COLOR=#00bfff>M</FONT><FONT COLOR=#08b5fc>a</FONT><FONT COLOR=#11aaf8>r</FONT><FONT COLOR=#199ff4>i</FONT><FONT COLOR=#2195f1>o</FONT><FONT COLOR=#298aed>n</FONT><FONT COLOR=#327fe9>e</FONT><FONT COLOR=#3a74e5>t</FONT><FONT COLOR=#4169e1>e</FONT></FONT>"
						var/obj/MarioneteFogo/K = new /obj/MarioneteAgua
						K.loc = usr.loc
						K.nin=usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.aguaN*1.5
						usr.Chakragain()
						K.dir = usr.dir
						K.name="[usr]"
						K.Move_Delay=0
						K.Gowner=usr
						walk(K,usr.dir)
						if (target == null)
							del(K)
						usr.Move_Delay = usr.Savedspeed
						sleep(45)
						del(K)
					else
						usr<<"Você Falhou ao usar Suiton Marionete."


//==== KONAN ====================================================================================

mob/var/cdkami = 0
mob/Konan
	verb
		KamiNoMakushi()
			set category = "Jutsus"
			set name = "Kami no Makushi"
			if(usr.chakra <= 50)
				usr<<"Você não possui chakra suficiente!"
				return
			if(usr.cdkami)
				usr<<"<b>Cooldown: Aguarde para usar o Kam no Makushi"
				usr<<"Não agora."
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
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
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
			if(!usr.Makushi&&!usr.cast)
				view()<<"<font color = white>[usr]: Kami no Makushi!"
				usr.overlays+=/obj/shikagami
				usr.Makushi =1
				usr.nin = usr.nin*1.05
				usr.gen = usr.gen*1.05
				usr.tai = usr.tai*1.05
				usr.shurikenskill = usr.shurikenskill*1.05
				fire
				if(usr.Makushi)
					usr.chakra -=50
					if(usr.chakra <= 4)
						usr.overlays-=/obj/shikagami
						usr.Makushi = 0
						usr.buff=0
						usr.nin = usr.Mnin
						usr.gen = usr.Mgen
						usr.tai = usr.Mtai
						usr.shurikenskill = usr.Mshurikenskill
						usr<<"Você desativa o Kami no Makushi por falta de chakra!"
						return
					else
						sleep(4)
						goto fire
			else if(usr.Makushi)
				usr.overlays-=/obj/shikagami
				usr.Makushi =0
				usr.buff=0
				usr.nin = usr.Mnin
				usr.gen = usr.Mgen
				usr.tai = usr.Mtai
				usr.shurikenskill = usr.Mshurikenskill
				usr<<"Você desativa o Kami no Makushi"

mob/Konan
	verb
		KamiNoTsubasa()
			set category = "Jutsus"
			set name = "Kami no Tsubasa"
			if(usr.PK==0)
				usr<<"Área NON-PK!!!"
				return
			if(usr.froze)
				usr<<"Você está paralisado"
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
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.Flight == 1)
				usr.density = 1
				usr.overlays-=/obj/TR
				usr.overlays-=/obj/TL
				usr.overlays-=/obj/TM
				usr.overlays-=/obj/BR
				usr.overlays-=/obj/BL
				usr.overlays-=/obj/BM
				usr.overlays-=/obj/L
				usr.overlays-=/obj/R
				usr.overlays-=/obj/M
				usr.overlays-=/obj/MN
				usr.Flight = 0
			else
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.overlays+=/obj/TR
				usr.overlays+=/obj/TL
				usr.overlays+=/obj/TM
				usr.overlays+=/obj/BR
				usr.overlays+=/obj/BL
				usr.overlays+=/obj/BM
				usr.overlays+=/obj/L
				usr.overlays+=/obj/R
				usr.overlays+=/obj/M
				usr.overlays+=/obj/MN
				usr.density = 0
				usr.Flight = 1
				KFL
				if(usr.Flight)
					usr.chakra-=usr.Mchakra/100
					if(usr.chakra <= usr.Mchakra/100)
						usr.density = 1
						usr.overlays-=/obj/TR
						usr.overlays-=/obj/TL
						usr.overlays-=/obj/TM
						usr.overlays-=/obj/BR
						usr.overlays-=/obj/BL
						usr.overlays-=/obj/BM
						usr.overlays-=/obj/L
						usr.overlays-=/obj/R
						usr.overlays-=/obj/M
						usr.overlays-=/obj/MN
						usr.Flight = 0
					else
						sleep(20)
						goto KFL

mob/Konan
	verb
		ShikigamiNoMai()
			set category = "Jutsus"
			set name = "Shikigami no Mai"
			usr.client.perspective = EYE_PERSPECTIVE
			client.view=100
			spawn()usr.Cegar()
			usr.client.eye = locate(usr.x,usr.y,usr.z)
			usr.overlays+=/obj/shikagami

mob/Konan
	verb
		ShikigamiNoMaiNori(obj/M as obj|mob in oview(100))
			set category = "Jutsus"
			set name = "Shikigami no Mai Nori"
			if(M == usr)
				usr.client:perspective = MOB_PERSPECTIVE
			else
				usr.client:perspective = EYE_PERSPECTIVE
				usr.client:eye = M
				M.overlays+=/obj/shikagami
				usr.inshikigami=1
				sleep(200)
				usr.inshikigami=0
				M.overlays-=/obj/shikagami

mob/Konan
	verb
		KagerouSair()
			set category = "Jutsus"
			set name = "Shikigami no Mai - Sair"
			client.eye=usr
			//client.view=10
			spawn()usr.Cegar()
			usr.overlays-=/obj/shikagami

mob/Konan
	verb
		KamiNoChissokushi()
			set category = "Jutsus"
			set name = "Kami no Chissokushi"
			if(usr.cdchissokushi)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Kami no Chissokushi</b>!"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.cast)
				return
			if(usr.sphere)
				return
			if(usr.Kaiten)
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
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
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
			if(usr.inshikigami==0)
				usr<<"Você deve utilizar primeiro o Shikigami No Mai  no alvo."
				return
			else
				for(var/mob/M in oview(4))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(M.PK==0)
						usr<<"Zona NON-PK!!!"
						return
					if(M.Kaiten)
						return
					if(M.captured)
						usr<<"Ele já está capturado!"
						return
					if(M.Frozen)
						usr << "Ele já esta freezado.."
						return
					if(usr.cdchissokushi)return
					usr.cdchissokushi=1
					spawn() usr.Cooldown(150,"Kami no Chissokushi")
					usr.RandomChakra1()
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					usr.KyuuN += 1
					M.overlays-=/obj/shikagami
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Kami no Chissokushi!"
					M.overlays+='PaperCoffin.dmi'
					M.captured=1
					usr.Chakragain()
					M.froze=1
					M.move=0
					sleep(20)
					var/damage = usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 - M.Resistencia/2
					if(damage<=0)damage=0
					M.health-=damage
					usr<<"A prisão de origamis o sufoca..."
					M<<"A prisão de origamis o sufoca..."
					M.Death(usr)
					sleep(20)
					M.health-=damage
					usr<<"A prisão de origamis o sufoca..."
					M<<"A prisão de origamis o sufoca..."
					M.Death(usr)
					sleep(20)
					M.health-=damage
					usr<<"A prisão de origamis o sufoca..."
					M<<"A prisão de origamis o sufoca..."
					M.Death(usr)
					sleep(20)
					M.health-=damage
					usr<<"A prisão de origamis o sufoca..."
					M<<"A prisão de origamis o sufoca..."
					M.Death(usr)
					spawn()
						if(M)
							M.captured=0
							M.froze=0
							M.move=1
							M.overlays-='PaperCoffin.dmi'
					return

mob/Konan
	verb
		KamiBunshin()
			set name = "Kami Bunshin"
			set category = "Jutsus"
			usr.Handseals()
			if(usr.cast)
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
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
			if(usr.inso)
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
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
				return
			else
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				if(usr.KbunshinN >= 50)
					usr.cast = 1
					usr.KillBunshin()
					view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Kami Bunshin! </FONT>"
					var/mob/enemy/KamiB/K = new /mob/enemy/KamiB
					usr.KbunshinN += 1
					usr.bunshin += 4
					if(K)
						K.name = "[usr.name]"
						if(usr.party)
							K.party=1
							K.partysensei="[usr.partysensei]"
						K.guardp = 1
						K.Village= "[usr.Village]"
						K.original = usr
						K.icon = usr.icon
						K.overlays += usr.overlays
						K.loc = locate(usr.x, usr.y-1, usr.z)
						flick("kamib",K)
						K.max_exp = 2
						K.exp = 2
						K.tai = usr.nin/4 + usr.gen/4 + usr.tai/4 + usr.shurikenskill/4
						K.health = usr.maxhealth/2
					sleep(14)
					usr.cast=0
					sleep(600)
					del(K)
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Kami Bunshin! </FONT>"
						usr.cast = 1
						usr.KillBunshin()
						var/mob/enemy/KamiB/K = new /mob/enemy/KamiB
						usr.KbunshinN += 1
						usr.bunshin += 2
						sleep(5)
						if(K)
							K.name = "[usr.name]"
							if(usr.party)
								K.party=1
								K.partysensei="[usr.partysensei]"
							K.guardp = 1
							K.Village= "[usr.Village]"
							K.original = usr
							K.icon = usr.icon
							K.overlays += usr.overlays
							K.loc = locate(usr.x, usr.y-1, usr.z)
							flick("kamib",K)
							K.max_exp = 2
							K.exp = 2
							K.tai = usr.nin/6.5 + usr.gen/6.5 + usr.tai/6.5 + usr.shurikenskill/6.5
							K.health = usr.maxhealth/2
						sleep(14)
						usr.cast=0
						sleep(600)
						del(K)

mob/Konan
	verb
		KamiMoku() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Kami Moku"
			var/list/O = usr.overlays.Copy()
			if(usr.froze&&!usr.Kaiten)
				usr<<"Você está paralisado"
				return
			if(usr.Frozen&&!usr.Kaiten)
				usr<<"Você está paralisado"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(!usr.Kaiten&&!usr.cast)
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.icon = 'invis.dmi'
				usr.overlays = usr.overlays.Remove(usr.overlays)
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Kami Moku!"
				usr.froze = 1
				usr.move = 0
				usr.def = 1
				usr.overlays+=/obj/papertree1
				usr.overlays+=/obj/papertree2
				usr.overlays+=/obj/papertree3
				usr.overlays+=/obj/papertree4
				usr.overlays+=/obj/papertree5
				usr.overlays+=/obj/papertree6
				usr.Kaiten =1
				usr<<"Você cria uma árvore à partir de seus origamis e se esconde nela."
				OMG
				if(usr.Kaiten)
					usr.chakra-=usr.Mchakra/100
					if(usr.chakra <= usr.Mchakra/100)
						usr.def = 0
						usr.overlays = O.Copy()
						usr.icon = usr.Oicon
						usr.overlays-=/obj/papertree1
						usr.overlays-=/obj/papertree2
						usr.overlays-=/obj/papertree3
						usr.overlays-=/obj/papertree4
						usr.overlays-=/obj/papertree5
						usr.overlays-=/obj/papertree6
						usr.Kaiten = 0
					else
						sleep(20)
						goto OMG
			else if(usr.Kaiten)
				usr.froze = 0
				usr.move = 1
				usr.def = 0
				usr.overlays = O.Copy()
				usr.icon = usr.Oicon
				usr.overlays-=/obj/papertree1
				usr.overlays-=/obj/papertree2
				usr.overlays-=/obj/papertree3
				usr.overlays-=/obj/papertree4
				usr.overlays-=/obj/papertree5
				usr.overlays-=/obj/papertree6
				usr.Kaiten =0
				usr<<"Você saiu do seu Kami Moku."



//==== UCHIHA-AKAT ==============================================================================

mob/jutsu
	verb
		Madaradimension(mob/M in oview (1)) // Verb used for cast the beam
			set category = "Doujutsu"
			set name = "Ryooko Tenko Kaiyu"
			if(usr.cast||usr.Kaiten) // If the mob's cast var is one...
				return
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
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
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(M.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(M.inizanami)
				M<<"Ele precisa sair da dimensão primeiro!"
				return
			if(emguerra==1&&M.Village<>usr.Village)
				usr<<"Vc nao pode fazer isso em guerras com players que não são de sua vila"
				return
			if(M.dimension==1)
				switch(input("Quer teleportá-lo para onde?") in list ("Konoha","Suna","Ame","Kusa","Yuki","Kiri","Oto","Taki","Kumo","Iwa"))
					if("Konoha")
						M.loc=locate(369,245,1)
						usr<<"Vc tirou [M] da outra dimensão"
						M<<"[usr] vc foi salvo"
						M.dimension=0
						M.Move_Delay = 0.7
					if("Suna")
						M.loc=locate(111,132,1)
						usr<<"Vc tirou [M] da outra dimensão"
						M<<"[M] vc foi salvo"
						M.dimension=0
						M.Move_Delay = 0.7
					if("Taki")
						M.loc=locate(482,134,1)
						usr<<"Vc tirou [M] da outra dimensão"
						M<<"[usr] vc foi salvo"
						M.dimension=0
						M.Move_Delay = 0.7
					if("Kiri")
						M.loc=locate(594,49,1)
						usr<<"Vc tirou [M] da outra dimensão"
						M<<"[usr] vc foi salvo"
						M.dimension=0
						M.Move_Delay = 0.7
					if("Oto")
						M.loc=locate(199,375,1)
						usr<<"Vc tirou [M] da outra dimensão"
						M<<"[usr] vc foi salvo"
						M.dimension=0
						M.Move_Delay = 0.7
					if("Kusa")
						M.loc=locate(363,512,1)
						usr<<"Vc tirou [M] da outra dimensão"
						M<<"[usr] vc foi salvo"
						M.dimension=0
						M.Move_Delay = 0.7
					if("Kumo")
						M.loc=locate(631,390,1)
						usr<<"Vc tirou [M] da outra dimensão"
						M<<"[usr] vc foi salvo"
						M.dimension=0
						M.Move_Delay = 0.7
					if("Ame")
						M.loc=locate(541,558,1)
						usr<<"Vc tirou [M] da outra dimensão"
						M<<"[usr] vc foi salvo"
						M.dimension=0
						M.Move_Delay = 0.7
					/*if("Hoshi")
						M.loc=locate(21,47,29)
						usr<<"Vc tirou [M] da outra dimensão"
						M<<"[usr] vc foi salvo"
						M.dimension=0
						M.Move_Delay = 1.0*/
					if("Yuki")
						M.loc=locate(342,79,1)
						usr<<"Vc tirou [M] da outra dimensão"
						M<<"[usr] vc foi salvo"
						M.dimension=0
						M.Move_Delay = 0.7
					if("Iwa")
						M.loc=locate(107,592,1)
						usr<<"Vc tirou [M] da outra dimensão"
						M<<"[usr] vc foi salvo"
						M.dimension=0
						M.Move_Delay = 0.7
			else
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr<<"Vc mandou [M] para outra dimensão"
				M<<"[usr] vc foi enviado para outra dimensão"
				M.acido=0
				M.dimension=1
				M.Move_Delay = 10
				M.loc = locate(66,323,7)
				M.froze=1
				sleep(50)
				M.froze=0

mob/var/tmp/dimension=0

mob/jutsu
	verb
		Madarateleporte()
			set popup_menu = 0
			set category = "Doujutsu"
			set name = "Sharingan Teleporte"
			if(usr.inizanami)
				usr<<"Você precisa sair da dimensão primeiro!"
				return
			if(usr.inlua&&!luaproxima)
				usr<<"A ua está distante da Terra!"
				return
			if(usr.climbing)
				usr<<"Não enquanto upa HP!"
				return
			switch(input("Quer se teleportar pra onde?") in list ("Konoha","Suna","Ame","Kusa","Yuki","Kiri","Oto","Taki","Kumo","Iwa","Dimensão"))
				if("Konoha")
					usr.loc=locate(369,245,1)
					usr.verbs -= /mob/cliff/verb/TreinarHP
				if("Suna")
					usr.loc=locate(111,132,1)
					usr.verbs -= /mob/cliff/verb/TreinarHP
				if("Taki")
					usr.loc=locate(482,134,1)
					usr.verbs -= /mob/cliff/verb/TreinarHP
				if("Kiri")
					usr.loc=locate(594,49,1)
					usr.verbs -= /mob/cliff/verb/TreinarHP
				if("Oto")
					usr.loc=locate(199,375,1)
					usr.verbs -= /mob/cliff/verb/TreinarHP
				if("Kusa")
					usr.loc=locate(363,512,1)
					usr.verbs -= /mob/cliff/verb/TreinarHP
				if("Kumo")
					usr.loc=locate(631,390,1)
					usr.verbs -= /mob/cliff/verb/TreinarHP
				if("Ame")
					usr.loc=locate(541,558,1)
					usr.verbs -= /mob/cliff/verb/TreinarHP
				if("Yuki")
					usr.loc=locate(342,79,1)
					usr.verbs -= /mob/cliff/verb/TreinarHP
				if("Iwa")
					usr.loc=locate(107,592,1)
					usr.verbs -= /mob/cliff/verb/TreinarHP
				if("Dimensão")
					usr.loc=locate(66,323,7)
					usr.verbs -= /mob/cliff/verb/TreinarHP


mob/jutsu/verb
	Madaratele()
		set category = "Doujutsu"
		set name = "Ryokoo Basho Tenki"
		if(usr.genjcorvo)
			usr<<"Vc esta usando uma tecnica de gejutsu...espere ela terminar"
			return
		if(usr.genjutsuativo)
			usr<<"Vc esta usando uma tecnica de gejutsu...espere ela terminar"
			return
		if(YT == 1)
			usr.YT = 0
			usr << "Você desativou o Ryokoo Basho Tenki"
		else
			usr.YT = 1
			usr << "Você ativou o Ryokoo Basho Tenki"



mob/jutsu
	verb
		KamuiG()
			set category = "Doujutsu"
			set name = "Fuumetsu Kamui"
			if(usr.cdfmk)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Fuumetsu Kamui</b>!"
				return
			if(usr.cast) // If the mob's cast var is one...
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
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
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			else
				if(usr.cdfmk)return
				usr.cdfmk=1
				spawn()usr.Cooldown(1500,"Fuumetsu Kamui")
				usr<<"Acumulando Chakra"
				sleep(50)
				usr.RandomChakra5()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				view()<<"[usr]<font color=green> Diz: Fuumetsu Kamui!"
				usr.Frozen=0
				for(var/mob/M in orange(5))
					if(!M.client)return
					if(M.NPC||M.bijuunpc||M.clonenpc)
						usr<<"Não pode ser usado nele!"
						return
					var/damage= usr.nin/4.25 + usr.gen/4.25 + usr.tai/4.25 + usr.shurikenskill/4.25 - M.Resistencia/2
					if(damage<=0)damage=0
					M.overlays+='Kamui1.dmi'
					view()<<"[M] tomou [damage] de dano do Kamui de [usr]."
					if(M.fantasma)
						usr<<"<font size=1>Vc não consegue tocá-lo!"
						return
					if(ismob(M))
						usr.random = rand(1,5)
						if(random==1)
							M.loc = locate(54,278,7)
						if(random==2)
							M.loc = locate(66,292,7)
						if(random==3)
							M.loc = locate(45,331,7)
						if(random==4)
							M.loc = locate(34,352,7)
						if(random==5)
							M.loc = locate(97,367,7)
					M.health-=damage
					F_damage(M, damage, "#ff0000")
					M.overlays-='Kamui1.dmi'
					if(M.health<=0)
						M.Death(usr)
				spawn()usr.Castando()

mob/var/antiMS=0
mob/jutsu
	verb
		AntiMS()
			set category = "Doujutsu"
			set name = "Fuumetsu Protect"
			if(usr.cdfprotect)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Fuumetsu Protect</b>!"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
				return
			else
				if(usr.cdfprotect)return
				usr.cdfprotect=1
				spawn()usr.Cooldown(350,"Fuumetsu Protect")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.antiMS=1
				usr<<"Sua percepção contra jutsus oculares se aguça"
				sleep(200)
				usr.antiMS=0
				usr<<"Seu Fuumetsu Protect terminou"


mob/jutsu
	verb
		Tempo(mob/M in oview (5))
			set category = "Doujutsu"
			set name = "Sharingan Mode"
			if(usr.cdsharinganm)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Sharingan Mode</b>!"
				return
			if(usr.cast) // If the mob's cast var is one...
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
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
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			else
				usr.cdsharinganm=1
				spawn()usr.Cooldown(600,"Sharingan Mode")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				view()<<"[usr]<font color=red> Diz: Sharingan Mode!"
				//icon aqui
				M.Move_Delay = 10
				view()<<"[M] caiu no vórtice temporal de [usr]."
				if(M.fantasma)
					usr<<"<font size=1>Vc não consegue tocá-lo!"
					return
				usr.nin = usr.nin*1.05
				usr.gen = usr.gen*1.05
				usr.tai = usr.tai*1.05
				usr.shurikenskill = usr.shurikenskill*1.05
				usr.Move_Delay = 0
				sleep(100)
				M.Move_Delay = 0.7
				usr.Move_Delay = 0.7
				usr.nin = usr.Mnin
				usr.gen = usr.Mgen
				usr.tai = usr.Mtai
				usr.shurikenskill = usr.Mshurikenskill

//==== HIDAN ===================================================================================


mob/hidan
	verb
		BloodSeal() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Jujutsu Shijihyouketsu"
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
				return
			if(usr.cast)
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.jashin==1)
				usr.verbs -= new /mob/hidan/verb/Matar()
				usr.froze =0
				usr.def = 0
				usr.move=1
				usr.overlays -= 'Bloods.dmi'
				usr.tai = usr.Mtai
				usr.nin = usr.Mnin
				usr.gen = usr.Mgen
				usr.shurikenskill = usr.Mshurikenskill
				usr.jashin = 0
				usr<<"Você sai do Ritual Jashin."
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(!usr.Blood)
				usr<<"Vc precisa tirar o sangue de alguem primeiro"
				return
			usr.RandomChakra05()
			if(usr.chakra<=0)
				usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
				usr.health=0
				usr.chakra=0
				usr.Death(usr)
				return
			view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Jujutsu Shijihyouketsu! "
			usr.verbs += new /mob/hidan/verb/Matar()
			usr.froze =1
			usr.move=0
			usr.def = 1
			usr.overlays += 'Bloods.dmi'
			usr.tai = usr.tai*1.05
			usr.nin = usr.nin*1.05
			usr.gen = usr.gen*1.05
			usr.shurikenskill = usr.shurikenskill*1.05
			usr.jashin = 1



mob/hidan
	verb
		Limpar()
			set category = "Jutsus"
			set name = "Limpar Lamina"
			if(usr.cast)
				return
			if(usr.froze)
				usr<<"Você está paralisado"
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
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.chakra <= 1)
				usr<<"Você não tem chakra o bastante!"
			else
				usr.chakra -= 1
				usr.Blood = 0
				usr<<"Você limpou a lâmina do sangue inimigo"


mob/var/haveBlood= 0
mob/var/Blood= 0

mob/var/tmp/Bloodperson
mob/hidan
	verb
		TirarSangue()
			set category = "Jutsus"
			set name = "Tirar Sangue"
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
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
			if(usr.cast)
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			else
				for(var/mob/M in oview(2))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(M)
						if(M.haveBlood)
							usr<<"Você coletou sangue inimigo"
							return
					if(M.bijuunpc||M.clonenpc||M.NPC)
						usr<<"Você não pode usar isso nele!"
						return
					if(M.PK==0)
						usr<<"Zona NON-PK!!!"
						return
					if(M.Kaiten||M.sphere||M.counter)
						usr<<"Ele não pode ser tocado!"
						return
					usr.RandomChakra01()
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					usr<<"Você esta drenando a vida de [M]!"
					usr.Blood = 1
					M.haveBlood = 1
					M.Bloodperson="[usr]"

mob/var/tmp/Blooddelay=0
mob/var/cdmatar = 0
mob/hidan
	verb
		Matar()
			set category = "Jutsus"
			set name = "Masoquismo"
			if(usr.cdmatar)
				usr<<"<b>Cooldown : Aguarde para usar isso novamente </b>"
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
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(!usr.jashin)
				usr<<"Vc precisa fazer o ritual antes"
				return
			for(var/mob/M in world)
				if(M.haveBlood&&M.Bloodperson=="[usr]")
					usr.random=rand(1,8)
					if(usr.random==1||usr.random==6||usr.random==7)
						usr.Blooddelay=1
						var/damage = usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 - M.Resistencia/2
						if(damage<=0)damage=0
						M<<"[usr] acertou a perna dando um dano de [damage] e deixando seus movimentos lentos!"
						usr<<"Você acertou a perna causando em [M] um dano de [damage] deixando-o lento!"
						M.Move_Delay=1.4
						M.haveBlood=0
						M.Bloodperson=null
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						M.Death(usr)
						usr.verbs -= new /mob/hidan/verb/Matar()
						usr.froze =0
						usr.move=1
						usr.def = 0
						usr.overlays -= 'Bloods.dmi'
						usr.tai = usr.Mtai
						usr.nin = usr.Mnin
						usr.gen = usr.Mgen
						usr.shurikenskill = usr.Mshurikenskill
						usr.jashin = 0
						usr.Blood=0
						sleep(50)
						M.Move_Delay=0.7
					else if(usr.random==2||usr.random==5)
						usr.Blooddelay=1
						var/damage = usr.nin/4.25 + usr.tai/4.25 + usr.gen/4.25 + usr.shurikenskill/4.25 - M.Resistencia/2
						if(damage<=0)damage=0
						M<<"[usr] acertou o olho dando um dano de [damage] e lhe deixando cego!"
						usr<<"Você acertou o olho causando [M] um dano de [damage] além de deixá-o cego!"
						M.screwed=1
						M.haveBlood=0
						M.Bloodperson=null
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						M.Death(usr)
						usr.verbs -= new /mob/hidan/verb/Matar()
						usr.froze =0
						usr.move=1
						usr.def = 0
						usr.overlays -= 'Bloods.dmi'
						usr.tai = usr.Mtai
						usr.nin = usr.Mnin
						usr.gen = usr.Mgen
						usr.shurikenskill = usr.Mshurikenskill
						usr.jashin = 0
						usr.Blood=0
						sleep(50)
						M.screwed=0
					else if(usr.random==3||usr.random==8)
						usr.Blooddelay=1
						var/damage = usr.nin/4 + usr.tai/4 + usr.gen/4 + usr.shurikenskill/4 - M.Resistencia/2
						if(damage<=0)damage=0
						M<<"[usr] acertou o torso dando um dano de [damage]"
						usr<<"Você acertou o torso causand em [M] um dano de [damage]!"
						M.haveBlood=0
						M.Bloodperson=null
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						M.Death(usr)
						usr.verbs -= new /mob/hidan/verb/Matar()
						usr.froze =0
						usr.move=1
						usr.def = 0
						usr.overlays -= 'Bloods.dmi'
						usr.tai = usr.Mtai
						usr.nin = usr.Mnin
						usr.gen = usr.Mgen
						usr.shurikenskill = usr.Mshurikenskill
						usr.jashin = 0
						usr.Blood=0
					else if(usr.random==4)
						usr.Blooddelay=1
						M<<"[usr] acertou o coração!"
						usr<<"Você acertou o coração matando [M] instantaneamente!"
						M.haveBlood=0
						M.Bloodperson=null
						M.health=0
						M.chakra=0
						M.Death(usr)
						usr.verbs -= new /mob/hidan/verb/Matar()
						usr.froze =0
						usr.move=1
						usr.def = 0
						usr.overlays -= 'Bloods.dmi'
						usr.tai = usr.Mtai
						usr.nin = usr.Mnin
						usr.gen = usr.Mgen
						usr.shurikenskill = usr.Mshurikenskill
						usr.jashin = 0
						usr.Blood=0
			sleep(50)
			usr.Blooddelay=0


//==== KAKUZU ==================================================================================
mob/jutsu
	verb
		JionguMojiRetsu()
			set category = "Jutsus"
			set name = "Jiongu Moji Retsu"
			if(usr.cast||usr.Kaiten) // If the mob's cast var is one...
				return
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.cdretsu)
				usr << "<b>Cooldown </b> Aguarde para usar novamente o jutsu <b>Jiongu Moji Retsu</b>!"
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
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			else
				for(var/mob/M in oview(3))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(M.PK==0)
						usr<<"Zona NON-PK!!!"
						return
					if(usr.cdretsu)return
					usr.cdretsu=1
					spawn()usr.Cooldown(200,"Jiongu Moji Retsu")
					usr.RandomChakra1()
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					var/Dano = usr.nin/4.5 + usr.tai/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 - M.Resistencia/2
					view(5)<<"<B>[usr] diz: Jiongu Moji Retsu"
					view(5)<<"[M] perdeu [Dano] de Hp, por causa de [usr]"
					M.health -= Dano
					if(M.health <= 0)
						M.Death(usr)
	verb
		JionguMoji()
			set category = "Jutsus"
			set name = "Jiongu Moji"
			if(usr.cast||usr.Kaiten) // If the mob's cast var is one...
				return
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.cdmoji)
				usr <<"<b>Cooldown </b> Aguarde para usar novamente o jutsu <b>Jiongu Moji</b>!"
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
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			else
				for(var/mob/M in oview(2))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(usr.cdmoji)return
					usr.cdmoji=1
					spawn()usr.Cooldown(150,"Jiongu Moji")
					usr.RandomChakra1()
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					var/damage = usr.nin/4.35 + usr.tai/4.35 + usr.gen/4.35 + usr.shurikenskill/4.35 - M.Resistencia/2
					view(5)<<"<B>[usr] diz: Jiongu Moji"
					view(5)<<"[M] recebeu [damage] de dano por causa de [usr]"
					M.health -= damage
					if(M.health <= 0)
						M.Death(usr)


mob/var/bugoucoracao
mob/var/roubandocoracao
mob/var/perdendocoracao
mob/jutsu
	verb
		RouboC() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Jioungu"
			if(usr.cdrouboc)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Jioungu</b>!"
				return
			if(usr.cast||usr.Kaiten) // If the mob's cast var is one...
				return
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
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
			if(usr.coracao>=5)
				usr<<"Você já possui corações demais (max de 5)"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			else
				for(var/mob/M in oview(1))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(M.health>M.maxhealth*0.3)
						usr<<"Ele não está fraco o suficiente faltam: [M.health - M.maxhealth*0.3] de HP para ele perder!"
						return
					if(!M.client||M.NPC)
						usr<<"Não pode ser usado em NPC!"
						return
					if(M.PK==0)
						usr<<"Zona NON-PK!!!"
						return
					if(M.Mnin+M.Mgen+M.Mshurikenskill+M.Mtai>=usr.Mnin+usr.Mgen+usr.Mtai+usr.Mshurikenskill)
						usr<<"Vc não é forte o bastante"
						return
					if(usr.cdrouboc)return
					usr.cdrouboc=1
					spawn()usr.Cooldown(1200,"Jioungu")
					usr.RandomChakra1()
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					usr<<"Vc começa a tentar roubar o coração de [M]"
					M<<"[usr] esta tentando roubar seu coração"
					usr.roubandocoracao=1
					M.perdendocoracao=1
					M.move=0
					M.froze=1
					usr.move=0
					usr.froze=1
					sleep(50)
					usr<<"Vc começa a extrair o coração de [M]"
					M<<"Vc começa a perder seu coração"
					usr.health = usr.maxhealth
					usr.chakra = usr.Mchakra
					usr.coracao +=1
					//M.SalvarAgora()
					sleep(50)
					usr<<"Vc adquiriu mais um coração!"
					M<<"Vc perdeu seu coração!"
					usr.froze=0
					usr.move=1
					M.health=0
					M.chakra=0
					M.Death(usr)
					usr.roubandocoracao=0
					M.perdendocoracao=0


obj
	mask1
		icon ='maskraiton.dmi'
		icon_state=""
	mask2
		icon ='maskkaton.dmi'
		icon_state=""
	mask3
		icon ='maskfuuton.dmi'
		icon_state=""


mob/var/cdm = 0
obj
	bunshins
		Masks//being worked on dont use
			verb/Masks()
				set category = "Jutsus"
				set name = "Libertação das Mascaras"
				if(usr.cdm)
					usr<<"<b>Aguarde o Cooldown da Libertação de mascaras </b>"
					return
				if(usr.PK==0)
					usr<<"Zona NON-PK!!!"
					return
				if(usr.mask==1)
					usr<<"Você já invocou suas mascaras!"
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
				if(usr.libering)
					usr<<"Não enquanto libera chakra"
					return
				if(usr.concing)
					usr<<"Não enquanto se concentra"
					return
				else
					if(usr.chakra >= 20000)
						usr.mask = 1
						view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Libertação das Mascaras"
						if(usr.coracao==2)
							var/mob/enemy/Mask1/K = new /mob/enemy/Mask1
							usr.coracao-=1
							if(K)
								K.name = "[usr.name] Mascara Raiton"
								if(usr.party)
									K.party=1
									K.partysensei="[usr.partysensei]"
								K.bowner = usr
								K.original = usr
								K.icon = /obj/mask1
								K.overlays += /obj/mask1
								K.loc = locate(usr.x-1, usr.y, usr.z)
								K.dir = SOUTH
								flick("smoke2",K)
								K.max_exp = 2
								K.guardp = 1
								K.Village= usr.Village
								K.exp = 2
								K.nin = usr.nin
								K.tai = usr.nin/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5 + usr.tai/3.5 + usr.trovaoN*1.5
								K.gen = usr.gen
								K.shurikenskill= usr.nin
								K.health = usr.maxhealth
								K.chakra = usr.Mchakra
							sleep(5)
							usr.cast=0
							usr.chakra -= 20000
							sleep(1200)
							usr.mask = 0
							del(K)
						if(usr.coracao==3)
							var/mob/enemy/Mask1/K = new /mob/enemy/Mask1
							var/mob/enemy/Mask2/L = new /mob/enemy/Mask2
							usr.coracao-=2
							if(K)
								K.name = "[usr.name] Mascara Raiton"
								if(usr.party)
									K.party=1
									K.partysensei="[usr.partysensei]"
								K.original = usr
								K.icon = /obj/mask1
								K.overlays += /obj/mask1
								K.loc = locate(usr.x-1, usr.y, usr.z)
								K.dir = SOUTH
								flick("smoke2",K)
								K.max_exp = 2
								K.guardp = 1
								K.Village= usr.Village
								K.exp = 2
								K.nin = usr.nin
								K.tai = usr.nin/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5 + usr.tai/3.5 + usr.trovaoN*1.5
								K.gen = usr.gen
								K.shurikenskill= usr.nin
								K.health = usr.maxhealth
								K.chakra = usr.Mchakra
							sleep(5)
							if(L)
								L.name = "[usr.name] Mascara Katon"
								if(usr.party)
									L.party=1
									L.partysensei="[usr.partysensei]"
								L.original = usr
								L.icon = /obj/mask2
								L.overlays += /obj/mask2
								L.loc = locate(usr.x+2, usr.y, usr.z)
								L.dir = EAST
								flick("smoke2",K)
								L.max_exp = 2
								L.guardp = 1
								L.Village= usr.Village
								L.exp = 2
								L.nin = usr.nin
								L.tai = usr.nin/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5 + usr.tai/3.5 + usr.fogoN*1.5
								L.gen = usr.gen
								L.shurikenskill= usr.nin
								L.health = usr.maxhealth
								L.chakra = usr.Mchakra
							sleep(5)
							usr.cast=0
							usr.chakra -= 20000
							sleep(1200)
							usr.mask = 0
							del(K)
							del(L)
						if(usr.coracao>=4)
							var/mob/enemy/Mask1/K = new /mob/enemy/Mask1
							var/mob/enemy/Mask2/L = new /mob/enemy/Mask2
							var/mob/enemy/Mask3/N = new /mob/enemy/Mask3
							usr.coracao-=3
							if(K)
								K.name = "[usr.name] Mascara Raiton"
								if(usr.party)
									K.party=1
									K.partysensei="[usr.partysensei]"
								K.original = usr
								K.icon = /obj/mask1
								K.overlays += /obj/mask1
								K.loc = locate(usr.x-1, usr.y, usr.z)
								K.dir = SOUTH
								flick("smoke2",K)
								K.max_exp = 2
								K.guardp = 1
								K.Village= usr.Village
								K.exp = 2
								K.nin = usr.nin
								K.tai = usr.nin/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5 + usr.tai/3.5 + usr.trovaoN*1.5
								K.gen = usr.gen
								K.shurikenskill= usr.nin
								K.health = usr.maxhealth
								K.chakra = usr.Mchakra
							sleep(5)
							if(L)
								L.name = "[usr.name] Mascara Katon"
								if(usr.party)
									L.party=1
									L.partysensei="[usr.partysensei]"
								L.original = usr
								L.icon = /obj/mask2
								L.overlays += /obj/mask2
								L.loc = locate(usr.x+2, usr.y, usr.z)
								L.dir = EAST
								flick("smoke2",K)
								L.max_exp = 2
								L.guardp = 1
								L.Village= usr.Village
								L.exp = 2
								L.nin = usr.nin
								L.tai = usr.nin/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5 + usr.tai/3.5 + usr.fogoN*1.5
								L.gen = usr.gen
								L.shurikenskill= usr.nin
								L.health = usr.maxhealth
								L.chakra = usr.Mchakra
							sleep(5)
							if(N)
								N.name = "[usr.name] Mascara Fuuton"
								if(usr.party)
									N.party=1
									N.partysensei="[usr.partysensei]"
								N.original = usr
								N.icon = /obj/mask3
								N.overlays += /obj/mask3
								N.loc = locate(usr.x, usr.y+2, usr.z)
								N.dir = NORTH
								flick("smoke2",K)
								N.max_exp = 2
								N.guardp = 1
								N.Village= usr.Village
								N.exp = 2
								N.nin = usr.nin
								N.tai = usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.tai/4 + usr.ventoN*1.5
								N.gen = usr.gen
								N.shurikenskill= usr.nin
								N.health = usr.maxhealth
								N.chakra = usr.Mchakra
							sleep(5)
							usr.chakra -= 20000
							sleep(1200)
							usr.mask = 0
							del(K)
							del(L)
							del(N)
					else
						usr<<"Não tem chakra o bastante.(20k)"
						return


mob/jutsu
	verb
		Linhas(mob/M in view(3)) // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Usar Linhas"
			if(usr.cdusarlinhas)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Usar Linhas</b>!"
				return
			if(usr.cast||usr.Kaiten) // If the mob's cast var is one...
				return
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
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
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(M.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.cdusarlinhas)return
			usr.RandomChakra4()
			usr.cdusarlinhas=1
			spawn()usr.Cooldown(300,"Usar Linhas")
			if(usr.chakra<=0)
				usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
				usr.health=0
				usr.chakra=0
				usr.Death(usr)
				return
			usr<<"Vc vai usar as suas linhas para fechar as feridas de [M]"
			sleep(30)
			if(M<>usr)
				M.health+=M.maxhealth/10
				if(M.health > M.maxhealth)
					M.health = M.maxhealth
			else
				usr.health+=usr.maxhealth/10
				if(usr.health > usr.maxhealth)
					usr.health = usr.maxhealth



mob/jutsu
	verb
		Ferro() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Pele de Ferro"
			if(usr.cdpeleferro)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Pele de Ferro</b>!"
				return
			if(usr.froze&&!usr.Kaiten||usr.Frozen||usr.kawa)
				usr<<"Você está paralisado"
				return
			if(usr.Frozen&&!usr.Kaiten||usr.froze)
				usr<<"Você está paralisado"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(!usr.Kaiten&&!usr.cast)
				if(usr.cdpeleferro)return
				usr.cdpeleferro=1
				spawn()usr.Cooldown(1800,"Pele de Ferro")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr<<"Vc esta usando sua pele de ferro"
				usr.Kaiten =1
				sleep(100)
				usr.Kaiten =0
				usr<<"Sua pele de ferro terminou."
			else if(usr.Kaiten)
				usr.Kaiten =0
				usr<<"Você parou de usar sua pele de ferro."


//==== SSS ======================================================================================

//==== KISAME-SSS ==============================================================================

mob/var/
	armorkisame=0
	armorkisame2=0
mob/suiton_kisame
	verb
		SuitonArmor_kisame()
			set category = "Jutsus"
			set name = "Doton Tsuchi Same Henge"
			if(usr.cast)
				return
			if(usr.Frozen)
				usr<<"Você está paralizado!"
				return
			if(usr.caught)
				usr<<"Você foi capturado!"
				return
			if(usr.captured)
				usr<<"Você foi capturado!"
				return
			if(usr.froze)
				usr<<"Você está paralizado!"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa!"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita!"
				return
			if(!usr.faixatirada)
				usr<<"Vc precisa tirar as faixas de sua samehada para poder se fundir a ela!"
				return
			if(usr.armorkisame)
				usr<<"Vc já está usando o jutsu!"
				return
			else
				usr.RandomChakra05()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr<<"Vc esta se metamorfando"
				var/list/O = usr.overlays.Copy()
				sleep(50)
				usr.overlays = usr.overlays.Remove(usr.overlays)
				usr.icon = 'kisametrans.dmi'
				usr.verbs += /mob/jutsu/verb/Dreno
				view()<<"<font color = blue>[usr]: Doton Tsuchi Same Henge!"
				usr.chakra = usr.Mchakra*1.5
				usr.nin = usr.nin*1.05
				usr.tai = usr.tai*1.05
				usr.gen = usr.gen*1.05
				usr.shurikenskill = usr.shurikenskill*1.05
				usr.armorkisame =1
				sleep(600)
				usr<<"Sua transformação terminou"
				usr.chakra = usr.Mchakra
				usr.nin = usr.Mnin
				usr.tai = usr.Mtai
				usr.gen = usr.Mgen
				usr.shurikenskill = usr.Mshurikenskill
				usr.icon = usr.Oicon
				usr.verbs -= /mob/jutsu/verb/Dreno
				usr.overlays = O.Copy()
				usr.armorkisame=0

mob/var/cddreno = 0
mob/jutsu
	verb
		Dreno(mob/M in oview(1)) // Verb used for cast the beam
			set category = "TaiJutsu"
			set name = "Drenar Chakra"
			if(usr.cddreno)
				usr<<"<b>Cooldown : Aguarde para usar a drenagem novamene </b>"
				return
			if(!usr.armorkisame)
				usr<<"Vc n pode usar semantes ativar sua same henge "
				return
			if(usr.chakra<=5000)
				usr<<"Pouco chakra (5k)"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			else
				usr.cddreno=1
				spawn()usr.Cooldown(150,"Drenar Chakra")
				usr.chakra-=5000
				var/damage = usr.nin/10 + usr.gen/10 + usr.tai/10 + usr.shurikenskill/10
				if(damage<=0)damage=0
				M.chakra -= damage
				usr.chakra += damage/2
				F_damage(M, damage, "#800080")
				M.health-=damage/3
				M.Death(usr)


mob/var/cddrenos = 0
mob/jutsu
	verb
		DrenoS() // Verb used for cast the beam
			set category = "TaiJutsu"
			set name = "Roubar Chakra"
			if(usr.cddrenos)
				usr<<"<b> Cooldown Aguarde para usar o Roubar Chakra novamente </b>"
				return
			if(!usr.armorkisame)
				usr<<"Vc n pode usar sem antes ativar sua same henge "
				return
			if(usr.chakra<=10000)
				usr<<"Pouco chakra(10k)"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			else
				for(var/mob/M in oview(3))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(M.fantasma)
						usr<<"Vc não pode tocá-lo"
						return
					if(usr.cddrenos)return
					usr.cddrenos=1
					spawn()usr.Cooldown(150,"Roubar Chakra")
					usr.chakra-=10000
					var/damage = usr.nin/10 + usr.gen/10 + usr.tai/10 + usr.shurikenskill/10
					if(damage<=0)damage=0
					M.chakra -= damage
					usr.chakra += damage
					F_damage(M, damage, "#800080")
					if(M.chakra<=0)
						M.health=0
						M.Death(usr)





mob/var/cdmizu = 0
obj
	bunshins
		Mbz//being worked on dont use
			verb/Mbz()
				set category = "Jutsus"
				set name = "Mizu Bunshin"
				if(usr.cdmizukisame)
					usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Mizu Bunshin</b>!"
					return
				usr.Handseals()
				if(usr.PK==0)
					usr<<"Zona NON-PK!!!"
					return
				if(usr.Frozen)
					usr<<"Você está Congelado"
					return
				if(usr.caught)
					usr<<"Você foi capturado"
					return
				if(usr.captured)
					usr<<"Você foi capturado"
					return
				if(usr.inso)
					return
				if(usr.froze)
					usr<<"Você está congelado"
					return
				if(usr.resting)
					usr<<"Não enquanto descansa"
					return
				if(usr.meditating)
					usr<<"Não enquanto descansa"
					return
				if(usr.Kaiten||usr.counter)
					return
				if(usr.gate1)
					return
				if(usr.gate2)
					return
				if(usr.gate3)
					return
				if(usr.gate4)
					return
				if(usr.gate5)
					return
				if(usr.gate6)
					return
				if(usr.gate7)
					return
				if(usr.gate8)
					return
				if(!usr.handseals)
					return
				else
					if(usr.cdmizukisame)return
					usr.cdmizukisame=1
					spawn()usr.Cooldown(1600,"Mizu Bunshin")
					usr.RandomChakra1()
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
//					usr.MokKage()
					if(usr.rank=="Genin"||usr.rank=="Estudante")
						usr.cast = 1
						view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Mizu Bunshin"
						var/mob/enemy/Mizu2/K = new /mob/enemy/Mizu2
						usr.Chakragain()
						if(K)
							K.name = "[usr.name]"
							if(usr.party)
								K.party=1
								K.partysensei="[usr.partysensei]"
							K.original = usr
							K.icon = usr.icon
							K.icon_state = usr.icon_state
							K.overlays += usr.overlays
							K.loc = locate(usr.x-1, usr.y, usr.z)
							flick("smoke2",K)
							K.max_exp = 2
							K.guardp = 1
							K.Village = usr.Village
							K.exp = 2
							K.nin = usr.nin/2 + usr.gen/2 + usr.shurikenskill/2 + usr.tai/2
							K.tai = usr.nin/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5 + usr.tai/3.5 + usr.aguaN*1.5
							K.shurikenskill= usr.shurikenskill/6.5
							K.health = usr.maxhealth/2
						sleep(14)
						usr.cast=0
						usr.chakra -= 5000
						sleep(1200)
						for(var/obj/Peins/P in world)
							if(P.Gowner == usr)
								del(P)
						del(K)
					else
						usr.cast = 1
						view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Mizu Bunshin"
						var/mob/enemy/Mizu2/K = new /mob/enemy/Mizu2
						var/mob/enemy/Mizu2/L = new /mob/enemy/Mizu2
						usr.Chakragain()
						if(K)
							K.name = "[usr.name]"
							if(usr.party)
								K.party=1
								K.partysensei="[usr.partysensei]"
							K.original = usr
							K.icon = usr.icon
							K.icon_state = usr.icon_state
							K.overlays += usr.overlays
							K.loc = locate(usr.x-1, usr.y, usr.z)
							flick("smoke2",K)
							K.max_exp = 2
							K.guardp = 1
							K.Village = usr.Village
							K.exp = 2
							K.nin = usr.nin/8 + usr.tai/8 + usr.gen/8 + usr.shurikenskill/8
							K.tai = usr.nin/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5 + usr.tai/3.5 + usr.aguaN*1.5
							K.shurikenskill= usr.shurikenskill/6.5
							K.health = usr.maxhealth/2
						if(L)
							L.name = "[usr.name]"
							if(usr.party)
								K.party=1
								K.partysensei="[usr.partysensei]"
							L.original = usr
							L.icon = usr.icon
							L.icon_state = usr.icon_state
							L.overlays += usr.overlays
							L.loc = locate(usr.x+1, usr.y, usr.z)
							flick("smoke2",L)
							L.max_exp = 2
							L.guardp = 1
							L.Village = usr.Village
							L.exp = 2
							L.nin = usr.nin/8 + usr.tai/8 + usr.gen/8 + usr.shurikenskill/8
							L.tai = usr.nin/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5 + usr.tai/3.5 + usr.aguaN*1.5
							L.shurikenskill= usr.shurikenskill/6.5
							L.health = usr.maxhealth/2
						sleep(14)
						usr.chakra -= 5000
						sleep(1200)
						for(var/obj/Peins/P in world)
							if(P.Gowner == usr)
								del(P)
						del(K)
						del(L)

mob/kisame
	verb
		kisame_agua()
			set category ="Jutsus"
			set name ="Criar Água"
			if(usr.agua==0)
				view<<"<font color = blue>Você Cria Água!"
				usr.verbs += new /mob/suiton/verb/Suiroukisame()
				usr.verbs += new /mob/jutsu/verb/Taisoukisame()
				usr.verbs += new /mob/kisame/verb/BolhadeAgua()
				usr.verbs += new /mob/kisame/verb/Cabecatubarao()
				usr.agua=1
				var/obj/kisame_jutsu_agua/held/agua_ki = new /obj/kisame_jutsu_agua/held
				src.overlays +=agua_ki
				return
			else
				usr<<"Você Desfaz a Água."
				usr.verbs -= new /mob/suiton/verb/Suiroukisame()
				usr.verbs -= new /mob/jutsu/verb/Taisoukisame()
				usr.verbs -= new /mob/kisame/verb/BolhadeAgua()
				usr.verbs -= new /mob/kisame/verb/Cabecatubarao()
				usr.agua=0
				var/obj/kisame_jutsu_agua/held/agua_ki = new /obj/kisame_jutsu_agua/held
				src.overlays -=agua_ki
				return


mob/suiton
	verb
		Suiroukisame() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Suirou no Kisame"
			if(usr.cdsuirouk)
				usr<<"<b>Cooldown : Aguarde para usar o Suirou </b>"
				return
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
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
				for(var/mob/M in oview(4))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(M.PK==0)
						return
					if(M)
						if(M.froze)
							usr << "Ele já está freezado..."
							return
					if(usr.cdsuirouk)return
					usr.cdsuirouk = 1
					spawn()usr.Cooldown(250,"Suirou no Kisame")
					usr.RandomChakra1()
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					M<<"Um dos clones de [usr] se aproximou sem ser visto e lhe aplicou o Suirou no Jutsu."
					usr<<"Você paralizou [M] com o seu Suirou"
					var/Sleeptime = round(usr.nin/100)
					if(Sleeptime >= 1)
						if(Sleeptime<10)
							Sleeptime = 20
						if(Sleeptime>50)
							Sleeptime=50
						M.overlays += 'Wprison.dmi'
						var/obj/mb/F = new /obj/mb/
						F.loc = locate(M.x-1,M.y,M.z)
						M.move = 0
						M.froze = 1
						M.parado = 1
						sleep(Sleeptime)
						del(F)
						if(M)
							M.move=1
							M<<"Você se livrou do Suirou no jutsu de [usr]."
							M.overlays -= 'Wprison.dmi'
							usr<<"[M] se livrou do seu Suirou no jutsu!"
							M.froze = 0
							M.parado = 0
							del(F)
						sleep(8)
					else
						M.overlays += 'Wprison.dmi'
						var/obj/mb/F = new /obj/mb/
						F.loc = locate(M.x-1,M.y,M.z)
						M.move=0
						M.froze = 1
						M.parado = 1
						sleep(Sleeptime)
						del(F)
						if(M)
							M.move=1
							M<<"Você se livrou do Suirou no jutsu de [usr]."
							M.overlays -= 'Wprison.dmi'
							usr<<"[M] se livrou do seu Suirou no jutsu!"
							M.froze = 0
							M.parado = 0
							del(F)
						sleep(8)
					sleep(100)
					if(M)
						M.froze=0

obj
	kisameprisao
		icon='bolha.dmi'
		density=1
mob/var/inprison=0
mob/var/cdpg = 0
mob/jutsu
	verb
		PrisaoGrande()
			set category = "Jutsus"
			set name = "Suirou Same Odori no Jutsu"
			usr.Handseals()
			if(!usr.handseals)
				return
			if(usr.cdpg)
				usr<<"<b> Cooldown : Aguarde para usar esse jutsu novamente </b>"
				return
			if(usr.sphere)
				return
			if(usr.Kaiten)
				return
			if(usr.Frozen)
				usr<<"Você está paralizado!"
				return
			if(usr.caught)
				usr<<"Você foi capturado!"
				return
			if(usr.captured)
				usr<<"Você foi capturado!"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.froze)
				usr<<"Você está paralizado!"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa!"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita!"
				return
			else
				for(var/mob/M in oview(5))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(!usr.inprison)
						if(usr.cdpg)return
						usr.cdpg=1
						spawn()usr.Cooldown(300,"Suirou Same Odori no Jutsu")
						usr.RandomChakra1()
						if(usr.chakra<=0)
							usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
							usr.health=0
							usr.chakra=0
							usr.Death(usr)
							return
						M.Move_Delay = 9
						usr.inprison=1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Suirou Same Odori no Jutsu"
						sleep(10)
						var/A = new/obj/kisameprisao(locate(usr.x-7,usr.y-3,usr.z))
						var/A1 = new/obj/kisameprisao(locate(usr.x-7,usr.y-2,usr.z))
						var/A2 = new/obj/kisameprisao(locate(usr.x-7,usr.y-1,usr.z))
						var/A3 = new/obj/kisameprisao(locate(usr.x-7,usr.y,usr.z))
						var/A4 = new/obj/kisameprisao(locate(usr.x-7,usr.y+1,usr.z))
						var/A5 = new/obj/kisameprisao(locate(usr.x-7,usr.y+2,usr.z))
						var/A6 = new/obj/kisameprisao(locate(usr.x-7,usr.y+3,usr.z))
						var/A7 = new/obj/kisameprisao(locate(usr.x+7,usr.y-3,usr.z))
						var/A8 = new/obj/kisameprisao(locate(usr.x+7,usr.y-2,usr.z))
						var/A9 = new/obj/kisameprisao(locate(usr.x+7,usr.y-1,usr.z))
						var/B = new/obj/kisameprisao(locate(usr.x+7,usr.y,usr.z))
						var/B1 = new/obj/kisameprisao(locate(usr.x+7,usr.y+1,usr.z))
						var/B2 = new/obj/kisameprisao(locate(usr.x+7,usr.y+2,usr.z))
						var/B3 = new/obj/kisameprisao(locate(usr.x+7,usr.y+3,usr.z))
						var/B4 = new/obj/kisameprisao(locate(usr.x-3,usr.y+7,usr.z))
						var/B5 = new/obj/kisameprisao(locate(usr.x-2,usr.y+7,usr.z))
						var/B6 = new/obj/kisameprisao(locate(usr.x-1,usr.y+7,usr.z))
						var/B7 = new/obj/kisameprisao(locate(usr.x,usr.y+7,usr.z))
						var/B8 = new/obj/kisameprisao(locate(usr.x+1,usr.y+7,usr.z))
						var/B9 = new/obj/kisameprisao(locate(usr.x+2,usr.y+7,usr.z))
						var/C = new/obj/kisameprisao(locate(usr.x+3,usr.y+7,usr.z))
						var/C1 = new/obj/kisameprisao(locate(usr.x-3,usr.y-7,usr.z))
						var/C2 = new/obj/kisameprisao(locate(usr.x-2,usr.y-7,usr.z))
						var/C3 = new/obj/kisameprisao(locate(usr.x-1,usr.y-7,usr.z))
						var/C4 = new/obj/kisameprisao(locate(usr.x,usr.y-7,usr.z))
						var/C5 = new/obj/kisameprisao(locate(usr.x+1,usr.y-7,usr.z))
						var/C6 = new/obj/kisameprisao(locate(usr.x+2,usr.y-7,usr.z))
						var/C7 = new/obj/kisameprisao(locate(usr.x+3,usr.y-7,usr.z))
						var/C8 = new/obj/kisameprisao(locate(usr.x-7,usr.y-4,usr.z))
						var/C9 = new/obj/kisameprisao(locate(usr.x-7,usr.y-5,usr.z))
						var/D1 = new/obj/kisameprisao(locate(usr.x-7,usr.y-6,usr.z))
						var/D2 = new/obj/kisameprisao(locate(usr.x+7,usr.y+6,usr.z))
						var/D3 = new/obj/kisameprisao(locate(usr.x+7,usr.y+5,usr.z))
						var/D4 = new/obj/kisameprisao(locate(usr.x+7,usr.y+4,usr.z))
						var/D5 = new/obj/kisameprisao(locate(usr.x+6,usr.y+7,usr.z))
						var/D6 = new/obj/kisameprisao(locate(usr.x+5,usr.y+7,usr.z))
						var/D7 = new/obj/kisameprisao(locate(usr.x+4,usr.y+7,usr.z))
						var/D8 = new/obj/kisameprisao(locate(usr.x-4,usr.y-7,usr.z))
						var/D9 = new/obj/kisameprisao(locate(usr.x-5,usr.y-7,usr.z))
						var/D = new/obj/kisameprisao(locate(usr.x-6,usr.y-7,usr.z))
						var/E1 = new/obj/kisameprisao(locate(usr.x-7,usr.y+4,usr.z))
						var/E2 = new/obj/kisameprisao(locate(usr.x-7,usr.y+5,usr.z))
						var/E3 = new/obj/kisameprisao(locate(usr.x-7,usr.y+6,usr.z))
						var/E4 = new/obj/kisameprisao(locate(usr.x+7,usr.y-6,usr.z))
						var/E5 = new/obj/kisameprisao(locate(usr.x+7,usr.y-5,usr.z))
						var/E6 = new/obj/kisameprisao(locate(usr.x+7,usr.y-4,usr.z))
						var/E7 = new/obj/kisameprisao(locate(usr.x-6,usr.y+7,usr.z))
						var/E8 = new/obj/kisameprisao(locate(usr.x-5,usr.y+7,usr.z))
						var/E9 = new/obj/kisameprisao(locate(usr.x-4,usr.y+7,usr.z))
						var/E = new/obj/kisameprisao(locate(usr.x+4,usr.y-7,usr.z))
						var/F = new/obj/kisameprisao(locate(usr.x+5,usr.y-7,usr.z))
						var/F1 = new/obj/kisameprisao(locate(usr.x+6,usr.y-7,usr.z))
						var/F2 = new/obj/kisameprisao(locate(usr.x-7,usr.y+7,usr.z))
						var/F3 = new/obj/kisameprisao(locate(usr.x+7,usr.y-7,usr.z))
						var/F4 = new/obj/kisameprisao(locate(usr.x-7,usr.y-7,usr.z))
						var/F5 = new/obj/kisameprisao(locate(usr.x+7,usr.y+7,usr.z))
						A:owner = usr
						A1:owner = usr
						A2:owner = usr
						A3:owner = usr
						A4:owner = usr
						A5:owner = usr
						A6:owner = usr
						A7:owner = usr
						A8:owner = usr
						A9:owner = usr
						B:owner = usr
						B1:owner = usr
						B2:owner = usr
						B3:owner = usr
						B4:owner = usr
						B5:owner = usr
						B6:owner = usr
						B7:owner = usr
						B8:owner = usr
						B9:owner = usr
						C:owner = usr
						C1:owner = usr
						C2:owner = usr
						C3:owner = usr
						C4:owner = usr
						C5:owner = usr
						C6:owner = usr
						C7:owner = usr
						C8:owner = usr
						C9:owner = usr
						D:owner = usr
						D1:owner = usr
						D2:owner = usr
						D3:owner = usr
						D4:owner = usr
						D5:owner = usr
						D6:owner = usr
						D7:owner = usr
						D8:owner = usr
						D9:owner = usr
						E:owner = usr
						E1:owner = usr
						E2:owner = usr
						E3:owner = usr
						E4:owner = usr
						E5:owner = usr
						E6:owner = usr
						E7:owner = usr
						E8:owner = usr
						E9:owner = usr
						F:owner = usr
						F1:owner = usr
						F2:owner = usr
						F3:owner = usr
						F4:owner = usr
						F5:owner = usr
						sleep(100)
						M.Move_Delay = 0.7
						usr.inprison=0
						usr<<"Vc desativou sua prisao suprema"
						for(var/obj/kisameprisao/R in world)
							if(R.owner == usr)
								del(R)
					else
						usr<<"Vc desativou sua prisao suprema"
						M.Move_Delay = 0.7
						usr.inprison=0
						for(var/obj/kisameprisao/R in world)
							if(R.owner == usr)
								del(R)



mob/var/cdsuiton = 0
mob/jutsu
	verb
		Taisoukisame()
			set category = "Jutsus"
			set name = "Suiton Daibaku Suishouha"
			usr.Handseals()
			if(!usr.handseals)
				return
			if(usr.cdsuiton)
				usr<<"<b> COOLDOWN </b>"
				return
			if(usr.sphere)
				return
			if(usr.Kaiten)
				return
			if(usr.Frozen)
				usr<<"Você está paralizado!"
				return
			if(usr.caught)
				usr<<"Você foi capturado!"
				return
			if(usr.captured)
				usr<<"Você foi capturado!"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.froze)
				usr<<"Você está paralizado!"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa!"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita!"
				return
			else
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.cdsuiton = 1
				spawn()usr.Cooldown(150,"Suiton Daibakufu Suishouha")
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Suiton Daibaku Suishouha"
				sleep(30)
				usr.Chakragain()
				var/obj/kisamea/T1 = new /obj/kisamea/
				var/obj/kisamea/T2 = new /obj/kisamea/
				var/obj/kisamea/T3 = new /obj/kisamea/
				var/obj/kisamea/T4 = new /obj/kisamea/
				var/obj/kisamea/T5 = new /obj/kisamea/
				var/obj/kisamea/T6 = new /obj/kisamea/
				var/obj/kisamea/T7 = new /obj/kisamea/
				var/obj/kisamea/T8 = new /obj/kisamea/
				var/obj/kisamea/T9 = new /obj/kisamea/
				var/obj/kisamea/T10 = new /obj/kisamea/
				T1.loc = locate(usr.x, usr.y+1, usr.z)
				T2.loc = locate(usr.x+1, usr.y+1, usr.z)
				T3.loc = locate(usr.x-1, usr.y+1, usr.z)
				T4.loc = locate(usr.x-2, usr.y+1, usr.z)
				T5.loc = locate(usr.x+2, usr.y+1, usr.z)
				T6.loc = locate(usr.x, usr.y-1, usr.z)
				T7.loc = locate(usr.x+1, usr.y-1, usr.z)
				T8.loc = locate(usr.x-1, usr.y-1, usr.z)
				T9.loc = locate(usr.x-2, usr.y-1, usr.z)
				T10.loc = locate(usr.x+2, usr.y-1, usr.z)
				for(var/obj/kisamea/E in view(6))
					E.nin=usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.aguaN*1.5
					E.Gowner=usr
				walk(T1,NORTH)
				walk(T2,NORTH)
				walk(T3,NORTH)
				walk(T4,NORTH)
				walk(T5,NORTH)
				walk(T6,SOUTH)
				walk(T7,SOUTH)
				walk(T8,SOUTH)
				walk(T9,SOUTH)
				walk(T10,SOUTH)
				sleep(20)
				var/obj/kisamea/Y1 = new /obj/kisamea/
				var/obj/kisamea/Y2 = new /obj/kisamea/
				var/obj/kisamea/Y3 = new /obj/kisamea/
				var/obj/kisamea/Y4 = new /obj/kisamea/
				var/obj/kisamea/Y5 = new /obj/kisamea/
				var/obj/kisamea/Y6 = new /obj/kisamea/
				var/obj/kisamea/Y7 = new /obj/kisamea/
				var/obj/kisamea/Y8 = new /obj/kisamea/
				var/obj/kisamea/Y9 = new /obj/kisamea/
				var/obj/kisamea/Y10 = new /obj/kisamea/
				Y1.loc = locate(usr.x+1, usr.y, usr.z)
				Y2.loc = locate(usr.x+1, usr.y+1, usr.z)
				Y3.loc = locate(usr.x+1, usr.y-1, usr.z)
				Y4.loc = locate(usr.x+1, usr.y+2, usr.z)
				Y5.loc = locate(usr.x+1, usr.y-2, usr.z)
				Y6.loc = locate(usr.x-1, usr.y, usr.z)
				Y7.loc = locate(usr.x-1, usr.y+1, usr.z)
				Y8.loc = locate(usr.x-1, usr.y-1, usr.z)
				Y9.loc = locate(usr.x-1, usr.y-2, usr.z)
				Y10.loc = locate(usr.x+2, usr.y+2, usr.z)
				for(var/obj/kisamea/E in view(6))
					E.nin=usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.aguaN*1.5
					E.Gowner=usr
				walk(Y1,EAST)
				walk(Y2,EAST)
				walk(Y3,EAST)
				walk(Y4,EAST)
				walk(Y5,EAST)
				walk(Y6,WEST)
				walk(Y7,WEST)
				walk(Y8,WEST)
				walk(Y9,WEST)
				walk(Y10,WEST)

obj
	kisamea
		name = "Agua"
		icon = 'kisameagua.dmi'//dont have a base icon so cant make weights icon!lol
		density = 1
		New()
			spawn(50) del src
			..()
		Bump(A)
			var/mob/O = src.Gowner
			if( !O ) del src
			if(ismob(A))
				var/mob/M = A
				if(M.party&&M.partysensei==O.partysensei)return
				if(M.Kaiten||M.sphere)
					return
				if(M.PK==0)
					return
				var/damage = O.nin/4.5 + O.gen/4.5 + O.tai/4.5 + O.shurikenskill/4.5 + O.aguaN*1.5 - M.Resistencia/2
				if(damage<=0)damage=0
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				view(M) << "[M] foi acertado pelo Suiton Daibaku Suishouha recebendo [damage] de dano!!"
				M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

mob/var/cdba=0
mob/kisame
	verb
		BolhadeAgua()
			set category = "Jutsus"
			set name = "Bolha de Agua"
			if(usr.agua == 0)
				usr<<"<font color = red> VOCÊ NAO TEM AGUA PARA FAZER ISSO!"
				return
			if(usr.cdba)
				usr<<"Cooldown : Aguarde para usar este jutsu"
				return
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.chakra < 50000)
				usr.<<"Você nao tem chakra suficiente(50k)"
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
			if(_CD("Bolha de Agua",50))return 0
			else
				for(var/mob/M in oview(2))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(M)
						if(M.froze)
							usr << "Ele já está freezado..."
							return
					if(M.PK==0)
						return
					if(M.NPC||M.bijuunpc||M.clonenpc)
						usr<<"Não pode usar isso nele!"
						return
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					usr.cdba = 1
					spawn()usr.Cooldown(150,"Bolha de Agua")
					usr.chakra -= 50000
					M<<"Você foi preso por uma bolha de agua de [usr]."
					usr<<"Você paralizou [M] com sua bolha de água"
					M.overlays += 'Bolha de Agua.dmi'
					M.move = 0
					M.froze = 1
					M.parado = 1
					sleep(50)
					M.loc = locate(211,146,1)
					M<<"Você foi mandado para o meio do oceano por [usr]"
					if(M)
						M.move=1
						M<<"Você escapa da bolha de agua do [usr]."
						M.overlays -= 'Bolha de Agua.dmi'
						usr<<"[M] se livrou da sua bolha de agua!"
						M.froze = 0
						M.parado = 0

obj
	TObj
		icon = 'Cabeça de Tubarão.dmi'
		density = 1
		New()
			spawn(50) del src
			..()
		Bump(A)
			var/mob/O = src.Gowner
			if(!O) del src
			if(ismob(A))
				var/mob/M = A
				if(M.party&&M.partysensei==O.partysensei)return
				if(M.Kaiten||M.sphere)
					return
				if(M.PK==0)
					return
				var/damage = O.nin/4.25 + O.gen/4.25 + O.tai/4.25 + O.shurikenskill/4.25 + O.aguaN*1.5 - M.Resistencia/2
				if(damage<=0)damage=0
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				view(M) << "[M] foi acertado pelo tubarão de [O]  recebendo [damage] de dano!!"
				M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

mob/var/cdtuba = 0
mob/kisame
	verb
		Cabecatubarao(mob/M in oview(4))
			set category = "Jutsus"
			set name = "Turabão"
			if(usr.agua == 0)
				usr<<"<font color = red> VOCÊ NAO TEM AGUA PARA FAZER ISSO!"
				return
			if(usr.cdtuba)
				usr << "<b> Cooldown : Aguarde Para usar isso novamente"
				return
			if(M.PK==0)
				return
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.chakra < 10000)
				usr.<<"Você nao tem chakra suficiente(50k)"
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
			if(_CD("Turabão",50))return 0
			else
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.cdtuba = 1
				spawn()usr.Cooldown(150,"Tubarão")
				view(5)<<"<b>[usr] diz: <font color = blue> Ataque do Tubarão"
				usr.chakra -= 10000
				var/obj/TObj/KI = new /obj/TObj
				usr.target=M
				KI.loc = usr.loc
				KI.nin=usr.nin/4.25 + usr.gen/4.25 + usr.tai/4.25 + usr.shurikenskill/4.25 + usr.aguaN*1.5
				KI.name="[usr]"
				usr.Chakragain()
				KI.Move_Delay=2
				KI.Gowner=usr
				walk_towards(KI,M)

				sleep(50)
				del(KI)


//==== RAIGA ====================================================================================

mob/var/inraio=0
mob/jutsu
	verb
		Raiomorte()
			set category = "Jutsus"
			set name = "Raiton Jibashi"
			if(usr.cast||usr.Kaiten == 1) // If the mob's cast var is one...
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
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			else
				if(usr.inraio == 1)
					usr.overlays -= 'raios.dmi'
					usr << "Você desligou o Raiton Jibashi"
					usr.inraio = 0
					spawn usr.Castando()
				else
					usr.RandomChakra1()
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					usr.inraio = 1
					spawn usr.Castando()
					usr.overlays += 'raios.dmi'
					usr << "<FONT COLOR=#0000ff>R</FONT><FONT COLOR=#2a2aff>a</FONT><FONT COLOR=#5353ff>i</FONT><FONT COLOR=#7d7dff>t</FONT><FONT COLOR=#a6a6ff>o</FONT><FONT COLOR=#d0d0ff>n</FONT><FONT COLOR=#f8f8ff> </FONT><FONT COLOR=#d5d5ff>J</FONT><FONT COLOR=#b2b2ff>i</FONT><FONT COLOR=#8e8eff>b</FONT><FONT COLOR=#6b6bff>a</FONT><FONT COLOR=#4747ff>s</FONT><FONT COLOR=#2424ff>h</FONT><FONT COLOR=#0000ff>i</FONT>"
					view << "<FONT COLOR=#0000ff>R</FONT><FONT COLOR=#2a2aff>a</FONT><FONT COLOR=#5353ff>i</FONT><FONT COLOR=#7d7dff>t</FONT><FONT COLOR=#a6a6ff>o</FONT><FONT COLOR=#d0d0ff>n</FONT><FONT COLOR=#f8f8ff> </FONT><FONT COLOR=#d5d5ff>J</FONT><FONT COLOR=#b2b2ff>i</FONT><FONT COLOR=#8e8eff>b</FONT><FONT COLOR=#6b6bff>a</FONT><FONT COLOR=#4747ff>s</FONT><FONT COLOR=#2424ff>h</FONT><FONT COLOR=#0000ff>i</FONT>"
					RJI
					if(usr.inraio)
						usr.chakra -= 10000
						if(usr.chakra <= 10000)
							usr.inraio=0
							usr.overlays-= 'raios.dmi'
							usr<<"Você <font color=red>desativa</font> o Raiton Jibashi por falta de chakra!"
							return
						else
							sleep(20)
							goto RJI


mob/var/tmp/cdnrny=0
mob/jutsu
	verb
		Corpoe() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Ninpou - Raigeki no Yoroi"
			if(usr.cdnrny)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Ninpou - Raigeki no Yoroi</b>!"
				return
			if(usr.froze&&!usr.Kaiten)
				usr<<"Você está paralisado"
				return
			if(usr.Frozen&&!usr.Kaiten)
				usr<<"Você está paralisado"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.suika)
				usr<<"Vc esta cansado....espere"
				return
			if(!usr.Kaiten&&!usr.cast)
				usr.cdnrny=1
				spawn() usr.Cooldown(200,"Ninpou - Raigeki no Yoroi")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Ninpou - Raigeki no Yoroi"
				usr.overlays+='armaduraraiga.dmi'
				usr.def =1
				sleep(100)
				usr.overlays-='armaduraraiga.dmi'
				usr.def=0
				usr<<"Vc perde o magnetismo e seu jutsu se desfaz"




mob/var/tmp/cdkaminari = 0
mob/jutsu
	verb
		Prisaoe(mob/M in oview(2)) // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Kaminari Shibari "
			if(usr.cdkaminari)
				usr<<"<b> Cooldown"
				return
			if(M.PK==0)
				return
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(M)
				if(M.froze)
					usr << "Ele já está freezado..."
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
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.cdkaminari = 1
				spawn()usr.Cooldown(150,"Kaminari Shibari")
				M<<"Você está paralisado pelo Kaminari Shibari  de [usr]"
				usr<<"Você paralizou [M] com o seu Kaminari Shibari "
				var/Sleeptime = round(usr.nin/100 + usr.gen/100 + usr.tai/100 + usr.shurikenskill/100)
				if(Sleeptime >= 1)
					if(Sleeptime<10)
						Sleeptime = 20
					if(Sleeptime>150)
						Sleeptime=40
					M.overlays += 'prisaoe.dmi'
					M.move = 0
					M.froze = 1
					sleep(Sleeptime)
					M.move = 1
					M<<"Você foi preso pelo Kaminari Shibari  no jutsu de [usr]."
					M.overlays -= 'prisaoe.dmi'
					usr<<"[M] se livrou do seu Kaminari Shibari  no jutsu!"
					M.froze = 0


mob/var/tmp/cdr = 0
mob/var/tmp/cdhnh=0
mob/jutsu
	verb
		Raio() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Hi no Hagame"
			if(usr.cdhnh)
				usr<<"<b> Cooldown : Aguarde para usar o jutsu Hi no Hagame novamente!</b>"
				return
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
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
				if(usr.cdhnh)return
				usr.cdhnh=1
				spawn()usr.Cooldown(180,"Hi no Hagame")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr<< "Você está concentrando o seu chakra eletrico"
				sleep(50)
				view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Hi no Hagame!"
				for(var/mob/M in orange(10))
					var/damage=usr.gen/4.25 + usr.nin/4.25 + usr.shurikenskill/4.25 + usr.tai/4.25 + usr.trovaoN*1.5 - M.Resistencia/2
					if(damage<=0)damage=0
					view()<<"[usr] dispara raios a sua volta!"
					M.overlays+='raios.dmi'
					M.health-=damage
					F_damage(M, damage, "#ff0000")
					if(M.health<=0)
						M.Death(usr)


//==== ZABUZA ==================================================================================


mob/var/cdp = 0
mob/jutsu
	verb
		Prisao() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Suirou no Jutsu"
			if(usr.cdp)
				usr<<"Cooldown"
				return
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
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
				for(var/mob/M in oview(3))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(M.PK==0)
						return
					if(M.froze||M.Frozen)
						usr << "Ele já está freezado..."
						return
					usr.RandomChakra1()
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					usr.cdp = 1
					spawn()usr.Cooldown(150,"Suirou no Jutsu")
					M<<"Você está paralisado pelo Suirou de [usr]"
					usr<<"Você paralizou [M] com o seu Suirou"
					var/Sleeptime = round(usr.nin/100)
					if(Sleeptime >= 1)
						if(Sleeptime<10)
							Sleeptime = 20
						if(Sleeptime>150)
							Sleeptime=50
						M.overlays += 'Wprison.dmi'
						M.move = 0
						M.froze = 1
						sleep(Sleeptime)
						if(M)
							M<<"Você foi preso pelo Suirou no jutsu de [usr]."
							M.overlays -= 'Wprison.dmi'
							usr<<"[M] se livrou do seu Suirou no jutsu!"
							M.froze = 0
							M.move=1
						sleep(8)
					else
						M.overlays += 'Wprison.dmi'
						M.froze = 1
						M.move=0
						sleep(Sleeptime)
						if(M)
							M<<"Você foi preso pelo Suirou no jutsu de [usr]."
							M.overlays -= 'Wprison.dmi'
							usr<<"[M] se livrou do seu Suirou no jutsu!"
							M.froze = 0
							M.move=1
						sleep(8)
					spawn(100)if(M)M.froze=0


mob/var/nevoa=0
mob/jutsu
	verb
		zabuza_nevoa(mob/M in oview(5))
			set category ="Jutsus"
			set name ="Nevoa Oculta"
			if(usr.Frozen)
				usr<<"Você está paralizado!"
				return
			if(usr.caught)
				usr<<"Você foi capturado!"
				return
			if(usr.captured)
				usr<<"Você foi capturado!"
				return
			if(usr.froze)
				usr<<"Você está paralizado!"
				return
			if(usr.nevoa==0)
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				view<<"<font color = blue>Você criou uma nevoa!"
				M.Move_Delay=10
				M.sealtime=28
				usr.nevoa=1
				usr.verbs += new /mob/jutsu/verb/ocultar()
				usr.verbs += new /mob/jutsu/verb/SilenceKill()
				var/obj/kirinevoa/held/agua_ki = new /obj/kirinevoa/held
				M.overlays +=agua_ki
				return
			else
				usr<<"Você Desfaz a nevoa."
				M.Move_Delay=0.7
				M.sealtime=11
				usr.nevoa=0
				usr.verbs -= new /mob/jutsu/verb/ocultar()
				usr.verbs -= new /mob/jutsu/verb/SilenceKill()
				var/obj/kirinevoa/held/agua_ki = new /obj/kirinevoa/held
				M.overlays -=agua_ki
				return

mob/jutsu
	verb
		SilenceKill()
			set name = "Assassinato Silencioso"
			set category = "Jutsus"
			for(var/mob/M in oview(1))
				if(M.party&&M.partysensei==usr.partysensei)return
				if(usr.cdsilencekill)
					usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Assassinato Silencioso</b>!"
					return
				if(usr.PK==0)
					usr<<"Zona NON-PK!!!"
					return
				if(M.PK==0)
					usr<<"Zona NON-PK!!!"
					return
				if(usr.stamina <= 10000)
					usr<<"Não tem stamina o bastante (10k)"
					return
				if(usr.froze)
					usr<<"Você está paralisado"
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
				if(usr.resting)
					usr<<"Não enquanto descansa"
					return
				if(usr.meditating)
					usr<<"Não enquanto medita"
					return
				if (M.sphere == 1)
					return
				if (M.Kaiten == 1)
					return
				if(usr.cast)
					return
				else
					if(usr.cdsilencekill)return
					usr.cdsilencekill=1
					spawn()usr.Cooldown(200,"Assassinato Silencioso")
					usr.chakra -= 10000
					usr.stamina -= 10000
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=blue> Diz: <FONT COLOR=red>Assassinato Silencioso!"
					var/damage = usr.tai/4.25 + usr.nin/4.25 + usr.gen/4.25 + usr.shurikenskill/4.25 - M.Resistencia/2
					if(damage<=0)damage=0
					usr.EsquivaSharingan(M)
					if(M.Esquivou)
						M.Esquivou=0
						return
					usr.overlays += 'Lariat Bater.dmi'
					M.overlays += 'Lariat Apanhar.dmi'
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					view()<<"[usr] dá [damage] de dano em [M] com o Assassinato Silencioso!"
					if(M.health <= 0)
						M.Death(usr)
						if(M)
							usr.overlays -= 'Lariat Bater.dmi'
							M.overlays -= 'Lariat Apanhar.dmi'
							usr.cast=0
						return

mob/jutsu
	verb
		ocultar()
			set category ="Jutsus"
			set name ="Ocultar-se na Nevoa"
			if(usr.Frozen)
				usr<<"Você está paralizado!"
				return
			if(usr.caught)
				usr<<"Você foi capturado!"
				return
			if(usr.captured)
				usr<<"Você foi capturado!"
				return
			if(usr.froze)
				usr<<"Você está paralizado!"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa!"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita!"
				return
			usr.RandomChakra01()
			if(usr.chakra<=0)
				usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
				usr.health=0
				usr.chakra=0
				usr.Death(usr)
				return
			usr<<"Vc se oculta nas brumas da nevoa"
			var/list/AAA = usr.overlays.Copy()
			usr.icon = 'invis.dmi'
			usr.overlays = usr.overlays.Remove(usr.overlays)
			sleep(300)
			usr.icon = usr.Oicon
			usr.overlays = AAA.Copy()



mob/var/cdss = 0
mob/suiton
	verb
		SuitonSousou()
			set category = "Jutsus"
			set name = "Suiton Sousou"
			if(usr.cdss)
				usr<<"<b> Cooldown </b>"
				return
			usr.Handseals()
			if(!usr.handseals)
				return
			if(usr.froze)
				usr<<"Você está paralisado"
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
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			for(var/mob/M in oview(4))
				if(usr.sphere)
					return
				if(src.Kaiten)
					return
				if(usr.PK==0)
					usr<<"Zona NON-PK!!!"
					return
				if(M.PK==0)
					usr<<"Zona NON-PK!!!"
					return
				if(M.captured)
					usr.RandomChakra1()
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					usr.cdss = 1
					spawn()usr.Cooldown(150,"Suiton Sousou")
					var/damage= usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.tai/4.5 + usr.aguaN*1.5 - M.Resistencia/2
					if(damage<=0)damage=0
					view(usr)<<"Suiton Sousou!"
					flick("sousou",M)
					M.overlays-='WaterStrom.dmi'
					M.overlays-='WaterStrom.dmi'
					usr.Chakragain()
					M.overlays-='WaterStrom.dmi'
					M.health-=damage
					F_damage(M, damage, "#ff0000")
					sleep(30)
					M.captured=0
					if(M.health<=0)
						M.Death(usr)
						return
				else
					return
mob/var/cdsk = 0
mob/suiton
	verb
		SuitonKyuu(mob/M in oview(3))
			set category = "Jutsus"
			set name = "Suiton Kyuu"
			if(usr.cdsk)
				usr<<"<b> Aguarde para usar o Kyuu novamente </b>"
				return
			usr.Handseals()
			if(!usr.handseals)
				return
			if(usr.cast)
				return
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
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
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.sphere)
				return
			if(usr.Kaiten)
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(M.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(M.Kaiten)
				return
			if(M.counter)
				usr<<"Ele copia e o reflete de volta para você."
				M<<"Você copiou e o refletiu."
				usr.health -= M.Mnin/5
				Death(usr)
				return
			if(M.captured)
				usr<<"Ele já está capturado!"
				return
			else
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				if(usr.KyuuN>=100)
					usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam
					usr.KyuuN += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Suiton Kyuu!"
					M.overlays+='WaterStrom.dmi'
					M.captured=1
					usr.Chakragain()
					M.froze=1
					M.move=0
					sleep(50)
					if(M)
						M.captured=0
						M.froze=0
						M.move=1
						M.overlays-='WaterStrom.dmi'
						M.overlays-='WaterStrom.dmi'
						M.overlays-='WaterStrom.dmi'
						M.overlays-='WaterStrom.dmi'
						usr.cast=0
					return
				else
					usr.random=rand(1,5)
					if(usr.random==1)
						usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam
						usr.KyuuN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Suiton Kyuu!"
						M.overlays+='WaterStrom.dmi'
						M.captured=1
						M.froze=1
						M.move=0
						sleep(50)
						if(M)
							M.captured=0
							M.froze=0
							M.move=1
							M.overlays-='WaterStrom.dmi'
							M.overlays-='WaterStrom.dmi'
							M.overlays-='WaterStrom.dmi'
							M.overlays-='WaterStrom.dmi'
							usr.cast=0
						return
					if(usr.random==2)
						usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam
						usr.KyuuN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Suiton Kyuu!"
						M.overlays+='WaterStrom.dmi'
						M.captured=1
						M.froze=1
						M.move=0
						sleep(50)
						if(M)
							M.captured=0
							M.froze=0
							M.move=1
							M.overlays-='WaterStrom.dmi'
							M.overlays-='WaterStrom.dmi'
							M.overlays-='WaterStrom.dmi'
							M.overlays-='WaterStrom.dmi'
						usr.cast=0
						return
					if(usr.random==3)
						usr<<"Você falhou em usar o Suiton Kyuu"
						usr.cast=1
						sleep(40)
						usr.cast=0
						return
					if(usr.random==4)
						usr<<"Você falhou em usar o Suiton Kyuu"
						usr.cast=1
						sleep(40)
						usr.cast=0
						return
					if(usr.random==5)
						usr<<"Você falhou em usar o Suiton Kyuu"
						usr.cast=1
						sleep(40)
						usr.cast=0
						return
					sleep(100)
					usr.cast=0
					if(M)
						M.captured=0


//==== TAKA =====================================================================================

//==== KARIN ====================================================================================




mob/var/cdsp = 0
mob/jutsu
	verb
		SuperPunho() // Verb used for cast the beam
			set category = "TaiJutsu"
			set name = "Taihou Sentou"
			if(usr.cdsp)
				usr<<"<b>Cooldown : Aguarde para usar o jutsu novamente </b>"
				return
			if(usr.stamina<=1000)
				usr<<"Pouca stamina (1k)"
				return
			if(usr.chakra<=1000)
				usr<<"Pouco chakra (1k)"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			else
				for(var/mob/M in oview(2))
					if(M.party&&M.partysensei==usr.partysensei)return
					usr.cdsp =1
					spawn()usr.Cooldown(150,"Taihou Sentou")
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Taihou Sentou!"
					usr.stamina-=1000
					usr.chakra -=1000
					var/damage = usr.tai/4 + usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 - M.Resistencia/2
					if(damage<=0)damage=0
					M.health -= damage
					F_damage(M, damage, "#800080")
					M.Death(usr)



mob/Karin
	verb
		KaguraShingan()
			set category = "Jutsus"
			set name = "Kagura Shingan"
			for(var/mob/M in oview(30))
				if(usr.froze)
					usr<<"Você está paralisado"
					return
				if(usr.resting)
					usr<<"Não enquanto descansa"
					return
				if(usr.meditating)
					usr<<"Não enquanto medita"
					return
				if(M.client)
					if(M.GM||M.ADM)return
					usr<<"{\icon[M][M.name],Rank - [M.rank], health - [M.health],Chakra - [M.chakra],Elemento - [M.Elemento]"
					usr<<"Location; [M.x],[M.y]"
					if(usr.z < M.z&&usr.z > M.z)
						usr << "<b><font color = silver><center>Você pressente que ele está em outra localidade!"
						return
					else
						usr << "<b><font color = silver><center>Você pressente que ele está no mesmo local que você!"
						if(usr.x > M.x)
							usr << "<b><font color = silver><center>Você pressente que ele está à oeste de você!"
						if(usr.x < M.x)
							usr << "<b><font color = silver><center>Você pressente que ele está à leste de você!"
						if(usr.y < M.y)
							usr << "<b><font color = silver><center>Você pressente que ele está à norte de você!"
						if(usr.y > M.y)
							usr << "<b><font color = silver><center>Você pressente que ele está à sul de você!"

mob/var/cdc = 0
mob/Karin
	verb
		NS(mob/M in view(3))
			set category = "Jutsus"
			set name = "Cura"
			if(usr.cdc)
				usr<<"Cooldown"
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
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(M.health >= M.maxhealth/2)
				usr<<"Ele não pode ser curado ainda!"
				return
			else
				usr.cdc = 1
				spawn()usr.Cooldown(1200,"Cura")
				view<<"[usr] está usando sua cura."
				usr<<"Você começou a curar."
				usr.cast=1
				sleep(50)
				M.health = M.maxhealth/2
				usr.cast=0
				F_damage(M, M.maxhealth, "#008000")

mob/var/cdabsorb = 0
mob/Karin
	verb
		Absorver()
			set category = "Jutsus"
			set name = "Absorver HP"
			if(usr.cdabsorb)
				usr<<"<b> Seu jutsu esta em Cooldown.</b>"
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
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.health>=usr.maxhealth)
				usr<<"Você está com o máximo de HP."
				return
			else
				for(var/mob/M in oview(5))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(M.NPC||M.bijuunpc||!M.client)
						usr<<"Não pode usar isso em NPC!"
						return
					if(M.sapo)
						usr<<"Você absorveu chakra natural e ficou paralisado"
						usr.Frozen = 1
						sleep(30)
						usr.Frozen=0
						return
					usr.cdabsorb = 1
					spawn()usr.Cooldown(300,"Absorver HP")
					usr<<"Você começa à absorver [M]"
					var/damage = usr.tai/6 + usr.gen/6 + usr.shurikenskill/6 + usr.nin/6 - M.Resistencia/2
					if(damage >= 1)
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						usr.health += damage
						F_damage(usr, damage, "#008000")
						usr.chakra += damage
						F_damage(usr, damage, "#0000ff")
						M<<"[usr] está o absorvendo."
						usr.Death(M)
						usr.overlays-='chakra.dmi'


//==== JUUGO ===================================================================================

mob/proc/Cursed_Seall()
	if(usr.incs)
		usr<<"Você desativa o Selo Amaldiçoado!"
		usr.remover()
		usr.CS2=1
	else if(src.CS4&&!src.incs)
		src.InCS4=1
		src.tai = src.tai*1.3
		src.gen = src.gen*1.25
		src.nin = src.nin*1.25
		src.shurikenskill = src.shurikenskill*1.25
		src.verbs += typesof(/mob/Curse_Seal3/verb/)
		src.incs=1
		src.adicionarIcon()
		spawn(1200)remover()
	else if(src.CS3&&!src.incs)
		src.adicionarIcon()
		src.tai = src.tai*1.15
		src.gen = src.gen*1.15
		src.nin = src.nin*1.15
		src.shurikenskill = src.shurikenskill*1.15
		src.verbs += typesof(/mob/Curse_Seal3/verb/)
		src.incs=1
		spawn(1200)remover()
	else if(src.CS2&&!src.incs)
		src.adicionarIcon()
		src.tai = src.tai*1.075
		src.gen = src.gen*1.075
		src.nin = src.nin*1.075
		src.shurikenskill = src.shurikenskill*1.075
		src.adicionarIcon()
		src.incs=1
		spawn(1200)remover()
mob/proc/adicionarIcon()
{
	if(src.CS4)
	{
		src.overlays+='CurseSeal Juugo.dmi'
		src.incs=1
	}
	else if(usr.CS3)
	{
		src.overlays+='cs.dmi'
		src.overlays+='cs2.dmi'
		src.overlays+='cs3 Eyes.dmi'
		var/haircs3over = 'cs3 Hair.dmi'
		src.incs=1
		haircs3over += rgb(rhair,ghair,bhair)
		if(usr.icon=='BaseT.dmi'||usr.icon=='FemaleT.dmi')
			src.overlays+=/obj/CCurseSeal3Black
			src.overlays+=/obj/TCurseSeal3Black
			src.overlays+=/obj/BLCurseSeal3Black
			src.overlays+=/obj/BRCurseSeal3Black
			src.overlays+=/obj/TLCurseSeal3Black
			src.overlays+=/obj/TRCurseSeal3Black
		if(usr.icon=='Base white.dmi'||usr.icon=='Female white.dmi')
			src.overlays+=/obj/CCurseSeal3Black
			src.overlays+=/obj/TCurseSeal3Black
			src.overlays+=/obj/BLCurseSeal3Black
			src.overlays+=/obj/BRCurseSeal3Black
			src.overlays+=/obj/TLCurseSeal3Black
			src.overlays+=/obj/TRCurseSeal3Black
		if(usr.icon=='BaseBlack.dmi'||usr.icon=='FemaleBlack.dmi')
			src.overlays+=/obj/CCurseSeal3Black
			src.overlays+=/obj/TCurseSeal3Black
			src.overlays+=/obj/BLCurseSeal3Black
			src.overlays+=/obj/BRCurseSeal3Black
			src.overlays+=/obj/TLCurseSeal3Black
			src.overlays+=/obj/TRCurseSeal3Black
		if(usr.icon=='BaseBlue.dmi'||usr.icon=='FemaleBlue.dmi')
			src.overlays+=/obj/CCurseSeal3Black
			src.overlays+=/obj/TCurseSeal3Black
			src.overlays+=/obj/BLCurseSeal3Black
			src.overlays+=/obj/BRCurseSeal3Black
			src.overlays+=/obj/TLCurseSeal3Black
			src.overlays+=/obj/TRCurseSeal3Black
		if(usr.icon=='BaseRed.dmi'||usr.icon=='FemaleRed.dmi')
			src.overlays+=/obj/CCurseSeal3Black
			src.overlays+=/obj/TCurseSeal3Black
			src.overlays+=/obj/BLCurseSeal3Black
			src.overlays+=/obj/BRCurseSeal3Black
			src.overlays+=/obj/TLCurseSeal3Black
			src.overlays+=/obj/TRCurseSeal3Black
		if(usr.icon=='BaseVamp.dmi'||usr.icon=='FemaleVamp.dmi')
			src.overlays+=/obj/CCurseSeal3Black
			src.overlays+=/obj/TCurseSeal3Black
			src.overlays+=/obj/BLCurseSeal3Black
			src.overlays+=/obj/BRCurseSeal3Black
			src.overlays+=/obj/TLCurseSeal3Black
			src.overlays+=/obj/TRCurseSeal3Black
		if(usr.icon=='BaseYellow.dmi'||usr.icon=='FemaleYellow.dmi')
			src.overlays+=/obj/CCurseSeal3Black
			src.overlays+=/obj/TCurseSeal3Black
			src.overlays+=/obj/BLCurseSeal3Black
			src.overlays+=/obj/BRCurseSeal3Black
			src.overlays+=/obj/TLCurseSeal3Black
			src.overlays+=/obj/TRCurseSeal3Black

	}
	else if(usr.CS2)
	{
		src.overlays+='cs.dmi'
		src.overlays+='cs2.dmi'
		src.incs=1
	}
	else
	{
		src.overlays+='cs.dmi'
		src.incs=1
	}
}


mob/proc/remover()
{
	src.nin=src.Mnin
	src.tai=src.Mtai
	src.shurikenskill=src.Mshurikenskill
	src.gen=src.Mgen
	if(src.chakra>=src.Mchakra)
		src.chakra=src.Mchakra
	src.froze = 0
	src.move=1
	src.cast = 0
	src.incs = 0
	src.InCS4=0
	src.InCS2=0
	src.InCS3=0
	src.CSWS_ONOFF = 0
	src.overlays-='cs.dmi'
	src.overlays-='CurseSeal Juugo.dmi'
	src.overlays-='cs2.dmi'
	src.overlays-='cs3 Eyes.dmi'
	src.overlays-='cs4.dmi'
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
	if(src.icon=='BaseT.dmi'||src.icon=='FemaleT.dmi')
		src.overlays -= 'BaseBlack Wing Shield.dmi'
	if(src.icon=='Base white.dmi'||src.icon=='Female White.dmi')
		src.overlays -= 'BaseBlack Wing Shield.dmi'
	if(src.icon=='BaseBlack.dmi'||src.icon=='FemaleBlack.dmi')
		src.overlays -= 'BaseBlack Wing Shield.dmi'
	if(src.icon=='BaseBlue.dmi'||src.icon=='FemaleBlue.dmi')
		src.overlays -= 'BaseBlack Wing Shield.dmi'
	if(src.icon=='BaseRed.dmi'||src.icon=='FemaleRed.dmi')
		src.overlays -= 'BaseBlack Wing Shield.dmi'
	if(src.icon=='BaseVamp.dmi'||src.icon=='FemaleVamp.dmi')
		src.overlays -= 'BaseBlack Wing Shield.dmi'
	if(src.icon=='BaseYellow.dmi'||src.icon=='FemaleYellow.dmi')
		src.overlays -= 'BaseBlack Wing Shield.dmi'
}
mob/Juugo
	verb
		CS4()
			set category = "NinJutsu"
			set name = "Selo Amaldiçoado Lv. 4 - Modo Taijutsu"
			if(usr.InCS2)
				usr<<"Agora use o Selo Amaldiçoado!"
				usr.remover()
				usr.CS3=0
				usr.CS4=1
				usr.CS2=0
				usr.incs=0
			else if(usr.InCS4)
				usr<<"Vc desativou o Lv4!"
				usr.remover()
				usr.CS3=0
				usr.CS4=0
				usr.CS2=1
				usr.incs=0
			else if(usr.InCS3)
				usr.remover()
				usr<<"Agora use o Selo Amaldiçoado"
				usr.CS3=0
				usr.CS4=1
				usr.CS2=0
				usr.incs=0

mob/Juugo
	verb
		CS3()
			set category = "NinJutsu"
			set name = "Selo Amaldiçoado Lv. 3"
			usr<<"Vc ativou o Lv3"
			if(usr.InCS2)
				usr<<"Agora use o Selo Amaldiçoado!"
				usr.remover()
				usr.CS3=1
				usr.CS4=0
				usr.CS2=0
				usr.incs=0
			else if(usr.InCS3)
				usr.remover()
				usr<<"Vc desativou o Lv3!"
				usr.CS3=0
				usr.CS4=0
				usr.CS2=1
				usr.incs=0
			else if(usr.InCS4)
				usr.remover()
				usr<<"Agora use o Selo Amaldiçoado!"
				usr.CS3=1
				usr.CS4=0
				usr.CS2=0
				usr.incs=0



mob
	jutsu
		verb
			Power_up()
				set category = "Jutsus"
				set name = "Selo Amaldiçoado"
				if(usr.seals<100)
					usr<<"Você precisa ser mais forte!"
					return
				if(usr.bit==1)
					if(usr.bit==1)
						usr.Cursed_Seall()
						return
				else
					usr<<"Você não possui o Cursed Seal."

mob/var/tmp/cdpointblank = 0
mob/Juugo
	verb
		PTBLANK()
			set category = "Jutsus"
			set name = "Point Blank"
			if(!usr.incs)
				usr<<"Ative o Selo Amadiçoado primeiro!"
				return
			if(usr.cdpointblank)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Point Blank</b>!"
				return
			if(usr.cast||usr.Kaiten == 1)
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
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			else // If the cast var isn't 1...
				if(usr.cdpointblank)return
				usr.cdpointblank=1
				spawn()usr.Cooldown(200,"Point Blank")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.cast = 1
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: AHHHHH VOU TE MATAAAAR... !"
				var/obj/PointB/K = new /obj/PointB
				usr.atmosphere=1
				K.loc = usr.loc
				K.nin=usr.nin/3.5 + usr.gen/3.5 + usr.tai/3.5 + usr.shurikenskill/3.5
				K.Move_Delay=0.5
				K.dir = usr.dir
				K.name="[usr]"
				K.Gowner=usr
				walk(K,usr.dir)
				sleep(10)
				usr.cast = 0
				sleep(50)
				usr.atmosphere=0




obj
	trilhapt
		icon='firedragon.dmi'
		icon_state="2"
		New()
			..()
			spawn(30)
			del(src)


obj
	PointB
		icon = 'Ryuuka.dmi'
		density = 1
		Move()
			spawn(60) del(src)
			..()
			var/obj/trilhapt/T = new /obj/trilhapt
			if(src.dir == NORTH)
				T.loc = src.loc
				T.y = src.y-1
				T.dir = src.dir
				T.owner=src.owner
			if(src.dir == SOUTH)
				T.loc = src.loc
				T.y = src.y+1
				T.dir = src.dir
				T.owner=src.owner
			if(src.dir == WEST)
				T.loc = src.loc
				T.x = src.x+1
				T.dir = src.dir
				T.owner=src.owner
			if(src.dir == EAST)
				T.loc = src.loc
				T.x = src.x-1
				T.dir = src.dir
				T.owner=src.owner
			if(src.dir == NORTHWEST)
				T.loc = src.loc
				T.y = src.y-1
				T.x = src.x+1
				T.dir = src.dir
				T.owner=src.owner
			if(src.dir == NORTHEAST)
				T.loc = src.loc
				T.y = src.y-1
				T.x = src.x-1
				T.dir = src.dir
				T.owner=src.owner
			if(src.dir == SOUTHWEST)
				T.loc = src.loc
				T.x = src.x+1
				T.y = src.y+1
				T.dir = src.dir
				T.owner=src.owner
			if(src.dir == SOUTHEAST)
				T.loc = src.loc
				T.x = src.x-1
				T.y = src.y+1
				T.dir = src.dir
				T.owner=src.owner
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				var/mob/O = src.Gowner
				if(!O) del src
				if(M.party&&M.partysensei==O.partysensei)return
				if(M.Kaiten||M.sphere)
					return
				if(M.PK==0)
					return
				var/damage = O.nin/3.5 + O.gen/3.5 + O.tai/3.5 + O.shurikenskill/3.5 - M.Resistencia/2.25
				if(damage >= 1)
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					view(M) << "[M] levou [damage] de dano ao ser acertado pela Rajada de Chakra de [O]!"
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
				sleep(60)
				usr.atmosphere = 0

mob/var/tmp/cdabsorverjuugo=0
mob/Juugo
	verb
		drenarhp()
			set category = "Jutsus"
			set name = "Absorver Vida"
			if(usr.cdabsorverjuugo)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Absorver Vida</b>!"
				return
			if(usr.cast)
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
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.chakra >= usr.Mchakra)
				return
			else
				for(var/mob/M in oview(1))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(M.NPC||M.bijuunpc||!M.client)
						usr<<"Não pode usar isso em NPC!"
						return
					if(M.sapo)
						usr<<"Você absorveu chakra natural e ficou paralisado"
						usr.Frozen = 1
						sleep(30)
						usr.Frozen=0
						return
					if(M.fantasma)
						usr<<"Vc não pode tocá-lo"
						return
					if(usr.cdabsorverjuugo)return
					usr.cdabsorverjuugo=1
					spawn()usr.Cooldown(1200,"Absorver Vida")
					usr.RandomChakra1()
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					usr<<"Você começa a absorver [M]"
					usr.overlays+='chakra.dmi'
					var/damage = usr.tai/6 + usr.gen/6 + usr.shurikenskill/6 + usr.nin/6 - M.Resistencia/2.15
					if(damage<=0)damage=0
					if(damage >= 1)
						M<<"[usr] Está absorvendo você"
						M.health -= damage
						F_damage(M, damage, "#800080")
						usr.health += damage
						if(usr.health>=usr.maxhealth)
							usr.health=usr.maxhealth
						F_damage(usr, damage, "#0000ff")
						usr.overlays-='chakra.dmi'
						M.Death(usr)

//==== UCHIHA - TAKA ===========================================================================


mob/var/cdsasuke=0
mob/SasukeTaka
	verb
		AyatsuitoNoJutsu() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Ayatsuito no Jutsu"
			if(usr.cdsasuke)
				usr<<"<b> Seu jutsu esta em Cooldown."
				return
			if(usr.Frozen)
				usr<<"Você está paralizado!"
				return
			if(usr.captured)
				usr<<"Você foi capturado!"
				return
			if(usr.caught)
				usr<<"Você foi capturado!"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.froze)
				usr<<"Você está paralizado!"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa!"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita!"
				return
			else // If the cast var isn't 1...
				for(var/mob/M in oview(4))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(M.PK==0)
						return
					if(M)
						if(M.froze)
							usr << "Ele já está preso..."
							return
					usr.cdsasuke = 1
					spawn()usr.Cooldown(180,"Ayatsuito no Jutsu")
					M<<"Você foi preso pelo Ayatsuito de [usr]."
					usr<<"Você prendeu [M] com seu Ayatsuito."
					var/Sleeptime = round(usr.nin/100 + usr.gen/100 + usr.tai/100 + usr.shurikenskill/100 - M.nin/100)
					if(Sleeptime <= 0)
						Sleeptime = 10
						M<<"Você escapou perfeitamente do Ayatsuito de [usr]."
						usr<<"Você não conseguiu prender [M] com seu Ayatsuito."
						return
					if(Sleeptime >= 1)
						if(Sleeptime<10)
							Sleeptime = 30
						if(Sleeptime>50)
							Sleeptime=50
						M.overlays += 'ayatsuito.dmi'
						M.move = 0
						M.froze = 1
						sleep(8)
						M.overlays -= 'ayatsuito.dmi'
						M.overlays += 'ayatsuito2.dmi'
						sleep(Sleeptime)
						if(M)
							M.move=1
							M<<"Você se livrou do Ayatsuito de [usr]."
							M.overlays -= 'ayatsuito2.dmi'
							usr<<"[M] se livrou de seu Ayatsuito!"
							M.froze = 0
						sleep(8)
					sleep(100)
					if(M)
						M.froze=0
						M.move=1
		MagenKouken()
			set category = "Jutsus"
			set name = "Magen Kouken"
			if(usr.cast)
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
				return
			if(!usr.Iarmor&&!usr.cast)
				usr.RandomChakra01()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				view()<<"<font color = blue>[usr]: Magen Kouken!"
				usr.overlays+='magenaura.dmi'
				usr.Iarmor =1
				usr.gen = usr.gen*1.05
				usr.tai = usr.tai*1.05
				usr.nin = usr.nin*1.05
				usr.shurikenskill = usr.shurikenskill*1.05
				fire
				if(usr.Iarmor)
					usr.chakra -=1000
					if(usr.chakra <= 4)
						usr.overlays-='magenaura.dmi'
						usr.Iarmor = 0
						usr.buff=0
						usr.gen = usr.Mgen
						usr.tai = usr.Mtai
						usr.nin = usr.Mnin
						usr.shurikenskill = usr.Mshurikenskill
						return
					else
						sleep(40)
						goto fire
			else if(usr.Iarmor)
				usr.Iarmor =0
				usr.buff=0
				usr.gen = usr.Mgen
				usr.tai = usr.Mtai
				usr.nin = usr.Mnin
				usr.shurikenskill = usr.Mshurikenskill
				usr.overlays-='magenaura.dmi'
				usr<<"Você desativa o Magen Kouken"





mob/var/cdhenges=0
mob/jutsu
	verb
		HengeM(mob/M in oview(10))
			set category = "Jutsus"
			set name = "Shoushagan no Jutsu"
			if(usr.Henge)
				return
			if(usr.cdhenges)
				usr<<"<b> Seu jutsu esta em Cooldown.</b>"
				return
			if(usr.Kaiten)
				return
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
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
			if(M&&M.kuchiyose)
				usr<<"Cannot Henge that."
				return
			else
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				if(usr.hengeN>=1)
					view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Shoushagan no Jutsu!"
					var/list/O = usr.overlays.Copy()
					usr.Henge=1
					usr.Chakragain()
					usr.hengeN += 1
					usr.overlays = usr.overlays.Remove(usr.overlays)
					usr.icon = M.icon
					flick("smoke2",usr)
					usr.overlays += M.overlays
					XD
						sleep(300)
						switch(input("Você quer desativar o henge?","Henge",) in list("Sim","Não"))
							if("Sim")
								usr.overlays = null
								usr.Henge = 0
								usr.overlays = O.Copy()
								usr.icon = usr.Oicon

								return
							if("Não")
								usr.chakra-=20

								goto XD
				else
					usr.cdhenges = 1
					spawn()usr.Cooldown(150,"Shoushagan no Jutsu")
					view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Shoushagan no Jutsu!"
					var/list/O = usr.overlays.Copy()
					usr.Henge=1
					usr.hengeN += 1
					usr.overlays = usr.overlays.Remove(usr.overlays)
					if(M)
						usr.icon = M.icon
					flick("smoke2",usr)
					usr.overlays += M.overlays
					sleep(600)
					usr.overlays = null
					usr.overlays += usr.hair
					usr.Henge = 0
					usr.overlays = O.Copy()
					usr.icon = usr.Oicon
					usr.random = rand(1,15)

mob/var/cdhayabusa = 0
mob/SasukeTaka
	verb
		HayabusaOtoshi()
			set name = "Hayabusa Otoshi"
			set category = "Jutsus"
			if(usr.cdhayabusa)
				usr<<"<b> Cooldown </b>"
				return
			if(usr.froze)
				usr<<"Você está paralisado"
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
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.stamina <= 3000)
				usr<<"Não tem stamina. (3k)"
				return
			else
				for(var/mob/M in oview(2))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(M.ingat||M.intank)
						return
					if(M.sphere)
						return
					if(M.Kaiten)
						return
					if(M.PK==0)
						usr<<"Zona NON-PK!!!"
						return
					if(M.inspike)
						return
					if(M.counter)
						usr<<"Ele copia e o reflete de volta para você."
						M<<"Você copiou e o refletiu."
						usr.health -= M.Mnin/5
						usr.Death(usr)
						return
					usr.cdhayabusa=1
					spawn()usr.Cooldown(150,"Hayabusa Otoshi")
					var/damage = usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 - M.Resistencia/2
					if(damage<=0)damage=0
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Hayabusa Otoshi!"
					usr.stamina -= 3000
					usr.overlays += 'omote.dmi'
					if(M)
						usr.loc=M.loc
						step(M,SOUTH)
						usr.loc=M.loc
						sleep(3)
						step(M,SOUTH)
						usr.loc=M.loc
						sleep(3)
						step(M,SOUTH)
						usr.loc=M.loc
						sleep(3)
						step(M,SOUTH)
						usr.loc=M.loc
						sleep(3)
						step(M,SOUTH)
						usr.loc=M.loc
						M.health -= damage
						F_damage(M, damage, "#ff0000")
					view()<<"[usr] tira [damage] de dano em [M] com o Hayabusa Otoshi!"
					M.Death(usr)
					usr.overlays-='omote.dmi'
					usr.overlays-='omote.dmi'
					usr.overlays-='omote.dmi'
					usr.overlays-='omote.dmi'

mob/var/cdkouken = 0

mob/SasukeTaka
	verb
		ChidoriKouken()
			set category = "Jutsus"
			set name = "Chidori Kouken"
			if(usr.cdkouken)
				usr<<"<b> Cooldown : Aguarde para re-usar este jutsu"
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
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
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
			if(!usr.def&&!usr.cast)
				usr.RandomChakra01()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.cdkouken = 1
				spawn()usr.Cooldown(150,"Chidori Kouken")
				view()<<"<font color = red>[usr]: Chidori Kouken!"
				usr.overlays += 'electricity3.dmi'
				usr.def =1
				usr.Kouken=1
				usr.nin = usr.nin*1.05
				usr.gen = usr.gen*1.05
				usr.tai = usr.tai*1.05
				usr.shurikenskill = usr.shurikenskill*1.05
				usr.verbs -= new /mob/Sword/verb/Hitfreeze()
				usr.verbs += new /mob/Sword/verb/Hitfreeze2()
				fire
				if(usr.def)
					usr.chakra -=usr.Mchakra/20
					if(usr.chakra <= 1000)
						usr.overlays -= 'electricity3.dmi'
						usr.def = 0
						usr.buff=0
						usr.nin = usr.Mnin
						usr.gen = usr.Mgen
						usr.tai = usr.Mtai
						usr.shurikenskill = usr.Mshurikenskill
						usr.verbs += new /mob/Sword/verb/Hitfreeze()
						usr.verbs -= new /mob/Sword/verb/Hitfreeze2()
						return
					else
						sleep(50)
						goto fire
			else if(usr.Kouken)
				usr.overlays -= 'electricity3.dmi'
				usr.def =0
				usr.Kouken=0
				usr.buff=0
				usr.nin = usr.Mnin
				usr.gen = usr.Mgen
				usr.tai = usr.Mtai
				usr.shurikenskill = usr.Mshurikenskill
				usr.verbs += new /mob/Sword/verb/Hitfreeze()
				usr.verbs -= new /mob/Sword/verb/Hitfreeze2()
				usr<<"Você desativa o Chidori Kouken."

mob/SasukeTaka
	verb
		Kagebuyou()
			set category = "Jutsus"
			set name = "Sasuke Kage Buyou"
			if(usr.hyoushou)return
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
				return
			else // If the cast var isn't 1.
				for(var/mob/M in oview(4))
					if(M.party&&M.partysensei==usr.partysensei)return
					usr.RandomChakra1()
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					usr.loc = locate(M.x,M.y+1,M.z)
					view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Kage Buyou!"
					if(usr.onwater==1)
						usr.onwater=0
						return

mob/var/cdsfreze = 0
mob/Sword
	verb
		Hitfreeze() // Verb used for cast the beam
			set category = "TaiJutsu"
			set name = "Hit Freeze"
			if(usr.cdsfreze)
				usr<<"Cooldown."
				return
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			else
				for(var/mob/M in oview(3))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(M.PK==0)
						return
					if(M)
						if(M.froze)
							usr << "Ele já esta freezado.."
							return
					usr.cdsfreze=1
					spawn()usr.Cooldown(150,"Hit Freeze")
					sleep(8)
					M<<"Você foi freezado pela Kusagani Chidori de [usr]"
					usr<<"Você freezou com sucesso [M]"
					if(usr.nin + usr.gen + usr.tai + usr.shurikenskill >= M.nin)
						M.Move_Delay=13
						M.froze = 1
						M.move=0
						sleep(30)
						if(M)
							M.move=1
							M<<"Você quebrou o freeze de [usr]."
							usr<<"[M] está livre de seu freeze"
							M.froze = 0
							M.Move_Delay=0.7
					else
						if(M)
							M<<"Você evita o freeze de de [usr]."
							usr<<"[M] evitou o seu freeze!"
							M.froze = 0
							M.Move_Delay=0.7

mob/Sword
	verb
		Hitfreeze2() // Verb used for cast the beam
			set category = "TaiJutsu"
			set name = "Hit Freeze"
			if(usr.cast)
				return
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			else
				for(var/mob/M in oview(3))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(M.PK==0)
						return
					if(M)
						if(M.froze)
							usr << "Ele já esta freezado.."
							return
					usr.cast=1
					sleep(8)
					M<<"Você foi freezado pela Kusagani Chidori de [usr]"
					usr<<"Você freezou com sucesso [M]"
					if(usr.nin + usr.gen + usr.tai + usr.shurikenskill >= M.nin)
						M.Move_Delay=13
						M.cast=1
						M.froze = 1
						M.move = 0
						usr.cast = 1
						sleep(30)
						if(M)
							M.move=1
							M<<"Você quebrou o freeze de [usr]."
							usr<<"[M] está livre de seu freeze"
							M.froze = 0
							M.Move_Delay=0.7
							M.cast = 0
					else
						if(M)
							M<<"Você evita o freeze de de [usr]."
							usr<<"[M] evitou o seu freeze!"
							M.froze = 0
							M.Move_Delay=0.7
						usr.cast = 0

mob/var/cdhabateku = 0
mob/SasukeTaka
	verb
		HabatekuChidoriSenbon()
			set category = "Jutsus"
			set name = "Habateku Chidori Senbon"
			usr.Handseals()
			if(!usr.handseals)
				return
			if(usr.cdhabateku)
				usr<<"<b>Cooldown</b>"
				return
			if(usr.sphere)
				return
			if(usr.Kaiten)
				return
			if(usr.Frozen)
				usr<<"Você está paralizado!"
				return
			if(usr.caught)
				usr<<"Você foi capturado!"
				return
			if(usr.captured)
				usr<<"Você foi capturado!"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.froze)
				usr<<"Você está paralizado!"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa!"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita!"
				return
			else
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#575757>H</FONT><FONT COLOR=#5d5d5d>a</FONT><FONT COLOR=#626262>b</FONT><FONT COLOR=#686868>a</FONT><FONT COLOR=#6e6e6e>t</FONT><FONT COLOR=#747474>e</FONT><FONT COLOR=#797979>k</FONT><FONT COLOR=#7f7f7f>u</FONT><FONT COLOR=#858585> </FONT><FONT COLOR=#8b8b8b>C</FONT><FONT COLOR=#909090>h</FONT><FONT COLOR=#959595>i</FONT><FONT COLOR=#919191>d</FONT><FONT COLOR=#8c8c8c>o</FONT><FONT COLOR=#868686>r</FONT><FONT COLOR=#818181>i</FONT><FONT COLOR=#7c7c7c> </FONT><FONT COLOR=#777777>S</FONT><FONT COLOR=#717171>e</FONT><FONT COLOR=#6c6c6c>n</FONT><FONT COLOR=#676767>b</FONT><FONT COLOR=#626262>o</FONT><FONT COLOR=#5c5c5c>n</FONT><FONT COLOR=#575757>!</FONT>"
				usr.cdhabateku = 1
				spawn()usr.Cooldown(180,"Habateku Chidori Senbon")
				sleep(20)
				usr.Chakragain()
				var/obj/habachi/T1 = new /obj/habachi/
				var/obj/habachi/T2 = new /obj/habachi/
				var/obj/habachi/T3 = new /obj/habachi/
				var/obj/habachi/T4 = new /obj/habachi/
				var/obj/habachi/T5 = new /obj/habachi/
				var/obj/habachi/T6 = new /obj/habachi/
				var/obj/habachi/T7 = new /obj/habachi/
				var/obj/habachi/T8 = new /obj/habachi/
				var/obj/habachi/T9 = new /obj/habachi/
				var/obj/habachi/T10 = new /obj/habachi/
				T1.loc = locate(usr.x, usr.y+1, usr.z)
				T2.loc = locate(usr.x+1, usr.y+1, usr.z)
				T3.loc = locate(usr.x-1, usr.y+1, usr.z)
				T4.loc = locate(usr.x-2, usr.y+1, usr.z)
				T5.loc = locate(usr.x+2, usr.y+1, usr.z)
				T6.loc = locate(usr.x, usr.y-1, usr.z)
				T7.loc = locate(usr.x+1, usr.y-1, usr.z)
				T8.loc = locate(usr.x-1, usr.y-1, usr.z)
				T9.loc = locate(usr.x-2, usr.y-1, usr.z)
				T10.loc = locate(usr.x+2, usr.y-1, usr.z)
				for(var/obj/habachi/E in view(6))
					E.nin=usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.trovaoN*1.5
					E.Gowner=usr
				walk(T1,NORTH)
				walk(T2,NORTH)
				walk(T3,NORTH)
				walk(T4,NORTH)
				walk(T5,NORTH)
				walk(T6,SOUTH)
				walk(T7,SOUTH)
				walk(T8,SOUTH)
				walk(T9,SOUTH)
				walk(T10,SOUTH)
				sleep(20)
				var/obj/habachi/Y1 = new /obj/habachi/
				var/obj/habachi/Y2 = new /obj/habachi/
				var/obj/habachi/Y3 = new /obj/habachi/
				var/obj/habachi/Y4 = new /obj/habachi/
				var/obj/habachi/Y5 = new /obj/habachi/
				var/obj/habachi/Y6 = new /obj/habachi/
				var/obj/habachi/Y7 = new /obj/habachi/
				var/obj/habachi/Y8 = new /obj/habachi/
				var/obj/habachi/Y9 = new /obj/habachi/
				var/obj/habachi/Y10 = new /obj/habachi/
				Y1.loc = locate(usr.x+1, usr.y, usr.z)
				Y2.loc = locate(usr.x+1, usr.y+1, usr.z)
				Y3.loc = locate(usr.x+1, usr.y-1, usr.z)
				Y4.loc = locate(usr.x+1, usr.y+2, usr.z)
				Y5.loc = locate(usr.x+1, usr.y-2, usr.z)
				Y6.loc = locate(usr.x-1, usr.y, usr.z)
				Y7.loc = locate(usr.x-1, usr.y+1, usr.z)
				Y8.loc = locate(usr.x-1, usr.y-1, usr.z)
				Y9.loc = locate(usr.x-1, usr.y-2, usr.z)
				Y10.loc = locate(usr.x+2, usr.y+2, usr.z)
				for(var/obj/habachi/E in view(6))
					E.nin=usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.trovaoN*1.5
					E.Gowner=usr
				walk(Y1,EAST)
				walk(Y2,EAST)
				walk(Y3,EAST)
				walk(Y4,EAST)
				walk(Y5,EAST)
				walk(Y6,WEST)
				walk(Y7,WEST)
				walk(Y8,WEST)
				walk(Y9,WEST)
				walk(Y10,WEST)

obj
	habachi
		name = "Habachi Chidori Senbon"
		icon = 'habachi.dmi'//dont have a base icon so cant make weights icon!lol
		density = 1
		New()
			spawn(50) del src
			..()
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				var/mob/B=src.Gowner
				if( !B ) del src
				if(M.party&&M.partysensei==B.partysensei)return
				if(M.Kaiten||M.sphere)
					return
				if(M.PK==0)
					return
				var/damage = B.nin/4.5 + B.gen/4.5 + B.tai/4.5 + B.shurikenskill/4.5 + B.trovaoN*1.5 - M.Resistencia/2
				if(damage<=0)damage=0
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				view(M) << "[M] foi acertado pelo Habachi Chidori Senbon e recebeu [damage] de dano!!"
				M.Death(B)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)



mob/var/cdkirin = 0
mob/jutsu/verb
	Novokirin()
		set category = "Jutsus"
		set name = "Kirin"
		if(usr.caught)
			usr<<"Você foi capturado"
			return
		if(usr.PK==0)
			usr<<"Zona NON-PK!!!"
			return
		if(usr.Frozen)
			usr<<"Você está paralisado"
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
		if(usr.atmosphere==0)
			usr<<"Você precisa ter usado o Katon: Goryuuka antes!"
			return
		else
			for(var/mob/M in oview(5))
				if(M.party&&M.partysensei==usr.partysensei)return
				if(M.PK==0)
					usr<<"Zona NON-PK!!!"
					return
				usr.RandomChakra05()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				view<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Kirin!!"
				M.overlays+=/obj/Kirin_S5
				M.overlays+=/obj/Kirin_S6
				M.overlays+=/obj/Kirin_S7
				M.overlays+=/obj/Kirin_S8
				M.overlays+=/obj/Kirin_S9
				M.overlays+=/obj/Kirin_S10
				M.overlays+=/obj/Kirin_S11
				M.overlays+=/obj/Kirin_S12
				M.overlays+=/obj/Kirin_S13
				M.overlays+=/obj/Kirin_S14
				M.overlays+=/obj/Kirin_S15
				M.overlays+=/obj/Kirin_S16
				M.overlays+=/obj/Kirin_S17
				M.overlays+=/obj/Kirin_S18
				M.overlays+=/obj/Kirin_S19
				M.overlays+=/obj/Kirin_S20
				M.overlays+=/obj/Kirin_S21
				M.overlays+=/obj/Kirin_S22
				M.overlays+=/obj/Kirin_S23
				M.overlays+=/obj/Kirin_S24
				M.overlays+=/obj/Kirin_S25
				M.overlays+=/obj/Kirin_S26
				M.overlays+=/obj/Kirin_S27
				M.overlays+=/obj/Kirin_S28
				M.overlays+=/obj/Kirin_S29
				M.overlays+=/obj/Kirin_S30
				M.overlays+=/obj/Kirin_S31
				M.overlays+=/obj/Kirin_S32
				M.overlays+=/obj/Kirin_S33
				M.overlays+=/obj/Kirin_S34
				M.overlays+=/obj/Kirin_S35
				M.overlays+=/obj/Kirin_S36
				M.overlays+=/obj/Kirin_S37
				M.overlays+=/obj/Kirin_S38
				M.overlays+=/obj/Kirin_S39
				M.overlays+=/obj/Kirin_S40
				M.overlays+=/obj/Kirin_S41
				M.overlays+=/obj/Kirin_S42
				M.overlays+=/obj/Kirin_S43
				M.overlays+=/obj/Kirin_S44
				M.overlays+=/obj/Kirin_S45
				M.overlays+=/obj/Kirin_S46
				M.overlays+=/obj/Kirin_S47
				M.overlays+=/obj/Kirin_S48
				M.overlays+=/obj/Kirin_S49
				M.overlays+=/obj/Kirin_S50
				M.overlays+=/obj/Kirin_S51
				M.overlays+=/obj/Kirin_S52
				M.overlays+=/obj/Kirin_S53
				M.overlays+=/obj/Kirin_S54
				M.overlays+=/obj/Kirin_S55
				M.overlays+=/obj/Kirin_S56
				M.overlays+=/obj/Kirin_S57
				M.overlays+=/obj/Kirin_S58
				M.overlays+=/obj/Kirin_S59
				M.overlays+=/obj/Kirin_S60
				M.overlays+=/obj/Kirin_S61
				M.overlays+=/obj/Kirin_S62
				M.overlays+=/obj/Kirin_S63
				M.overlays+=/obj/Kirin_S64
				var/damage = usr.nin/3.9 + usr.shurikenskill/3.9 + usr.gen/3.9 + usr.tai/3.9 + usr.trovaoN*1.75 - M.Resistencia/2.35
				if(damage<=0)damage=0
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				M.Death(usr)
				usr << "[usr] inflinge [damage] de dano com seu Kirin em [M]"
				sleep(20)
				usr.atmosphere=0
				M.overlays-=/obj/Kirin_S5
				M.overlays-=/obj/Kirin_S6
				M.overlays-=/obj/Kirin_S7
				M.overlays-=/obj/Kirin_S8
				M.overlays-=/obj/Kirin_S9
				M.overlays-=/obj/Kirin_S10
				M.overlays-=/obj/Kirin_S11
				M.overlays-=/obj/Kirin_S12
				M.overlays-=/obj/Kirin_S13
				M.overlays-=/obj/Kirin_S14
				M.overlays-=/obj/Kirin_S15
				M.overlays-=/obj/Kirin_S16
				M.overlays-=/obj/Kirin_S17
				M.overlays-=/obj/Kirin_S18
				M.overlays-=/obj/Kirin_S19
				M.overlays-=/obj/Kirin_S20
				M.overlays-=/obj/Kirin_S21
				M.overlays-=/obj/Kirin_S22
				M.overlays-=/obj/Kirin_S23
				M.overlays-=/obj/Kirin_S24
				M.overlays-=/obj/Kirin_S25
				M.overlays-=/obj/Kirin_S26
				M.overlays-=/obj/Kirin_S27
				M.overlays-=/obj/Kirin_S28
				M.overlays-=/obj/Kirin_S29
				M.overlays-=/obj/Kirin_S30
				M.overlays-=/obj/Kirin_S31
				M.overlays-=/obj/Kirin_S32
				M.overlays-=/obj/Kirin_S33
				M.overlays-=/obj/Kirin_S34
				M.overlays-=/obj/Kirin_S35
				M.overlays-=/obj/Kirin_S36
				M.overlays-=/obj/Kirin_S37
				M.overlays-=/obj/Kirin_S38
				M.overlays-=/obj/Kirin_S39
				M.overlays-=/obj/Kirin_S40
				M.overlays-=/obj/Kirin_S41
				M.overlays-=/obj/Kirin_S42
				M.overlays-=/obj/Kirin_S43
				M.overlays-=/obj/Kirin_S44
				M.overlays-=/obj/Kirin_S45
				M.overlays-=/obj/Kirin_S46
				M.overlays-=/obj/Kirin_S47
				M.overlays-=/obj/Kirin_S48
				M.overlays-=/obj/Kirin_S49
				M.overlays-=/obj/Kirin_S50
				M.overlays-=/obj/Kirin_S51
				M.overlays-=/obj/Kirin_S52
				M.overlays-=/obj/Kirin_S53
				M.overlays-=/obj/Kirin_S54
				M.overlays-=/obj/Kirin_S55
				M.overlays-=/obj/Kirin_S56
				M.overlays-=/obj/Kirin_S57
				M.overlays-=/obj/Kirin_S58
				M.overlays-=/obj/Kirin_S59
				M.overlays-=/obj/Kirin_S60
				M.overlays-=/obj/Kirin_S61
				M.overlays-=/obj/Kirin_S62
				M.overlays-=/obj/Kirin_S63
				M.overlays-=/obj/Kirin_S64


//==== SUIGETSU =================================================================================



mob/var/suika=0
mob/jutsu
	verb
		Corpoa() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Suika no Jutsu"
			if(usr.froze&&!usr.Kaiten)
				usr<<"Você está paralisado"
				return
			if(usr.Frozen&&!usr.Kaiten)
				usr<<"Você está paralisado"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.suika)
				usr<<"Vc esta desidratado....espere"
				return
			if(!usr.Kaiten&&!usr.cast)
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Suika no Jutsu"
				usr.overlays+='corpoagua.dmi'
				usr.suika=1
				usr.Kaiten =1
				sleep(100)
				usr.overlays-='corpoagua.dmi'
				usr.Kaiten=0
				usr<<"Seu corpo parece desidratado....seu suika no jutsu terminou!"
				usr.suika=0


mob/var/Suigarmor=0
mob/jutsu
	verb
		Buffa()
			set category = "Jutsus"
			set name = "Suiton: Gousuiwan no Jutsu"
			if(usr.froze)
				usr<<"Você está paralisado"
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
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(!usr.Suigarmor&&!usr.cast)
				usr.chakra-=1000
				if(usr.chakra<=1000)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				view()<<"<font color = blue>[usr]: Suiton: Gousuiwan no Jutsu!"
				usr.Suigarmor =1
				usr.nin = usr.nin*1.05
				usr.gen = usr.gen*1.05
				usr.tai = usr.tai*1.05
				usr.shurikenskill = usr.shurikenskill*1.05
				sand
				if(usr.Suigarmor)
					usr.chakra -=10
					if(usr.chakra <= 10)
						usr.Suigarmor = 0
						usr.buff=0
						usr.nin = usr.Mnin
						usr.gen = usr.Mgen
						usr.tai = usr.Mtai
						usr.shurikenskill = usr.Mshurikenskill
						return
					else
						sleep(8)
						goto sand
			else if(usr.Suigarmor)
				usr.Suigarmor =0
				usr.buff=0
				usr.nin = usr.Mnin
				usr.gen = usr.Mgen
				usr.tai = usr.Mtai
				usr.shurikenskill = usr.Mshurikenskill
				usr<<"Você desativa seu buff de agua."


obj
	suigetsuH
		name = "Parade de agua"
		icon = 'suigetsuH.dmi'
		layer = MOB_LAYER+999
		base
			icon_state = "h1"
			density = 1
			New()
				..()
				overlays += /obj/suigetsuH/h2/
				overlays += /obj/suigetsuH/h4/
				overlays += /obj/suigetsuH/h6/
				overlays += /obj/suigetsuH/h8/
				overlays += /obj/suigetsuH/h10/

		h2
			icon_state = "h2"
			pixel_y = 32
		h3
			icon_state = "h3"
	//		pixel_x = -32
			density = 1
		h4
			icon_state = "h4"
			pixel_y = 32
			pixel_x = -32
		h5
			icon_state = "h5"
	//		pixel_x = -64
			density = 1
		h6
			icon_state = "h6"
			pixel_y = 32
			pixel_x = -64
		h7
			icon_state = "h7"
	//		pixel_x = -96
			density = 1
		h8
			icon_state = "h8"
			pixel_y = 32
			pixel_x = -96
		h9
			icon_state = "h9"
	//		pixel_x = -128
			density = 1
		h10
			icon_state = "h10"
			pixel_y = 32
			pixel_x = -128
		h11
			icon_state = "h11"
	//		pixel_x = -160
			density = 1
		h12
			icon_state = "h12"
			pixel_y = 32
		//	pixel_x = -160

obj
	suigetsuV
		name = "Parade de agua"
		icon = 'suigetsuV.dmi'
		layer = MOB_LAYER+999
		base
			icon_state = "h1"
			density = 1
			New()
				..()
				overlays += /obj/suigetsuV/v2/
				overlays += /obj/suigetsuV/v4/
				overlays += /obj/suigetsuV/v6/
				overlays += /obj/suigetsuV/v8/
				overlays += /obj/suigetsuV/v10/

		v2
			icon_state = "h2"
			pixel_x = -32
		v3
			icon_state = "h3"
	//		pixel_x = -32
			density = 1
		v4
			icon_state = "h4"
			pixel_y = 32
			pixel_x = -32
		v5
			icon_state = "h5"
	//		pixel_x = -64
			density = 1
		v6
			icon_state = "h6"
			pixel_x = -32
			pixel_y = 64
		v7
			icon_state = "h7"
	//		pixel_x = -96
			density = 1
		v8
			icon_state = "h8"
			pixel_x = -32
			pixel_y = 96
		v9
			icon_state = "h9"
	//		pixel_x = -128
			density = 1
		v10
			icon_state = "h10"
			pixel_x = -32
			pixel_y = 128
		v11
			icon_state = "h11"
	//		pixel_x = -160
			density = 1
		v12
			icon_state = "h12"
			pixel_x = -32
		//	pixel_x = -160

mob/var/cdsb = 0
mob/jutsu
	verb
		Barreiraa()
			set category = "Jutsus"
			set name = "Suiton: Suijinheki"
			if(usr.cdsb)
				usr<<"<b> Cooldown </b>" // If the mob's cast var is one...
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.Frozen)
				usr<<"Você está paralizado!"
				return
			if(usr.caught)
				usr<<"Você foi capturado!"
				return
			if(usr.captured)
				usr<<"Você foi capturado!"
				return
			if(usr.froze)
				usr<<"Você está paralizado!"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa!"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita!"
				return
			else // If the cast var isn't 1...
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.cdsb=1
				spawn()usr.Cooldown(150,"Suiton: Suijinheki")
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Suiton: Suijinheki"
				switch(usr.dir)
					if(SOUTH)
						var/obj/suigetsuH/base/S = new /obj/suigetsuH/base/
						S.loc = locate(usr.x+2,usr.y-1,usr.z)
						S.Gowner = usr
						var/obj/suigetsuH/h3/H3 = new/obj/suigetsuH/h3/
						H3.loc = locate(S.x-1,S.y,S.z)
						H3.Gowner = usr
						var/obj/suigetsuH/h5/H5 = new/obj/suigetsuH/h5/
						H5.loc = locate(S.x-2,S.y,S.z)
						H5.Gowner = usr
						var/obj/suigetsuH/h7/H7 = new/obj/suigetsuH/h7/
						H7.loc = locate(S.x-3,S.y,S.z)
						H7.Gowner = usr
						var/obj/suigetsuH/h9/H9 = new/obj/suigetsuH/h9/
						H9.loc = locate(S.x-4,S.y,S.z)
						H9.Gowner = usr
						var/obj/suigetsuH/h11/H11 = new/obj/suigetsuH/h11/
						H11.loc = locate(S.x-5,S.y,S.z)
						H11.Gowner = usr
						H11.overlays += /obj/suigetsuH/h12/
					if(NORTH)
						var/obj/suigetsuH/base/S = new /obj/suigetsuH/base/
						S.loc = locate(usr.x+2,usr.y+1,usr.z)
						S.Gowner = usr
						var/obj/suigetsuH/h3/H3 = new/obj/suigetsuH/h3/
						H3.loc = locate(S.x-1,S.y,S.z)
						H3.Gowner = usr
						var/obj/suigetsuH/h5/H5 = new/obj/suigetsuH/h5/
						H5.loc = locate(S.x-2,S.y,S.z)
						H5.Gowner = usr
						var/obj/suigetsuH/h7/H7 = new/obj/suigetsuH/h7/
						H7.loc = locate(S.x-3,S.y,S.z)
						H7.Gowner = usr
						var/obj/suigetsuH/h9/H9 = new/obj/suigetsuH/h9/
						H9.loc = locate(S.x-4,S.y,S.z)
						H9.Gowner = usr
						var/obj/suigetsuH/h11/H11 = new/obj/suigetsuH/h11/
						H11.loc = locate(S.x-5,S.y,S.z)
						H11.Gowner = usr
						H11.overlays += /obj/suigetsuH/h12/
					if(EAST)
						var/obj/suigetsuV/base/S = new /obj/suigetsuV/base/
						S.loc = locate(usr.x+1,usr.y-3,usr.z)
						S.Gowner = usr
						var/obj/suigetsuV/v3/H3 = new/obj/suigetsuV/v3/
						H3.loc = locate(S.x,S.y+1,S.z)
						H3.Gowner = usr
						var/obj/suigetsuV/v5/H5 = new/obj/suigetsuV/v5/
						H5.loc = locate(S.x,S.y+2,S.z)
						H5.Gowner = usr
						var/obj/suigetsuV/v7/H7 = new/obj/suigetsuV/v7/
						H7.loc = locate(S.x,S.y+3,S.z)
						H7.Gowner = usr
						var/obj/suigetsuV/v9/H9 = new/obj/suigetsuV/v9/
						H9.loc = locate(S.x,S.y+4,S.z)
						H9.Gowner = usr
						var/obj/suigetsuV/v11/H11 = new/obj/suigetsuV/v11/
						H11.loc = locate(S.x,S.y+5,S.z)
						H11.Gowner = usr
						H11.overlays += /obj/suigetsuV/v12/
					if(WEST)
						var/obj/suigetsuV/base/S = new /obj/suigetsuV/base/
						S.loc = locate(usr.x-1,usr.y-3,usr.z)
						S.Gowner = usr
						var/obj/suigetsuV/v3/H3 = new/obj/suigetsuV/v3/
						H3.loc = locate(S.x,S.y+1,S.z)
						H3.Gowner = usr
						var/obj/suigetsuV/v5/H5 = new/obj/suigetsuV/v5/
						H5.loc = locate(S.x,S.y+2,S.z)
						H5.Gowner = usr
						var/obj/suigetsuV/v7/H7 = new/obj/suigetsuV/v7/
						H7.loc = locate(S.x,S.y+3,S.z)
						H7.Gowner = usr
						var/obj/suigetsuV/v9/H9 = new/obj/suigetsuV/v9/
						H9.loc = locate(S.x,S.y+4,S.z)
						H9.Gowner = usr
						var/obj/suigetsuV/v11/H11 = new/obj/suigetsuV/v11/
						H11.loc = locate(S.x,S.y+5,S.z)
						H11.Gowner = usr
						H11.overlays += /obj/suigetsuV/v12/


				sleep(240)
				for(var/obj/suigetsuH/C in world)
					if(C.Gowner == usr)
						del(C)
				for(var/obj/suigetsuV/C in world)
					if(C.Gowner == usr)
						del(C)


obj
	bunshins
		Mb//being worked on dont use
			verb/Mb()
				set category = "Jutsus"
				set name = "Mizu Bunshin"
				if(usr.cdmizusuigetsu)
					usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Mizu Bunshin</b>!"
					return
				usr.Handseals()
				if(usr.cast)
					return
				if(usr.PK==0)
					usr<<"Zona NON-PK!!!"
					return
				if(usr.Frozen)
					usr<<"Você está Congelado"
					return
				if(usr.caught)
					usr<<"Você foi capturado"
					return
				if(usr.captured)
					usr<<"Você foi capturado"
					return
				if(usr.inso)
					return
				if(usr.froze)
					usr<<"Você está congelado"
					return
				if(usr.resting)
					usr<<"Não enquanto descansa"
					return
				if(usr.meditating)
					usr<<"Não enquanto descansa"
					return
				if(usr.Kaiten||usr.counter)
					return
				if(usr.gate1)
					return
				if(usr.gate2)
					return
				if(usr.gate3)
					return
				if(usr.gate4)
					return
				if(usr.gate5)
					return
				if(usr.gate6)
					return
				if(usr.gate7)
					return
				if(usr.gate8)
					return
				if(!usr.handseals)
					return
				else
					if(usr.cdmizusuigetsu)return
					usr.cdmizusuigetsu=1
					spawn()usr.Cooldown(1600,"Mizu Suigetsu")
					usr.RandomChakra1()
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
//					usr.MokKage()
					if(usr.seals<100)
						usr.cast = 1
						view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Mizu Bunshin!"
						var/mob/enemy/Mizu/K = new /mob/enemy/Mizu
						usr.Chakragain()
						if(K)
							K.name = "[usr.name]"
							if(usr.party)
								K.party=1
								K.partysensei="[usr.partysensei]"
							K.original = usr
							K.icon = usr.icon
							K.icon_state = usr.icon_state
							K.overlays += usr.overlays
							K.loc = locate(usr.x-1, usr.y, usr.z)
							flick("smoke2",K)
							K.max_exp = 2
							K.guardp = 1
							K.Village = usr.Village
							K.exp = 2
							K.nin = usr.nin/4
							K.tai = usr.tai/4
							K.shurikenskill= usr.nin/6
							K.health = usr.maxhealth/2
						sleep(14)
						usr.cast=0
						usr.chakra -= 5000
						sleep(1200)
						for(var/obj/Peins/P in world)
							if(P.Gowner == usr)
								del(P)
						del(K)
					else if(usr.seals>=100)
						usr.cast = 1
						view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Mizu Bunshin!"
						var/mob/enemy/Mizu/K = new /mob/enemy/Mizu
						var/mob/enemy/Mizu/L = new /mob/enemy/Mizu
						usr.Chakragain()
						if(K)
							K.name = "[usr.name]"
							if(usr.party)
								K.party=1
								K.partysensei="[usr.partysensei]"
							K.original = usr
							K.icon = usr.icon
							K.icon_state = usr.icon_state
							K.overlays += usr.overlays
							K.loc = locate(usr.x-1, usr.y, usr.z)
							flick("smoke2",K)
							K.max_exp = 2
							K.guardp = 1
							K.Village = usr.Village
							K.exp = 2
							K.nin = usr.nin/8
							K.tai = usr.tai/4
							K.shurikenskill= usr.nin/6
							K.health = usr.maxhealth/2
						if(L)
							L.name = "[usr.name]"
							if(usr.party)
								L.party=1
								L.partysensei="[usr.partysensei]"
							L.original = usr
							L.icon = usr.icon
							L.icon_state = usr.icon_state
							L.overlays += usr.overlays
							L.loc = locate(usr.x+1, usr.y, usr.z)
							flick("smoke2",L)
							L.max_exp = 2
							L.guardp = 1
							L.Village = usr.Village
							L.exp = 2
							L.nin = usr.nin/8
							L.tai = usr.tai/4
							L.shurikenskill= usr.nin/6
							L.health = usr.maxhealth/2
						sleep(14)
						usr.cast=0
						usr.chakra -= 5000
						sleep(1200)
						for(var/obj/Peins/P in world)
							if(P.Gowner == usr)
								del(P)
						del(K)
						del(L)


//==== SOUND ORGANIZATION =======================================================================

//==== KIDOUMARU ================================================================================


mob/jutsu
	verb
		Spiderarmor()
			set category = "Jutsus"
			set name = "Nenkin no Yoroi"
			if(usr.chakra <= 1000)
				usr<<"Você não possui chakra suficiente!(1k)"
				return
			if(usr.cast)
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
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
				return
			if(!usr.Zarmor&&!usr.cast)
				view()<<"<font color = blue>[usr]: Nenkin no Yoroi!"
				usr.Zarmor =1
				usr.overlays += 'SpiderArmor.dmi'
				usr.tai = usr.tai*1.05
				usr.gen = usr.gen*1.05
				usr.nin = usr.nin*1.05
				usr.shurikenskill = usr.shurikenskill*1.05
				fire
				if(usr.Zarmor)
					usr.chakra -=1000
					if(usr.chakra <= 500)
						usr.Zarmor = 0
						usr.buff=0
						usr.overlays -= 'SpiderArmor.dmi'
						usr.tai = usr.Mtai
						usr.gen = usr.Mgen
						usr.nin = usr.Mnin
						usr.shurikenskill = usr.Mshurikenskill
						return
					else
						sleep(4)
						goto fire
			else if(usr.Zarmor)
				usr.Zarmor =0
				usr.buff=0
				usr.overlays -= 'SpiderArmor.dmi'
				usr.tai = usr.Mtai
				usr.gen = usr.Mgen
				usr.nin = usr.Mnin
				usr.shurikenskill = usr.Mshurikenskill
				usr<<"Você desativa o Nenkin no Yoroi."


mob/Spiderclan
	verb
		CreateSpiderBow()//kaguya sword
			set category="Jutsus"
			set name = "Kumonenkin - Arco"
			if (usr.cast)
				return
			if (usr.chakra <= 1000)
				usr<<"Não tem chakra o bastante. (1k)"
			if(usr.froze)
				usr<<"Você está paralisado"
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
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			else
				usr.chakra -= 1000
				usr<<"Vc criou um arco"
				var/obj/SpiderBow/B = new/obj/SpiderBow
				B.loc = usr


obj
	SpiderBow
		name = "Arco"
		icon = 'SpiderBow.dmi'
		icon_state=""
		worn = 0
		price = 0
		verb
			Usar()
				if(usr:SWworn == 1)
					src:worn = 0
					usr:SWworn = 0
					usr.overlays -= 'SpiderBow.dmi'
					usr << "Você remove o(a) [src.name]."
					src.suffix = ""
					usr.spinesword = 0
					usr.swordD=0
					usr.verbs -= new /mob/Spiderclan/verb/HomingArrows()
				else
					if(usr.spinesword)
						usr<<"Você só pode usar 1 deles."
						return
					src.worn = 1
					usr:SWworn = 1
					usr.overlays += 'SpiderBow.dmi'
					usr << "Você equipa o(a) [src.name]."
					src.suffix = "Equipped"
					usr.verbs += new /mob/Spiderclan/verb/HomingArrows()
					usr.spinesword = 1
					usr.swordD=1
			Olhar()
				usr<<"Esse é um Arco feito de Kumonenkin."


mob/Spiderclan
	verb
		CreateSpiderArrows()//kaguya sword
			set category="Jutsus"
			set name = "Kumonenkin - Flecha"
			if (usr.cast)
				return
			if (usr.chakra <= 3000)
				usr<<"Não tem chakra o bastante.(3k)"
			if(usr.froze)
				usr<<"Você está paralisado"
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
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			else
				usr.chakra -= 3000
				var/obj/SpiderArrow/B = new/obj/SpiderArrow
				B.loc = usr
				for(var/obj/SpiderArrow/O in usr.contents)
					O.ammount+=50

mob/var/cdflexa = 0
obj
	SpiderArrow
		name = "Flecha"
		icon = 'SpiderArrow.dmi'
		icon_state = "arrow"
		worn = 0
		density=1
		oname="flecha"
		price = 1000
		New()
			..()
			spawn()
				src.CheckAmount()
		proc
			CheckAmount()
				src.name= "[oname] ([src.ammount])"
		verb
			Olhar()

				usr<<"Essa é uma flecha feita de Kumonenkin"
			Destruir()

				for(var/obj/SpiderArrow/O in usr) del O
				usr<<"Flecha destruída!"

			Pegar()

				set src in oview(1)
				usr<<"Você pegou o(a) [src]"
				for(var/obj/SpiderArrow/O in usr.contents)
					counter+=1
				if(counter<=0)
					Move(usr)
				else
					for(var/obj/SpiderArrow/O in usr.contents)
						O.ammount+=src.ammount
						O.name= "[O.name] ([O.ammount])"
						del(src)
			Atirar()

				set hidden = 1
				if(usr.cdflexa)
					usr<<"COOLDOWN"
					return
				if(usr.weaponthrow)
					return
				if(usr.PK==0)
					usr<<"Zona NON-PK!!!"
					return
				var/obj/Kunai/L = new()
				L.loc=usr.loc
				usr.weaponthrow=1
				L.tai=usr.tai/4.25 + usr.nin/4.25 + usr.gen/4.25 + usr.shurikenskill/4.25
				L.dir = usr.dir
				L.Move_Delay=0.6
				L.Gowner=usr
				walk(L,usr.dir)
				for(var/obj/SpiderArrow/O in usr.contents)
					O.ammount-=1
					if(O.ammount<=0)
						del(O)
					else
						src.name="[O.oname] ([O.ammount])"
				sleep(100)
				usr.weaponthrow=0

		New()
			spawn(150) del src
			..()
		Bump(A)
			var/mob/O = src.Gowner
			if(!O) del src
			if(ismob(A))
				var/mob/M = A
				if(M.party&&M.partysensei==O.partysensei)return
				if(M.Kaiten||M.sphere)
					return
				var/damage = O.tai/4.25 + O.nin/4.25 + O.gen/4.25 + O.shurikenskill/4.25 - M.Resistencia/2
				if(damage >= 1)
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					view(M) << "[M] foi acertado pela Flecha de [Gowner] perdendo [damage] de vida!"
					M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)


mob/var/cdkflexa = 0
mob/Spiderclan
	verb
		HomingArrows() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Kumosenkyuu Suzaku"
			if(usr.cdkflexa)
				usr<<"<b> Aguarde para usar o Kumosenkyuu Suzaku novamente!"
				return
			if(usr.cast||usr.Kaiten == 1) // If the mob's cast var is one...
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
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
			if(usr.chakra <= 500)
				usr<<"Você não possui chakra suficiente! (500)"
				return
			else // If the cast var isn't 1...
				usr.cdkflexa = 1
				spawn()usr.Cooldown(100,"Kumosenkyuu Suzaku")
				usr.chakra -= 500
				var/obj/SpiderArrow/L = new()
				L.loc=usr.loc
				usr.weaponthrow=1
				L.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5
				L.dir = usr.dir
				L.Move_Delay=0.7
				L.Gowner=usr
				walk(L,usr.dir)
				if (target == null)
					del(L)
				for(var/obj/SpiderArrow/O in usr.contents)
					O.ammount-=1
					if(O.ammount<=0)
						del(O)
				sleep(100)
				usr.weaponthrow=0


mob/var/cdksousou = 0
mob/Spiderclan
	verb
		WebSabakuSousou()
			set category = "Jutsus"
			set name = "Web Sousou"
			if(usr.cdksousou)
				usr<<"<b>Aguarde para usar o Web Sousou novamente!"
				return
			if(usr.froze)
				usr<<"Você está paralisado"
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
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			for(var/mob/M in oview(4))
				if(M.party&&M.partysensei==usr.partysensei)return
				if(usr.sphere)
					return
				if(src.Kaiten)
					return
				if(usr.PK==0)
					usr<<"Zona NON-PK!!!"
					return
				if(M.PK==0)
					usr<<"Zona NON-PK!!!"
					return
				if(M.captured)
					usr.cdksousou = 1
					spawn()usr.Cooldown(120,"Web Sousou")
					usr.RandomChakra1()
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
//					usr.cast=1
					var/damage=usr.tai/4.5 + usr.gen/4.5 + usr.nin/4.5 + usr.shurikenskill/4.5 - M.Resistencia/2
					if(damage<=0)damage=0
					view(usr)<<"Web Sousou!"
					flick("Susanoo",M)
					M.overlays-='Susanoo.dmi'
					M.overlays-='Susanoo.dmi'
					usr.Chakragain()
					M.overlays-='Susanoo.dmi'
					M.health-=damage
					F_damage(M, damage, "#ff0000")
					if(M.health<=0)
						M.Death(usr)
						return
//					sleep(40)
//					usr.cast=0
					usr.Castando()
				else
					return

mob/var/cdkkyuu = 0
mob/Spiderclan
	verb
		WebSabakuKyuu()
			set category = "Jutsus"
			set name = "Web Kyuu"
			if(usr.cdkkyuu)
				usr<<"<b>Aguarde para usar o Web Kyuu Novamente!"
				return
			if(usr.cast)
				return
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
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
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.sphere)
				return
			if(usr.Kaiten)
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			else
				for(var/mob/M in oview(3))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(M.PK==0)
						usr<<"Zona NON-PK!!!"
						return
					if(M.Kaiten)
						return
					if(M.captured)
						usr<<"Ele já está capturado!"
						return
					usr.cdkkyuu = 1
					spawn()usr.Cooldown(100,"Web Kyuu")
					usr.RandomChakra1()
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					if(usr.KyuuN>=100)
	//					usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam
						usr.KyuuN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Web Kyuu!"
						M.overlays+='SpiderWrap.dmi'
						M.captured=1
						M.froze=1
						M.move=0
						sleep(50)
						if(M)
							M.captured=0
							M.froze=0
							M.move=1
							M.overlays-='SpiderWrap.dmi'
							M.overlays-='SpiderWrap.dmi'
							M.overlays-='SpiderWrap.dmi'
							M.overlays-='SpiderWrap.dmi'
							usr.cast=0
						return
					else
						usr.random=rand(1,5)
						if(usr.random==1)
	//						usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam
							usr.KyuuN += 1
							view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Web Kyuu!"
							M.overlays+='SpiderWrap.dmi'
							M.captured=1
							M.froze=1
							M.move=0
							sleep(50)
							if(M)
								M.captured=0
								M.froze=0
								M.move=1
								M.overlays-='SpiderWrap.dmi'
								M.overlays-='SpiderWrap.dmi'
								M.overlays-='SpiderWrap.dmi'
								M.overlays-='SpiderWrap.dmi'
	//							usr.cast=0
							return
						if(usr.random==2)
	//						usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam
							usr.KyuuN += 1
							view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Web Kyuu!"
							M.overlays+='SpiderWrap.dmi'
							M.captured=1
							M.froze=1
							M.move=0
							sleep(50)
							if(M)
								M.captured=0
								M.froze=0
								M.move=1
								M.overlays-='SpiderWrap.dmi'
								M.overlays-='SpiderWrap.dmi'
								M.overlays-='SpiderWrap.dmi'
								M.overlays-='SpiderWrap.dmi'
							usr.cast=0
							return
						if(usr.random==3)
							usr<<"Você falhou em usar o Web Kyuu"
	//						usr.cast=1
	//						sleep(40)
	//						usr.cast=0
							usr.Castando()
							return
						if(usr.random==4)
	/*						usr<<"Você falhou em usar o Web Kyuu"
							usr.cast=1
							sleep(40)
							usr.cast=0*/
							usr.Castando()
							return
						if(usr.random==5)
							usr<<"Você falhou em usar o Web Kyuu"
	/*						usr.cast=1
							sleep(40)
							usr.cast=0*/
							usr.Castando()
							return
	//					sleep(60)
	//					usr.cast=0
						if(M)
							M.captured=0


//==== SAKON ====================================================================================

mob/parasite/
	verb
		DescansarMetade()
			set category = "Jutsus"
			set name = "Descansar Metade"
			if(usr.cddescansarmetade)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Descansar Metade</b>!"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.inso)
				return
			if(usr.caught)
				usr<<"Você foi capturado!"
				return
			if(usr.Frozen)
				usr<<"Você está paralizado!"
				return
			if(usr.captured)
				usr<<"Você foi capturado!"
				return
			if(usr.chakra <= 0)
				usr<<"Você não tem chakra suficiente!!"
				return
			if(usr.froze)
				usr<<"Você está paralizado!"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa!"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita!"
				return
			if(!usr.Parasited)
				usr << "Você não pode usar essa técnica sem a sua outra metade!"
				return
			else
				if(usr.cddescansarmetade)return
				usr.cddescansarmetade=1
				spawn()usr.Cooldown(600,"Descansar Metade")
				usr<<"Você troca sua metade ativa, enquanto a outra descansa..."
				usr.health += usr.maxhealth/2
				if(usr.health >= usr.maxhealth)
					usr.health = usr.maxhealth
				usr.chakra -= usr.Mchakra/20
				if (usr.chakra < 0)
					usr.chakra = 0
				sleep(30)
	verb
		Parasitar()
			set category = "Jutsus"
			set name = "Parasitar"
			if(usr.cdparasitar)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Parasitar</b>!"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.inso)
				return
			if(usr.caught)
				usr<<"Você foi capturado!"
				return
			if(usr.Frozen)
				usr<<"Você está paralizado!"
				return
			if(usr.captured)
				usr<<"Você foi capturado!"
				return
			if(usr.chakra <= 1000)
				usr<<"Você não tem chakra suficiente!! (1k)"
				return
			if(usr.froze)
				usr<<"Você está paralizado!"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa!"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita!"
				return
			else
				for(var/mob/M in oview(3))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(M.PK==0)
						usr<<"[M] está em Zona NON-PK!!!"
						return
					if(M.Kaiten)
						usr <<"Impossível atacá-lo desse jeito."
						return
					if(usr.cdparasitar)return
					usr.cdparasitar=1
					spawn()usr.Cooldown(300,"Parasitar")
					usr<<"Metade de você se mistura ao corpo de [M]!"
					M<<"[usr] misturou metade de seu corpo a você!"
					usr.icon = "BaseRed.dmi"
					M.icon = "BaseParasite.dmi"
					usr.Parasited = 0
					usr.chakra-=1000
					M.Parasited = 1
					M.parasitedby = "[usr]"
					sleep(800)
					if(M)
						if(M.Parasited)
							usr << "Você não aguenta mais ficar no corpo de [M]!"
							usr.icon = usr.Oicon
							usr.Parasited = 1
							M << "[usr] deixou seu corpo!"
							M.icon = M.Oicon
							M.Parasited = 0
							M.parasitedby = ""
						else
							usr.icon = usr.Oicon
							usr.Parasited = 1
					else
						usr << "A sua outra metade volta a você!"
						usr.icon = usr.Oicon
						usr.Parasited = 1
	verb
		SelfHurt()
			set category = "Jutsus"
			set name = "Kisei Kikai no Jutsu"
			if(usr.cdkiseikikai)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Kisei Kikai no Jutsu</b>!"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.inso)
				return
			if(usr.caught)
				usr<<"Você foi capturado!"
				return
			if(usr.Frozen)
				usr<<"Você está paralizado!"
				return
			if(usr.captured)
				usr<<"Você foi capturado!"
				return
			if(usr.froze)
				usr<<"Você está paralizado!"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa!"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita!"
				return
			if(usr.cdkiseikikai)return
			usr.cdkiseikikai=1
			spawn()usr.Cooldown(100,"Kisei Kikai no Jutsu")
			for(var/mob/M in orange(5))
				if(M.party&&M.partysensei==usr.partysensei)return
				if(M.Parasited&&M.parasitedby=="[usr]")
					usr.RandomChakra1()
					if(M.PK==0)
						usr<<"Zona NON-PK!!!"
						return
					if(M.Kaiten)
						usr <<"Impossível atacá-lo desse jeito."
						return
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					usr.cast = 1
					M.cast = 1
					M << "Você foi atacado pelo seu parasita!"
					usr << "Sua outra metade atacou [M]"
					var/dano = usr.nin/4.5 + usr.gen/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5
					view(6)<< "[M] recebeu [dano] causado pelo parasita de [usr]"
					M.health -= dano
					M.Death(usr)
					sleep(20)
					usr.cast = 0
					M.cast = 0
	verb
		Imobilizar()
			set category = "Jutsus"
			set name = "Imobilizar"
			if(usr.cdimobilizar)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Imobilizar</b>!"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.inso)
				return
			if(usr.caught)
				usr<<"Você foi capturado!"
				return
			if(usr.Frozen)
				usr<<"Você está paralizado!"
				return
			if(usr.captured)
				usr<<"Você foi capturado!"
				return
			if(usr.froze)
				usr<<"Você está paralizado!"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa!"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita!"
				return
			if(usr.cdimobilizar)return
			usr.cdimobilizar=1
			spawn()usr.Cooldown(150,"Imobilizar")
			for(var/mob/M in orange(5))
				if(M.party&&M.partysensei==usr.partysensei)return
				if(M.Parasited&&M.parasitedby=="[usr]")
					usr.RandomChakra1()
					if(M.PK==0)
						usr<<"Zona NON-PK!!!"
						return
					if(M.Kaiten)
						return
						usr <<"Impossível atacá-lo desse jeito."
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					view(6)<< "A metade de [usr] te imobiliza pelas costas! Você não pode se mover!"
					M.cast = 1
					M.froze=1
					M.move=0
					sleep(40)
					M.cast = 0
					M.froze=0
					M.move=1
					sleep(10)
					usr.cast = 0
	verb
		AtaqueDoIrmao()
			set category = "Jutsus"
			set name = "Ataque do Irmão"
			if(usr.cdataquedoirmao)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Ataque do Irmão</b>!"
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.inso)
				return
			if(usr.caught)
				usr<<"Você foi capturado!"
				return
			if(usr.Frozen)
				usr<<"Você está paralizado!"
				return
			if(usr.captured)
				usr<<"Você foi capturado!"
				return
			if(!usr.Parasited)
				usr << "Você não pode usar essa técnica sem a sua outra metade!"
				return
			if(usr.froze)
				usr<<"Você está paralizado!"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa!"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita!"
				return
			else
				if(usr.cdataquedoirmao)return
				usr.cdataquedoirmao=1
				spawn()usr.Cooldown(120,"Ataque do Irmão")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				else
					usr.KillBunshin()
					usr.cast=1
					view()<<"Metade de [usr] se solta de seu corpo e corre para o ataque!!"
					if(usr.client)
						var/mob/enemy/Mizu/K = new /mob/enemy/Mizu
						usr.Chakragain()
						if(K)
							K.name = "[usr.name]"
							if(usr.party)
								K.party=1
								K.partysensei="[usr.partysensei]"
							K.original = usr
							K.icon = usr.icon
							K.icon_state = usr.icon_state
							K.overlays += usr.overlays
							K.loc = locate(usr.x-1, usr.y, usr.z)
							flick("smoke2",K)
							K.max_exp = 2
							K.guardp = 1
							K.Village = usr.Village
							K.exp = 2
							K.nin = usr.nin/6 + usr.gen/6 + usr.tai/6 + usr.shurikenskill/6
							K.tai = usr.nin/6 + usr.gen/6 + usr.tai/6 + usr.shurikenskill/6
							K.shurikenskill= usr.nin/6 + usr.gen/6 + usr.tai/6 + usr.shurikenskill/6
							K.health = usr.maxhealth/3
						sleep(14)
						usr.cast=0
						usr.chakra -= 5000
						sleep(150)
						for(var/obj/Peins/P in world)
							if(P.Gowner == usr)
								del(P)
/*				var/mob/npcs/Bunshin/K = new /mob/npcs/KBunshin
				if(K)
					K.name = "[usr.name]"
					K.original = usr
					K.icon = 'BaseRed.dmi'
					usr.icon = 'BaseRed.dmi'
					K.overlays += usr.overlays
					K.loc = locate(usr.x-1, usr.y, usr.z)
					K.max_exp = 2
					K.exp = 2
					K.tai = usr.nin
					K.health = usr.maxhealth
					usr.Parasited = 0
					walk_towards(K,M)*/
						usr << "Sua metade voltou ao seu corpo para descansar"
						usr.Parasited = 1
						usr.icon = usr.Oicon
						if(K)
							del(K)


//==== JIROUBOU =================================================================================


mob/jutsu
	verb
		JiroArmor()
			set category = "Jutsus"
			set name = "Rakanken Ryu"
			if(usr.chakra <= 500)
				usr<<"Você não possui chakra suficiente!(500)"
				return
			if(usr.cast)
				usr<<"Não agora."
				return
			if(usr.froze)
				usr<<"Você está paralisado"
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
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(!usr.Barmor&&!usr.cast)
				view()<<"<font color = blue>[usr]: Rakanken Ryu!"
				usr.Barmor =1
				usr.cdkkyuu = 1
				usr.tai = usr.tai*1.05
				usr.gen = usr.gen*1.05
				usr.nin = usr.nin*1.05
				usr.shurikenskill = usr.shurikenskill*1.05
				sand
				if(usr.Barmor)
					usr.chakra -=1000
					if(usr.chakra <= 500)
						usr.Barmor = 0
						usr.tai = usr.Mtai
						usr.gen = usr.Mgen
						usr.nin = usr.Mnin
						usr.shurikenskill = usr.Mshurikenskill
						return
					else
						sleep(4)
						goto sand
			else if(usr.Barmor)
				usr.Barmor =0
				usr.tai = usr.Mtai
				usr.gen = usr.Mgen
				usr.nin = usr.Mnin
				usr.shurikenskill = usr.Mshurikenskill
				usr<<"Você cancelou o Rakanken Ryu."

mob/var/cdjfrez = 0
mob/jutsu
	verb
		JiroS() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Doton Kekkai Dorou Doumu"
			if(usr.cdjfrez)
				usr<<"CD"
				return
			if(usr.cast)
				return
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
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
				for(var/mob/M in oview(3))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(M.PK==0)
						return
					usr.RandomChakra1()
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					var/Sleeptime = round(usr.tai/10+usr.nin/10+usr.gen/10+usr.shurikenskill/10+usr.terraN/10)
					if(Sleeptime >= 1)
						if(Sleeptime<10)
							Sleeptime = 50
						if(Sleeptime>300)
							Sleeptime=100
						usr.cdjfrez = 1
						spawn()usr.Cooldown(100,"Doton Kekkai Dorou Doumu")
						M.overlays += /obj/Jiro1
						M.overlays += /obj/Jiro2
						M.overlays += /obj/Jiro3
						M.move = 0
						M.froze = 1
						M.preso=1
						sleep(Sleeptime)
						if(M)
							M.move = 1
							M<<"Você foi preso pelo Doton Kekkai Dorou Doumu de [usr]."
							M.overlays -= /obj/Jiro1
							M.overlays -= /obj/Jiro2
							M.overlays -= /obj/Jiro3
							usr<<"[M] se livrou do seu Doton Kekkai Dorou Doumu!"
							M.froze = 0
							M.preso=0
						sleep(8)
					else
						M.overlays += /obj/Jiro1
						M.overlays += /obj/Jiro2
						M.overlays += /obj/Jiro3
						M.move = 0
						M.froze = 1
						M.preso=1
						sleep(Sleeptime)
						if(M)
							M.move = 1
							M<<"Você foi preso pelo Doton Kekkai Dorou Doumu de [usr]."
							M.overlays -= /obj/Jiro1
							M.overlays -= /obj/Jiro2
							M.overlays -= /obj/Jiro3
							usr<<"[M] se livrou do seu Doton Kekkai Dorou Doumu!"
							M.froze = 0
							M.preso=0
						sleep(8)
					sleep(100)
					if(M)
						M.froze=0
						M.move = 1
						M.preso=0

obj
	Jiro1
		icon='jirob.dmi'
		icon_state="1"
		density=1
		pixel_x=-32

obj
	Jiro2
		icon='jirob.dmi'
		icon_state="2"
		density=0

obj
	Jiro3
		icon='jirob.dmi'
		icon_state="3"
		density=1
		pixel_x=32



mob/jutsu
	verb
		Jirod()
			set category = "Jutsus"
			set name = "Doton Dochuu Eigyo"
			if(usr.cast||usr.Kaiten == 1||usr.sphere == 1)
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.froze)
				usr<<"Você está paralisado"
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
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			else
				for(var/mob/M in oview(6))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(M.PK==0)
						usr<<"Zona NON-PK!!!"
						return
					usr.RandomChakra1()
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					usr.overlays += 'eigo.dmi'
					usr.loc = locate(M.x,M.y-1,M.z)
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Doton dochuu Eigyo!!"
					sleep(20)
					usr.overlays -= 'eigo.dmi'
					usr.overlays -= 'eigo.dmi'
					usr.overlays -= 'eigo.dmi'
					usr.overlays -= 'eigo.dmi'


//==== DOSU =====================================================================================


mob/var/cdsentido = 0
mob/Kinuta
	verb
		sentidos()
			set category = "Jutsus"
			set name = "Atacar os Sentidos"
			usr.Handseals()
			if(usr.cdsentido)
				usr<<"CD"
				return
			if(usr.cast)
				return
			if(usr.froze)
				usr<<"Você está preso"
				return
			if(usr.usandosom == 0)
				usr<<"Voce precisa estar equipado com o aparelho"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.Frozen)
				usr<<"Você está preso"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			else
				for(var/mob/M in oview(2))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(M.PK==0)
						usr<<"[M] está NONPK!"
						return
					usr.RandomChakra1()
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					usr<<"SHHHHHHHHHHHHH!!"
					usr.cast=1
					usr.cdsentido = 1
					spawn()usr.Cooldown(200,"Atacar os Sentidos")
					var/damage = usr.gen/4.5 + usr.tai/4.5 + usr.nin/4.5 + usr.shurikenskill/4.5 - M.Resistencia/2
					if(damage >= 1)
						sleep(10)
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						M.Death(usr)
						M<<"Seus ouvidos parecem que vão estourar e voce começa a ver coisas.."
						M.Move_Delay=15
						M:sight |= BLIND
						sleep(40)
						usr.cast=0
						sleep(60)
						M<<"Sua visão volta ao normal"
						M:sight &= ~BLIND
						M.Move_Delay=0.7



mob/var/cdimp = 0
mob/Kinuta
	verb
		Impacto()
			set category = "Jutsus"
			set name = "Impacto de som"
			if(usr.cdimp)
				usr<<"CD"
				return
			if(usr.cast)
				return
			if(usr.froze)
				usr<<"Você está preso"
				return
			if(usr.usandosom == 0)
				usr<<"Voce precisa estar equipado com o aparelho"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.Frozen)
				usr<<"Você está preso"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			else
				for(var/mob/M in oview(2))
					if(M.party&&M.partysensei==usr.partysensei)return
					if (M.sphere)
						usr<<"Seu ataque é parado pela areia [M]!"
						return
					if (M.Kaiten)
						var/damage = usr.gen/4.25 + usr.nin/4.25 + usr.tai/4.25 + usr.shurikenskill/4.25 - M.Resistencia/2
						usr <<"<B><font size=2><font color=blue>You attack [M] but their kaiten reflects the damage back at you."
						M <<"<B><font size=2><font color=blue>You reflect [usr]'s attack causing them to hurt themself."
						usr.health -= damage
						F_damage(usr, damage, "#ff0000")
						usr.Death(M)
					if(usr.chakra >= 8000)
						usr.cast=1
						usr.chakra -= 8000
						usr.cdimp = 1
						spawn()usr.Cooldown(140,"Impacto de som")
						var/damage = usr.gen/4.25 + usr.nin/4.25 + usr.tai/4.25 + usr.shurikenskill/4.25 - M.Resistencia/2
						if(damage<=0)damage=0
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Impacto de Som!!"
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						M.Death(usr)
						step(M,usr.dir)
						sleep(1)
						step(M,usr.dir)
						step(M,usr.dir)
						sleep(1)
						step(M,usr.dir)
						step(M,usr.dir)
						sleep(1)
						step(M,usr.dir)
						step(M,usr.dir)
						sleep(1)
						step(M,usr.dir)
						step(M,usr.dir)
					else
						usr<<"Pouco chakra (8k)"
					sleep(60)
					usr.cast=0

mob/Kinuta
	verb
		somatoardor()
			set category = "Jutsus"
			set name = "Kyoumeisen"
			usr.Handseals()
			if(usr.usandosom == 0)
				usr<<"Voce precisa estar equipado com o aparelho"
				return
			if(usr.cast)
				return
			if(!usr.handseals)
				return
			else
				for(var/mob/M in get_step(src,src.dir))
					if(M.party&&M.partysensei==usr.partysensei)return
					usr<<"Voce enviou vibrações de som e acertou em [M] e agora ele está atordoado!"
					usr.cast=1
					M.Move_Delay = 12
					sleep(50)
					usr.cast=0
					sleep(100)
					if(M)
						M.Move_Delay = 0.7
						M<<"Voce se recuperou!!"
						usr<<"[M]'s o efeito acabou!"



obj
	som
		icon = 'invis.dmi'//dont have a base icon so cant make weights icon!lol
		density=1
		layer = 999999999999
		New()
			spawn(40) del src
			..()


mob/var/cdsom = 0
mob/Kinuta
	verb
		areasom() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Area de som!"
			usr.Handseals()
			if(usr.cdsom) // If the mob's cast var is one...
				usr<<"CD"
				return
			if(usr.cast) // If the mob's cast var is one...
				return
			if(usr.inso)
				usr<<"Not while in Soutourou!"
			if(usr.usandosom == 0)
				usr<<"Voce precisa estar equipado com o aparelho"
				return
			if(!usr.handseals)

				return
			else // If the cast var isn't 1...
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam
				usr.cdsom = 1
				spawn()usr.Cooldown(100,"Area de som!")
				usr.Chakragain()
				view()<<"[usr] criou uma area de Som de 50000 Mhz!!"
				var/obj/som/F = new /obj/som/
				var/obj/som/G = new /obj/som/
				var/obj/som/H = new /obj/som/
				var/obj/som/I = new /obj/som/
				var/obj/som/J = new /obj/som/
				var/obj/som/L = new /obj/som/
				var/obj/som/A = new /obj/som/
				var/obj/som/B = new /obj/som/
				var/obj/som/M2 = new /obj/som/
				var/obj/som/N = new /obj/som/
				var/obj/som/O = new /obj/som/
				var/obj/som/P = new /obj/som/
				var/obj/som/D = new /obj/som/
				var/obj/som/E = new /obj/som/
				var/obj/som/C = new /obj/som/
				var/obj/som/K = new /obj/som/
				var/obj/som/Q = new /obj/som/
				var/obj/som/R = new /obj/som/
				var/obj/som/S = new /obj/som/
				var/obj/som/T = new /obj/som/
				var/obj/som/W = new /obj/som/
				var/obj/som/X = new /obj/som/
				var/obj/som/Y = new /obj/som/
				var/obj/som/Z = new /obj/som/
				var/obj/som/AB = new /obj/som/
				var/obj/som/AC = new /obj/som/
				var/obj/som/AD = new /obj/som/
				var/obj/som/AE = new /obj/som/
				var/obj/som/AF = new /obj/som/
				var/obj/som/AG = new /obj/som/
				var/obj/som/AH = new /obj/som/
				var/obj/som/AI = new /obj/som/
				var/obj/som/AJ = new /obj/som/
				var/obj/som/AK = new /obj/som/
				var/obj/som/AL = new /obj/som/
				var/obj/som/AM = new /obj/som/
				var/obj/som/AN = new /obj/som/
				var/obj/som/AO = new /obj/som/
				var/obj/som/AP = new /obj/som/
				var/obj/som/AQ = new /obj/som/
				var/obj/som/AR = new /obj/som/
				var/obj/som/AS = new /obj/som/
				var/obj/som/AT = new /obj/som/
				var/obj/som/AU = new /obj/som/
				var/obj/som/AV = new /obj/som/
				var/obj/som/AW = new /obj/som/
				var/obj/som/AX= new /obj/som/
				var/obj/som/AY = new /obj/som/
				var/obj/som/AZ = new /obj/som/
				K.loc = locate(usr.x,usr.y,usr.z)
				A.loc = locate(usr.x+1,usr.y,usr.z)
				C.loc = locate(usr.x-1,usr.y,usr.z)
				B.loc = locate(usr.x,usr.y+1,usr.z)
				D.loc = locate(usr.x,usr.y-1,usr.z)
				E.loc = locate(usr.x+1,usr.y+1,usr.z)
				F.loc = locate(usr.x-1,usr.y-1,usr.z)
				G.loc = locate(usr.x-1,usr.y+1,usr.z)
				H.loc = locate(usr.x+1,usr.y-1,usr.z)
				I.loc = locate(usr.x+2,usr.y,usr.z)
				J.loc = locate(usr.x-2,usr.y,usr.z)
				L.loc = locate(usr.x,usr.y+2,usr.z)
				M2.loc = locate(usr.x,usr.y-2,usr.z)
				N.loc = locate(usr.x+2,usr.y+2,usr.z)
				O.loc = locate(usr.x-2,usr.y-2,usr.z)
				P.loc = locate(usr.x-2,usr.y+2,usr.z)
				Q.loc = locate(usr.x+2,usr.y-2,usr.z)
				R.loc = locate(usr.x+3,usr.y,usr.z)
				S.loc = locate(usr.x-3,usr.y,usr.z)
				T.loc = locate(usr.x,usr.y+3,usr.z)
				W.loc = locate(usr.x,usr.y-3,usr.z)
				X.loc = locate(usr.x+3,usr.y+3,usr.z)
				Y.loc = locate(usr.x-3,usr.y-3,usr.z)
				Z.loc = locate(usr.x-3,usr.y+3,usr.z)
				AB.loc = locate(usr.x-3,usr.y-2,usr.z)
				AC.loc = locate(usr.x+3,usr.y+2,usr.z)
				AD.loc = locate(usr.x+3,usr.y-2,usr.z)
				AE.loc = locate(usr.x-3,usr.y+2,usr.z)
				AF.loc = locate(usr.x+2,usr.y+3,usr.z)
				AG.loc = locate(usr.x-2,usr.y-3,usr.z)
				AH.loc = locate(usr.x-2,usr.y+3,usr.z)
				AI.loc = locate(usr.x+2,usr.y-3,usr.z)
				AJ.loc = locate(usr.x-1,usr.y-2,usr.z)
				AK.loc = locate(usr.x+1,usr.y+2,usr.z)
				AL.loc = locate(usr.x+1,usr.y-2,usr.z)
				AM.loc = locate(usr.x-1,usr.y+2,usr.z)
				AN.loc = locate(usr.x+2,usr.y+1,usr.z)
				AO.loc = locate(usr.x-2,usr.y-1,usr.z)
				AP.loc = locate(usr.x-2,usr.y+1,usr.z)
				AQ.loc = locate(usr.x+2,usr.y-1,usr.z)
				AR.loc = locate(usr.x-1,usr.y-3,usr.z)
				AS.loc = locate(usr.x+1,usr.y+3,usr.z)
				AT.loc = locate(usr.x+1,usr.y-3,usr.z)
				AU.loc = locate(usr.x-1,usr.y+3,usr.z)
				AV.loc = locate(usr.x+3,usr.y+1,usr.z)
				AW.loc = locate(usr.x-3,usr.y-1,usr.z)
				AX.loc = locate(usr.x-3,usr.y+1,usr.z)
				AY.loc = locate(usr.x+3,usr.y-1,usr.z)
				AZ.loc = locate(usr.x+3,usr.y-3,usr.z)
				for(var/mob/M in oview(3))
					if(M.party&&M.partysensei==usr.partysensei)return
					var/damage= usr.gen/4.25 + usr.nin/4.25 + usr.tai/4.25 + usr.shurikenskill/4.25 - M.Resistencia/2
					if(damage<=0)damage=0
					view()<<"[M] recebeu [damage] de dano do som muito forte de [usr]"
					M.health-=damage
					F_damage(M, damage, "#ff0000")
					if(M.health<=0)
						M.Death(usr)
				sleep(40)
				del(K)
				del(A)
				del(B)
				del(C)
				del(D)
				del(E)
				del(F)
				del(G)
				del(H)
				del(I)
				del(J)
				del(L)
				del(M2)
				del(N)
				del(O)
				del(P)
				del(Q)
				del(R)
				del(S)
				del(T)
				del(W)
				del(X)
				del(Y)
				del(Z)
				del(AB)
				del(AC)
				del(AD)
				del(AE)
				del(AF)
				del(AG)
				del(AH)
				del(AI)
				del(AJ)
				del(AK)
				del(AL)
				del(AM)
				del(AN)
				del(AO)
				del(AP)
				del(AQ)
				del(AR)
				del(AS)
				del(AT)
				del(AU)
				del(AV)
				del(AW)
				del(AX)
				del(AY)
				del(AZ)
				sleep(10)
				usr.cast=0



mob/var/cdhsom = 0
mob/Kinuta
	verb
		Rajada() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Rajada de Som"
			usr.Handseals()
			if(usr.cdhsom)
				usr<<"CD"
				return
			if(usr.cast||usr.Kaiten) // If the mob's cast var is one...
				return
			if(!usr.handseals)
				return
			else // If the cast var isn't 1...
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam // Disables the mob's movement
				usr.cdhsom = 1
				spawn()usr.Cooldown(100,"Rajada de Som")
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Rajada de Som!!"
				var/obj/Rajada/K = new /obj/Rajada
				K.loc = usr.loc
				K.nin=usr.gen/4.5 + usr.nin/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5
				K.dir = usr.dir
				K.Move_Delay=0
				usr.Chakragain()
				K.name="[usr]"
				K.Zowner=usr
				walk(K,usr.dir)
				if (target == null)
					del(K)
				sleep(20)
				usr.cast = 0



obj
	Rajada
		icon = 'rajada.dmi'
		icon_state = ""
		density = 1
		New()
			spawn(35) del src
			..()
		Bump(A)
			var/mob/O = src.Gowner
			if(!O) del src
			if(ismob(A))
				var/mob/M = A
				if(M.party&&M.partysensei==O.partysensei)return
				if(M.Kaiten||M.sphere)
					return
				var/damage = O.gen/4.5 + O.nin/4.5 + O.tai/4.5 + O.shurikenskill/4.5 - M.Resistencia/2
				if(damage >= 1)
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					view(M) << "[M] foi acertado pela rajada de som do [O] recebendo [damage] dano!!"
					Move_Delay=0
					M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	aparelho
		name = "Aparelho de som"
		icon = 'aparelho.dmi'
		worn = 0
		price = 0
		verb
			Usar()
				if(src.worn)
					src.worn = 0
					usr.overlays -= 'aparelho.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.usandosom = 0
				else
					if(usr.flute)
						usr<<"Você apenas pode usar um por vez."
						return
					src.worn = 1
					usr.overlays += 'aparelho.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					usr.usandosom = 1
			Olhar()
				usr<<"Esta é um equipamento que é usado para fazer alguns jutsus de Kinuta."


//==== KAGES ====================================================================================

//==== SHODAIME HOKAGE ==========================================================================

mob/jutsu
	verb
		Shodaime()
			set category = "TaiJutsu"
			set name = "Futae no chakra Ryuu"
			set desc = "Estilo de luta Senju."
			if(!usr.Shodstyle)
				usr<<"Você está usando o Futae no chakra Ryuu"
				usr.Jyuken = 0
				usr.Tekken = 0
				usr.Basic = 0
				usr.FuutonStyle = 0
				usr.Shodstyle=1
				usr.client.view=8
				spawn()usr.Cegar()
				return
			if(usr.Shodstyle)
				usr<<"Você já está usando o Futae no chakra Ryuu"
				return


mob/var/tmp/cdsjutsu=0
mob/var/tmp/shoujutsando=0
mob/jutsu
	verb
		Neutro() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Shou Jutsu"
			if(usr.cdsjutsu)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Shou Jutsu</b>!"
				return
			if(usr.shoujutsando)
				usr<<"Aguarde para usar novamente!"
				return
			if(usr.cast) // If the mob's cast var is one...
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.Frozen)
				usr<<"Você está paralisado"
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
				for(var/mob/M in oview(6))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(M.PK==0)
						usr<<"Zona NON-PK!!!"
						return
					if(M.Kaiten)
						return
					if(M.handseals)
						if(usr.cdsjutsu)return
						usr.cdsjutsu=1
						spawn()usr.Cooldown(400,"Shou Jutsu")
						usr.RandomChakra1()
						if(usr.chakra<=0)
							usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
							usr.health=0
							usr.chakra=0
							usr.Death(usr)
							return
						M.handseals=0
						usr.shoujutsando=1
						M<<"Seu jutsu foi cancelado por [usr]"
						usr<<"Vc cancelou o jutsu de [M]"
						M.cast=1
						sleep(50)
						M.cast=0
						sleep(350)
						usr.shoujutsando=0
					else
						usr<<"Ele Não está tentando executar nenhum selo!"


mob/Namikaze
	verb
		ShodBuff()
			set category = "Jutsus"
			set name = "Modo Eremita"
			if(usr.chakra <= 1000)
				usr<<"Você não possui chakra suficiente!(1k)"
				return
			if(usr.cast)
				usr<<"Não agora."
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
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
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
			if(!usr.mokarmor&&!usr.cast)
				view()<<"<font color = green>[usr]: Modo Heremita!"
				usr.overlays += /obj/Eremitaeyes
				sleep(40)
				usr.overlays -= /obj/Eremitaeyes
				usr.mokarmor =1
				usr.overlays += 'SenninOlhos.dmi'
				usr.nin = usr.nin*1.05
				usr.gen = usr.gen*1.05
				usr.tai = usr.tai*1.05
				usr.shurikenskill = usr.shurikenskill*1.05
				usr.health = usr.health*1.2
				sleep(3000)
				usr.mokarmor =0
				usr.buff=0
				usr.nin = usr.Mnin
				usr.gen = usr.Mgen
				usr.overlays -= 'SenninOlhos.dmi'
				usr.tai = usr.Mtai
				usr.shurikenskill = usr.Mshurikenskill
				usr<<"Você desativa o Modo Heremita"
			else
				usr<<"O Modo Heremita já está ativo!"

mob/var/tmp/cdsenjutsusenju=0
mob/jutsu
	verb
		ShodBuff()
			set category = "Jutsus"
			set name = "Senjutsu Senju"
			if(usr.cdsenjutsusenju)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o <b>Senjutsu Senju</b>!"
				return
			else
				if(!usr.mokarmor)
					if(usr.cdsenjutsusenju)return
					usr.RandomChakra1()
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					view()<<"<font color = green>[usr]: Senjutsu Senjuu!"
					usr.mokarmor =1
					usr.nin = usr.nin*1.25
					usr.gen = usr.gen*1.25
					usr.tai = usr.tai*1.25
					usr.shurikenskill = usr.shurikenskill*1.25
					usr.health = usr.health*1.25
					usr.chakra = usr.Mchakra*1.25
					usr.stamina = usr.Mstamina*1.25
				else
					usr.mokarmor =0
					usr.nin = usr.Mnin
					usr.gen = usr.Mgen
					usr.tai = usr.Mtai
					usr.shurikenskill = usr.Mshurikenskill
					usr<<"Você desativa o Senjutsu Senjuu"
					if(usr.modobudaon)
						usr.verbs -= new /mob/jutsu/verb/Budaataque()
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
						usr.modobudaon=0
						usr<<"Você desativa o Senpou: Mokuton Shinsuusenju!"
					if(usr.golemon)
						usr.overlays-=/obj/Golempartes/gol1
						usr.overlays-=/obj/Golempartes/gol2
						usr.overlays-=/obj/Golempartes/gol3
						usr.overlays-=/obj/Golempartes/gol4
						usr.overlays-=/obj/Golempartes/gol5
						usr.overlays-=/obj/Golempartes/gol6
						usr.overlays-=/obj/Golempartes/gol7
						usr.overlays-=/obj/Golempartes/gol8
						usr.overlays-=/obj/Golempartes/gol9
						usr<<"Você <font color=red>desativa</font> o Mokuton: Mokujin no Jutsu por falta de Chakra!"
						usr.verbs -= new /mob/mokuton/verb/GolenAtaque()
						usr.golemon=0
					usr.cdsenjutsusenju=1
					spawn(1800) usr.cdsenjutsusenju=0

obj/yamatojutsu
	pir1
		icon = 'JutsuYamato.dmi'
		icon_state = "1"
		density = 1
		layer = 5
		New()
			spawn(35) del(src)

	pir2
		icon = 'JutsuYamato.dmi'
		icon_state = "2"
		density = 1
		layer = 5
		New()
			spawn(35) del(src)

	pir3
		icon = 'JutsuYamato.dmi'
		icon_state = "3"
		density = 1
		layer = 5
		New()
			spawn(35) del(src)

	pir4
		icon = 'JutsuYamato.dmi'
		icon_state = "4"
		density = 1
		layer =  5
		New()
			spawn(35) del(src)

	pir5
		icon = 'JutsuYamato.dmi'
		icon_state = "5"
		density = 1
		New()
			spawn(35) del(src)
	pir6
		icon = 'JutsuYamato.dmi'
		icon_state = "6"
		density = 1
		layer = 5
		New()
			spawn(35) del(src)
	pir7
		icon = 'JutsuYamato.dmi'
		icon_state = "7"
		density = 1
		layer = 5
		New()
			spawn(35) del(src)
	pir8
		icon = 'JutsuYamato.dmi'
		icon_state = "8"
		density = 1
		layer = 5
		New()
			spawn(35) del(src)
	pir9
		icon = 'JutsuYamato.dmi'
		icon_state = "9"
		density = 1
		layer = 5
		New()
			spawn(35) del(src)

mob/var/tmp/cdhokagesb=0
mob/jutsu
	verb
		Hokagesb() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Shiki Jijun Jutsu"
			if(usr.cdhokagesb)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Shiki Jijun Jutsu</b>!"
				return
			usr.Handseals()
			if(usr.cast) // If the mob's cast var is one...
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(!usr.handseals)
				return
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(src.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(src.concing)
				usr<<"Não enquanto se concentra"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			else
				usr.cdhokagesb=1
				spawn()usr.Cooldown(300,"Shiki Jijun Jutsu")
				for(var/mob/M in oview(2))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(M.PK==0)
						usr<<"Zona NON-PK!!!"
						return
					if(M.Kaiten)
						return
					usr.RandomChakra1()
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					view<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz:Shiki Jijun Jutsu....Retorne a inocência"
					new /obj/yamatojutsu/pir1(locate(M.x-1,M.y-1,M.z))
					new /obj/yamatojutsu/pir2(locate(M.x,M.y-1,M.z))
					new /obj/yamatojutsu/pir3(locate(M.x+1,M.y-1,M.z))
					new /obj/yamatojutsu/pir4(locate(M.x-1,M.y,M.z))
					new /obj/yamatojutsu/pir5(locate(M.x,M.y,M.z))
					new /obj/yamatojutsu/pir6(locate(M.x+1,M.y,M.z))
					new /obj/yamatojutsu/pir7(locate(M.x-1,M.y+1,M.z))
					new /obj/yamatojutsu/pir8(locate(M.x,M.y+1,M.z))
					new /obj/yamatojutsu/pir9(locate(M.x+1,M.y+1,M.z))
					sleep(35)
					M<<"Vc retornou ao normal pela ação do jutsu de [usr]"
					M.nin = M.Mnin
					M.gen = M.Mgen
					M.tai = M.tai
					M.shurikenskill = M.shurikenskill
					M.health=M.maxhealth
					M.chakra=M.Mchakra
					M.overlays-=/obj/KyuubiAuraT
					M.overlays-=/obj/CKyuubi4Tails
					M.overlays-=/obj/TKyuubi4Tails
					M.overlays-=/obj/BLKyuubi4Tails
					M.overlays-=/obj/BRKyuubi4Tails
					M.overlays-=/obj/TLKyuubi4Tails
					M.overlays-=/obj/TRKyuubi4Tails
					M.overlays-='kyuubi.dmi'
					M.overlays-='kyuubi.dmi'
					M.overlays-='kyuubi.dmi'
					M.overlays-='sharingan.dmi'
					M.overlays-='sharingan.dmi'
					M.overlays-='sharingan.dmi'
					M.overlays-='Kyuubi Aura.dmi'
					M.overlays-='Kyuubi Aura Shield.dmi'
					M.verbs -= typesof(/mob/Kyuubi3/verb/)
					M.verbs -= typesof(/mob/Curse_Seal3/verb/)
					M.verbs -= typesof(/mob/Hachibi8/verb/)
					M.verbs -= typesof(/mob/Rokubi6/verb/)
					M.verbs -= typesof(/mob/Yonbi4/verb/)
					M.verbs -= typesof(/mob/Sanbi3/verb/)
					M.InKASS = 0
					M.KAS_ONOFF = 0
					M.overlays-='nekomata.dmi'
					M.overlays-=/obj/Cnekomata2Tails
					M.overlays-=/obj/Tnekomata2Tails
					M.overlays-='Sanbi1.dmi'
					M.overlays-='Sanbi1.dmi'
					M.overlays-='Sanbi1.dmi'
					M.overlays-='Sanbi Aura.dmi'
					M.overlays-=/obj/SanbiAuraT
					M.overlays-=/obj/CSanbi3Tails
					M.overlays-=/obj/T1Sanbi3Tails
					M.overlays-=/obj/BLSanbi3Tails
					M.overlays-=/obj/BRSanbi3Tails
					M.overlays-=/obj/TLSanbi3Tails
					M.overlays-=/obj/TRSanbi3Tails
					M.overlays-='Yonbi Aura.dmi'
					M.overlays-=/obj/CYonbi4Tails
					M.overlays-=/obj/TYonbi4Tails
					M.overlays-=/obj/BLYonbi4Tails
					M.overlays-=/obj/BRYonbi4Tails
					M.overlays-=/obj/TLYonbi4Tails
					M.overlays-=/obj/TRYonbi4Tails
					M.overlays-='Gobi Aura.dmi'
					M.overlays-=/obj/CGobi5Tails
					M.overlays-=/obj/TGobi5Tails
					M.overlays-=/obj/BLGobi5Tails
					M.overlays-=/obj/BRGobi5Tails
					M.overlays-=/obj/TLGobi5Tails
					M.overlays-=/obj/TRGobi5Tails
					M.overlays-='Rokubi Aura.dmi'
					M.overlays-=/obj/CRokubi6Tails
					M.overlays-=/obj/TRokubi6Tails
					M.overlays-=/obj/BLRokubi6Tails
					M.overlays-=/obj/BRRokubi6Tails
					M.overlays-=/obj/TLRokubi6Tails
					M.overlays-=/obj/TRRokubi6Tails
					M.overlays-='Sishibi Aura.dmi'
					M.overlays-=/obj/CSishibi7Tails
					M.overlays-=/obj/TSishibi7Tails
					M.overlays-=/obj/BLSishibi7Tails
					M.overlays-=/obj/BRSishibi7Tails
					M.overlays-=/obj/TLSishibi7Tails
					M.overlays-=/obj/TRSishibi7Tails
					M.overlays-='Hachibi Aura.dmi'
					M.overlays-=/obj/CHachibi8Tails
					M.overlays-=/obj/THachibi8Tails
					M.overlays-=/obj/BLHachibi8Tails
					M.overlays-=/obj/BRHachibi8Tails
					M.overlays-=/obj/TLHachibi8Tails
					M.overlays-=/obj/TRHachibi8Tails
					M.overlays-='cs.dmi'
					M.overlays-='cs.dmi'
					M.overlays-='cs.dmi'
					M.overlays-='cs2.dmi'
					M.overlays-='cs2.dmi'
					M.overlays-='cs2.dmi'
					M.overlays-='cs3 Eyes.dmi'
					M.overlays-='cs3 Eyes.dmi'
					M.overlays-='cs3 Eyes.dmi'
					M.overlays-=/obj/CCurseSeal3T
					M.overlays-=/obj/TCurseSeal3T
					M.overlays-=/obj/BLCurseSeal3T
					M.overlays-=/obj/BRCurseSeal3T
					M.overlays-=/obj/TLCurseSeal3T
					M.overlays-=/obj/TRCurseSeal3T
					M.overlays-=/obj/CCurseSeal3White
					M.overlays-=/obj/TCurseSeal3White
					M.overlays-=/obj/BLCurseSeal3White
					M.overlays-=/obj/BRCurseSeal3White
					M.overlays-=/obj/TLCurseSeal3White
					M.overlays-=/obj/TRCurseSeal3White
					M.overlays-=/obj/CCurseSeal3Black
					M.overlays-=/obj/TCurseSeal3Black
					M.overlays-=/obj/BLCurseSeal3Black
					M.overlays-=/obj/BRCurseSeal3Black
					M.overlays-=/obj/TLCurseSeal3Black
					M.overlays-=/obj/TRCurseSeal3Black
					M.overlays-=/obj/CCurseSeal3Blue
					M.overlays-=/obj/TCurseSeal3Blue
					M.overlays-=/obj/BLCurseSeal3Blue
					M.overlays-=/obj/BRCurseSeal3Blue
					M.overlays-=/obj/TLCurseSeal3Blue
					M.overlays-=/obj/TRCurseSeal3Blue
					M.overlays-=/obj/CCurseSeal3Red
					M.overlays-=/obj/TCurseSeal3Red
					M.overlays-=/obj/BLCurseSeal3Red
					M.overlays-=/obj/BRCurseSeal3Red
					M.overlays-=/obj/TLCurseSeal3Red
					M.overlays-=/obj/TRCurseSeal3Red
					M.overlays-=/obj/CCurseSeal3Vamp
					M.overlays-=/obj/TCurseSeal3Vamp
					M.overlays-=/obj/BLCurseSeal3Vamp
					M.overlays-=/obj/BRCurseSeal3Vamp
					M.overlays-=/obj/TLCurseSeal3Vamp
					M.overlays-=/obj/TRCurseSeal3Vamp
					M.overlays-=/obj/CCurseSeal3Yellow
					M.overlays-=/obj/TCurseSeal3Yellow
					M.overlays-=/obj/BLCurseSeal3Yellow
					M.overlays-=/obj/BRCurseSeal3Yellow
					M.overlays-=/obj/TLCurseSeal3Yellow
					M.overlays-=/obj/TRCurseSeal3Yellow
					M.overlays-='kaku3.dmi'
					M.overlays-='kaku3.dmi'
					M.overlays-='kaku3.dmi'
					M.overlays-='kakuA.dmi'
					M.overlays-='kakuA.dmi'
					M.overlays-='kakuA.dmi'
					M.overlays -= 'staraura2.dmi'
					M.overlays-='staraura2Top.dmi'


mob/var/tmp/cdhitkill = 0
mob/Shodaime
	verb
		MokutonHijutsu()
			set category = "Jutsus"
			set name = "Mokuton Hijutsu Jukai Koutan"
			if(usr.cdhitkill) // If the mob's cast var is one...
				usr<<"CD"
				return
			if(usr.cast) // If the mob's cast var is one...
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
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
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			else // If the cast var isn't 1...
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.cdhitkill = 1
				spawn()usr.Cooldown(150,"Mokuton Hijutsu: Jukai Koutan")
				usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam
				usr.mokuton=1
				view()<<"[usr]: Mokuton Hijutsu: Jukai Koutan!"
				var/obj/tree/F = new /obj/tree/
				var/obj/tree/G = new /obj/tree/
				var/obj/tree/H = new /obj/tree/
				var/obj/tree/I = new /obj/tree/
				var/obj/tree/J = new /obj/tree/
				var/obj/tree/L = new /obj/tree/
				var/obj/tree/A = new /obj/tree/
				var/obj/tree/B = new /obj/tree/
				var/obj/tree/M2 = new /obj/tree/
				var/obj/tree/N = new /obj/tree/
				var/obj/tree/O = new /obj/tree/
				var/obj/tree/P = new /obj/tree/
				var/obj/tree/D = new /obj/tree/
				var/obj/tree/E = new /obj/tree/
				var/obj/tree/C = new /obj/tree/
				var/obj/tree/K = new /obj/tree/
				var/obj/tree/Q = new /obj/tree/
				var/obj/tree/R = new /obj/tree/
				var/obj/tree/S = new /obj/tree/
				var/obj/tree/T = new /obj/tree/
				var/obj/tree/W = new /obj/tree/
				var/obj/tree/X = new /obj/tree/
				var/obj/tree/Y = new /obj/tree/
				var/obj/tree/Z = new /obj/tree/
				var/obj/tree/AB = new /obj/tree/
				var/obj/tree/AC = new /obj/tree/
				var/obj/tree/AD = new /obj/tree/
				var/obj/tree/AE = new /obj/tree/
				var/obj/tree/AF = new /obj/tree/
				var/obj/tree/AG = new /obj/tree/
				var/obj/tree/AH = new /obj/tree/
				var/obj/tree/AI = new /obj/tree/
				var/obj/tree/AJ = new /obj/tree/
				var/obj/tree/AK = new /obj/tree/
				var/obj/tree/AL = new /obj/tree/
				var/obj/tree/AM = new /obj/tree/
				var/obj/tree/AN = new /obj/tree/
				var/obj/tree/AO = new /obj/tree/
				var/obj/tree/AP = new /obj/tree/
				var/obj/tree/AQ = new /obj/tree/
				var/obj/tree/AR = new /obj/tree/
				var/obj/tree/AS = new /obj/tree/
				var/obj/tree/AT = new /obj/tree/
				var/obj/tree/AU = new /obj/tree/
				var/obj/tree/AV = new /obj/tree/
				var/obj/tree/AW = new /obj/tree/
				var/obj/tree/AX= new /obj/tree/
				var/obj/tree/AY = new /obj/tree/
				var/obj/tree/AZ = new /obj/tree/
				A.owner=usr
				B.owner=usr
				C.owner=usr
				D.owner=usr
				E.owner=usr
				F.owner=usr
				G.owner=usr
				H.owner=usr
				I.owner=usr
				J.owner=usr
				K.owner=usr
				L.owner=usr
				M2.owner=usr
				N.owner=usr
				O.owner=usr
				P.owner=usr
				Q.owner=usr
				R.owner=usr
				S.owner=usr
				T.owner=usr
				W.owner=usr
				X.owner=usr
				Y.owner=usr
				Z.owner=usr
				AB.owner=usr
				AC.owner=usr
				AD.owner=usr
				AE.owner=usr
				AF.owner=usr
				AG.owner=usr
				AH.owner=usr
				AI.owner=usr
				AJ.owner=usr
				AK.owner=usr
				AL.owner=usr
				AM.owner=usr
				AN.owner=usr
				AO.owner=usr
				AP.owner=usr
				AQ.owner=usr
				AR.owner=usr
				AS.owner=usr
				AV.owner=usr
				AW.owner=usr
				AX.owner=usr
				AY.owner=usr
				AZ.owner=usr
				AU.owner=usr
				AV.owner=usr
				A.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				B.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				C.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				D.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				E.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				F.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				G.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				H.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				I.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				J.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				K.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				L.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				M2.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				N.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				O.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				P.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				Q.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				R.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				S.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				T.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				W.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				X.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				Y.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				Z.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				AB.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				AC.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				AD.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				AE.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				AF.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				AG.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				AH.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				AI.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				AJ.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				AK.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				AL.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				AM.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				AN.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				AO.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				AP.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				AQ.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				AR.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				AS.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				AV.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				AW.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				AX.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				AY.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				AZ.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				AU.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				AV.tai=usr.tai/4.5 + usr.nin/4.5 + usr.gen/4.5 + usr.shurikenskill/4.5 + usr.terraN*1.5 + usr.aguaN*1.5
				K.loc = locate(usr.x,usr.y,usr.z)
				K.tree=1
				A.loc = locate(usr.x+1,usr.y,usr.z)
				A.tree=1
				C.loc = locate(usr.x-1,usr.y,usr.z)
				C.tree=1
				B.loc = locate(usr.x,usr.y+1,usr.z)
				B.tree=1
				D.loc = locate(usr.x,usr.y-1,usr.z)
				D.tree=1
				E.loc = locate(usr.x+1,usr.y+1,usr.z)
				E.tree=1
				F.loc = locate(usr.x-1,usr.y-1,usr.z)
				F.tree=1
				G.loc = locate(usr.x-1,usr.y+1,usr.z)
				G.tree=1
				H.loc = locate(usr.x+1,usr.y-1,usr.z)
				H.tree=1
				I.loc = locate(usr.x+2,usr.y,usr.z)
				I.tree=1
				J.loc = locate(usr.x-2,usr.y,usr.z)
				J.tree=1
				L.loc = locate(usr.x,usr.y+2,usr.z)
				L.tree=1
				M2.loc = locate(usr.x,usr.y-2,usr.z)
				M2.tree=1
				N.loc = locate(usr.x+2,usr.y+2,usr.z)
				N.tree=1
				O.loc = locate(usr.x-2,usr.y-2,usr.z)
				O.tree=1
				P.loc = locate(usr.x-2,usr.y+2,usr.z)
				P.tree=1
				Q.loc = locate(usr.x+2,usr.y-2,usr.z)
				Q.tree=1
				R.loc = locate(usr.x+3,usr.y,usr.z)
				R.tree=1
				S.loc = locate(usr.x-3,usr.y,usr.z)
				S.tree=1
				T.loc = locate(usr.x,usr.y+3,usr.z)
				T.tree=1
				W.loc = locate(usr.x,usr.y-3,usr.z)
				W.tree=1
				X.loc = locate(usr.x+3,usr.y+3,usr.z)
				X.tree=1
				Y.loc = locate(usr.x-3,usr.y-3,usr.z)
				Y.tree=1
				Z.loc = locate(usr.x-3,usr.y+3,usr.z)
				Z.tree=1
				AB.loc = locate(usr.x-3,usr.y-2,usr.z)
				AB.tree=1
				AC.loc = locate(usr.x+3,usr.y+2,usr.z)
				AC.tree=1
				AD.loc = locate(usr.x+3,usr.y-2,usr.z)
				AD.tree=1
				AE.loc = locate(usr.x-3,usr.y+2,usr.z)
				AE.tree=1
				AF.loc = locate(usr.x+2,usr.y+3,usr.z)
				AF.tree=1
				AG.loc = locate(usr.x-2,usr.y-3,usr.z)
				AG.tree=1
				AH.loc = locate(usr.x-2,usr.y+3,usr.z)
				AH.tree=1
				AI.loc = locate(usr.x+2,usr.y-3,usr.z)
				AI.tree=1
				AJ.loc = locate(usr.x-1,usr.y-2,usr.z)
				AJ.tree=1
				AK.loc = locate(usr.x+1,usr.y+2,usr.z)
				AK.tree=1
				AL.loc = locate(usr.x+1,usr.y-2,usr.z)
				AL.tree=1
				AM.loc = locate(usr.x-1,usr.y+2,usr.z)
				AM.tree=1
				AN.loc = locate(usr.x+2,usr.y+1,usr.z)
				AN.tree=1
				AO.loc = locate(usr.x-2,usr.y-1,usr.z)
				AO.tree=1
				AP.loc = locate(usr.x-2,usr.y+1,usr.z)
				AP.tree=1
				AQ.loc = locate(usr.x+2,usr.y-1,usr.z)
				AQ.tree=1
				AR.loc = locate(usr.x-1,usr.y-3,usr.z)
				AR.tree=1
				AS.loc = locate(usr.x+1,usr.y+3,usr.z)
				AS.tree=1
				AT.loc = locate(usr.x+1,usr.y-3,usr.z)
				AT.tree=1
				AU.loc = locate(usr.x-1,usr.y+3,usr.z)
				AU.tree=1
				AV.loc = locate(usr.x+3,usr.y+1,usr.z)
				AV.tree=1
				AW.loc = locate(usr.x-3,usr.y-1,usr.z)
				AW.tree=1
				AX.loc = locate(usr.x-3,usr.y+1,usr.z)
				AX.tree=1
				AY.loc = locate(usr.x+3,usr.y-1,usr.z)
				AY.tree=1
				AZ.loc = locate(usr.x+3,usr.y-3,usr.z)
				AZ.tree=1
				flick("rise",A)
				flick("rise",B)
				flick("rise",C)
				flick("rise",D)
				flick("rise",E)
				flick("rise",F)
				flick("rise",G)
				flick("rise",H)
				flick("rise",I)
				flick("rise",J)
				flick("rise",K)
				flick("rise",L)
				flick("rise",M2)
				flick("rise",N)
				flick("rise",O)
				flick("rise",P)
				flick("rise",Q)
				flick("rise",R)
				flick("rise",S)
				flick("rise",T)
				flick("rise",W)
				flick("rise",X)
				flick("rise",Y)
				flick("rise",Z)
				flick("rise",AB)
				flick("rise",AC)
				flick("rise",AD)
				flick("rise",AE)
				flick("rise",AF)
				flick("rise",AG)
				flick("rise",AH)
				flick("rise",AI)
				flick("rise",AJ)
				flick("rise",AK)
				flick("rise",AL)
				flick("rise",AM)
				flick("rise",AN)
				flick("rise",AO)
				flick("rise",AP)
				flick("rise",AQ)
				flick("rise",AR)
				flick("rise",AS)
				flick("rise",AT)
				flick("rise",AU)
				flick("rise",AV)
				flick("rise",AW)
				flick("rise",AX)
				flick("rise",AY)
				flick("rise",AZ)
				for(var/mob/M in oview())
					if(M.party&&M.partysensei==usr.partysensei)return
					var/damage= usr.tai/4.25 + usr.nin/4.25 + usr.gen/4.25 + usr.shurikenskill/4.25 + usr.terraN/1.25 + usr.aguaN/1.25 - M.Resistencia/2
					if(damage<=0)damage=0
					view()<<"[M] recebeu [damage] de dano do jutsu de [usr] - Mokuton Hijutsu: Jukai Koutan"
					if(M.fantasma)
						usr<<"<font size=1>Vc não consegue tocá-lo!"
						return
					M.health-=damage
					F_damage(M, damage, "#ff0000")
					if(M.health<=0)
						M.Death(usr)
				sleep(50)
				usr.cast=0
				usr.mokuton=0


mob/var/cdsho = 0
mob/var/mokuton=0
mob/jutsu
	verb
		MokutonSpecial()
			set category ="Jutsus"
			set name ="Mokuton Hijutsu Jukai Meikai Kousan"
			if(usr.cdsho)
				usr<<"CD"
				return
			if(usr.Frozen)
				usr<<"Você está paralizado!"
				return
			if(usr.caught)
				usr<<"Você foi capturado!"
				return
			if(usr.captured)
				usr<<"Você foi capturado!"
				return
			if(usr.froze)
				usr<<"Você está paralizado!"
				return
			if(!usr.mokuton)
				usr<<"Vc precisa usar seu hijutsu antes"
				return
			else
				for(var/mob/M in oview(5))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(!M.PK||M.bijuunpc)
						usr<<"Não pode usar nele!"
						return
					if(M.bijuunpc)
						usr<<"Não pode ser usado nele!"
						return
					usr.RandomChakra1()
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					usr.mokuton=0
					view<<"font size=1><font face=verdana><b><font color=white>[usr]<font color=red>Mokuton Hijutsu - Jukai Meikai Kousan"
					usr.cdsho = 1
					spawn()usr.Cooldown(3000,"Mokuton Hijutsu Jukai Meikai Kousan")
					M.overlays+='explode.dmi'
					sleep(15)
					usr<<"Por usar um kinjutsu vc terá 2% de seus stats cortados"
					usr.maxhealth-=usr.maxhealth/50
					usr.Mchakra-=usr.Mchakra/50
					usr.Mtai-=usr.Mtai/50
					usr.Mgen-=usr.Mgen/50
					usr.Mnin-=usr.Mnin/50
					usr.Mshurikenskill-=Mshurikenskill/50
					usr.chakraN-=usr.chakraN/50
					usr.Resistencia-=usr.Resistencia/50
					usr.veloN-=usr.veloN/50
					//usr.SalvarAgora()
					M.overlays-='explode.dmi'
					M.health = 0
					M.Death(usr)


mob/var/tmp/cdmokukyuu=0
mob/Shodaime
	verb
		MokotonKyuu()
			set category = "Jutsus"
			set name = "Mokuton Kyuu"
			usr.Handseals()
			if(usr.cdmokukyuu)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Mokuton Kyuu</b>!"
				return
			if(!usr.handseals)
				return
			if(usr.cast)
				return
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
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
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.sphere)
				return
			if(usr.Kaiten)
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			else
				for(var/mob/M in oview(4))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(M.froze||M.Frozen)
						usr << "Ele já está freezado..."
						return
					if(M.PK==0)
						usr<<"Zona NON-PK!!!"
						return
					if(M.Kaiten)
						return
					if(M.counter)
						usr<<"Ele copia e o reflete de volta para você."
						M<<"Você copiou e o refletiu."
						usr.health -= M.Mnin/5
						Death(usr)
						return
					if(M.captured)
						usr<<"Ele já está capturado!"
						return
					usr.RandomChakra1()
					usr.cdmokukyuu=1
					spawn() usr.Cooldown(300,"Mokuton Kyuu")
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					if(usr.KyuuN>=100)
						usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam
						usr.KyuuN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Mokoton Kyuu!"
						M.overlays+='Mokotoncoffin.dmi'
						M.captured=1
						usr.Chakragain()
						M.froze=1
						M.move=0
						sleep(50)
						if(M)
							M.captured=0
							M.froze=0
							M.move=1
							M.overlays-='Mokotoncoffin.dmi'
							M.overlays-='Mokotoncoffin.dmi'
							M.overlays-='Mokotoncoffin.dmi'
							M.overlays-='Mokotoncoffin.dmi'
							usr.cast=0
						return
					else
						usr.random=rand(1,2)
						if(usr.random==1)
							usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam
							usr.KyuuN += 1
							view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Mokoton Kyuu!"
							M.overlays+='Mokotoncoffin.dmi'
							M.captured=1
							M.froze=1
							M.move=0
							sleep(50)
							if(M)
								M.captured=0
								M.froze=0
								M.move=1
								M.overlays-='Mokotoncoffin.dmi'
								M.overlays-='Mokotoncoffin.dmi'
								M.overlays-='Mokotoncoffin.dmi'
								M.overlays-='Mokotoncoffin.dmi'
								usr.cast=0
							return
						if(usr.random==2)
							usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam
							usr.KyuuN += 1
							view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Mokoton Kyuu!"
							M.overlays+='Mokotoncoffin.dmi'
							M.captured=1
							M.froze=1
							M.move=0
							sleep(50)
							if(M)
								M.captured=0
								M.froze=0
								M.move=1
								M.overlays-='Mokotoncoffin.dmi'
								M.overlays-='Mokotoncoffin.dmi'
								M.overlays-='Mokotoncoffin.dmi'
								M.overlays-='Mokotoncoffin.dmi'
							usr.cast=0
							return
						if(usr.random==3)
							usr<<"Você falhou em usar o Mokoton Kyuu"
							usr.cast=1
							sleep(40)
							usr.cast=0
							return
						if(usr.random==4)
							usr<<"Você falhou em usar o Mokoton Kyuu"
							usr.cast=1
							sleep(40)
							usr.cast=0
							return
						if(usr.random==5)
							usr<<"Você falhou em usar o Mokoton Kyuu"
							usr.cast=1
							sleep(40)
							usr.cast=0
							return
						sleep(50)
						usr.cast=0
						if(M)
							M.captured=0


mob/Shodaime
	verb
		MokotonSousou()
			set category = "Jutsus"
			set name = "Mokuton Sousou"
			usr.Handseals()
			if(!usr.handseals)
				return
			for(var/mob/M in oview(5))
				if(M.party&&M.partysensei==usr.partysensei)return
				if(usr.sphere)
					return
				if(src.Kaiten)
					return
				if(usr.PK==0)
					usr<<"Zona NON-PK!!!"
					return
				if(M.PK==0)
					usr<<"Zona NON-PK!!!"
					return
				if(usr.froze)
					usr<<"Você está paralisado"
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
				if(usr.resting)
					usr<<"Não enquanto descansa"
					return
				if(usr.meditating)
					usr<<"Não enquanto medita"
					return
				if(M.counter)
					usr<<"Ele copia e o reflete de volta para você."
					M<<"Você copiou e o refletiu."
					usr.health -= M.Mnin/5
					Death(usr)
					return
				if(M.captured)
					usr.RandomChakra1()
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					usr.cast=1
					M.captured=0
					var/damage=usr.tai/4.35 + usr.nin/4.35 + usr.gen/4.35 + usr.shurikenskill/4.35 + usr.terraN/1.5 + usr.aguaN/1.5 - M.Resistencia/2
					if(damage<=0)damage=0
					view(usr)<<"Mokoton Sousou!"
					flick("sousou",M)
					M.overlays-='Mokotoncoffin.dmi'
					M.overlays-='Mokotoncoffin.dmi'
					usr.Chakragain()
					M.overlays-='Mokotoncoffin.dmi'
					M.health-=damage
					F_damage(M, damage, "#ff0000")
					if(M.health<=0)
						M.Death(usr)
						return
					sleep(40)
					usr.cast=0
				else
					return



//==== NIDAIME HOKAGE ===========================================================================


mob/suiton
	verb
		RainArmor()
			set category = "Jutsus"
			set name = "Armadura de Chuva"
			if(usr.chakra <= 500)
				usr<<"Você não possui chakra suficiente! (500)"
				return
			if(usr.cast)
				return
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
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
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(!usr.Rainarmor&&!usr.cast)
				view()<<"<font color = blue>[usr]: Armadura de Chuva!"
				usr.overlays += 'Rainarmor.dmi'
				usr.Rainarmor =1
				usr.gen = usr.gen*1.05
				usr.tai = usr.tai*1.05
				usr.nin = usr.nin*1.05
				usr.shurikenskill = usr.shurikenskill*1.05
				sand
				if(usr.Rainarmor)
					usr.chakra -=rand(200,500)
					if(usr.chakra <= 500)
						usr.overlays -= 'Rainarmor.dmi'
						usr.Rainarmor = 0
						usr.buff=0
						usr.gen = usr.Mgen
						usr.tai = usr.Mtai
						usr.nin = usr.Mnin
						usr.shurikenskill = usr.Mshurikenskill
						return
					else
						sleep(50)
						goto sand
			else
				usr.overlays -= 'Rainarmor.dmi'
				usr.Rainarmor =0
				usr.buff=0
				usr.gen = usr.Mgen
				usr.tai = usr.Mtai
				usr.nin = usr.Mnin
				usr.shurikenskill = usr.Mshurikenskill
				usr<<"Você desativa a Armadura de Chuva."

mob/genj
	verb
		BreuNidaime() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Koku Angyou no Jutsu"
			if(usr.cdkokuangyou)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Koku Angyou no Jutsu</b>!"
				return
			if(usr.cast)
				return
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
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
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
				return
			else
				for(var/mob/M in oview(3))
					if(M.client)
						if(M.party&&M.partysensei==usr.partysensei)return
						if(M.PK==0)
							return
						if(M.antigen)
							usr<<"Ele está protegido contra genjutsus"
							return
						if(M.gkai&&M.gen>=usr.gen)
							usr<<"Ele percebeu seu genjutsu e se livrou"
							M<<"Seu Kai livrou-lhe de um genjutsu"
							return
						if(M.ggkai&&M.gen+M.nin+M.tai+M.shurikenskill>=usr.gen/100+usr.tai/100+usr.nin/100+usr.shurikenskill/100)
							usr<<"Ele percebeu seu genjutsu graças ao chakra Bijuu e se livrou"
							M<<"Seu Chakra bijuu livrou-lhe de um genjutsu"
							return
						if(M.antigen)
							usr<<"O adversario percebeu seu genjutsu"
							return
						if(M.gc)
							usr.AntiGen(M)
						if(M.fantasma)
							usr<<"Ele esta intangivel"
							return
						if(usr.cdkokuangyou)return
						usr.cdkokuangyou=1
						spawn()usr.Cooldown(350,"Koku Angyou no Jutsu")
						usr.RandomChakra1()
						if(usr.chakra<=0)
							usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
							usr.health=0
							usr.chakra=0
							usr.Death(usr)
							return
						view()<<"<font color=silver><b><font face=verdana>[usr]: Koku Angyou no Jutsu!"
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							return
						var/damage = usr.gen/5+usr.nin/5+usr.tai/5+usr.shurikenskill/5 - M.Resistencia/2
						if(damage<=0)damage=0
						if(damage>=0)
							M.health -= damage
							F_damage(M, damage, "#ff0000")
							view(usr)<<"[M] foi freezado e recebeu um dano de [damage] Koku Angyou no Jutsu!"
							if(M.health <=0)M.Death(usr)
						var/Sleeptime = round(usr.gen/5+usr.nin/5+usr.tai/5+usr.shurikenskill/5 - M.gen/10+M.nin/10+M.shurikenskill/10+M.tai/10)
						if(Sleeptime >= 1)
							if(Sleeptime<10)
								Sleeptime = 20
							if(Sleeptime>150)
								Sleeptime=40
						M.Move_Delay = 10
						M:sight |= BLIND
						spawn usr.Castando()
						sleep(Sleeptime)
						M:sight &= ~BLIND
						spawn()M.Cegar()
						M.Move_Delay = 0.7
						view(M)<<"[M] conseguiu se livrar do Koku Angyou no Jutsu de [usr]!"
					else
						usr<<"Falhou...."
						return

mob/var/prisaomultipla=0
mob/jutsu
	verb
		NidaimeP()
			set category = "Jutsus"
			set name = "Prisão Múltipla"
			if(usr.cdprisaom)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Prisão Múltipla</b>!"
				return
			if(usr.froze)
				usr<<"Your frozen"
				return
			if(usr.Frozen)
				usr<<"Your frozen"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.caught)
				usr<<"Your captured"
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
			if(usr.prisaomultipla)
				usr<<"Não agora"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.cdprisaom)return
			usr.cdprisaom=1
			spawn()usr.Cooldown(300,"Prisão Múltipla")
			usr.RandomChakra1()
			if(usr.chakra<=0)
				usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
				usr.health=0
				usr.chakra=0
				usr.Death(usr)
				return
			usr<< "Você está se concentrando"
			usr.prisaomultipla=1
			sleep(50)
			view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Prisão Multipla de Água!"
			for(var/mob/M in oview(10,usr))
				view()<<"[usr] usa seu jutsus secreto!"
				M.overlays += 'Wprison.dmi'
				M.move = 0
				M.froze = 1
				sleep(50)
				M.overlays -= 'Wprison.dmi'
				M.move = 1
				M.froze = 0
			sleep(60)
			usr.prisaomultipla=0




mob/jutsu
	verb
		Taisounidaime()
			set category = "Jutsus"
			set name = "Suiton Bakusui Shouha"
			usr.Handseals()
			if(usr.cdryuusanidaime)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Suiton Bakusui Shouha</b>!"
				return
			if(!usr.handseals)
				return
			if(usr.cast)
				return
			if(usr.sphere)
				return
			if(usr.Kaiten)
				return
			if(usr.Frozen)
				usr<<"Você está paralizado!"
				return
			if(usr.caught)
				usr<<"Você foi capturado!"
				return
			if(usr.captured)
				usr<<"Você foi capturado!"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.froze)
				usr<<"Você está paralizado!"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa!"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita!"
				return
			else
				usr.RandomChakra1()
				usr.cdryuusanidaime=1
				spawn()usr.Cooldown(180,"Suiton Bakusui Shouha")
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Suiton Bakusui Shouha!"
				sleep(30)
				usr.Chakragain()
				var/obj/kisamea/T1 = new /obj/kisamea/
				var/obj/kisamea/T2 = new /obj/kisamea/
				var/obj/kisamea/T3 = new /obj/kisamea/
				var/obj/kisamea/T4 = new /obj/kisamea/
				var/obj/kisamea/T5 = new /obj/kisamea/
				var/obj/kisamea/T6 = new /obj/kisamea/
				var/obj/kisamea/T7 = new /obj/kisamea/
				var/obj/kisamea/T8 = new /obj/kisamea/
				var/obj/kisamea/T9 = new /obj/kisamea/
				var/obj/kisamea/T10 = new /obj/kisamea/
				T1.loc = locate(usr.x, usr.y+1, usr.z)
				T2.loc = locate(usr.x+1, usr.y+1, usr.z)
				T3.loc = locate(usr.x-1, usr.y+1, usr.z)
				T4.loc = locate(usr.x-2, usr.y+1, usr.z)
				T5.loc = locate(usr.x+2, usr.y+1, usr.z)
				T6.loc = locate(usr.x, usr.y-1, usr.z)
				T7.loc = locate(usr.x+1, usr.y-1, usr.z)
				T8.loc = locate(usr.x-1, usr.y-1, usr.z)
				T9.loc = locate(usr.x-2, usr.y-1, usr.z)
				T10.loc = locate(usr.x+2, usr.y-1, usr.z)
				for(var/obj/kisamea/E in view(6))
					E.nin=usr.gen/4.5 + usr.nin/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.aguaN*1.5
					E.Gowner=usr
				walk(T1,NORTH)
				walk(T2,NORTH)
				walk(T3,NORTH)
				walk(T4,NORTH)
				walk(T5,NORTH)
				walk(T6,SOUTH)
				walk(T7,SOUTH)
				walk(T8,SOUTH)
				walk(T9,SOUTH)
				walk(T10,SOUTH)
				sleep(20)
				var/obj/kisamea/Y1 = new /obj/kisamea/
				var/obj/kisamea/Y2 = new /obj/kisamea/
				var/obj/kisamea/Y3 = new /obj/kisamea/
				var/obj/kisamea/Y4 = new /obj/kisamea/
				var/obj/kisamea/Y5 = new /obj/kisamea/
				var/obj/kisamea/Y6 = new /obj/kisamea/
				var/obj/kisamea/Y7 = new /obj/kisamea/
				var/obj/kisamea/Y8 = new /obj/kisamea/
				var/obj/kisamea/Y9 = new /obj/kisamea/
				var/obj/kisamea/Y10 = new /obj/kisamea/
				Y1.loc = locate(usr.x+1, usr.y, usr.z)
				Y2.loc = locate(usr.x+1, usr.y+1, usr.z)
				Y3.loc = locate(usr.x+1, usr.y-1, usr.z)
				Y4.loc = locate(usr.x+1, usr.y+2, usr.z)
				Y5.loc = locate(usr.x+1, usr.y-2, usr.z)
				Y6.loc = locate(usr.x-1, usr.y, usr.z)
				Y7.loc = locate(usr.x-1, usr.y+1, usr.z)
				Y8.loc = locate(usr.x-1, usr.y-1, usr.z)
				Y9.loc = locate(usr.x-1, usr.y-2, usr.z)
				Y10.loc = locate(usr.x+2, usr.y+2, usr.z)
				for(var/obj/kisamea/E in view(6))
					E.nin=usr.gen/4.5 + usr.nin/4.5 + usr.tai/4.5 + usr.shurikenskill/4.5 + usr.aguaN*1.5
					E.Gowner=usr
				walk(Y1,EAST)
				walk(Y2,EAST)
				walk(Y3,EAST)
				walk(Y4,EAST)
				walk(Y5,EAST)
				walk(Y6,WEST)
				walk(Y7,WEST)
				walk(Y8,WEST)
				walk(Y9,WEST)
				walk(Y10,WEST)

mob/var/tmp/rastreando=0
mob/Nidaime
	verb
		Rastrear()
			set category = "Jutsus"
			set name = "Rastrear"
			if(usr.deslogado)
				usr<<"Você precisa logar primeiro para usar este comando."
				return
			if(usr.rastreando)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Rastrear</b>!"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			else // If the cast var isn't 1...
				if(usr.rastreando)return
				usr.rastreando=1
				spawn()usr.Cooldown(100,"Rastrear")
				for(var/mob/M in oview(50))
					if(M.client||!M.client)
						if(M.z==usr.z)
							if(M.GM||M.ADM)return
							usr<<"{\icon[M][M.name]"
							usr<<"Location: [M.x],[M.y]"
							usr<<"Suas Coordenadas: [usr.x],[usr.y],[usr.z]"

mob/jutsu/verb
	Hitele2()
		set category = "Jutsus"
		set name = "Técnica de Espaço-Tempo"
		if(usr.genjcorvo)
			usr<<"Vc esta usando uma tecnica de genjutsu...espere ela terminar"
			return
		if(usr.genjutsuativo)
			usr<<"Vc esta usando uma tecnica de genjutsu...espere ela terminar"
			return
		if(YT == 1)
			usr.YT = 0
			usr << "Você desativou a Técnica de Espaço-Tempo"
		else
			usr.YT = 1
			usr << "Você ativou a Técnica de Espaço-Tempo"


mob/var/tmp/suitonbcd = 0
obj
	bunshins
		Mb//being worked on dont use
			verb/Mb2()
				set category = "Jutsus"
				set name = "Suiton Bunshin"
				usr.Handseals()
				if(usr.suitonbcd)
					usr<<"CD"
					return
				if(usr.cast)
					return
				if(usr.meisagakure||usr.invisibility)
					usr<<"Não pode fazer isto invisível!"
					return
				if(usr.PK==0)
					usr<<"Zona NON-PK!!!"
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
				if(usr.libering)
					usr<<"Não enquanto libera chakra"
					return
				if(usr.concing)
					usr<<"Não enquanto se concentra"
					return
				else
					if(usr.chakra >= 5000)
						usr.suitonbcd = 1
						spawn()usr.Cooldown(1600,"Suiton Bunshin")
						usr.cast = 1
						view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Suiton Bunshin!"
						var/mob/enemy/SuitonB/K = new /mob/enemy/SuitonB
						if(K)
							K.name = "[usr.name]"
							if(usr.party)
								K.party=1
								K.partysensei="[usr.partysensei]"
							K.original = usr
							K.icon = /obj/mizu
							K.overlays += /obj/mizu
							K.loc = locate(usr.x-1, usr.y, usr.z)
							flick("smoke2",K)
							K.max_exp = 2
							K.guardp = 1
							K.Village = usr.Village
							K.exp = 2
							K.nin = usr.tai/6.5 + usr.nin/6.5 + usr.gen/6.5 + usr.shurikenskill/6.5
							K.tai = usr.nin/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5 + usr.tai/3.5 + usr.aguaN*1.5
							K.shurikenskill= usr.tai/6.5 + usr.nin/6.5 + usr.gen/6.5 + usr.shurikenskill/6.5
							K.health = usr.maxhealth/2
						sleep(14)
						usr.cast=0
						usr.chakra -= 5000
					else
						usr<<"Não tem chakra o bastante.(5k)"
					return


obj
	HeadbandN
		name = "Bandana do F"
		worn = 0
		icon = 'headband.dmi'
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'headbandnidaime.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src.worn = 1
					usr.overlays += 'headbandnidaime.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"



//==== YONDAIME HOKAGE ==========================================================================

mob/hokage
	verb
		KageAura()
			set name= "Damned Aura"
			set category = "Jutsus"
			if(!usr.kageaura)
				view<<"<font color = red>Damned Aura!"
				usr.tai = usr.tai*1.05
				usr.gen = usr.gen*1.05
				usr.nin = usr.nin*1.05
				usr.shurikenskill = usr.shurikenskill*1.05
				usr.kageaura=1
				usr<<"Você <font color=green>ativa</font> sua Damned Aura."
				return
			else
				usr<<"Sua Damned Aura <font color=red>terminou</font>."
				usr.tai = usr.Mtai
				usr.nin = usr.Mnin
				usr.gen = usr.Mgen
				usr.shurikenskill = usr.Mshurikenskill
				usr.kageaura=0
				return

mob/jutsu/verb
	Hitele()
		set category = "Jutsus"
		set name = "Hirashin no jutsu"
		if(usr.genjcorvo)
			usr<<"Vc esta usando uma tecnica de genjutsu...espere ela terminar"
			return
		if(usr.genjutsuativo)
			usr<<"Vc esta usando uma tecnica de genjutsu...espere ela terminar"
			return
		if(YT == 1)
			usr.YT = 0
			usr << "Você desativou o Hirashin"
			usr.verbs -= new /mob/jutsu/verb/Marcar()
			usr.verbs -= new /mob/jutsu/verb/Marcar2()
			usr.verbs -= new /mob/jutsu/verb/Hira1()
			usr.verbs -= new /mob/jutsu/verb/Hira12()
			usr.verbs -= new /mob/jutsu/verb/Hira2()
		else
			usr.YT = 1
			usr << "Você ativou o Hirashin no jutsu"
			usr.verbs += new /mob/jutsu/verb/Marcar()
			usr.verbs += new /mob/jutsu/verb/Marcar2()
			usr.verbs += new /mob/jutsu/verb/Hira1()
			usr.verbs += new /mob/jutsu/verb/Hira12()
			usr.verbs += new /mob/jutsu/verb/Hira2()


mob/var/tmp/plantandokunai=0
mob/jutsu
	verb
		PlantKunai()//kaguya sword
			set category = "Jutsus"
			set name = "Plantar Kunai"
			if(usr.plantandokunai)
				usr<<"Espere para plantar kunais novamente!"
				return
			if (usr.cast == 1)
				return
			if(usr.froze)
				usr<<"Você está paralisado"
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
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			else
				usr << "Você plantou uma kunai"
				usr.plantandokunai=1
				var/obj/KunaiM/B = new/obj/KunaiM
				B.loc = locate(usr.x, usr.y-1, usr.z)
				B.Gowner = usr
				sleep(13)
				usr.plantandokunai=0


mob/jutsu
	verb
		LancarKunai()//kaguya sword
			set category = "Jutsus"
			set name = "Arremessar Kunai Yondaime"
			if (usr.cast == 1)
				return
			if(usr.froze||usr.kawa)
				usr<<"Você está paralisado"
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
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.arremessandoky)
				usr<<"Espere um pouco para arremessar novamente!"
				return
			if(usr.treinamento)
				usr<<"Não enquanto upa tai"
				return
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
				return
			if(usr.vmeditating)
				usr<<"Não enquanto medita"
				return
			if(usr.vconcing)
				usr<<"Não enquanto concentra"
				return
			if(usr.vlibering)
				usr<<"Não enquanto libera chakra"
				return
			else
				usr << "Você arremessou uma kunai"
				var/obj/KunaiMM/B = new/obj/KunaiMM
				B.Gowner = usr
				B.loc=usr.loc
				B.nin=usr.nin/8+usr.tai/8+usr.gen/8+usr.shurikenskill/8
				B.dir = usr.dir
				B.Move_Delay=0.5
				B.Gowner=usr
				walk(B,usr.dir)
				usr.arremessandoky=1
				sleep(100)
				usr.arremessandoky=0
				del(B)



mob/jutsu
	verb
		Kunailv2(mob/m in oview(4))//kaguya sword
			set category = "Jutsus"
			set name = "Usar Kunai Especial"
			if(usr.cdkunai)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Kunai Especial</b>!"
				return
			if (usr.cast == 1)
				return
			if(usr.froze)
				usr<<"Você está paralisado"
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
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			else
				if(usr.cdkunai)return
				usr.RandomChakra1()
				usr.cdkunai=1
				spawn()usr.Cooldown(100,"Usar Kunai Especial")
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam
				var/obj/KunaiMM/K = new /obj/KunaiMM
				usr.target=m
				K.loc = usr.loc
				K.nin=usr.nin/7+usr.tai/7+usr.gen/7+usr.shurikenskill/7
				K.name="[usr]"
				usr.Chakragain()
				K.Move_Delay=2
				K.Gowner=usr
				walk_towards(K,m)
				sleep(8)
				usr.cast = 0
				sleep(41)
				del(K)
				if (target == null)
					del(K)








mob/var/marked=0
mob/var/marcou=0
mob/jutsu
	verb
		Marcar()
			set category = "Jutsus"
			set name = "Marcar Oponente"
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
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
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.marcou)
				usr<<"Você já marcou alguém"
				return
			if(usr.cast)
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			else
				for(var/mob/M in oview(2))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(M.Kaiten||M.sphere||M.counter)
						usr << "Your Bee would be killed if you put it on them right now!"
						return
					if(M.marked)
						usr<<"Vc ja o marcou"
						return
					if(M.PK==0)
						usr<<"Zona NON-PK!!!"
						return
					usr.RandomChakra1()
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					usr<<"Vc acaba de marcar [M]!"
					M.marked = 1
					usr.marcou=1
					sleep(1200)
					if(M.marked==1)
						M.marked=0
						usr<<"[M] acaba de ser desmarcado"
						usr.marcou=0


mob/jutsu
	verb
		Marcar2()
			set category = "Jutsus"
			set name = "Thunder Flash Hirashin"
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.froze)
				usr<<"Você está paralisado"
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
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			for(var/mob/M in world)
				if(M.marked)
					usr.RandomChakra1()
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					usr.overlays += 'Vortex.dmi'
					usr.loc = locate(M.x,M.y+1,M.z)
					M.marked=0
					usr.marcou=0
					M<<"[usr] usa sua incrivel tecnica Thunder Flash"
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Thunder Flash Hirashin!!"
					sleep(8)
					usr.overlays -= 'Vortex.dmi'
					usr.overlays -= 'Vortex.dmi'
					usr.overlays -= 'Vortex.dmi'
					usr.overlays -= 'Vortex.dmi'


mob/jutsu
	verb
		Hira1()
			set category = "Jutsus"
			set name = "Hiraishin Lv1"
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
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
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			else
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				for(var/obj/KunaiM/B in world)
					if(B.Gowner == usr)
						flick('Vortex.dmi',usr)
						usr.loc = locate(B.x, B.y, B.z)
						usr.verbs -= /mob/cliff/verb/TreinarHP
						return


mob/jutsu
	verb
		Hira12()
			set category = "Jutsus"
			set name = "Hiraishin Lv1 Ataque"
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
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
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.cast)
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			else
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				for(var/obj/KunaiM/B in world)
					if(B.Gowner == usr)
						flick('Vortex.dmi',usr)
						usr.loc = locate(B.x, B.y, B.z)
						usr.verbs -= /mob/cliff/verb/TreinarHP
						usr.Vortex()

mob/var/tmp/vortexdelay=0
mob
	proc
		Vortex()
			for(var/mob/M in oview(3,src))
				if(usr.vortexdelay) return
				if(M.party&&M.partysensei==usr.partysensei)return
				if(usr.froze||usr.captured||usr.Frozen)
					usr<<"Você está paralizado!"
					return
				if(M.NPC&&M.original==usr)return
				if(!M.PK||M.bijuunpc)
					usr<<"Não pode usar nele!"
					return
				var/damage=usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.tai/4 - M.Resistencia/2
				if(damage<=0)damage=0
				view()<<"[M] recebeu [damage] de dano Vortez criado pelo Hiraishin [src]"
				M.health-=damage
				F_damage(M, damage, "#ff0000")
				if(M.health<=0)
					M.Death(src)
				usr.vortexdelay=1
				sleep(12)
				usr.vortexdelay=0

mob
	proc
		Vortex2()
			for(var/mob/M in oview(3,src))
				if(usr.vortexdelay) return
				if(M.party&&M.partysensei==usr.partysensei)return
				if(usr.froze||usr.captured||usr.Frozen)
					usr<<"Você está paralizado!"
					return
				if(M.NPC&&M.original==usr)return
				if(!M.PK||M.bijuunpc)
					usr<<"Não pode usar nele!"
					return
				var/damage=usr.nin/3.75 + usr.gen/3.75 + usr.shurikenskill/3.75 + usr.tai/3.75 - M.Resistencia/2
				if(damage<=0)damage=0
				view()<<"[M] recebeu [damage] de dano Vortez criado pelo Hiraishin Lv2 [src]"
				M.health-=damage
				F_damage(M, damage, "#ff0000")
				if(M.health<=0)
					M.Death(src)
				usr.vortexdelay=1
				sleep(12)
				usr.vortexdelay=0


mob/jutsu
	verb
		Hira2()
			set category = "Jutsus"
			set name = "Hiraishin Lv2"
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
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
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			else
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				for(var/obj/KunaiMM/B in world)
					if(B.Gowner == usr)
						flick('Vortex.dmi',usr)
						usr.loc = locate(B.x, B.y, B.z)
						usr.verbs -= /mob/cliff/verb/TreinarHP
						usr.Vortex2()
						return


mob/jutsu
	verb
		Selo()
			set name = "Fuuin Jutsu: Shiki Fuujin"
			set category = "Jutsus"
			if(usr.froze)
				return
			else
				for(var/mob/M in oview(2))
					if(usr.Mchakra==usr.Mchakra)
						if(M != src)
							if(M.party&&M.partysensei==usr.partysensei)return
							if(istype(M,/mob/marcos/monumentoLeaf))return
							if(istype(M,/mob/marcos/monumentoCloud))return
							if(istype(M,/mob/marcos/monumentoMist))return
							if(istype(M,/mob/marcos/monumentoRain))return
							if(istype(M,/mob/marcos/monumentoSand))return
							if(istype(M,/mob/marcos/monumentoRock))return
							usr.RandomChakra1()
							if(usr.chakra<=0)
								usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
								usr.health=0
								usr.chakra=0
								usr.Death(usr)
								return
							usr.froze=1
							usr.move=0
							M.froze=1
							M.move=0
							var/obj/dm1/A = new /obj/dm1/
							var/obj/dm2/B = new /obj/dm2/
							var/obj/dm3/C = new /obj/dm3/
							var/obj/dm4/D = new /obj/dm4/
							var/obj/dm5/E = new /obj/dm5/
							var/obj/dm6/F = new /obj/dm6/
							var/obj/dm7/G = new /obj/dm7/
							var/obj/dm8/H = new /obj/dm8/
							var/obj/dm9/I = new /obj/dm9/
							var/obj/dm10/J = new /obj/dm10/
							var/obj/dm11/K = new /obj/dm11/
							var/obj/dm12/L = new /obj/dm12/
							var/obj/dm13/L2 = new /obj/dm13/
							var/obj/dm14/N = new /obj/dm14/
							var/obj/dm15/O = new /obj/dm15/
							var/obj/dm16/P = new /obj/dm16/
							var/obj/dm17/Q = new /obj/dm17/
							var/obj/dm18/R = new /obj/dm18/
							var/obj/dm19/S = new /obj/dm19/
							var/obj/dm20/T = new /obj/dm20/
							var/obj/dm21/U = new /obj/dm21/
							var/obj/dm22/V = new /obj/dm22/
							var/obj/dm23/X = new /obj/dm23/
							var/obj/dm24/Z = new /obj/dm24/
							var/obj/dm25/W = new /obj/dm25/
							var/obj/dm26/Y = new /obj/dm26/
							A.loc=locate(src.x-1,src.y+2,src.z)
							B.loc=locate(src.x,src.y+2,src.z)
							C.loc=locate(src.x+1,src.y+2,src.z)
							D.loc=locate(src.x+2,src.y+2,src.z)
							E.loc=locate(src.x-2,src.y+1,src.z)
							F.loc=locate(src.x-1,src.y+1,src.z)
							G.loc=locate(src.x,src.y+1,src.z)
							H.loc=locate(src.x+1,src.y+1,src.z)
							I.loc=locate(src.x+2,src.y+1,src.z)
							J.loc=locate(src.x+3,src.y+1,src.z)
							K.loc=locate(src.x-2,src.y,src.z)
							L.loc=locate(src.x-1,src.y,src.z)
							L2.loc=locate(src.x,src.y,src.z)//0
							N.loc=locate(src.x+1,src.y,src.z)
							O.loc=locate(src.x+2,src.y,src.z)
							P.loc=locate(src.x+3,src.y,src.z)
							Q.loc=locate(src.x-2,src.y-1,src.z)
							R.loc=locate(src.x-1,src.y-1,src.z)
							S.loc=locate(src.x,src.y-1,src.z)
							T.loc=locate(src.x+1,src.y-1,src.z)
							U.loc=locate(src.x+2,src.y-1,src.z)
							V.loc=locate(src.x+3,src.y-1,src.z)
							X.loc=locate(src.x-1,src.y-2,src.z)
							Z.loc=locate(src.x,src.y-2,src.z)
							W.loc=locate(src.x+1,src.y-2,src.z)
							Y.loc=locate(src.x+2,src.y-2,src.z)
							sleep(100)
							view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Fuuin Jutsu: Shiki Fuujin"
							M << "Sua alma foi selada pelo Fuuin jutsu"
							M.froze=0
							M.move=1
							M.health = 0
							M.Death(usr)
							sleep(10)
							del(A)
							del(B)
							del(C)
							del(D)
							del(E)
							del(F)
							del(G)
							del(H)
							del(I)
							del(J)
							del(K)
							del(L)
							del(L2)
							del(N)
							del(O)
							del(P)
							del(Q)
							del(R)
							del(S)
							del(T)
							del(U)
							del(V)
							del(X)
							del(Z)
							del(W)
							del(Y)
							usr.froze=0
							usr.move=1
							usr << "O trato está feito..sua alma é minha "
							usr.naopodesuicidar=1
							sleep(100)
							usr.naopodesuicidar=0
							usr.health = 0
							usr.Death(usr)
					else
						usr<<"Wattahell"
						return

mob/var/naopodesuicidar=0
//==== GODAIME HOKAGE ===========================================================================

mob/var/desselado=0
mob/tsunade
	verb
		NS()
			set category = "Jutsus"
			set name = "Ninpou Sousousaizei"
			if(usr.cast)
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
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(!usr.desselado)
				usr<<"Você precisa romper seu selo primeiro"
				return
			else
				usr.chakra-=25000
				if(usr.chakra<=25000)
					usr<<"Você não possui chakra suficiente e desmaiou (25k)!"
					return
				view<<"[usr]  rompeu seu selo e esta se regenerando."
				usr<<"Você começou a se regenerar"
				sleep(30)
				usr.health = usr.maxhealth
				usr.chakra = usr.Mchakra
				usr.stamina = usr.Mstamina
				usr.desselado=0
				sleep(200)
				usr<<"O efeito colateral do jutsu começou"
				usr.maxhealth -= usr.maxhealth/50
				//usr.SalvarAgora()

mob/tsunade
	verb
		RompSelo()
			set category = "Jutsus"
			set name = "Infuuin Kai"
			if(usr.cast)
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
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(!usr.desselado)
				usr.desselado=1
				view<<"[usr]  rompeu o selo em sua testa liberando todo seu chakra."
				sleep(20)
				usr.chakra = usr.Mchakra*2
			else
				usr<<"Vc ja rompeu o Selo"


mob/jutsu
	verb
		SuperPunhoT() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Oukashou"
			if(usr.cdoukashou)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Oukashou</b>!"
				return
			if(usr.cast)
				return
			if(usr.Frozen)
				usr<<"Você está paralisado."
				return
			if(usr.froze)
				usr<<"Você está paralisado."
				return
			if(usr.stamina<=3000)
				usr<<"Pouca stamina (3k)"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.stamina<=2999)
				usr<<"Você não tem stamina o suficiente."
				return
			else
				for(var/mob/M in oview(3))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(M.PK==0)
						usr<<"Ele está NONPK!"
						return
					if(usr.cdoukashou)return
					usr.cdoukashou=1
					spawn()usr.Cooldown(150,"Oukashou")
					usr.chakra-=3000
					usr.stamina-=3000
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
	//				usr.cast=1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Oukashou!"
					var/obj/Crater_Center/B = new /obj/Crater_Center
					B.loc = M.loc
					var/damage = usr.tai/3.5 + usr.nin/3.5 - M.Resistencia/2
					M.health -= damage
					F_damage(M, damage, "#800080")
					M.Death(usr)
					spawn()usr.Castando()

mob/tsunade
	verb
		ChakraNoMesuTsu()
			set category = "Jutsus"
			set name = "Chakra No Mesu Tsunade"
			if(usr.cast)
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
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(!usr.scalpel)
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr<<"Você concentra seu chakra nas suas mãos para criar punhos de chakra."
				usr.verbs += new /mob/medical/verb/SliceTendons()
				usr.verbs += new /mob/medical/verb/ScrewNerves()
				usr.scalpel =1
				usr.overlays+="ChakuraKyuinJutsu.dmi"
				mesu
				if(usr.scalpel)
					usr.chakra -=5
					if(usr.chakra <= 4)
						usr<<"Você cancelou o Chakra no Mesu"
						usr.scalpel = 0
						usr.verbs -= new /mob/medical/verb/SliceTendons()
						usr.verbs -= new /mob/medical/verb/ScrewNerves()
						usr.overlays-="ChakuraKyuinJutsu.dmi"
						return
					else
						sleep(4)
						goto mesu
			else if(usr.scalpel)
				usr.scalpel=0
				usr<<"Você cancelou o Chakra no Mesu"
				usr.verbs -= new /mob/medical/verb/SliceTendons()
				usr.verbs -= new /mob/medical/verb/ScrewNerves()
				usr.overlays-="ChakuraKyuinJutsu.dmi"


//==== RAIKAGE =================================================================================

mob/jutsu
	verb
		RaikageJ()
			set category = "Jutsus"
			set name = "Raiton no Yoroi"
			if(usr.cast)
				usr<<"Não agora."
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
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
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
			if(!usr.Ryoroi&&!usr.cast)
				usr.RandomChakra01()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				view()<<"<font color = red>[usr]: Raiton no Yoroi!"
				usr.overlays += 'auraraikage.dmi'
				usr.Ryoroi =1
				usr.nin = usr.nin*1.075
				usr.tai = usr.tai*1.075
				usr.gen = usr.gen*1.075
				usr.shurikenskill = usr.shurikenskill*1.075
				usr.Move_Delay = 0
				usr.verbs += new /mob/jutsu/verb/raikage()
				fire
				if(usr.Ryoroi)
					usr.chakra -=rand(500,1000)
					if(usr.chakra <= 500)
						usr.overlays -= 'auraraikage.dmi'
						usr.Move_Delay = 0.7
						usr.Ryoroi = 0
						usr.buff=0
						usr.nin = usr.Mnin
						usr.tai = usr.Mtai
						usr.gen = usr.Mgen
						usr.shurikenskill = usr.Mshurikenskill
						return
					else
						sleep(40)
						goto fire
			else if(usr.Ryoroi)
				usr.overlays -= 'auraraikage.dmi'
				usr.Move_Delay = 0.7
				usr.Ryoroi =0
				usr.buff=0
				usr.nin = usr.Mnin
				usr.tai = usr.Mtai
				usr.gen = usr.Mgen
				usr.shurikenskill = usr.Mshurikenskill
				usr<<"Você desativa o Raiton no Yoroi."


mob/jutsu
	verb
		raikage() // Verb used for cast the beam
			set category = "TaiJutsu"
			set name = "Raiton Liger Bomb"
			if(usr.cdlbomb)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Liger Bomb</b>!"
				return
			if(usr.cast) // If the mob's cast var is one...
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.Frozen)
				usr<<"Você está paralisado"
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
				if(usr.raim2)
					for(var/mob/M in oview(5))
						if(M.party&&M.partysensei==usr.partysensei)return
						if(M.Kaiten)
							return
						if(usr.cdlbomb)return
						usr.cdlbomb=1
						spawn()usr.Cooldown(100,"Liger Bomb")
						usr.RandomChakra1()
						if(usr.chakra<=0)
							usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
							usr.health=0
							usr.chakra=0
							usr.Death(usr)
							return
						M<<"Vc foi atingido pelo Liger Bomb de [usr]"
						usr<<"Vc ataca [M] com seu Liger Bomb"
						var/obj/Crater_Center/B = new /obj/Crater_Center
						B.loc = M.loc
						var/damage=usr.tai/4.15 + usr.nin/4.15 + usr.gen/4.15 + usr.shurikenskill/4.15 + usr.trovaoN*1.5 - M.Resistencia/2
						if(damage<=0)damage=0
						M.health-=damage
						F_damage(M, damage, "#ff0000")
						if(M.health<=0)
							M.Death(usr)
				else
					usr<<"Precisa ativar sua Armadura de Raio Velocidade Máxima!"





//==== OROCHIMARU ===============================================================================


mob/var/roubandocorpo=0

mob/var/tmp/cdfushiten=0
mob/jutsu
	verb
		Daja() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Fushi Tensei"
			usr.Handseals()
			if(usr.cast||usr.Kaiten) // If the mob's cast var is one...
				return
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
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
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(!usr.handseals)
				return
			if(usr.roubandocorpo)
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.health>usr.maxhealth/4)
				usr<<"Vc precisa estar mais fraco"
				return
			else
				for(var/mob/M in oview(2))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(!M.client)
						usr<<"Você não pode usar esse jutsu em NPCs."
						return
					usr.cdfushiten=1
					spawn()usr.Cooldown(900,"Fushi Tensei")
					usr.RandomChakra5()
					usr<<"Você começa à absorver partes do corpo de [M]"
					usr.roubandocorpo=1
					usr.move=0
					usr.froze=1
					M.move=0
					M.froze=1
					sleep(30)
					usr.roubandocorpo=0
					usr.move=1
					usr.froze=0
					M.move=1
					M.froze=0
					var/damage = M.maxhealth/4
					var/damage2 = M.Mchakra/10
					if(damage >= 1)
						M.health -= damage
						M.chakra -= damage2
						F_damage(M, damage, "#ff0000")
						usr.health += damage
						F_damage(usr, damage2, "#008000")
						usr.chakra += damage2
						M<<"[usr] está absorvendo partes do seu corpo."
						usr.overlays-='chakra.dmi'
						if(M.health<=0||M.chakra<=0)
							M.Death(usr)







mob/jutsu
	verb
		Duplo() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Souja Sousai no Jutsu"
			usr.Handseals()
			if(usr.cdduplo)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Souja Sousai no Jutsu</b>!"
				return
			if(usr.cast||usr.Kaiten) // If the mob's cast var is one...
				return
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
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
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.chakra <= 1000)
				usr<<"Você não possui chakra suficiente! (1k)"
				return
			if(!usr.handseals)
				return
			else
				for(var/mob/M in oview(1))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(!M.PK||M.bijuunpc)
						usr<<"Não pode usar nele!"
						return
					if(M.bijuunpc)
						usr<<"Não pode ser usado nele!"
						return
					if(usr.cdduplo)return
					usr.cdduplo=1
					spawn()usr.Cooldown(3000,"Souja Sousai no Jutsu")
					view<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Souja Sousai no Jutsu"
					usr.health = 1
					usr.chakra-=1000
					sleep(30)
					usr<<"Por usar um kinjutsu vc terá 2% de seus stats cortados"
					usr.maxhealth-=usr.maxhealth/50
					usr.Mchakra-=usr.Mchakra/50
					usr.Mtai-=usr.Mtai/50
					usr.Mgen-=usr.Mgen/50
					usr.Mnin-=usr.Mnin/50
					usr.Mshurikenskill-=Mshurikenskill/50
					usr.chakraN-=usr.chakraN/50
					usr.Resistencia-=usr.Resistencia/50
					usr.veloN-=usr.veloN/50
					//usr.SalvarAgora()
					M.health = 0
					M.Death(usr)


obj
	Bunshin
		Edo
			verb/Ress() // Verb used for cast the beam
				set category = "Jutsus"
				set name = "Edo Tensei"
				usr.Handseals()
				if(usr.cdedotensei)
					usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Edo Tensei</b>!"
					return
				if(usr.cast)
					return
				if(usr.PK==0)
					usr<<"Zona NON-PK!!!"
					return
				if(usr.pb==1)
					usr<<"Você já invocou o(s) Edo Tensei(s)!"
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
				if(usr.libering)
					usr<<"Não enquanto libera chakra"
					return
				if(usr.concing)
					usr<<"Não enquanto se concentra"
					return
				if(usr.corpos==0)
					usr<<"Vc não possui material para o Edo Tensei!"
					return
				else
					if(usr.cdedotensei)return
					usr.cdedotensei=1
					spawn()usr.Cooldown(1600,"Edo Tensei")
					if(usr.chakra >= 10000)
						usr.cast = 1
						usr.pb = 1
						if(usr.corpos==1)
							view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Kuchiyose: Edo Tensei!"
							view() << "{Edo Tensei} Kidomaru foi invocado!"
							var/mob/enemy/Corpo/K = new /mob/enemy/Corpo
							if(K)
								K.name = "{Edo Tensei} Kidomaru de [usr]"
								if(usr.party)
									K.party=1
									K.partysensei="[usr.partysensei]"
								K.original = usr
								K.icon = /obj/somedo1
								K.overlays += /obj/somedo1
								K.loc = locate(usr.x-1, usr.y, usr.z)
								flick("smoke2",K)
								K.max_exp = 2
								K.guardp = 1
								K.Village= usr.Village
								K.exp = 2
								K.nin = usr.nin/8 + usr.tai/8 + usr.gen/8 + usr.shurikenskill/8
								K.tai = usr.nin/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5 + usr.tai/3.5
								K.shurikenskill= usr.nin/2
								K.health = usr.maxhealth
							sleep(14)
							usr.cast=0
							usr.chakra -= 10000
							sleep(1200)
							usr.pb = 0
							return
						if(usr.corpos==2)
							view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Kuchiyose: Edo Tensei!"
							view() << "{Edo Tensei} Kidomaru e {Edo Tensei} Sakon foram invocados!"
							var/mob/enemy/Corpo/K = new /mob/enemy/Corpo
							var/mob/enemy/Corpo/L = new /mob/enemy/Corpo
							if(K)
								K.name = "{Edo Tensei} Kidomaru de [usr]"
								if(usr.party)
									K.party=1
									K.partysensei="[usr.partysensei]"
								K.original = usr
								K.icon = /obj/somedo1
								K.overlays += /obj/somedo1
								K.loc = locate(usr.x-1, usr.y, usr.z)
								flick("smoke2",K)
								K.max_exp = 2
								K.guardp = 1
								K.Village= usr.Village
								K.exp = 2
								K.nin = usr.nin/8 + usr.tai/8 + usr.gen/8 + usr.shurikenskill/8
								K.tai = usr.nin/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5 + usr.tai/3.5
								K.shurikenskill= usr.nin/2
								K.health = usr.maxhealth
							sleep(5)
							if(L)
								L.name = "{Edo Tensei} Sakon de [usr]"
								if(usr.party)
									L.party=1
									L.partysensei="[usr.partysensei]"
								L.original = usr
								L.icon = /obj/somedo2
								L.overlays += /obj/somedo2
								L.loc = locate(usr.x-2, usr.y, usr.z)
								flick("smoke2",L)
								L.max_exp = 2
								L.exp = 2
								L.guardp = 1
								L.Village= usr.Village
								L.nin = usr.nin/8 + usr.tai/8 + usr.gen/8 + usr.shurikenskill/8
								L.tai = usr.nin/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5 + usr.tai/3.5
								L.shurikenskill= usr.nin/2
								L.health = usr.maxhealth
								sleep(14)
								usr.cast=0
								usr.chakra -= 10000
								sleep(1200)
								usr.pb = 0
								return
						if(usr.corpos==3)
							view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Kuchiyose: Edo Tensei!"
							view() << "{Edo Tensei} Kidomaru, {Edo Tensei} Sakon e {Edo Tensei} Jiroubou foram invocados!"
							var/mob/enemy/Corpo/K = new /mob/enemy/Corpo
							var/mob/enemy/Corpo/L = new /mob/enemy/Corpo
							var/mob/enemy/Corpo/M = new /mob/enemy/Corpo
							if(K)
								K.name = "{Edo Tensei} Kidomaru de [usr]"
								if(usr.party)
									K.party=1
									K.partysensei="[usr.partysensei]"
								K.original = usr
								K.icon = /obj/somedo1
								K.overlays += /obj/somedo1
								K.loc = locate(usr.x-1, usr.y, usr.z)
								flick("smoke2",K)
								K.max_exp = 2
								K.guardp = 1
								K.Village= usr.Village
								K.exp = 2
								K.nin = usr.nin/8 + usr.tai/8 + usr.gen/8 + usr.shurikenskill/8
								K.tai = usr.nin/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5 + usr.tai/3.5
								K.shurikenskill= usr.nin/2
								K.health = usr.maxhealth
							sleep(5)
							if(L)
								L.name = "{Edo Tensei} Sakon de [usr]"
								if(usr.party)
									L.party=1
									L.partysensei="[usr.partysensei]"
								L.original = usr
								L.icon = /obj/somedo2
								L.overlays += /obj/somedo2
								L.loc = locate(usr.x-2, usr.y, usr.z)
								flick("smoke2",L)
								L.max_exp = 2
								L.exp = 2
								L.guardp = 1
								L.Village= usr.Village
								L.nin = usr.nin/8 + usr.tai/8 + usr.gen/8 + usr.shurikenskill/8
								L.tai = usr.nin/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5 + usr.tai/3.5
								L.shurikenskill= usr.nin/2
								L.health = usr.maxhealth
							sleep(5)
							if(M)
								M.name = "{Edo Tensei} Jiroubou de [usr]"
								if(usr.party)
									M.party=1
									M.partysensei="[usr.partysensei]"
								M.original = usr
								M.icon = /obj/somedo3
								M.overlays += /obj/somedo3
								M.loc = locate(usr.x+1, usr.y, usr.z)
								flick("smoke2",M)
								M.max_exp = 2
								M.exp = 2
								M.guardp = 1
								M.Village= usr.Village
								M.nin = usr.nin/8 + usr.tai/8 + usr.gen/8 + usr.shurikenskill/8
								M.tai = usr.nin/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5 + usr.tai/3.5
								M.shurikenskill= usr.nin/2
								M.health = usr.maxhealth
							sleep(14)
							usr.cast=0
							usr.chakra -= 10000
							sleep(1200)
							usr.pb = 0
							return
						if(usr.corpos==4)
							view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Kuchiyose: Edo Tensei!"
							view() << "{Edo Tensei} Kidomaru, {Edo Tensei} Sakon, {Edo Tensei} Jiroubou e {Edo Tensei} Tayuya foram invocados!"
							var/mob/enemy/Corpo/K = new /mob/enemy/Corpo
							var/mob/enemy/Corpo/L = new /mob/enemy/Corpo
							var/mob/enemy/Corpo/M = new /mob/enemy/Corpo
							var/mob/enemy/Corpo/N = new /mob/enemy/Corpo
							if(K)
								K.name = "{Edo Tensei} Kidomaru de [usr]"
								if(usr.party)
									K.party=1
									K.partysensei="[usr.partysensei]"
								K.original = usr
								K.icon = /obj/somedo1
								K.overlays += /obj/somedo1
								K.loc = locate(usr.x-1, usr.y, usr.z)
								flick("smoke2",K)
								K.max_exp = 2
								K.guardp = 1
								K.Village= usr.Village
								K.exp = 2
								K.nin = usr.nin/8 + usr.tai/8 + usr.gen/8 + usr.shurikenskill/8
								K.tai = usr.nin/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5 + usr.tai/3.5
								K.shurikenskill= usr.nin/2
								K.health = usr.maxhealth
							sleep(5)
							if(L)
								L.name = "{Edo Tensei} Sakon de [usr]"
								if(usr.party)
									L.party=1
									L.partysensei="[usr.partysensei]"
								L.original = usr
								L.icon = /obj/somedo2
								L.overlays += /obj/somedo2
								L.loc = locate(usr.x-2, usr.y, usr.z)
								flick("smoke2",L)
								L.max_exp = 2
								L.exp = 2
								L.guardp = 1
								L.Village= usr.Village
								L.nin = usr.nin/8 + usr.tai/8 + usr.gen/8 + usr.shurikenskill/8
								L.tai = usr.nin/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5 + usr.tai/3.5
								L.shurikenskill= usr.nin/2
								L.health = usr.maxhealth
								sleep(5)
							if(M)
								M.name = "{Edo Tensei} Jiroubou de [usr]"
								if(usr.party)
									M.party=1
									M.partysensei="[usr.partysensei]"
								M.original = usr
								M.icon = /obj/somedo3
								M.overlays += /obj/somedo3
								M.loc = locate(usr.x+1, usr.y, usr.z)
								flick("smoke2",M)
								M.max_exp = 2
								M.exp = 2
								M.guardp = 1
								M.Village= usr.Village
								M.nin = usr.nin/8 + usr.tai/8 + usr.gen/8 + usr.shurikenskill/8
								M.tai = usr.nin/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5 + usr.tai/3.5
								M.shurikenskill= usr.nin/2
								M.health = usr.maxhealth
								sleep(5)
							if(N)
								N.name = "{Edo Tensei} Tayuya de [usr]"
								if(usr.party)
									N.party=1
									N.partysensei="[usr.partysensei]"
								N.original = usr
								N.icon = /obj/somedo4
								N.overlays += /obj/somedo4
								N.loc = locate(usr.x+2, usr.y, usr.z)
								flick("smoke2",N)
								N.max_exp = 2
								N.exp = 2
								N.guardp = 1
								N.Village= usr.Village
								N.nin = usr.nin/8 + usr.tai/8 + usr.gen/8 + usr.shurikenskill/8
								N.tai = usr.nin/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5 + usr.tai/3.5
								N.shurikenskill= usr.nin/2
								N.health = usr.maxhealth
							sleep(14)
							usr.cast=0
							usr.chakra -= 10000
							sleep(1200)
							usr.pb = 0
							return
						if(usr.corpos==5)
							view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Kuchiyose: Edo Tensei!"
							view() << "{Edo Tensei} Kidomaru, {Edo Tensei} Sakon, {Edo Tensei} Jiroubou, {Edo Tensei} Tayuya e {Edo Tensei} Kimimaru foram invocados!"
							var/mob/enemy/Corpo/K = new /mob/enemy/Corpo
							var/mob/enemy/Corpo/L = new /mob/enemy/Corpo
							var/mob/enemy/Corpo/M = new /mob/enemy/Corpo
							var/mob/enemy/Corpo/N = new /mob/enemy/Corpo
							var/mob/enemy/Corpo/O = new /mob/enemy/Corpo
							if(K)
								K.name = "{Edo Tensei} Kidomaru de [usr]"
								if(usr.party)
									K.party=1
									K.partysensei="[usr.partysensei]"
								K.original = usr
								K.icon = /obj/somedo1
								K.overlays += /obj/somedo1
								K.loc = locate(usr.x-1, usr.y, usr.z)
								flick("smoke2",K)
								K.max_exp = 2
								K.guardp = 1
								K.Village= usr.Village
								K.exp = 2
								K.nin = usr.nin/8 + usr.tai/8 + usr.gen/8 + usr.shurikenskill/8
								K.tai = usr.nin/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5 + usr.tai/3.5
								K.shurikenskill= usr.nin/2
								K.health = usr.maxhealth
							sleep(5)
							if(L)
								L.name = "{Edo Tensei} Sakon de [usr]"
								if(usr.party)
									L.party=1
									L.partysensei="[usr.partysensei]"
								L.original = usr
								L.icon = /obj/somedo2
								L.overlays += /obj/somedo2
								L.loc = locate(usr.x-2, usr.y, usr.z)
								flick("smoke2",L)
								L.max_exp = 2
								L.exp = 2
								L.guardp = 1
								L.Village= usr.Village
								L.nin = usr.nin/8 + usr.tai/8 + usr.gen/8 + usr.shurikenskill/8
								L.tai = usr.nin/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5 + usr.tai/3.5
								L.shurikenskill= usr.nin/2
								L.health = usr.maxhealth
								sleep(5)
							if(M)
								M.name = "{Edo Tensei} Jiroubou de [usr]"
								if(usr.party)
									M.party=1
									M.partysensei="[usr.partysensei]"
								M.original = usr
								M.icon = /obj/somedo3
								M.overlays += /obj/somedo3
								M.loc = locate(usr.x+1, usr.y, usr.z)
								flick("smoke2",M)
								M.max_exp = 2
								M.exp = 2
								M.guardp = 1
								M.Village= usr.Village
								M.nin = usr.nin/8 + usr.tai/8 + usr.gen/8 + usr.shurikenskill/8
								M.tai = usr.nin/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5 + usr.tai/3.5
								M.shurikenskill= usr.nin/2
								M.health = usr.maxhealth
								sleep(5)
							if(N)
								N.name = "{Edo Tensei} Tayuya de [usr]"
								if(usr.party)
									N.party=1
									N.partysensei="[usr.partysensei]"
								N.original = usr
								N.icon = /obj/somedo4
								N.overlays += /obj/somedo4
								N.loc = locate(usr.x+2, usr.y, usr.z)
								flick("smoke2",N)
								N.max_exp = 2
								N.exp = 2
								N.guardp = 1
								N.Village= usr.Village
								N.nin = usr.nin/8 + usr.tai/8 + usr.gen/8 + usr.shurikenskill/8
								N.tai = usr.nin/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5 + usr.tai/3.5
								N.shurikenskill= usr.nin/2
								N.health = usr.maxhealth
								sleep(5)
							if(O)
								O.name = "{Edo Tensei} Kimimaru de [usr]"
								if(usr.party)
									O.party=1
									O.partysensei="[usr.partysensei]"
								O.original = usr
								O.icon = /obj/somedo5
								O.overlays += /obj/somedo5
								O.loc = locate(usr.x+2, usr.y, usr.z)
								flick("smoke2",O)
								O.max_exp = 2
								O.exp = 2
								O.guardp = 1
								O.Village= usr.Village
								O.nin = usr.nin/8 + usr.tai/8 + usr.gen/8 + usr.shurikenskill/8
								O.tai = usr.nin/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5 + usr.tai/3.5
								O.shurikenskill= usr.nin/2
								O.health = usr.maxhealth
							sleep(14)
							usr.cast=0
							usr.chakra -= 10000
							sleep(1200)
							usr.pb = 0
							return

mob/var/tmp/cdtajuusn=0
mob/Orochimaru
	verb
		Tajuusnake() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Tajuu Snake no Jutsu"
			usr.Handseals()
			if(usr.cdtajuusn)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Tajuu Snake no Jutsu</b>!"
				return
			if(usr.cast||usr.Kaiten||usr.counter)
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.inso)
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(!usr.handseals)
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
			else
				usr.cdtajuusn=1
				spawn()usr.Cooldown(110,"Tajuu Snake no Jutsu")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				if(usr.Katon2N >= 50)
					if(usr.dir==NORTHWEST)
						usr<<"Você não pode usar esse jutsu quando na diagonal."
						return
					if(usr.dir==SOUTHWEST)
						usr<<"Você não pode usar esse jutsu quando na diagonal."
						return
					if(usr.dir==NORTHEAST)
						usr<<"Você não pode usar esse jutsu quando na diagonal."
						return
					if(usr.dir==SOUTHEAST)
						usr<<"Você não pode usar esse jutsu quando na diagonal."
						return
					usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam
					usr.Katon2N += 1
					view()<<"[usr] Diz: Tajuu Snake no Jutsu"
					var/obj/snakeG/K = new /obj/snakeG
					var/obj/snakeG/L = new /obj/snakeG
					usr.Chakragain()
					var/obj/snakeG/N = new /obj/snakeG
					if(K)
						K.loc = usr.loc
						K.nin=usr.nin/4.5+usr.gen/4.5+usr.tai/4.5+usr.shurikenskill/4.5
						K.name="[usr]"
						K.Move_Delay=0.7
						K.Gowner=usr
						walk(K,usr.dir)
					sleep(6)
					if(L)
						L.loc = usr.loc
						if(usr.dir==NORTH)
							L.x+=1
						if(usr.dir==SOUTH)
							L.x-=1
						if(usr.dir==WEST)
							L.y-=1
						if(usr.dir==EAST)
							L.y+=1
						L.Move_Delay=0.7
						L.nin=usr.nin/4.5+usr.gen/4.5+usr.tai/4.5+usr.shurikenskill/4.5
						L.name="[usr]"
						L.Gowner=usr
						walk(L,usr.dir)
					sleep(13)
					if(N)
						N.loc = usr.loc
						if(usr.dir==NORTH)
							N.x-=1
						if(usr.dir==SOUTH)
							N.x+=1
						if(usr.dir==WEST)
							N.y+=1
						if(usr.dir==EAST)
							N.y-=1
						N.Move_Delay=0.7
						N.nin=usr.nin/4.5+usr.gen/4.5+usr.tai/4.5+usr.shurikenskill/4.5
						N.name="[usr]"
						N.Gowner=usr
						walk(N,usr.dir)
					sleep(10)
					usr.cast = 0
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						if(usr.dir==NORTHWEST)
							usr<<"Você não pode usar esse jutsu quando na diagonal."
							return
						if(usr.dir==SOUTHWEST)
							usr<<"Você não pode usar esse jutsu quando na diagonal."
							return
						if(usr.dir==NORTHEAST)
							usr<<"Você não pode usar esse jutsu quando na diagonal."
							return
						if(usr.dir==SOUTHEAST)
							usr<<"Você não pode usar esse jutsu quando na diagonal."
							return
						usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam
						usr.Katon2N += 1
					var/obj/snakeG/S = new /obj/snakeG
					var/obj/snakeG/K = new /obj/snakeG
					var/obj/snakeG/L = new /obj/snakeG
					usr.Chakragain()
					var/obj/snakeG/N = new /obj/snakeG
					if(K)
						K.loc = usr.loc
						K.nin=usr.nin/4.5+usr.gen/4.5+usr.tai/4.5+usr.shurikenskill/4.5
						K.name="[usr]"
						K.Move_Delay=0.7
						K.Gowner=usr
						walk(K,usr.dir)
					sleep(6)
					if(L)
						L.loc = usr.loc
						if(usr.dir==NORTH)
							L.x+=1
						if(usr.dir==SOUTH)
							L.x-=1
						if(usr.dir==WEST)
							L.y-=1
						if(usr.dir==EAST)
							L.y+=1
						L.Move_Delay=0.7
						L.nin=usr.nin/4.5+usr.gen/4.5+usr.tai/4.5+usr.shurikenskill/4.5
						L.name="[usr]"
						L.Gowner=usr
						walk(L,usr.dir)
					sleep(13)
					if(S)
						S.loc = usr.loc
						if(usr.dir==NORTH)
							S.x+=1
						if(usr.dir==SOUTH)
							S.x-=1
						if(usr.dir==WEST)
							S.y-=1
						if(usr.dir==EAST)
							S.y+=1
						S.Move_Delay=0.7
						S.nin=usr.nin/4.5+usr.gen/4.5+usr.tai/4.5+usr.shurikenskill/4.5
						S.name="[usr]"
						S.Gowner=usr
						walk(S,usr.dir)
					sleep(5)
					if(N)
						N.loc = usr.loc
						if(usr.dir==NORTH)
							N.x-=1
						if(usr.dir==SOUTH)
							N.x+=1
						if(usr.dir==WEST)
							N.y+=1
						if(usr.dir==EAST)
							N.y-=1
						N.Move_Delay=0.7
						N.nin=usr.nin
						N.name="[usr]"
						N.Gowner=usr
						walk(N,usr.dir)
					sleep(10)
					usr.cast = 0


mob/var/tmp/cdshikumi=0
mob/Orochi
	verb
		ShikuminoJutsu() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Shikumi no Jutsu"
			if(usr.cast)
				return
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
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
				for(var/mob/M in oview(3))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(M.PK==0)
						return
					if(M.antigen)
						usr<<"O adversario percebeu seu genjutsu"
						return
					if(M)
						if(M.froze)
							usr << "Ele já está freezado..."
							return
					if(M.gc)
						usr.AntiGen(M)
					usr.cdshikumi=1
					spawn()usr.Cooldown(150,"Shikumi no Jutsu")
					M<<"Você está paralisado pelo jutsu de [usr] -  Shikume no jutsu."
					usr<<"Você paralizou [M] com o seu Shikume no jutsu"
					var/Sleeptime = round(usr.gen/100+usr.nin/100+usr.tai/100+usr.shurikenskill/100 - M.gen/100+M.nin/100+M.tai/100+M.shurikenskill/100)
					if(Sleeptime >= 1)
						if(Sleeptime<10)
							Sleeptime = 10
						if(Sleeptime>50)
							Sleeptime=50
						M.froze = 1
						M.move = 0
						M.Move_Delay=13
						sleep(Sleeptime)
						if(M)
							M.Move_Delay=0.7
							M<<"Você quebrou o jutsu de [usr] - Shikume no jutsu."
							usr<<"[M] se liberou do seu Shikume no jutsu!"
							M.froze = 0
						sleep(8)
					else
						M.Move_Delay=13
						M.froze = 1
						M.move = 0
						sleep(Sleeptime)
						if(M)
							M.Move_Delay=0.7
							M<<"Você quebrou o jutsu de [usr] - Shikume no jutsu."
							usr<<"[M] se liberou do seu Shikume no jutsu!"
							M.froze = 0
							M.move = 1
						sleep(8)
					sleep(100)
					if(M)
						M.froze=0
						M.move=1

mob/var/rasho=0
mob/jutsu
	verb
		Rashoumon()
			set category = "Jutsus"
			set name = "Kuchyose Rashoumon"
			if(usr.cast) // If the mob's cast var is one...
				return
			if(usr.rasho) // If the mob's cast var is one...
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.Frozen)
				usr<<"Você está paralizado!"
				return
			if(usr.caught)
				usr<<"Você foi capturado!"
				return
			if(usr.captured)
				usr<<"Você foi capturado!"
				return
			if(usr.froze)
				usr<<"Você está paralizado!"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa!"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita!"
				return
			else // If the cast var isn't 1...
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.rasho=1
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Kuchyose Rashoumon"
				if(usr.dir == SOUTH)
					var/obj/RashoumonBaxo/S = new /obj/RashoumonBaxo/
					S.loc = locate(usr.x,usr.y-2,usr.z)
					S.Gowner = usr
				if(usr.dir ==NORTH)
					var/obj/RashoumonCima/S = new /obj/RashoumonCima/
					S.loc = locate(usr.x,usr.y+1,usr.z)
					S.Gowner = usr
				if(usr.dir ==EAST)
					var/obj/RashoumonLadoD/S = new /obj/RashoumonLadoD/
					S.loc = locate(usr.x+1,usr.y,usr.z)
					S.Gowner = usr
				if(usr.dir ==WEST)
					var/obj/RashoumonLadoE/S = new /obj/RashoumonLadoE/
					S.loc = locate(usr.x-1,usr.y,usr.z)
					S.Gowner = usr
				sleep(300)
				usr.rasho=0
				for(var/obj/RashoumonCima/C in world)
					if(C.Gowner == usr)
						del(C)
				for(var/obj/RashoumonBaxo/C in world)
					if(C.Gowner == usr)
						del(C)
				for(var/obj/RashoumonLadoD/C in world)
					if(C.Gowner == usr)
						del(C)
				for(var/obj/RashoumonLadoE/C in world)
					if(C.Gowner == usr)
						del(C)


obj
	RashoumonBaxo
		icon = 'portoes.dmi'
		icon_state = "1"
		density=1
		layer = MOB_LAYER+999
		New()
			overlays += /obj/RashoumonBaxo/h2/
			overlays += /obj/RashoumonBaxo/h4/
			overlays += /obj/RashoumonBaxo/h6/

		h2
			icon_state = "2"
			density = 1
			pixel_x = 32
		h4
			icon_state = "3"
			density = 1
			pixel_y = 32
		h6
			icon_state = "4"
			density = 1
			pixel_y = 32
			pixel_x = 32

obj
	RashoumonLadoD
		icon = 'portoes.dmi'
		icon_state = "11"
		density=1
		layer = MOB_LAYER+999
		New()
			overlays += /obj/RashoumonLadoD/h2/

		h2
			icon_state = "12"
			density = 1
			pixel_y = -32

obj
	RashoumonLadoE
		icon = 'portoes.dmi'
		icon_state = "13"
		density=1
		layer = MOB_LAYER+999
		New()
			overlays += /obj/RashoumonLadoE/h2/

		h2
			icon_state = "14"
			pixel_y = -32

obj
	RashoumonCima
		icon = 'portoes.dmi'
		icon_state = "21"
		density=1
		layer = MOB_LAYER+999
		New()
			overlays += /obj/RashoumonCima/h2/
			overlays += /obj/RashoumonCima/h4/
			overlays += /obj/RashoumonCima/h6/

		h2
			icon_state = "22"
			density = 1
			pixel_x = 32
		h4
			icon_state = "23"
			density = 1
			pixel_y = 32
		h6
			icon_state = "24"
			density = 1
			pixel_y = 32
			pixel_x = 32



//==== JIRAYA ===================================================================================
mob/var/tmp/gama=0
mob/jutsu
	verb
		SombraSapo(mob/M in oview(3)) // Verb used for cast the beam
			set category = "Senjutsu"
			set name = "Kage Ayatsuri no Jutsu"
			if(usr.cdayatsuri)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Kage Ayatsuri no Jutsu</b>!"
				return
			usr.Handseals()
			var/list/O = usr.overlays.Copy()
			if(usr.cast) // If the mob's cast var is one...
				return
			if(M.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(!usr.handseals)
				return
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(!usr.sapo)
				usr<<"Ative seu Modo Eremita antes"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(!usr.gama)
				if(usr.cdayatsuri)return
				usr.RandomChakra1()
				usr.cdayatsuri=1
				spawn()usr.Cooldown(600,"Kage Ayatsuri no Jutsu")
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.overlays = usr.overlays.Remove(usr.overlays)
				usr<<"Vc entrou na sombra de [M] e agora o deixou paralisado"
				usr.icon = 'invis.dmi'
				usr.cast = 1
				usr.gama=1
				usr.froze = 1
				usr.move=0
				usr.invisibility=1
				M.froze=1
				M.move=0
				M.parado=1
				M.cast=1
				sleep(50)
				usr.icon = usr.Oicon
				usr.overlays = O.Copy()
				usr.froze=0
				usr.move=1
				usr.gama=0
				usr.cast=0
				usr.invisibility=0
				sleep(20)
				usr<<"Vc liberou [M]"
				M.froze=0
				M.move=1
				M.parado=0
				M.cast=0
			else
				usr<<"Vc ja ativou este jutsu"

mob/var/tmp/cdkebarisenbon=0
mob/jutsu
	verb
		Agulhas() // Verb used for cast the beam
			set category = "Senjutsu"
			set name = "Senpou - Kebari Senbon"
			if(usr.cdkebarisenbon)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Senpou - Kebari Senbon</b>!"
				return
			if(usr.cast)
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(!usr.sapo)
				usr<<"Ative seu Modo Eremita antes"
				return
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
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
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			else // If the cast var isn't 1...
				if(usr.cdkebarisenbon)return
				usr.cdkebarisenbon=1
				spawn()usr.Cooldown(100,"Senpou - Kebari Senbon")
				if(!usr.hyoushou)
					usr.RandomChakra1()
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam // Disables the mob's movement
					usr.SensatsuN += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz:Senpou - Kebari Senbon"
					var/obj/Sensatsu2/S1 = new /obj/Sensatsu2
					var/obj/Sensatsu2/S2 = new /obj/Sensatsu2
					var/obj/Sensatsu2/S3 = new /obj/Sensatsu2
					var/obj/Sensatsu2/S4 = new /obj/Sensatsu2
					var/obj/Sensatsu2/S11 = new /obj/Sensatsu2
					var/obj/Sensatsu2/S22 = new /obj/Sensatsu2
					var/obj/Sensatsu2/S33 = new /obj/Sensatsu2
					var/obj/Sensatsu2/S44 = new /obj/Sensatsu2
					usr.Chakragain()
					S1.loc = usr.loc
					S1.tai=usr.nin/4.25 + usr.gen/4.25 + usr.tai/4.25 + usr.shurikenskill/4.25
					S1.dir = NORTH
					S1.name="[usr]"
					S1.Gowner=usr
					walk(S1,NORTH)
					S2.loc = usr.loc
					S2.tai=usr.nin/4.25 + usr.gen/4.25 + usr.tai/4.25 + usr.shurikenskill/4.25
					S2.dir = SOUTH
					S2.name="[usr]"
					S2.Gowner=usr
					walk(S2,SOUTH)
					S3.loc = usr.loc
					S3.tai=usr.nin/4.25 + usr.gen/4.25 + usr.tai/4.25 + usr.shurikenskill/4.25
					S3.dir = WEST
					S3.name="[usr]"
					S3.Gowner=usr
					walk(S3,WEST)
					S4.loc = usr.loc
					S4.tai=usr.nin/4.25 + usr.gen/4.25 + usr.tai/4.25 + usr.shurikenskill/4.25
					S4.dir = EAST
					S4.name="[usr]"
					S4.Gowner=usr
					walk(S4,EAST)
					S11.loc = usr.loc
					S11.tai=usr.nin/4.25 + usr.gen/4.25 + usr.tai/4.25 + usr.shurikenskill/4.25
					S11.dir = NORTHEAST
					S11.name="[usr]"
					S11.Gowner=usr
					walk(S11,NORTHEAST)
					S22.loc = usr.loc
					S22.tai=usr.nin/4.25 + usr.gen/4.25 + usr.tai/4.25 + usr.shurikenskill/4.25
					S22.dir = SOUTHWEST
					S22.name="[usr]"
					S22.Gowner=usr
					walk(S22,SOUTHWEST)
					S33.loc = usr.loc
					S33.tai=usr.nin/4.25 + usr.gen/4.25 + usr.tai/4.25 + usr.shurikenskill/4.25
					S33.dir = SOUTHEAST
					S33.name="[usr]"
					S33.Gowner=usr
					walk(S33,SOUTHEAST)
					S44.loc = usr.loc
					S44.tai=usr.nin/4.25 + usr.gen/4.25 + usr.tai/4.25 + usr.shurikenskill/4.25
					S44.dir = NORTHWEST
					S44.name="[usr]"
					S44.Gowner=usr
					walk(S44,NORTHWEST)
					sleep(10)
					usr.cast = 0
					sleep(55)
					del(S1)
					del(S2)
					del(S3)
					del(S4)
					del(S11)
					del(S22)
					del(S33)
					del(S44)
					return


mob/var/tmp/cddotonyomi=0
mob/jiraya
	verb
		DotonYomi(mob/M in oview(3)) // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Doton: Yomi"
			usr.Handseals()
			if(usr.cddotonyomi)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Doton: Yomi</b>!"
				return
			if(usr.cast) // If the mob's cast var is one...
				return
			if(M.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(!usr.handseals)
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
				if(usr.cddotonyomi)return
				usr.cddotonyomi=1
				spawn()usr.Cooldown(210,"Doton: Yomi")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				var/list/O = usr.overlays.Copy()
				usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam
				M.Frozen = 1 // Disables the mob's movement
				usr.Chakragain()
				usr.overlays = usr.overlays.Remove(usr.overlays)
				usr.icon = 'lama.dmi'
				view()<<"[usr] criou um pântano em volta de [M]!"
				var/obj/lama/F = new /obj/lama/
				var/obj/lama/G = new /obj/lama/
				var/obj/lama/H = new /obj/lama/
				var/obj/lama/I = new /obj/lama/
				var/obj/lama/J = new /obj/lama/
				var/obj/lama/L = new /obj/lama/
				var/obj/lama/A = new /obj/lama/
				var/obj/lama/B = new /obj/lama/
				var/obj/lama/M2 = new /obj/lama/
				var/obj/lama/N = new /obj/lama/
				var/obj/lama/MT = new /obj/lama/
				var/obj/lama/P = new /obj/lama/
				var/obj/lama/D = new /obj/lama/
				var/obj/lama/E = new /obj/lama/
				var/obj/lama/C = new /obj/lama/
				var/obj/lama/K = new /obj/lama/
				var/obj/lama/Q = new /obj/lama/
				var/obj/lama/R = new /obj/lama/
				var/obj/lama/S = new /obj/lama/
				var/obj/lama/T = new /obj/lama/
				var/obj/lama/W = new /obj/lama/
				var/obj/lama/X = new /obj/lama/
				var/obj/lama/Y = new /obj/lama/
				var/obj/lama/Z = new /obj/lama/
				var/obj/lama/AB = new /obj/lama/
				var/obj/lama/AC = new /obj/lama/
				var/obj/lama/AD = new /obj/lama/
				var/obj/lama/AE = new /obj/lama/
				var/obj/lama/AF = new /obj/lama/
				var/obj/lama/AG = new /obj/lama/
				var/obj/lama/AH = new /obj/lama/
				var/obj/lama/AI = new /obj/lama/
				var/obj/lama/AJ = new /obj/lama/
				var/obj/lama/AK = new /obj/lama/
				var/obj/lama/AL = new /obj/lama/
				var/obj/lama/AM = new /obj/lama/
				var/obj/lama/AN = new /obj/lama/
				var/obj/lama/AO = new /obj/lama/
				var/obj/lama/AP = new /obj/lama/
				var/obj/lama/AQ = new /obj/lama/
				var/obj/lama/AR = new /obj/lama/
				var/obj/lama/AS = new /obj/lama/
				var/obj/lama/AT = new /obj/lama/
				var/obj/lama/AU = new /obj/lama/
				var/obj/lama/AV = new /obj/lama/
				var/obj/lama/AW = new /obj/lama/
				var/obj/lama/AX= new /obj/lama/
				var/obj/lama/AY = new /obj/lama/
				var/obj/lama/AZ = new /obj/lama/
				K.loc = locate(M.x,M.y,M.z)
				A.loc = locate(M.x+1,M.y,M.z)
				C.loc = locate(M.x-1,M.y,M.z)
				B.loc = locate(M.x,M.y+1,M.z)
				D.loc = locate(M.x,M.y-1,M.z)
				E.loc = locate(M.x+1,M.y+1,M.z)
				F.loc = locate(M.x-1,M.y-1,M.z)
				G.loc = locate(M.x-1,M.y+1,M.z)
				H.loc = locate(M.x+1,M.y-1,M.z)
				I.loc = locate(M.x+2,M.y,M.z)
				J.loc = locate(M.x-2,M.y,M.z)
				L.loc = locate(M.x,M.y+2,M.z)
				M2.loc = locate(M.x,M.y-2,M.z)
				N.loc = locate(M.x+2,M.y+2,M.z)
				MT.loc = locate(M.x-2,M.y-2,M.z)
				P.loc = locate(M.x-2,M.y+2,M.z)
				Q.loc = locate(M.x+2,M.y-2,M.z)
				R.loc = locate(M.x+3,M.y,M.z)
				S.loc = locate(M.x-3,M.y,M.z)
				T.loc = locate(M.x,M.y+3,M.z)
				W.loc = locate(M.x,M.y-3,M.z)
				X.loc = locate(M.x+3,M.y+3,M.z)
				Y.loc = locate(M.x-3,M.y-3,M.z)
				Z.loc = locate(M.x-3,M.y+3,M.z)
				AB.loc = locate(M.x-3,M.y-2,M.z)
				AC.loc = locate(M.x+3,M.y+2,M.z)
				AD.loc = locate(M.x+3,M.y-2,M.z)
				AE.loc = locate(M.x-3,M.y+2,M.z)
				AF.loc = locate(M.x+2,M.y+3,M.z)
				AG.loc = locate(M.x-2,M.y-3,M.z)
				AH.loc = locate(M.x-2,M.y+3,M.z)
				AI.loc = locate(M.x+2,M.y-3,M.z)
				AJ.loc = locate(M.x-1,M.y-2,M.z)
				AK.loc = locate(M.x+1,M.y+2,M.z)
				AL.loc = locate(M.x+1,M.y-2,M.z)
				AM.loc = locate(M.x-1,M.y+2,M.z)
				AN.loc = locate(M.x+2,M.y+1,M.z)
				AO.loc = locate(M.x-2,M.y-1,M.z)
				AP.loc = locate(M.x-2,M.y+1,M.z)
				AQ.loc = locate(M.x+2,M.y-1,M.z)
				AR.loc = locate(M.x-1,M.y-3,M.z)
				AS.loc = locate(M.x+1,M.y+3,M.z)
				AT.loc = locate(M.x+1,M.y-3,M.z)
				AU.loc = locate(M.x-1,M.y+3,M.z)
				AV.loc = locate(M.x+3,M.y+1,M.z)
				AW.loc = locate(M.x-3,M.y-1,M.z)
				AX.loc = locate(M.x-3,M.y+1,M.z)
				AY.loc = locate(M.x+3,M.y-1,M.z)
				AZ.loc = locate(M.x+3,M.y-3,M.z)
				sleep(30)
				usr.cast=0
				sleep(50)
				usr.icon = usr.Oicon
				usr.overlays = O.Copy()
				del(K)
				del(A)
				del(B)
				del(C)
				del(D)
				del(E)
				del(F)
				del(G)
				del(H)
				del(I)
				del(J)
				del(L)
				del(M2)
				del(N)
				del(MT)
				del(P)
				del(Q)
				del(R)
				del(S)
				del(T)
				del(W)
				del(X)
				del(Y)
				del(Z)
				del(AB)
				del(AC)
				del(AD)
				del(AE)
				del(AF)
				del(AG)
				del(AH)
				del(AI)
				del(AJ)
				del(AK)
				del(AL)
				del(AM)
				del(AN)
				del(AO)
				del(AP)
				del(AQ)
				del(AR)
				del(AS)
				del(AT)
				del(AU)
				del(AV)
				del(AW)
				del(AX)
				del(AY)
				del(AZ)
				if(M)
					M.Frozen = 0



mob/jiraya
	verb
		Peacock() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Ninpou Hari Jizou"
			if(usr.chakra <= 1000)
				usr<<"Você não tem chakra o bastante! (1k)"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.froze&&!usr.Kaiten)
				usr<<"Você está paralisado"
				return
			if(usr.Frozen&&!usr.Kaiten)
				usr<<"Você está paralisado"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(!usr.def&&!usr.cast)
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz:<FONT COLOR=#00bfff>N</FONT><FONT COLOR=#20c7ff>i</FONT><FONT COLOR=#40ceff>n</FONT><FONT COLOR=#60d6fe>p</FONT><FONT COLOR=#80ddfd>o</FONT><FONT COLOR=#a0e5fc>u</FONT><FONT COLOR=#c0ecfc>:</FONT><FONT COLOR=#e0f4fb> </FONT><FONT COLOR=#fffafa>H</FONT><FONT COLOR=#efe9f6>a</FONT><FONT COLOR=#dfd7f1>r</FONT><FONT COLOR=#cec5ec>i</FONT><FONT COLOR=#bdb3e7> </FONT><FONT COLOR=#ada2e1>J</FONT><FONT COLOR=#9c90dc>i</FONT><FONT COLOR=#8b7ed7>z</FONT><FONT COLOR=#7b6cd2>o</FONT><FONT COLOR=#6a5acd>u</FONT></FONT> "
				usr.cast = 1
				usr.def = 1
				usr.overlays += 'Ninpouharijizou.dmi'
				usr.Ninpouharijizou = 1
				usr.verbs += new /mob/jiraya2/verb/AttackNorth()
				usr.verbs += new /mob/jiraya2/verb/AttackSouth()
				usr.verbs += new /mob/jiraya2/verb/AttackWest()
				usr.verbs += new /mob/jiraya2/verb/AttackEast()
				usr.froze = 1
				usr.move = 0
				usr.inNHJ = 1
				OMG
				if(usr.def&&usr.cast)
					usr.chakra-=usr.Mchakra/50
					if(usr.chakra <= usr.Mchakra/50)
						usr.cast = 0
						usr.def = 0
						usr.overlays -= 'Ninpouharijizou.dmi'
						usr.froze = 0
						usr.move = 1
						usr.verbs -= new /mob/jiraya2/verb/AttackNorth()
						usr.verbs -= new /mob/jiraya2/verb/AttackSouth()
						usr.verbs -= new /mob/jiraya2/verb/AttackWest()
						usr.verbs -= new /mob/jiraya2/verb/AttackEast()
						usr.Ninpouharijizou = 0
						usr.inNHJ = 0

					else
						sleep(20)
						goto OMG
			else if(usr.def&&usr.cast)
				usr.cast = 0
				usr.def = 0
				usr.overlays -= 'Ninpouharijizou.dmi'
				usr.froze = 0
				usr.move = 1
				usr.verbs -= new /mob/jiraya2/verb/AttackNorth()
				usr.verbs -= new /mob/jiraya2/verb/AttackSouth()
				usr.verbs -= new /mob/jiraya2/verb/AttackWest()
				usr.verbs -= new /mob/jiraya2/verb/AttackEast()
				usr.Ninpouharijizou = 0
				usr.inNHJ = 0
				usr<<"Você desativou o Ninpou: Hari Jizou"


mob/jiraya2
	verb
		AttackNorth()
			set category = "Ninpou Hari Jizou"
			set name = "Attack north"
			for(var/mob/M in get_step(usr,NORTH))
				if(M.ingat||M.intank)				.
					return
				if(usr.PK==0)
					usr<<"Zona NON-PK!!!"
					return
				if(M.PK==0)
					usr<<"Zona NON-PK!!!"
					return
				if(M.Kaiten||M.counter)
					return
				if(M.Ninpouharijizou)
					return
				if(usr.resting)
					usr<<"Não enquanto descansa"
					return
				if(usr.meditating)
					usr<<"Não enquanto medita"
					return
				var/damage = usr.nin/5 + usr.gen/5 + usr.tai/5 + usr.shurikenskill/5 - M.Resistencia/2
				if(damage<=0)damage=0
				usr.chakra -= 10
				M.overlays += 'up(1).dmi'
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				sleep(3)
				M.overlays -= 'up(1).dmi'
				if(M.health <=0)
					M.Death(usr)

		AttackSouth()
			set category = "Ninpou Hari Jizou"
			set name = "Ataque sul"
			for(var/mob/M in get_step(usr,SOUTH))
				if(M.ingat||M.intank)				.
					return
				if(usr.PK==0)
					usr<<"Zona NON-PK!!!"
					return
				if(M.PK==0)
					usr<<"Zona NON-PK!!!"
					return
				if(usr.resting)
					usr<<"Não enquanto descansa"
					return
				if(usr.meditating)
					usr<<"Não enquanto medita"
					return
				if(M.Kaiten||M.counter)
					return
				var/damage = usr.nin/5 + usr.gen/5 + usr.tai/5 + usr.shurikenskill/5 - M.Resistencia/2
				if(damage<=0)damage=0
				usr.chakra -= 10
				M.overlays += 'south(1).dmi'
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				sleep(3)
				M.overlays -= 'south(1).dmi'
				if(M.health <=0)
					M.Death(usr)

		AttackWest()
			set category = "Ninpou Hari Jizou"
			set name = "Ataque oeste"
			for(var/mob/M in get_step(usr,WEST))
				if(M.ingat||M.intank)				.
					return
				if(M.Kaiten||M.counter)
					return
				if(M.Ninpouharijizou)
					return
				if(usr.resting)
					usr<<"Não enquanto descansa"
					return
				if(usr.meditating)
					usr<<"Não enquanto medita"
					return
				if(usr.PK==0)
					usr<<"Zona NON-PK!!!"
					return
				if(M.PK==0)
					usr<<"Zona NON-PK!!!"
					return
				var/damage = usr.nin/5 + usr.gen/5 + usr.tai/5 + usr.shurikenskill/5 - M.Resistencia/2
				if(damage<=0)damage=0
				usr.chakra -= 10
				M.overlays += 'east(1).dmi'
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				sleep(3)
				M.overlays -= 'east(1).dmi'
				if(M.health <=0)
					M.Death(usr)

		AttackEast()
			set category = "Ninpou Hari Jizou"
			set name = "Ataque leste"
			for(var/mob/M in get_step(usr,EAST))
				if(M.ingat||M.intank)				.
					return
				if(M.Kaiten||M.counter)
					return
				if(M.Ninpouharijizou)
					return
				if(usr.PK==0)
					usr<<"Zona NON-PK!!!"
					return
				if(usr.resting)
					usr<<"Não enquanto descansa"
					return
				if(usr.meditating)
					usr<<"Não enquanto medita"
					return
				if(M.PK==0)
					usr<<"Zona NON-PK!!!"
					return
				var/damage = usr.nin/5 + usr.gen/5 + usr.tai/5 + usr.shurikenskill/5 - M.Resistencia/2
				if(damage<=0)damage=0
				usr.chakra -= 10
				M.overlays += 'west(1).dmi'
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				sleep(3)
				M.overlays -= 'west(1).dmi'
				if(M.health <=0)
					M.Death(usr)








mob/var/tmp/sapo=0


mob/jiraya
	verb
		ModoHeremita()
			set category ="Jutsus"
			set name ="Modo Eremita"
			if(usr.sennin==1)
				usr<<"Você jah ativou!"
				return
			if(usr.sennin==0)
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr<< "Você está concentrando o chakra natural"
				usr.sennin=1
				sleep(50)
				view<<"<font color = white>says :<FONT SIZE=+1><FONT COLOR=#6495ed>T</FONT><FONT COLOR=#658fe2>H</FONT><FONT COLOR=#6787d6>E</FONT><FONT COLOR=#6880ca> </FONT><FONT COLOR=#6a78be>E</FONT><FONT COLOR=#6b71b3>R</FONT><FONT COLOR=#6d69a7>E</FONT><FONT COLOR=#6e629b>M</FONT><FONT COLOR=#705a8f>I</FONT><FONT COLOR=#715383>T</FONT><FONT COLOR=#734b77>A</FONT><FONT COLOR=#74446b> </FONT><FONT COLOR=#753c5f>M</FONT><FONT COLOR=#773553>O</FONT><FONT COLOR=#782d47>D</FONT><FONT COLOR=#7a263c>E</FONT><FONT COLOR=#7b1e30> </FONT><FONT COLOR=#7d1724>:</FONT><FONT COLOR=#7e0f18> </FONT><FONT COLOR=#80080c>T</FONT><FONT COLOR=#800000>H</FONT><FONT COLOR=#860606>E</FONT><FONT COLOR=#8b0d0d> </FONT><FONT COLOR=#911313>P</FONT><FONT COLOR=#971a1a>O</FONT><FONT COLOR=#9c2020>W</FONT><FONT COLOR=#a22727>E</FONT><FONT COLOR=#a82d2d>R</FONT><FONT COLOR=#ad3434>F</FONT><FONT COLOR=#b33a3a>U</FONT><FONT COLOR=#b94141>L</FONT><FONT COLOR=#be4747>L</FONT><FONT COLOR=#c44d4d> </FONT><FONT COLOR=#c95454>M</FONT><FONT COLOR=#cf5a5a>O</FONT><FONT COLOR=#d56161>D</FONT><FONT COLOR=#da6767>E</FONT><FONT COLOR=#e06e6e>!</FONT><FONT COLOR=#e67474>!</FONT><FONT COLOR=#eb7b7b>!</FONT><FONT COLOR=#f08080>!</FONT></FONT> "
				usr<<"<font color = white>says :<FONT SIZE=+1><FONT COLOR=#6495ed>T</FONT><FONT COLOR=#658fe2>H</FONT><FONT COLOR=#6787d6>E</FONT><FONT COLOR=#6880ca> </FONT><FONT COLOR=#6a78be>E</FONT><FONT COLOR=#6b71b3>R</FONT><FONT COLOR=#6d69a7>E</FONT><FONT COLOR=#6e629b>M</FONT><FONT COLOR=#705a8f>I</FONT><FONT COLOR=#715383>T</FONT><FONT COLOR=#734b77>A</FONT><FONT COLOR=#74446b> </FONT><FONT COLOR=#753c5f>M</FONT><FONT COLOR=#773553>O</FONT><FONT COLOR=#782d47>D</FONT><FONT COLOR=#7a263c>E</FONT><FONT COLOR=#7b1e30> </FONT><FONT COLOR=#7d1724>:</FONT><FONT COLOR=#7e0f18> </FONT><FONT COLOR=#80080c>T</FONT><FONT COLOR=#800000>H</FONT><FONT COLOR=#860606>E</FONT><FONT COLOR=#8b0d0d> </FONT><FONT COLOR=#911313>P</FONT><FONT COLOR=#971a1a>O</FONT><FONT COLOR=#9c2020>W</FONT><FONT COLOR=#a22727>E</FONT><FONT COLOR=#a82d2d>R</FONT><FONT COLOR=#ad3434>F</FONT><FONT COLOR=#b33a3a>U</FONT><FONT COLOR=#b94141>L</FONT><FONT COLOR=#be4747>L</FONT><FONT COLOR=#c44d4d> </FONT><FONT COLOR=#c95454>M</FONT><FONT COLOR=#cf5a5a>O</FONT><FONT COLOR=#d56161>D</FONT><FONT COLOR=#da6767>E</FONT><FONT COLOR=#e06e6e>!</FONT><FONT COLOR=#e67474>!</FONT><FONT COLOR=#eb7b7b>!</FONT><FONT COLOR=#f08080>!</FONT></FONT>"
				usr.overlays += /obj/Eremitaeyes
				sleep(40)
				usr.overlays -= /obj/Eremitaeyes
				usr.tai = usr.tai*1.05
				usr.nin = usr.nin*1.05
				usr.overlays += 'SenninOlhos.dmi'
				usr.shurikenskill = usr.shurikenskill*1.05
				usr.gen = usr.gen*1.05
				usr.verbs += new /mob/jutsu/verb/Agulhas()
				usr.verbs += new /mob/jutsu/verb/SombraSapo()
				usr.chakra = usr.Mchakra*1.25
				usr.health = usr.maxhealth*1.25
				usr.sapo=1
				if(src.icon=='BaseVamp.dmi'||usr.icon=='vamp.dmi'||usr.icon=='FemaleVamp.dmi')
					src.overlays+='Jiraya Eremita Tan.dmi'
				if(src.icon=='base white.dmi'||usr.icon=='white.dmi'||usr.icon=='Female White.dmi')
					src.overlays+='Jiraya Eremita Tan.dmi'
				if(src.icon=='BaseT.dmi'||usr.icon=='Tan.dmi'||usr.icon=='FemaleT.dmi')
					src.overlays+='Jiraya Eremita Tan.dmi'
				if(src.icon=='BaseBlack.dmi'||usr.icon=='black.dmi'||usr.icon=='FemaleBlack.dmi')
					src.overlays+='Jiraya Eremita Tan.dmi'
				if(src.icon=='BaseBlue.dmi'||usr.icon=='blue.dmi'||usr.icon=='FemaleBlue.dmi')
					src.overlays+='Jiraya Eremita Tan.dmi'
				if(src.icon=='BaseRed.dmi'||usr.icon=='red.dmi'||usr.icon=='FemaleRed.dmi')
					src.overlays+='Jiraya Eremita Tan.dmi'
				if(src.icon=='BaseYellow.dmi'||usr.icon=='yellow.dmi'||usr.icon=='FemaleYellow.dmi')
					src.overlays+='Jiraya Eremita Tan.dmi'
					return
				sleep(3000)
				usr<<"Seu senjutsu acabou."
				usr.tai = usr.Mtai
				usr.nin = usr.Mnin
				usr.overlays -= 'SenninOlhos.dmi'
				usr.gen = usr.Mgen
				usr.health = usr.maxhealth
				usr.stamina = usr.Mstamina
				usr.verbs -= new /mob/jutsu/verb/Agulhas()
				usr.verbs -= new /mob/jutsu/verb/SombraSapo()
				usr.sapo=0
				usr.chakra=usr.Mchakra
				usr.shurikenskill = usr.Mshurikenskill
				usr.sennin=0
				if(src.icon=='BaseVamp.dmi'||usr.icon=='vamp.dmi'||usr.icon=='FemaleVamp.dmi')
					src.overlays+='Jiraya Eremita Tan.dmi'
				if(src.icon=='base white.dmi'||usr.icon=='white.dmi'||usr.icon=='Female White.dmi')
					src.overlays+='Jiraya Eremita Tan.dmi'
				if(src.icon=='BaseT.dmi'||usr.icon=='Tan.dmi'||usr.icon=='FemaleT.dmi')
					src.overlays+='Jiraya Eremita Tan.dmi'
				if(src.icon=='BaseBlack.dmi'||usr.icon=='black.dmi'||usr.icon=='FemaleBlack.dmi')
					src.overlays+='Jiraya Eremita Tan.dmi'
				if(src.icon=='BaseBlue.dmi'||usr.icon=='blue.dmi'||usr.icon=='FemaleBlue.dmi')
					src.overlays+='Jiraya Eremita Tan.dmi'
				if(src.icon=='BaseRed.dmi'||usr.icon=='red.dmi'||usr.icon=='FemaleRed.dmi')
					src.overlays+='Jiraya Eremita Tan.dmi'
				if(src.icon=='BaseYellow.dmi'||usr.icon=='yellow.dmi'||usr.icon=='FemaleYellow.dmi')
					src.overlays+='Jiraya Eremita Tan.dmi'
					return
				return


obj
	TGoukakyuuHead
		icon='Sun Goukakyuu.dmi'
		icon_state="head"
		layer = MOB_LAYER+1
		New()
			..()
			spawn(34)
			del(src)

	TGoukakyuuTail
		icon='Sun Goukakyuu.dmi'
		icon_state="tail"
		layer = MOB_LAYER+1
		New()
			..()
			spawn(34)
			del(src)
	Tmiddle
		icon='Sun Goukakyuu.dmi'
		icon_state="1"
		layer = MOB_LAYER+1
		New()
			..()
			spawn(34)
			del(src)

	Ttopleft
		icon='Sun Goukakyuu.dmi'
		icon_state="2"
		layer = MOB_LAYER+1
		New()
			..()
			spawn(34)
			del(src)
	Ttopright
		icon='Sun Goukakyuu.dmi'
		icon_state="3"
		layer = MOB_LAYER+1
		New()
			..()
			spawn(34)
			del(src)

	Tbottomleft
		icon='Sun Goukakyuu.dmi'
		icon_state="4"
		layer = MOB_LAYER+1
		New()
			..()
			spawn(34)
			del(src)
	Tbottomright
		icon='Sun Goukakyuu.dmi'
		icon_state="5"
		layer = MOB_LAYER+1
		New()
			..()
			spawn(34)
			del(src)
mob/var
	TGU = 0

mob/var/tmp/cdtaygouk=0
mob/Sun
	verb
		TaiyouGoukakyuu() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Taiyou Goukakyuu No Jutsu"
			usr.Handseals()
			if(usr.cdtaygouk)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Taiyou Goukakyuu No Jutsu</b>!"
				return
			if(usr.cast||usr.Kaiten) // If the mob's cast var is one...
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(!usr.handseals)
				return
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
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
				if(usr.cdtaygouk)return
				usr.cdtaygouk=1
				spawn()usr.Cooldown(100,"Taiyou Goukakyuu No Jutsu")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				if(usr.TGU >= 40)
					usr.Chakragain()
					usr.cast = 1
					var/obj/Tmiddle/K = new /obj/Tmiddle
					var/obj/Tmiddle/L = new /obj/Tmiddle
					var/obj/Tmiddle/M1 = new /obj/Tmiddle
					var/obj/Tmiddle/N = new /obj/Tmiddle
					var/obj/Tmiddle/O = new /obj/Tmiddle
					var/obj/Ttopright/TR = new /obj/Ttopright
					var/obj/Tbottomright/BR = new /obj/Tbottomright
					var/obj/Ttopleft/TL = new /obj/Ttopleft
					var/obj/Tbottomleft/BL = new /obj/Tbottomleft
					var/obj/TGoukakyuuTail/T = new /obj/TGoukakyuuTail
					usr.TGU += 1
					usr.handseals=0
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#ff4500>T</FONT><FONT COLOR=#ff5500>a</FONT><FONT COLOR=#ff6400>i</FONT><FONT COLOR=#ff7400>y</FONT><FONT COLOR=#ff8300>o</FONT><FONT COLOR=#ff9300>u</FONT><FONT COLOR=#ffa300> </FONT><FONT COLOR=#ffb200>G</FONT><FONT COLOR=#ffc200>o</FONT><FONT COLOR=#ffd100>u</FONT><FONT COLOR=ffe100>k</FONT><FONT COLOR=#fff000>a</FONT><FONT COLOR=#ffff00>k</FONT><FONT COLOR=#fff200>y</FONT><FONT COLOR=#ffe300>u</FONT><FONT COLOR=#ffd500>u</FONT><FONT COLOR=#ffc600> </FONT><FONT COLOR=#ffb800>N</FONT><FONT COLOR=#ffaa00>o</FONT><FONT COLOR=#ff9b00> </FONT><FONT COLOR=#ff8d00>J</FONT><FONT COLOR=#ff7f00>u</FONT><FONT COLOR=#ff7000>t</FONT><FONT COLOR=#ff6200>s</FONT><FONT COLOR=#ff5300>u</FONT><FONT COLOR=#ff4500>!</FONT>"
					K.Gowner=usr
					K.nin=usr.nin/4.5+usr.gen/4.5+usr.tai/4.5+usr.shurikenskill/4.5 + fogoN*1.5
					usr.froze=1
					usr.move=0
					if(usr.dir==NORTH)
						if(K)
							K.loc = usr.loc
							K.y+=2
						if(L)
							L.loc = usr.loc
							L.y+=3
						if(M1)
							M1.loc = usr.loc
							M1.y+=4
						if(O)
							O.loc = usr.loc
							O.y+=3
							O.x-=1
						if(N)
							N.loc = usr.loc
							N.y+=3
							N.x+=1
						if(TR)
							TR.loc = usr.loc
							TR.y+=4
							TR.x+=1
						if(TL)
							TL.loc = usr.loc
							TL.y+=4
							TL.x-=1
						if(BR)
							BR.loc = usr.loc
							BR.y+=2
							BR.x+=1
						if(BL)
							BL.loc = usr.loc
							BL.y+=2
							BL.x-=1
						if(T)
							T.dir = usr.dir
							T.loc = usr.loc
							T.y+=1
					if(usr.dir==SOUTH)
						if(K)
							K.loc = usr.loc
							K.y-=2
						if(L)
							L.loc = usr.loc
							L.y-=3
						if(M1)
							M1.loc = usr.loc
							M1.y-=4
						if(O)
							O.loc = usr.loc
							O.y-=3
							O.x-=1
						if(N)
							N.loc = usr.loc
							N.y-=3
							N.x+=1
						if(TR)
							TR.loc = usr.loc
							TR.y-=2
							TR.x+=1
						if(TL)
							TL.loc = usr.loc
							TL.y-=2
							TL.x-=1
						if(BR)
							BR.loc = usr.loc
							BR.y-=4
							BR.x+=1
						if(BL)
							BL.loc = usr.loc
							BL.y-=4
							BL.x-=1
						if(T)
							T.dir = usr.dir
							T.loc = usr.loc
							T.y-=1
					if(usr.dir==WEST)
						if(K)
							K.loc = usr.loc
							K.x-=2
						if(L)
							L.loc = usr.loc
							L.x-=3
						if(M1)
							M1.loc = usr.loc
							M1.x-=4
						if(O)
							O.loc = usr.loc
							O.y-=1
							O.x-=3
						if(N)
							N.loc = usr.loc
							N.y+=1
							N.x-=3
						if(TR)
							TR.loc = usr.loc
							TR.x-=2
							TR.y+=1
						if(TL)
							TL.loc = usr.loc
							TL.x-=4
							TL.y+=1
						if(BR)
							BR.loc = usr.loc
							BR.x-=2
							BR.y-=1
						if(BL)
							BL.loc = usr.loc
							BL.x-=4
							BL.y-=1
						if(T)
							T.dir = usr.dir
							T.loc = usr.loc
							T.x-=1
					if(usr.dir==EAST)
						if(K)
							K.loc = usr.loc
							K.x+=2
						if(L)
							L.loc = usr.loc
							L.x+=3
						if(M1)
							M1.loc = usr.loc
							M1.x+=4
						if(O)
							O.loc = usr.loc
							O.y-=1
							O.x+=3
						if(N)
							N.loc = usr.loc
							N.y+=1
							N.x+=3
						if(TR)
							TR.loc = usr.loc
							TR.x+=4
							TR.y+=1
						if(TL)
							TL.loc = usr.loc
							TL.x+=2
							TL.y+=1
						if(BR)
							BR.loc = usr.loc
							BR.x+=4
							BR.y-=1
						if(BL)
							BL.loc = usr.loc
							BL.x+=2
							BL.y-=1
						if(T)
							T.dir = usr.dir
							T.loc = usr.loc
							T.x+=1
					for(var/mob/M in oview(4))
						if(K)
							if(M.loc==K.loc)
								if(M.Kaiten)
									usr<<"Seu ataque não acerta [M]"
									M<<"Você bloqueou o jutsu de [usr] - Goukakyuu."
									return
								if(M.sphere)
									usr<<"Seu ataque não acerta [M]"
									M<<"Você bloqueou o jutsu de [usr] - Goukakyuu."
									return
								if(M.counter)
									usr<<"Ele copia e o reflete de volta para você."
									M<<"Você copiou e o refletiu."
									usr.health -= M.Mnin/6+M.Mtai/6+M.Mgen/6+M.Mshurikenskill/6
									Death(usr)
									return
								var/damage=usr.nin/4.5+usr.gen/4.5+usr.tai/4.5+usr.shurikenskill/4.5 + fogoN*1.5 - M.Resistencia/2
								if(damage<=0)damage=0
								view()<<"[M] recebeu [damage] de dano do jutsu de [usr] - Taiyou Goukakyuu"
								M.health-=damage
								F_damage(M, damage, "#ff0000")
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4))
						if(T)
							if(M.loc==T.loc)
								if(M.Kaiten)
									usr<<"Seu ataque não acerta [M]"
									M<<"Você bloqueou o jutsu de [usr] - Goukakyuu."
									return
								if(M.sphere)
									usr<<"Seu ataque não acerta [M]"
									M<<"Você bloqueou o jutsu de [usr] - Goukakyuu."
									return
								if(M.counter)
									usr<<"Ele copia e o reflete de volta para você."
									M<<"Você copiou e o refletiu."
									usr.health -= M.Mnin/6+M.Mtai/6+M.Mgen/6+M.Mshurikenskill/6
									Death(usr)
									return
								var/damage=usr.nin/4.5+usr.gen/4.5+usr.tai/4.5+usr.shurikenskill/4.5 + fogoN*1.5 - M.Resistencia/2
								if(damage<=0)damage=0
								view()<<"[M] recebeu [damage] de dano do jutsu de [usr] - Taiyou Goukakyuu"
								M.health-=damage
								F_damage(M, damage, "#ff0000")
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4))
						if(L)
							if(M.loc==L.loc)
								if(M.Kaiten||M.counter)
									usr<<"Seu ataque não acerta [M]"
									M<<"Você bloqueou o jutsu de [usr] - Goukakyuu."
									return
								if(M.sphere)
									usr<<"Seu ataque não acerta [M]"
									M<<"Você bloqueou o jutsu de [usr] - Goukakyuu."
									return
								if(M.counter)
									usr<<"Ele copia e o reflete de volta para você."
									M<<"Você copiou e o refletiu."
									usr.health -= M.Mnin/6+M.Mtai/6+M.Mgen/6+M.Mshurikenskill/6
									Death(usr)
									return
								var/damage=usr.nin/4.5+usr.gen/4.5+usr.tai/4.5+usr.shurikenskill/4.5 + fogoN*1.5 - M.Resistencia/2
								if(damage<=0)damage=0
								view()<<"[M] recebeu [damage] de dano do jutsu de [usr] - Taiyou Goukakyuu"
								M.health-=damage
								F_damage(M, damage, "#ff0000")
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4))
						if(M1)
							if(M.loc==M1.loc)
								if(M.Kaiten)
									usr<<"Seu ataque não acerta [M]"
									M<<"Você bloqueou o jutsu de [usr] - Goukakyuu."
									return
								if(M.sphere)
									usr<<"Seu ataque não acerta [M]"
									M<<"Você bloqueou o jutsu de [usr] - Goukakyuu."
									return
								if(M.counter)
									usr<<"Ele copia e o reflete de volta para você."
									M<<"Você copiou e o refletiu."
									usr.health -= M.Mnin/6+M.Mtai/6+M.Mgen/6+M.Mshurikenskill/6
									Death(usr)
									return
								var/damage=usr.nin/4.5+usr.gen/4.5+usr.tai/4.5+usr.shurikenskill/4.5 + fogoN*1.5 - M.Resistencia/2
								if(damage<=0)damage=0
								view()<<"[M] recebeu [damage] de dano do jutsu de [usr] - Taiyou Goukakyuu"
								M.health-=damage
								F_damage(M, damage, "#ff0000")
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4))
						if(N)
							if(M.loc==N.loc)
								if(M.Kaiten)
									usr<<"Seu ataque não acerta [M]"
									M<<"Você bloqueou o jutsu de [usr] - Goukakyuu."
									return
								if(M.sphere)
									usr<<"Seu ataque não acerta [M]"
									M<<"Você bloqueou o jutsu de [usr] - Goukakyuu."
									return
								if(M.counter)
									usr<<"Ele copia e o reflete de volta para você."
									M<<"Você copiou e o refletiu."
									usr.health -= M.Mnin/6+M.Mtai/6+M.Mgen/6+M.Mshurikenskill/6
									Death(usr)
									return
								var/damage=usr.nin/4.5+usr.gen/4.5+usr.tai/4.5+usr.shurikenskill/4.5 + fogoN*1.5 - M.Resistencia/2
								if(damage<=0)damage=0
								view()<<"[M] recebeu [damage] de dano do jutsu de [usr] - Taiyou Goukakyuu"
								M.health-=damage
								F_damage(M, damage, "#ff0000")
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4))
						if(O)
							if(M.loc==O.loc)
								if(M.Kaiten)
									usr<<"Seu ataque não acerta [M]"
									M<<"Você bloqueou o jutsu de [usr] - Goukakyuu."
									return
								if(M.sphere)
									usr<<"Seu ataque não acerta [M]"
									M<<"Você bloqueou o jutsu de [usr] - Goukakyuu."
									return
								if(M.counter)
									usr<<"Ele copia e o reflete de volta para você."
									M<<"Você copiou e o refletiu."
									usr.health -= M.Mnin/6+M.Mtai/6+M.Mgen/6+M.Mshurikenskill/6
									Death(usr)
									return
								var/damage=usr.nin/4.5+usr.gen/4.5+usr.tai/4.5+usr.shurikenskill/4.5 + fogoN*1.5 - M.Resistencia/2
								if(damage<=0)damage=0
								view()<<"[M] recebeu [damage] de dano do jutsu de [usr] - Taiyou Goukakyuu"
								M.health-=damage
								F_damage(M, damage, "#ff0000")
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4))
						if(BL)
							if(M.loc==BL.loc)
								if(M.Kaiten||M.sphere)
									usr<<"Seu ataque não acerta [M]"
									M<<"Você bloqueou o jutsu de [usr] - Goukakyuu."
									return
								if(M.counter)
									usr<<"Ele copia e o reflete de volta para você."
									M<<"Você copiou e o refletiu."
									usr.health -= M.Mnin/8
									Death(usr)
									return
								var/damage=usr.nin/4.5+usr.gen/4.5+usr.tai/4.5+usr.shurikenskill/4.5 + fogoN*1.5 - M.Resistencia/2
								if(damage<=0)damage=0
								view()<<"[M] recebeu [damage] de dano do jutsu de [usr] - Taiyou Goukakyuu"
								M.health-=damage
								F_damage(M, damage, "#ff0000")
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4))
						if(BR)
							if(M.loc==BR.loc)
								if(M.Kaiten||M.sphere)
									usr<<"Seu ataque não acerta [M]"
									M<<"Você bloqueou o jutsu de [usr] - Goukakyuu."
									return
								if(M.counter)
									usr<<"Ele copia e o reflete de volta para você."
									M<<"Você copiou e o refletiu."
									usr.health -= M.Mnin/8
									Death(usr)
									return
								var/damage=usr.nin/4.5+usr.gen/4.5+usr.tai/4.5+usr.shurikenskill/4.5 + fogoN*1.5 - M.Resistencia/2
								if(damage<=0)damage=0
								view()<<"[M] recebeu [damage] de dano do jutsu de [usr] - Taiyou Goukakyuu"
								M.health-=damage
								F_damage(M, damage, "#ff0000")
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4))
						if(TR)
							if(M.loc==TR.loc)
								if(M.Kaiten||M.sphere)
									usr<<"Seu ataque não acerta [M]"
									M<<"Você bloqueou o jutsu de [usr] - Goukakyuu."
									return
								if(M.counter)
									usr<<"Ele copia e o reflete de volta para você."
									M<<"Você copiou e o refletiu."
									usr.health -= M.Mnin/8
									Death(usr)
									return
								var/damage=usr.nin/4.5+usr.gen/4.5+usr.tai/4.5+usr.shurikenskill/4.5 + fogoN*1.5 - M.Resistencia/2
								if(damage<=0)damage=0
								view()<<"[M] recebeu [damage] de dano do jutsu de [usr] - Taiyou Goukakyuu"
								M.health-=damage
								F_damage(M, damage, "#ff0000")
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4))
						if(TL)
							if(M.loc==TL.loc)
								if(M.Kaiten||M.sphere)
									usr<<"Seu ataque não acerta [M]"
									M<<"Você bloqueou o jutsu de [usr] - Goukakyuu."
									return
								if(M.counter)
									usr<<"Ele copia e o reflete de volta para você."
									M<<"Você copiou e o refletiu."
									usr.health -= M.Mnin/6+M.Mtai/6+M.Mgen/6+M.Mshurikenskill/6
									Death(usr)
									return
								var/damage=usr.nin/4.5+usr.gen/4.5+usr.tai/4.5+usr.shurikenskill/4.5 + fogoN*1.5 - M.Resistencia/2
								if(damage<=0)damage=0
								view()<<"[M] recebeu [damage] de dano do jutsu de [usr] - Taiyou Goukakyuu"
								M.health-=damage
								F_damage(M, damage, "#ff0000")
								if(M.health<=0)
									M.Death(usr)
					sleep(30)
					usr.cast = 0
					usr.froze=0
					usr.move=1
					sleep(45)
					del(K)
					del(T)
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.cast = 1
						var/obj/TGoukakyuuHead/K = new /obj/TGoukakyuuHead
						var/obj/TGoukakyuuTail/T = new /obj/TGoukakyuuTail
						usr.TGU += 1
						usr.froze=1
						usr.move=0
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#ff4500>H</FONT><FONT COLOR=#ff4d00>i</FONT><FONT COLOR=#ff5500>k</FONT><FONT COLOR=#ff5d00>a</FONT><FONT COLOR=#ff6500>r</FONT><FONT COLOR=#ff6d00>i</FONT><FONT COLOR=#ff7600> </FONT><FONT COLOR=#ff7e00>G</FONT><FONT COLOR=#ff8600>o</FONT><FONT COLOR=#ff8e00>u</FONT><FONT COLOR=#ff9600>k</FONT><FONT COLOR=#ff9e00>a</FONT><FONT COLOR=#ffa500>k</FONT><FONT COLOR=#ff9e00>y</FONT><FONT COLOR=#ff9600>u</FONT><FONT COLOR=#ff8e00>u</FONT><FONT COLOR=#ff8600> </FONT><FONT COLOR=#ff7e00>N</FONT><FONT COLOR=#ff7600>o</FONT><FONT COLOR=#ff6d00> </FONT><FONT COLOR=#ff6500>J</FONT><FONT COLOR=#ff5d00>u</FONT><FONT COLOR=#ff5500>t</FONT><FONT COLOR=#ff4d00>s</FONT><FONT COLOR=#ff4500>u</FONT> "
						K.Gowner=usr
						K.nin=usr.nin/4.5+usr.gen/4.5+usr.tai/4.5+usr.shurikenskill/4.5 + fogoN*1.5
						if(usr.dir==NORTH)
							if(K)
								K.loc = usr.loc
								K.y+=2
							if(T)
								T.dir = usr.dir
								T.loc = usr.loc
								T.y+=1
						if(usr.dir==SOUTH)
							if(K)
								K.loc = usr.loc
								K.y-=2
							if(T)
								T.dir = usr.dir
								T.loc = usr.loc
								T.y-=1
						if(usr.dir==WEST)
							if(K)
								K.loc = usr.loc
								K.x-=2
							if(T)
								T.dir = usr.dir
								T.loc = usr.loc
								T.x-=1
						if(usr.dir==EAST)
							if(K)
								K.loc = usr.loc
								K.x+=2
							if(T)
								T.dir = usr.dir
								T.loc = usr.loc
								T.x+=1
						for(var/mob/M in oview(4))
							if(K)
								if(M.loc==K.loc)
									if(M.Kaiten||M.sphere)
										usr<<"Seu ataque não acerta [M]"
										M<<"Você bloqueou o jutsu de [usr] - Goukakyuu."
										return
									if(M.counter)
										usr<<"Ele copia e o reflete de volta para você."
										M<<"Você copiou e o refletiu."
										usr.health -= M.Mnin/6+M.Mtai/6+M.Mgen/6+M.Mshurikenskill/6
										Death(usr)
										return
									var/damage=usr.nin/4.5+usr.gen/4.5+usr.tai/4.5+usr.shurikenskill/4.5 + fogoN*1.5 - M.Resistencia/2
									if(damage<=0)damage=0
									view()<<"[M] recebeu [damage] de dano do jutsu de [usr] - Taiyou Goukakyuu"
									M.health-=damage
									F_damage(M, damage, "#ff0000")
									if(M.health<=0)
										M.Death(usr)
						for(var/mob/M in oview(4))
							if(T)
								if(M.loc==T.loc)
									if(M.Kaiten||M.sphere)
										usr<<"Seu ataque não acerta [M]"
										M<<"Você bloqueou o jutsu de [usr] - Goukakyuu."
										return
									if(M.counter)
										usr<<"Ele copia e o reflete de volta para você."
										M<<"Você copiou e o refletiu."
										usr.health -= M.Mnin/6+M.Mtai/6+M.Mgen/6+M.Mshurikenskill/6
										Death(usr)
										return
									var/damage=usr.nin/4.5+usr.gen/4.5+usr.tai/4.5+usr.shurikenskill/4.5 + fogoN*1.5 - M.Resistencia/2
									if(damage<=0)damage=0
									view()<<"[M] recebeu [damage] de dano do jutsu de [usr] - Taiyou Goukakyuu"
									M.health-=damage
									F_damage(M, damage, "#ff0000")
									if(M.health<=0)
										M.Death(usr)
						sleep(10)
						usr.cast = 0
						usr.froze=0
						usr.move=1
						sleep(45)
						del(K)
						del(T)


//==== SAI ======================================================================================


mob/Sai
	verb
		SnakeKyuu(mob/M in oview(4))
			set category = "Jutsus"
			set name = "Ninpou Chouju Giga (Cobra)"
			usr.Handseals()
			if(!usr.handseals)
				return
			if(usr.cast)
				return
			if(usr.sphere)
				return
			if(usr.Kaiten)
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
			if(M.gc)
				usr.AntiGen(M)
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
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
			if(M.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(M.Kaiten)
				return
			if(M.counter)
				usr<<"Ele copia e o reflete de volta para você."
				M<<"Você copiou e o refletiu."
				usr.health -= M.Mnin/5
				Death(usr)
				return
			if(M.captured)
				usr<<"Ele já está capturado!"
				return
			else
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				if(usr.KyuuN>=100)
					usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam
					usr.KyuuN += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Ninpou Chouju Giga (Cobra)!"
					M.overlays+='Chouju Giga snake.dmi'
					M.captured=1
					usr.Chakragain()
					M.froze=1
					M.move=0
					sleep(50)
					if(M)
						M.captured=0
						M.froze=0
						M.move=1
						M.overlays-='Chouju Giga snake.dmi'
						M.overlays-='Chouju Giga snake.dmi'
						M.overlays-='Chouju Giga snake.dmi'
						M.overlays-='Chouju Giga snake.dmi'
						usr.cast=0
					return
				else
					usr.random=rand(1,5)
					if(usr.random==1)
						usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam
						usr.KyuuN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Ninpou Chouju Giga (Cobra)!"
						M.overlays+='Chouju Giga snake.dmi'
						M.captured=1
						M.froze=1
						M.move=0
						sleep(50)
						if(M)
							M.captured=0
							M.froze=0
							M.move=1
							M.overlays-='Chouju Giga snake.dmi'
							M.overlays-='Chouju Giga snake.dmi'
							M.overlays-='Chouju Giga snake.dmi'
							M.overlays-='Chouju Giga snake.dmi'
							usr.cast=0
						return
					if(usr.random==2)
						usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam
						usr.KyuuN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Ninpou Chouju Giga (Cobra)!"
						M.overlays+='Chouju Giga snake.dmi'
						M.captured=1
						M.froze=1
						M.move=0
						sleep(50)
						if(M)
							M.captured=0
							M.froze=0
							M.move=1
							M.overlays-='Chouju Giga snake.dmi'
							M.overlays-='Chouju Giga snake.dmi'
							M.overlays-='Chouju Giga snake.dmi'
							M.overlays-='Chouju Giga snake.dmi'
						usr.cast=0
						return
					if(usr.random==3)
						usr<<"Você falhou em usar o Ninpou Chouju Giga (Cobra)"
						usr.cast=1
						sleep(40)
						usr.cast=0
						return
					if(usr.random==4)
						usr<<"Você falhou em usar o Ninpou Chouju Giga (Cobra)"
						usr.cast=1
						sleep(40)
						usr.cast=0
						return
					if(usr.random==5)
						usr<<"Você falhou em usar o Ninpou Chouju Giga (Cobra)"
						usr.cast=1
						sleep(40)
						usr.cast=0
						return
					sleep(100)
					usr.cast=0
					if(M)
						M.captured=0


mob/var/tmp/Ratsilluminate=0
mob/Sai
	verb
		Ratsilluminate() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Ninpou Chouju Giga (Ratos)"
			if(usr.Ratsilluminate)
				return
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			usr.Ratsilluminate=1
			for(var/mob/npcs/Bunshin/B in world)
				if(usr.Mnin <= 49&&usr.Mgen <= 49&&usr.Mtai <= 49&&usr.Mshurikenskill <= 49)
					usr << "Não é forte o suficiente..."
					return
				else
					var/image/I = image('Chouju Giga rats.dmi',B,"googa")
					src << I
					usr.illu = 1
			for(var/mob/npcs/KBunshin/K in world)
				if(usr.Mnin <= 100&&usr.Mgen <= 100&&usr.Mtai <= 100&&usr.Mshurikenskill <= 100)
					usr << "Não..."
					return
				else
					var/image/I = image('Chouju Giga rats.dmi',K,"googa")
					src << I
					usr.illu = 1
			for(var/mob/M in oview(10))
				M.invisibility = 0
				M.overlays += 'Chouju Giga rats.dmi'
				sleep(30)
				M.overlays -= 'Chouju Giga rats.dmi'
				if(M.kawa)
					M.overlays += 'Chouju Giga rats.dmi'
					sleep(30)
					M.overlays -= 'Chouju Giga rats.dmi'
			sleep(30)
			usr.Ratsilluminate=0


mob/Sai
	verb
		NinpouLion() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Ninpou Chouju Giga (Leão)"
			usr.Handseals()
			if(usr.cast||usr.Kaiten||usr.counter)
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.inso)
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(!usr.handseals)
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
			else
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				if(usr.NinpouN >= 40)
					if(usr.dir==NORTHWEST)
						usr<<"Você não pode usar esse jutsu quando na diagonal."
						return
					if(usr.dir==SOUTHWEST)
						usr<<"Você não pode usar esse jutsu quando na diagonal."
						return
					if(usr.dir==NORTHEAST)
						usr<<"Você não pode usar esse jutsu quando na diagonal."
						return
					if(usr.dir==SOUTHEAST)
						usr<<"Você não pode usar esse jutsu quando na diagonal."
						return
					usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam
					usr.NinpouN += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz:Ninpou Chogi Giga"
					var/obj/NinpouG/A = new /obj/NinpouG
					var/obj/NinpouG/S = new /obj/NinpouG
					var/obj/NinpouG/K = new /obj/NinpouG
					var/obj/NinpouG/L = new /obj/NinpouG
					usr.Chakragain()
					var/obj/NinpouG/N = new /obj/NinpouG
					if(K)
						K.loc = usr.loc
						K.nin=usr.nin/4.25 + usr.gen/4.25 + usr.tai/4.25 + usr.shurikenskill/4.25
						K.name="[usr]"
						K.Move_Delay=0.7
						K.Gowner=usr
						walk(K,usr.dir)
					sleep(6)
					if(A)
						A.loc = usr.loc
						if(usr.dir==NORTH)
							A.x-=1
						if(usr.dir==SOUTH)
							A.x+=1
						if(usr.dir==WEST)
							A.y+=1
						if(usr.dir==EAST)
							A.y-=1
						A.nin=usr.nin/4.25 + usr.gen/4.25 + usr.tai/4.25 + usr.shurikenskill/4.25
						A.name="[usr]"
						A.Move_Delay=0.7
						A.Gowner=usr
						walk(A,usr.dir)
					sleep(6)
					if(L)
						L.loc = usr.loc
						if(usr.dir==NORTH)
							L.x+=1
						if(usr.dir==SOUTH)
							L.x-=1
						if(usr.dir==WEST)
							L.y-=1
						if(usr.dir==EAST)
							L.y+=1
						L.Move_Delay=0.7
						L.nin=usr.nin/4.25 + usr.gen/4.25 + usr.tai/4.25 + usr.shurikenskill/4.25
						L.name="[usr]"
						L.Gowner=usr
						walk(L,usr.dir)
					sleep(13)
					if(S)
						S.loc = usr.loc
						if(usr.dir==NORTH)
							S.x+=1
						if(usr.dir==SOUTH)
							S.x-=1
						if(usr.dir==WEST)
							S.y-=1
						if(usr.dir==EAST)
							S.y+=1
						S.Move_Delay=0.7
						S.nin=usr.nin/4.25 + usr.gen/4.25 + usr.tai/4.25 + usr.shurikenskill/4.25
						S.name="[usr]"
						S.Gowner=usr
						walk(S,usr.dir)
					sleep(5)
					if(N)
						N.loc = usr.loc
						if(usr.dir==NORTH)
							N.x-=1
						if(usr.dir==SOUTH)
							N.x+=1
						if(usr.dir==WEST)
							N.y+=1
						if(usr.dir==EAST)
							N.y-=1
						N.Move_Delay=0.7
						N.nin=usr.nin/4.25 + usr.gen/4.25 + usr.tai/4.25 + usr.shurikenskill/4.25
						N.name="[usr]"
						N.Gowner=usr
						walk(N,usr.dir)
					sleep(10)
					usr.cast = 0
					sleep(21)
					del(A)
					del(S)
					del(K)
					del(L)
					del(N)
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						if(usr.dir==NORTHWEST)
							usr<<"Você não pode usar esse jutsu quando na diagonal."
							return
						if(usr.dir==SOUTHWEST)
							usr<<"Você não pode usar esse jutsu quando na diagonal."
							return
						if(usr.dir==NORTHEAST)
							usr<<"Você não pode usar esse jutsu quando na diagonal."
							return
						if(usr.dir==SOUTHEAST)
							usr<<"Você não pode usar esse jutsu quando na diagonal."
							return
						usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam
						usr.NinpouN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz:Ninpou Chouju Giga (Leão)"
						var/obj/NinpouG/S = new /obj/NinpouG
						var/obj/NinpouG/D = new /obj/NinpouG
						var/obj/NinpouG/K = new /obj/NinpouG
						var/obj/NinpouG/L = new /obj/NinpouG
						usr.Chakragain()
						var/obj/NinpouG/N = new /obj/NinpouG
						if(K)
							K.loc = usr.loc
							K.nin=usr.nin/4.25 + usr.gen/4.25 + usr.tai/4.25 + usr.shurikenskill/4.25
							K.name="[usr]"
							K.Move_Delay=0.7
							K.Gowner=usr
							walk(K,usr.dir)
						sleep(6)
						if(D)
							D.loc = usr.loc
							if(usr.dir==NORTH)
								D.x-=1
							if(usr.dir==SOUTH)
								D.x+=1
							if(usr.dir==WEST)
								D.y+=1
							if(usr.dir==EAST)
								D.y-=1
							D.nin=usr.nin/4.25 + usr.gen/4.25 + usr.tai/4.25 + usr.shurikenskill/4.25
							D.name="[usr]"
							D.Move_Delay=0.7
							D.Gowner=usr
							walk(D,usr.dir)
						sleep(6)
						if(L)
							L.loc = usr.loc
							if(usr.dir==NORTH)
								L.x+=1
							if(usr.dir==SOUTH)
								L.x-=1
							if(usr.dir==WEST)
								L.y-=1
							if(usr.dir==EAST)
								L.y+=1
							L.Move_Delay=0.7
							L.nin=usr.nin/4.25 + usr.gen/4.25 + usr.tai/4.25 + usr.shurikenskill/4.25
							L.name="[usr]"
							L.Gowner=usr
							walk(L,usr.dir)
						sleep(13)
						if(S)
							S.loc = usr.loc
							if(usr.dir==NORTH)
								S.x+=1
							if(usr.dir==SOUTH)
								S.x-=1
							if(usr.dir==WEST)
								S.y-=1
							if(usr.dir==EAST)
								S.y+=1
							S.Move_Delay=0.7
							S.nin=usr.nin/4.25 + usr.gen/4.25 + usr.tai/4.25 + usr.shurikenskill/4.25
							S.name="[usr]"
							S.Gowner=usr
							walk(S,usr.dir)
						sleep(5)
						if(N)
							N.loc = usr.loc
							if(usr.dir==NORTH)
								N.x-=1
							if(usr.dir==SOUTH)
								N.x+=1
							if(usr.dir==WEST)
								N.y+=1
							if(usr.dir==EAST)
								N.y-=1
							N.Move_Delay=0.7
							N.nin=usr.nin/4.25 + usr.gen/4.25 + usr.tai/4.25 + usr.shurikenskill/4.25
							N.name="[usr]"
							N.Gowner=usr
							walk(N,usr.dir)
						sleep(10)
						usr.cast = 0
						sleep(21)
						del(D)
						del(S)
						del(K)
						del(L)
						del(N)
					usr<<"Você falhou em usar o Ninpou Chouju Giga (Leão)"


//==== FIM DOS SUBCLANS =========================================================================
//===============================================================================================


mob
	verb
		Roubar(mob/M in oview (1)) // Verb used for cast the beam
			set category = "TaiJutsu"
			set name = "Roubar"
			if(usr.cast||usr.Kaiten) // If the mob's cast var is one...
				return
			if(usr.DefesaAbsoluta||usr.Kaiten||usr.froze||usr.def||usr.kawa)
				usr<<"Você está paralisado"
				return
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
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
			if(usr.coracao>=5)
				usr<<"Você já possui corações demais (max de 5)"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.stamina <= 1000)
				usr<<"Você não possui stamina suficiente! (1k)"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(M.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(M.level>=usr.level*2)
				usr<<"Vc não é forte o bastante"
				return
			if(M.client)
				if(M.z==8&&M.x>0&&M.x<91&&M.y>0&&M.y<54)
					world<<output("[usr] foi desconectado por tentar roubar na area VIP!","output2.sistema")
					del(usr)
				else
					usr<<output("Vc começa a tentar roubar [M].","output2.sistema")
					usr.stamina-=1000
					M.froze=1
					usr.froze=1
					sleep(20)
					usr<<output("Você rouba[M]!","output2.sistema")
					usr.honra-=rand(5,15)
					usr.pivete +=1
					M.froze=0
					usr.froze=0
					usr.Yen += M.Yen*0.2
					M.Yen -= M.Yen*0.2
					M<<output("Você foi roubado","output2.sistema")
					//M.SalvarAgora()
			if(usr.pivete == 5)
				world<<"<font color = yellow>[src] se tornou um pivete conhecido por roubar demais os outros.</font>"


			if(usr.pivete >=6&&usr.pivete<=9)
				usr.Yen += M.Yen*0.3
				M.Yen -= M.Yen*0.3
				world<<"<font color = blue>[src] continua roubando os outros, se afastem desse mau elemento.</font>"


			if(usr.pivete == 10)
				usr.Yen += M.Yen*0.35
				M.Yen -= M.Yen*0.35
				world<<output("<font color = blue>[src] foi preso por shinobis por roubar demais!</font>","output2.sistema")
				usr<<output("Você ficará preso por 5 minutos!","output2.sistema")
				usr.loc = locate(228,300,2)
				usr.OOC = 0
				usr.jailed=1
				usr.Jail1=1
				usr.AutoJail1()
				usr.SalvarAgora()

			if(usr.pivete >= 11&&usr.pivete<=14)
				world<<output("<font color = red>[src] continua roubando os outros, parece que a primeira detenção não foi nada... .</font>","output2.sistema")
				usr.Yen += M.Yen*0.4
				M.Yen -= M.Yen*0.4


			if(usr.pivete == 15)
				usr.Yen += M.Yen*0.5
				M.Yen -= M.Yen*0.5
				world<<output("<font color = red>[src] foi preso pela segunda vez por shinobis por roubar demais! 10 minutos de detenção!</font>","output2.sistema")
				usr<<output("Você ficará preso por 10 minutos!","output2.sistema")
				usr.loc = locate(228,300,2)
				usr.OOC = 0
				usr.jailed=1
				usr.Jail2=1
				usr.AutoJail2()
				usr.SalvarAgora()


			if(usr.pivete >=16&&usr.pivete<=19)
				world<<output("<font color = white>[src] continua roubando os outros, parece que a segunda detenção também não foi nada... .</font>","output2.sistema")
				usr.Yen += M.Yen*0.65
				M.Yen -= M.Yen*0.65
				return

			if(usr.pivete >= 20&&usr.pivete<=49)
				usr.Yen += M.Yen*0.75
				M.Yen -= M.Yen*0.75
				world<<output("<font color = white>[src] foi preso pela terceira vez por shinobis por roubar demais! 30 minutos de detenção!</font>","output2.sistema")
				usr<<output("Você ficará preso por 30 minutos!","output2.sistema")
				usr.loc = locate(228,300,2)
				usr.OOC = 0
				usr.jailed=1
				usr.Jail3=1
				usr.AutoJail3()
				usr.SalvarAgora()


			if(usr.pivete >= 50&&usr.pivete<=99)
				usr.Yen += M.Yen*0.9
				M.Yen -= M.Yen*0.9
				world<<output("<font color = white>[src] É um ladrão desgraçado... pegou 30 minutos de detenção mais uma vez!</font>","output2.sistema")
				usr<<output("Você ficará novamente preso por 30 minutos!","output2.sistema")
				usr.loc = locate(228,300,2)
				usr.OOC = 0
				usr.jailed=1
				usr.Jail3=1
				usr.AutoJail3()
				usr.SalvarAgora()



			if(usr.pivete == 100)
				usr.Yen += M.Yen
				M.Yen -= M.Yen
				world<<output("<font color = silver>[src] É um ladrão desgraçado... pegou 45 minutos de detenção!</font>","output2.sistema")
				usr<<output("Você ficará novamente preso por 30 minutos!","output2.sistema")
				usr.loc = locate(228,300,2)
				usr.OOC = 0
				usr.jailed=1
				usr.Jail4=1
				usr.AutoJail4()
				usr.SalvarAgora()



			if(usr.pivete > 100)
				usr.Yen += M.Yen
				M.Yen -= M.Yen
				world<<output("<font color = silver>[src] É um ladrão desgraçado... pegou 45 minutos de detenção mais uma vez!</font>","output2.sistema")
				usr<<output("Você ficará novamente preso por 45 minutos!","output2.sistema")
				usr.loc = locate(228,300,2)
				usr.OOC = 0
				usr.jailed=1
				usr.Jail4=1
				usr.AutoJail4()
				usr.SalvarAgora()




mob/Raikage
	verb
		raikage(mob/M in oview(5)) // Verb used for cast the beam
			set category = "TaiJutsu"
			set name = "Raiton Liger Bomb"
			if(usr.cdlbomb)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Liger Bomb</b>!"
				return
			if(usr.cast) // If the mob's cast var is one...
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(M.Kaiten)
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(src.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(src.concing)
				usr<<"Não enquanto se concentra"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.Ryoroi)
				if(usr.cdlbomb)return
				usr.cdlbomb=1
				spawn()usr.Cooldown(180,"Liger Bomb")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				M<<"Vc foi atingido pelo Liger Bomb de [usr]"
				usr<<"Vc ataca [M] com seu Liger Bomb"
				var/obj/Crater_Center/B = new /obj/Crater_Center
				B.loc = M.loc
				var/damage= usr.tai/4.75 + usr.nin/4.75 + usr.gen/4.75 + usr.shurikenskill/4.75 + usr.trovaoN*1.5 - M.Resistencia/2
				if(damage<=0)damage=0
				M.health-=damage
				F_damage(M, damage, "#ff0000")
				if(M.health<=0)
					M.Death(usr)
			else
				usr<<"Precisa ativar sua Armadura de Raio primeiro"


mob/var/raim=0
mob/var/raim2=0
mob/Raikage/
	verb
		RaikageArmadura()
			set category = "Jutsus"
			set name = "Armadura de Raio"
			if(usr.cast)
				usr<<"Não agora."
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
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
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
			if(!usr.raim&&!usr.cast)
				usr.RandomChakra01()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				view()<<"<font color = blue>[usr]: Armadura de Raio!"
				usr.overlays += 'Raiton Armor.dmi'
				usr.raim =1
				usr.nin = usr.nin*1.05
				usr.tai = usr.tai*1.05
				usr.gen = usr.gen*1.05
				usr.shurikenskill = usr.shurikenskill*1.05
				usr.Move_Delay = 0.6
				usr.verbs += new /mob/Raikage/verb/raikage()
				fire
				if(usr.raim)
					usr.chakra -=rand(100,200)
					if(usr.chakra <= 200)
						usr.overlays -= 'Raiton Armor.dmi'
						usr.verbs -= new /mob/Raikage/verb/raikage()
						usr.Move_Delay = 0.7
						usr.raim = 0
						usr.buff=0
						usr.nin = usr.Mnin
						usr.tai = usr.Mtai
						usr.gen = usr.Mgen
						usr.shurikenskill = usr.Mshurikenskill
						return
					else
						sleep(40)
						goto fire
			else if(usr.raim)
				usr.overlays -= 'Raiton Armor.dmi'
				usr.Move_Delay = 0.7
				usr.verbs -= new /mob/Raikage/verb/raikage()
				usr.raim =0
				usr.buff=0
				usr.nin = usr.Mnin
				usr.tai = usr.Mtai
				usr.gen = usr.Mgen
				usr.shurikenskill = usr.Mshurikenskill
				usr<<"Você desativa a Armadura de Raio."

		RaikageArmadura2()
			set category = "Jutsus"
			set name = "Armadura de Raio - Velocidade Maxima"
			if(usr.cast)
				usr<<"Não agora."
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
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
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
			if(!usr.raim2&&!usr.cast)
				usr.RandomChakra01()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				view()<<"<font color = blue>[usr]: Velocidade Máxima!"
				usr.overlays += 'Raiton Armor.dmi'
				usr.overlays += 'cs.dmi'
				usr.raim2 =1
				usr.nin = usr.nin*1.1
				usr.tai = usr.tai*1.1
				usr.gen = usr.gen*1.1
				usr.shurikenskill = usr.shurikenskill*1.1
				usr.Move_Delay = 0.5
				usr.verbs += new /mob/Raikage/verb/raikage()
				fire
				if(usr.raim2)
					usr.chakra -=rand(200,300)
					if(usr.chakra <= 300)
						usr.overlays -= 'Raiton Armor.dmi'
						usr.overlays -= 'cs.dmi'
						usr.verbs -= new /mob/Raikage/verb/raikage()
						usr.Move_Delay = 0.7
						usr.raim2 = 0
						usr.buff=0
						usr.nin = usr.Mnin
						usr.tai = usr.Mtai
						usr.gen = usr.Mgen
						usr.shurikenskill = usr.Mshurikenskill
						return
					else
						sleep(40)
						goto fire
			else if(usr.raim2)
				usr.overlays -= 'Raiton Armor.dmi'
				usr.overlays -= 'cs.dmi'
				usr.Move_Delay = 0.7
				usr.verbs -= new /mob/Raikage/verb/raikage()
				usr.raim2 =0
				usr.buff=0
				usr.nin = usr.Mnin
				usr.tai = usr.Mtai
				usr.gen = usr.Mgen
				usr.shurikenskill = usr.Mshurikenskill
				usr<<"Você desativa a Armadura de Raio."


mob/SubHokage/
	verb
		SenjutsuSenju()
			set category = "Jutsus"
			set name = "Senjutsu Senjuu"
			if(usr.cast)
				usr<<"Não agora."
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
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
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
			if(!usr.Ryoroi&&!usr.cast)
				usr.RandomChakra01()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				view()<<"<font color = green>[usr]: Senjutsu Senju!"
				//usr.overlays += 'Raiton Armor.dmi'
				usr.Ryoroi =1
				usr.nin = usr.Mnin*1.05
				usr.tai = usr.Mtai*1.05
				usr.gen = usr.Mgen*1.05
				usr.shurikenskill = usr.Mshurikenskill*1.05
				usr.Move_Delay = 0
				usr.veloN += 5000
				senjut
				if(usr.Ryoroi)
					usr.chakra -=rand(500,1000)
					if(usr.chakra <= 500)
						//usr.overlays -= 'Raiton Armor.dmi'
						usr.Move_Delay = 0.7
						usr.Ryoroi = 0
						usr.veloN -= 5000
						usr.buff=0
						usr.nin = usr.Mnin
						usr.tai = usr.Mtai
						usr.gen = usr.Mgen
						usr.shurikenskill = usr.Mshurikenskill
						return
					else
						sleep(40)
						goto senjut
			else if(usr.Ryoroi)
				//usr.overlays -= 'Raiton Armor.dmi'
				usr.Move_Delay = 0.7
				usr.Ryoroi =0
				usr.veloN -= 5000
				usr.buff=0
				usr.nin = usr.Mnin
				usr.tai = usr.Mtai
				usr.gen = usr.Mgen
				usr.shurikenskill = usr.Mshurikenskill
				usr<<"Você desativa a Senjutsu Senju."



mob/Raikage
	verb
		Lariat()
			set name = "Lariat"
			set category = "Jutsus"
			for(var/mob/M in oview(1))
				if(M.party&&M.partysensei==usr.partysensei)return
				if(usr.cdlariat)
					usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Lariat</b>!"
					return
				if(usr.PK==0)
					usr<<"Zona NON-PK!!!"
					return
				if(M.PK==0)
					usr<<"Zona NON-PK!!!"
					return
				if(usr.stamina <= 10000)
					usr<<"Não tem stamina o bastante (10k)"
					return
				if(usr.froze)
					usr<<"Você está paralisado"
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
				if(usr.resting)
					usr<<"Não enquanto descansa"
					return
				if(usr.meditating)
					usr<<"Não enquanto medita"
					return
				if (M.sphere == 1)
					return
				if (M.Kaiten == 1)
					return
				if(usr.cast)
					return
				else
					if(usr.cdlariat)return
					usr.cdlariat=1
					spawn()usr.Cooldown(150,"Lariat")
					usr.chakra -= 10000
					usr.stamina -= 10000
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=blue> Diz: <FONT COLOR=#f5f5f5>L</FONT><FONT COLOR=#e9e9e9>a</FONT><FONT COLOR=#dbdbdb>r<FONT COLOR=#c0c0c0>i</FONT><FONT COLOR=#cbc6be>a</FONT><FONT COLOR=#d6ccbb>t</FONT>"
					var/damage = usr.nin/4.25 + usr.tai/4.25 + usr.gen/4.25 + usr.shurikenskill/4.25 + usr.trovaoN*1.5 - M.Resistencia/2
					if(damage<=0)damage=0
					usr.EsquivaSharingan(M)
					if(M.Esquivou)
						M.Esquivou=0
						return
					usr.overlays += 'Lariat Bater.dmi'
					M.overlays += 'Lariat Apanhar.dmi'
					sleep(20)
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					view()<<"[usr] dá [damage] de dano em [M] com o Lariat!"
					if(M.health <= 0)
						M.Death(usr)
						if(M)
							usr.overlays -= 'Lariat Bater.dmi'
							M.overlays -= 'Lariat Apanhar.dmi'
							usr.cast=0
						return

