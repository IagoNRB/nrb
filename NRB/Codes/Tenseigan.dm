obj
	tenseieyes
		icon='tenseiganthing.dmi'
mob/var/tenseiU=0
mob/var/tenseiganon=0
mob/hyuuga
	verb
		Tenseigan()
			set category = "Doujutsu"
			set name = "Tenseigan"
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
			if(!usr.bya&&usr.hyuuganeji) // If the cast var isn't 1...
				var/obj/tenseieyes/B = new /obj/tenseieyes
				usr.dir=SOUTH
				B.loc = usr.loc
				usr.overlays += 'tenseigan.dmi'
				usr.client.view=12
				usr.overlays += 'tenseiganmodochakra.dmi'
				flick("1",B)
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#f5f5f5>T</FONT><FONT COLOR=#e4eff2>e</FONT><FONT COLOR=#d2e7ee>n</FONT><FONT COLOR=#bfe0ea>s</FONT><FONT COLOR=#add8e6>ei</FONT><FONT COLOR=#b1d4df>g</FONT><FONT COLOR=#b5cfd7>a</FONT><FONT COLOR=#b9cad0>n</FONT><FONT COLOR=#bdc5c8>!</FONT><FONT COLOR=#c0c0c0>!</FONT>"
				view()<<"Os olhos de [usr] brilham de uma forma divina."
				usr.bya=1
				usr.tenseiU += 1
				usr.tenseiganon=1
				usr.client.view=10
				usr.tai = usr.tai*1.4
				usr.verbs += /mob/hyuuga/verb/HakkeRokujuuYonshou
				usr.verbs += /mob/hyuuga/verb/ByakuganSearch
				usr.verbs += /mob/hyuuga/verb/HakkeHyakuNijuhaSho
				usr.verbs += /mob/jutsu/verb/Sharinganilluminate
				//usr.verbs += /mob/jutsu/verb/Byakai()
				usr.verbs += /mob/hyuuga/verb/HakkeKuushou
				usr.verbs += new /mob/teste/verb/Haryate
				usr.verbs += new /mob/hyuuga/verb/HakkeshouKaiten()
				if(usr.tenseiU>=10000)
					usr.verbs += /mob/Toneri/verb/Fly
					usr.verbs += /mob/Toneri/verb/KinrinToneri
					usr.verbs += /mob/Toneri/verb/Ginrin
					usr.verbs += /mob/Toneri/verb/Juzu
					usr.verbs += /mob/Toneri/verb/Shinra2
					usr.verbs += /mob/Toneri/verb/Banshou2
					usr.verbs += /mob/Toneri/verb/KBT
				sleep(13)
				del(B)
				return
			if(!usr.bya&&usr.hyuugahinata) // If the cast var isn't 1...
				var/obj/tenseieyes/B = new /obj/tenseieyes
				usr.dir=SOUTH
				B.loc = usr.loc
				usr.overlays += 'tenseigan.dmi'
				usr.overlays += 'tenseiganmodochakra.dmi'
				usr.client.view=12
				flick("1",B)
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#f5f5f5>T</FONT><FONT COLOR=#e4eff2>e</FONT><FONT COLOR=#d2e7ee>n</FONT><FONT COLOR=#bfe0ea>s</FONT><FONT COLOR=#add8e6>ei</FONT><FONT COLOR=#b1d4df>g</FONT><FONT COLOR=#b5cfd7>a</FONT><FONT COLOR=#b9cad0>n</FONT><FONT COLOR=#bdc5c8>!</FONT><FONT COLOR=#c0c0c0>!</FONT>"
				view()<<"Os olhos de [usr] brilham de uma forma divina."
				usr.bya=1
				usr.tenseiU += 1
				usr.tenseiganon=1
				usr.client.view=10
				usr.tai = usr.tai*1.4
				usr.verbs += /mob/hyuuga/verb/HakkeRokujuuYonshou
				usr.verbs += new /mob/hyuuga/verb/SenbonH()
				usr.verbs += /mob/hyuuga/verb/ByakuganSearch
				usr.verbs += /mob/hyuuga/verb/HakkeKuushou
				usr.verbs += /mob/jutsu/verb/Sharinganilluminate
				usr.verbs += new /mob/hyuuga/verb/Rasenganhyuuga()
				usr.verbs += /mob/jutsu/verb/Byakai
				usr.verbs += new /mob/hyuuga/verb/HakkeshouKaiten()
				if(usr.tenseiU>=10000)
					usr.verbs += /mob/Toneri/verb/Fly
					usr.verbs += /mob/Toneri/verb/KinrinToneri
					usr.verbs += /mob/Toneri/verb/Ginrin
					usr.verbs += /mob/Toneri/verb/Juzu
					usr.verbs += /mob/Toneri/verb/Shinra2
					usr.verbs += /mob/Toneri/verb/Banshou2
					usr.verbs += /mob/Toneri/verb/KBT
				sleep(13)
				del(B)
				return
			else
				if(usr.bya)
					usr<<"Você sai do Tenseigan."
					usr.tenseiganon=0
					usr.overlays -= 'tenseigan.dmi'
					usr.overlays -= 'tenseiganmodochakra.dmi'
					usr.client.view=8
					usr.tai = usr.Mtai
					usr.verbs -= /mob/hyuuga/verb/HakkeRokujuuYonshou
					usr.verbs -= /mob/hyuuga/verb/ByakuganSearch
					usr.verbs -= /mob/hyuuga/verb/HakkeHyakuNijuhaSho
					usr.verbs -= /mob/jutsu/verb/Sharinganilluminate
					//usr.verbs -= /mob/jutsu/verb/Byakai()
					usr.verbs -= /mob/hyuuga/verb/HakkeKuushou
					usr.verbs -= new/mob/teste/verb/Haryate
					usr.verbs -= new/mob/hyuuga/verb/HakkeshouKaiten()
					usr.verbs -= new /mob/hyuuga/verb/SenbonH()
					usr.verbs -= new /mob/hyuuga/verb/Rasenganhyuuga()
					usr.verbs -= /mob/Toneri/verb/Fly
					usr.verbs -= /mob/Toneri/verb/KinrinToneri
					usr.verbs -= /mob/Toneri/verb/Ginrin
					usr.verbs -= /mob/Toneri/verb/Juzu
					usr.verbs -= /mob/Toneri/verb/Shinra2
					usr.verbs -= /mob/Toneri/verb/Banshou2
					usr.verbs -= /mob/Toneri/verb/KBT
					usr.bya = 0
					usr.icon_state=""
					return


