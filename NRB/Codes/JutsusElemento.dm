mob/var
	CarHeremita=0
	DesHeremita=0
	AkatView=0
	caugyt=0
	caugyts=0
	tmp/trainando=0

mob/var
	ak1=0
	ak2=0
	ak3=0
	ak4=0
	ak5=0
	ak6=0
	ak7=0
	ak8=0
	ak9=0
	ak10=0





mob/anbu
	verb
		Teleport(mob/M in world)
			set popup_menu = 0
			set category = "Anbu"
			set desc = "Teleport mob"
			if(M.inlua&&!usr.inlua||usr.inlua&&!M.inlua)
				usr<<"Ele está muito além do seu alcance!"
				return
			if(usr.climbing)
				usr<<"Não enquanto upa HP!"
				return
			M << "GM Teleporta próximo à você"
			usr << "Você Teleporta próximo de [M]"
			usr.loc = locate(M.x,M.y-1,M.z)






obj
	akatMokushi
		icon = 'mokushi.png'
		density = 1






mob/Deidara
	verb
		summonclaybird()
			set category = "Jutsus"
			set name = "Deidara Fly Bird"
			if(usr.PK==0)
				usr<<"Área NON-PK!!!"
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
			if(usr.Flight == 1)
				usr.density = 1
				//usr.overlays -= 'flydeidara.dmi'
				usr.overlays -= 'cloud.dmi'
				usr.Flight = 0
			else
				//usr.overlays+= 'flydeidara.dmi'
				usr.overlays += 'cloud.dmi'
				usr.density = 0
				usr.Flight = 1

mob/deidara
	verb
		Ararg() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Aranha explosiva"
			if(usr.cast||usr.Kaiten == 1) // If the mob's cast var is one...
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
			if(usr.chakra <= 300)
				usr<<"Você não possui chakra suficiente!"
				return
			else // If the cast var isn't 1...
				if(usr.Rai1N >= 25)
					usr.chakra -= 300
					usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam // Disables the mob's movement
					usr.Rai1N += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Katsu!"
					var/obj/Ararg/K = new /obj/Ararg
					K.loc = usr.loc
					K.nin=usr.nin
					K.dir = usr.dir
					K.Move_Delay=2
					K.name="[usr]"
					K.Gowner=usr
					usr.Chakragain()
					walk(K,usr.dir)
					if (target == null)
						del(K)
					if(usr.Mnin <= usr.cap)
						usr.random = rand(1,6)
						if(random == 5||random==1)
							usr.ninexp += rand(1,10)
							usr.ninup()

							var/ccrandom=rand(1,15)
							if(ccrandom==4||ccrandom==10)
								var/ccgain=rand(1,3)
								if(usr.ChakraC>=100)
									usr.ChakraC=100
									return
								else
									usr.ChakraC+=ccgain
									usr<<"[usr], você ganhou [ccgain] de controle de chakra"
					else
						usr.random = rand(1,20)
						if(random == 5||random==1)
							var/ccrandom=rand(1,15)
							if(ccrandom==4||ccrandom==10)
								var/ccgain=rand(1,3)
								if(usr.ChakraC>=100)
									usr.ChakraC=100
									return
								else
									usr.ChakraC+=ccgain
									usr<<"[usr], você ganhou [ccgain] de controle de chakra"
					sleep(10)
					usr.cast = 0
					sleep(45)
					del(K)
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.chakra -= 300
						usr.Rai1N += 1
						usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam // Disables the mob's movement
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Kaboom!"
						var/obj/Ararg/K = new /obj/Ararg
						K.loc = usr.loc
						K.nin=usr.nin
						K.dir = usr.dir
						K.name="[usr]"
						usr.Chakragain()
						K.Move_Delay=2
						K.Gowner=usr
						walk(K,usr.dir)
						if (target == null)
							del(K)
						if(usr.Mnin <= usr.cap)
							usr.random = rand(1,6)
							if(random == 5||random==1)
								usr.ninexp += rand(1,10)
								usr.ninup()

								var/ccrandom=rand(1,15)
								if(ccrandom==4||ccrandom==10)
									var/ccgain=rand(1,3)
									if(usr.ChakraC>=100)
										usr.ChakraC=100
										return
									else
										usr.ChakraC+=ccgain
										usr<<"[usr], você ganhou [ccgain] de controle de chakra"
						else
							usr.random = rand(1,20)
							if(random == 5||random==1)
								var/ccrandom=rand(1,15)
								if(ccrandom==4||ccrandom==10)
									var/ccgain=rand(1,3)
									if(usr.ChakraC>=100)
										usr.ChakraC=100
										return
									else
										usr.ChakraC+=ccgain
										usr<<"[usr], você ganhou [ccgain] de controle de chakra"
						sleep(10)
						usr.cast = 0
						sleep(45)
						del(K)

mob/deidara
	verb
		Passarg(mob/m in oview(usr)) // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Passaro explosivo"
			usr.Handseals()
			if(usr.cast||usr.Kaiten == 1) // If the mob's cast var is one...
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
			if(m.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.chakra <= 30000 )
				usr<<"Você não possui chakra suficiente!"
				return
			if(!usr.handseals)

				return
			else // If the cast var isn't 1...
				if(usr.Rai2N >= 52)
					usr.chakra -= 30000
					usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam
					usr.move = 0 // Disables the mob's movement
					usr.Rai2N += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Passaro explosivo!"
					var/obj/Passarg/R = new /obj/Passarg
					usr.target=m
					R.loc = usr.loc
					R.nin=usr.nin
					R.name="[usr]"
					usr.Chakragain()
					R.Gowner=usr
					walk_towards(R,m)
					sleep(1)
					usr.move = 1
					sleep(8)
					usr.cast = 0
					sleep(21)
					del(R)
					if (target == null)
						del(R)
					if(usr.Mnin <= usr.cap)
						usr.random = rand(1,6)
						if(random == 5||random==1)
							usr.ninexp += rand(1,10)
							usr.ninup()

							var/ccrandom=rand(1,15)
							if(ccrandom==4||ccrandom==10)
								var/ccgain=rand(1,3)
								if(usr.ChakraC>=100)
									usr.ChakraC=100
									return
								else
									usr.ChakraC+=ccgain
									usr<<"[usr], você ganhou [ccgain] de controle de chakra"
						else
							return
					else
						usr.random = rand(1,20)
						if(random == 5||random==1)
							var/ccrandom=rand(1,15)
							if(ccrandom==4||ccrandom==10)
								var/ccgain=rand(1,3)
								if(usr.ChakraC>=100)
									usr.ChakraC=100
									return
								else
									usr.ChakraC+=ccgain
									usr<<"[usr], você ganhou [ccgain] de controle de chakra"
						else
							return
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.chakra -= 30000
						usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam
						usr.move = 0 // Disables the mob's movement
						usr.Rai2N += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: A explosao é uma arte!"
						var/obj/Passarg/R = new /obj/Passarg
						usr.target=m
						R.loc = usr.loc
						R.nin=usr.nin
						R.name="[usr]"
						usr.Chakragain()
						R.Gowner=usr
						walk_towards(R,m)
						sleep(1)
						usr.move = 1
						sleep(8)
						usr.cast = 0
						sleep(21)
						del(R)
						if (target == null)
							del(R)
						if(usr.Mnin <= usr.cap)
							usr.random = rand(1,6)
							if(random == 5||random==1)
								usr.ninexp += rand(1,10)
								usr.ninup()

								var/ccrandom=rand(1,15)
								if(ccrandom==4||ccrandom==10)
									var/ccgain=rand(1,3)
									if(usr.ChakraC>=100)
										usr.ChakraC=100
										return
									else
										usr.ChakraC+=ccgain
										usr<<"[usr], você ganhou [ccgain] de controle de chakra"
							else
								return
						else
							usr.random = rand(1,20)
							if(random == 5||random==1)
								var/ccrandom=rand(1,15)
								if(ccrandom==4||ccrandom==10)
									var/ccgain=rand(1,3)
									if(usr.ChakraC>=100)
										usr.ChakraC=100
										return
									else
										usr.ChakraC+=ccgain
										usr<<"[usr], você ganhou [ccgain] de controle de chakra"
							else
								return

obj/var/tmp/C3=0
obj
	c31
		icon='c3.dmi'
		icon_state= ""
		layer = MOB_LAYER+1




mob/deidara
	verb
		Destroyclayspyder()
			set category = "Jutsus"
			set name = "Destroir Explosivos"
			for(var/mob/M in world)
				if(M.havekibaku)
					M.havekibaku=0
					M<<"Algumas aranhas de argila caem de você"
					usr<<"Algumas aranhas de argila caem dos ombros de [M]"

mob/var/tmp/kibakuperson
mob/var/tmp/beeperson
mob/proc/placekibaku()
	if(!src.havekibaku)
		return
	else
		src.chakra -= 1000
		if(src.chakra<=0)
			src.chakra = 0
		sleep(10)
		src.placekibaku()
mob/var/tmp/kibakudelay=0










obj
	Ararg
		icon = 'aranha deidara.dmi'
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.PK==0)
					return
				if(M.density==0)
					M.density = 1

				var/damage = round(src.nin/4) - M.Resistencia
				if(damage<=0)damage=0
				if(damage <= 0) damage=0
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				view(M) << "[M] foi acertado pela aranha explosiva recebendo [damage] de dano!!"
				var/mob/O = src.Gowner
				M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	Passarg
		icon = 'deidarajutsus.dmi'
		icon_state = "passaro"
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.PK==0)
					return
				if(M.density==0)
					M.density = 1

				var/damage = round(src.nin/4) - M.Resistencia
				if(damage<=0)damage=0
				if(damage <= 0) damage=0
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				view(M) << "[M] foi acertado pelo Pássaro explosivo levando [damage] de dano!!"
				var/mob/O = src.Gowner
				M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

mob/var/karura=0

obj
	Rarea
		icon='explosao.dmi'
		icon_state= ""
		layer = MOB_LAYER+1




obj
	bunshins
		CloneArgila//being worked on dont use
		mob/deidara
			verb
				CloneArgila()
					set name = "Clone de Argila"
					set desc = "Create a clone that can attack"
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
					if(usr.chakra <= 15)
						usr << "Você não tem chakra o bastante!"
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
					if(usr.kibaku <= 2)
						usr<<"Você não tem mais argila para moldar!"
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
						if(usr.KbunshinN >= 50)
							usr.cast = 1
							usr.KillBunshin()
							view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Clone de Argila! </FONT>"
							var/mob/enemy/ArgBunshin/K = new /mob/enemy/ArgBunshin
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
								flick("smoke2",K)
								K.max_exp = 2
								K.exp = 2
								K.tai = usr.nin/5 + usr.gen/5 + usr.shurikenskill/5 + usr.tai/5 + usr.terraN/1.5
								K.health = usr.maxhealth/2
							sleep(14)
							usr.cast=0
							usr.chakra -= 15
							usr.kibaku -= 2
						else
							usr.random = rand (1,4)
							if(usr.random == 1||usr.random == 4)
								view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Clone de Argila! </FONT>"
								usr.cast = 1
								usr.KillBunshin()
								var/mob/enemy/ArgBunshin/K = new /mob/enemy/ArgBunshin
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
									flick("smoke2",K)
									K.max_exp = 2
									K.exp = 2
									K.tai = usr.nin/5 + usr.gen/5 + usr.shurikenskill/5 + usr.tai/5 + usr.terraN/1.5
									K.health = usr.maxhealth/2
								sleep(14)
								usr.cast=0
								usr.chakra -= 15
								usr.kibaku -= 2

mob
	proc
		ninup()
			src<<"."
		taiup()
			src<<"."
		genup()
			src<<"."
mob/deidara
	verb
		ExplodirClones()
			set category = "Jutsus"
			set name="Explodir Clones de Argila"
			usr.Handseals()
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
			if(!usr.handseals)
				return
			if(usr.bakuretsuuse)
				return
			for(var/mob/npcs/KBunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"Os clones de argila de [usr] explodem!"
					for(var/mob/M in oview(4,B))
						var/damage=usr.nin/6 + usr.tai/6 + usr.gen/6 + usr.shurikenskill/6 +usr.terraN/1.5 - M.Resistencia/2
						if(damage<=0)damage=0
						M<<"Você levou [damage] de dano!"
						del(B)
						usr<<"Você deu [damage] de dano à [M]!"
						M.health-=damage
						F_damage(M, damage, "#ff0000")
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
					return




mob/itachi
	verb
		Genjdedo(mob/M in oview()) // Verb used for cast the beam
			set category = "Doujutsu"
			set name = "Genjutsu do Dedo"
			if(usr.cast)
				return
			if(usr.resting)
				usr<<"Não enquanto descansa!"
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
			if(usr.meditating)
				usr<<"Não enquanto medita!"
				return
			else
				usr << "Você ativou seu genjutsu contra tudo que está em volta..."
				usr.froze = 1
				usr.move = 0
				var/mob/GenjutsuBunshin/G = new /mob/GenjutsuBunshin/
				G.icon = usr.icon
				G.overlays = usr.overlays
				G.name = usr.name
				G.owner = usr
				G.gen = usr.gen/4.25 + usr.shurikenskill/4.25 + usr.tai/4.25 + usr.nin/4.25
				G.dir = usr.dir
				G.loc = usr.loc
				client.perspective = EYE_PERSPECTIVE
				client.eye = G.loc
				usr.loc = locate(0,0,0)
				spawn(100)
					if(G)
						if(!G.activated)
							usr << "Fim do seu Genjutsu!"
							usr.loc = G.loc
							client.perspective = MOB_PERSPECTIVE
							client.eye = client.mob
							spawn()usr.Cegar()
							usr.froze = 0
							usr.move = 1
							usr.Kaik()
							del(G)

mob/GenjutsuBunshin
	health = 1000
	var/activated = 0
	proc
		GenjutsuAct(mob/M)
			src.activated = 1
			M << "Essa não! Você caiu num genjutsu!!!"
			M.froze = 1
			M.move = 0
			var/mob/corvo/P1 = new /mob/corvo/
			var/mob/corvo/P2 = new /mob/corvo/
			var/mob/corvo/P3 = new /mob/corvo/
			var/mob/corvo/P4 = new /mob/corvo/
			var/mob/corvo/P5 = new /mob/corvo/
			var/mob/corvo/P6 = new /mob/corvo/
			var/mob/corvo/P7 = new /mob/corvo/
			var/mob/corvo/P8 = new /mob/corvo/
			P1.loc = src.loc
			P2.loc = src.loc
			P3.loc = src.loc
			P4.loc = src.loc
			P5.loc = src.loc
			P6.loc = src.loc
			P7.loc = src.loc
			P8.loc = src.loc
			src.icon = 'invis.dmi'
			src.overlays = null
			walk(P1,EAST)
			walk(P2,WEST)
			walk(P3,NORTH)
			walk(P4,SOUTH)
			walk(P5,SOUTHEAST)
			walk(P6,SOUTHWEST)
			walk(P7,NORTHEAST)
			walk(P8,NORTHWEST)
			sleep(20)
			var/obj/Shuriken/S1 = new /obj/Shuriken/
			var/obj/Shuriken/S2 = new /obj/Shuriken/
			var/obj/Shuriken/S3 = new /obj/Shuriken/
			var/obj/Shuriken/S4 = new /obj/Shuriken/
			var/obj/Shuriken/S5 = new /obj/Shuriken/
			var/obj/Shuriken/S6 = new /obj/Shuriken/
			var/obj/Shuriken/S7 = new /obj/Shuriken/
			var/obj/Shuriken/S8 = new /obj/Shuriken/
			S1.loc = P1.loc
			S1.Gowner = src.owner
			S2.loc = P2.loc
			S2.Gowner = src.owner
			S3.loc = P3.loc
			S3.Gowner = src.owner
			S4.loc = P4.loc
			S4.Gowner = src.owner
			S5.loc = P5.loc
			S5.Gowner = src.owner
			S6.loc = P6.loc
			S6.Gowner = src.owner
			S7.loc = P7.loc
			S7.Gowner = src.owner
			S8.loc = P8.loc
			S8.Gowner = src.owner
			S1.tai = src.gen/4.25 + src.shurikenskill/4.25 + src.tai/4.25 + src.nin/4.25
			S2.tai = src.gen/4.25 + src.shurikenskill/4.25 + src.tai/4.25 + src.nin/4.25
			S3.tai = src.gen/4.25 + src.shurikenskill/4.25 + src.tai/4.25 + src.nin/4.25
			S4.tai = src.gen/4.25 + src.shurikenskill/4.25 + src.tai/4.25 + src.nin/4.25
			S5.tai = src.gen/4.25 + src.shurikenskill/4.25 + src.tai/4.25 + src.nin/4.25
			S6.tai = src.gen/4.25 + src.shurikenskill/4.25 + src.tai/4.25 + src.nin/4.25
			S7.tai = src.gen/4.25 + src.shurikenskill/4.25 + src.tai/4.25 + src.nin/4.25
			S8.tai = src.gen/4.25 + src.shurikenskill/4.25 + src.tai/4.25 + src.nin/4.25
			del(P1)
			del(P2)
			del(P3)
			del(P4)
			del(P5)
			del(P6)
			del(P7)
			del(P8)
			sleep(5)
			walk_towards(S1,M)
			walk_towards(S2,M)
			walk_towards(S3,M)
			walk_towards(S4,M)
			walk_towards(S5,M)
			walk_towards(S6,M)
			walk_towards(S7,M)
			walk_towards(S8,M)
			M.froze = 0
			M.Frozen = 0
			sleep(30)
			view(src) << "Fim do Genjutsu!"
			usr.froze=0
			usr.move=1
			usr.Kaik()
			var/mob/O = src.owner
			O.loc = src.loc
			del(src)

mob/corvo
	name= "Corvo"
	icon = 'ave.dmi'
	density = 0


obj
	bunshins
		GenjutsuBunshin//being worked on dont use
		mob/itachi
			verb
				GenjutsuBunshin()
					set name = "Bunshin de Genjutsu"
					set desc = "Clone de Genjutsu!"
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
					if(usr.chakra <= 15)
						usr << "Você não tem chakra o bastante!"
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
					if(usr.kibaku <= 2)
						usr<<"Você não tem mais argila para moldar!"
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
						if(usr.KbunshinN >= 50)
							usr.cast = 1
							usr.KillBunshin()
							view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Bunshin de Genjutsu! </FONT>"
							var/mob/npcs/Bunshin/K = new /mob/npcs/KBunshin
							usr.KbunshinN += 1
							usr.bunshin += 4
							if(K)
								K.name = "[usr.name]"
								K.guardp = 1
								K.Village= "[usr.Village]"
								K.original = usr
								K.icon = usr.icon
								K.overlays += usr.overlays
								K.loc = locate(usr.x, usr.y-1, usr.z)
								flick("smoke2",K)
								K.max_exp = 2
								K.exp = 2
								K.tai = usr.gen/5.5 + usr.shurikenskill/5.5 + usr.tai/5.5 + usr.nin/5.5
								K.health = usr.maxhealth/3
							sleep(14)
							usr.cast=0
							usr.chakra -= 15
							usr.kibaku -= 2
						else
							usr.random = rand (1,4)
							if(usr.random == 1||usr.random == 4)
								view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Bunshin de Genjutsu! </FONT>"
								usr.cast = 1
								usr.KillBunshin()
								var/mob/npcs/Bunshin/K = new /mob/npcs/KBunshin
								usr.KbunshinN += 1
								usr.bunshin += 2
								sleep(5)
								if(K)
									K.name = "[usr.name]"
									K.guardp = 1
									K.Village= "[usr.Village]"
									K.original = usr
									K.icon = usr.icon
									K.overlays += usr.overlays
									K.loc = locate(usr.x, usr.y-1, usr.z)
									flick("smoke2",K)
									K.max_exp = 2
									K.exp = 2
									K.tai = usr.gen/5.5 + usr.shurikenskill/5.5 + usr.tai/5.5 + usr.nin/5.5
									K.health = usr.maxhealth/3
								sleep(14)
								usr.cast=0
								usr.chakra -= 15
								usr.kibaku -= 2


mob/itachi
	verb
		ExplodirBunshin()
			set category = "Jutsus"
			set name="Explodir Bunshin de Genjutsu"
			usr.Handseals()
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
			if(!usr.handseals)
				return
			if(usr.bakuretsuuse)
				return
			for(var/mob/npcs/KBunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"Os bunshins de [usr] explodem!"
					for(var/mob/M in oview(4,B))
						var/damage=usr.gen/5 + usr.shurikenskill/5 + usr.tai/5 + usr.nin/5 - M.Resistencia/2
						if(damage<=0)damage=0
						M<<"Você levou [damage] de dano!"
						del(B)
						usr<<"Você deu [damage] de dano à [M]!"
						M.health-=damage
						F_damage(M, damage, "#ff0000")
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
					return
mob
	proc
		Kaik()
			usr.move=1
			usr.froze=0
			usr.client.eye=usr
			//usr.client.view=8
mob/var/atmosphere = 0




obj
	vortex
		icon='kirin2.dmi'
		icon_state= ""
		layer = MOB_LAYER+1


obj
	kirin
		icon='elec.dmi'
		icon_state= ""
		layer = MOB_LAYER+1


mob/itachiXXX
	verb
		Kirin()
			set category = "Jutsus"
			set name = "Kirin"
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
			if(usr.chakra <= 30000)
				usr<<"Você não possui chakra suficiente!"
				return
			if(usr.atmosphere==0)
				usr<<"Você precisa ter usado o Katon: Goryuuka antes!"
				return
			else // If the cast var isn't 1...
				usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam
				view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: KIRIN! "
				var/obj/vortex/K = new /obj/vortex/
				var/obj/kirin/F = new /obj/kirin/
				var/obj/kirin/G = new /obj/kirin/
				var/obj/kirin/H = new /obj/kirin/
				var/obj/kirin/I = new /obj/kirin/
				var/obj/kirin/J = new /obj/kirin/
				var/obj/kirin/L = new /obj/kirin/
				var/obj/kirin/A = new /obj/kirin/
				var/obj/kirin/B = new /obj/kirin/
				var/obj/kirin/M2 = new /obj/kirin/
				var/obj/kirin/N = new /obj/kirin/
				var/obj/kirin/O = new /obj/kirin/
				var/obj/kirin/P = new /obj/kirin/
				var/obj/kirin/D = new /obj/kirin/
				var/obj/kirin/E = new /obj/kirin/
				var/obj/kirin/C = new /obj/kirin/
				var/obj/kirin/Q = new /obj/kirin/
				var/obj/kirin/R = new /obj/kirin/
				var/obj/kirin/S = new /obj/kirin/
				var/obj/kirin/T = new /obj/kirin/
				var/obj/kirin/W = new /obj/kirin/
				var/obj/kirin/X = new /obj/kirin/
				var/obj/kirin/Y = new /obj/kirin/
				var/obj/kirin/Z = new /obj/kirin/
				var/obj/kirin/AB = new /obj/kirin/
				var/obj/kirin/AC = new /obj/kirin/
				var/obj/kirin/AD = new /obj/kirin/
				var/obj/kirin/AE = new /obj/kirin/
				var/obj/kirin/AF = new /obj/kirin/
				var/obj/kirin/AG = new /obj/kirin/
				var/obj/kirin/AH = new /obj/kirin/
				var/obj/kirin/AI = new /obj/kirin/
				var/obj/kirin/AJ = new /obj/kirin/
				var/obj/kirin/AK = new /obj/kirin/
				var/obj/kirin/AL = new /obj/kirin/
				var/obj/kirin/AM = new /obj/kirin/
				var/obj/kirin/AN = new /obj/kirin/
				var/obj/kirin/AO = new /obj/kirin/
				var/obj/kirin/AP = new /obj/kirin/
				var/obj/kirin/AQ = new /obj/kirin/
				var/obj/kirin/AR = new /obj/kirin/
				var/obj/kirin/AS = new /obj/kirin/
				var/obj/kirin/AT = new /obj/kirin/
				var/obj/kirin/AU = new /obj/kirin/
				var/obj/kirin/AV = new /obj/kirin/
				var/obj/kirin/AW = new /obj/kirin/
				var/obj/kirin/AX= new /obj/kirin/
				var/obj/kirin/AY = new /obj/kirin/
				var/obj/kirin/AZ = new /obj/kirin/
				usr.chakra-=30000
				K.owner=usr
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
				A.nin=usr.nin
				B.nin=usr.nin
				C.nin=usr.nin
				D.nin=usr.nin
				E.nin=usr.nin
				F.nin=usr.nin
				G.nin=usr.nin
				H.nin=usr.nin
				I.nin=usr.nin
				J.nin=usr.nin
				K.nin=usr.nin
				L.nin=usr.nin
				M2.nin=usr.nin
				N.nin=usr.nin
				O.nin=usr.nin
				P.nin=usr.nin
				Q.nin=usr.nin
				R.nin=usr.nin
				S.nin=usr.nin
				T.nin=usr.nin
				W.nin=usr.nin
				X.nin=usr.nin
				Y.nin=usr.nin
				Z.nin=usr.nin
				AB.nin=usr.nin
				AC.nin=usr.nin
				AD.nin=usr.nin
				AE.nin=usr.nin
				AF.nin=usr.nin
				AG.nin=usr.nin
				AH.nin=usr.nin
				AI.nin=usr.nin
				AJ.nin=usr.nin
				AK.nin=usr.nin
				AL.nin=usr.nin
				AM.nin=usr.nin
				AN.nin=usr.nin
				AO.nin=usr.nin
				AP.nin=usr.nin
				AQ.nin=usr.nin
				AR.nin=usr.nin
				AS.nin=usr.nin
				AV.nin=usr.nin
				AW.nin=usr.nin
				AX.nin=usr.nin
				AY.nin=usr.nin
				AZ.nin=usr.nin
				AU.nin=usr.nin
				AV.nin=usr.nin
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
				flick("rise",K)
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
				for(var/mob/M in oview(10))
					var/damage=round(usr.nin/3.5 + usr.tai/3.5 + usr.gen/3.5 + usr.shurikenskill/3.5 + usr.trovaoN) - M.Resistencia/2
					if(damage<=0)damage=0
					view()<<"[usr] invoca um trovão dos céus tirando [damage] de dano em [M]!"
					if(M.fantasma)
						usr<<"<font size=1>Vc não consegue tocá-lo!"
						return
					M.health-=damage
					F_damage(M, damage, "#ff0000")
					if(M.health<=0)
						M.Death(usr)
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
				del(K)
				sleep(10)
				usr.atmosphere = 0
				usr.cast=0


mob/tsuchi
	verb
		DorokuGaeshi()
			set category = "Jutsus"
			set name = "Doton Doroku Gaeshi"
			if(usr.cdddg)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Doton Doroku Gaeshi</b>!"
				return
			if(usr.cast) // If the mob's cast var is one...
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
			if(usr.chakra <= 500)
				usr<<"Você não tem chakra suficiente!!"
				return
			else // If the cast var isn't 1...
				usr.cdddg=1
				spawn()usr.Cooldown(100,"Doton Doroku Gaeshi")
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#bc8f8f>D</FONT><FONT COLOR=#c39893>o</FONT><FONT COLOR=#caa097>t</FONT><FONT COLOR=#d0a99b>o</FONT><FONT COLOR=#d7b19f>n</FONT><FONT COLOR=#debaa3> </FONT><FONT COLOR=#e5c3a6>D</FONT><FONT COLOR=#eccbaa>o</FONT><FONT COLOR=#f2d4ae>r</FONT><FONT COLOR=#f9dcb2>o</FONT><FONT COLOR=#ffe4b5>k</FONT><FONT COLOR=#faddb2>u</FONT><FONT COLOR=#f4d5af> </FONT><FONT COLOR=#edceab>G</FONT><FONT COLOR=#e7c6a8>a</FONT><FONT COLOR=#e1bea4>e</FONT><FONT COLOR=#dbb6a1>s</FONT><FONT COLOR=#d5ae9d>h</FONT><FONT COLOR=#cfa69a>i</FONT><FONT COLOR=#c89f96>!</FONT><FONT COLOR=#c29793>!</FONT><FONT COLOR=#bc8f8f>!</FONT>"
				if(usr.dir==SOUTH)
					var/obj/stonewallH/base/S = new /obj/stonewallH/base/
					S.loc = locate(usr.x+2,usr.y-1,usr.z)
					S.Gowner = usr
					var/obj/stonewallH/h3/H3 = new/obj/stonewallH/h3/
					H3.loc = locate(S.x-1,S.y,S.z)
					H3.Gowner = usr
					var/obj/stonewallH/h5/H5 = new/obj/stonewallH/h5/
					H5.loc = locate(S.x-2,S.y,S.z)
					H5.Gowner = usr
					var/obj/stonewallH/h7/H7 = new/obj/stonewallH/h7/
					H7.loc = locate(S.x-3,S.y,S.z)
					H7.Gowner = usr
					var/obj/stonewallH/h9/H9 = new/obj/stonewallH/h9/
					H9.loc = locate(S.x-4,S.y,S.z)
					H9.Gowner = usr
					var/obj/stonewallH/h11/H11 = new/obj/stonewallH/h11/
					H11.loc = locate(S.x-5,S.y,S.z)
					H11.Gowner = usr
					H11.overlays += /obj/stonewallH/h12/
				if(usr.dir==NORTH)
					var/obj/stonewallH/base/S = new /obj/stonewallH/base/
					S.loc = locate(usr.x+2,usr.y+1,usr.z)
					S.Gowner = usr
					var/obj/stonewallH/h3/H3 = new/obj/stonewallH/h3/
					H3.loc = locate(S.x-1,S.y,S.z)
					H3.Gowner = usr
					var/obj/stonewallH/h5/H5 = new/obj/stonewallH/h5/
					H5.loc = locate(S.x-2,S.y,S.z)
					H5.Gowner = usr
					var/obj/stonewallH/h7/H7 = new/obj/stonewallH/h7/
					H7.loc = locate(S.x-3,S.y,S.z)
					H7.Gowner = usr
					var/obj/stonewallH/h9/H9 = new/obj/stonewallH/h9/
					H9.loc = locate(S.x-4,S.y,S.z)
					H9.Gowner = usr
					var/obj/stonewallH/h11/H11 = new/obj/stonewallH/h11/
					H11.loc = locate(S.x-5,S.y,S.z)
					H11.Gowner = usr
					H11.overlays += /obj/stonewallH/h12/
				if(usr.dir==EAST)
					var/obj/stonewallV/base/S = new /obj/stonewallV/base/
					S.loc = locate(usr.x+1,usr.y-3,usr.z)
					S.Gowner = usr
					var/obj/stonewallV/v3/H3 = new/obj/stonewallV/v3/
					H3.loc = locate(S.x,S.y+1,S.z)
					H3.Gowner = usr
					var/obj/stonewallV/v5/H5 = new/obj/stonewallV/v5/
					H5.loc = locate(S.x,S.y+2,S.z)
					H5.Gowner = usr
					var/obj/stonewallV/v7/H7 = new/obj/stonewallV/v7/
					H7.loc = locate(S.x,S.y+3,S.z)
					H7.Gowner = usr
					var/obj/stonewallV/v9/H9 = new/obj/stonewallV/v9/
					H9.loc = locate(S.x,S.y+4,S.z)
					H9.Gowner = usr
					var/obj/stonewallV/v11/H11 = new/obj/stonewallV/v11/
					H11.loc = locate(S.x,S.y+5,S.z)
					H11.Gowner = usr
					H11.overlays += /obj/stonewallV/v12/
				if(usr.dir==WEST)
					var/obj/stonewallV/base/S = new /obj/stonewallV/base/
					S.loc = locate(usr.x-1,usr.y-3,usr.z)
					S.Gowner = usr
					var/obj/stonewallV/v3/H3 = new/obj/stonewallV/v3/
					H3.loc = locate(S.x,S.y+1,S.z)
					H3.Gowner = usr
					var/obj/stonewallV/v5/H5 = new/obj/stonewallV/v5/
					H5.loc = locate(S.x,S.y+2,S.z)
					H5.Gowner = usr
					var/obj/stonewallV/v7/H7 = new/obj/stonewallV/v7/
					H7.loc = locate(S.x,S.y+3,S.z)
					H7.Gowner = usr
					var/obj/stonewallV/v9/H9 = new/obj/stonewallV/v9/
					H9.loc = locate(S.x,S.y+4,S.z)
					H9.Gowner = usr
					var/obj/stonewallV/v11/H11 = new/obj/stonewallV/v11/
					H11.loc = locate(S.x,S.y+5,S.z)
					H11.Gowner = usr
					H11.overlays += /obj/stonewallV/v12/
				usr.chakra -= 500
				sleep(300)
				for(var/obj/stonewallH/C in world)
					if(C.Gowner == usr)
						del(C)
				for(var/obj/stonewallV/C in world)
					if(C.Gowner == usr)
						del(C)








obj
	Haku1
		icon='hakuprison.dmi'
		icon_state="1"
		density=1
		pixel_x=-32

obj
	Haku2
		icon='hakuprison.dmi'
		icon_state="2"
		density=0
		layer=1000

obj
	Haku3
		icon='hakuprison.dmi'
		icon_state="3"
		density=1
		pixel_x=32
obj
	Haku4
		icon='hakuprison.dmi'
		icon_state="4"
		density=1
		pixel_x=-32
		pixel_y=32

obj
	Haku5
		icon='hakuprison.dmi'
		icon_state="5"
		density=1
		pixel_y=32

obj
	Haku6
		icon='hakuprison.dmi'
		icon_state="6"
		density=1
		pixel_x=32
		pixel_y=32

obj
	Haku7
		icon='hakuprison.dmi'
		icon_state="7"
		density=1
		pixel_x=-32
		pixel_y=64

obj
	Haku8
		icon='hakuprison.dmi'
		icon_state="8"
		density=1
		pixel_y=64

obj
	Haku9
		icon='hakuprison.dmi'
		icon_state="9"
		density=1
		pixel_x=32
		pixel_y=64





obj
	Sasori
		Kaze//being worked on dont use
			verb/Kaze()
				set name = "Sumonar Kazekage"
				set desc = "Create a clone that can attack"
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
				if(usr.chakra <= 5000)
					usr << "Você não tem chakra o bastante!"
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
					if(usr.KbunshinN >= 50)
						usr.cast = 1
						usr.KillBunshin()
						view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Invoco o Terceiro Kazekage "
						var/mob/npcs/Bunshin/K = new /mob/npcs/TerceiroKaze
						usr.KbunshinN += 1
						usr.bunshin += 4
						if(K)
							K.name = "Terceiro Kazekage"
							K.original = usr
							K.icon = '3Kazekage.dmi'
							K.overlays += '3Kazekage.dmi'
							K.loc = locate(usr.x-1, usr.y, usr.z)
							flick("smoke2",K)
							K.max_exp = 2
							K.exp = 2
							K.tai = usr.nin/6
							K.health = usr.maxhealth/2
						sleep(14)
						usr.cast=0
						usr.verbs += new /obj/bunshins/Satetsu/verb/Satetsu()
						usr.chakra -= 5000
						sleep(900)
						usr.verbs -= new /obj/bunshins/Satetsu/verb/Satetsu()
					else
						usr.random = rand (1,4)
						if(usr.random == 1||usr.random == 4)
							view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Invoco o Terceiro Kazekage "
							usr.cast = 1
							usr.KillBunshin()
							var/mob/npcs/Bunshin/K = new /mob/npcs/TerceiroKaze
							usr.KbunshinN += 1
							usr.bunshin += 2
							sleep(5)
							if(K)
								K.name = "Terceiro Kazekage"
								K.original = usr
								K.icon = '3Kazekage.dmi'
								K.overlays += '3Kazekage.dmi'
								K.loc = locate(usr.x-1, usr.y, usr.z)
								flick("smoke2",K)
								K.max_exp = 2
								K.exp = 2
								K.tai = usr.nin/6
								K.health = usr.maxhealth/2
							sleep(14)
							usr.cast=0
							usr.verbs += new /obj/bunshins/Satetsu/verb/Satetsu()
							usr.chakra -= 5000
							sleep(900)
							usr.verbs -= new /obj/bunshins/Satetsu/verb/Satetsu()



mob
	Sanbi3
		verb
			Shield()
				set category = "Sanbi"
				set name = "Sanbi Aura Shield"
				if(usr.KASS >= 4)
					usr<<"You may only use it twice per nibi use!"
					return
				if(usr.resting)
					usr<<"Não enquanto descansa"
					return
				if(usr.meditating)
					usr<<"Não enquanto medita"
					return
				if(!usr.Kaiten&&!usr.cast)
					usr.Frozen = 1
					usr.cast = 1
					usr.def = 1
					usr.InKASS = 1
					usr.KASS += 1
					usr.KAS_ONOFF = 1
					usr.overlays+='Sanbi Aura Shield.dmi'
					usr.overlays-=/obj/CSanbi3Tails
					usr.overlays-=/obj/T1Sanbi3Tails
					usr.overlays-=/obj/BLSanbi3Tails
					usr.overlays-=/obj/BRSanbi3Tails
					usr.overlays-=/obj/TLSanbi3Tails
					usr.overlays-=/obj/TRSanbi3Tails
					usr.Kaiten =1
					sleep(50)
					if(usr.KAS_ONOFF == 1)
						usr.Frozen = 0
						usr.cast = 0
						usr.def = 0
						usr.InKASS = 0
						usr.overlays-='Sanbi Aura Shield.dmi'
						usr.overlays+=/obj/CSanbi3Tails
						usr.overlays+=/obj/T1Sanbi3Tails
						usr.overlays+=/obj/BLSanbi3Tails
						usr.overlays+=/obj/BRSanbi3Tails
						usr.overlays+=/obj/TLSanbi3Tails
						usr.overlays+=/obj/TRSanbi3Tails
						if(usr.InK3==0)
							usr.overlays-=/obj/CSanbi3Tails
							usr.overlays-=/obj/T1Sanbi3Tails
							usr.overlays-=/obj/BLSanbi3Tails
							usr.overlays-=/obj/BRSanbi3Tails
							usr.overlays-=/obj/TLSanbi3Tails
							usr.overlays-=/obj/TRSanbi3Tails
							usr.KASS = 0
						usr.Kaiten =0
						usr<<"Your Sanbi Aura Shield wears off."
						usr.KASS += 1
					else
						return
				else if(usr.Kaiten)
					usr.Frozen = 0
					usr.cast = 0
					usr.def = 0
					usr.InKASS = 0
					usr.KAS_ONOFF = 0
					usr.KASS += 1
					src.overlays-='Sanbi Aura Shield.dmi'
					if(usr.InK3==1)
						src.overlays+=/obj/CSanbi3Tails
						src.overlays+=/obj/T1Sanbi3Tails
						src.overlays+=/obj/BLSanbi3Tails
						src.overlays+=/obj/BRSanbi3Tails
						src.overlays+=/obj/TLSanbi3Tails
						src.overlays+=/obj/TRSanbi3Tails
					usr.Kaiten =0
					usr<<"You stop using your Sanbi Aura to shield yourself."


mob
	Yonbi4
		verb
			Shield()
				set category = "Yonbi"
				set name = "Yonbi Aura Shield"
				if(usr.KASS >= 4)
					usr<<"You may only use it twice per nibi use!"
					return
				if(usr.resting)
					usr<<"Não enquanto descansa"
					return
				if(usr.meditating)
					usr<<"Não enquanto medita"
					return
				if(!usr.Kaiten&&!usr.cast)
					usr.Frozen = 1
					usr.cast = 1
					usr.def = 1
					usr.InKASS = 1
					usr.KASS += 1
					usr.KAS_ONOFF = 1
					usr.overlays+='Yonbi Aura Shield.dmi'
					usr.overlays-=/obj/CYonbi4Tails
					usr.overlays-=/obj/TYonbi4Tails
					usr.overlays-=/obj/BLYonbi4Tails
					usr.overlays-=/obj/BRYonbi4Tails
					usr.overlays-=/obj/TLYonbi4Tails
					usr.overlays-=/obj/TRYonbi4Tails
					usr.Kaiten =1
					sleep(50)
					if(usr.KAS_ONOFF == 1)
						usr.Frozen = 0
						usr.cast = 0
						usr.def = 0
						usr.InKASS = 0
						usr.overlays-='Yonbi Aura Shield.dmi'
						usr.overlays+=/obj/CYonbi4Tails
						usr.overlays+=/obj/TYonbi4Tails
						usr.overlays+=/obj/BLYonbi4Tails
						usr.overlays+=/obj/BRYonbi4Tails
						usr.overlays+=/obj/TLYonbi4Tails
						usr.overlays+=/obj/TRYonbi4Tails
						if(usr.InK3==0)
							usr.overlays-=/obj/CYonbi4Tails
							usr.overlays-=/obj/TYonbi4Tails
							usr.overlays-=/obj/BLYonbi4Tails
							usr.overlays-=/obj/BRYonbi4Tails
							usr.overlays-=/obj/TLYonbi4Tails
							usr.overlays-=/obj/TRYonbi4Tails
							usr.KASS = 0
						usr.Kaiten =0
						usr<<"Your Yonbi Aura Shield wears off."
						usr.KASS += 1
					else
						return
				else if(usr.Kaiten)
					usr.Frozen = 0
					usr.cast = 0
					usr.def = 0
					usr.InKASS = 0
					usr.KAS_ONOFF = 0
					usr.KASS += 1
					src.overlays-='Yonbi Aura Shield.dmi'
					if(usr.InK3==1)
						src.overlays+=/obj/CYonbi4Tails
						src.overlays+=/obj/TYonbi4Tails
						src.overlays+=/obj/BLYonbi4Tails
						src.overlays+=/obj/BRYonbi4Tails
						src.overlays+=/obj/TLYonbi4Tails
						src.overlays+=/obj/TRYonbi4Tails
					usr.Kaiten =0
					usr<<"You stop using your Yonbi Aura to shield yourself."


mob
	Rokubi6
		verb
			Shield()
				set category = "Rokubi"
				set name = "Rokubi Aura Shield"
				if(usr.KASS >= 4)
					usr<<"You may only use it twice per nibi use!"
					return
				if(usr.resting)
					usr<<"Não enquanto descansa"
					return
				if(usr.meditating)
					usr<<"Não enquanto medita"
					return
				if(!usr.Kaiten&&!usr.cast)
					usr.Frozen = 1
					usr.cast = 1
					usr.def = 1
					usr.InKASS = 1
					usr.KASS += 1
					usr.KAS_ONOFF = 1
					usr.overlays+='Rokubi Aura Shield.dmi'
					usr.overlays-=/obj/CRokubi6Tails
					usr.overlays-=/obj/TRokubi6Tails
					usr.overlays-=/obj/BLRokubi6Tails
					usr.overlays-=/obj/BRRokubi6Tails
					usr.overlays-=/obj/TLRokubi6Tails
					usr.overlays-=/obj/TRRokubi6Tails
					usr.Kaiten =1
					sleep(50)
					if(usr.KAS_ONOFF == 1)
						usr.Frozen = 0
						usr.cast = 0
						usr.def = 0
						usr.InKASS = 0
						usr.overlays-='Rokubi Aura Shield.dmi'
						usr.overlays+=/obj/CRokubi6Tails
						usr.overlays+=/obj/TRokubi6Tails
						usr.overlays+=/obj/BLRokubi6Tails
						usr.overlays+=/obj/BRRokubi6Tails
						usr.overlays+=/obj/TLRokubi6Tails
						usr.overlays+=/obj/TRRokubi6Tails
						if(usr.InK3==0)
							usr.overlays-=/obj/CRokubi6Tails
							usr.overlays-=/obj/TRokubi6Tails
							usr.overlays-=/obj/BLRokubi6Tails
							usr.overlays-=/obj/BRRokubi6Tails
							usr.overlays-=/obj/TLRokubi6Tails
							usr.overlays-=/obj/TRRokubi6Tails
							usr.KASS = 0
						usr.Kaiten =0
						usr<<"Your Rokubi Aura Shield wears off."
						usr.KASS += 1
					else
						return
				else if(usr.Kaiten)
					usr.Frozen = 0
					usr.cast = 0
					usr.def = 0
					usr.InKASS = 0
					usr.KAS_ONOFF = 0
					usr.KASS += 1
					src.overlays-='Rokubi Aura Shield.dmi'
					if(usr.InK3==1)
						src.overlays+=/obj/CRokubi6Tails
						src.overlays+=/obj/TRokubi6Tails
						src.overlays+=/obj/BLRokubi6Tails
						src.overlays+=/obj/BRRokubi6Tails
						src.overlays+=/obj/TLRokubi6Tails
						src.overlays+=/obj/TRRokubi6Tails
					usr.Kaiten =0
					usr<<"You stop using your Rokubi Aura to shield yourself."


mob
	Hachibi8
		verb
			Shield()
				set category = "Hachibi"
				set name = "Hachibi Aura Shield"
				if(usr.KASS >= 4)
					usr<<"You may only use it twice per nibi use!"
					return
				if(usr.resting)
					usr<<"Não enquanto descansa"
					return
				if(usr.meditating)
					usr<<"Não enquanto medita"
					return
				if(!usr.Kaiten&&!usr.cast)
					usr.Frozen = 1
					usr.cast = 1
					usr.def = 1
					usr.InKASS = 1
					usr.KASS += 1
					usr.KAS_ONOFF = 1
					usr.overlays+='Hachibi Aura Shield.dmi'
					usr.overlays-=/obj/CHachibi8Tails
					usr.overlays-=/obj/THachibi8Tails
					usr.overlays-=/obj/BLHachibi8Tails
					usr.overlays-=/obj/BRHachibi8Tails
					usr.overlays-=/obj/TLHachibi8Tails
					usr.overlays-=/obj/TRHachibi8Tails
					usr.Kaiten =1
					sleep(50)
					if(usr.KAS_ONOFF == 1)
						usr.Frozen = 0
						usr.cast = 0
						usr.def = 0
						usr.InKASS = 0
						usr.overlays-='Hachibi Aura Shield.dmi'
						usr.overlays+=/obj/CHachibi8Tails
						usr.overlays+=/obj/THachibi8Tails
						usr.overlays+=/obj/BLHachibi8Tails
						usr.overlays+=/obj/BRHachibi8Tails
						usr.overlays+=/obj/TLHachibi8Tails
						usr.overlays+=/obj/TRHachibi8Tails
						if(usr.InK3==0)
							usr.overlays-=/obj/CHachibi8Tails
							usr.overlays-=/obj/THachibi8Tails
							usr.overlays-=/obj/BLHachibi8Tails
							usr.overlays-=/obj/BRHachibi8Tails
							usr.overlays-=/obj/TLHachibi8Tails
							usr.overlays-=/obj/TRHachibi8Tails
							usr.KASS = 0
						usr.Kaiten =0
						usr<<"Your Hachibi Aura Shield wears off."
						usr.KASS += 1
					else
						return
				else if(usr.Kaiten)
					usr.Frozen = 0
					usr.cast = 0
					usr.def = 0
					usr.InKASS = 0
					usr.KAS_ONOFF = 0
					usr.KASS += 1
					src.overlays-='Hachibi Aura Shield.dmi'
					if(usr.InK3==1)
						src.overlays+=/obj/CHachibi8Tails
						src.overlays+=/obj/THachibi8Tails
						src.overlays+=/obj/BLHachibi8Tails
						src.overlays+=/obj/BRHachibi8Tails
						src.overlays+=/obj/TLHachibi8Tails
						src.overlays+=/obj/TRHachibi8Tails
					usr.Kaiten =0
					usr<<"You stop using your Hachibi Aura to shield yourself."























mob
	Poca
		name = "Poça de agua"
		icon = 'poca.dmi'
		icon_state= ""







mob/uchiha
	verb
		Sharingangenjutsu(mob/M in oview(5))
			set category = "Doujutsu"
			set name = "Magen Moeru Karada Kami"
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
			if(M.antigen)
				usr<<"O adversario percebeu seu genjutsu"
				return
			if(usr.chakra <=3000)
				usr<<"Sem chakra"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(M.gc)
				usr.AntiGen(M)
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
				return
			if(usr.genj)
				usr<<"Não agora"
				return
			if(usr.genj==0) // If the cast var isn't 1...
				usr.genj=1
				usr.chakra -= 3000
				M<<"Você caiu no genjutsu de [usr]"
				usr<<"Você usou seu genjutsu em [M] com seu Sharingan"
				M.client.eye = locate(M.x+3,M.y,M.z)
				sleep(5)
				M.client.eye = locate(M.x,M.y+3,M.z)
				sleep(5)
				M.client.eye = locate(M.x-3,M.y,M.z)
				sleep(5)
				M.client.eye = locate(M.x,M.y-3,M.z)
				sleep(5)
				M.client.eye = locate(M.x+3,M.y,M.z)
				sleep(5)
				M.client.eye = locate(M.x,M.y+3,M.z)
				sleep(5)
				M.client.eye = locate(M.x-3,M.y,M.z)
				sleep(5)
				M.client.eye = locate(M.x,M.y-3,M.z)
				sleep(5)
				M.client.eye = locate(M.x+3,M.y,M.z)
				sleep(5)
				M.client.eye = locate(M.x,M.y+3,M.z)
				sleep(5)
				M.client.eye = locate(M.x-3,M.y,M.z)
				sleep(5)
				M.client.eye = locate(M.x,M.y-3,M.z)
				sleep(5)
				M.client.eye = locate(M.x+3,M.y,M.z)
				sleep(5)
				M.client.eye = locate(M.x,M.y+3,M.z)
				sleep(5)
				M.client.eye = locate(M.x-3,M.y,M.z)
				sleep(5)
				M.client.eye = locate(M.x,M.y-3,M.z)
				sleep(5)
				M.client.eye = locate(M.x+3,M.y,M.z)
				sleep(5)
				M.client.eye = locate(M.x,M.y+3,M.z)
				sleep(5)
				M.client.eye = locate(M.x-3,M.y,M.z)
				sleep(5)
				M.client.eye = locate(M.x,M.y-3,M.z)
				sleep(5)
				M.client.eye = locate(M.x+3,M.y,M.z)
				sleep(5)
				M.client.eye = locate(M.x,M.y+3,M.z)
				sleep(5)
				M.client.eye = locate(M.x-3,M.y,M.z)
				sleep(5)
				M.client.eye = locate(M.x,M.y-3,M.z)
				sleep(5)
				M.client.eye= M
				usr.genj=0




mob/var/tmp/mind=0
mob/var/tmp/mindado=0



mob/star
	verb
		Aura()
			set category ="Jutsus"
			set name ="Aura de Chakra"
			if(usr.aura==0)
				view<<"<font color = blue>Aura de chakra!"
				usr.tai = usr.tai*1.2
				usr.gen = usr.gen*1.2
				usr.nin = usr.nin*1.2
				usr.shurikenskill = usr.shurikenskill*1.2
				usr.aura=1
				usr.overlays+='AuraVip.dmi'
				usr<<"Você <font color=green>ativa</font> sua Aura de Chakra."
				spawn(30) usr.overlays-='AuraVip.dmi'
				return
			else
				usr<<"Sua Aura de Chakra <font color=red>terminou</font>."
				usr.tai = usr.Mtai
				usr.nin = usr.Mnin
				usr.gen = usr.Mgen
				usr.shurikenskill = usr.Mshurikenskill
				usr.aura=0
				usr.overlays -= new/obj/aura_star
				usr.overlays-='AuraVip.dmi'
				return
obj/auravip
	icon='AuraVip.dmi'
	icon_state="aura"
	layer=10

obj/aura_star
	icon = 'staraura2.dmi'
	T3
		icon_state = "T3"
		pixel_y = 32
		density = 0
	BL3
		icon_state = "BL3"
		pixel_x = -32
		density = 0
	BR3
		icon_state = "BR3"
		pixel_x = 32
		density = 0
	TL3
		icon_state = "TL3"
		pixel_x = -32
		pixel_y = 32
		density = 0
	TR3
		icon_state = "TR3"
		pixel_x = 32
		pixel_y = 32
		density = 0
	C3
		icon_state = "C3"
		density = 0
	held
		New()
			overlays += new /obj/aura_star/C3
			overlays += new /obj/aura_star/T3
			overlays += new /obj/aura_star/BL3
			overlays += new /obj/aura_star/BR3
			overlays += new /obj/aura_star/TL3
			overlays += new /obj/aura_star/TR3












obj
	Ras
		icon = 'experimentos.dmi'
		icon_state = "rasenshuriken"
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin) - M.Resistencia/2
				if(damage<=0)damage=0
				if(damage <= 0) damage=0
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				view(M) << "[M] foi acertado pelo Fuuton:Rasen-Shuriken tirando [damage] de dano!!"
				var/mob/O = src.Gowner
				M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)


