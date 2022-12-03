mob/var/tmp/modobudaon=0

mob/mokuton/verb
	Budasenjuu()
		set category = "Jutsus"
		set name = "Senpou: Mokuton Shinsuusenju"
		if(usr.cast) // If the mob's cast var is one...
			usr<<"Não agora!"
			return
		if(usr.caught)
			usr<<"Você foi capturado!"
			return
		if(usr.golemon)
			usr<<"Desative o Moku Golem primeiro!"
			return
		if(!usr.mokarmor)
			usr<<"Ative o Senjutsu Senjuu primeiro!"
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
		if(usr.modobudaon)
			usr<<"Você desativa o Senpou: Mokuton Shinsuusenju!"
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
			return
		else
			usr.RandomChakra5()
			if(usr.chakra<=0)
				usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
				usr.health=0
				usr.chakra=0
				usr.Death(usr)
				return
			if(!usr.modobudaon)
				usr.modobudaon=1
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Senpou: Mokuton Shinsuusenju"
				usr<<"Você ativa o Senpou: Mokuton Shinsuusenju."
				usr.overlays+=/obj/BudaSenjuu/part1
				usr.overlays+=/obj/BudaSenjuu/part2
				usr.overlays+=/obj/BudaSenjuu/part3
				usr.overlays+=/obj/BudaSenjuu/part4
				usr.overlays+=/obj/BudaSenjuu/part5
				usr.overlays+=/obj/BudaSenjuu/part6
				usr.overlays+=/obj/BudaSenjuu/part7
				usr.overlays+=/obj/BudaSenjuu/part8
				usr.overlays+=/obj/BudaSenjuu/part9
				usr.overlays+=/obj/BudaSenjuu/part10
				usr.overlays+=/obj/BudaSenjuu/part11
				usr.overlays+=/obj/BudaSenjuu/part12
				usr.overlays+=/obj/BudaSenjuu/part13
				usr.overlays+=/obj/BudaSenjuu/part14
				usr.overlays+=/obj/BudaSenjuu/part15
				usr.overlays+=/obj/BudaSenjuu/part16
				usr.overlays+=/obj/BudaSenjuu/part17
				usr.overlays+=/obj/BudaSenjuu/part18
				usr.overlays+=/obj/BudaSenjuu/part19
				usr.overlays+=/obj/BudaSenjuu/part20
				usr.overlays+=/obj/BudaSenjuu/part21
				usr.overlays+=/obj/BudaSenjuu/part22
				usr.overlays+=/obj/BudaSenjuu/part23
				usr.overlays+=/obj/BudaSenjuu/part24
				usr.overlays+=/obj/BudaSenjuu/part25
				usr.verbs += new /mob/jutsu/verb/Budaataque()
			Susanoo
			if(usr.modobudaon)
				usr.chakra-=rand(3000,6000)
				if(usr.chakra <= 6000)
					usr.modobudaon=0
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
					usr<<"Você <font color=red>desativa</font> o Senpou: Mokuton Shinsuusenju por falta de Chakra!"
					usr.verbs -= new /mob/jutsu/verb/Budaataque()
					return
				else
					sleep(20)
					goto Susanoo

obj
	BudaSenjuu
		layer=100
		part1
			icon='budadividido.dmi'
			icon_state="0,0"
			pixel_x = -64
			pixel_y = -64
		part2
			icon='budadividido.dmi'
			icon_state="1,0"
			pixel_x = -32
			pixel_y = -64
			density=0
		part3
			icon='budadividido.dmi'
			icon_state="2,0"
			pixel_y = -64
			density=0
		part4
			icon='budadividido.dmi'
			icon_state="3,0"
			pixel_x = 32
			pixel_y = -64
			density=0
		part5
			icon='budadividido.dmi'
			icon_state="4,0"
			pixel_x = 64
			pixel_y = -64
		part6
			icon='budadividido.dmi'
			icon_state="0,1"
			pixel_x = -64
			pixel_y = -32
		part7
			icon='budadividido.dmi'
			icon_state="1,1"
			pixel_x = -32
			pixel_y = -32
			density=0
		part8
			icon='budadividido.dmi'
			icon_state="2,1"
			pixel_y = -32
			density=0
		part9
			icon='budadividido.dmi'
			icon_state="3,1"
			pixel_x = 32
			pixel_y = -32
			density=0
		part10
			icon='budadividido.dmi'
			icon_state="4,1"
			pixel_x = 64
			pixel_y = -32
			density=0
		part11
			icon='budadividido.dmi'
			icon_state="0,2"
			pixel_x = -64
			density=0
		part12
			icon='budadividido.dmi'
			icon_state="1,2"
			pixel_x = -32
			density=0
		part13
			icon='budadividido.dmi'
			icon_state="2,2"
			density=0
		part14
			icon='budadividido.dmi'
			icon_state="3,2"
			pixel_x = 32
			density=0
		part15
			icon='budadividido.dmi'
			icon_state="4,2"
			pixel_x = 64
			density=0
		part16
			icon='budadividido.dmi'
			icon_state="0,3"
			pixel_x = -64
			pixel_y = 32
			density=0
		part17
			icon='budadividido.dmi'
			icon_state="1,3"
			pixel_x = -32
			pixel_y = 32
			density=0
		part18
			icon='budadividido.dmi'
			icon_state="2,3"
			pixel_y = 32
			density=0
		part19
			icon='budadividido.dmi'
			icon_state="3,3"
			pixel_x = 32
			pixel_y = 32
			density=0
		part20
			icon='budadividido.dmi'
			icon_state="4,3"
			pixel_x = 64
			pixel_y = 32
			density=0
		part21
			icon='budadividido.dmi'
			icon_state="0,4"
			pixel_x = -64
			pixel_y = 64
		part22
			icon='budadividido.dmi'
			icon_state="1,4"
			pixel_x = -32
			pixel_y = 64
			density=0
		part23
			icon='budadividido.dmi'
			icon_state="2,4"
			pixel_y = 64
			density=0
		part24
			icon='budadividido.dmi'
			icon_state="3,4"
			pixel_x = 32
			pixel_y = 64
			density=0
		part25
			icon='budadividido.dmi'
			icon_state="4,4"
			pixel_x = 64
			pixel_y = 64