//==================================================================================//

mob/var/tmp/infuyu = 0
mob/Toneri
	verb
		Fly()
			set category = "Doujutsu"
			set name = "Fuyu Suru Noryoku"
			if(!usr.tenseiganon)
				usr<<"Ative o Tenseigan primeiro!"
				return
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
			if(usr.infuyu == 1)
				usr.density = 1
				usr.overlays -= 'vento.dmi'
				usr.Flight = 0
				usr.infuyu = 0
				usr<<"Você <font color=red>desativa</font> o Fuyu Suru Noryoku!"
			else
				usr<<"Você <font color=green>Fuyu Suru Noryoku!"
				usr.overlays+= 'vento.dmi'
				usr.infuyu = 1
				usr.density = 0
				usr.Flight = 1
				Fuyu
					if(usr.infuyu)
						usr.chakra -= usr.Mchakra/100
						if(usr.chakra <= usr.Mchakra/100)
							usr.Flight=0
							usr.overlays-= 'vento.dmi'
							usr.infuyu = 0
							usr.density = 1
							usr<<"Você <font color=red>desativa</font> o Fuyu Suru Noryoku por falta de chakra!"
							return
						else
							sleep(20)
							goto Fuyu

mob/var/tmp/cdkinrin = 0
mob/Toneri
	verb
		KinrinToneri()
			set category = "Doujutsu"
			set name = "Kinrin Tensei Baku"
			if(!usr.tenseiganon)
				usr<<"Ative o Tenseigan primeiro!"
				return
			if(usr.cdkinrin)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Kinrin Tensei Baku</b>!"
				return
			usr.Handseals()
			if(usr.cast||usr.Kaiten)
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
			if(!usr.handseals)
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
				if(usr.cdkinrin)return
				usr.cdkinrin=1
				spawn()usr.Cooldown(120,"Kinrin Tensei Baku")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Kirin Tensei Baku!"
				var/obj/Baku/K = new /obj/Baku
				K.loc = usr.loc
				K.tai=usr.tai
				K.Move_Delay=0.1
				usr.Chakragain()
				K.dir = usr.dir
				K.name="[usr]"
				K.Gowner=usr
				walk(K,usr.dir)