mob/jutsu
	verb
		KageRaseShuriken()
			set category="Jutsus"
			set name = "Kage Fuuton: Rasenshuriken No Jutsu"
			if(usr.cdkfrs)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Kage Fuuton Rasenshuriken</b>!"
				return
			if(usr.cast) // If the mob's cast var is one...
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.chakra<=35000)
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
				usr.chakra-=35000
				usr.cdkfrs=1
				spawn()usr.Cooldown(200,"Kage Fuuton Rasenshuriken")
				if(usr.chakra<=35000)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Kage Fuuton: RasenShuriken No Jutsu!"
				sleep(30)
				usr.Chakragain()
				if(usr.dir == NORTH)
					var/obj/frsexpande/A = new /obj/frsexpande
					var/obj/frsexpande/B = new /obj/frsexpande
					var/obj/frsexpande/C = new /obj/frsexpande
					A.loc = locate(usr.x, usr.y+1, usr.z)
					C.loc = locate(usr.x+1, usr.y+1, usr.z)
					B.loc = locate(usr.x-1, usr.y+1, usr.z)
					A.nin=usr.nin/4 + usr.ventoN/1.5
					B.nin=usr.nin/4 + usr.ventoN/1.5
					C.nin=usr.nin/4 + usr.ventoN/1.5
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
					var/obj/frsexpande/A = new /obj/frsexpande
					var/obj/frsexpande/B = new /obj/frsexpande
					var/obj/frsexpande/C = new /obj/frsexpande
					A.loc = locate(usr.x, usr.y-1, usr.z)
					C.loc = locate(usr.x+1, usr.y-1, usr.z)
					B.loc = locate(usr.x-1, usr.y-1, usr.z)
					A.nin=usr.nin/4 + usr.ventoN/1.5
					B.nin=usr.nin/4 + usr.ventoN/1.5
					C.nin=usr.nin/4 + usr.ventoN/1.5
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
					var/obj/frsexpande/A = new /obj/frsexpande
					var/obj/frsexpande/C = new /obj/frsexpande
					var/obj/frsexpande/D = new /obj/frsexpande
					A.loc = locate(usr.x-1, usr.y, usr.z)
					C.loc = locate(usr.x-1, usr.y-1, usr.z)
					D.loc = locate(usr.x-1, usr.y+1, usr.z)
					A.nin=usr.nin/4 + usr.ventoN/1.5
					C.nin=usr.nin/4 + usr.ventoN/1.5
					D.nin=usr.nin/4 + usr.ventoN/1.5
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
					var/obj/frsexpande/A = new /obj/frsexpande
					var/obj/frsexpande/C = new /obj/frsexpande
					var/obj/frsexpande/D = new /obj/frsexpande
					A.loc = locate(usr.x+1, usr.y, usr.z)
					C.loc = locate(usr.x+1, usr.y-1, usr.z)
					D.loc = locate(usr.x+1, usr.y+1, usr.z)
					A.nin=usr.nin/4 + usr.ventoN/1.5
					C.nin=usr.nin/4 + usr.ventoN/1.5
					D.nin=usr.nin/4 + usr.ventoN/1.5
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



mob
	proc
		kagerasenshuriken1()
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.Frozen)
				usr<<"Your frozen"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.froze)
				usr<<"Your frozen"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.chakra<=35000)
				usr<<"Sem chakra"
				return
			else // If the cast var isn't 1...
				if(usr.RasN >= 500)
					usr.chakra -= 35000
					if(usr.health<=0)
						usr.Death(usr)
					if(usr.chakra<=0)
						usr.chakra = 0
					RasN += 1
					usr.cast = 1
					var/obj/Ras/K = new /obj/Ras
					K.loc = usr.loc
					K.nin=usr.nin
					K.dir = usr.dir
					usr.Chakragain()
					K.name="[usr]"
					K.Gowner=usr
					walk(K,usr.dir)
					sleep(50)
					usr.cast = 0
					usr.Move_Delay = usr.Savedspeed
					del(K)
					if (target == null)
						del(K)
					usr.random = rand(1,6)
					if(random == 5||random==1)
						var/ccrandom=rand(1,15)
						if(ccrandom==4||ccrandom==10)
							var/ccgain=rand(1,3)
							if(usr.ChakraC>=100)
								usr.ChakraC=100
								return
							else
								usr.ChakraC+=ccgain
								usr<<"[usr], você ganhou [ccgain] de controle de chakra..."
					else
						return
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.chakra -= 35000
						if(usr.health<=0)
							usr.Death(usr)
						if(usr.chakra<=0)
							usr.chakra=0
						RasN += 1
						usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam // Disables the mob's movement
						var/obj/Ras/K = new /obj/Ras
						K.loc = usr.loc
						usr.Chakragain()
						K.nin=usr.nin
						K.dir = usr.dir
						K.name="[usr]"
						K.Gowner=usr
						walk(K,usr.dir)
						sleep(50)
						usr.cast = 0
						usr.Move_Delay = usr.Savedspeed
						del(K)
						if (target == null)
							del(K)
						usr.random = rand(1,6)
						if(random == 5||random==1)
							usr.ninexp += rand(1,10)
							usr.ninup()

							var/ccrandom=rand(1,15)
							if(ccrandom==4||ccrandom==10)
								var/ccgain=rand(1,3)
								if(usr.ChakraC>=100)
									usr.ChakraC=100

									return
								else
									usr.ChakraC+=ccgain
									usr<<"[usr], você ganhou [ccgain] de controle de chakra..."

						else
							return

					else
						usr<<"You failed."



obj/var/tmp/Bdf1=0
obj
	Bdf
		icon='fuma.dmi'
		icon_state=""
		layer = MOB_LAYER+1
mob/jutsu
	verb
		Rbdf()
			set category = "Senjutsu"
			set name = "Bomba de Fumaça"
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
				usr<<"Your frozen"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.Frozen)
				usr<<"Your frozen"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.chakra <= 5000)
				usr<<"Você não tem vida o bastante."
				return
			else
				usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam
				view()<<"[usr]<font color=green> Diz: Rasenrengan:Bomba de fumaça!"
				var/obj/Bdf/F = new /obj/Bdf/
				var/obj/Bdf/G = new /obj/Bdf/
				var/obj/Bdf/H = new /obj/Bdf/
				var/obj/Bdf/I = new /obj/Bdf/
				var/obj/Bdf/J = new /obj/Bdf/
				var/obj/Bdf/L = new /obj/Bdf/
				var/obj/Bdf/A = new /obj/Bdf/
				var/obj/Bdf/B = new /obj/Bdf/
				var/obj/Bdf/M2 = new /obj/Bdf/
				var/obj/Bdf/N = new /obj/Bdf/
				var/obj/Bdf/O = new /obj/Bdf/
				var/obj/Bdf/P = new /obj/Bdf/
				var/obj/Bdf/D = new /obj/Bdf/
				var/obj/Bdf/E = new /obj/Bdf/
				var/obj/Bdf/C = new /obj/Bdf/
				var/obj/Bdf/K = new /obj/Bdf/
				var/obj/Bdf/Q = new /obj/Bdf/
				var/obj/Bdf/R = new /obj/Bdf/
				var/obj/Bdf/S = new /obj/Bdf/
				var/obj/Bdf/T = new /obj/Bdf/
				var/obj/Bdf/W = new /obj/Bdf/
				var/obj/Bdf/X = new /obj/Bdf/
				var/obj/Bdf/Y = new /obj/Bdf/
				var/obj/Bdf/Z = new /obj/Bdf/
				var/obj/Bdf/AB = new /obj/Bdf/
				var/obj/Bdf/AC = new /obj/Bdf/
				var/obj/Bdf/AD = new /obj/Bdf/
				var/obj/Bdf/AE = new /obj/Bdf/
				var/obj/Bdf/AF = new /obj/Bdf/
				var/obj/Bdf/AG = new /obj/Bdf/
				var/obj/Bdf/AH = new /obj/Bdf/
				var/obj/Bdf/AI = new /obj/Bdf/
				var/obj/Bdf/AJ = new /obj/Bdf/
				var/obj/Bdf/AK = new /obj/Bdf/
				var/obj/Bdf/AL = new /obj/Bdf/
				var/obj/Bdf/AM = new /obj/Bdf/
				var/obj/Bdf/AN = new /obj/Bdf/
				var/obj/Bdf/AO = new /obj/Bdf/
				var/obj/Bdf/AP = new /obj/Bdf/
				var/obj/Bdf/AQ = new /obj/Bdf/
				var/obj/Bdf/AR = new /obj/Bdf/
				var/obj/Bdf/AS = new /obj/Bdf/
				var/obj/Bdf/AT = new /obj/Bdf/
				var/obj/Bdf/AU = new /obj/Bdf/
				var/obj/Bdf/AV = new /obj/Bdf/
				var/obj/Bdf/AW = new /obj/Bdf/
				var/obj/Bdf/AX= new /obj/Bdf/
				var/obj/Bdf/AY = new /obj/Bdf/
				var/obj/Bdf/AZ = new /obj/Bdf/
				usr.chakra -= 5000
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
				K.loc = locate(usr.x,usr.y,usr.z)
				K.Bdf1=1
				A.loc = locate(usr.x+1,usr.y,usr.z)
				A.Bdf1=1
				C.loc = locate(usr.x-1,usr.y,usr.z)
				C.Bdf1=1
				B.loc = locate(usr.x,usr.y+1,usr.z)
				B.Bdf1=1
				D.loc = locate(usr.x,usr.y-1,usr.z)
				D.Bdf1=1
				E.loc = locate(usr.x+1,usr.y+1,usr.z)
				E.Bdf1=1
				F.loc = locate(usr.x-1,usr.y-1,usr.z)
				F.Bdf1=1
				G.loc = locate(usr.x-1,usr.y+1,usr.z)
				G.Bdf1=1
				H.loc = locate(usr.x+1,usr.y-1,usr.z)
				H.Bdf1=1
				I.loc = locate(usr.x+2,usr.y,usr.z)
				I.Bdf1=1
				J.loc = locate(usr.x-2,usr.y,usr.z)
				J.Bdf1=1
				L.loc = locate(usr.x,usr.y+2,usr.z)
				L.Bdf1=1
				M2.loc = locate(usr.x,usr.y-2,usr.z)
				M2.Bdf1=1
				N.loc = locate(usr.x+2,usr.y+2,usr.z)
				N.Bdf1=1
				O.loc = locate(usr.x-2,usr.y-2,usr.z)
				O.Bdf1=1
				P.loc = locate(usr.x-2,usr.y+2,usr.z)
				P.Bdf1=1
				Q.loc = locate(usr.x+2,usr.y-2,usr.z)
				Q.Bdf1=1
				R.loc = locate(usr.x+3,usr.y,usr.z)
				R.Bdf1=1
				S.loc = locate(usr.x-3,usr.y,usr.z)
				S.Bdf1=1
				T.loc = locate(usr.x,usr.y+3,usr.z)
				T.Bdf1=1
				W.loc = locate(usr.x,usr.y-3,usr.z)
				W.Bdf1=1
				X.loc = locate(usr.x+3,usr.y+3,usr.z)
				X.Bdf1=1
				Y.loc = locate(usr.x-3,usr.y-3,usr.z)
				Y.Bdf1=1
				Z.loc = locate(usr.x-3,usr.y+3,usr.z)
				Z.Bdf1=1
				AB.loc = locate(usr.x-3,usr.y-2,usr.z)
				AB.Bdf1=1
				AC.loc = locate(usr.x+3,usr.y+2,usr.z)
				AC.Bdf1=1
				AD.loc = locate(usr.x+3,usr.y-2,usr.z)
				AD.Bdf1=1
				AE.loc = locate(usr.x-3,usr.y+2,usr.z)
				AE.Bdf1=1
				AF.loc = locate(usr.x+2,usr.y+3,usr.z)
				AF.Bdf1=1
				AG.loc = locate(usr.x-2,usr.y-3,usr.z)
				AG.Bdf1=1
				AH.loc = locate(usr.x-2,usr.y+3,usr.z)
				AH.Bdf1=1
				AI.loc = locate(usr.x+2,usr.y-3,usr.z)
				AI.Bdf1=1
				AJ.loc = locate(usr.x-1,usr.y-2,usr.z)
				AJ.Bdf1=1
				AK.loc = locate(usr.x+1,usr.y+2,usr.z)
				AK.Bdf1=1
				AL.loc = locate(usr.x+1,usr.y-2,usr.z)
				AL.Bdf1=1
				AM.loc = locate(usr.x-1,usr.y+2,usr.z)
				AM.Bdf1=1
				AN.loc = locate(usr.x+2,usr.y+1,usr.z)
				AN.Bdf1=1
				AO.loc = locate(usr.x-2,usr.y-1,usr.z)
				AO.Bdf1=1
				AP.loc = locate(usr.x-2,usr.y+1,usr.z)
				AP.Bdf1=1
				AQ.loc = locate(usr.x+2,usr.y-1,usr.z)
				AQ.Bdf1=1
				AR.loc = locate(usr.x-1,usr.y-3,usr.z)
				AR.Bdf1=1
				AS.loc = locate(usr.x+1,usr.y+3,usr.z)
				AS.Bdf1=1
				AT.loc = locate(usr.x+1,usr.y-3,usr.z)
				AT.Bdf1=1
				AU.loc = locate(usr.x-1,usr.y+3,usr.z)
				AU.Bdf1=1
				AV.loc = locate(usr.x+3,usr.y+1,usr.z)
				AV.Bdf1=1
				AW.loc = locate(usr.x-3,usr.y-1,usr.z)
				AW.Bdf1=1
				AX.loc = locate(usr.x-3,usr.y+1,usr.z)
				AX.Bdf1=1
				AY.loc = locate(usr.x+3,usr.y-1,usr.z)
				AY.Bdf1=1
				AZ.loc = locate(usr.x+3,usr.y-3,usr.z)
				AZ.Bdf1=1
				var/list/AAA = usr.overlays.Copy()
				usr.icon = 'invis.dmi'
				usr.overlays = usr.overlays.Remove(usr.overlays)
				usr.SHarmor = 1
				usr.chakra -= 20
				usr.Chakragain()
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
				sleep(100)
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
				usr.icon = usr.Oicon
				usr.overlays = AAA.Copy()
				usr.SHarmor =0
				usr.cast=0






mob/jutsu
	verb
		Tubakisame(mob/m in oview(usr)) // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Suiton Goshoku-Zame"
			if(usr.cast||usr.Kaiten == 1) // If the mob's cast var is one...
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
			if(m.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.chakra <= 5000)
				usr<<"Você não possui chakra suficiente!"
				return
			else // If the cast var isn't 1...
				if(usr.Fuuton3N >= 40)
					usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam
					usr.move = 0 // Disables the mob's movement
					usr.Fuuton3N += 1
					usr.chakra -= 5000
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Suiton Goshoku-Zame!"
					var/obj/tuba/D = new /obj/tuba
					var/obj/tuba/S = new /obj/tuba
					var/obj/tuba/K = new /obj/tuba
					var/obj/tuba/L = new /obj/tuba
					var/obj/tuba/B = new /obj/tuba
					usr.target=m
					K.loc = usr.loc
					K.nin=usr.nin
					K.name="[usr]"
					usr.Chakragain()
					K.Move_Delay=2
					K.Gowner=usr
					walk_towards(K,m)
					sleep(5)
					D.loc = usr.loc
					D.nin=usr.nin
					D.Move_Delay=2
					D.name="[usr]"
					D.Gowner=usr
					walk_towards(D,m)
					sleep(5)
					B.loc = usr.loc
					B.nin=usr.nin
					B.Move_Delay=2
					B.name="[usr]"
					B.Gowner=usr
					walk_towards(B,m)
					sleep(5)
					L.loc = usr.loc
					L.nin=usr.nin
					L.Move_Delay=2
					L.name="[usr]"
					L.Gowner=usr
					walk_towards(L,m)
					sleep(5)
					S.loc = usr.loc
					S.nin=usr.nin
					S.Move_Delay=2
					S.name="[usr]"
					S.Gowner=usr
					walk_towards(S,m)
					sleep(1)
					usr.move = 1
					sleep(10)
					usr.cast = 0
					sleep(21)
					del(D)
					del(S)
					del(K)
					del(L)
					del(B)
					if (target == null)
						del(D)
						del(S)
						del(K)
						del(L)
						del(B)
					if(usr.Mnin <= usr.cap)
						usr.random = rand(1,6)
						if(random == 5||random==1)
							usr.ninexp += rand(1,10)
							usr.ninup()

							var/ccrandom=rand(1,15)
							if(ccrandom==4||ccrandom==10)
								var/ccgain=rand(1,3)
								if(usr.ChakraC>=100)
									usr.ChakraC=100
									return
								else
									usr.ChakraC+=ccgain
									usr<<"[usr], você ganhou [ccgain] de controle de chakra"
						else
							return
					else
						usr.random = rand(1,20)
						if(random == 5||random==1)
							var/ccrandom=rand(1,15)
							if(ccrandom==4||ccrandom==10)
								var/ccgain=rand(1,3)
								if(usr.ChakraC>=100)
									usr.ChakraC=100
									return
								else
									usr.ChakraC+=ccgain
									usr<<"[usr], você ganhou [ccgain] de controle de chakra"
						else
							return
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam
						usr.move = 0 // Disables the mob's movement
						usr.chakra -= 5000
						usr.Fuuton3N += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Suiton Goshoku-Zame!"
						var/obj/tuba/D = new /obj/tuba
						var/obj/tuba/S = new /obj/tuba
						var/obj/tuba/K = new /obj/tuba
						var/obj/tuba/L = new /obj/tuba
						var/obj/tuba/B = new /obj/tuba
						usr.target=m
						K.loc = usr.loc
						K.nin=usr.nin
						K.name="[usr]"
						K.Move_Delay=2
						K.Gowner=usr
						walk_towards(K,m)
						sleep(5)
						D.loc = usr.loc
						usr.Chakragain()
						D.nin=usr.nin
						D.Move_Delay=2
						D.name="[usr]"
						D.Gowner=usr
						walk_towards(D,m)
						sleep(5)
						B.loc = usr.loc
						B.nin=usr.nin
						B.Move_Delay=2
						B.name="[usr]"
						B.Gowner=usr
						walk_towards(B,m)
						sleep(5)
						L.loc = usr.loc
						L.nin=usr.nin
						L.Move_Delay=2
						L.name="[usr]"
						L.Gowner=usr
						walk_towards(L,m)
						sleep(5)
						S.loc = usr.loc
						S.nin=usr.nin
						S.Move_Delay=2
						S.name="[usr]"
						S.Gowner=usr
						walk_towards(S,m)
						sleep(1)
						usr.move = 1
						sleep(10)
						usr.cast = 0
						sleep(21)
						del(D)
						del(S)
						del(K)
						del(L)
						del(B)
						if (target == null)
							del(D)
							del(S)
							del(K)
							del(L)
							del(B)
						if(usr.Mnin <= usr.cap)
							usr.random = rand(1,6)
							if(random == 5||random==1)
								usr.ninexp += rand(1,10)
								usr.ninup()

								var/ccrandom=rand(1,15)
								if(ccrandom==4||ccrandom==10)
									var/ccgain=rand(1,3)
									if(usr.ChakraC>=100)
										usr.ChakraC=100
										return
									else
										usr.ChakraC+=ccgain
										usr<<"[usr], você ganhou [ccgain] de controle de chakra"
							else
								return
						else
							usr.random = rand(1,20)
							if(random == 5||random==1)
								var/ccrandom=rand(1,15)
								if(ccrandom==4||ccrandom==10)
									var/ccgain=rand(1,3)
									if(usr.ChakraC>=100)
										usr.ChakraC=100
										return
									else
										usr.ChakraC+=ccgain
										usr<<"[usr], você ganhou [ccgain] de controle de chakra"
							else
								return
					usr<<"Você falhou em usar o Suiton Goshoku-Zame"




//--------------------------------------------------Novo esquema de treino de elemento----------------------------------------------


mob/var/tmp/ElementoTreino=0
mob/var/tmp/canElementoTreino=0