//===================================Ataque====================================//
mob/var/tmp/cdbudaataque=0
mob/jutsu
	verb
		Budaataque()
			set category = "Jutsus"
			set name = "Chojou Kebutsu"
			if(usr.cdbudaataque)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Chojou Kebutsu</b>!"
				return
			if(!usr.modobudaon)
				usr<<"Invoque o Buda primeiro!"
				return
			if(usr.caught)
				usr<<"Você foi capturado!"
				return
			if(usr.Frozen)
				usr<<"Você está paralisado!"
				return
			if(usr.froze)
				usr<<"Você está paralisado!"
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
			if(usr.cdbudaataque)return
			usr.cdbudaataque=1
			spawn()usr.Cooldown(150,"Chojou Kebutsu")
			usr.RandomChakra1()
			if(usr.chakra<=0)
				usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
				usr.health=0
				usr.chakra=0
				usr.Death(usr)
				return
			for(var/mob/M in oview(4,usr))
				if(M.party&&M.partysensei==usr.partysensei)return
				var/damage=usr.nin/3.8 + usr.aguaN*1.75 + usr.terraN*1.75 - M.Resistencia/3
				if(damage<=0)damage=0
				view()<<"[M] foi atingido pelas Mil Palmas do Buda de [usr]."
				M.health-=damage
				F_damage(M, damage, "#ff0000")
				if(M.health<=0)
					M.Death(usr)
				spawn()M.Atordoado()


mob
	proc
		Atordoado()
			set background=1
			src<<"<font color=silver><b><font face=verdana>Você foi pego pelo Chojou Kebutsu e está atordoado!"
			src.EsquivaSharingan()
			if(src.Esquivou)
				src.Esquivou=0
				return
			src.move = 0
			src.cast = 1
			src.froze = 1
			sleep(25)
			src.move = 1
			src.froze = 0
			src.cast = 0
			view()<<"[src] está consciente novamente!"

//==================================================================================//
obj/Golempartes
	gol1
		icon = 'MokuGolemSenju.dmi'
		icon_state = "1"
		pixel_x = -32
		density = 0
		layer = 100
	gol2
		icon = 'MokuGolemSenju.dmi'
		icon_state = "2"
		density = 0
		layer = 100
	gol3
		icon = 'MokuGolemSenju.dmi'
		icon_state = "3"
		pixel_x = 32
		density = 0
		layer = 100
	gol4
		icon = 'MokuGolemSenju.dmi'
		icon_state = "4"
		density = 0
		pixel_x = -32
		pixel_y = 32
		layer = 100
	gol5
		icon = 'MokuGolemSenju.dmi'
		icon_state = "5"
		pixel_y = 32
		density = 0
		layer = 100
	gol6
		icon = 'MokuGolemSenju.dmi'
		icon_state = "6"
		pixel_x = 32
		pixel_y = 32
		density = 0
		layer = 100
	gol7
		icon = 'MokuGolemSenju.dmi'
		icon_state = "7"
		pixel_x = -32
		pixel_y = 64
		density = 0
		layer = 100
	gol8
		icon = 'MokuGolemSenju.dmi'
		icon_state = "8"
		pixel_y = 64
		density = 0
		layer = 100
	gol9
		icon = 'MokuGolemSenju.dmi'
		icon_state = "9"
		pixel_x = 32
		pixel_y = 64
		density = 0
		layer = 100

//====================Golem de Madeira=======================================//
mob/var/tmp/golemon=0
mob/var/tmp/cdgolemmokuryuu=0