obj
	Baku
		icon = 'bluevortex.dmi'
		icon_state = ""
		density = 1
		Move()
			spawn(80) del(src)
			..()
			var/obj/trolha/T = new /obj/trolha
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
				var/damage = O.tai/3.8 - M.Resistencia/2.25
				if(damage<=0)damage=0
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				view(M) << "[M] foi acertado pelo Kinrin Tensei Baku de [O] recebendo [damage] de dano!!"
				M.Death(O)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	trolha
		icon='waterdragon.dmi'
		icon_state="cauda"
		New()
			..()
			spawn(40)
			del(src)

//				Ginrin Toneri Baku

obj
	tensei
		icon = 'VENTINHO.dmi'// É A RAJADA DE VENTO VEI
		density = 1
		New()
			spawn(100) del src
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
				var/damage = O.tai/4 - M.Resistencia/2
				if(damage<=0)damage=0
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				view(M) << "[M] foi acertado pelo Ginrin Toneri Baku de [O] recebendo [damage] de dano!!"
				M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

mob/var/tmp/cdginrin=0
mob/Toneri
	verb
		Ginrin() // Verb used for cast the beam
			set category = "Doujutsu"
			set name = "Ginrin Tensei Baku"
			if(!usr.tenseiganon)
				usr<<"Ative o Tenseigan primeiro!"
				return
			if(usr.cdginrin)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Ginrin Tensei Baku</b>!"
				return
			usr.Handseals()
			if(usr.cast) // If the mob's cast var is one...
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
			if(!usr.handseals)
				return
			else // If the cast var isn't 1...
				usr.RandomChakra1()
				if(usr.cdginrin)return
				usr.cdginrin=1
				spawn()usr.Cooldown(100,"Ginrin Tensei Baku")
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: GINRIN TENSEI BAKU!"
				usr.Chakragain()
				if(usr.dir == NORTH)
					var/obj/tensei/A = new /obj/tensei/
					var/obj/tensei/B = new /obj/tensei/
					var/obj/tensei/C = new /obj/tensei/
					A.loc = locate(usr.x, usr.y+1, usr.z)
					C.loc = locate(usr.x+1, usr.y+1, usr.z)
					B.loc = locate(usr.x-1, usr.y+1, usr.z)
					A.tai=usr.tai
					B.tai=usr.tai
					C.tai=usr.tai
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					A.dir = NORTH
					B.dir = NORTH
					C.dir = NORTH
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
					sleep(110)
				if(usr.dir == SOUTH)
					var/obj/tensei/A = new /obj/tensei/
					var/obj/tensei/B = new /obj/tensei/
					var/obj/tensei/C = new /obj/tensei/
					A.loc = locate(usr.x, usr.y-1, usr.z)
					C.loc = locate(usr.x+1, usr.y-1, usr.z)
					B.loc = locate(usr.x-1, usr.y-1, usr.z)
					A.tai=usr.tai
					B.tai=usr.tai
					C.tai=usr.tai
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					A.dir = SOUTH
					B.dir = SOUTH
					C.dir = SOUTH
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
					sleep(110)
				if(usr.dir == WEST)
					var/obj/tensei/A = new /obj/tensei/
					var/obj/tensei/C = new /obj/tensei/
					var/obj/tensei/D = new /obj/tensei/
					A.loc = locate(usr.x-1, usr.y, usr.z)
					C.loc = locate(usr.x-1, usr.y-1, usr.z)
					D.loc = locate(usr.x-1, usr.y+1, usr.z)
					A.tai=usr.tai
					C.tai=usr.tai
					D.tai=usr.tai
					A.Gowner=usr
					C.Gowner=usr
					D.Gowner=usr
					A.dir = WEST
					C.dir = WEST
					D.dir = WEST
					walk(A,usr.dir)
					walk(C,usr.dir)
					walk(D,usr.dir)
					sleep(110)
				if(usr.dir == EAST)
					var/obj/tensei/A = new /obj/tensei/
					var/obj/tensei/C = new /obj/tensei/
					var/obj/tensei/D = new /obj/tensei/
					A.loc = locate(usr.x+1, usr.y, usr.z)
					C.loc = locate(usr.x+1, usr.y-1, usr.z)
					D.loc = locate(usr.x+1, usr.y+1, usr.z)
					A.tai=usr.tai
					C.tai=usr.tai
					D.tai=usr.tai
					A.Gowner=usr
					C.Gowner=usr
					D.Gowner=usr
					A.dir = EAST
					C.dir = EAST
					D.dir = EAST
					walk(A,usr.dir)
					walk(C,usr.dir)
					walk(D,usr.dir)
					sleep(110)
					return
				return