obj
	TrainingAreas
		Campfire
			name="Treinar na Fogueira"
			icon='NarutoStuff.dmi'
			icon_state="Campfire"
			verb/tf()
				set src in oview(1)
				set category = "Treinamento"
				set name = "Treinar elemento"
				if(usr.deslogado)return
				if(!usr.Katon)
					usr<<"Você não possui afinidade com esse elemento!"
					return
				if(usr.fogoN>=100000)
					usr<<"Já atingiu o máximo nesse elemento!"
					return
				if(usr.chakra <= 100)
					usr<<"Você não possui chakra suficiente!"
					return
				if(usr.cast)
					usr<<"Não agora."
					return
				if(usr.froze&&!usr.ElementoTreino||usr.kawa||usr.kai)
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
				if(usr.canElementoTreino)
					usr<<"Aguarde um pouco!"
					return
				if(usr.ElementoTreino)
					usr<<output("Você parou de treinar Katon na fogueira!","output2.sistema")
					usr.treinando=0
					usr.froze=0
					usr.move=1
					usr.ElementoTreino=0
					usr.canElementoTreino=1
					spawn(600)
						usr.canElementoTreino=0
						usr<<output("Já pode treinar novamente!","output2.sistema")
				else
					usr.chakra-=100
					usr.froze=1
					usr.move=0
					usr.ElementoTreino=1
					usr.trainando=1
					usr<<output("Você esta treinando seu elemento tentando acender a fogueira","output2.sistema")
					while(usr.ElementoTreino)
						if(usr.concing)
							usr.concing=0
							usr.ElementoTreino=0
							return
						if(usr.vconcing)
							usr.vconcing=0
							usr.ElementoTreino=0
							return
						if(usr.libering)
							usr.libering=0
							usr.ElementoTreino=0
							return
						if(usr.vlibering)
							usr.vlibering=0
							usr.ElementoTreino=0
							return
						if(usr.treinamento)
							usr.treinamento=0
							usr.ElementoTreino=0
							return
						if(usr.armastreino)
							usr.armastreino=0
							usr.treinamento=0
							usr.ElementoTreino=0
							return
						if(usr.varmastreino)
							usr.varmastreino=0
							usr.ElementoTreino=0
							return
						if(usr.vtaitreino)
							usr.vtaitreino=0
							usr.ElementoTreino=0
							return
						if(usr.taitreino)
							usr.taitreino=0
							usr.ElementoTreino=0
							return
						sleep(300)
						if(!usr.ElementoTreino)
							return
						if(usr) if(usr.ElementoTreino==0) return
						if(usr.chakra > 5)
							if(usr.fogoN<100000)
								flick("tf",src)
								flick("tf",src)
								flick("tf",src)
								usr<<output("Sua perícia em Katon aumentou.","output2.sistema")
								if(usr.level<200)
									usr.fogoN+=3
									if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
										usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
									else
										usr.exp+=30
										usr.Levelup()
								else
									usr.fogoN+=1
									if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
										usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
									else
										usr.exp+=10
										usr.Levelup()
								if(usr.fogoN<5000)
									usr.nivelElementoK="Basico"
								if(usr.fogoN==5000)
									usr.nivelElementoK="Avancado"
									world<<"[usr] está no nível Avançado em Katon!"
								if(usr.fogoN==12500)
									usr.nivelElementoK="Experiente"
									world<<"[usr] está no nível Experiente em Katon!"
								if(usr.fogoN==25000)
									usr.nivelElementoK="Dominador"
									world<<"[usr] está no nível Dominador em Katon!"
								if(usr.fogoN==50000)
									usr.nivelElementoK="Mestre"
									world<<"[usr] se tornou Mestre em Katon!"
								if(usr.fogoN==100000)
									usr.nivelElementoK="Anciao"
									world<<"[usr] se tornou Ancião em Katon!"
							else
								usr<<"Você já chegou ao máximo em Katon."
						sleep(600)
						if(!usr.ElementoTreino)
							return
						if(usr) if(usr.ElementoTreino==0) return
						if(usr.chakra > 5)
							if(usr.fogoN<100000)
								flick("tf",src)
								flick("tf",src)
								flick("tf",src)
								usr<<output("Sua perícia em Katon aumentou.","output2.sistema")
								if(usr.EhVip)
									if(usr.level<200)
										usr.fogoN+=4
										if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
											usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
										else
											usr.exp+=40
											usr.Levelup()
									else
										usr.fogoN+=2
										if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
											usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
										else
											usr.exp+=20
											usr.Levelup()
									if(usr.fogoN<5000)
										usr.nivelElementoK="Basico"
									if(usr.fogoN==5000)
										usr.nivelElementoK="Avancado"
										world<<"[usr] está no nível Avançado em Katon!"
									if(usr.fogoN==12500)
										usr.nivelElementoK="Experiente"
										world<<"[usr] está no nível Experiente em Katon!"
									if(usr.fogoN==25000)
										usr.nivelElementoK="Dominador"
										world<<"[usr] está no nível Dominador em Katon!"
									if(usr.fogoN==50000)
										usr.nivelElementoK="Mestre"
										world<<"[usr] se tornou Mestre em Katon!"
									if(usr.fogoN==100000)
										usr.nivelElementoK="Anciao"
										world<<"[usr] se tornou Ancião em Katon!"
								else
									if(usr.level<200)
										usr.fogoN+=3
										if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
											usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
										else
											usr.exp+=30
											usr.Levelup()
									else
										usr.fogoN+=1
										if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
											usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
										else
											usr.exp+=10
											usr.Levelup()
									if(usr.fogoN<5000)
										usr.nivelElementoK="Basico"
									if(usr.fogoN==5000)
										usr.nivelElementoK="Avancado"
										world<<"[usr] está no nível Avançado em Katon!"
									if(usr.fogoN==12500)
										usr.nivelElementoK="Experiente"
										world<<"[usr] está no nível Experiente em Katon!"
									if(usr.fogoN==25000)
										usr.nivelElementoK="Dominador"
										world<<"[usr] está no nível Dominador em Katon!"
									if(usr.fogoN==50000)
										usr.nivelElementoK="Mestre"
										world<<"[usr] se tornou Mestre em Katon!"
									if(usr.fogoN==100000)
										usr.nivelElementoK="Anciao"
										world<<"[usr] se tornou Ancião em Katon!"
							else
								usr<<"Você já chegou ao máximo em Katon."
						sleep(300)
						if(!usr.ElementoTreino)
							return
						if(usr) if(usr.ElementoTreino==0) return
						if(usr.chakra > 5)
							if(usr.fogoN<100000)
								flick("tf",src)
								flick("tf",src)
								flick("tf",src)
								usr<<output("Sua perícia em Katon aumentou.","output2.sistema")
								if(usr.level<200)
									usr.fogoN+=3
									if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
										usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
									else
										usr.exp+=30
										usr.Levelup()
								else
									usr.fogoN+=1
									if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
										usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
									else
										usr.exp+=10
										usr.Levelup()
								if(usr.fogoN<5000)
									usr.nivelElementoK="Basico"
								if(usr.fogoN==5000)
									usr.nivelElementoK="Avancado"
									world<<"[usr] está no nível Avançado em Katon!"
								if(usr.fogoN==12500)
									usr.nivelElementoK="Experiente"
									world<<"[usr] está no nível Experiente em Katon!"
								if(usr.fogoN==25000)
									usr.nivelElementoK="Dominador"
									world<<"[usr] está no nível Dominador em Katon!"
								if(usr.fogoN==50000)
									usr.nivelElementoK="Mestre"
									world<<"[usr] se tornou Mestre em Katon!"
								if(usr.fogoN==100000)
									usr.nivelElementoK="Anciao"
									world<<"[usr] se tornou Ancião em Katon!"
							else
								usr<<"Você já chegou ao máximo em Katon."
						sleep(600)
						if(!usr.ElementoTreino)
							return
						if(usr) if(usr.ElementoTreino==0) return
						if(usr.chakra > 5)
							if(usr.fogoN<100000)
								flick("tf",src)
								flick("tf",src)
								flick("tf",src)
								usr<<output("Sua perícia em Katon aumentou.","output2.sistema")
								if(usr.level<200)
									usr.fogoN+=3
									if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
										usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
									else
										usr.exp+=30
										usr.Levelup()
								else
									usr.fogoN+=1
									if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
										usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
									else
										usr.exp+=10
										usr.Levelup()
								if(usr.fogoN<5000)
									usr.nivelElementoK="Basico"
								if(usr.fogoN==5000)
									usr.nivelElementoK="Avancado"
									world<<"[usr] está no nível Avançado em Katon!"
								if(usr.fogoN==12500)
									usr.nivelElementoK="Experiente"
									world<<"[usr] está no nível Experiente em Katon!"
								if(usr.fogoN==25000)
									usr.nivelElementoK="Dominador"
									world<<"[usr] está no nível Dominador em Katon!"
								if(usr.fogoN==50000)
									usr.nivelElementoK="Mestre"
									world<<"[usr] se tornou Mestre em Katon!"
								if(usr.fogoN==100000)
									usr.nivelElementoK="Anciao"
									world<<"[usr] se tornou Ancião em Katon!"
							else
								usr<<"Você já chegou ao máximo em Katon."
						if(usr.chakra <= 5)
							usr<<output("Você parou de treinar perícia em Katon.","output2.sistema")
							usr.trainando=0
							usr.froze=0
							usr.move=1
							usr.ElementoTreino=0
							usr.canElementoTreino=1
							spawn(600)
								usr.canElementoTreino=0
								usr<<output("Já pode treinar novamente!","output2.sistema")

		Dirtrock
			name="Treinar na Rocha"
			icon='NarutoStuff.dmi'
			icon_state="Dirtrock"
			verb/td()
				set src in oview(1)
				set category = "Treinamento"
				set name = "Treinar elemento"
				if(usr.deslogado)return
				if(!usr.Doton)
					usr<<"Você não possui afinidade com esse elemento!"
					return
				if(usr.terraN>=100000)
					usr<<"Já atingiu o máximo nesse elemento!"
					return
				if(usr.chakra <= 100)
					usr<<"Você não possui chakra suficiente!"
					return
				if(usr.cast)
					usr<<"Não agora."
					return
				if(usr.froze&&!usr.ElementoTreino)
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
				if(usr.canElementoTreino)
					usr<<"Aguarde um pouco!"
					return
				if(usr.ElementoTreino)
					usr<<output("Você parou de treinar Doton na rocha!","output2.sistema")
					usr.treinando=0
					usr.froze=0
					usr.move=1
					usr.ElementoTreino=0
					usr.canElementoTreino=1
					spawn(600)
						usr.canElementoTreino=0
						usr<<output("Já pode treinar novamente!","output2.sistema")
				else
					usr.chakra-=100
					usr.ElementoTreino=1
					usr.froze=1
					usr.move=0
					usr.trainando=1
					usr<<output("Você esta treinando seu elemento tentando destruir a rocha","output2.sistema")
					while(usr.ElementoTreino)
						if(usr.concing)
							usr.concing=0
							usr.ElementoTreino=0
							return
						if(usr.vconcing)
							usr.vconcing=0
							usr.ElementoTreino=0
							return
						if(usr.libering)
							usr.libering=0
							usr.ElementoTreino=0
							return
						if(usr.vlibering)
							usr.vlibering=0
							usr.ElementoTreino=0
							return
						if(usr.treinamento)
							usr.treinamento=0
							usr.ElementoTreino=0
							return
						if(usr.armastreino)
							usr.armastreino=0
							usr.treinamento=0
							usr.ElementoTreino=0
							return
						if(usr.varmastreino)
							usr.varmastreino=0
							usr.ElementoTreino=0
							return
						if(usr.vtaitreino)
							usr.vtaitreino=0
							usr.ElementoTreino=0
							return
						if(usr.taitreino)
							usr.taitreino=0
							usr.ElementoTreino=0
							return
						sleep(300)
						if(!usr.ElementoTreino)
							return
						if(usr) if(usr.ElementoTreino==0) return
						if(usr.chakra > 5)
							if(usr.terraN<100000)
								flick("tt",src)
								flick("tt",src)
								flick("tt",src)
								usr<<output("Sua perícia em Doton aumentou.","output2.sistema")
								if(usr.level<200)
									usr.terraN+=3
									if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
										usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
									else
										usr.exp+=30
										usr.Levelup()
								else
									usr.terraN+=1
									if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
										usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
									else
										usr.exp+=10
										usr.Levelup()
								if(usr.terraN==5000)
									usr.nivelElementoT="Avancado"
									world<<"[usr] está no nível Avançado em Doton!"
								if(usr.terraN==12500)
									usr.nivelElementoT="Experiente"
									world<<"[usr] está no nível Experiente em Doton!"
								if(usr.terraN==25000)
									usr.nivelElementoT="Dominador"
									world<<"[usr] está no nível Dominador em Doton!"
								if(usr.terraN==50000)
									usr.nivelElementoT="Mestre"
									world<<"[usr] se tornou Mestre em Doton!"
								if(usr.terraN==100000)
									usr.nivelElementoT="Anciao"
									world<<"[usr] se tornou Ancião em Doton!"
							else
								usr<<"Você já chegou ao máximo em Doton."
						sleep(600)
						if(!usr.ElementoTreino)
							return
						if(usr) if(usr.ElementoTreino==0) return
						if(usr.chakra > 5)
							if(usr.terraN<100000)
								flick("tt",src)
								flick("tt",src)
								flick("tt",src)
								usr<<output("Sua perícia em Doton aumentou.","output2.sistema")
								if(usr.EhVip)
									if(usr.level<200)
										usr.terraN+=4
										if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
											usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
										else
											usr.exp+=40
											usr.Levelup()
									else
										usr.terraN+=2
										if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
											usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
										else
											usr.exp+=20
											usr.Levelup()
									if(usr.terraN==5000)
										usr.nivelElementoT="Avancado"
										world<<"[usr] está no nível Avançado em Doton!"
									if(usr.terraN==12500)
										usr.nivelElementoT="Experiente"
										world<<"[usr] está no nível Experiente em Doton!"
									if(usr.terraN==25000)
										usr.nivelElementoT="Dominador"
										world<<"[usr] está no nível Dominador em Doton!"
									if(usr.terraN==50000)
										usr.nivelElementoT="Mestre"
										world<<"[usr] se tornou Mestre em Doton!"
									if(usr.terraN==100000)
										usr.nivelElementoT="Anciao"
										world<<"[usr] se tornou Ancião em Doton!"
								else
									if(usr.level<200)
										usr.terraN+=3
										if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
											usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
										else
											usr.exp+=30
											usr.Levelup()
									else
										usr.terraN+=1
										if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
											usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
										else
											usr.exp+=10
											usr.Levelup()
									if(usr.terraN==5000)
										usr.nivelElementoT="Avancado"
										world<<"[usr] está no nível Avançado em Doton!"
									if(usr.terraN==12500)
										usr.nivelElementoT="Experiente"
										world<<"[usr] está no nível Experiente em Doton!"
									if(usr.terraN==25000)
										usr.nivelElementoT="Dominador"
										world<<"[usr] está no nível Dominador em Doton!"
									if(usr.terraN==50000)
										usr.nivelElementoT="Mestre"
										world<<"[usr] se tornou Mestre em Doton!"
									if(usr.terraN==100000)
										usr.nivelElementoT="Anciao"
										world<<"[usr] se tornou Ancião em Doton!"
							else
								usr<<"Você já chegou ao máximo em Doton."
						sleep(300)
						if(!usr.ElementoTreino)
							return
						if(usr) if(usr.ElementoTreino==0) return
						if(usr.chakra > 5)
							if(usr.terraN<100000)
								flick("tt",src)
								flick("tt",src)
								flick("tt",src)
								usr<<output("Sua perícia em Doton aumentou.","output2.sistema")
								if(usr.level<200)
									usr.terraN+=3
									if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
										usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
									else
										usr.exp+=30
										usr.Levelup()
								else
									usr.terraN+=1
									if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
										usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
									else
										usr.exp+=10
										usr.Levelup()
								if(usr.terraN==5000)
									usr.nivelElementoT="Avancado"
									world<<"[usr] está no nível Avançado em Doton!"
								if(usr.terraN==12500)
									usr.nivelElementoT="Experiente"
									world<<"[usr] está no nível Experiente em Doton!"
								if(usr.terraN==25000)
									usr.nivelElementoT="Dominador"
									world<<"[usr] está no nível Dominador em Doton!"
								if(usr.terraN==50000)
									usr.nivelElementoT="Mestre"
									world<<"[usr] se tornou Mestre em Doton!"
								if(usr.terraN==100000)
									usr.nivelElementoT="Anciao"
									world<<"[usr] se tornou Ancião em Doton!"
							else
								usr<<"Você já chegou ao máximo em Doton."
						sleep(600)
						if(!usr.ElementoTreino)
							return
						if(usr) if(usr.ElementoTreino==0) return
						if(usr.chakra > 5)
							if(usr.terraN<100000)
								flick("tt",src)
								flick("tt",src)
								flick("tt",src)
								usr<<output("Sua perícia em Doton aumentou.","output2.sistema")
								if(usr.level<200)
									usr.terraN+=3
									if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
										usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
									else
										usr.exp+=30
										usr.Levelup()
								else
									usr.terraN+=1
									if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
										usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
									else
										usr.exp+=10
										usr.Levelup()
								if(usr.terraN==5000)
									usr.nivelElementoT="Avancado"
									world<<"[usr] está no nível Avançado em Doton!"
								if(usr.terraN==12500)
									usr.nivelElementoT="Experiente"
									world<<"[usr] está no nível Experiente em Doton!"
								if(usr.terraN==25000)
									usr.nivelElementoT="Dominador"
									world<<"[usr] está no nível Dominador em Doton!"
								if(usr.terraN==50000)
									usr.nivelElementoT="Mestre"
									world<<"[usr] se tornou Mestre em Doton!"
								if(usr.terraN==100000)
									usr.nivelElementoT="Anciao"
									world<<"[usr] se tornou Ancião em Doton!"
							else
								usr<<"Você já chegou ao máximo em Doton."
						if(usr.chakra <= 5)
							usr<<output("Você parou de treinar perícia em Doton.","output2.sistema")
							usr.trainando=0
							usr.froze=0
							usr.move=1
							usr.ElementoTreino=0
							usr.canElementoTreino=1
							spawn(600)
								usr.canElementoTreino=0
								usr<<output("Já pode treinar novamente!","output2.sistema")

		WaterBowl
			name="Treinar na Água"
			icon='NarutoStuff.dmi'
			icon_state="WaterBowl"
			verb/ta()
				set src in oview(1)
				set category = "Treinamento"
				set name = "Treinar elemento"
				if(usr.deslogado)return
				if(!usr.Suiton)
					usr<<"Você não possui afinidade com esse elemento!"
					return
				if(usr.aguaN>=100000)
					usr<<"Já atingiu o máximo nesse elemento!"
					return
				if(usr.chakra <= 100)
					usr<<"Você não possui chakra suficiente!"
					return
				if(usr.cast)
					usr<<"Não agora."
					return
				if(usr.froze&&!usr.ElementoTreino)
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
				if(usr.canElementoTreino)
					usr<<"Aguarde um pouco!"
					return
				if(usr.ElementoTreino)
					usr<<output("Você parou de treinar Suiton!","output2.sistema")
					usr.treinando=0
					usr.froze=0
					usr.move=1
					usr.ElementoTreino=0
					usr.canElementoTreino=1
					spawn(600)
						usr.canElementoTreino=0
						usr<<output("Já pode treinar novamente!","output2.sistema")
				else
					usr.chakra-=100
					usr.ElementoTreino=1
					usr.froze=1
					usr.move=0
					usr.trainando=1
					usr<<output("Você está treinando seu elemento tentando dividir a água","output2.sistema")
					while(usr.ElementoTreino)
						if(usr.concing)
							usr.concing=0
							usr.ElementoTreino=0
							return
						if(usr.vconcing)
							usr.vconcing=0
							usr.ElementoTreino=0
							return
						if(usr.libering)
							usr.libering=0
							usr.ElementoTreino=0
							return
						if(usr.vlibering)
							usr.vlibering=0
							usr.ElementoTreino=0
							return
						if(usr.treinamento)
							usr.treinamento=0
							usr.ElementoTreino=0
							return
						if(usr.armastreino)
							usr.armastreino=0
							usr.treinamento=0
							usr.ElementoTreino=0
							return
						if(usr.varmastreino)
							usr.varmastreino=0
							usr.ElementoTreino=0
							return
						if(usr.vtaitreino)
							usr.vtaitreino=0
							usr.ElementoTreino=0
							return
						if(usr.taitreino)
							usr.taitreino=0
							usr.ElementoTreino=0
							return
						sleep(300)
						if(!usr.ElementoTreino)
							return
						if(usr) if(usr.ElementoTreino==0) return
						if(usr.chakra > 5)
							if(usr.aguaN<100000)
								flick("ta",src)
								flick("ta",src)
								flick("ta",src)
								usr<<output("Sua perícia em Suiton aumentou.","output2.sistema")
								if(usr.level<200)
									usr.aguaN+=3
									if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
										usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
									else
										usr.exp+=30
										usr.Levelup()
								else
									usr.aguaN+=1
									if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
										usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
									else
										usr.exp+=10
										usr.Levelup()
								if(usr.aguaN<5000)
									usr.nivelElementoS="Basico"
								if(usr.aguaN==5000)
									usr.nivelElementoS="Avancado"
									world<<"[usr] está no nível Avançado em Suiton!"
								if(usr.aguaN==12500)
									usr.nivelElementoS="Experiente"
									world<<"[usr] está no nível Experiente em Suiton!"
								if(usr.aguaN==25000)
									usr.nivelElementoS="Dominador"
									world<<"[usr] está no nível Dominador em Suiton!"
								if(usr.aguaN==50000)
									usr.nivelElementoS="Mestre"
									world<<"[usr] se tornou Mestre em Suiton!"
								if(usr.aguaN==100000)
									usr.nivelElementoS="Anciao"
									world<<"[usr] se tornou Ancião em Suiton!"
							else
								usr<<"Você já chegou ao máximo em Suiton."
						sleep(600)
						if(!usr.ElementoTreino)
							return
						if(usr) if(usr.ElementoTreino==0) return
						if(usr.chakra > 5)
							if(usr.aguaN<100000)
								flick("ta",src)
								flick("ta",src)
								flick("ta",src)
								usr<<output("Sua perícia em Suiton aumentou.","output2.sistema")
								if(usr.EhVip)
									if(usr.level<200)
										usr.aguaN+=4
										if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
											usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
										else
											usr.exp+=40
											usr.Levelup()
									else
										usr.aguaN+=2
										if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
											usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
										else
											usr.exp+=20
											usr.Levelup()
									if(usr.aguaN<5000)
										usr.nivelElementoS="Basico"
									if(usr.aguaN==5000)
										usr.nivelElementoS="Avancado"
										world<<"[usr] está no nível Avançado em Suiton!"
									if(usr.aguaN==12500)
										usr.nivelElementoS="Experiente"
										world<<"[usr] está no nível Experiente em Suiton!"
									if(usr.aguaN==25000)
										usr.nivelElementoS="Dominador"
										world<<"[usr] está no nível Dominador em Suiton!"
									if(usr.aguaN==50000)
										usr.nivelElementoS="Mestre"
										world<<"[usr] se tornou Mestre em Suiton!"
									if(usr.aguaN==100000)
										usr.nivelElementoS="Anciao"
										world<<"[usr] se tornou Ancião em Suiton!"
								else
									if(usr.level<200)
										usr.aguaN+=3
										if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
											usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
										else
											usr.exp+=30
											usr.Levelup()
									else
										usr.aguaN+=1
										if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
											usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
										else
											usr.exp+=10
											usr.Levelup()
									if(usr.aguaN<5000)
										usr.nivelElementoS="Basico"
									if(usr.aguaN==5000)
										usr.nivelElementoS="Avancado"
										world<<"[usr] está no nível Avançado em Suiton!"
									if(usr.aguaN==12500)
										usr.nivelElementoS="Experiente"
										world<<"[usr] está no nível Experiente em Suiton!"
									if(usr.aguaN==25000)
										usr.nivelElementoS="Dominador"
										world<<"[usr] está no nível Dominador em Suiton!"
									if(usr.aguaN==50000)
										usr.nivelElementoS="Mestre"
										world<<"[usr] se tornou Mestre em Suiton!"
									if(usr.aguaN==100000)
										usr.nivelElementoS="Anciao"
										world<<"[usr] se tornou Ancião em Suiton!"
							else
								usr<<"Você já chegou ao máximo em Suiton."
						sleep(300)
						if(!usr.ElementoTreino)
							return
						if(usr) if(usr.ElementoTreino==0) return
						if(usr.chakra > 5)
							if(usr.aguaN<100000)
								flick("ta",src)
								flick("ta",src)
								flick("ta",src)
								usr<<output("Sua perícia em Suiton aumentou.","output2.sistema")
								if(usr.level<200)
									usr.aguaN+=3
									if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
										usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
									else
										usr.exp+=30
										usr.Levelup()
								else
									usr.aguaN+=1
									if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
										usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
									else
										usr.exp+=10
										usr.Levelup()
								if(usr.aguaN<5000)
									usr.nivelElementoS="Basico"
								if(usr.aguaN==5000)
									usr.nivelElementoS="Avancado"
									world<<"[usr] está no nível Avançado em Suiton!"
								if(usr.aguaN==12500)
									usr.nivelElementoS="Experiente"
									world<<"[usr] está no nível Experiente em Suiton!"
								if(usr.aguaN==25000)
									usr.nivelElementoS="Dominador"
									world<<"[usr] está no nível Dominador em Suiton!"
								if(usr.aguaN==50000)
									usr.nivelElementoS="Mestre"
									world<<"[usr] se tornou Mestre em Suiton!"
								if(usr.aguaN==100000)
									usr.nivelElementoS="Anciao"
									world<<"[usr] se tornou Ancião em Suiton!"
							else
								usr<<"Você já chegou ao máximo em Suiton."
						sleep(600)
						if(!usr.ElementoTreino)
							return
						if(usr) if(usr.ElementoTreino==0) return
						if(usr.chakra > 5)
							if(usr.aguaN<100000)
								flick("ta",src)
								flick("ta",src)
								flick("ta",src)
								usr<<output("Sua perícia em Suiton aumentou.","output2.sistema")
								if(usr.level<200)
									usr.aguaN+=3
									if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
										usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
									else
										usr.exp+=30
										usr.Levelup()
								else
									usr.aguaN+=1
									if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
										usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
									else
										usr.exp+=10
										usr.Levelup()
								if(usr.aguaN<5000)
									usr.nivelElementoS="Basico"
								if(usr.aguaN==5000)
									usr.nivelElementoS="Avancado"
									world<<"[usr] está no nível Avançado em Suiton!"
								if(usr.aguaN==12500)
									usr.nivelElementoS="Experiente"
									world<<"[usr] está no nível Experiente em Suiton!"
								if(usr.aguaN==25000)
									usr.nivelElementoS="Dominador"
									world<<"[usr] está no nível Dominador em Suiton!"
								if(usr.aguaN==50000)
									usr.nivelElementoS="Mestre"
									world<<"[usr] se tornou Mestre em Suiton!"
								if(usr.aguaN==100000)
									usr.nivelElementoS="Anciao"
									world<<"[usr] se tornou Ancião em Suiton!"
							else
								usr<<"Você já chegou ao máximo em Suiton."
						if(usr.chakra <= 5)
							usr<<output("Você parou de treinar perícia em Suiton.","output2.sistema")
							usr.trainando=0
							usr.froze=0
							usr.move=1
							usr.ElementoTreino=0
							usr.canElementoTreino=1
							spawn(600)
								usr.canElementoTreino=0
								usr<<output("Já pode treinar novamente!","output2.sistema")


		LightningRod
			name="Treinar na Antena"
			icon='NarutoStuff.dmi'
			icon_state="LightningRod"
			verb/tt()
				set src in oview(1)
				set category = "Treinamento"
				set name = "Treinar elemento"
				if(usr.deslogado)return
				if(!usr.Raiton)
					usr<<"Você não possui afinidade com esse elemento!"
					return
				if(usr.trovaoN>=100000)
					usr<<"Já atingiu o máximo nesse elemento!"
					return
				if(usr.chakra <= 100)
					usr<<"Você não possui chakra suficiente!"
					return
				if(usr.cast)
					usr<<"Não agora."
					return
				if(usr.froze&&!usr.ElementoTreino)
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
				if(usr.canElementoTreino)
					usr<<"Aguarde um pouco!"
					return
				if(usr.ElementoTreino)
					usr<<output("Você parou de treinar Raiton na antena!","output2.sistema")
					usr.treinando=0
					usr.froze=0
					usr.move=1
					usr.ElementoTreino=0
					usr.canElementoTreino=1
					spawn(600)
						usr.canElementoTreino=0
						usr<<output("Já pode treinar novamente!","output2.sistema")
				else
					usr.chakra-=100
					usr.ElementoTreino=1
					usr.froze=1
					usr.move=0
					usr.trainando=1
					usr<<output("Você esta treinando seu elemento tentando conduzir eletricidade na antena","output2.sistema")
					while(usr.ElementoTreino)
						if(usr.concing)
							usr.concing=0
							usr.ElementoTreino=0
							return
						if(usr.vconcing)
							usr.vconcing=0
							usr.ElementoTreino=0
							return
						if(usr.libering)
							usr.libering=0
							usr.ElementoTreino=0
							return
						if(usr.vlibering)
							usr.vlibering=0
							usr.ElementoTreino=0
							return
						if(usr.treinamento)
							usr.treinamento=0
							usr.ElementoTreino=0
							return
						if(usr.armastreino)
							usr.armastreino=0
							usr.treinamento=0
							usr.ElementoTreino=0
							return
						if(usr.varmastreino)
							usr.varmastreino=0
							usr.ElementoTreino=0
							return
						if(usr.vtaitreino)
							usr.vtaitreino=0
							usr.ElementoTreino=0
							return
						if(usr.taitreino)
							usr.taitreino=0
							usr.ElementoTreino=0
							return
						sleep(300)
						if(!usr.ElementoTreino)
							return
						if(usr) if(usr.ElementoTreino==0) return
						if(usr.chakra > 5)
							if(usr.trovaoN<100000)
								flick("tr",src)
								flick("tr",src)
								flick("tr",src)
								usr<<output("Sua perícia em Raiton aumentou.","output2.sistema")
								if(usr.level<200)
									usr.trovaoN+=3
									if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
										usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
									else
										usr.exp+=30
										usr.Levelup()
								else
									usr.trovaoN+=1
									if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
										usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
									else
										usr.exp+=10
										usr.Levelup()
								if(usr.trovaoN<5000)
									usr.nivelElementoR="Basico"
								if(usr.trovaoN==5000)
									usr.nivelElementoR="Avancado"
									world<<"[usr] está no nível Avançado em Raiton!"
								if(usr.trovaoN==12500)
									usr.nivelElementoR="Experiente"
									world<<"[usr] está no nível Experiente em Raiton!"
								if(usr.trovaoN==25000)
									usr.nivelElementoR="Dominador"
									world<<"[usr] está no nível Dominador em Raiton!"
								if(usr.trovaoN==50000)
									usr.nivelElementoR="Mestre"
									world<<"[usr] se tornou Mestre em Raiton!"
								if(usr.trovaoN==100000)
									usr.nivelElementoR="Anciao"
									world<<"[usr] se tornou Ancião em Raiton!"
							else
								usr<<"Você já chegou ao máximo em Raiton."
						sleep(600)
						if(!usr.ElementoTreino)
							return
						if(usr) if(usr.ElementoTreino==0) return
						if(usr.chakra > 5)
							if(usr.trovaoN<100000)
								flick("tr",src)
								flick("tr",src)
								flick("tr",src)
								usr<<output("Sua perícia em Raiton aumentou.","output2.sistema")
								if(usr.EhVip)
									if(usr.level<200)
										usr.trovaoN+=4
										if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
											usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
										else
											usr.exp+=40
											usr.Levelup()
									else
										usr.trovaoN+=2
										if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
											usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
										else
											usr.exp+=20
											usr.Levelup()
									if(usr.trovaoN<5000)
										usr.nivelElementoR="Basico"
									if(usr.trovaoN==5000)
										usr.nivelElementoR="Avancado"
										world<<"[usr] está no nível Avançado em Raiton!"
									if(usr.trovaoN==12500)
										usr.nivelElementoR="Experiente"
										world<<"[usr] está no nível Experiente em Raiton!"
									if(usr.trovaoN==25000)
										usr.nivelElementoR="Dominador"
										world<<"[usr] está no nível Dominador em Raiton!"
									if(usr.trovaoN==50000)
										usr.nivelElementoR="Mestre"
										world<<"[usr] se tornou Mestre em Raiton!"
									if(usr.trovaoN==100000)
										usr.nivelElementoR="Anciao"
										world<<"[usr] se tornou Ancião em Raiton!"
								else
									if(usr.level<200)
										usr.trovaoN+=3
										if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
											usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
										else
											usr.exp+=30
											usr.Levelup()
									else
										usr.trovaoN+=1
										if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
											usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
										else
											usr.exp+=10
											usr.Levelup()
									if(usr.trovaoN<5000)
										usr.nivelElementoR="Basico"
									if(usr.trovaoN==5000)
										usr.nivelElementoR="Avancado"
										world<<"[usr] está no nível Avançado em Raiton!"
									if(usr.trovaoN==12500)
										usr.nivelElementoR="Experiente"
										world<<"[usr] está no nível Experiente em Raiton!"
									if(usr.trovaoN==25000)
										usr.nivelElementoR="Dominador"
										world<<"[usr] está no nível Dominador em Raiton!"
									if(usr.trovaoN==50000)
										usr.nivelElementoR="Mestre"
										world<<"[usr] se tornou Mestre em Raiton!"
									if(usr.trovaoN==100000)
										usr.nivelElementoR="Anciao"
										world<<"[usr] se tornou Ancião em Raiton!"
							else
								usr<<"Você já chegou ao máximo em Raiton."
						sleep(300)
						if(!usr.ElementoTreino)
							return
						if(usr) if(usr.ElementoTreino==0) return
						if(usr.chakra > 5)
							if(usr.trovaoN<100000)
								flick("tr",src)
								flick("tr",src)
								flick("tr",src)
								usr<<output("Sua perícia em Raiton aumentou.","output2.sistema")
								if(usr.level<200)
									usr.trovaoN+=3
									if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
										usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
									else
										usr.exp+=30
										usr.Levelup()
								else
									usr.trovaoN+=1
									if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
										usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
									else
										usr.exp+=10
										usr.Levelup()
								if(usr.trovaoN<5000)
									usr.nivelElementoR="Basico"
								if(usr.trovaoN==5000)
									usr.nivelElementoR="Avancado"
									world<<"[usr] está no nível Avançado em Raiton!"
								if(usr.trovaoN==12500)
									usr.nivelElementoR="Experiente"
									world<<"[usr] está no nível Experiente em Raiton!"
								if(usr.trovaoN==25000)
									usr.nivelElementoR="Dominador"
									world<<"[usr] está no nível Dominador em Raiton!"
								if(usr.trovaoN==50000)
									usr.nivelElementoR="Mestre"
									world<<"[usr] se tornou Mestre em Raiton!"
								if(usr.trovaoN==100000)
									usr.nivelElementoR="Anciao"
									world<<"[usr] se tornou Ancião em Raiton!"
							else
								usr<<"Você já chegou ao máximo em Raiton."
						sleep(600)
						if(!usr.ElementoTreino)
							return
						if(usr) if(usr.ElementoTreino==0) return
						if(usr.chakra > 5)
							if(usr.trovaoN<100000)
								flick("tr",src)
								flick("tr",src)
								flick("tr",src)
								usr<<output("Sua perícia em Raiton aumentou.","output2.sistema")
								if(usr.level<200)
									usr.trovaoN+=3
									if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
										usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
									else
										usr.exp+=30
										usr.Levelup()
								else
									usr.trovaoN+=1
									if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
										usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
									else
										usr.exp+=10
										usr.Levelup()
								if(usr.trovaoN<5000)
									usr.nivelElementoR="Basico"
								if(usr.trovaoN==5000)
									usr.nivelElementoR="Avancado"
									world<<"[usr] está no nível Avançado em Raiton!"
								if(usr.trovaoN==12500)
									usr.nivelElementoR="Experiente"
									world<<"[usr] está no nível Experiente em Raiton!"
								if(usr.trovaoN==25000)
									usr.nivelElementoR="Dominador"
									world<<"[usr] está no nível Dominador em Raiton!"
								if(usr.trovaoN==50000)
									usr.nivelElementoR="Mestre"
									world<<"[usr] se tornou Mestre em Raiton!"
								if(usr.trovaoN==100000)
									usr.nivelElementoR="Anciao"
									world<<"[usr] se tornou Ancião em Raiton!"
							else
								usr<<"Você já chegou ao máximo em Raiton."
						if(usr.chakra <= 5)
							usr<<output("Você parou de treinar perícia em Raiton.","output2.sistema")
							usr.trainando=0
							usr.froze=0
							usr.move=1
							usr.ElementoTreino=0
							usr.canElementoTreino=1
							spawn(600)
								usr.canElementoTreino=0
								usr<<output("Já pode treinar novamente!","output2.sistema")


		Leaf
			name="Treinar na Folha"
			icon='NarutoStuff.dmi'
			icon_state="Leaf"
			verb/tv()
				set src in oview(1)
				set category = "Treinamento"
				set name = "Treinar elemento"
				if(usr.deslogado)return
				if(!usr.Fuuton)
					usr<<"Você não possui afinidade com esse elemento!"
					return
				if(usr.ventoN>=100000)
					usr<<"Já atingiu o máximo nesse elemento!"
					return
				if(usr.chakra <= 100)
					usr<<"Você não possui chakra suficiente!"
					return
				if(usr.cast)
					usr<<"Não agora."
					return
				if(usr.froze&&!usr.ElementoTreino)
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
				if(usr.canElementoTreino)
					usr<<"Aguarde um pouco!"
					return
				if(usr.ElementoTreino)
					usr<<output("Você parou de treinar Fuuton na folha!","output2.sistema")
					usr.treinando=0
					usr.froze=0
					usr.move=1
					usr.ElementoTreino=0
					usr.canElementoTreino=1
					spawn(600)
						usr.canElementoTreino=0
						usr<<output("Já pode treinar novamente!","output2.sistema")
				else
					usr.chakra-=100
					usr.ElementoTreino=1
					usr.froze=1
					usr.move=0
					usr.trainando=1
					usr<<output("Você esta treinando seu elemento tentando cortar a folha","output2.sistema")
					while(usr.ElementoTreino)
						if(usr.concing)
							usr.concing=0
							usr.ElementoTreino=0
							return
						if(usr.vconcing)
							usr.vconcing=0
							usr.ElementoTreino=0
							return
						if(usr.libering)
							usr.libering=0
							usr.ElementoTreino=0
							return
						if(usr.vlibering)
							usr.vlibering=0
							usr.ElementoTreino=0
							return
						if(usr.treinamento)
							usr.treinamento=0
							usr.ElementoTreino=0
							return
						if(usr.armastreino)
							usr.armastreino=0
							usr.treinamento=0
							usr.ElementoTreino=0
							return
						if(usr.varmastreino)
							usr.varmastreino=0
							usr.ElementoTreino=0
							return
						if(usr.vtaitreino)
							usr.vtaitreino=0
							usr.ElementoTreino=0
							return
						if(usr.taitreino)
							usr.taitreino=0
							usr.ElementoTreino=0
							return
						sleep(300)
						if(!usr.ElementoTreino)
							return
						if(usr) if(usr.ElementoTreino==0) return
						if(usr.chakra > 5)
							if(usr.ventoN<100000)
								flick("tv",src)
								flick("tv",src)
								flick("tv",src)
								usr<<output("Sua perícia em Fuuton aumentou.","output2.sistema")
								if(usr.level<200)
									usr.ventoN+=3
									if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
										usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
									else
										usr.exp+=30
										usr.Levelup()
								else
									usr.ventoN+=1
									if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
										usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
									else
										usr.exp+=10
										usr.Levelup()
								if(usr.ventoN<5000)
									usr.nivelElementoV="Basico"
								if(usr.ventoN==5000)
									usr.nivelElementoV="Avancado"
									world<<"[usr] está no nível Avançado em Fuuton!"
								if(usr.ventoN==12500)
									usr.nivelElementoV="Experiente"
									world<<"[usr] está no nível Experiente em Fuuton!"
								if(usr.ventoN==25000)
									usr.nivelElementoV="Dominador"
									world<<"[usr] está no nível Dominador em Fuuton!"
								if(usr.ventoN==50000)
									usr.nivelElementoV="Mestre"
									world<<"[usr] se tornou Mestre em Fuuton!"
								if(usr.ventoN==100000)
									usr.nivelElementoV="Anciao"
									world<<"[usr] se tornou Ancião em Fuuton!"
							else
								usr<<"Você já chegou ao máximo em Fuuton."
						sleep(600)
						if(!usr.ElementoTreino)
							return
						if(usr) if(usr.ElementoTreino==0) return
						if(usr.chakra > 5)
							if(usr.ventoN<100000)
								flick("tv",src)
								flick("tv",src)
								flick("tv",src)
								usr<<output("Sua perícia em Fuuton aumentou.","output2.sistema")
								if(usr.EhVip)
									if(usr.level<200)
										usr.ventoN+=4
										if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
											usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
										else
											usr.exp+=40
											usr.Levelup()
									else
										usr.ventoN+=2
										if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
											usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
										else
											usr.exp+=20
											usr.Levelup()
									if(usr.ventoN<5000)
										usr.nivelElementoV="Basico"
									if(usr.ventoN==5000)
										usr.nivelElementoV="Avancado"
										world<<"[usr] está no nível Avançado em Fuuton!"
									if(usr.ventoN==12500)
										usr.nivelElementoV="Experiente"
										world<<"[usr] está no nível Experiente em Fuuton!"
									if(usr.ventoN==25000)
										usr.nivelElementoV="Dominador"
										world<<"[usr] está no nível Dominador em Fuuton!"
									if(usr.ventoN==50000)
										usr.nivelElementoV="Mestre"
										world<<"[usr] se tornou Mestre em Fuuton!"
									if(usr.ventoN==100000)
										usr.nivelElementoV="Anciao"
										world<<"[usr] se tornou Ancião em Fuuton!"
								else
									if(usr.level<200)
										usr.ventoN+=3
										if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
											usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
										else
											usr.exp+=30
											usr.Levelup()
									else
										usr.ventoN+=1
										if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
											usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
										else
											usr.exp+=10
											usr.Levelup()
									if(usr.ventoN<5000)
										usr.nivelElementoV="Basico"
									if(usr.ventoN==5000)
										usr.nivelElementoV="Avancado"
										world<<"[usr] está no nível Avançado em Fuuton!"
									if(usr.ventoN==12500)
										usr.nivelElementoV="Experiente"
										world<<"[usr] está no nível Experiente em Fuuton!"
									if(usr.ventoN==25000)
										usr.nivelElementoV="Dominador"
										world<<"[usr] está no nível Dominador em Fuuton!"
									if(usr.ventoN==50000)
										usr.nivelElementoV="Mestre"
										world<<"[usr] se tornou Mestre em Fuuton!"
									if(usr.ventoN==100000)
										usr.nivelElementoV="Anciao"
										world<<"[usr] se tornou Ancião em Fuuton!"
							else
								usr<<"Você já chegou ao máximo em Fuuton."
						sleep(300)
						if(!usr.ElementoTreino)
							return
						if(usr) if(usr.ElementoTreino==0) return
						if(usr.chakra > 5)
							if(usr.ventoN<100000)
								flick("tv",src)
								flick("tv",src)
								flick("tv",src)
								usr<<output("Sua perícia em Fuuton aumentou.","output2.sistema")
								if(usr.level<200)
									usr.ventoN+=3
									if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
										usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
									else
										usr.exp+=30
										usr.Levelup()
								else
									usr.ventoN+=1
									if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
										usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
									else
										usr.exp+=10
										usr.Levelup()
								if(usr.ventoN<5000)
									usr.nivelElementoV="Basico"
								if(usr.ventoN==5000)
									usr.nivelElementoV="Avancado"
									world<<"[usr] está no nível Avançado em Fuuton!"
								if(usr.ventoN==12500)
									usr.nivelElementoV="Experiente"
									world<<"[usr] está no nível Experiente em Fuuton!"
								if(usr.ventoN==25000)
									usr.nivelElementoV="Dominador"
									world<<"[usr] está no nível Dominador em Fuuton!"
								if(usr.ventoN==50000)
									usr.nivelElementoV="Mestre"
									world<<"[usr] se tornou Mestre em Fuuton!"
								if(usr.ventoN==100000)
									usr.nivelElementoV="Anciao"
									world<<"[usr] se tornou Ancião em Fuuton!"
							else
								usr<<"Você já chegou ao máximo em Fuuton."
						sleep(600)
						if(!usr.ElementoTreino)
							return
						if(usr) if(usr.ElementoTreino==0) return
						if(usr.chakra > 5)
							if(usr.ventoN<100000)
								flick("tv",src)
								flick("tv",src)
								flick("tv",src)
								usr<<output("Sua perícia em Fuuton aumentou.","output2.sistema")
								if(usr.level<200)
									usr.ventoN+=3
									if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
										usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
									else
										usr.exp+=30
										usr.Levelup()
								else
									usr.ventoN+=1
									if(usr.rank == "Estudante"&&usr.level >=325||usr.rank == "Genin"&&usr.level >=325||usr.rank == "Chuunin"&&usr.level >=450||usr.seals>=100&&usr.level >=1000)
										usr<<output("Seu level não sobe mais para o seu rank!","output2.sistema")
									else
										usr.exp+=10
										usr.Levelup()
								if(usr.ventoN<5000)
									usr.nivelElementoV="Basico"
								if(usr.ventoN==5000)
									usr.nivelElementoV="Avancado"
									world<<"[usr] está no nível Avançado em Fuuton!"
								if(usr.ventoN==12500)
									usr.nivelElementoV="Experiente"
									world<<"[usr] está no nível Experiente em Fuuton!"
								if(usr.ventoN==25000)
									usr.nivelElementoV="Dominador"
									world<<"[usr] está no nível Dominador em Fuuton!"
								if(usr.ventoN==50000)
									usr.nivelElementoV="Mestre"
									world<<"[usr] se tornou Mestre em Fuuton!"
								if(usr.ventoN==100000)
									usr.nivelElementoV="Anciao"
									world<<"[usr] se tornou Ancião em Fuuton!"
							else
								usr<<"Você já chegou ao máximo em Fuuton."
						if(usr.chakra <= 5)
							usr<<output("Você parou de treinar perícia em Fuuton.","output2.sistema")
							usr.trainando=0
							usr.froze=0
							usr.move=1
							usr.ElementoTreino=0
							usr.canElementoTreino=1
							spawn(600)
								usr.canElementoTreino=0
								usr<<output("Já pode treinar novamente!","output2.sistema")