mob/mokuton/verb
	ModoGolemHashirama()
		set category = "Jutsus"
		set name = "Mokuton: Mokujin no Jutsu"
		if(usr.cast) // If the mob's cast var is one...
			usr<<"Não agora!"
			return
		if(usr.caught)
			usr<<"Você foi capturado!"
			return
		if(usr.modobudaon)
			usr<<"Desative o Moku Buda primeiro!"
			return
		if(!usr.mokarmor)
			usr<<"Ative o Senjutsu Senjuu primeiro!"
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
		if(usr.golemon)
			usr<<"Você desativa o Mokuton: Mokujin no Jutsu!"
			usr.verbs -= new /mob/mokuton/verb/GolenAtaque()
			usr.overlays-=/obj/Golempartes/gol1
			usr.overlays-=/obj/Golempartes/gol2
			usr.overlays-=/obj/Golempartes/gol3
			usr.overlays-=/obj/Golempartes/gol4
			usr.overlays-=/obj/Golempartes/gol5
			usr.overlays-=/obj/Golempartes/gol6
			usr.overlays-=/obj/Golempartes/gol7
			usr.overlays-=/obj/Golempartes/gol8
			usr.overlays-=/obj/Golempartes/gol9
			usr.golemon=0
			return
		else
			usr.RandomChakra5()
			if(usr.chakra<=0)
				usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
				usr.health=0
				usr.chakra=0
				usr.Death(usr)
				return
			if(!usr.golemon)
				usr.golemon=1
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Mokuton: Mokujin no Jutsu"
				usr<<"Você ativa o Mokuton: Mokujin no Jutsu"
				usr.overlays+=/obj/Golempartes/gol1
				usr.overlays+=/obj/Golempartes/gol2
				usr.overlays+=/obj/Golempartes/gol3
				usr.overlays+=/obj/Golempartes/gol4
				usr.overlays+=/obj/Golempartes/gol5
				usr.overlays+=/obj/Golempartes/gol6
				usr.overlays+=/obj/Golempartes/gol7
				usr.overlays+=/obj/Golempartes/gol8
				usr.overlays+=/obj/Golempartes/gol9
				usr.verbs += new /mob/mokuton/verb/GolenAtaque()
			Susanoo
			if(usr.golemon)
				usr.chakra-=rand(3000,6000)
				if(usr.chakra <= 6000)
					usr.golemon=0
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
					return
				else
					sleep(20)
					goto Susanoo

mob/mokuton
	verb
		GolenAtaque() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Moku Golem: Ataque Mokuryuu"
			if(usr.cdgolemmokuryuu)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Moku Golem: Ataque Mokuryuu</b>!"
				return
			if(!usr.golemon)
				usr<<"Invoque o Moku Golem primeiro!"
				return
			if(usr.cast||usr.Kaiten == 1) // If the mob's cast var is one...
				usr<<"Não agora!"
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
				for(var/mob/m in oview(6))
					if(m.party&&m.partysensei==usr.partysensei)return
					if(usr.cdgolemmokuryuu)return
					if(m.PK==0)
						usr<<"Zona NON-PK!!!"
						return
					usr.chakra-=usr.Mchakra/33
					usr.cdgolemmokuryuu=1
					spawn()usr.Cooldown(130,"Moku Golem: Ataque Mokuryuu")
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Moku Golem: Ataque Mokuryuu!"
					var/obj/MokuryuuDrag2/K = new /obj/MokuryuuDrag2
					usr.target=m
					K.loc = usr.loc
					K.nin=usr.nin/3.8 + usr.tai/3.8 + usr.gen/3.8 + usr.shurikenskill/3.8 + usr.aguaN*1.75 + usr.terraN*1.75
					K.name="[usr]"
					usr.Chakragain()
					K.Move_Delay=0.7
					K.Gowner=usr
					walk_towards(K,m)


obj
	MokuryuuDrag2
		icon = 'Mokuryu no Jutsu by Samy 2.dmi'
		icon_state = ""
		density = 1
		Move()
			spawn(50) del(src)
			..()
			var/obj/caudadragaomadeira/T = new /obj/caudadragaomadeira
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
				var/damage = O.nin/3.8 + O.gen/3.8 + O.shurikenskill/3.8 + O.tai/3.8 + O.aguaN*1.75 + O.terraN*1.75 - M.Resistencia/3
				spawn()flick("dragãoZIM.dmi",M)
				M.overlays += 'dragãoZIM.dmi'
				M.move=0
				M.froze=1
				M.captured=1
				sleep(35)
				if(M)
					M.move=1
					M.froze=0
					M.overlays -= 'dragãoZIM.dmi'
					M.captured=0
					view()<<"[M] pode se mover novamente!"
				if(damage >= 1)
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					view(M) << "[M] foi acertado pelo Mokuton: Mokuryuu no Jutsu do Moku Golem de [O] recebendo [damage] de dano e está paralizado!!"
					M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