mob/var/tmp/cdchakura=0
mob/Toneri
	verb
		Juzu() // Verb used for cast the beam
			set category = "Doujutsu"
			set name = "Chakura no Juzu"
			if(!usr.tenseiganon)
				usr<<"Ative o Tenseigan primeiro!"
				return
			if(usr.cdchakura)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Chakura no Juzu</b>!"
				return
			if(usr.cast)
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
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				for(var/mob/M in orange(6))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(M.Kaiten)
						return
					if(M.PK==0)
						usr<<"Zona NON-PK!!!"
						return
					if(usr.cdchakura)return
					usr.cdchakura=1
					spawn()usr.Cooldown(300,"Chakura no Juzu")
					M.handseals=0
					M<<"Seu jutsu foi cancelado por [usr]"
					usr<<"Vc cancelou o jutsu de [M]"
					M.cast=1
					sleep(30)
					M.cast=0

mob/var/tmp/cdshinrat=0
mob/Toneri
	verb
		Shinra2()// no desc n tem nome mas ´´e isso '-'
			set name = "Shinra Toneri"
			set category = "Doujutsu"
			if(!usr.tenseiganon)
				usr<<"Ative o Tenseigan primeiro!"
				return
			if(usr.cdshinrat)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Shinra Toneri</b>!"
				return
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
				return
			if(usr.cast)
				return
			if(usr.Frozen)
				usr<<"Your frozen"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			else
				if(usr.cdshinrat)return
				usr.cdshinrat=1
				spawn()usr.Cooldown(100,"Shinra Toneri")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.cast=1
				usr.froze=1
				usr.move=0
				usr.Kaiten =1
				usr.overlays += 'shinra.dmi'
				usr.overlays += 'shinra2.dmi'
				var/obj/shinra2/held/asa3 = new /obj/shinra2/held
				src.overlays +=asa3
				view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Shinra Toneri"
				for(var/mob/M in orange(5,usr))
					if(M.party&&M.partysensei==usr.partysensei)
						if(usr.dir==SOUTH)
							M.loc = locate(usr.x,usr.y-5,usr.z)
							return
						if(usr.dir==NORTH)
							M.loc = locate(usr.x,usr.y+5,usr.z)
							return
						if(usr.dir==WEST)
							M.loc = locate(usr.x-5,usr.y,usr.z)
							return
						if(usr.dir==EAST)
							M.loc = locate(usr.x+5,usr.y,usr.z)
							return
					if(M.fantasma)
						if(usr.dir==SOUTH)
							M.loc = locate(usr.x,usr.y-5,usr.z)
							return
						if(usr.dir==NORTH)
							M.loc = locate(usr.x,usr.y+5,usr.z)
							return
						if(usr.dir==WEST)
							M.loc = locate(usr.x-5,usr.y,usr.z)
							return
						if(usr.dir==EAST)
							M.loc = locate(usr.x+5,usr.y,usr.z)
							return
					else
						if(usr.dir==SOUTH)
							M.loc = locate(usr.x,usr.y-5,usr.z)
						if(usr.dir==NORTH)
							M.loc = locate(usr.x,usr.y+5,usr.z)
						if(usr.dir==WEST)
							M.loc = locate(usr.x-5,usr.y,usr.z)
						if(usr.dir==EAST)
							M.loc = locate(usr.x+5,usr.y,usr.z)
						var/damage = round(usr.tai/3,usr.tai/2.6) - M.Resistencia
						if(damage<=0)damage=0
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						M.Death(usr)
						usr << "Você usou seu Shinra Toneri para repelir seu adversario e lhe causou [damage] de dano"
						M << "Você foi repelido pelo jutsu de [src.name] e recebeu [damage] de dano"
						usr.Kaiten =1
						sleep(50)
						usr.overlays -= 'shinra.dmi'
						usr.overlays -= 'shinra2.dmi'
						src.overlays -=asa3
						usr.Kaiten =0
						usr.froze=0
						usr.move=1
						usr.cast=0
				sleep(50)
				usr.overlays -= 'shinra.dmi'
				usr.overlays -= 'shinra2.dmi'
				src.overlays -=asa3
				usr.Kaiten =0
				usr.froze=0
				usr.move=1
				usr.cast=0