//--------------------------------------------------Jutsus dos sem clans----------------------------------------------------------




//---------------------Genjutsu-------------------------------------





//-------------------------------------------Taijutsu-----------------------------------------







//---------------------------------------------------marionete--------------------------------------------------





//----------------------------------------------------------------------------------------------------------------------------









obj/furaaa
	Kika
		icon = 'kikaifura.dmi'
		icon_state = "ventu1"
		density = 0
		layer = MOB_LAYER - 1
		New()
			spawn(20) del(src)
	kika2
		icon = 'kikaifura.dmi'
		icon_state = "ventu2"
		density = 0
		layer = MOB_LAYER - 1
		New()
			spawn(20) del(src)
	kika3
		icon = 'kikaifura.dmi'
		icon_state = "ventu3"
		density = 0
		layer = MOB_LAYER - 1
		New()
			spawn(20) del(src)
	kika4
		icon = 'kikaifura.dmi'
		icon_state = "ventu4"
		density = 0
		layer = MOB_LAYER - 1
		New()
			spawn(20) del(src)
	kika5
		icon = 'kikaifura.dmi'
		icon_state = "ventu5"
		density = 0
		layer = MOB_LAYER - 1
		New()
			spawn(20) del(src)
	kika6
		icon = 'kikaifura.dmi'
		icon_state = "ventu6"
		density = 0
		layer = MOB_LAYER - 1
		New()
			spawn(20) del(src)
	kika7
		icon = 'kikaifura.dmi'
		icon_state = "ventu7"
		density = 0
		layer = MOB_LAYER - 1
		New()
			spawn(20) del(src)
	kika8
		icon = 'kikaifura.dmi'
		icon_state = "ventu8"
		density = 0
		layer = MOB_LAYER - 1
		New()
			spawn(20) del(src)
	kika9
		icon = 'kikaifura.dmi'
		icon_state = "ventu9"
		density = 0
		layer = MOB_LAYER - 1
		New()
			spawn(20) del(src)





obj/mushi
	mushi1
		icon = 'Mushikame.dmi'
		icon_state = "1"
		density = 1
	mushi2
		icon = 'Mushikame.dmi'
		icon_state = "2"
		density = 1
	mushi3
		icon = 'Mushikame.dmi'
		icon_state = "3"
		density = 1
	mushi4
		icon = 'Mushikame.dmi'
		icon_state = "4"
		density = 1
	mushi5
		icon = 'Mushikame.dmi'
		icon_state = "5"
		density = 1
		layer = MOB_LAYER + 1
	mushi6
		icon = 'Mushikame.dmi'
		icon_state = "6"
		density = 1
	mushi7
		icon = 'Mushikame.dmi'
		icon_state = "7"
		density = 1
	mushi8
		icon = 'Mushikame.dmi'
		icon_state = "8"
		density = 1
	mushi9
		icon = 'Mushikame.dmi'
		icon_state = "9"
		density = 1







obj/var
	delay = 0
mob/var/tmp
	caught = 0
	freeztime=0
obj/var/tmp
	target=""
	move=1



mob/naranew
	verb
		kageshibari(mob/M in oview(7))
			set category = "Jutsus"
			set name = "Kage Shibari no Jutsu"
			usr.Handseals()
			if(usr.resting)
				return
			if(usr.meditating)
				return
			if(usr.cast)
				return
			if(!usr.handseals)
				return
			if(usr.froze)
				usr<<"Your frozen"
				return
			if(usr.Frozen)
				usr<<"Your frozen"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.chakra <= 100)
				usr<<"Você não tem chakra o bastante!"
			else
				if(usr.Kshibari)
					for(var/obj/shibari/K in world)
						if(K.owner==usr)
							del(K)
							usr.Kshibari=0
							usr.Frozen=0
							M.Frozen=0
							M.caught=0
							M.overlays-='kagekubi.dmi'
							M.overlays-='kagekubi.dmi'
							M.overlays-='kagekubi.dmi'
					for(var/obj/shibaritrail/T in world)
						if(T.owner==usr)
							del(T)
							usr.Kshibari=0
							usr.Frozen=0
							M.Frozen=0
							M.caught=0
							M.overlays-='kagekubi.dmi'
							M.overlays-='kagekubi.dmi'
							M.overlays-='kagekubi.dmi'
				else
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#708090>K</FONT><FONT COLOR=#707f8d>a</FONT><FONT COLOR=#6f7c89>g</FONT><FONT COLOR=#6f7a85>e</FONT><FONT COLOR=#6e7781> </FONT><FONT COLOR=#6d757d>S</FONT><FONT COLOR=#6c7379>h</FONT><FONT COLOR=#6b7075>i</FONT><FONT COLOR=#6b6e71>b</FONT><FONT COLOR=#6a6b6d>a</FONT><FONT COLOR=#696969>r</FONT><FONT COLOR=#777777>i</FONT><FONT COLOR=#848484> </FONT><FONT COLOR=#929292>N</FONT><FONT COLOR=#a0a0a0>o</FONT><FONT COLOR=#aeaeae> </FONT><FONT COLOR=#bbbbbb>J</FONT><FONT COLOR=#c9c9c9>u</FONT><FONT COLOR=#d7d7d7>t</FONT><FONT COLOR=#e5e5e5>s</FONT><FONT COLOR=#f2f2f2>u</FONT><FONT COLOR=#ffffff>!</FONT>"
					var/obj/shibari/K = new /obj/shibari
					K.loc = usr.loc
					usr.Chakragain()
					K.Move_Delay = 1
					K.gen = usr.gen
					usr.Kshibari=1
					K.owner = usr
					K.target=M
					usr.Frozen=1

		ExtendShadow()
			set category = "Jutsus"
			set name = "Esticar sombra"
			usr.chakra -= 100
			for(var/obj/shibari/K in world)
				if(K.owner == usr)
					step_towards(K,K.target)
				if(usr.chakra<=100)
					del(K)
					usr.Kshibari=0
					usr<<"You have hold has sliped"
					for(var/obj/shibaritrail/T in world)
						usr.Frozen=0
						if(T.owner == usr)
							usr.Frozen=0
							del(T)
		RetractShadow()
			set category = "Jutsus"
			set name = "Diminuir Sombra"
			usr.chakra -= 50
			for(var/obj/shibari/K in world)
				K.move=1
				if(K.owner == usr)
					for(var/mob/M in K.loc)
						if(K.owner == M)
							if(K.loc == M.loc)
								del(K)
								usr.Frozen=0
								usr.Kshibari=0
								M.Frozen=0
								for(var/obj/shibaritrail/A in world)
									if(A.owner==usr)
										del(A)
								return
					for(var/obj/shibaritrail/T in oview(1,K))
						if(T.owner==usr)
							K.loc = T.loc
							K.dir=T.dir
							del(T)
						else
							del(K)
							for(var/obj/shibaritrail/L in world)
								if(L.owner==usr)
									del(L)
							usr.Frozen=0
							usr.kubi=0
							usr.Kshibari=0
							usr.cast=0
							del(K)

							del(T)

						for(var/mob/M in oview(11,K))
							if(M==K.target)
								if(K.loc==M.loc)
									M.Frozen=1
									M.caught=1
								else
									M.Frozen=0
									M.caught=0
									M.kubi=0
									M.overlays-='kagekubi.dmi'
									M.overlays-='kagekubi.dmi'
									M.overlays-='kagekubi.dmi'
		KageKubIwabaru()
			set category = "Jutsus"
			set name="Kage Kubi Shibaru"
			if(usr.cast)
				return
			if(usr.froze)
				usr<<"Your frozen"
				return
			if(usr.Frozen)
				usr<<"Your frozen"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			for(var/obj/shibari/K in world)
				if(K.owner==usr)
					for(var/mob/M in world)
						if(M.caught&&!M.kubi)
							M.kubi=1
							usr.Chakragain()
							usr.chakra-=100
							M.overlays+='kagekubi.dmi'
							var/damage=round(usr.gen*3) - M.Resistencia
							if(damage<=5)
								usr<<"Your neck bind is too weak, [M] breaks out!"
								return
							else
								ROFL
									if(usr.chakra<=5)
										M.Frozen=0
										usr.Frozen=0
										M.caught=0
										M.kubi=0
										M.overlays-='kagekubi.dmi'
										M.overlays-='kagekubi.dmi'
										M.overlays-='kagekubi.dmi'
										for(var/obj/shibaritrail/T in world)
											if(T.owner==usr)
												del(T)
												usr.Frozen=0
												M.caught=0
												M.caught=0
												M.Frozen=0
												M.kubi=0
												M.overlays-='kagekubi.dmi'
												M.overlays-='kagekubi.dmi'
												M.overlays-='kagekubi.dmi'
												return
									if(!M.caught)
										M.Frozen=0
										usr.Frozen=0
										M.caught=0
										M.kubi=0
										M.overlays-='kagekubi.dmi'
										M.overlays-='kagekubi.dmi'
										M.overlays-='kagekubi.dmi'
										for(var/obj/shibaritrail/T in world)
											if(T.owner==usr)
												del(T)
												usr.Frozen=0
												M.caught=0
												M.caught=0
												M.Frozen=0
												M.kubi=0
												M.overlays-='kagekubi.dmi'
												M.overlays-='kagekubi.dmi'
												M.overlays-='kagekubi.dmi'
												return
									if(!usr.Kshibari)
										M.Frozen=0
										usr.Frozen=0
										M.caught=0
										M.kubi=0
										M.overlays-='kagekubi.dmi'
										M.overlays-='kagekubi.dmi'
										M.overlays-='kagekubi.dmi'
										for(var/obj/shibaritrail/T in world)
											if(T.owner==usr)
												del(T)
												usr.Frozen=0
												M.caught=0
												M.caught=0
												M.Frozen=0
												M.kubi=0
												M.overlays-='kagekubi.dmi'
												M.overlays-='kagekubi.dmi'
												M.overlays-='kagekubi.dmi'
									if(!M.kubi)
										M.Frozen=0
										usr.Frozen=0
										M.caught=0
										M.kubi=0
										M.overlays-='kagekubi.dmi'
										M.overlays-='kagekubi.dmi'
										M.overlays-='kagekubi.dmi'
										for(var/obj/shibaritrail/T in world)
											if(T.owner==usr)
												del(T)
												usr.Frozen=0
												M.caught=0
												M.caught=0
												M.Frozen=0
												M.kubi=0
												M.overlays-='kagekubi.dmi'
												M.overlays-='kagekubi.dmi'
												M.overlays-='kagekubi.dmi'
												return
									else
										usr.chakra-=100
										view(usr)<<"[M] recebe [damage]  de dano do Neck Bind"
										M.health-=damage
										if(M.health<=0)
											M.Death(usr)
											usr.Frozen=0
											usr.Kshibari=0
											usr.kubi=0
											return
										sleep(40)
										goto ROFL






//suigetsu











//------------------------------------------ Estilos -----------------------------------------------
mob/jutsu
	verb
		Shunpo()
			set category="TaiJutsu"
			set name ="Movimento Rapido"
			if(usr.Weights)return
			if(usr.velocista)usr.velocista = 0
			else usr.velocista=1

mob/Haku
	verb
		HakuShunpo()
			set category="Jutsus"
			set name ="Makyou Teleport"
			if(usr.Weights)return
			if(usr.Telehaku)
				usr.Telehaku = 0
				usr<<"Você <b>desativou</b> seu teleport entre espelhos"
			else
				usr.Telehaku=1
				usr<<"Você <b>ativou</b> seu teleport entre espelhos"

mob/var/tmp/Telehaku=0

mob/jutsu
	verb
		EstiloVelocidade() // Verb used for cast the beam
			set category = "TaiJutsu"
			set name = "Estilo Velocidade"
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(!usr.estilovel)
				usr<<"Você está usando toda sua velocidade"
				usr.estilovel=1
				if(usr.veloN<=200000)usr.Move_Delay = 0.5
				else
					usr.Move_Delay = 0
					usr.verbs += new /mob/jutsu/verb/Shunpo()
			else
				usr.Move_Delay = 0.7
				usr<<"Você volta a sua velocidade normal"
				usr.estilovel=0
				usr.verbs -= new /mob/jutsu/verb/Shunpo()

mob/jutsu
	verb
		EstiloForce() // Verb used for cast the beam
			set category = "TaiJutsu"
			set name = "Estilo Força"
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(!usr.estiloforce)
				usr<<"Você está usando toda sua força"
				usr.estiloforce=1
				if(usr.forceN<=3000)usr.tai = usr.tai*1.1
				else usr.tai = usr.tai*1.2

			else
				usr.tai = usr.Mtai
				usr<<"Você volta a sua força normal"
				usr.estiloforce=0

mob/jutsu
	verb
		ReservadeChakra()
			set name = "Reservas de Chakra"
			set category="Treinamento"
			if(usr.Kaiten)
				usr<<"Não pode usar isso enquanto está em uma defesa."
				return
			if(usr.battlingRC)
				return
			if(usr.froze)
				usr<<"Você está paralisado"
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
			if(usr.reserving)
				usr<<"Faz muito pouco tempo q vc usou suas reservas. Aguarde mais tempo"
				return
			if(usr.hyoushou)
				return
			if(usr.chakra == usr.Mchakra)
				usr<<"Você não precisa descansar.."
				return
			if(usr.meditating||usr.onwater)
				return
			usr<<"Você recorre as suas reservas de chakra..."
			usr.cast=1
			usr.reserving=1
			usr.icon_state = "rest"
			overlays+='chakra.dmi'
			sleep(150)
			usr.chakra = usr.Mchakra
			usr.cast=0
			overlays-='chakra.dmi'
			sleep(1200)
			usr.reserving=0
mob/var/tmp/descansando=0
mob/jutsu
	verb
		Descansar()
			set name = "Descansar"
			set category="Treinamento"
			if(usr.Kaiten)
				usr<<"Não pode usar isso enquanto está em uma defesa."
				return
			if(usr.battlingRC)
				return
			if(usr.froze)
				usr<<"Você está paralisado"
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
			if(usr.reserving)
				usr<<"Faz muito pouco tempo q vc usou suas reservas. Aguarde mais tempo"
				return
			if(usr.hyoushou)
				return
			if(usr.resting)
				sleep(1)
				usr.resting=0
				usr<<"Vc parou de descansar..."
				usr.Frozen = 0
				usr.descansando=0
				usr.icon_state = ""
				overlays -= 'elec.dmi'
				return
			else
				if(usr.health == usr.maxhealth)
					usr<<"Vc não precisa descansar..."
					return
				if(usr.meditating||usr.onwater||usr.treinamento||usr.libering||usr.concing||usr.vmeditating||usr.vconcing||usr.vlibering)
					return
				usr<<"Vc inicia seu descanso..."
				usr.resting=1
				usr.descansando=1
				usr.Frozen = 1
				usr.icon_state = "rest"
				overlays+='elec.dmi'
				usr.rest()
				overlays-='elec.dmi'
				return








obj
	mizu
		icon ='smb.dmi'
		icon_state=""












mob/Lee
	verb
		UraRenge2()
			set category = "Jutsus"
			set name="Lotus Secundario"
			if(usr.health <= 5000)
				usr << "Você está sem energia!"
				return
			if(usr.resting == 1)
				usr << "Você está descansando!"
				return
			if(usr.chakra <= 1000)
				usr << "Você está sem chakra"
				return
			if(!usr.gate1)
				usr << "Abra os portões primeiro!"
				return
			if(usr.cast == 1)
				spawn(20)
					usr.cast = 0
				return
			usr.cast = 1
			usr.health -= 5000
			usr.chakra -= 1000
			for(var/mob/M in oview(9))
			var/damage = round(usr.tai)
			if(damage<=0)damage=0
			view(10) << "[usr.name] falou:<font color=red><b>Lotus Secundario!"
			usr.health -= usr.health/3
			var/list/menu = new()
			var/list/niguem = "Niguem"
			for(var/mob/M in oview(3))
				menu += M
			menu += niguem
			var/A = input("Quem você deseja atacar?", "Lotus") in menu
			var/mob/M = A
			if(M == niguem)
				usr.cast  = 0
				..()
			else
				usr.density = 0
				usr.move = 0
				var/a1 = new/obj/lotuss/ventu1(locate(M.x-1,M.y+1,M.z))
				var/a2 = new/obj/lotuss/ventu2(locate(M.x,M.y+1,M.z))
				var/a3 = new/obj/lotuss/ventu3(locate(M.x+1,M.y+1,M.z))
				var/b1 = new/obj/lotuss/ventu4(locate(M.x-1,M.y,M.z))
				var/b2 = new/obj/lotuss/ventu5(locate(M.x,M.y,M.z))
				var/b3 = new/obj/lotuss/ventu6(locate(M.x+1,M.y,M.z))
				var/c1 = new/obj/lotuss/ventu7(locate(M.x-1,M.y-1,M.z))
				var/c2 = new/obj/lotuss/ventu8(locate(M.x,M.y-1,M.z))
				var/c3 = new/obj/lotuss/ventu9(locate(M.x+1,M.y-1,M.z))
				usr.icon_state = "zan"
				usr.Move(locate(M.x-1,M.y,M.z))
				sleep(2)
				usr.Move(locate(M.x+1,M.y,M.z))
				sleep(1)
				usr.Move(locate(M.x,M.y-1,M.z))
				sleep(1)
				usr.Move(locate(M.x,M.y+1,M.z))
				sleep(1)
				usr.Move(locate(M.x-1,M.y,M.z))
				sleep(2)
				usr.Move(locate(M.x+1,M.y,M.z))
				sleep(1)
				usr.Move(locate(M.x,M.y-1,M.z))
				sleep(1)
				usr.Move(locate(M.x,M.y+1,M.z))
				sleep(1)
				usr.Move(locate(M.x-1,M.y,M.z))
				sleep(2)
				usr.Move(locate(M.x+1,M.y,M.z))
				sleep(1)
				usr.Move(locate(M.x,M.y-1,M.z))
				sleep(1)
				usr.Move(locate(M.x,M.y+1,M.z))
				sleep(1)
				usr.Move(locate(M.x-1,M.y,M.z))
				sleep(2)
				usr.Move(locate(M.x+1,M.y,M.z))
				sleep(1)
				usr.Move(locate(M.x,M.y-1,M.z))
				sleep(1)
				usr.Move(locate(M.x,M.y+1,M.z))
				del(a1)
				del(a2)
				del(a3)
				del(b1)
				del(b2)
				del(b3)
				del(c1)
				del(c2)
				del(c3)
				usr.icon_state = "chutealto"
				sleep(5)
				usr.icon_state = ""
				usr.icon_state = "levantando"
				M.Move(locate(M.x,M.y+3,M.z))
				usr.Move(locate(usr.x,usr.y+3,usr.z))
				var/o = new /obj/sombra(locate(M.x,M.y-3,M.z))
				var/o1 = new /obj/sombra(locate(usr.x,usr.y-3,usr.z))
				usr.icon_state = "sparkick2"
				sleep(5)
				usr.icon_state = ""
				M.Move(locate(M.x,M.y+2,M.z))
				usr.Move(locate(usr.x,usr.y+1,usr.z))
				usr.icon_state = "chutealto"
				sleep(5)
				usr.icon_state = ""
				M.Move(locate(M.x,M.y+2,M.z))
				usr.Move(locate(usr.x,usr.y+1,usr.z))
				usr.icon_state = "sparkick2"
				sleep(5)
				usr.icon_state = ""
				M.Move(locate(M.x,M.y,M.z))
				usr.Move(locate(M.x,M.y,M.z))
				M.layer = MOB_LAYER - 1
				M.icon_state = "lotusrenge1"
				usr.icon_state = "lotusrenge1"
				sleep(5)
				M.Move(locate(M.x,M.y-1,M.z))
				usr.Move(locate(M.x,M.y,M.z))
				sleep(5)
				M.icon_state = "lotusrenge2"
				usr.icon_state = "lotusrenge2"
				del(o)
				del(o1)
				M.Move(locate(M.x,M.y-1,M.z))
				usr.Move(locate(M.x,M.y,M.z))
				sleep(5)
				M.Move(locate(M.x,M.y-1,M.z))
				usr.Move(locate(M.x,M.y,M.z))
				sleep(3)
				M.Move(locate(M.x,M.y-1,M.z))
				usr.Move(locate(M.x,M.y,M.z))
				sleep(5)
				M.Move(locate(M.x,M.y-1,M.z))
				usr.Move(locate(M.x,M.y,M.z))
				sleep(3)
				M.Move(locate(M.x,M.y-1,M.z))
				usr.Move(locate(M.x,M.y,M.z))
				sleep(5)
				M.Move(locate(M.x,M.y-1,M.z))
				usr.Move(locate(M.x,M.y,M.z))

				usr.density = 1
				usr.Move(locate(usr.x,usr.y-2,usr.z))
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				M.Death(usr)
				view()<<"[usr] acertou com [damage] o [M] com o Lotus secundario!"
				M.icon_state -= "lotusrenge1"
				usr.icon_state -= "lotusrenge1"
				M.icon_state -= "lotusrenge2"
				usr.icon_state -= "lotusrenge2"
				usr.Move_Delay = 5
				usr.cast=0
				sleep(90)
				usr.Move_Delay = 0.7

obj
	sombra
		icon = 'sombra.dmi'
		density = 0
obj/lotuss
	ventu1
		icon = 'lotusobj.dmi'
		icon_state = "ventu1"
		density = 0
		layer = MOB_LAYER - 1
	ventu2
		icon = 'lotusobj.dmi'
		icon_state = "ventu2"
		density = 0
		layer = MOB_LAYER - 1
	ventu3
		icon = 'lotusobj.dmi'
		icon_state = "ventu3"
		density = 0
		layer = MOB_LAYER - 1
	ventu4
		icon = 'lotusobj.dmi'
		icon_state = "ventu4"
		density = 0
		layer = MOB_LAYER - 1
	ventu5
		icon = 'lotusobj.dmi'
		icon_state = "ventu5"
		density = 0
		layer = MOB_LAYER - 1
	ventu6
		icon = 'lotusobj.dmi'
		icon_state = "ventu6"
		density = 0
		layer = MOB_LAYER - 1
	ventu7
		icon = 'lotusobj.dmi'
		icon_state = "ventu7"
		density = 0
		layer = MOB_LAYER - 1
	ventu8
		icon = 'lotusobj.dmi'
		icon_state = "ventu8"
		density = 0
		layer = MOB_LAYER - 1
	ventu9
		icon = 'lotusobj.dmi'
		icon_state = "ventu9"
		density = 0
		layer = MOB_LAYER - 1








mob/var/dnasenjuu=0
mob/var/msroubado=0
mob/var/roubado=0
mob/var/ladrao=0
mob/jutsu
	verb
		Roubo(mob/M in oview (1)) // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Roubar Sharingan"
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
			if(M.rank=="Genin")
				usr<<"Ele precisa ser Chuunin ou mais"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(M.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(M.Mgen>=usr.Mgen)
				usr<<"Vc não é forte o bastante"
				M<<"Ele é fraco"
				usr.Frozen=1
				sleep(30)
				usr.Frozen=0
				return
			if(M.mangekyou)
				usr<<"Ele não possui o Mangekyou Sharingan"
				return
			if(M.mangeN<=2)
				usr<<"Ele ainda não possui um Mangekyou desenvolvido"
				return
			if(M.health<=M.maxhealth/3)
				usr.RandomChakra05()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr<<"Vc começa a tentar a roubar o sharingan de [M]"
				M<<"[usr] esta tentando roubar seu sharingan"
				M.move=0
				M.froze=1
				usr.froze=1
				usr.move=0
				sleep(20)
				if(M.mangeN>=usr.mangeN)
					usr.random= rand(1,5)
					if(usr.random==1)
						usr<<"Vc falhou"
						M<<"Ele falhou"
						M.move=1
						M.froze=0
						sleep(30)
						usr.froze=0
						usr.move=1
					if(usr.random==2)
						usr<<"Vc falhou"
						M<<"Ele falhou"
						M.move=1
						M.froze=0
						sleep(30)
						usr.froze=0
						usr.move=1
					if(usr.random==3)
						usr<<"Vc falhou"
						M<<"Ele falhou"
						M.move=1
						M.froze=0
						sleep(30)
						usr.froze=0
						usr.move=1
					if(usr.random==4)
						usr<<"Vc falhou"
						M<<"Ele falhou"
						M.move=1
						M.froze=0
						sleep(30)
						usr.froze=0
						usr.move=1
					if(usr.random==5)
						usr<<"Vc começa a extrair o sharingan de [M]"
						M<<"Vc começa a perder seu sharingan"
						M.verbs -= new /mob/uchiha/verb/MangekyouPrep()
//						M.verbs -= new /mob/cego/verb/Help2()
						M.verbs += new /mob/verb/Help()
						M.verbs -= new /mob/jutsu/verb/Novoamat2()
						M.verbs -= new /mob/Hatake/verb/Susanoo()
						M.verbs -= new /mob/jutsu/verb/Roubo()
						usr.verbs -= new /mob/jutsu/verb/Roubo()
						usr.honra-=30
						M.mangeN=0
						M.tsukiyomi=0
						M.mangekyou=0
						M.amaterasu=0
						M.kamui=0
						M.roubado=1
						usr.ladrao=1
						usr.mangeN=0
						//M.SalvarAgora()
						sleep(30)
						M<<"Vc perdeu seu mangekyou sharingan"
						usr<<"Vc conseguiu extrair o MS de [M]"
						usr.msroubado=1
						sleep(30)
						M.move=1
						M.froze=0
						usr.froze=0
						usr.move=1
				else
					usr.random= rand(1,3)
					if(usr.random==1)
						usr<<"Vc falhou"
						M<<"Ele falhou"
						M.move=1
						M.froze=0
						sleep(30)
						usr.froze=0
						usr.move=1
					if(usr.random==2)
						usr<<"Vc começa a extrair o sharingan de [M]"
						M<<"Vc começa a perder seu sharingan"
						M.verbs -= new /mob/uchiha/verb/MangekyouPrep()
//						M.verbs -= new /mob/cego/verb/Help2()
						M.verbs += new /mob/verb/Help()
						M.verbs -= new /mob/jutsu/verb/Novoamat2()
						M.verbs -= new /mob/Hatake/verb/Susanoo()
						M.verbs -= new /mob/jutsu/verb/Roubo()
						usr.verbs -= new /mob/jutsu/verb/Roubo()
						M.mangeN=0
						M.tsukiyomi=0
						M.mangekyou=0
						M.amaterasu=0
						M.kamui=0
						usr.honra-=30
						M.roubado=1
						usr.ladrao=1
						usr.mangeN=0
						//M.SalvarAgora()
						sleep(30)
						M<<"Vc perdeu seu mangekyou sharingan"
						usr<<"Vc conseguiu extrair o MS de [M]"
						usr.msroubado=1
						sleep(30)
						M.move=1
						M.froze=0
						usr.froze=0
						usr.move=1
					if(usr.random==3)
						usr<<"Vc começa a extrair o sharingan de [M]"
						M<<"Vc começa a perder seu sharingan"
						M.verbs -= new /mob/uchiha/verb/MangekyouPrep()
//						M.verbs -= new /mob/cego/verb/Help2()
						M.verbs += new /mob/verb/Help()
						M.verbs -= new /mob/jutsu/verb/Novoamat2()
						M.verbs -= new /mob/Hatake/verb/Susanoo()
						M.verbs -= new /mob/jutsu/verb/Roubo()
						usr.verbs -= new /mob/jutsu/verb/Roubo()
						M.mangeN=0
						usr.honra-=30
						M.tsukiyomi=0
						M.mangekyou=0
						M.amaterasu=0
						M.kamui=0
						M.roubado=1
						usr.ladrao=1
						usr.mangeN=0
						//M.SalvarAgora()
						sleep(30)
						M<<"Vc perdeu seu mangekyou sharingan"
						usr<<"Vc conseguiu extrair o MS de [M]"
						usr.msroubado=1
						sleep(30)
						M.move=1
						M.froze=0
						usr.froze=0
						usr.move=1
			else
				usr<<"[M] precisa estar mais fraco"



































mob/var/tmp/mokarmor=0
mob/var/tmp/Ryoroi=0




mob/jutsu
	verb
		mizukage(mob/M in oview(3))
			set category = "Jutsus"
			set name = " Suiton Kokuangyou"
			usr.Handseals()
			if(usr.resting)
				return
			if(usr.meditating)
				return
			if(usr.cast)
				return
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
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(M.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.chakra <= 5000)
				usr<<"Você não tem chakra o bastante!"
				return
			else
				var/Sleeptime = round(usr.nin/10 + usr.gen/10 - M.gen/10)
				if(Sleeptime <= 1)
					usr << "Você não conseguiu cegar [M:name]"
					M << "[usr:name] não foi cegado por você!"
				else
					if(Sleeptime<10)
						Sleeptime = 10
					if(Sleeptime>80)
						Sleeptime=100
					M:sight |= BLIND
					usr.chakra-=5000
					usr << "Haha! [M:name] foi cegado por [src.name]!"
					M << "Haha! [M:name] foi cegado por [src.name]!"
					sleep(Sleeptime)
					M:sight &= ~BLIND
					usr << "Milagre! [M:name] pode ver novamente"
					M << "Milagre! [M:name] pode ver novamente"










obj
	Kirin_S5
		icon='Kirin Storm.dmi'
		icon_state="5"
		layer = MOB_LAYER+100
		pixel_x=-96
		pixel_y=224
		New()
			spawn(20)
			del src

	Kirin_S6
		icon='Kirin Storm.dmi'
		icon_state="6"
		layer = MOB_LAYER+100
		pixel_x=-64
		pixel_y=224
		New()
			spawn(20)
			del src
	Kirin_S7
		icon='Kirin Storm.dmi'
		icon_state="7"
		layer = MOB_LAYER+100
		pixel_x=-32
		pixel_y=224
		New()
			spawn(20)
			del src
	Kirin_S8
		icon='Kirin Storm.dmi'
		icon_state="8"
		layer = MOB_LAYER+100
		pixel_y=224
		New()
			spawn(20)
			del src
	Kirin_S9
		icon='Kirin Storm.dmi'
		icon_state="9"
		layer = MOB_LAYER+100
		pixel_x=32
		pixel_y=224
		New()
			spawn(20)
			del src
	Kirin_S10
		icon='Kirin Storm.dmi'
		icon_state="10"
		layer = MOB_LAYER+100
		pixel_x=64
		pixel_y=224
		New()
			spawn(20)
			del src
	Kirin_S11
		icon='Kirin Storm.dmi'
		icon_state="11"
		layer = MOB_LAYER+100
		pixel_x=96
		pixel_y=224
		New()
			spawn(20)
			del src
	Kirin_S12
		icon='Kirin Storm.dmi'
		icon_state="12"
		layer = MOB_LAYER+100
		pixel_x=-96
		pixel_y=192
		New()
			spawn(20)
			del src
	Kirin_S13
		icon='Kirin Storm.dmi'
		icon_state="13"
		layer = MOB_LAYER+100
		pixel_x=-64
		pixel_y=192
		New()
			spawn(20)
			del src
	Kirin_S14
		icon='Kirin Storm.dmi'
		icon_state="14"
		layer = MOB_LAYER+100
		pixel_x=-32
		pixel_y=192
		New()
			spawn(20)
			del src
	Kirin_S15
		icon='Kirin Storm.dmi'
		icon_state="15"
		layer = MOB_LAYER+100
		pixel_y=192
		New()
			spawn(20)
			del src
	Kirin_S16
		icon='Kirin Storm.dmi'
		icon_state="16"
		layer = MOB_LAYER+100
		pixel_x=32
		pixel_y=192
		New()
			spawn(20)
			del src
	Kirin_S17
		icon='Kirin Storm.dmi'
		icon_state="17"
		layer = MOB_LAYER+100
		pixel_x=64
		pixel_y=192
		New()
			spawn(20)
			del src
	Kirin_S18
		icon='Kirin Storm.dmi'
		icon_state="18"
		layer = MOB_LAYER+100
		pixel_x=96
		pixel_y=192
		New()
			spawn(20)
			del src
	Kirin_S19
		icon='Kirin Storm.dmi'
		icon_state="19"
		layer = MOB_LAYER+100
		pixel_x=-96
		pixel_y=160
		New()
			spawn(20)
			del src
	Kirin_S20
		icon='Kirin Storm.dmi'
		icon_state="20"
		layer = MOB_LAYER+100
		pixel_x=-64
		pixel_y=160
		New()
			spawn(20)
			del src
	Kirin_S21
		icon='Kirin Storm.dmi'
		icon_state="21"
		layer = MOB_LAYER+100
		pixel_x=-32
		pixel_y=160
		New()
			spawn(20)
			del src
	Kirin_S22
		icon='Kirin Storm.dmi'
		icon_state="22"
		layer = MOB_LAYER+100
		pixel_y=160
		New()
			spawn(20)
			del src
	Kirin_S23
		icon='Kirin Storm.dmi'
		icon_state="23"
		layer = MOB_LAYER+100
		pixel_x=32
		pixel_y=160
		New()
			spawn(20)
			del src
	Kirin_S24
		icon='Kirin Storm.dmi'
		icon_state="24"
		layer = MOB_LAYER+100
		pixel_x=64
		pixel_y=160
		New()
			spawn(20)
			del src
	Kirin_S25
		icon='Kirin Storm.dmi'
		icon_state="25"
		layer = MOB_LAYER+100
		pixel_x=96
		pixel_y=160
		New()
			spawn(20)
			del src
	Kirin_S26
		icon='Kirin Storm.dmi'
		icon_state="26"
		layer = MOB_LAYER+100
		pixel_x=-96
		pixel_y=128
		New()
			spawn(20)
			del src
	Kirin_S27
		icon='Kirin Storm.dmi'
		icon_state="27"
		layer = MOB_LAYER+100
		pixel_x=-64
		pixel_y=128
		New()
			spawn(20)
			del src
	Kirin_S28
		icon='Kirin Storm.dmi'
		icon_state="28"
		layer = MOB_LAYER+100
		pixel_x=-32
		pixel_y=128
		New()
			spawn(20)
			del src
	Kirin_S29
		icon='Kirin Storm.dmi'
		icon_state="29"
		layer = MOB_LAYER+100
		pixel_y=128
		New()
			spawn(20)
			del src
	Kirin_S30
		icon='Kirin Storm.dmi'
		icon_state="30"
		layer = MOB_LAYER+100
		pixel_x=32
		pixel_y=128
		New()
			spawn(20)
			del src
	Kirin_S31
		icon='Kirin Storm.dmi'
		icon_state="31"
		layer = MOB_LAYER+100
		pixel_x=64
		pixel_y=128
		New()
			spawn(20)
			del src
	Kirin_S32
		icon='Kirin Storm.dmi'
		icon_state="32"
		layer = MOB_LAYER+100
		pixel_x=96
		pixel_y=128
		New()
			spawn(20)
			del src
	Kirin_S33
		icon='Kirin Storm.dmi'
		icon_state="33"
		layer = MOB_LAYER+100
		pixel_x=-96
		pixel_y=96
		New()
			spawn(20)
			del src
	Kirin_S34
		icon='Kirin Storm.dmi'
		icon_state="34"
		layer = MOB_LAYER+100
		pixel_x=-64
		pixel_y=96
		New()
			spawn(20)
			del src
	Kirin_S35
		icon='Kirin Storm.dmi'
		icon_state="35"
		layer = MOB_LAYER+100
		pixel_x=-32
		pixel_y=96
		New()
			spawn(20)
			del src
	Kirin_S36
		icon='Kirin Storm.dmi'
		icon_state="36"
		layer = MOB_LAYER+100
		pixel_y=96
		New()
			spawn(20)
			del src
	Kirin_S37
		icon='Kirin Storm.dmi'
		icon_state="37"
		layer = MOB_LAYER+100
		pixel_x=32
		pixel_y=96
		New()
			spawn(20)
			del src
	Kirin_S38
		icon='Kirin Storm.dmi'
		icon_state="38"
		layer = MOB_LAYER+100
		pixel_x=64
		pixel_y=96
		New()
			spawn(20)
			del src
	Kirin_S39
		icon='Kirin Storm.dmi'
		icon_state="39"
		layer = MOB_LAYER+100
		pixel_x=96
		pixel_y=96
		New()
			spawn(20)
			del src
	Kirin_S40
		icon='Kirin Storm.dmi'
		icon_state="40"
		layer = MOB_LAYER+100
		pixel_x=-64
		pixel_y=64
		New()
			spawn(20)
			del src
	Kirin_S41
		icon='Kirin Storm.dmi'
		icon_state="41"
		layer = MOB_LAYER+100
		pixel_x=-32
		pixel_y=64
		New()
			spawn(20)
			del src
	Kirin_S42
		icon='Kirin Storm.dmi'
		icon_state="42"
		layer = MOB_LAYER+100
		pixel_y=64
		New()
			spawn(20)
			del src
	Kirin_S43
		icon='Kirin Storm.dmi'
		icon_state="43"
		layer = MOB_LAYER+100
		pixel_x=32
		pixel_y=64
		New()
			spawn(20)
			del src
	Kirin_S44
		icon='Kirin Storm.dmi'
		icon_state="44"
		layer = MOB_LAYER+100
		pixel_x=64
		pixel_y=64
		New()
			spawn(20)
			del src
	Kirin_S45
		icon='Kirin Storm.dmi'
		icon_state="45"
		layer = MOB_LAYER+100
		pixel_x=96
		pixel_y=64
		New()
			spawn(20)
			del src
	Kirin_S46
		icon='Kirin Storm.dmi'
		icon_state="46"
		layer = MOB_LAYER+100
		pixel_x=-64
		pixel_y=32
		New()
			spawn(20)
			del src
	Kirin_S47
		icon='Kirin Storm.dmi'
		icon_state="47"
		layer = MOB_LAYER+100
		pixel_x=-32
		pixel_y=32
		New()
			spawn(20)
			del src
	Kirin_S48
		icon='Kirin Storm.dmi'
		icon_state="48"
		layer = MOB_LAYER+100
		pixel_y=32
		New()
			spawn(20)
			del src
	Kirin_S49
		icon='Kirin Storm.dmi'
		icon_state="49"
		layer = MOB_LAYER+100
		pixel_x=32
		pixel_y=32
		New()
			spawn(20)
			del src
	Kirin_S50
		icon='Kirin Storm.dmi'
		icon_state="50"
		layer = MOB_LAYER+100
		pixel_x=64
		pixel_y=32
		New()
			spawn(20)
			del src
	Kirin_S51
		icon='Kirin Storm.dmi'
		icon_state="51"
		layer = MOB_LAYER+100
		pixel_x=-96
		New()
			spawn(20)
			del src
	Kirin_S52
		icon='Kirin Storm.dmi'
		icon_state="52"
		layer = MOB_LAYER+100
		pixel_x=-64
		New()
			spawn(20)
			del src
	Kirin_S53
		icon='Kirin Storm.dmi'
		icon_state="53"
		layer = MOB_LAYER+100
		pixel_x=-32
		New()
			spawn(20)
			del src
	Kirin_S54
		icon='Kirin Storm.dmi'
		icon_state="54"
		layer = MOB_LAYER+100
		New()
			spawn(20)
			del src
	Kirin_S55
		icon='Kirin Storm.dmi'
		icon_state="55"
		layer = MOB_LAYER+100
		pixel_x=32
		New()
			spawn(20)
			del src
	Kirin_S56
		icon='Kirin Storm.dmi'
		icon_state="56"
		layer = MOB_LAYER+100
		pixel_x=64
		New()
			spawn(20)
			del src
	Kirin_S57
		icon='Kirin Storm.dmi'
		icon_state="57"
		layer = MOB_LAYER+100
		pixel_x=96
		New()
			spawn(20)
			del src
	Kirin_S58
		icon='Kirin Storm.dmi'
		icon_state="58"
		layer = MOB_LAYER+100
		pixel_x=-96
		pixel_y=-32
		New()
			spawn(20)
			del src
	Kirin_S59
		icon='Kirin Storm.dmi'
		icon_state="59"
		layer = MOB_LAYER+100
		pixel_x=-64
		pixel_y=-32
		New()
			spawn(20)
			del src
	Kirin_S60
		icon='Kirin Storm.dmi'
		icon_state="60"
		layer = MOB_LAYER+100
		pixel_x=-32
		pixel_y=-32
		New()
			spawn(20)
			del src
	Kirin_S61
		icon='Kirin Storm.dmi'
		icon_state="61"
		layer = MOB_LAYER+100
		pixel_y=-32
		New()
			spawn(20)
			del src
	Kirin_S62
		icon='Kirin Storm.dmi'
		icon_state="62"
		layer = MOB_LAYER+100
		pixel_x=32
		pixel_y=-32
		New()
			spawn(20)
			del src
	Kirin_S63
		icon='Kirin Storm.dmi'
		icon_state="63"
		layer = MOB_LAYER+100
		pixel_x=64
		pixel_y=-32
		New()
			spawn(20)
			del src
	Kirin_S64
		icon='Kirin Storm.dmi'
		icon_state="64"
		layer = MOB_LAYER+100
		pixel_x=96
		pixel_y=-32
		New()
			spawn(20)
			del src










//==== JUTSUS ELEMENTAIS ========================================================================

//==== KATON ====================================================================================
mob/var
	queimando=0
	podequeimar=0

//OBJ
obj/burning
	icon = 'iconsj.dmi'
	icon_state = "chama"
	density = 0
	New()
		spawn(56) del(src)
	proc/burn()
		for(var/mob/M in src.loc)
			if(M!=src.Gowner)
				M<<"Você está sofrendo queimaduras deixadas pelo fogo"
				M.queimando = 1
				M.queimadura()
		spawn(8)
		src.burn()

mob/proc/queimadura()
	for(var/mob/M in world)
		if(!M.podequeimar&&M.queimando)
			var/a=0
			var/damage = usr.nin/8 + usr.tai/8 + usr.gen/8 + usr.shurikenskill/8 + usr.fogoN/2 - M.Resistencia/2
			if(damage<=0)damage=0
			M.podequeimar=1
			while(M.queimando)
				M.health -= damage
				M<<"A queimadura deixada pelo fogo faz efeito e você perde [damage] de HP"
				F_damage(M, damage, "#ff0000")
				usr<<"[M] tomou [damage] de dano da queimadura deixada pelo fogo"
				if(M.health<=0)
					M.health=0
					M.Death(usr)
				a++
				sleep(30)
				if(a==3||M.health<=0)
					M.queimando=0
					usr<<"A queimadura deixada pelo fogo em [M] cicatrizou"
					M<<"A sua queimadura cicatrizou"
					M.podequeimar=0
					return

mob/katon
	verb
		KatonKasumiEnbu() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Katon Kasumi Enbu No Jutsu"
			if(usr.cdkasumienbu)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Katon Kasumi Enbu No Jutsu</b>!"
				return
			usr.Handseals()
			if(usr.cast||usr.Kaiten) // If the mob's cast var is one...
				return
			if(usr.caught)
				usr<<"Você foi capturado!"
				return
			if(!usr.handseals)
				return
			if(usr.Frozen)
				usr<<"Você está paralizado!"
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
			else // If the cast var isn't 1...
				if(usr.cdkasumienbu)return
				usr.cdkasumienbu=1
				spawn()usr.Cooldown(100,"Katon Kasumi Enbu No Jutsu")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				if(usr.Katon4N >= 150)
					usr.cast = 1
					var/obj/middle/K = new /obj/middle
					var/obj/middle/L = new /obj/middle
					var/obj/middle/M1 = new /obj/middle
					var/obj/middle/N = new /obj/middle
					var/obj/middle/O = new /obj/middle
					var/obj/topright/TR = new /obj/topright
					var/obj/bottomright/BR = new /obj/bottomright
					var/obj/topleft/TL = new /obj/topleft
					var/obj/bottomleft/BL = new /obj/bottomleft
					var/obj/GoukakyuuTail/T = new /obj/GoukakyuuTail
					usr.Katon4N += 1
					usr.handseals=0
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#bc8f8f>K</FONT><FONT COLOR=#c48b88>a</FONT><FONT COLOR=#cb8680>t</FONT><FONT COLOR=#d38178>o</FONT><FONT COLOR=#da7c70>n</FONT><FONT COLOR=#e27767> </FONT><FONT COLOR=#e9725f>K</FONT><FONT COLOR=#f16d57>a</FONT><FONT COLOR=#f8684f>s</FONT><FONT COLOR=#ff6347>u</FONT><FONT COLOR=#f9684e>m</FONT><FONT COLOR=#f26c56>i</FONT><FONT COLOR=#ec715d> </FONT><FONT COLOR=#e57564>E</FONT><FONT COLOR=#de7a6c>n</FONT><FONT COLOR=#d77e73>b</FONT><FONT COLOR=#d0837a>u</FONT><FONT COLOR=#ca8781>!</FONT><FONT COLOR=#c38c89>!</FONT><FONT COLOR=#bc8f8f>!</FONT>"
					K.Gowner=usr
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
					sleep(8)
					usr.cast = 0
					usr.froze=0
					usr.move=1
					var/obj/burning/K2 = new /obj/burning
					var/obj/burning/L2 = new /obj/burning
					var/obj/burning/M12 = new /obj/burning
					var/obj/burning/N2 = new /obj/burning
					var/obj/burning/O2 = new /obj/burning
					K2.loc = K.loc
					K2.nin = usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5
					K2.Gowner = usr
					for(var/mob/M in K2.loc)
						var/damage = usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.party&&M.partysensei==usr.partysensei)return
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						view()<<"[M] sofreu [damage] pelo Katon Kasumi Enbu de [usr]"
						if(M.health<=0)
							M.health=0
							M.Death(usr)
					K2.burn()
					L2.loc = L.loc
					L2.nin = usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5
					L2.Gowner = usr
					for(var/mob/M in L2.loc)
						var/damage = usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.party&&M.partysensei==usr.partysensei)return
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						view()<<"[M] sofreu [damage] pelo Katon Kasumi Enbu de [usr]"
						if(M.health<=0)
							M.health=0
							M.Death(usr)
					L2.burn()
					M12.nin = usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5
					M12.Gowner = usr
					M12.loc = M1.loc
					for(var/mob/M in M12.loc)
						var/damage = usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.party&&M.partysensei==usr.partysensei)return
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						view()<<"[M] sofreu [damage] pelo Katon Kasumi Enbu de [usr]"
						if(M.health<=0)
							M.health=0
							M.Death(usr)
					M12.burn()
					N2.nin = usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5
					N2.Gowner = usr
					N2.loc = N.loc
					for(var/mob/M in N2.loc)
						var/damage = usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.party&&M.partysensei==usr.partysensei)return
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						view()<<"[M] sofreu [damage] pelo Katon Kasumi Enbu de [usr]"
						if(M.health<=0)
							M.health=0
							M.Death(usr)
					N2.burn()
					O2.nin = usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5
					O2.Gowner = usr
					O2.loc = O.loc
					for(var/mob/M in O2.loc)
						var/damage = usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.party&&M.partysensei==usr.partysensei)return
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						view()<<"[M] sofreu [damage] pelo Katon Kasumi Enbu de [usr]"
						if(M.health<=0)
							M.health=0
							M.Death(usr)
					O2.burn()
				else
					usr.cast = 1
					var/obj/GoukakyuuHead/K = new /obj/GoukakyuuHead
					var/obj/GoukakyuuTail/T = new /obj/GoukakyuuTail
					usr.Katon4N += 1
					usr.froze=1
					usr.move=0
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#bc8f8f>K</FONT><FONT COLOR=#c48b88>a</FONT><FONT COLOR=#cb8680>t</FONT><FONT COLOR=#d38178>o</FONT><FONT COLOR=#da7c70>n</FONT><FONT COLOR=#e27767> </FONT><FONT COLOR=#e9725f>K</FONT><FONT COLOR=#f16d57>a</FONT><FONT COLOR=#f8684f>s</FONT><FONT COLOR=#ff6347>u</FONT><FONT COLOR=#f9684e>m</FONT><FONT COLOR=#f26c56>i</FONT><FONT COLOR=#ec715d> </FONT><FONT COLOR=#e57564>E</FONT><FONT COLOR=#de7a6c>n</FONT><FONT COLOR=#d77e73>b</FONT><FONT COLOR=#d0837a>u</FONT><FONT COLOR=#ca8781>!</FONT><FONT COLOR=#c38c89>!</FONT><FONT COLOR=#bc8f8f>!</FONT>"
					K.Gowner=usr
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
					sleep(8)
					usr.cast = 0
					usr.froze=0
					usr.move=1
					var/obj/burning/R = new /obj/burning
					var/obj/burning/S = new /obj/burning
					R.loc = K.loc
					R.nin = usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5
					R.Gowner = usr
					for(var/mob/M in R.loc)
						var/damage = usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.party&&M.partysensei==usr.partysensei)return
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						view()<<"[M] sofreu [damage] pelo Katon Kasumi Enbu de [usr]"
						if(M.health<=0)
							M.health=0
							M.Death(usr)
					R.burn()
					S.nin = usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5
					S.Gowner = usr
					S.loc = T.loc
					for(var/mob/M in S.loc)
						var/damage = usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.party&&M.partysensei==usr.partysensei)return
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						view()<<"[M] sofreu [damage] pelo Katon Kasumi Enbu de [usr]"
						if(M.health<=0)
							M.health=0
							M.Death(usr)
					S.burn()

mob/katon
	verb
		KatonHousenka() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Katon Housenka No Jutsu"
			if(usr.cdhousenka)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Katon Housenka No Jutsu</b>!"
				return
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
				if(usr.cdhousenka)return
				usr.cdhousenka=1
				spawn()usr.Cooldown(100,"Katon Housenka No Jutsu")
				usr.RandomChakra02()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				if(usr.Katon2N >= 40)
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
					usr.Katon2N += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#ff4500>K</FONT><FONT COLOR=#f44a0c>a</FONT><FONT COLOR=#e84f18>t</FONT><FONT COLOR=#dc5424>o</FONT><FONT COLOR=#d05930>n</FONT><FONT COLOR=#c45e3c>:</FONT><FONT COLOR=#b86349> </FONT><FONT COLOR=#ac6855>H</FONT><FONT COLOR=#a06d61>o</FONT><FONT COLOR=#94726d>u</FONT><FONT COLOR=#887779>s</FONT><FONT COLOR=#7c7c85>e</FONT><FONT COLOR=#708090>n</FONT><FONT COLOR=#727685>k</FONT><FONT COLOR=#756c79>a</FONT><FONT COLOR=#77616d> </FONT><FONT COLOR=#795661>N</FONT><FONT COLOR=#7c4b55>o</FONT><FONT COLOR=#7e4149> </FONT><FONT COLOR=#80363c>J</FONT><FONT COLOR=#832b30>u</FONT><FONT COLOR=#852024>t</FONT><FONT COLOR=#871618>s</FONT><FONT COLOR=#8a0b0c>u</FONT><FONT COLOR=#8b0000>!</FONT>"
					var/obj/katonG/D = new /obj/katonG
					var/obj/katonG/S = new /obj/katonG
					var/obj/katonG/K = new /obj/katonG
					var/obj/katonG/L = new /obj/katonG
					usr.Chakragain()
					var/obj/katonG/N = new /obj/katonG
					if(K)
						K.loc = usr.loc
						K.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5
						K.name="[usr]"
						K.Move_Delay=0.5
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
						D.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5
						D.name="[usr]"
						D.Move_Delay=0.5
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
						L.Move_Delay=0.5
						L.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5
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
						S.Move_Delay=0.5
						S.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5
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
						N.Move_Delay=0.5
						N.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5
						N.name="[usr]"
						N.Gowner=usr
						walk(N,usr.dir)
					usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam
					sleep(10)
					usr.cast = 0
					sleep(41)
					del(D)
					del(S)
					del(K)
					del(L)
					del(N)
				else
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
					usr.Katon2N += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#ff4500>K</FONT><FONT COLOR=#f44a0c>a</FONT><FONT COLOR=#e84f18>t</FONT><FONT COLOR=#dc5424>o</FONT><FONT COLOR=#d05930>n</FONT><FONT COLOR=#c45e3c>:</FONT><FONT COLOR=#b86349> </FONT><FONT COLOR=#ac6855>H</FONT><FONT COLOR=#a06d61>o</FONT><FONT COLOR=#94726d>u</FONT><FONT COLOR=#887779>s</FONT><FONT COLOR=#7c7c85>e</FONT><FONT COLOR=#708090>n</FONT><FONT COLOR=#727685>k</FONT><FONT COLOR=#756c79>a</FONT><FONT COLOR=#77616d> </FONT><FONT COLOR=#795661>N</FONT><FONT COLOR=#7c4b55>o</FONT><FONT COLOR=#7e4149> </FONT><FONT COLOR=#80363c>J</FONT><FONT COLOR=#832b30>u</FONT><FONT COLOR=#852024>t</FONT><FONT COLOR=#871618>s</FONT><FONT COLOR=#8a0b0c>u</FONT><FONT COLOR=#8b0000>!</FONT>"
					var/obj/katonG/D = new /obj/katonG
					var/obj/katonG/S = new /obj/katonG
					var/obj/katonG/K = new /obj/katonG
					var/obj/katonG/L = new /obj/katonG
					usr.Chakragain()
					var/obj/katonG/N = new /obj/katonG
					if(K)
						K.loc = usr.loc
						K.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5
						K.name="[usr]"
						K.Move_Delay=1
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
						D.nin=usr.nin + usr.fogoN
						D.name="[usr]"
						D.Move_Delay=1
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
						L.Move_Delay=1
						L.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5
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
						S.Move_Delay=1
						S.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5
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
						N.Move_Delay=1
						N.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5
						N.name="[usr]"
						N.Gowner=usr
						walk(N,usr.dir)
					usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam
					sleep(10)
					usr.cast = 0
					sleep(41)
					del(D)
					del(S)
					del(K)
					del(L)
					del(N)



mob/katon
	verb
		KatonHousenkaTsumabeni() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Katon Housenka Tsumabeni No Jutsu"
			if(usr.cdtsumabeni)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Katon Housenka Tsumabeni No Jutsu</b>!"
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
				if(usr.cdtsumabeni)return
				usr.cdtsumabeni=1
				spawn()usr.Cooldown(100,"Katon Housenka Tsumabeni No Jutsu")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				if(usr.Katon2N >= 40)
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
					usr.Katon2N += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Katon Housenka Tsumabeni No Jutsu!"
					var/obj/katonHT/D = new /obj/katonHT
					var/obj/katonHT/S = new /obj/katonHT
					var/obj/katonHT/K = new /obj/katonHT
					var/obj/katonHT/L = new /obj/katonHT
					usr.Chakragain()
					var/obj/katonHT/N = new /obj/katonHT
					if(K)
						K.loc = usr.loc
						K.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.25
						K.name="[usr]"
						K.Move_Delay=0.5
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
						D.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.25
						D.name="[usr]"
						D.Move_Delay=0.5
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
						L.Move_Delay=0.5
						L.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.25
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
						S.Move_Delay=0.5
						S.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.25
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
						N.Move_Delay=0.5
						N.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.25
						N.name="[usr]"
						N.Gowner=usr
						walk(N,usr.dir)
					usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam
					sleep(10)
					usr.cast = 0
					sleep(41)
					del(D)
					del(S)
					del(K)
					del(L)
					del(N)
				else
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
					usr.Katon2N += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#ff4500>K</FONT><FONT COLOR=#f44a0c>a</FONT><FONT COLOR=#e84f18>t</FONT><FONT COLOR=#dc5424>o</FONT><FONT COLOR=#d05930>n</FONT><FONT COLOR=#c45e3c>:</FONT><FONT COLOR=#b86349> </FONT><FONT COLOR=#ac6855>H</FONT><FONT COLOR=#a06d61>o</FONT><FONT COLOR=#94726d>u</FONT><FONT COLOR=#887779>s</FONT><FONT COLOR=#7c7c85>e</FONT><FONT COLOR=#708090>n</FONT><FONT COLOR=#727685>k</FONT><FONT COLOR=#756c79>a Tsumabeni</FONT><FONT COLOR=#77616d> </FONT><FONT COLOR=#795661>N</FONT><FONT COLOR=#7c4b55>o</FONT><FONT COLOR=#7e4149> </FONT><FONT COLOR=#80363c>J</FONT><FONT COLOR=#832b30>u</FONT><FONT COLOR=#852024>t</FONT><FONT COLOR=#871618>s</FONT><FONT COLOR=#8a0b0c>u</FONT><FONT COLOR=#8b0000>!</FONT>"
					var/obj/katonHT/D = new /obj/katonHT
					var/obj/katonHT/S = new /obj/katonHT
					var/obj/katonHT/K = new /obj/katonHT
					var/obj/katonHT/L = new /obj/katonHT
					usr.Chakragain()
					var/obj/katonHT/N = new /obj/katonHT
					if(K)
						K.loc = usr.loc
						K.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.25
						K.name="[usr]"
						K.Move_Delay=1
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
						D.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.25
						D.name="[usr]"
						D.Move_Delay=1
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
						L.Move_Delay=1
						L.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.25
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
						S.Move_Delay=1
						S.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.25
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
						N.Move_Delay=1
						N.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.25
						N.name="[usr]"
						N.Gowner=usr
						walk(N,usr.dir)
					usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam
					sleep(10)
					usr.cast = 0
					sleep(41)
					del(D)
					del(S)
					del(K)
					del(L)
					del(N)


obj
	katonG
		icon = 'katons.dmi'
		icon_state = ""
		density = 1
		New()
			spawn(41) del src
			..()
		Bump(A)
			var/mob/O = src.Gowner
			if(!O) del src
			if(ismob(A))
				var/mob/M = A
				if(M.party&&M.partysensei==O.partysensei)return
				if(M.Kaiten||M.sphere)
					return
				if(M.copy||M.fcopy)
					M<<"Você copiou o jutsu com sucesso."
					M.verbs += new /mob/katon/verb/KatonHousenka()
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = O.nin/4.75 + O.tai/5 + O.gen/5 + O.shurikenskill/5 + O.fogoN/1.5 - M.Resistencia/2
				if(damage <= 0)damage=0
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				view(M) << "[M] foi acertado pelo Katon Housenka recebendo [damage] de dano!!"
				M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

	katonHT
		icon = 'katon housenka tsumabeni.dmi'
		icon_state = ""
		density = 1
		New()
			spawn(41) del src
			..()
		Bump(A)
			var/mob/O = src.Gowner
			if(!O) del src
			if(ismob(A))
				var/mob/M = A
				if(M.party&&M.partysensei==O.partysensei)return
				if(M.Kaiten||M.sphere)
					return
				if(M.copy||M.fcopy)
					M<<"Você copiou o jutsu com sucesso."
					M.verbs += new /mob/katon/verb/KatonHousenkaTsumabeni()
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = O.nin/4.75 + O.tai/5 + O.gen/5 + O.shurikenskill/5 + O.fogoN/1.25 - M.Resistencia/2
				if(damage <= 0)damage=0
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				view(M) << "[M] foi acertado pelo Katon Housenka Tsumabeni recebendo [damage] de dano!!"
				M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)


mob/katon
	verb
		KatonRyuukanoJutsu() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Katon Ryuuka no Jutsu"
			if(usr.cdryuuka)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Katon Ryuuka no Jutsu</b>!"
				return
			usr.Handseals()
			if(usr.cast||usr.Kaiten == 1) // If the mob's cast var is one...
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
			if(src.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(src.concing)
				usr<<"Não enquanto se concentra"
				return
			else // If the cast var isn't 1...
				if(usr.cdryuuka)return
				usr.cdryuuka=1
				spawn()usr.Cooldown(100,"Katon Ryuuka no Jutsu")
				usr.RandomChakra01()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				if(usr.sincronia)
					for(var/mob/M in oview(3))
						if(M.sincronia)
							for(var/obj/Tatsumaki/B in oview(3))
								del(B)
								view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz:Jutsu Combinado: Fuuton Ninpo Kamikaze"
								var/obj/Kami/K = new /obj/Kami
								K.loc = usr.loc
								K.nin=usr.nin +M.nin
								K.Move_Delay=0
								K.dir = usr.dir
								K.Gowner=usr
								walk(K,usr.dir)
								if (target == null)
									del(K)
								sleep(50)
								del(K)
								return
							return
						return
					return
				if(usr.Katon4N >= 165)
					usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam // Disables the mob's movement
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#dc143c>K</FONT><FONT COLOR=#d8163b>a</FONT><FONT COLOR=#d3183a>t</FONT><FONT COLOR=#ce1a38>o</FONT><FONT COLOR=#c91c36>n</FONT><FONT COLOR=#c41e34>:</FONT><FONT COLOR=#be2133> </FONT><FONT COLOR=#b92331>R</FONT><FONT COLOR=#b4252f>y</FONT><FONT COLOR=#af272d>u</FONT><FONT COLOR=#aa292c>u</FONT><FONT COLOR=#a52a2a>k</FONT><FONT COLOR=#a62a2a>a</FONT><FONT COLOR=#a82929> </FONT><FONT COLOR=#a92929>N</FONT><FONT COLOR=#aa2828>o</FONT><FONT COLOR=#ab2727> </FONT><FONT COLOR=#ad2626>J</FONT><FONT COLOR=#ae2525>u</FONT><FONT COLOR=#af2424>t</FONT><FONT COLOR=#b02424>s</FONT><FONT COLOR=#b22323>u</FONT><FONT COLOR=#b22222>!</FONT>"
					usr.Katon4N += 1
					var/obj/KRyuuka/K = new /obj/KRyuuka
					K.loc = usr.loc
					K.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5
					K.Move_Delay=1
					usr.Chakragain()
					K.dir = usr.dir
					K.name="[usr]"
					K.Gowner=usr
					walk(K,usr.dir)
					if (target == null)
						del(K)
					sleep(10)
					usr.cast = 0
					/*sleep(45)
					del(K)*/
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam // Disables the mob's movement
						usr.Katon4N += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#dc143c>K</FONT><FONT COLOR=#d8163b>a</FONT><FONT COLOR=#d3183a>t</FONT><FONT COLOR=#ce1a38>o</FONT><FONT COLOR=#c91c36>n</FONT><FONT COLOR=#c41e34>:</FONT><FONT COLOR=#be2133> </FONT><FONT COLOR=#b92331>R</FONT><FONT COLOR=#b4252f>y</FONT><FONT COLOR=#af272d>u</FONT><FONT COLOR=#aa292c>u</FONT><FONT COLOR=#a52a2a>k</FONT><FONT COLOR=#a62a2a>a</FONT><FONT COLOR=#a82929> </FONT><FONT COLOR=#a92929>N</FONT><FONT COLOR=#aa2828>o</FONT><FONT COLOR=#ab2727> </FONT><FONT COLOR=#ad2626>J</FONT><FONT COLOR=#ae2525>u</FONT><FONT COLOR=#af2424>t</FONT><FONT COLOR=#b02424>s</FONT><FONT COLOR=#b22323>u</FONT><FONT COLOR=#b22222>!</FONT>"
						var/obj/KRyuuka/K = new /obj/KRyuuka
						K.loc = usr.loc
						K.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5
						usr.Chakragain()
						K.dir = usr.dir
						K.name="[usr]"
						K.Move_Delay=1.5
						K.Gowner=usr
						walk(K,usr.dir)
						if (target == null)
							del(K)
						sleep(10)
						usr.cast = 0
						usr.Move_Delay = usr.Savedspeed
						/*sleep(45)
						del(K)*/
					else
						usr<<"Você falhou em usar o Katon Ryuuka no Jutsu."


obj
	KRyuuka
		icon = 'Ryuuka.dmi'
		icon_state = ""
		density = 1
		New()
			spawn(45) del src
			..()
		Move()
			..()
			var/obj/caudaryuuka/T = new /obj/caudaryuuka
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
			var/mob/O = src.Gowner
			if(!O) del src
			if(ismob(A))
				var/mob/M = A
				if(M.party&&M.partysensei==O.partysensei)return
				if(M.Kaiten||M.sphere)
					return
				if(M.copy||M.fcopy)
					M<<"Você copiou o jutsu com sucesso."
					M.verbs += new /mob/katon/verb/KatonRyuukanoJutsu()
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = O.nin/4.75 + O.tai/5 + O.gen/5 + O.shurikenskill/5 + O.fogoN/1.5 - M.Resistencia/2
				if(damage <= 0)damage=0
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				view(M) << "[M] foi acertado pelo Katon Ryuuka recebendo [damage] de dano!!"
				M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)


obj
	caudaryuuka
		icon='Jutsus.dmi'
		icon_state="firelineb"
		New()
			..()
			spawn(20)
			del(src)



obj
	KaryHead
		icon='karyhead.dmi'
		layer = MOB_LAYER+1
		New()
			..()
			spawn(34)
			del(src)

	KaryTail
		icon='karytail.dmi'
		layer = MOB_LAYER+1
		New()
			..()
			spawn(34)
			del(src)
obj
	GoukakyuuHead
		icon='goukakyuuthing2.dmi'
		icon_state="head"
		layer = MOB_LAYER+1
		New()
			..()
			spawn(34)
			del(src)

	GoukakyuuTail
		icon='goukakyuuthing2.dmi'
		icon_state="tail"
		layer = MOB_LAYER+1
		New()
			..()
			spawn(34)
			del(src)
	middle
		icon='goukakyuuthing2.dmi'
		icon_state="1"
		layer = MOB_LAYER+1
		New()
			..()
			spawn(34)
			del(src)

	topleft
		icon='goukakyuuthing2.dmi'
		icon_state="2"
		layer = MOB_LAYER+1
		New()
			..()
			spawn(34)
			del(src)
	topright
		icon='goukakyuuthing2.dmi'
		icon_state="3"
		layer = MOB_LAYER+1
		New()
			..()
			spawn(34)
			del(src)

	bottomleft
		icon='goukakyuuthing2.dmi'
		icon_state="4"
		layer = MOB_LAYER+1
		New()
			..()
			spawn(34)
			del(src)
	bottomright
		icon='goukakyuuthing2.dmi'
		icon_state="5"
		layer = MOB_LAYER+1
		New()
			..()
			spawn(34)
			del(src)

mob/katon
	verb
		KatonGoukakyuu() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Katon Goukakyuu No Jutsu"
			if(usr.cdgoukakyuu)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Katon Goukakyuu No Jutsu</b>!"
			usr.Handseals()
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
				if(usr.cdgoukakyuu)return
				usr.cdgoukakyuu=1
				spawn()usr.Cooldown(100,"Katon Goukakyuu No Jutsu")