obj/shinra2
	icon = 'shinra2.dmi'
	TL1
		icon_state = "TL1"
		pixel_x = -32
		pixel_y = 32
		density = 1
	TL2
		icon_state = "TL2"
		pixel_y = 32
		density = 1
	TL3
		icon_state = "TL3"
		pixel_y = 32
		pixel_x = 32
		density = 1
	TL4
		icon_state = "TL4"
		pixel_y = 32
		pixel_x = 64
		density = 1
	BL1
		icon_state = "BL1"
		pixel_x = -32
		density = 1
	BL2
		icon_state = "BL2"
		density = 1
	BL3
		icon_state = "BL3"
		pixel_x = 32
		density = 1
	BL4
		icon_state = "BL4"
		pixel_x = 64
		density = 1
	BL5
		icon_state = "BL5"
		pixel_x = -32
		pixel_y = -32
		density = 1
	BL6
		icon_state = "BL6"
		pixel_y = -32
		density = 1
	BL7
		icon_state = "BL7"
		pixel_x = 32
		pixel_y = -32
		density = 1
	BL8
		icon_state = "BL8"
		pixel_x = 64
		pixel_y = -32
		density = 1
	ML1
		icon_state = "ML1"
		pixel_x = -32
		pixel_y = -64
		density = 1
	ML2
		icon_state = "ML2"
		pixel_y = -64
		density = 1
	ML3
		icon_state = "ML3"
		pixel_x = 32
		pixel_y = -64
		density = 1
	ML4
		icon_state = "ML4"
		pixel_x = 64
		pixel_y = -64
		density = 1
	held
		New()
			overlays += new /obj/shinra2/TL1
			overlays += new /obj/shinra2/TL2
			overlays += new /obj/shinra2/TL3
			overlays += new /obj/shinra2/TL4
			overlays += new /obj/shinra2/BL1
			overlays += new /obj/shinra2/BL2
			overlays += new /obj/shinra2/BL3
			overlays += new /obj/shinra2/BL4
			overlays += new /obj/shinra2/BL5
			overlays += new /obj/shinra2/BL6
			overlays += new /obj/shinra2/BL7
			overlays += new /obj/shinra2/BL8
			overlays += new /obj/shinra2/ML1
			overlays += new /obj/shinra2/ML2
			overlays += new /obj/shinra2/ML3
			overlays += new /obj/shinra2/ML4