//				usr.RandomChakra1()
				if(usr.chakraN>=20000)
					usr.chakra-=1000
				else
					usr.chakra-=3000
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				if(usr.Katon1N >= 40)
					usr.Chakragain()
					usr.cast = 1
					var/obj/middle/K = new /obj/middle
					var/obj/middle/L = new /obj/middle
					var/obj/middle/M1 = new /obj/middle
					var/obj/middle/N = new /obj/middle
					var/obj/middle/O = new /obj/middle
					var/obj/topright/TR = new /obj/topright
					var/obj/bottomright/BR = new /obj/bottomright
					var/obj/topleft/TL = new /obj/topleft
					var/obj/bottomleft/BL = new /obj/bottomleft
					var/obj/GoukakyuuTail/T = new /obj/GoukakyuuTail
					usr.Katon1N += 1
					usr.handseals=0
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#ffffff>K</FONT><FONT COLOR=#f6ebeb>a</FONT><FONT COLOR=#edd5d5>t</FONT><FONT COLOR=#e3c0c0>o</FONT><FONT COLOR=#d9abab>n</FONT><FONT COLOR=#cf9595>:</FONT><FONT COLOR=#c68080> </FONT><FONT COLOR=#bc6b6b>G</FONT><FONT COLOR=#b25555>o</FONT><FONT COLOR=#a84040>u</FONT><FONT COLOR=#9f2b2b>k</FONT><FONT COLOR=#951515>a</FONT><FONT COLOR=#8b0000>k</FONT><FONT COLOR=#910205>y</FONT><FONT COLOR=#980309>u</FONT><FONT COLOR=#9e050e>u</FONT><FONT COLOR=#a40613> </FONT><FONT COLOR=#ab0817>N</FONT><FONT COLOR=#b10a1c>o</FONT><FONT COLOR=#b70b21> </FONT><FONT COLOR=#bd0d26>J</FONT><FONT COLOR=#c40f2a>u</FONT><FONT COLOR=#ca102f>t</FONT><FONT COLOR=#d01234>s</FONT><FONT COLOR=#d71338>u</FONT><FONT COLOR=#dc143c>!</FONT></FONT>"
					K.Gowner=usr
					K.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5
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
								if(M.party&&M.partysensei==usr.partysensei)return
								if(M.Kaiten)
									usr<<"Seu ataque não acerta [M]"
									M<<"Você bloqueou o jutsu de [usr] - Goukakyuu."
									return
								if(M.sphere)
									usr<<"Seu ataque não acerta [M]"
									M<<"Você bloqueou o jutsu de [usr] - Goukakyuu."
									return
								if(M.copy||M.fcopy)
									usr<<"Seu ataque foi copiado por [M]"
									M<<"Você copiou o jutsu de [usr]."
									M.verbs += new /mob/katon/verb/KatonGoukakyuu()
									return
								var/damage=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5 - M.Resistencia/2
								if(damage<=0)damage=0
								view()<<"[M] recebeu [damage] de dano do Katon Goukakyuu de [usr]"
								M.health-=damage
								F_damage(M, damage, "#ff0000")
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4))
						if(T)
							if(M.loc==T.loc)
								if(M.party&&M.partysensei==usr.partysensei)return
								if(M.Kaiten)
									usr<<"Seu ataque não acerta [M]"
									M<<"Você bloqueou o jutsu de [usr] - Goukakyuu."
									return
								if(M.sphere)
									usr<<"Seu ataque não acerta [M]"
									M<<"Você bloqueou o jutsu de [usr] - Goukakyuu."
									return
								if(M.copy||M.fcopy)
									usr<<"Seu ataque foi copiado por [M]"
									M<<"Você copiou o jutsu de [usr]."
									M.verbs += new /mob/katon/verb/KatonGoukakyuu()
									return
								var/damage=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5 - M.Resistencia/2
								if(damage<=0)damage=0
								view()<<"[M] recebeu [damage] de dano do Katon Goukakyuu de [usr]"
								M.health-=damage
								F_damage(M, damage, "#ff0000")
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4))
						if(L)
							if(M.loc==L.loc)
								if(M.party&&M.partysensei==usr.partysensei)return
								if(M.Kaiten||M.counter)
									usr<<"Seu ataque não acerta [M]"
									M<<"Você bloqueou o jutsu de [usr] - Goukakyuu."
									return
								if(M.sphere)
									usr<<"Seu ataque não acerta [M]"
									M<<"Você bloqueou o jutsu de [usr] - Goukakyuu."
									return
								if(M.copy||M.fcopy)
									usr<<"Seu ataque foi copiado por [M]"
									M<<"Você copiou o jutsu de [usr]."
									M.verbs += new /mob/katon/verb/KatonGoukakyuu()
									return
								var/damage=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5 - M.Resistencia/2
								if(damage<=0)damage=0
								view()<<"[M] recebeu [damage] de dano do Katon Goukakyuu de [usr]"
								M.health-=damage
								F_damage(M, damage, "#ff0000")
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4))
						if(M1)
							if(M.loc==M1.loc)
								if(M.party&&M.partysensei==usr.partysensei)return
								if(M.Kaiten)
									usr<<"Seu ataque não acerta [M]"
									M<<"Você bloqueou o jutsu de [usr] - Goukakyuu."
									return
								if(M.sphere)
									usr<<"Seu ataque não acerta [M]"
									M<<"Você bloqueou o jutsu de [usr] - Goukakyuu."
									return
								if(M.copy||M.fcopy)
									usr<<"Seu ataque foi copiado por [M]"
									M<<"Você copiou o jutsu de [usr]."
									M.verbs += new /mob/katon/verb/KatonGoukakyuu()
									return
								var/damage=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5 - M.Resistencia/2
								if(damage<=0)damage=0
								view()<<"[M] recebeu [damage] de dano do Katon Goukakyuu de [usr]"
								M.health-=damage
								F_damage(M, damage, "#ff0000")
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4))
						if(N)
							if(M.loc==N.loc)
								if(M.party&&M.partysensei==usr.partysensei)return
								if(M.Kaiten)
									usr<<"Seu ataque não acerta [M]"
									M<<"Você bloqueou o jutsu de [usr] - Goukakyuu."
									return
								if(M.sphere)
									usr<<"Seu ataque não acerta [M]"
									M<<"Você bloqueou o jutsu de [usr] - Goukakyuu."
									return
								if(M.copy||M.fcopy)
									usr<<"Seu ataque foi copiado por [M]"
									M<<"Você copiou o jutsu de [usr]."
									M.verbs += new /mob/katon/verb/KatonGoukakyuu()
									return
								var/damage=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5 - M.Resistencia/2
								if(damage<=0)damage=0
								view()<<"[M] recebeu [damage] de dano do Katon Goukakyuu de [usr]"
								M.health-=damage
								F_damage(M, damage, "#ff0000")
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4))
						if(O)
							if(M.loc==O.loc)
								if(M.party&&M.partysensei==usr.partysensei)return
								if(M.Kaiten)
									usr<<"Seu ataque não acerta [M]"
									M<<"Você bloqueou o jutsu de [usr] - Goukakyuu."
									return
								if(M.sphere)
									usr<<"Seu ataque não acerta [M]"
									M<<"Você bloqueou o jutsu de [usr] - Goukakyuu."
									return
								if(M.copy||M.fcopy)
									usr<<"Seu ataque foi copiado por [M]"
									M<<"Você copiou o jutsu de [usr]."
									M.verbs += new /mob/katon/verb/KatonGoukakyuu()
									return
								var/damage=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5 - M.Resistencia/2
								if(damage<=0)damage=0
								view()<<"[M] recebeu [damage] de dano do Katon Goukakyuu de [usr]"
								M.health-=damage
								F_damage(M, damage, "#ff0000")
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4))
						if(BL)
							if(M.loc==BL.loc)
								if(M.party&&M.partysensei==usr.partysensei)return
								if(M.Kaiten||M.sphere)
									usr<<"Seu ataque não acerta [M]"
									M<<"Você bloqueou o jutsu de [usr] - Goukakyuu."
									return
								if(M.copy||M.fcopy)
									usr<<"Seu ataque foi copiado por [M]"
									M<<"Você copiou o jutsu de [usr]."
									M.verbs += new /mob/katon/verb/KatonGoukakyuu()
									return
								var/damage=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5 - M.Resistencia/2
								if(damage<=0)damage=0
								view()<<"[M] recebeu [damage] de dano do Katon Goukakyuu de [usr]"
								M.health-=damage
								F_damage(M, damage, "#ff0000")
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4))
						if(BR)
							if(M.loc==BR.loc)
								if(M.party&&M.partysensei==usr.partysensei)return
								if(M.Kaiten||M.sphere)
									usr<<"Seu ataque não acerta [M]"
									M<<"Você bloqueou o jutsu de [usr] - Goukakyuu."
									return
								if(M.copy||M.fcopy)
									usr<<"Seu ataque foi copiado por [M]"
									M<<"Você copiou o jutsu de [usr]."
									M.verbs += new /mob/katon/verb/KatonGoukakyuu()
									return
								var/damage=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5 - M.Resistencia/2
								if(damage<=0)damage=0
								view()<<"[M] recebeu [damage] de dano do Katon Goukakyuu de [usr]"
								M.health-=damage
								F_damage(M, damage, "#ff0000")
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4))
						if(TR)
							if(M.loc==TR.loc)
								if(M.party&&M.partysensei==usr.partysensei)return
								if(M.Kaiten||M.sphere)
									usr<<"Seu ataque não acerta [M]"
									M<<"Você bloqueou o jutsu de [usr] - Goukakyuu."
									return
								if(M.copy||M.fcopy)
									usr<<"Seu ataque foi copiado por [M]"
									M<<"Você copiou o jutsu de [usr]."
									M.verbs += new /mob/katon/verb/KatonGoukakyuu()
									return
								var/damage=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5 - M.Resistencia/2
								if(damage<=0)damage=0
								view()<<"[M] recebeu [damage] de dano do Katon Goukakyuu de [usr]"
								M.health-=damage
								F_damage(M, damage, "#ff0000")
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4))
						if(TL)
							if(M.loc==TL.loc)
								if(M.party&&M.partysensei==usr.partysensei)return
								if(M.Kaiten||M.sphere)
									usr<<"Seu ataque não acerta [M]"
									M<<"Você bloqueou o jutsu de [usr] - Goukakyuu."
									return
								if(M.copy||M.fcopy)
									usr<<"Seu ataque foi copiado por [M]"
									M<<"Você copiou o jutsu de [usr]."
									M.verbs += new /mob/katon/verb/KatonGoukakyuu()
									return
								var/damage=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5 - M.Resistencia/2
								if(damage<=0)damage=0
								view()<<"[M] recebeu [damage] de dano do Katon Goukakyuu de [usr]"
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
					usr.random = rand (1,2)
					if(usr.random == 1||usr.random == 2)
						usr.cast = 1
						var/obj/GoukakyuuHead/K = new /obj/GoukakyuuHead
						var/obj/GoukakyuuTail/T = new /obj/GoukakyuuTail
						usr.Katon1N += 1
						usr.froze=1
						usr.move=0
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#ffffff>K</FONT><FONT COLOR=#f6ebeb>a</FONT><FONT COLOR=#edd5d5>t</FONT><FONT COLOR=#e3c0c0>o</FONT><FONT COLOR=#d9abab>n</FONT><FONT COLOR=#cf9595>:</FONT><FONT COLOR=#c68080> </FONT><FONT COLOR=#bc6b6b>G</FONT><FONT COLOR=#b25555>o</FONT><FONT COLOR=#a84040>u</FONT><FONT COLOR=#9f2b2b>k</FONT><FONT COLOR=#951515>a</FONT><FONT COLOR=#8b0000>k</FONT><FONT COLOR=#910205>y</FONT><FONT COLOR=#980309>u</FONT><FONT COLOR=#9e050e>u</FONT><FONT COLOR=#a40613> </FONT><FONT COLOR=#ab0817>N</FONT><FONT COLOR=#b10a1c>o</FONT><FONT COLOR=#b70b21> </FONT><FONT COLOR=#bd0d26>J</FONT><FONT COLOR=#c40f2a>u</FONT><FONT COLOR=#ca102f>t</FONT><FONT COLOR=#d01234>s</FONT><FONT COLOR=#d71338>u</FONT><FONT COLOR=#dc143c>!</FONT></FONT>"
						K.Gowner=usr
						K.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5
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
									if(M.party&&M.partysensei==usr.partysensei)return
									if(M.Kaiten||M.sphere)
										usr<<"Seu ataque não acerta [M]"
										M<<"Você bloqueou o jutsu de [usr] - Goukakyuu."
										return
									if(M.copy||M.fcopy)
										usr<<"Seu ataque foi copiado por [M]"
										M<<"Você copiou o jutsu de [usr]."
										M.verbs += new /mob/katon/verb/KatonGoukakyuu()
										return
									var/damage=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5 - M.Resistencia/2
									if(damage<=0)damage=0
									view()<<"[M] recebeu [damage] de dano do Katon Goukakyuu de [usr]"
									M.health-=damage
									F_damage(M, damage, "#ff0000")
									if(M.health<=0)
										M.Death(usr)
						for(var/mob/M in oview(4))
							if(T)
								if(M.loc==T.loc)
									if(M.party&&M.partysensei==usr.partysensei)return
									if(M.Kaiten||M.sphere)
										usr<<"Seu ataque não acerta [M]"
										M<<"Você bloqueou o jutsu de [usr] - Goukakyuu."
										return
									if(M.copy||M.fcopy)
										usr<<"Seu ataque foi copiado por [M]"
										M<<"Você copiou o jutsu de [usr]."
										M.verbs += new /mob/katon/verb/KatonGoukakyuu()
										return
									var/damage=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5 - M.Resistencia/2
									if(damage<=0)damage=0
									view()<<"[M] recebeu [damage] de dano do Katon Goukakyuu de [usr]"
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



mob/katon
	verb
		Katonheki() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Katon Ookii Kaygenkii"
			if(usr.cdkaygenkii)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Katon Ookii Kaygenkii</b>!"
				return
			usr.Handseals()
			if(usr.cast||usr.Kaiten) // If the mob's cast var is one...
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(!usr.handseals)
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
			if(!usr.handseals)
				return
			else // If the cast var isn't 1...
				if(usr.cdkaygenkii)return
				usr.cdkaygenkii=1
				spawn()usr.Cooldown(100,"Katon Ookii Kaygenkii")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.DoryuuN += 1
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR= red>Katon Ookii Kaygenkii!</FONT>"
				sleep(10)
				usr.Chakragain()
				if(usr.dir == NORTH)
					var/obj/katonheki/A = new /obj/katonheki/
					var/obj/katonheki/B = new /obj/katonheki/
					var/obj/katonheki/C = new /obj/katonheki/
					A.loc = locate(usr.x, usr.y+1, usr.z)
					C.loc = locate(usr.x+1, usr.y+1, usr.z)
					B.loc = locate(usr.x-1, usr.y+1, usr.z)
					A.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5
					B.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5
					C.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					A.dir = NORTH
					B.dir = NORTH
					C.dir = NORTH
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
					sleep(150)
				if(usr.dir == SOUTH)
					var/obj/katonheki/A = new /obj/katonheki/
					var/obj/katonheki/B = new /obj/katonheki/
					var/obj/katonheki/C = new /obj/katonheki/
					A.loc = locate(usr.x, usr.y-1, usr.z)
					C.loc = locate(usr.x+1, usr.y-1, usr.z)
					B.loc = locate(usr.x-1, usr.y-1, usr.z)
					A.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5
					B.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5
					C.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					A.dir = SOUTH
					B.dir = SOUTH
					C.dir = SOUTH
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
					sleep(150)
				if(usr.dir == WEST)
					var/obj/katonheki/A = new /obj/katonheki/
					var/obj/katonheki/C = new /obj/katonheki/
					var/obj/katonheki/D = new /obj/katonheki/
					A.loc = locate(usr.x-1, usr.y, usr.z)
					C.loc = locate(usr.x-1, usr.y-1, usr.z)
					D.loc = locate(usr.x-1, usr.y+1, usr.z)
					A.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5
					C.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5
					D.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5
					A.Gowner=usr
					C.Gowner=usr
					D.Gowner=usr
					A.dir = WEST
					C.dir = WEST
					D.dir = WEST
					walk(A,usr.dir)
					walk(C,usr.dir)
					walk(D,usr.dir)
					sleep(150)
				if(usr.dir == EAST)
					var/obj/katonheki/A = new /obj/katonheki/
					var/obj/katonheki/C = new /obj/katonheki/
					var/obj/katonheki/D = new /obj/katonheki/
					A.loc = locate(usr.x+1, usr.y, usr.z)
					C.loc = locate(usr.x+1, usr.y-1, usr.z)
					D.loc = locate(usr.x+1, usr.y+1, usr.z)
					A.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5
					C.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5
					D.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5
					A.Gowner=usr
					C.Gowner=usr
					D.Gowner=usr
					A.dir = EAST
					C.dir = EAST
					D.dir = EAST
					walk(A,usr.dir)
					walk(C,usr.dir)
					walk(D,usr.dir)
					return
				return

obj
	katonheki
		icon = 'katonheki.dmi'//dont have a base icon so cant make weights icon!lol
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
				if(M.copy||M.fcopy)
					M<<"Você copiou o jutsu com sucesso."
					M.verbs += new /mob/katon/verb/Katonheki()
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = O.nin/4.75 + O.tai/5 + O.gen/5 + O.shurikenskill/5 + O.fogoN/1.5 - M.Resistencia/2
				if(damage<=0)damage=0
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				view(M) << "[M] foi acertado pelo Katon Ookii Kaygenkii tirando [damage] de dano!!"
				M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)


mob/jutsu
	verb
		KatonGouryuuka() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Katon Gouryuuka"
			usr.Handseals()
			if(usr.cdgoryuuka)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Katon Gouryuuka no Jutsu</b>!"
				return
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
			if(!usr.handseals)
				return
			else // If the cast var isn't 1...
				if(usr.cdgoryuuka)return
				usr.cdgoryuuka=1
				spawn()usr.Cooldown(100,"Katon Gouryuuka")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam // Disables the mob's movement
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Katon Gouryuuka no Jutsu"
				usr.Katon4N += 1
				var/obj/Gouryuuka/K = new /obj/Gouryuuka
				usr.atmosphere=1
				K.loc = usr.loc
				K.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.fogoN/1.5
				K.Move_Delay=0.5
				usr.Chakragain()
				K.dir = usr.dir
				K.name="[usr]"
				K.Gowner=usr
				walk(K,usr.dir)
				sleep(10)
				usr.cast = 0
				sleep(50)
				usr.atmosphere=0


obj
	caudakaton
		icon='Jutsus.dmi'
		icon_state="fireline"
		New()
			..()
			spawn(20)
			del(src)

obj
	caudagoryu
		icon='firedragon.dmi'
		icon_state="2"
		New()
			..()
			spawn(20)
			del(src)


obj
	Gouryuuka
		icon = 'firedragon.dmi'
		icon_state = "1"
		density = 1
		Move()
			spawn(50) del(src)
			..()
			var/obj/caudagoryu/T = new /obj/caudagoryu
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
			var/mob/O = src.Gowner
			if(!O) del src
			if(ismob(A))
				var/mob/M = A
				if(M.party&&M.partysensei==O.partysensei)return
				if(M.Kaiten||M.sphere)
					return
				if(M.PK==0)
					return
				if(M.copy||M.fcopy)
					M<<"Você copiou o jutsu com sucesso."
					M.verbs += new /mob/jutsu/verb/KatonGouryuuka()
					del(src)
					return
				var/damage = O.nin/4.75 + O.tai/5 + O.gen/5 + O.shurikenskill/5 + O.fogoN/1.5 - M.Resistencia/2
				if(damage <= 0)damage=0
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				view(M) << "[M] levou [damage] de dano ao ser acertado pelo Katon Goryuuka!"
				M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
				sleep(100)
				usr.atmosphere = 0


//==== SUITON ===================================================================================

mob/var/mizubnpc=0
mob/jutsu
	verb
		Mizukawa() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Mizu Kawarimi"
			if(usr.cdkawarimimizu)
				usr<<"Está em Cooldown!"
				return
			if(usr.cast||usr.kawa||usr.Kaiten||usr.counter)
				return
			if(usr.inso)
				usr<<"Não enquanto está no Soutourou!!"
				return
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.Move_Delay==10)
				usr<<"Não enquanto está em um Genjutsu ou Dimensão!"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.chakra <= 500)
				usr<<"Não tem chakra o bastante. (500)"
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
				if(usr.cdkawarimimizu)return
				usr.cdkawarimimizu=1
				spawn()usr.Cooldown(300,"Mizu Kawarimi")
				usr<<"Você ativou o Jutsu!"
				var/list/O = usr.overlays.Copy()
				usr.cast = 1
				usr.KawaN += 1
				usr.move = 0
				usr.kawa = 1
				usr.chakra -= 500
				usr.move = 1
				usr.party=1
				var/mob/npcs/Bunshin/L = new /mob/npcs/KBunshin
				if(L)
					L.name = usr.name
					L.icon = usr.icon
					L.move = 0
					L.Frozen = 1
					L.dir=usr.dir
					L.health=1
					//L.Gowner=usr
					L.overlays = usr.overlays
					L.loc=locate(usr.x,usr.y,usr.z)
					L.mizubnpc=1
					L.party=1
					L.partysensei=usr.partysensei
				usr.overlays = usr.overlays.Remove(usr.overlays)
				usr.icon = 'invis.dmi'
				sleep(50)
				usr.icon = usr.Oicon
				usr.overlays = O.Copy()
				usr.overlays-='Bun.dmi'
				usr.overlays-='Bun.dmi'
				usr.overlays-='Bun.dmi'
				usr.overlays-='Bun.dmi'
				usr.overlays-='Bun.dmi'
				usr.cast = 0
				usr.kawa = 0
				usr.Frozen=0
				usr.froze=0
				usr.parado=0
				L.overlays = L.overlays.Remove(L.overlays)
				L.icon = 'poca.dmi'
				L.icon_state=""
				flick("smoke2",L)
				sleep(30)
				flick("smoke2",L)
				sleep(8)
				del(L)
			sleep(30)
			usr.kawa=0

mob
	proc
		MizuB() // Verb used for cast the beam
			//if(src.Gowner != src)
			var/mob/L=new/mob/Poca
			L.icon = /obj/mizu
			L.overlays += /obj/mizu
			L.loc=locate(src.x+1,src.y,src.z)
			src.overlays += 'Wprison.dmi'
			src<<"Você caiu numa armadilha!"
			src.cast=1
			src.froze=1
			src.move=0
			sleep(40)
			flick("smoke2",L)
			sleep(8)
			del(L)
			src.overlays -= 'Wprison.dmi'
			src.cast=0
			src.froze=0
			src.move=1

mob/jutsu
	verb
		SuitonSuiryuudannoJutsu() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Suiton Suiryuudan no Jutsu"
			usr.Handseals()
			if(usr.cdsuiryuudan)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Suiton Suiryuudan no Jutsu</b>!"
				return
			if(usr.cast||usr.Kaiten) // If the mob's cast var is one...
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
				if(usr.cdsuiryuudan)return
				usr.cdsuiryuudan=1
				spawn()usr.Cooldown(100,"Suiton Suiryuudan no Jutsu")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam // Disables the mob's movement
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Suiton Suiryuudan no Jutsu"
				usr.Katon4N += 1
				var/obj/Suiryedan/K = new /obj/Suiryedan
				K.loc = usr.loc
				K.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.aguaN/1.5
				K.Move_Delay=0.5
				usr.Chakragain()
				K.dir = usr.dir
				K.name="[usr]"
				K.Gowner=usr
				walk(K,usr.dir)
				if (target == null)
					del(K)
				sleep(50)
				usr.cast = 0
				del(K)
obj
	Suiryedan
		icon = 'waterdragon.dmi'
		icon_state = ""
		density = 1
		New()
			spawn(50) del src
			..()
			var/obj/caudasuiton/T = new /obj/caudasuiton
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
			var/mob/O = src.Gowner
			if(!O) del src
			if(ismob(A))
				var/mob/M = A
				if(M.party&&M.partysensei==O.partysensei)return
				if(M.Kaiten||M.sphere)
					return
				if(M.copy||M.fcopy)
					M<<"Vc copiou o jutsu com sucesso"
					M.verbs += new /mob/jutsu/verb/SuitonSuiryuudannoJutsu()
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = O.nin/4.75 + O.tai/5 + O.gen/5 + O.shurikenskill/5 + O.aguaN/1.5 - M.Resistencia/2
				if(damage <= 0)damage=0
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				view(M) << "[M] foi acertado pelo Suiton Suiryuudan de [O] tirando [damage] de dano!!"
				M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	caudasuiton
		icon='waterdragon.dmi'
		icon_state="cauda"
		New()
			..()
			spawn(20)
			del(src)


obj
	SuitonDaibakure
		icon = 'Daibakure.dmi'
		icon_state = "8"
		density = 1
		New()
			spawn(40) del src
			..()
		Bump(A)
			var/mob/O = src.Gowner
			if(!O) del src
			if(ismob(A))
				var/mob/M = A
				if(M.party&&M.partysensei==O.partysensei)return
				if(M.Kaiten||M.sphere)
					return
				if(M.copy||M.fcopy)
					M<<"Vc copiou o jutsu com sucesso"
					M.verbs += new /mob/suiton/verb/SuitonDaibakure()
					del(src)
					return
				var/damage = O.nin/4.75 + O.tai/5 + O.gen/5 + O.shurikenskill/5 + O.aguaN/1.5 - M.Resistencia/2
				if(damage <= 0)damage=0
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				view(M) << "[M] foi acertado pelo Suiton Daibakure de [O] perdendo [damage] de vida!"
				M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
		New()
			overlays += new /obj/daibakur1
			overlays += new /obj/daibakur2
			overlays += new /obj/daibakur3
			overlays += new /obj/daibakur4
			overlays += new /obj/daibakur5
			overlays += new /obj/daibakur6
			overlays += new /obj/daibakur7
			overlays += new /obj/daibakur9
			spawn(40) del src
			..()
	daibakur1
		icon = 'Daibakure.dmi'
		icon_state = "1"
		layer = 999
		pixel_x = -32
		pixel_y = 64
	daibakur2
		icon = 'Daibakure.dmi'
		icon_state = "2"
		layer = 999
		pixel_y = 64
	daibakur3
		icon = 'Daibakure.dmi'
		icon_state = "3"
		layer = 999
		pixel_x = 32
		pixel_y = 64
	daibakur4
		icon = 'Daibakure.dmi'
		icon_state = "4"
		layer = 999
		pixel_x = -32
		pixel_y = 32
	daibakur5
		icon = 'Daibakure.dmi'
		icon_state = "5"
		layer = 999
		pixel_y = 32
	daibakur6
		icon = 'Daibakure.dmi'
		icon_state = "6"
		layer = 999
		pixel_x = 32
		pixel_y = 32
	daibakur7
		icon = 'Daibakure.dmi'
		icon_state = "7"
		layer = 999
		pixel_x = -32
	daibakur9
		icon = 'Daibakure.dmi'
		icon_state = "9"
		layer = 999
		pixel_x = 32


mob/suiton
	verb
		SuitonDaibakure()
			set category = "Jutsus"
			set name = "Suiton Daibakure"
			usr.Handseals()
			if(usr.cddaibakure)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Suiton Daibakure</b>!"
				return
			if(usr.cast)
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
			if(!usr.handseals)
				return
			else
				for(var/mob/M in oview(7))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(usr.cddaibakure)return
					usr.cddaibakure=1
					spawn()usr.Cooldown(100,"Suiton Daibakure")
					usr.RandomChakra1()
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz:<font color=blue>Suiton Daibakure!"
					usr.cast = 1
					sleep(10)
					usr.Chakragain()
					var/obj/SuitonDaibakure/S = new /obj/SuitonDaibakure/
					S.loc = M.loc
					S.Gowner = usr
					S.y += 2
					S.nin = usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.aguaN/1.5
					walk(S,SOUTH)
					sleep(40)
					usr.cast = 0
					return



mob/Suiton
	verb
		SuitonDaibakufunoJutsu() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Suiton Daibakufu no Jutsu"
			usr.Handseals()
			if(usr.cddaibakufu)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Suiton Daibakufu no Jutsu</b>!"
				return
			if(usr.cast||usr.Kaiten) // If the mob's cast var is one...
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(!usr.handseals)
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
			if(usr.libering)
				usr<<"Não enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"Não enquanto se concentra"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			else // If the cast var isn't 1...
				if(usr.cddaibakufu)return
				usr.cddaibakufu=1
				spawn()usr.Cooldown(100,"Suiton Daibakufu no Jutsu")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				if(usr.sincronia)
					for(var/mob/M in oview(3))
						if(M.sincronia)
							for(var/obj/Tatsumaki/B in oview(3))
								del(B)
								view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz:Jutsu Combinado: Gufu Suika no Jutsu"
								var/obj/Gufu/K = new /obj/Gufu
								K.loc = usr.loc
								K.nin=usr.nin +M.nin
								K.Move_Delay=0
								K.dir = usr.dir
								K.Gowner=usr
								walk(K,usr.dir)
								if (target == null)
									del(K)
								sleep(50)
								del(K)
								return
							return
						return
					return
				if(SN >= 100)
					usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam // Disables the mob's movement
					usr.SN += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#87ceeb>S</FONT><FONT COLOR=#90d1ec>u</FONT><FONT COLOR=#98d4ed>i</FONT><FONT COLOR=#a1d7ee>t</FONT><FONT COLOR=#a9daee>o</FONT><FONT COLOR=#b2ddef>n</FONT><FONT COLOR=#bae0f0>:</FONT><FONT COLOR=#c3e4f1> </FONT><FONT COLOR=#cbe7f2>D</FONT><FONT COLOR=#d4eaf3>a</FONT><FONT COLOR=#dcedf3>i</FONT><FONT COLOR=#e5f0f4>b</FONT><FONT COLOR=#edf3f5>a</FONT><FONT COLOR=#f5f5f5>k</FONT><FONT COLOR=#e3f6f6>u</FONT><FONT COLOR=#d0f7f7>f</FONT><FONT COLOR=#bdf8f8>u</FONT><FONT COLOR=#aaf8f8> </FONT><FONT COLOR=#97f9f9>N</FONT><FONT COLOR=#84fafa>o</FONT><FONT COLOR=#72fbfb> </FONT><FONT COLOR=#5ffcfc>J</FONT><FONT COLOR=#4cfdfd>u</FONT><FONT COLOR=#39fdfd>t</FONT><FONT COLOR=#26fefe>s</FONT><FONT COLOR=#13ffff>u</FONT><FONT COLOR=#00ffff>!</FONT>"
					var/obj/SuitonDaib/K = new /obj/SuitonDaib
					K.loc = usr.loc
					K.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.aguaN/1.5
					K.dir = usr.dir
					K.name="[usr]"
					K.Move_Delay=1.7
					usr.Chakragain()
					K.Gowner=usr
					walk(K,usr.dir)
					if (target == null)
						del(K)
					sleep(20)
					usr.cast = 0
					usr.Move_Delay = usr.Savedspeed
					sleep(45)
					del(K)
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam // Disables the mob's movement
						usr.SN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#87ceeb>S</FONT><FONT COLOR=#90d1ec>u</FONT><FONT COLOR=#98d4ed>i</FONT><FONT COLOR=#a1d7ee>t</FONT><FONT COLOR=#a9daee>o</FONT><FONT COLOR=#b2ddef>n</FONT><FONT COLOR=#bae0f0>:</FONT><FONT COLOR=#c3e4f1> </FONT><FONT COLOR=#cbe7f2>D</FONT><FONT COLOR=#d4eaf3>a</FONT><FONT COLOR=#dcedf3>i</FONT><FONT COLOR=#e5f0f4>b</FONT><FONT COLOR=#edf3f5>a</FONT><FONT COLOR=#f5f5f5>k</FONT><FONT COLOR=#e3f6f6>u</FONT><FONT COLOR=#d0f7f7>f</FONT><FONT COLOR=#bdf8f8>u</FONT><FONT COLOR=#aaf8f8> </FONT><FONT COLOR=#97f9f9>N</FONT><FONT COLOR=#84fafa>o</FONT><FONT COLOR=#72fbfb> </FONT><FONT COLOR=#5ffcfc>J</FONT><FONT COLOR=#4cfdfd>u</FONT><FONT COLOR=#39fdfd>t</FONT><FONT COLOR=#26fefe>s</FONT><FONT COLOR=#13ffff>u</FONT><FONT COLOR=#00ffff>!</FONT>"
						var/obj/SuitonDaib/K = new /obj/SuitonDaib
						K.loc = usr.loc
						K.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.aguaN/1.5
						K.dir = usr.dir
						K.Move_Delay=1.7
						K.name="[usr]"
						usr.Chakragain()
						K.Gowner=usr
						walk(K,usr.dir)
						if (target == null)
							del(K)
						sleep(20)
						usr.cast = 0
						usr.Move_Delay = usr.Savedspeed
						sleep(45)
						del(K)


obj
	SuitonDaib
		icon = 'watervortex.dmi'
		icon_state = ""
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
				if(M.copy||M.fcopy)
					M<<"Você copiou o jutsu com sucesso."
					M.verbs += new /mob/Suiton/verb/SuitonDaibakufunoJutsu()
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = O.nin/4.75 + O.tai/5 + O.gen/5 + O.shurikenskill/5 + O.aguaN/1.5 - M.Resistencia/2
				if(damage <= 0) damage=0
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				view(M) << "[M] foi acertado pelo Suiton Daibakufu tirando [damage] de dano!!"
				M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)



mob/suiton
	verb
		SuitonDoryuudan() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Suiton Doryuudan"
			if(usr.cddoryuudan)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Suiton Doryuudan</b>!"
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
				usr.cddoryuudan=1
				spawn()usr.Cooldown(100,"Suiton Doryuudan")
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.DoryuuN += 1
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz:<font color=blue>Suiton Doryuudan!"
				sleep(30)
				if(usr.dir == NORTH)
					var/obj/doryuudan/A = new /obj/doryuudan/
					var/obj/doryuudan/B = new /obj/doryuudan/
					var/obj/doryuudan/C = new /obj/doryuudan/
					A.loc = locate(usr.x, usr.y+1, usr.z)
					C.loc = locate(usr.x+1, usr.y+1, usr.z)
					B.loc = locate(usr.x-1, usr.y+1, usr.z)
					A.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.aguaN/1.5
					B.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.aguaN/1.5
					C.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.aguaN/1.5
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
					var/obj/doryuudan/A = new /obj/doryuudan/
					var/obj/doryuudan/B = new /obj/doryuudan/
					var/obj/doryuudan/C = new /obj/doryuudan/
					A.loc = locate(usr.x, usr.y-1, usr.z)
					C.loc = locate(usr.x+1, usr.y-1, usr.z)
					B.loc = locate(usr.x-1, usr.y-1, usr.z)
					A.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.aguaN/1.5
					B.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.aguaN/1.5
					C.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.aguaN/1.5
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
					var/obj/doryuudan/A = new /obj/doryuudan/
					var/obj/doryuudan/C = new /obj/doryuudan/
					var/obj/doryuudan/D = new /obj/doryuudan/
					A.loc = locate(usr.x-1, usr.y, usr.z)
					C.loc = locate(usr.x-1, usr.y-1, usr.z)
					D.loc = locate(usr.x-1, usr.y+1, usr.z)
					A.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.aguaN/1.5
					C.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.aguaN/1.5
					D.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.aguaN/1.5
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
					var/obj/doryuudan/A = new /obj/doryuudan/
					var/obj/doryuudan/C = new /obj/doryuudan/
					var/obj/doryuudan/D = new /obj/doryuudan/
					A.loc = locate(usr.x+1, usr.y, usr.z)
					C.loc = locate(usr.x+1, usr.y-1, usr.z)
					D.loc = locate(usr.x+1, usr.y+1, usr.z)
					A.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.aguaN/1.5
					C.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.aguaN/1.5
					D.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.aguaN/1.5
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


obj
	doryuudan
		icon = 'suitondoryuu.dmi'//dont have a base icon so cant make weights icon!lol
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
				if(M.copy)
					M<<"Você copiou o jutsu com sucesso."
					M.verbs += new /mob/suiton/verb/SuitonDoryuudan()
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = O.nin/4.75 + O.tai/5 + O.gen/5 + O.shurikenskill/5 + O.aguaN/1.5 - M.Resistencia/2
				if(damage<=0)damage=0
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				view(M) << "[M] foi acertado pelo Suiton Doryuudan de [O] tirando [damage] de dano!!"
				M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)


//==== DOTON ====================================================================================


mob/doton
	verb
		Doroudorno() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Doroudorno"
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.froze&&!usr.Kaiten)
				usr<<"Você está paralisado"
				return
			if(usr.Frozen&&!usr.Kaiten)
				usr<<"Você está paralisado"
				return
			if(usr.preso)
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(!usr.Kaiten&&!usr.cast)
				usr.RandomChakra01()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#0000ff>Doroudorno!</FONT>"
				usr.froze = 1
				usr.move=0
				usr.cast = 1
				usr.def = 1
				usr.overlays += 'Esphere.dmi'
				usr.Kaiten =1
				usr.DefesaAbsoluta = 1
				OMG
				if(usr.Kaiten)
					usr.chakra-=usr.Mchakra/100
					usr.def=1
					usr.cast=1
					usr.froze = 1
					usr.move=0
					usr.DefesaAbsoluta = 1
					if(usr.chakra <= usr.Mchakra/100)
						usr.cast = 0
						usr.def = 0
						usr.froze = 0
						usr.move=1
						usr.DefesaAbsoluta = 0
						usr.overlays -= 'Esphere.dmi'
						usr.Kaiten = 0
					else
						sleep(20)
						goto OMG
			else if(usr.Kaiten)
				usr.froze = 0
				usr.move=1
				usr.DefesaAbsoluta = 0
				usr.cast = 0
				usr.def = 0
				usr.overlays -= 'Esphere.dmi'
				usr.Kaiten =0
				usr<<"Você sai do Doroudorno."



mob/doton
	verb
		DorokuGaeshi()
			set category = "Jutsus"
			set name = "Doton Doroku Gaeshi"
			if(usr.cddorokugaeshi)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Doton Doroku Gaeshi</b>!"
				return
			if(usr.cast) // If the mob's cast var is one...
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
				if(usr.cddorokugaeshi)return
				usr.cddorokugaeshi=1
				spawn()usr.Cooldown(100,"Doton Doroku Gaeshi")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#bc8f8f>D</FONT><FONT COLOR=#c39893>o</FONT><FONT COLOR=#caa097>t</FONT><FONT COLOR=#d0a99b>o</FONT><FONT COLOR=#d7b19f>n</FONT><FONT COLOR=#debaa3> </FONT><FONT COLOR=#e5c3a6>D</FONT><FONT COLOR=#eccbaa>o</FONT><FONT COLOR=#f2d4ae>r</FONT><FONT COLOR=#f9dcb2>o</FONT><FONT COLOR=#ffe4b5>k</FONT><FONT COLOR=#faddb2>u</FONT><FONT COLOR=#f4d5af> </FONT><FONT COLOR=#edceab>G</FONT><FONT COLOR=#e7c6a8>a</FONT><FONT COLOR=#e1bea4>e</FONT><FONT COLOR=#dbb6a1>s</FONT><FONT COLOR=#d5ae9d>h</FONT><FONT COLOR=#cfa69a>i</FONT><FONT COLOR=#c89f96>!</FONT><FONT COLOR=#c29793>!</FONT><FONT COLOR=#bc8f8f>!</FONT>"
				switch(usr.dir)
					if(SOUTH)
						var/obj/stonewallH/base/S = new /obj/stonewallH/base/
						S.loc = locate(usr.x+2,usr.y-1,usr.z)
						S.Gowner = usr
						var/obj/stonewallH/h3/H3 = new/obj/stonewallH/h3/
						H3.loc = locate(S.x-1,S.y,S.z)
						H3.Gowner = usr
						var/obj/stonewallH/h5/H5 = new/obj/stonewallH/h5/
						H5.loc = locate(S.x-2,S.y,S.z)
						H5.Gowner = usr
						var/obj/stonewallH/h7/H7 = new/obj/stonewallH/h7/
						H7.loc = locate(S.x-3,S.y,S.z)
						H7.Gowner = usr
						var/obj/stonewallH/h9/H9 = new/obj/stonewallH/h9/
						H9.loc = locate(S.x-4,S.y,S.z)
						H9.Gowner = usr
						var/obj/stonewallH/h11/H11 = new/obj/stonewallH/h11/
						H11.loc = locate(S.x-5,S.y,S.z)
						H11.Gowner = usr
						H11.overlays += /obj/stonewallH/h12/
					if(NORTH)
						var/obj/stonewallH/base/S = new /obj/stonewallH/base/
						S.loc = locate(usr.x+2,usr.y+1,usr.z)
						S.Gowner = usr
						var/obj/stonewallH/h3/H3 = new/obj/stonewallH/h3/
						H3.loc = locate(S.x-1,S.y,S.z)
						H3.Gowner = usr
						var/obj/stonewallH/h5/H5 = new/obj/stonewallH/h5/
						H5.loc = locate(S.x-2,S.y,S.z)
						H5.Gowner = usr
						var/obj/stonewallH/h7/H7 = new/obj/stonewallH/h7/
						H7.loc = locate(S.x-3,S.y,S.z)
						H7.Gowner = usr
						var/obj/stonewallH/h9/H9 = new/obj/stonewallH/h9/
						H9.loc = locate(S.x-4,S.y,S.z)
						H9.Gowner = usr
						var/obj/stonewallH/h11/H11 = new/obj/stonewallH/h11/
						H11.loc = locate(S.x-5,S.y,S.z)
						H11.Gowner = usr
						H11.overlays += /obj/stonewallH/h12/
					if(EAST)
						var/obj/stonewallV/base/S = new /obj/stonewallV/base/
						S.loc = locate(usr.x+1,usr.y-3,usr.z)
						S.Gowner = usr
						var/obj/stonewallV/v3/H3 = new/obj/stonewallV/v3/
						H3.loc = locate(S.x,S.y+1,S.z)
						H3.Gowner = usr
						var/obj/stonewallV/v5/H5 = new/obj/stonewallV/v5/
						H5.loc = locate(S.x,S.y+2,S.z)
						H5.Gowner = usr
						var/obj/stonewallV/v7/H7 = new/obj/stonewallV/v7/
						H7.loc = locate(S.x,S.y+3,S.z)
						H7.Gowner = usr
						var/obj/stonewallV/v9/H9 = new/obj/stonewallV/v9/
						H9.loc = locate(S.x,S.y+4,S.z)
						H9.Gowner = usr
						var/obj/stonewallV/v11/H11 = new/obj/stonewallV/v11/
						H11.loc = locate(S.x,S.y+5,S.z)
						H11.Gowner = usr
						H11.overlays += /obj/stonewallV/v12/
					if(WEST)
						var/obj/stonewallV/base/S = new /obj/stonewallV/base/
						S.loc = locate(usr.x-1,usr.y-3,usr.z)
						S.Gowner = usr
						var/obj/stonewallV/v3/H3 = new/obj/stonewallV/v3/
						H3.loc = locate(S.x,S.y+1,S.z)
						H3.Gowner = usr
						var/obj/stonewallV/v5/H5 = new/obj/stonewallV/v5/
						H5.loc = locate(S.x,S.y+2,S.z)
						H5.Gowner = usr
						var/obj/stonewallV/v7/H7 = new/obj/stonewallV/v7/
						H7.loc = locate(S.x,S.y+3,S.z)
						H7.Gowner = usr
						var/obj/stonewallV/v9/H9 = new/obj/stonewallV/v9/
						H9.loc = locate(S.x,S.y+4,S.z)
						H9.Gowner = usr
						var/obj/stonewallV/v11/H11 = new/obj/stonewallV/v11/
						H11.loc = locate(S.x,S.y+5,S.z)
						H11.Gowner = usr
						H11.overlays += /obj/stonewallV/v12/
				var/Sleeptime = round(usr.terraN)
				if(Sleeptime >= 1)
					if(Sleeptime<=100)
						Sleeptime = 50
					if(Sleeptime>100)
						Sleeptime=200
				sleep(Sleeptime)
				for(var/obj/stonewallH/C in world)
					if(C.Gowner == usr)
						del(C)
				for(var/obj/stonewallV/C in world)
					if(C.Gowner == usr)
						del(C)
					usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam // Disables the mob's movement
					sleep(10)
					usr.cast = 0

mob/doton
	verb
		DotonDoryoDango() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Doton Doryo Dango"
			if(usr.cddoryodango)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Doton Doryo Dango</b>!"
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
				if(usr.cddoryodango)return
				usr.cddoryodango=1
				spawn()usr.Cooldown(100,"Doton Doryo Dango")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.Death(usr)
					return
				if(usr.DDD >= 25)
					usr.DDD += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#f0e68c>D</FONT><FONT COLOR=#e8cf81>o</FONT><FONT COLOR=#deb874>t</FONT><FONT COLOR=#d5a068>o</FONT><FONT COLOR=#cb895c>n</FONT><FONT COLOR=#c2714f> </FONT><FONT COLOR=#b85943>D</FONT><FONT COLOR=#af4236>o</FONT><FONT COLOR=#a52a2a>r</FONT><FONT COLOR=#a23233>y</FONT><FONT COLOR=#9e3b3c>o</FONT><FONT COLOR=#994345> </FONT><FONT COLOR=#954b4e>D</FONT><FONT COLOR=#915458>a</FONT><FONT COLOR=#8d5c61>n</FONT><FONT COLOR=#88646a>g</FONT><FONT COLOR=#846d73>o</FONT><FONT COLOR=#80747b>!</FONT>"
					var/obj/DotonDD/K = new /obj/DotonDD
					K.loc = usr.loc
					K.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.terraN/1.5
					K.dir = usr.dir
					K.name="[usr]"
					usr.Chakragain()
					K.Gowner=usr
					K.Move_Delay=1.8
					walk(K,usr.dir)
					if (target == null)
						del(K)
					sleep(35)
					usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam // Disables the mob's movement
					sleep(10)
					usr.cast = 0
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.DDD += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#f0e68c>D</FONT><FONT COLOR=#e8cf81>o</FONT><FONT COLOR=#deb874>t</FONT><FONT COLOR=#d5a068>o</FONT><FONT COLOR=#cb895c>n</FONT><FONT COLOR=#c2714f> </FONT><FONT COLOR=#b85943>D</FONT><FONT COLOR=#af4236>o</FONT><FONT COLOR=#a52a2a>r</FONT><FONT COLOR=#a23233>y</FONT><FONT COLOR=#9e3b3c>o</FONT><FONT COLOR=#994345> </FONT><FONT COLOR=#954b4e>D</FONT><FONT COLOR=#915458>a</FONT><FONT COLOR=#8d5c61>n</FONT><FONT COLOR=#88646a>g</FONT><FONT COLOR=#846d73>o</FONT><FONT COLOR=#80747b>!</FONT>"
						var/obj/DotonDD/K = new /obj/DotonDD
						K.loc = usr.loc
						K.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.terraN/1.5
						K.dir = usr.dir
						K.name="[usr]"
						K.Gowner=usr
						K.Move_Delay=1.8
						walk(K,usr.dir)
						if (target == null)
							del(K)
						sleep(35)
						usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam // Disables the mob's movement
						sleep(10)
						usr.cast = 0
					else
						usr<<"Você falhou em usar o Doton Doryo Dango"

obj
	DotonDD
		icon = 'dotons.dmi'
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
				if(M.copy||M.fcopy)
					M<<"Você copiou o jutsu com sucesso."
					M.verbs += new /mob/doton/verb/DotonDoryoDango()
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = O.nin/4.75 + O.tai/5 + O.gen/5 + O.shurikenskill/5 + O.terraN/1.5 - M.Resistencia/2
				if(damage<=0)damage=0
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				view(M) << "[M] foi acertado pelo Doton Doryo Dango tirando [damage] de dano!!"
				M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	KunaiMM
		icon = 'kunaiminato.dmi'
		icon_state = ""
		density = 1
		New()
			spawn(100) del src
			..()
		Bump(A)
			var/mob/O = src.Gowner
			if(!O) del src
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.PK==0)
					return
				var/damage = src.nin - M.Resistencia/2
				if(damage <= 0) damage=0
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				view(M) << "[M] foi acertado pela kunai tirando [damage] de dano!!"
				M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	doryuuheki
		icon = 'DotonTechniques.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state = "Front"
		density = 1
		New()
			spawn(100) del src
			..()
		Move()
			..()
			var/obj/caudadoryuuheki/T = new /obj/caudadoryuuheki
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
			var/mob/O = src.Gowner
			if(!O) del src
			if(ismob(A))
				var/mob/M = A
				if(M.party&&M.partysensei==O.partysensei)return
				if(M.Kaiten||M.sphere)
					return
				if(M.copy||M.fcopy)
					M<<"Você copiou o jutsu com sucesso."
					M.verbs += new /mob/doton/verb/DotonDoryuuheki()
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = O.nin/4.75 + O.tai/5 + O.gen/5 + O.shurikenskill/5 + O.terraN/1.5 - M.Resistencia/2
				if(damage<=0)damage=0
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				view(M) << "[M] foi acertado pelo Doryuuheki tirando [damage] de dano!!"
				M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)



obj
	caudadoryuuheki
		icon='DotonTechniques.dmi'
		icon_state="Middle"
		New()
			..()
			spawn(40)
			del(src)
/*obj
	doryuuheki
		icon = 'DotonTechniques.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state = "Front"
		density = 1
		New()
			spawn(100) del src
			..()
		Bump(A)
			var/mob/O = src.Gowner
			if(!O) del src
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.copy||M.fcopy)
					M<<"Você copiou o jutsu com sucesso."
					M.verbs += new /mob/doton/verb/DotonDoryuuheki()
					del(src)
					return
				if(M.rd)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = O.nin/4.75 + O.tai/5 + O.gen/5 + O.shurikenskill/5 + O.terraN/1.5 - M.Resistencia/2
				if(damage<=0)damage=0
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				view(M) << "[M] foi acertado pelo Doryuuheki tirando [damage] de dano!!"
				M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)*/


mob/doton
	verb
		DotonDoryuuheki() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Doton Doryuuheki"
			if(usr.cddoryuuheki)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Doton Doryuuheki</b>!"
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
				usr.cddoryuuheki=1
				spawn()usr.Cooldown(100,"Doton Doryuuheki")
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#deb887>D</FONT><FONT COLOR=#d8b78b>o</FONT><FONT COLOR=#d2b590>t</FONT><FONT COLOR=#cbb394>o</FONT><FONT COLOR=#c4b199>n</FONT><FONT COLOR=#bdaf9d> </FONT><FONT COLOR=#b7ada1>D</FONT><FONT COLOR=#b0aba6>o</FONT><FONT COLOR=#a9a9a9>r</FONT><FONT COLOR=#a69595>y</FONT><FONT COLOR=#a28080>u</FONT><FONT COLOR=#9e6a6a>u</FONT><FONT COLOR=#9b5555>h</FONT><FONT COLOR=#974040>e</FONT><FONT COLOR=#932b2b>k</FONT><FONT COLOR=#8f1515>i</FONT><FONT COLOR=#8b0000>!</FONT>"
				sleep(30)
				if(usr.dir == NORTH)
					var/obj/doryuuheki/A = new /obj/doryuuheki/
					var/obj/doryuuheki/B = new /obj/doryuuheki/
					var/obj/doryuuheki/C = new /obj/doryuuheki/
					A.loc = locate(usr.x, usr.y+1, usr.z)
					C.loc = locate(usr.x+1, usr.y+1, usr.z)
					B.loc = locate(usr.x-1, usr.y+1, usr.z)
					A.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.terraN/1.5
					B.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.terraN/1.5
					C.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.terraN/1.5
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					A.dir = NORTH
					B.dir = NORTH
					C.dir = NORTH
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
				else if(usr.dir == SOUTH)
					var/obj/doryuuheki/A = new /obj/doryuuheki/
					var/obj/doryuuheki/B = new /obj/doryuuheki/
					var/obj/doryuuheki/C = new /obj/doryuuheki/
					A.loc = locate(usr.x, usr.y-1, usr.z)
					C.loc = locate(usr.x+1, usr.y-1, usr.z)
					B.loc = locate(usr.x-1, usr.y-1, usr.z)
					A.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.terraN/1.5
					B.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.terraN/1.5
					C.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.terraN/1.5
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					A.dir = SOUTH
					B.dir = SOUTH
					C.dir = SOUTH
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
				else if(usr.dir == WEST)
					var/obj/doryuuheki/A = new /obj/doryuuheki/
					var/obj/doryuuheki/C = new /obj/doryuuheki/
					var/obj/doryuuheki/D = new /obj/doryuuheki/
					A.loc = locate(usr.x-1, usr.y, usr.z)
					C.loc = locate(usr.x-1, usr.y-1, usr.z)
					D.loc = locate(usr.x-1, usr.y+1, usr.z)
					A.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.terraN/1.5
					C.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.terraN/1.5
					D.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.terraN/1.5
					A.Gowner=usr
					C.Gowner=usr
					D.Gowner=usr
					A.dir = WEST
					C.dir = WEST
					D.dir = WEST
					walk(A,usr.dir)
					walk(C,usr.dir)
					walk(D,usr.dir)
				else if(usr.dir == EAST)
					var/obj/doryuuheki/A = new /obj/doryuuheki/
					var/obj/doryuuheki/C = new /obj/doryuuheki/
					var/obj/doryuuheki/D = new /obj/doryuuheki/
					A.loc = locate(usr.x+1, usr.y, usr.z)
					C.loc = locate(usr.x+1, usr.y-1, usr.z)
					D.loc = locate(usr.x+1, usr.y+1, usr.z)
					A.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.terraN/1.5
					C.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.terraN/1.5
					D.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.terraN/1.5
					A.Gowner=usr
					C.Gowner=usr
					D.Gowner=usr
					A.dir = EAST
					C.dir = EAST
					D.dir = EAST
					walk(A,usr.dir)
					walk(C,usr.dir)
					walk(D,usr.dir)



mob/doton
	verb
		Dotont()
			set category = "Jutsus"
			set name = "Doton Doryuu Taiga"
			if(usr.cddoryuutaiga)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Doton Doryuu Taiga</b>!"
				return
			usr.Handseals()
			if(usr.cast)
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
			if(!usr.handseals&&!usr.NPC)
				return
			else
				for(var/mob/M in oview(7))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(usr.cddoryuutaiga)return
					usr.cddoryuutaiga=1
					spawn()usr.Cooldown(100,"Doton Doryuu Taiga")
					usr.RandomChakra1()
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					usr.DDD += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz:<font color=blue>Doton  Doryuu Taiga !"
					usr.cast = 1
					sleep(10)
					var/obj/dotont/S = new /obj/dotont/
					S.loc = M.loc
					S.Gowner = usr
					S.y += 2
					S.nin = usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.terraN/1.5
					walk(S,SOUTH)
					usr.cast = 0


obj
	dotont
		icon = 'gaaras.dmi'
		icon_state = "8"
		density = 1
		New()
			spawn(40) del src
			..()
		Bump(A)
			var/mob/O = src.Gowner
			if(!O) del src
			if(ismob(A))
				var/mob/M = A
				if(M.party&&M.partysensei==O.partysensei)return
				if(M.Kaiten||M.sphere)
					return
				if(M.copy||M.fcopy)
					M<<"Vc copiou o jutsu com sucesso"
					M.verbs += new /mob/doton/verb/Dotont()
					del(src)
					return
				var/damage = O.nin/4.75 + O.tai/5 + O.gen/5 + O.shurikenskill/5 + O.terraN/1.5 - M.Resistencia/2
				if(damage <= 0)damage=0
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				view(M) << "[M] foi acertado pelo Doton Doryuu Taiga recebendo [damage] de dano!!"
				M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
		New()
			overlays += new /obj/dotont1
			overlays += new /obj/dotont2
			overlays += new /obj/dotont3
			overlays += new /obj/dotont4
			overlays += new /obj/dotont5
			overlays += new /obj/dotont6
			overlays += new /obj/dotont7
			overlays += new /obj/dotont9
			spawn(40) del src
			..()
	dotont1
		icon = 'gaaras.dmi'
		icon_state = "1"
		layer = 999
		pixel_x = -32
		pixel_y = 64
	dotont2
		icon = 'gaaras.dmi'
		icon_state = "2"
		layer = 999
		pixel_y = 64
	dotont3
		icon = 'gaaras.dmi'
		icon_state = "3"
		layer = 999
		pixel_x = 32
		pixel_y = 64
	dotont4
		icon = 'gaaras.dmi'
		icon_state = "4"
		layer = 999
		pixel_x = -32
		pixel_y = 32
	dotont5
		icon = 'gaaras.dmi'
		icon_state = "5"
		layer = 999
		pixel_y = 32
	dotont6
		icon = 'gaaras.dmi'
		icon_state = "6"
		layer = 999
		pixel_x = 32
		pixel_y = 32
	dotont7
		icon = 'gaaras.dmi'
		icon_state = "7"
		layer = 999
		pixel_x = -32
	dotont9
		icon = 'gaaras.dmi'
		icon_state = "9"
		layer = 999
		pixel_x = 32




//==== FUUTON ===================================================================================



obj
	fuutonheki
		icon = 'fuuton.dmi'//dont have a base icon so cant make weights icon!lol
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
				if(M.copy||M.fcopy)
					M<<"Você copiou o jutsu com sucesso."
					M.verbs += new /mob/fuuton/verb/Fuutonheki()
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = O.nin/4.75 + O.tai/5 + O.gen/5 + O.shurikenskill/5 + O.ventoN/1.5 - M.Resistencia/2
				if(damage<=0)damage=0
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				var/mob/B=src.Gowner
				view(M) << "[M] foi acertado pelo Fuuton Atsugai tirando [damage] de dano!!"
				M.Death(B)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
mob/fuuton
	verb
		Fuutonheki() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Fuuton Atsugai"
			if(usr.cdatsugai)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Fuuton Atsugai</b>!"
				return
			usr.Handseals()
			if(usr.cast||usr.Kaiten) // If the mob's cast var is one...
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(!usr.handseals)
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
			if(!usr.handseals)
				return
			else
				if(usr.cdatsugai)return
				usr.RandomChakra1()
				usr.cdatsugai=1
				spawn()usr.Cooldown(100,"Fuuton Atsugai")
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR= blue>Fuuton Atsugai!</FONT>"
				sleep(30)
				usr.Chakragain()
				if(usr.dir == NORTH)
					var/obj/fuutonheki/A = new /obj/fuutonheki/
					var/obj/fuutonheki/B = new /obj/fuutonheki/
					var/obj/fuutonheki/C = new /obj/fuutonheki/
					A.loc = locate(usr.x, usr.y+1, usr.z)
					C.loc = locate(usr.x+1, usr.y+1, usr.z)
					B.loc = locate(usr.x-1, usr.y+1, usr.z)
					A.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.ventoN/1.5
					B.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.ventoN/1.5
					C.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.ventoN/1.5
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
					var/obj/fuutonheki/A = new /obj/fuutonheki/
					var/obj/fuutonheki/B = new /obj/fuutonheki/
					var/obj/fuutonheki/C = new /obj/fuutonheki/
					A.loc = locate(usr.x, usr.y-1, usr.z)
					C.loc = locate(usr.x+1, usr.y-1, usr.z)
					B.loc = locate(usr.x-1, usr.y-1, usr.z)
					A.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.ventoN/1.5
					B.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.ventoN/1.5
					C.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.ventoN/1.5
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
					var/obj/fuutonheki/A = new /obj/fuutonheki/
					var/obj/fuutonheki/C = new /obj/fuutonheki/
					var/obj/fuutonheki/D = new /obj/fuutonheki/
					A.loc = locate(usr.x-1, usr.y, usr.z)
					C.loc = locate(usr.x-1, usr.y-1, usr.z)
					D.loc = locate(usr.x-1, usr.y+1, usr.z)
					A.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.ventoN/1.5
					C.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.ventoN/1.5
					D.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.ventoN/1.5
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
					var/obj/fuutonheki/A = new /obj/fuutonheki/
					var/obj/fuutonheki/C = new /obj/fuutonheki/
					var/obj/fuutonheki/D = new /obj/fuutonheki/
					A.loc = locate(usr.x+1, usr.y, usr.z)
					C.loc = locate(usr.x+1, usr.y-1, usr.z)
					D.loc = locate(usr.x+1, usr.y+1, usr.z)
					A.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.ventoN/1.5
					C.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.ventoN/1.5
					D.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.ventoN/1.5
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

mob/fuuton
	verb
		FuutonDaiTatsumaki()//fuuton ++
			set category = "Jutsus"
			set name = "Fuuton Dai Tatsumaki"
			usr.Handseals()
			if(usr.cddtatsumaki)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Fuuton Dai Tatsumaki</b>!"
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
			if(!usr.handseals)
				return
			else // If the cast var isn't 1..
				if(usr.cddtatsumaki)return
				usr.cddtatsumaki=1
				spawn()usr.Cooldown(100,"Fuuton Dai Tatsumaki")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam // Disables the mob's movement
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Fuuton Dai Tatsumaki"
				var/obj/DaiTatsumaki/K = new /obj/DaiTatsumaki
				K.loc = usr.loc
				K.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.ventoN/1.5
				K.Move_Delay=0.5
				usr.Chakragain()
				K.dir = usr.dir
				K.name="[usr]"
				K.Gowner=usr
				walk(K,usr.dir)
				sleep(10)
				usr.cast = 0

obj
	DaiTatsumaki  //Grande Tornado
		icon = 'tornado1.dmi'
		icon_state = "8"
		density = 1
		New()
			spawn(45) del src
			..()
		Bump(A)
			var/mob/O = src.Gowner
			if(!O) del src
			if(ismob(A))
				var/mob/M = A
				if(M.party&&M.partysensei==usr.partysensei)return
				if(M.Kaiten||M.sphere)
					return
				if(M.PK==0)
					return
				if(M.copy||M.fcopy)
					M<<"Vc copiou o jutsu com sucesso"
					M.verbs += new /mob/fuuton/verb/FuutonDaiTatsumaki()
					del(src)
					return
				var/damage = O.nin/4.75 + O.tai/5 + O.gen/5 + O.shurikenskill/5 + O.ventoN/1.5 - M.Resistencia/2
				if(damage <= 0) damage=0
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				view(M) << "[M] foi acertado pelo Fuuton Dai Tatsumaki tirando [damage] de dano!!"
				M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
		New()
			overlays += new /obj/dait1/
			overlays += new /obj/dait2/
			overlays += new /obj/dait3/
			overlays += new /obj/dait4/
			overlays += new /obj/dait5/
			overlays += new /obj/dait6/
			overlays += new /obj/dait7/
			overlays += new /obj/dait8/
			spawn(45) del src
			..()
	dait1
		icon = 'tornado1.dmi'
		icon_state = "1"
		pixel_x = -32
		pixel_y = 64
	dait2
		icon = 'tornado1.dmi'
		icon_state = "2"
		pixel_y = 64
	dait3
		icon = 'tornado1.dmi'
		icon_state = "3"
		pixel_x = 32
		pixel_y = 64
	dait4
		icon = 'tornado1.dmi'
		icon_state = "4"
		pixel_x = -32
		pixel_y = 32
	dait5
		icon = 'tornado1.dmi'
		icon_state = "5"
		pixel_y = 32
	dait6
		icon = 'tornado1.dmi'
		icon_state = "6"
		pixel_x = 32
		pixel_y = 32
	dait7
		icon = 'tornado1.dmi'
		icon_state = "7"
		pixel_x = -32
	dait8
		icon = 'tornado1.dmi'
		icon_state = "9"
		pixel_x = 32


mob/fuuton
	verb
		FuutonS()
			set category = "TaiJutsu"
			set name = "Estilo Chakra Fuuton"
			set desc = "Estilo de luta usando chakra fuuton"
			if(!usr.FuutonStyle)
				usr<<"Você está usando o modo de luta fuuton"
				usr.Jyuken = 0
				usr.Tekken = 0
				usr.FuutonStyle = 1
				usr.tai=usr.Mtai*1.1
				usr.nin=usr.Mnin*1.1
				usr.gen=usr.Mgen*1.1
				usr.shurikenskill=usr.Mshurikenskill*1.1
				usr.Basic = 0
				usr.Shodstyle=0
				return
			if(usr.FuutonStyle)
				usr<<"Você já está usando o modo fuuton"
				return



mob/fuuton
	verb
		FuutonTatsumaki()
			set category = "Jutsus"
			set name = "Fuuton Tatsumaki"
			usr.Handseals()
			if(usr.cdtatsumaki)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Fuuton Tatsumaki</b>!"
				return
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
			if(!usr.handseals)
				return
			else // If the cast var isn't 1...
				if(usr.cdtatsumaki)return
				usr.cdtatsumaki=1
				spawn()usr.Cooldown(150,"Fuuton Tatsumaki")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam // Disables the mob's movement
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Fuuton Tatsumaki"
				var/obj/Tatsumaki/K = new /obj/Tatsumaki
				K.loc = usr.loc
				K.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.ventoN/1.5
				K.Move_Delay=1.2
				usr.Chakragain()
				K.dir = usr.dir
				K.name="[usr]"
				K.Gowner=usr
				walk(K,usr.dir)
				if (target == null)
					del(K)
				sleep(45)
				usr.cast = 0
				del(K)

obj
	Tatsumaki  //Tornado
		icon = 'tatsumaki.dmi'
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
				if(M.copy||M.fcopy)
					M<<"Vc copiou o jutsu com sucesso"
					M.verbs += new /mob/fuuton/verb/FuutonTatsumaki()
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = O.nin/4.75 + O.tai/5 + O.gen/5 + O.shurikenskill/5 + O.ventoN/1.5 - M.Resistencia/2
				if(damage <= 0)damage=0
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				view(M) << "[M] foi acertado pelo Fuuton No Tatsumaki tirando [damage] de dano!!"
				M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)


mob/fuuton
	verb
		FuutonRenkuudan() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Fuuton Renkuudan No Jutsu"
			usr.Handseals()
			if(usr.cdrenkuudan)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Fuuton Renkuudan No Jutsu</b>!"
				return
			if(usr.cast||usr.Kaiten == 1) // If the mob's cast var is one...
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
			if(!usr.handseals)
				return
			else // If the cast var isn't 1...
				if(usr.cdrenkuudan)return
				usr.cdrenkuudan=1
				spawn()usr.Cooldown(100,"Fuuton Renkuudan No Jutsu")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				if(usr.Fuuton2N >= 25)
					usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam // Disables the mob's movement
					usr.Fuuton2N += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Fuuton: Renkuudan No Jutsu!"
					var/obj/FuutonRenkuudan/K = new /obj/FuutonRenkuudan
					K.loc = usr.loc
					K.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.ventoN/1.5
					K.dir = usr.dir
					K.Move_Delay=1.7
					usr.Chakragain()
					K.name="[usr]"
					K.Gowner=usr
					walk(K,usr.dir)
					if (target == null)
						del(K)
					sleep(10)
					usr.cast = 0
					sleep(45)
					del(K)
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.Fuuton2N += 1
						usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam // Disables the mob's movement
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Fuuton: Renkuudan No Jutsu!"
						var/obj/FuutonRenkuudan/K = new /obj/FuutonRenkuudan
						K.loc = usr.loc
						K.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.ventoN/1.5
						K.Move_Delay=1.7
						K.dir = usr.dir
						K.name="[usr]"
						K.Gowner=usr
						walk(K,usr.dir)
						if (target == null)
							del(K)
						sleep(10)
						usr.cast = 0
						sleep(45)
						del(K)


obj
	FuutonRenkuudan
		icon = 'fuuton.dmi'
		icon_state = ""
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
				if(M.copy||M.fcopy)
					M<<"Você copiou o jutsu com sucesso."
					M.verbs += new /mob/fuuton/verb/FuutonRenkuudan()
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = O.nin/4.75 + O.tai/5 + O.gen/5 + O.shurikenskill/5 + O.ventoN/1.5 - M.Resistencia/2
				if(damage <= 0)damage=0
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				view(M) << "[M] foi acertado pelo Renkuudan tirando [damage] de dano!!"
				M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)


//==== RAITON ===================================================================================


mob/raiton
	verb
		Raitonheki() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Raiton Maisou"
			if(usr.cdmaisou)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Raiton Maisou</b>!"
				return
			usr.Handseals()
			if(usr.cast||usr.Kaiten) // If the mob's cast var is one...
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(!usr.handseals)
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
			if(!usr.handseals)
				return
			else // If the cast var isn't 1...
				if(usr.cdmaisou)return
				usr.cdmaisou=1
				spawn() usr.Cooldown(100,"Raiton Maisou")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR= yellow>Raitou Maisou!</FONT>"
				sleep(30)
				usr.Chakragain()
				if(usr.dir == NORTH)
					var/obj/raitonheki/A = new /obj/raitonheki/
					var/obj/raitonheki/B = new /obj/raitonheki/
					var/obj/raitonheki/C = new /obj/raitonheki/
					A.loc = locate(usr.x, usr.y+1, usr.z)
					C.loc = locate(usr.x+1, usr.y+1, usr.z)
					B.loc = locate(usr.x-1, usr.y+1, usr.z)
					A.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.trovaoN/1.5
					B.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.trovaoN/1.5
					C.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.trovaoN/1.5
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
					var/obj/raitonheki/A = new /obj/raitonheki/
					var/obj/raitonheki/B = new /obj/raitonheki/
					var/obj/raitonheki/C = new /obj/raitonheki/
					A.loc = locate(usr.x, usr.y-1, usr.z)
					C.loc = locate(usr.x+1, usr.y-1, usr.z)
					B.loc = locate(usr.x-1, usr.y-1, usr.z)
					A.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.trovaoN/1.5
					B.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.trovaoN/1.5
					C.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.trovaoN/1.5
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
					var/obj/raitonheki/A = new /obj/raitonheki/
					var/obj/raitonheki/C = new /obj/raitonheki/
					var/obj/raitonheki/D = new /obj/raitonheki/
					A.loc = locate(usr.x-1, usr.y, usr.z)
					C.loc = locate(usr.x-1, usr.y-1, usr.z)
					D.loc = locate(usr.x-1, usr.y+1, usr.z)
					A.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.trovaoN/1.5
					C.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.trovaoN/1.5
					D.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.trovaoN/1.5
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
					var/obj/raitonheki/A = new /obj/raitonheki/
					var/obj/raitonheki/C = new /obj/raitonheki/
					var/obj/raitonheki/D = new /obj/raitonheki/
					A.loc = locate(usr.x+1, usr.y, usr.z)
					C.loc = locate(usr.x+1, usr.y-1, usr.z)
					D.loc = locate(usr.x+1, usr.y+1, usr.z)
					A.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.trovaoN/1.5
					C.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.trovaoN/1.5
					D.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.trovaoN/1.5
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


obj
	raitonheki
		icon = 'rai.dmi'//dont have a base icon so cant make weights icon!lol
		density = 1
		Bump(A)
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
				if(M.copy||M.fcopy)
					usr<<"Ele copiou seu jutsu."
					M<<"Você copiou o jutsu com sucesso."
					M.verbs += new /mob/raiton/verb/Raitonheki()
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = O.nin/4.75 + O.tai/5 + O.gen/5 + O.shurikenskill/5 + O.trovaoN/1.5 - M.Resistencia/2
				if(damage<=0)damage=0
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				view(M) << "[M] foi acertado pelo Raiton Maisou tirando [damage] de dano!!"
				M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)


mob/rai
	verb
		Raikyuu() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Raikyuu No Jutsu"
			if(usr.cdraikyuu)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Raikyuu No Jutsu</b>!"
			usr.Handseals()
			if(usr.cast||usr.Kaiten == 1) // If the mob's cast var is one...
				return
			if(!usr.handseals)
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
			else // If the cast var isn't 1...
				if(usr.cdraikyuu)return
				usr.cdraikyuu=1
				spawn()usr.Cooldown(100,"Raikyuu No Jutsu")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				if(usr.Rai1N >= 25)
					usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam // Disables the mob's movement
					usr.Rai1N += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Raikyuu!"
					var/obj/Raikyuu/K = new /obj/Raikyuu
					K.loc = usr.loc
					K.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.trovaoN/1.5
					K.dir = usr.dir
					K.Move_Delay=1.7
					K.name="[usr]"
					K.Gowner=usr
					usr.Chakragain()
					walk(K,usr.dir)
					if (target == null)
						del(K)
					sleep(10)
					usr.cast = 0
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.Rai1N += 1
						usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam // Disables the mob's movement
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Raikyuu!"
						var/obj/Raikyuu/K = new /obj/Raikyuu
						K.loc = usr.loc
						K.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.trovaoN/1.5
						K.dir = usr.dir
						K.name="[usr]"
						usr.Chakragain()
						K.Move_Delay=1.7
						K.Gowner=usr
						walk(K,usr.dir)
						if (target == null)
							del(K)
						sleep(10)
						usr.cast = 0


obj
	Raikyuu
		icon = 'rai.dmi'
		icon_state = ""
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
				if(M.copy||M.fcopy)
					M<<"Você copiou o jutsu com sucesso."
					M.verbs += new /mob/rai/verb/Raikyuu()
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = O.nin/4.75 + O.tai/5 + O.gen/5 + O.shurikenskill/5 + O.trovaoN/1.5 - M.Resistencia/2
				if(damage <= 0) damage=0
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				view(M) << "[M] foi acertado pelo Raikyuu tirando [damage] de dano!!"
				M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)


mob/rai
	verb
		Ikazuchi_No_Kiba() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Izazuchi No Kiba"
			if(usr.cdizazuchikiba)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Izazuchi No Kiba</b>!"
			usr.Handseals()
			if(usr.cast||usr.Kaiten == 1) // If the mob's cast var is one...
				return
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
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			else // If the cast var isn't 1...
				if(usr.cdizazuchikiba)return
				usr.cdizazuchikiba=1
				spawn()usr.Cooldown(100,"Izazuchi No Kiba")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				if(usr.Rai3N >= 25)
					usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam // Disables the mob's movement
					usr.Rai3N += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Ikazuchi No Kiba!"
					var/obj/Ikazuchi/K = new /obj/Ikazuchi
					K.loc = usr.loc
					usr.Chakragain()
					K.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.trovaoN/1.5
					K.Move_Delay=1.9
					K.dir = usr.dir
					K.name="[usr]"
					K.Gowner=usr
					walk(K,usr.dir)
					if (target == null)
						del(K)
					sleep(20)
					usr.cast = 0
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.chakra -= 2000
						usr.Rai3N += 1
						usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam // Disables the mob's movement
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Ikazuchi No Kiba!"
						var/obj/Ikazuchi/K = new /obj/Ikazuchi
						K.loc = usr.loc
						K.nin=usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.trovaoN/1.5
						K.Move_Delay=1.9
						K.dir = usr.dir
						usr.Chakragain()
						K.name="[usr]"
						K.Gowner=usr
						walk(K,usr.dir)
						if (target == null)
							del(K)
						sleep(20)
						usr.cast = 0

obj
	Ikazuchi
		icon = 'bolt.dmi'
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
				if(M.copy||M.fcopy)
					M<<"Você copiou o jutsu com sucesso."
					M.verbs += new /mob/rai/verb/Ikazuchi_No_Kiba()
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = O.nin/4.75 + O.tai/5 + O.gen/5 + O.shurikenskill/5 + O.trovaoN/1.5 - M.Resistencia/2
				if(damage <= 0)damage=0
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				view(M) << "[M] foi acertado pelo Ikazuchi No Kiba recebendo [damage] de dano!!"
				M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

mob/rai
	verb
		RaizouIkazuchiWoUtte() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Raizou Ikazuchi Wo Utte"
			if(usr.cdraizou)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Raizou Ikazuchi Wo Utte</b>!"
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
				for(var/mob/M in oview(3))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(usr.cdraizou)return
					if(M.copy||M.fcopy)
						M<<"Você copiou o jutsu com sucesso."
						M.verbs += new /mob/rai/verb/RaizouIkazuchiWoUtte()
						return
					usr.cdraizou=1
					spawn() usr.Cooldown(100,"Raizou")
					usr.RandomChakra1()
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#daa520>R</FONT><FONT COLOR=#ddad34>a</FONT><FONT COLOR=#dfb648>i</FONT><FONT COLOR=#e2be5c>z</FONT><FONT COLOR=#e4c670>o</FONT><FONT COLOR=#e7ce84>u</FONT><FONT COLOR=#e9d797> </FONT><FONT COLOR=#ecdfab>I</FONT><FONT COLOR=#eee7bf>K</FONT><FONT COLOR=#f1efd3>a</FONT><FONT COLOR=#f3f8e7>z</FONT><FONT COLOR=#f5fffa>u</FONT><FONT COLOR=#f4f8e9>c</FONT><FONT COLOR=#f1f1d7>h</FONT><FONT COLOR=#efe9c4>i</FONT><FONT COLOR=#ede2b2> </FONT><FONT COLOR=#eadaa0>W</FONT><FONT COLOR=#e8d38e>o</FONT><FONT COLOR=#e6cb7b> </FONT><FONT COLOR=#e3c369>U</FONT><FONT COLOR=#e1bc57>t</FONT><FONT COLOR=#dfb445>t</FONT><FONT COLOR=#dcad32>e</FONT><FONT COLOR=#daa520>!</FONT>"
					usr.cast = 1
					var/damage = usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.trovaoN/1.5 - M.Resistencia/2
					if(damage<=0)damage=0
					flick('elec1.dmi',M)
					view()<<"[M] recebeu [damage] de dano ao receber o Raizou de [usr]!"
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					if(M.health<=0)M.Death(usr)
					sleep(10)
					usr.cast = 0