mob/var/tmp/cdbanshout=0
mob/Toneri
	verb
		Banshou2()
			set name = "Banshou Teitai"
			set category = "Doujutsu"
			if(!usr.tenseiganon)
				usr<<"Ative o Tenseigan primeiro!"
				return
			if(usr.cdbanshout)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Banshou Teitai</b>!"
				return
			if(usr.Frozen)
				usr<<"Você está paralizado!"
				return
			if(usr.cast)
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			else
				for(var/mob/M in orange(4,usr))
					if(M != src)
						if(M.party&&M.partysensei==usr.partysensei)return
						if(M.fantasma)
							usr<<"Ele é inalcançável!"
							return
						if(M.Kaiten)
							return
						if(M.hyoushou)
							return
						if(usr.cdbanshout)return
						usr.cdbanshout=1
						spawn()usr.Cooldown(130,"Banshou Teitai")
						usr.RandomChakra1()
						if(usr.chakra<=0)
							usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
							usr.health=0
							usr.chakra=0
							usr.Death(usr)
							return
						usr.cast=1
						usr.overlays+='shinra.dmi'
						view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#808080>B</FONT><FONT COLOR=#929292>a</FONT><FONT COLOR=#a5a5a5>n</FONT><FONT COLOR=#b7b7b7>s</FONT><FONT COLOR=#c9c9c9>h</FONT><FONT COLOR=#dbdbdb>o</FONT><FONT COLOR=#eeeeee>u</FONT><FONT COLOR=#ffffff> </FONT><FONT COLOR=#eeeeee>T</FONT><FONT COLOR=#dbdbdb>e</FONT><FONT COLOR=#c9c9c9>i</FONT><FONT COLOR=#b7b7b7>n</FONT><FONT COLOR=#a5a5a5>i</FONT><FONT COLOR=#929292>n</FONT><FONT COLOR=#808080>!</FONT>"
						M.loc = locate(usr.x,usr.y-1,usr.z)
						src.dir = SOUTH
						var/damage = round(usr.tai/3.5,usr.tai/3.75) - M.Resistencia/2.25
						if(damage<=0)damage=0
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						M.Death(usr)
						usr << "Você usou seu Banshou Teitai para trazer seu adversario para perto e lhe causou [damage] de dano"
						M << "Você foi trazido para perto pelo jutsu de [src.name] e recebeu [damage] de dano"
						spawn()usr.overlays-='shinra.dmi'
						spawn()usr.cast=0

obj
	kt
		icon = 'KinboToneri.dmi'
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
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/obj/Crater_Center/B = new /obj/Crater_Center
				B.loc = M.loc
				var/damage = O.tai/4 - M.Resistencia/2
				if(damage<=0)damage=0
				if(damage >= 1)
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					view(M) << "[M] foi acertado pelo Kinbu Toneri Baku de [O]  recebendo [damage] de dano!!"
					M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

mob/var/tmp/cdktb = 0
mob/Toneri
	verb
		KBT()
			set category = "Doujutsu"
			set name = "Kinbo Toneri Baku"
			if(!usr.tenseiganon)
				usr<<"Ative o Tenseigan primeiro!"
				return
			if(usr.cdktb)
				usr << "<b> Cooldown: Aguarde Para usar o Kinbo Toneri Baku novamente"
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
			else
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				for(var/mob/M in orange(4))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(M.PK==0)
						usr<<"[M] está NONPK!"
						return
					usr.cdktb = 1
					spawn()usr.Cooldown(150,"Kinbo Toneri Baku")
					view(5)<<"<b>[usr] diz: <font color = blue> Kinbo Toneri Baku"
					usr.chakra -= 10000
					var/obj/kt/KTB = new /obj/kt
					usr.target=M
					KTB.loc = usr.loc
					KTB.tai=usr.tai
					KTB.name="[usr]"
					KTB.Move_Delay=2
					KTB.Gowner=usr
					walk_towards(KTB,M)
					M.move=0
					M.froze=1
					sleep(35)
					M.move=1
					M.froze=0