mob/rai
	verb
		RairyuuNoTatsumaki() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Rairyuu No Tatsumaki"
			if(usr.cdrairyuutatsumaki)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Rairyuu No Tatsumaki</b>!"
				return
			usr.Handseals()
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
			if(!usr.handseals)
				return
			else // If the cast var isn't 1...
				if(usr.cdrairyuutatsumaki)return
				usr.cdrairyuutatsumaki=1
				spawn()usr.Cooldown(100,"Rairyuu No Tatsumaki")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Rairyuu no Tatsumaki"
				var/obj/RairyuuTatsumaki/K = new/obj/RairyuuTatsumaki
				K.loc = usr.loc
				K.nin= usr.nin/4.75 + usr.tai/5 + usr.gen/5 + usr.shurikenskill/5 + usr.trovaoN/1.5
				K.Move_Delay=0.5
				usr.Chakragain()
				K.dir = usr.dir
				K.name="[usr]"
				K.Gowner=usr
				walk(K,usr.dir)
				if(target == null)
					del(K)
				sleep(10)
				usr.cast = 0



obj
	RairyuuTatsumaki
		icon = 'thunderdragon.dmi'
		icon_state = "1"
		density = 1
		Move()
			spawn(50) del(src)
			..()
			var/obj/caudadragaoraio/T = new /obj/caudadragaoraio
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
			var/mob/O = src.Gowner
			if(!O) del src
			if(ismob(A))
				var/mob/M = A
				if(M.party&&M.partysensei==O.partysensei)return
				if(M.Kaiten||M.sphere)
					return
				if(M.copy||M.fcopy)
					M<<"Você copiou o jutsu com sucesso."
					M.verbs += new /mob/rai/verb/RairyuuNoTatsumaki()
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = O.nin/4.75 + O.tai/5 + O.gen/5 + O.shurikenskill/5 + O.trovaoN/1.5 - M.Resistencia/2
				if(damage <= 0)damage=0
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				view(M) << "[M] foi acertado pelo Rairyuu No Tatsumaki tirando [damage] de dano!!"
				M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	caudadragaoraio
		icon='thunderdragon.dmi'
		icon_state="2"
		New()
			..()
			spawn(20)
			del(src)
//== CHIDORI ===============================


mob
	proc
		DarkChidori()
			if(src.chakra<=3000)
				return
			if(src.cast)
				return
			view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#4682b4>D</FONT><FONT COLOR=#6f97b8>ark</FONT><FONT COLOR=#98acbd>Chi</FONT><FONT COLOR=#c0c0c0>d</FONT><FONT COLOR=#a1abc9>o</FONT><FONT COLOR=#8195d1>r</FONT><FONT COLOR=#617fda>i</FONT><FONT COLOR=#4169e1>!</FONT>"
			usr.ChidoriU += 1
			usr.chakra -= 3000
			usr.ChidoriD = usr.Mnin
			usr.Chakragain()
			usr.Chidorion = 1
			usr.cast = 1
			usr.overlays += 'Darkchidori.dmi'
			usr.icon_state = "run"
			RD
				if(!usr.battlingRC)
					ChidoriD -= rand(1000,2000)
				if(usr.ChidoriD <= 1)
					usr << "Seu chidori fica sem energia."
					usr.ChidoriD = 0
					usr.overlays -= 'Darkchidori.dmi'
					usr.overlays -= 'Darkchidori.dmi'
					usr.overlays -= 'Darkchidori.dmi'
					usr.overlays -= 'Darkchidori.dmi'
					usr.Chidorion = 0
					usr.cast = 0
					return
				else
					sleep(6)
					goto RD


mob/jutsu
	verb
		Chidori()
			set category = "Jutsus"
			set name = "Chidori"
			usr.Handseals()
			if(usr.cdchidori)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Chidori</b>!"
				return
			if (usr.ingat)
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if (usr.intank)
				return
			if (usr.Kaiten)
				return
			if (usr.sphere)
				return
			if(usr.inso)
				return
			if (usr.cast)
				return
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(usr.incs==1)
				usr.DarkChidori()
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
			if(Chidorion)
				usr <<"Você já está usando o Chidori!"
				return
			if(!usr.handseals)
				return
			else
				if(usr.cdchidori)return
				usr.cdchidori=1
				spawn()usr.Cooldown(100,"Chidori")
				if(usr.ChidoriU >= 30)
					if(usr.chakra <= 3000)
						usr<<"Você precisa colocar no mínimo 3000 chakra nele!"
						return
					else
						view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#4682b4>C</FONT><FONT COLOR=#6f97b8>h</FONT><FONT COLOR=#98acbd>i</FONT><FONT COLOR=#c0c0c0>d</FONT><FONT COLOR=#a1abc9>o</FONT><FONT COLOR=#8195d1>r</FONT><FONT COLOR=#617fda>i</FONT><FONT COLOR=#4169e1>!</FONT>"
						usr.ChidoriU += 1
						usr.chakra -= 3000
						usr.ChidoriD = usr.nin/3 + usr.trovaoN/1.5
						usr.Chakragain()
						usr.Chidorion = 1
						usr.cast = 1
						usr.overlays += 'Chidori.dmi'
						usr.icon_state = "run"
						RD
							if(!usr.battlingRC)
								ChidoriD -= rand(1000,2000)
							if(usr.ChidoriD <= 1)
								usr << "Seu chidori fica sem energia."
								usr.ChidoriD = 0
								usr.overlays -= 'Chidori.dmi'
								usr.overlays -= 'Chidori.dmi'
								usr.overlays -= 'Chidori.dmi'
								usr.overlays -= 'Chidori.dmi'
								usr.Chidorion = 0
								usr.cast = 0
								return
							else
								sleep(6)
								goto RD
				else
					usr.random = rand (1,3)
					if(usr.random == 1||usr.random == 2)
						if(usr.chakra <= 3000)
							usr<<"Você precisa colocar no mínimo 3000 chakra nele!"
							return
						else
							view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#4682b4>C</FONT><FONT COLOR=#6f97b8>h</FONT><FONT COLOR=#98acbd>i</FONT><FONT COLOR=#c0c0c0>d</FONT><FONT COLOR=#a1abc9>o</FONT><FONT COLOR=#8195d1>r</FONT><FONT COLOR=#617fda>i</FONT><FONT COLOR=#4169e1>!</FONT>"
							usr.Chidorion = 1
							usr.ChidoriU += 1
							usr.chakra -= 3000
							usr.Chakragain()
							usr.ChidoriD = usr.Mnin/3.5 + usr.trovaoN/1.5
							usr.cast = 1
							usr.overlays += 'Chidori.dmi'
							usr.icon_state = "run"
							RD
								if(!usr.battlingRC)
									ChidoriD -= rand(1000,2000)
								if(usr.ChidoriD <= 1&&!usr.battlingRC)
									usr << "Seu chidori fica sem energia."
									usr.ChidoriD = 0
									usr.Chidorion = 0
									usr.overlays -= 'Chidori.dmi'
									usr.overlays -= 'Chidori.dmi'
									usr.overlays -= 'Chidori.dmi'
									usr.overlays -= 'Chidori.dmi'
									usr.overlays -= 'Chidori.dmi'
									usr.cast = 0
									return
								else
									sleep(6)
									goto RD
					else
						usr<<"Você falhou ao usar o Chidori!"
						usr.chakra -= 3000
						usr.Castando()
						return


mob/uchiha
	verb
		ChidoriN()
			set category = "Jutsus"
			set name = "Chidori Nagashi"
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
				if(usr.inNHJ == 1)
					usr.overlays -= 'cn.dmi'
					usr << "Você desligou o Chidori Nagashi"
					usr.inNHJ = 0
					spawn usr.Castando()
				else
					usr.RandomChakra1()
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					usr.inNHJ = 1
					spawn usr.Castando()
					usr.overlays += 'cn.dmi'
					usr << "<FONT SIZE=+1><FONT COLOR=#4b0082>C</FONT><FONT COLOR=#5f1b8e>h</FONT><FONT COLOR=#74379b>i</FONT><FONT COLOR=#8852a7>d</FONT><FONT COLOR=#9c6eb4>o</FONT><FONT COLOR=#b089c0>r</FONT><FONT COLOR=#c5a5cd>i</FONT><FONT COLOR=#d8bfd8> </FONT><FONT COLOR=#ccb3db>N</FONT><FONT COLOR=#bea7df>a</FONT><FONT COLOR=#b19ae2>g</FONT><FONT COLOR=#a38ee5>a</FONT><FONT COLOR=#9681e8>s</FONT><FONT COLOR=#8875ec>h</FONT><FONT COLOR=#7b68ee>i</FONT></FONT> "
					view << "<FONT SIZE=+1><FONT COLOR=#4b0082>C</FONT><FONT COLOR=#5f1b8e>h</FONT><FONT COLOR=#74379b>i</FONT><FONT COLOR=#8852a7>d</FONT><FONT COLOR=#9c6eb4>o</FONT><FONT COLOR=#b089c0>r</FONT><FONT COLOR=#c5a5cd>i</FONT><FONT COLOR=#d8bfd8> </FONT><FONT COLOR=#ccb3db>N</FONT><FONT COLOR=#bea7df>a</FONT><FONT COLOR=#b19ae2>g</FONT><FONT COLOR=#a38ee5>a</FONT><FONT COLOR=#9681e8>s</FONT><FONT COLOR=#8875ec>h</FONT><FONT COLOR=#7b68ee>i</FONT></FONT>"
					Nagashi
					if(usr.inNHJ)
						usr.chakra -= 5000
						if(usr.chakra <= 5000)
							usr.inNHJ=0
							usr.overlays-= 'cn.dmi'
							usr<<"Você <font color=red>desativa</font> o Chidori Nagashi por falta de chakra!"
							return
						else
							sleep(30)
							goto Nagashi




mob/jutsu
	verb
		ChidoriNagashi()
			set category = "Jutsus"
			set name = "Chidori Senbon"
			if(usr.cdcsenbon)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Chidori Senbon</b>!"
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
				if(usr.cdcsenbon)return
				usr.cdcsenbon=1
				spawn()usr.Cooldown(150,"Chidori Senbon")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
//				usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam
				view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#4682b4>C</FONT><FONT COLOR=#6f97b8>hid</FONT><FONT COLOR=#98acbd>ori</FONT><FONT COLOR=#c0c0c0>S</FONT><FONT COLOR=#a1abc9>e</FONT><FONT COLOR=#8195d1>n</FONT><FONT COLOR=#617fda>bon</FONT><FONT COLOR=#4169e1>!</FONT>"
				var/obj/ChidoriNagashi/F = new /obj/ChidoriNagashi/
				var/obj/ChidoriNagashi/G = new /obj/ChidoriNagashi/
				var/obj/ChidoriNagashi/H = new /obj/ChidoriNagashi/
				var/obj/ChidoriNagashi/I = new /obj/ChidoriNagashi/
				var/obj/ChidoriNagashi/J = new /obj/ChidoriNagashi/
				var/obj/ChidoriNagashi/L = new /obj/ChidoriNagashi/
				var/obj/ChidoriNagashi/A = new /obj/ChidoriNagashi/
				var/obj/ChidoriNagashi/B = new /obj/ChidoriNagashi/
				var/obj/ChidoriNagashi/M2 = new /obj/ChidoriNagashi/
				var/obj/ChidoriNagashi/N = new /obj/ChidoriNagashi/
				var/obj/ChidoriNagashi/O = new /obj/ChidoriNagashi/
				var/obj/ChidoriNagashi/P = new /obj/ChidoriNagashi/
				var/obj/ChidoriNagashi/D = new /obj/ChidoriNagashi/
				var/obj/ChidoriNagashi/E = new /obj/ChidoriNagashi/
				var/obj/ChidoriNagashi/C = new /obj/ChidoriNagashi/
				var/obj/ChidoriNagashi/K = new /obj/ChidoriNagashi/
				var/obj/ChidoriNagashi/Q = new /obj/ChidoriNagashi/
				var/obj/ChidoriNagashi/R = new /obj/ChidoriNagashi/
				var/obj/ChidoriNagashi/S = new /obj/ChidoriNagashi/
				var/obj/ChidoriNagashi/T = new /obj/ChidoriNagashi/
				var/obj/ChidoriNagashi/W = new /obj/ChidoriNagashi/
				var/obj/ChidoriNagashi/X = new /obj/ChidoriNagashi/
				var/obj/ChidoriNagashi/Y = new /obj/ChidoriNagashi/
				var/obj/ChidoriNagashi/Z = new /obj/ChidoriNagashi/
				var/obj/ChidoriNagashi/AQ = new /obj/ChidoriNagashi/
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
				A.nin=usr.nin
				B.nin=usr.nin
				C.nin=usr.nin
				D.nin=usr.nin
				E.nin=usr.nin
				F.nin=usr.nin
				G.nin=usr.nin
				H.nin=usr.nin
				I.nin=usr.nin
				J.nin=usr.nin
				K.nin=usr.nin
				L.nin=usr.nin
				M2.nin=usr.nin
				N.nin=usr.nin
				O.nin=usr.nin
				P.nin=usr.nin
				Q.nin=usr.nin
				R.nin=usr.nin
				S.nin=usr.nin
				T.nin=usr.nin
				W.nin=usr.nin
				X.nin=usr.nin
				Y.nin=usr.nin
				Z.nin=usr.nin
				AQ.nin=usr.nin
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
					var/damage= usr.nin/4 + usr.trovaoN/1.5 - M.Resistencia/2
					if(damage<=0)damage=0
					view()<<"[M] recebeu [damage] de dano do jutsu de [usr] - Chidori Senbon"
					if(M.fantasma)
						usr<<"<font size=1>Vc não consegue tocá-lo!"
						return
					M.health-=damage
					F_damage(M, damage, "#ff0000")
					if(M.health<=0)
						spawn() M.Death(usr)
				spawn()usr.Castando()
				spawn(20)
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
					del(AQ)



obj
	EisoHead
		icon='chidori Eisou2.dmi'
		layer = MOB_LAYER+1
		New()
			..()
			spawn(34)
			del(src)

	EisoTail
		icon='chidori Eisou.dmi'
		layer = MOB_LAYER+1
		New()
			..()
			spawn(34)
			del(src)
	EisoTail2
		icon='chidori Eisou.dmi'
		layer = MOB_LAYER+1
		New()
			..()
			spawn(34)
			del(src)
	EisoTail3
		icon='chidori Eisou.dmi'
		layer = MOB_LAYER+1
		New()
			..()
			spawn(34)
			del(src)


mob/uchiha
	verb
		ChidoriEiso() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Chidori Eiso"
			if(usr.cdceiso)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Chidori Eiso</b>!"
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
			if(usr.cdceiso)return
			usr.cdceiso=1
			spawn()usr.Cooldown(150,"Chidori Eiso")
			usr.RandomChakra01()
			if(usr.chakra<=0)
				usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
				usr.health=0
				usr.chakra=0
				usr.Death(usr)
				return
//			usr.cast = 1
			var/obj/EisoHead/K = new /obj/EisoHead
			var/obj/EisoTail/T = new /obj/EisoTail
			var/obj/EisoTail2/J = new /obj/EisoTail2
			var/obj/EisoTail3/B = new /obj/EisoTail3
			usr.Raiton1N += 1
//			usr.Frozen=1
			view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#ffffff>Chidori Eiso!</FONT></FONT>"
			K.Gowner=usr
			K.nin=usr.nin
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
						if(M.party&&M.partysensei==usr.partysensei)return
						if(M.Kaiten||M.sphere)
							usr<<"Seu ataque não acerta [M]"
							M<<"Você bloqueou o jutsu de [usr] - Chidori Eiso."
							return
						var/damage= usr.nin/3.8 + usr.trovaoN/1.5 - M.Resistencia/2.25
						if(damage<=0)damage=0
						view()<<"[M] recebeu [damage] de dano do jutsu de [usr] - Chidori Eiso"
						M.health-=damage
						F_damage(M, damage, "#ff0000")
						if(M.health<=0)
							M.Death(usr)
			for(var/mob/M in oview(4))
				if(T)
					if(M.loc==T.loc)
						if(M.party&&M.partysensei==usr.partysensei)return
						if(M.Kaiten||M.sphere)
							usr<<"Seu ataque não acerta [M]"
							M<<"Você bloqueou o jutsu de [usr] - Chidori Eiso."
							return
						var/damage= usr.nin/3.8 + usr.trovaoN/1.5 - M.Resistencia/2.25
						if(damage<=0)damage=0
						view()<<"[M] recebeu [damage] de dano do jutsu de [usr] - Chidori Eiso"
						M.health-=damage
						F_damage(M, damage, "#ff0000")
						if(M.health<=0)
							M.Death(usr)
			for(var/mob/M in oview(4))
				if(B)
					if(M.loc==B.loc)
						if(M.party&&M.partysensei==usr.partysensei)return
						if(M.Kaiten||M.sphere)
							usr<<"Seu ataque não acerta [M]"
							M<<"Você bloqueou o jutsu de [usr] - Chidori Eiso."
							return
						var/damage= usr.nin/3.8 + usr.trovaoN/1.5 - M.Resistencia/2.25
						if(damage<=0)damage=0
						view()<<"[M] recebeu [damage] de dano do jutsu de [usr] - Chidori Eiso"
						M.health-=damage
						F_damage(M, damage, "#ff0000")
						if(M.health<=0)
							M.Death(usr)
			for(var/mob/M in oview(4))
				if(J)
					if(M.loc==J.loc)
						if(M.party&&M.partysensei==usr.partysensei)return
						if(M.Kaiten||M.sphere)
							usr<<"Seu ataque não acerta [M]"
							M<<"Você bloqueou o jutsu de [usr] - Chidori Eiso."
							return
						var/damage= usr.nin/3.8 + usr.trovaoN/1.5 - M.Resistencia/2.25
						if(damage<=0)damage=0
						view()<<"[M] recebeu [damage] de dano do jutsu de [usr] - Chidori Eiso"
						M.health-=damage
						F_damage(M, damage, "#ff0000")
						if(M.health<=0)
							M.Death(usr)
/*			sleep(15)
			usr.Frozen=0
			sleep(20)
			usr.cast = 0*/
			usr.Castando()
			sleep(50)
			del(K)
			del(T)






//==== COMBINAÇÕES ELEMENTAIS ==================================================================



mob/jutsu
	verb
		Gelop(mob/M in oview(3)) // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Hyouton Hyouro no Jutsu"
			if(usr.cdhyoutonhyouro)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Hyouton Hyouro no Jutsu</b>!"
				return
			if(usr.cast)
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
				if(usr.cdhyoutonhyouro)return
				usr.cdhyoutonhyouro=1
				spawn()usr.Cooldown(200,"Hyouton Hyouro no Jutsu")
				var/Sleeptime = round(usr.nin/100+usr.gen/100+usr.tai/100+usr.shurikenskill/100)
				if(Sleeptime >= 1)
					if(Sleeptime<=20)
						Sleeptime = 20
					if(Sleeptime>=50)
						Sleeptime=50
					M.overlays += 'gelo.dmi'
					M.froze = 1
					M.move=0
					M.parado = 1
					sleep(Sleeptime)
					if(M)
						M<<"Você foi preso pelo gelo de [usr]."
						M.overlays -= 'gelo.dmi'
						usr<<"[M] se livrou do seu gelo!"
						M.froze = 0
						M.move=1
						M.parado = 0
					sleep(8)
				else
					M.overlays += 'gelo.dmi'
					M.move=0
					M.froze = 1
					M.parado = 1
					sleep(Sleeptime)
					if(M)
						M<<"Você foi preso pelo gelo de [usr]."
						M.overlays -= 'gelo.dmi'
						usr<<"[M] se livrou do seu gelo!"
						M.froze = 0
						M.move=1
						M.parado = 0
					sleep(8)
				sleep(100)
				if(M)
					M.froze=0
					M.move=1
					M.overlays -= 'gelo.dmi'


obj
	Gufu  //Grande Tornado
		icon = 'tornado3.dmi'
		icon_state = "8"
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
				if(M.fcopy)
					M<<"Vc copiou o Jutsu"
					M.verbs += new /mob/fuuton/verb/Gufu()
					del(src)
					return
				var/damage = round(src.nin) - M.Resistencia/2
				if(damage <= 0) damage=0
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				view(M) << "[M] foi acertado pelo Gufuu Suika no Jutsu recebendo [damage] de dano!!"
				M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
		New()
			overlays += new /obj/dait111/
			overlays += new /obj/dait222/
			overlays += new /obj/dait333/
			overlays += new /obj/dait444/
			overlays += new /obj/dait555/
			overlays += new /obj/dait665/
			overlays += new /obj/dait777/
			overlays += new /obj/dait888/
			spawn(50) del src
			..()
	dait111
		icon = 'tornado3.dmi'
		icon_state = "1"
		pixel_x = -32
		pixel_y = 64
	dait222
		icon = 'tornado3.dmi'
		icon_state = "2"
		pixel_y = 64
	dait333
		icon = 'tornado3.dmi'
		icon_state = "3"
		pixel_x = 32
		pixel_y = 64
	dait444
		icon = 'tornado3.dmi'
		icon_state = "4"
		pixel_x = -32
		pixel_y = 32
	dait555
		icon = 'tornado3.dmi'
		icon_state = "5"
		pixel_y = 32
	dait665
		icon = 'tornado3.dmi'
		icon_state = "6"
		pixel_x = 32
		pixel_y = 32
	dait777
		icon = 'tornado3.dmi'
		icon_state = "7"
		pixel_x = -32
	dait888
		icon = 'tornado3.dmi'
		icon_state = "9"
		pixel_x = 32



mob/fuuton
	verb
		Gufu()//katon + fuuton
			set category = "Jutsus"
			set name = "Gufuu Suika no Jutsu"
			usr.Handseals()
			if(usr.cdgufuusuika)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Gufuu Suika no Jutsu</b>!"
				return
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
			if(!usr.handseals)
				return
			else // If the cast var isn't 1...
				if(usr.cdgufuusuika)return
				usr.cdgufuusuika=1
				spawn()usr.Cooldown(120,"Gufuu Suika no Jutsu")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam // Disables the mob's movement
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Gufuu Suika no Jutsu"
				var/obj/Gufu/K = new /obj/Gufu
				K.loc = usr.loc
				K.nin=usr.nin +usr.ventoN + usr.aguaN
				K.Move_Delay=0.3
				usr.Chakragain()
				K.dir = usr.dir
				K.name="[usr]"
				K.Gowner=usr
				walk(K,usr.dir)
				if (target == null)
					del(K)
				sleep(10)
				usr.cast = 0
				del(K)


obj
	Kami  //Grande Tornado
		icon = 'tornado2.dmi'
		icon_state = "8"
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.PK==0)
					return
				if(M.fcopy)
					M<<"Vc copiou o Jutsu"
					M.verbs += new /mob/fuuton/verb/Kami()
					del(src)
					return
				var/damage = round(src.nin) - M.Resistencia/2
				if(damage <= 0) damage=0
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				view(M) << "[M] foi acertado pelo Fuuton Ninpo Kamikaze recebendo [damage] de dano!!"
				var/mob/O = src.Gowner
				M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
		New()
			overlays += new /obj/dait11/
			overlays += new /obj/dait22/
			overlays += new /obj/dait33/
			overlays += new /obj/dait44/
			overlays += new /obj/dait55/
			overlays += new /obj/dait66/
			overlays += new /obj/dait77/
			overlays += new /obj/dait88/
	dait11
		icon = 'tornado2.dmi'
		icon_state = "1"
		pixel_x = -32
		pixel_y = 64
	dait22
		icon = 'tornado2.dmi'
		icon_state = "2"
		pixel_y = 64
	dait33
		icon = 'tornado2.dmi'
		icon_state = "3"
		pixel_x = 32
		pixel_y = 64
	dait44
		icon = 'tornado2.dmi'
		icon_state = "4"
		pixel_x = -32
		pixel_y = 32
	dait55
		icon = 'tornado2.dmi'
		icon_state = "5"
		pixel_y = 32
	dait66
		icon = 'tornado2.dmi'
		icon_state = "6"
		pixel_x = 32
		pixel_y = 32
	dait77
		icon = 'tornado2.dmi'
		icon_state = "7"
		pixel_x = -32
	dait88
		icon = 'tornado2.dmi'
		icon_state = "9"
		pixel_x = 32


mob/fuuton
	verb
		Kami()//katon + fuuton
			set category = "Jutsus"
			set name = "Fuuton Ninpo Kamikaze "
			usr.Handseals()
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
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Fuuton Dai Tatsumaki"
				var/obj/Kami/K = new /obj/Kami
				K.loc = usr.loc
				K.nin=usr.nin +usr.ventoN + usr.fogoN
				K.Move_Delay=0.3
				usr.Chakragain()
				K.dir = usr.dir
				K.name="[usr]"
				K.Gowner=usr
				walk(K,usr.dir)
				if (target == null)
					del(K)
				sleep(40)
				usr.cast = 0
				del(K)


mob/jutsu
	verb
		Lava1() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Youton Yokai no Jutsu "
			usr.Handseals()
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
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(!usr.handseals)
				return
			else // If the cast var isn't 1...
				if(usr.AudienceU<=4)
					usr.DoryuuN += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=red> Diz:Youton Yokai no Jutsu"
					sleep(30)
					usr.Chakragain()
					if(usr.dir == NORTH)
						var/obj/lava/A = new /obj/lava/
						var/obj/lava/B = new /obj/lava/
						var/obj/lava/C = new /obj/lava/
						var/obj/lava/D = new /obj/lava/
						var/obj/lava/E = new /obj/lava/
						A.loc = locate(usr.x, usr.y+1, usr.z)
						C.loc = locate(usr.x+1, usr.y+1, usr.z)
						B.loc = locate(usr.x-1, usr.y+1, usr.z)
						D.loc = locate(usr.x-2, usr.y+1, usr.z)
						E.loc = locate(usr.x+2, usr.y+1, usr.z)
						A.dir = NORTH
						B.dir = NORTH
						C.dir = NORTH
						D.dir = NORTH
						E.dir = NORTH
						sleep(300)
						del(A)
						del(B)
						del(C)
						del(D)
						del(E)
						sleep(110)
					if(usr.dir == SOUTH)
						var/obj/lava/A = new /obj/lava/
						var/obj/lava/B = new /obj/lava/
						var/obj/lava/C = new /obj/lava/
						var/obj/lava/D = new /obj/lava/
						var/obj/lava/E = new /obj/lava/
						A.loc = locate(usr.x, usr.y-1, usr.z)
						C.loc = locate(usr.x+1, usr.y-1, usr.z)
						B.loc = locate(usr.x-1, usr.y-1, usr.z)
						D.loc = locate(usr.x-2, usr.y-1, usr.z)
						E.loc = locate(usr.x+2, usr.y-1, usr.z)
						A.dir = SOUTH
						B.dir = SOUTH
						C.dir = SOUTH
						D.dir = SOUTH
						E.dir = SOUTH
						sleep(300)
						del(A)
						del(B)
						del(C)
						del(D)
						del(E)
						sleep(110)
					if(usr.dir == WEST)
						var/obj/lava/A = new /obj/lava/
						var/obj/lava/B = new /obj/lava/
						var/obj/lava/C = new /obj/lava/
						var/obj/lava/D = new /obj/lava/
						var/obj/lava/E = new /obj/lava/
						A.loc = locate(usr.x-1, usr.y, usr.z)
						C.loc = locate(usr.x-1, usr.y-1, usr.z)
						B.loc = locate(usr.x-1, usr.y-2, usr.z)
						D.loc = locate(usr.x-1, usr.y+1, usr.z)
						E.loc = locate(usr.x-1, usr.y+2, usr.z)
						A.dir = WEST
						B.dir = WEST
						C.dir = WEST
						D.dir = WEST
						E.dir = WEST
						sleep(200)
						del(A)
						del(B)
						del(C)
						del(D)
						del(E)
						sleep(110)
					if(usr.dir == EAST)
						var/obj/lava/A = new /obj/lava/
						var/obj/lava/B = new /obj/lava/
						var/obj/lava/C = new /obj/lava/
						var/obj/lava/D = new /obj/lava/
						var/obj/lava/E = new /obj/lava/
						A.loc = locate(usr.x+1, usr.y, usr.z)
						C.loc = locate(usr.x+1, usr.y-1, usr.z)
						B.loc = locate(usr.x+1, usr.y-2, usr.z)
						D.loc = locate(usr.x+1, usr.y+1, usr.z)
						E.loc = locate(usr.x+1, usr.y+2, usr.z)
						A.dir = EAST
						B.dir = EAST
						C.dir = EAST
						D.dir = EAST
						E.dir = EAST
						sleep(300)
						del(A)
						del(B)
						del(C)
						del(D)
						del(E)
						usr.AudienceU -=1
						sleep(110)
						return
					return

obj
	lavaball
		icon = 'boladelava.dmi'
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
				if(M.Kaiten||M.sphere)
					return
				if(M.PK==0)
					return
				var/damage = O.nin/4.05 + O.tai/4.05 + O.gen/4.05 + O.shurikenskill/4.05 +O.fogoN*1.75 + O.terraN*1.75 - M.Resistencia/2.25
				if(damage <= 0) damage=0
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				view(M) << "[M] foi acertado pelo Youton no Jutsu de [O], perdendo [damage] de dano!!"
				M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

mob/jutsu
	verb
		Lava2() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Youton no Jutsu"
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
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=red> Diz: Youton no Jutsu"
					var/obj/lavaball/K = new /obj/lavaball
					K.loc = usr.loc
					K.nin=usr.nin +usr.fogoN + usr.terraN
					K.dir = usr.dir
					K.name="[usr]"
					usr.Chakragain()
					K.Gowner=usr
					K.Move_Delay=0.4
					walk(K,usr.dir)
					if (target == null)
						del(K)
					sleep(35)
					del(K)
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
						K.nin=usr.nin +usr.fogoN + usr.terraN
						K.dir = usr.dir
						K.name="[usr]"
						K.Gowner=usr
						K.Move_Delay=0.4
						walk(K,usr.dir)
						if (target == null)
							del(K)
						sleep(35)
						del(K)
						sleep(20)
						usr.cast = 0
					else
						usr<<"Você falhou em usar o Youton no Jutsu"


mob/var/nevoaacida=0
mob/jutsu
	verb
		Acido1(mob/M in oview(3))
			set category ="Jutsus"
			set name ="Futton Komu no Jutsu "
			if(usr.cdacido)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o <b>Ácido</b>!"
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
			if(usr.nevoaacida==0)
				usr.RandomChakra05()
				usr.cdacido=1
				spawn() usr.Cooldown(100,"Ácido")
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				view<<"<font color = green> Futton Komu no Jutsu!"
				M.acido=1
				M.acido()
				usr.nevoaacida=1
				var/obj/nevoaacida/held/agua_ki = new /obj/nevoaacida/held
				M.overlays +=agua_ki
				return
			else
				usr<<"Você Desfaz a nevoa."
				M.acido=0
				usr.nevoaacida=0
				var/obj/nevoaacida/held/agua_ki = new /obj/nevoaacida/held
				M.overlays -=agua_ki
				return


mob/jutsu
	verb
		Cristal1()
			set category = "Jutsus"
			set name = "Shouton Suishou Douka"
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
			if(!usr.Shouton&&!usr.cast)
				usr.RandomChakra01()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				view()<<"<font color = blue>[usr]: Shouton Suishou Douka!"
				usr.Shouton =1
				usr.tai = usr.Mtai*2
				usr.overlays+='shoutonaura.dmi'
				usr.nin = usr.Mnin*2
				fire
				if(usr.Shouton)
					usr.health -=usr.Mchakra/20
					if(usr.health <= 500)
						usr.Shouton = 0
						usr.buff=0
						usr.tai = usr.Mtai
						usr.overlays-='shoutonaura.dmi'
						usr.nin = usr.Mnin
						return
					else
						sleep(50)
						goto fire
			else if(usr.Shouton)
				usr.Shouton =0
				usr.buff=0
				usr.overlays-='shoutonaura.dmi'
				usr.tai = usr.Mtai
				usr.nin = usr.Mnin
				usr<<"Você desativa o Shouton Suishou Douka"

mob/var/Shouton=0


obj
	CR1
		icon='ShoutonSpikes.dmi'
		icon_state="1"
		density=1
		pixel_x=-32

obj
	CR2
		icon='ShoutonSpikes.dmi'
		icon_state="2"
		density=0
		layer=1000

obj
	CR3
		icon='ShoutonSpikes.dmi'
		icon_state="3"
		density=1
		pixel_x=32
obj
	CR4
		icon='ShoutonSpikes.dmi'
		icon_state="4"
		density=1
		pixel_x=-32
		pixel_y=32

obj
	CR5
		icon='ShoutonSpikes.dmi'
		icon_state="5"
		density=1
		pixel_y=32

obj
	CR6
		icon='ShoutonSpikes.dmi'
		icon_state="6"
		density=1
		pixel_x=32
		pixel_y=32

obj
	CR7
		icon='ShoutonSpikes.dmi'
		icon_state="7"
		density=1
		pixel_x=-32
		pixel_y=64

obj
	CR8
		icon='ShoutonSpikes.dmi'
		icon_state="8"
		density=1
		pixel_y=64

obj
	CR9
		icon='ShoutonSpikes.dmi'
		icon_state="9"
		density=1
		pixel_x=32
		pixel_y=64

mob/jutsu
	verb
		Cristal2()
			set category ="Jutsus"
			set name ="Shouton Kesshou Gokakurou"
			usr.Cristal()
mob
	proc
		Cristal()
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
			if(usr.cdshoutongokakurou)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Shouton Kesshou Gokakurou</b>!"
				return
			usr.RandomChakra1()
			usr.cdshoutongokakurou=1
			spawn() usr.Cooldown(100,"Shouton Kesshou Gokakurou")
			if(usr.chakra<=0)
				usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
				usr.health=0
				usr.chakra=0
				usr.Death(usr)
				return
			usr<< "Você está concentrando o seu chakra"
			sleep(30)
			if(usr.Frozen)
				usr<<"Você está paralizado."
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.froze)
				usr<<"Your frozen"
				return
			view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=red> Diz: Shouton Kesshou Gokakurou!"
			for(var/mob/M in oview(4))
				view()<<"[usr] usa seu Shouton Kesshou Gokakurou!"
				M.overlays+=/obj/CR1
				M.overlays+=/obj/CR2
				M.overlays+=/obj/CR3
				M.overlays+=/obj/CR4
				M.overlays+=/obj/CR5
				M.overlays+=/obj/CR6
				M.overlays+=/obj/CR7
				M.overlays+=/obj/CR8
				M.overlays+=/obj/CR9
				var/damage=round(usr.nin/2.5,usr.nin/3) - M.Resistencia
				if(damage<=0)damage=0
				M.health-=damage
				F_damage(M, damage, "#ff0000")
				if(M.health<=0)M.Death(usr)
				M.Frozen=1
				M.parado=1
				M.froze=1
				spawn(50)
					if(M)
						M.overlays-=/obj/CR1
						M.overlays-=/obj/CR2
						M.overlays-=/obj/CR3
						M.overlays-=/obj/CR4
						M.overlays-=/obj/CR5
						M.overlays-=/obj/CR6
						M.overlays-=/obj/CR7
						M.overlays-=/obj/CR8
						M.overlays-=/obj/CR9
						M.Frozen=0
						M.parado=0
						M.froze=0


mob/var/tmp/cdrantonlaser=0
mob/Ranton
	verb
		Tempestade1() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Ranton Laser Circus"
			if(usr.cdrantonlaser)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Ranton Laser Circus</b>!"
				return
			if(usr.cast||usr.Kaiten == 1) // If the mob's cast var is one...
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
			else // If the cast var isn't 1...
				usr.cdrantonlaser=1
				spawn()usr.Cooldown(100,"Ranton Laser Circus")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam // Disables the mob's movement
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=blue> Diz: Ranton Laser Circus"
				var/obj/laser/D = new /obj/laser
				var/obj/laser/S = new /obj/laser
				var/obj/laser/K = new /obj/laser
				K.loc = usr.loc
				K.nin=usr.nin/4 + usr.tai/4 + usr.gen/4 + usr.shurikenskill/4. + usr.trovaoN*2 + usr.aguaN*2
				K.Move_Delay=0.3
				usr.Chakragain()
				K.dir = usr.dir
				K.name="[usr]"
				K.Gowner=usr
				walk(K,usr.dir)
				if (target == null)
					del(K)
				sleep(10)
				D.loc = usr.loc
				D.nin=usr.nin/4 + usr.tai/4 + usr.gen/4 + usr.shurikenskill/4. + usr.trovaoN*2 + usr.aguaN*2
				D.Move_Delay=0.3
				usr.Chakragain()
				D.dir = usr.dir
				D.name="[usr]"
				D.Gowner=usr
				walk(D,usr.dir)
				if (target == null)
					del(D)
				sleep(10)
				S.loc = usr.loc
				S.nin=usr.nin/4 + usr.tai/4 + usr.gen/4 + usr.shurikenskill/4. + usr.trovaoN*2 + usr.aguaN*2
				S.Move_Delay=0.3
				usr.Chakragain()
				S.dir = usr.dir
				S.name="[usr]"
				S.Gowner=usr
				walk(S,usr.dir)
				if (target == null)
					del(S)
				sleep(30)
				usr.cast = 0
				del(K)
				del(S)
				del(D)


obj
	laser
		icon = 'laser.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.PK==0)
					return
				var/damage = src.nin - M.Resistencia/2
				if(damage <= 0) damage=0
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				view(M) << "[M] foi acertado pelo Ranton Laser recebendo [damage] de dano!!"
				var/mob/O = src.Gowner
				M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)



mob/var/sharinganspego=0

//==== FIM DOS JUTSUS ELEMENTAIS ================================================================
//===============================================================================================