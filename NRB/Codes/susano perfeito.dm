mob/var/susanoObitoon=0
mob/var/susanoObitoon2=0
mob/var/susanoObitoon3=0
mob/var/susanoObito=0


mob/var/susanoObitouses=0
mob/var/sonv1=0
mob/var/sonv2=0
mob/var/sonv3=0

mob/jutsu
	verb
		SusanooObito() // Verb used for cast the beam
			set category = "Doujutsu"
			set name = "Susano'o"
			if(usr.cast) // If the mob's cast var is one...
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
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(!usr.mson)
				usr<<"Vc precisa estar com o MS ou FMS ativado"
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
			if(SusanooRinneganon)
				usr<<"Você já está com um Susano'o ativado!"
				return
			if(usr.susanoObitoon&&usr.sonv1)
				usr<<"Você desativa o Susanoo"
				usr.overlays-= /obj/susanoobitocaveira/caveiraS1
				usr.overlays-= /obj/susanoobitocaveira/caveiraS2
				usr.overlays-= /obj/susanoobitocaveira/caveiraS3
				usr.overlays-= /obj/susanoobitocaveira/caveiraS4
				usr.overlays-= /obj/susanoobitocaveira/caveiraS5
				usr.overlays-= /obj/susanoobitocaveira/caveiraS6
				usr.overlays-= /obj/susanoobitocaveira/caveiraS7
				usr.overlays-= /obj/susanoobitocaveira/caveiraS8
				usr.overlays-= /obj/susanoobitocaveira/caveiraS9
				usr.overlays-= /obj/susanoobitocaveira/caveiraS10
				usr.verbs -= new /mob/jutsu/verb/Susaatak()
				usr.verbs -= new /mob/jutsu/verb/SusanooObito2()
				usr.verbs -= new /mob/jutsu/verb/SusanooObito3()
				usr.susanoObitoon=0
				usr.sonv1=0
				return
			else
				usr.RandomChakra5()
				if(usr.chakra<=0||usr.health<=6000)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				if(!usr.susanoObitoon&&!usr.sonv1&&!usr.susanoObitoon2&&!usr.sonv2&&!usr.susanoObitoon3&&!usr.sonv3)
					usr.susanoObitoon=1
					if(susanoObitouses>=250)
						usr.verbs += new /mob/jutsu/verb/SusanooObito2()
					if(susanoObitouses>=500)
						usr.verbs += new /mob/jutsu/verb/SusanooObito3()
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Arte Suprema: Susanoo"
					usr<<"Você ativa o Susanoo."
					usr.susanoObitouses += 1
					usr.overlays+= /obj/susanoobitocaveira/caveiraS1
					usr.overlays+= /obj/susanoobitocaveira/caveiraS2
					usr.overlays+= /obj/susanoobitocaveira/caveiraS3
					usr.overlays+= /obj/susanoobitocaveira/caveiraS4
					usr.overlays+= /obj/susanoobitocaveira/caveiraS5
					usr.overlays+= /obj/susanoobitocaveira/caveiraS6
					usr.overlays+= /obj/susanoobitocaveira/caveiraS7
					usr.overlays+= /obj/susanoobitocaveira/caveiraS8
					usr.overlays+= /obj/susanoobitocaveira/caveiraS9
					usr.overlays+= /obj/susanoobitocaveira/caveiraS10
					usr.verbs += new /mob/jutsu/verb/Susaatak()
					usr.sonv1=1
				if(usr.susanoObitoon2&&usr.sonv2)
					usr<<"Você volta a primeira forma do Susanoo!"
					usr.overlays-= /obj/susanoobitopele/peleS1
					usr.overlays-= /obj/susanoobitopele/peleS2
					usr.overlays-= /obj/susanoobitopele/peleS3
					usr.overlays-= /obj/susanoobitopele/peleS4
					usr.overlays-= /obj/susanoobitopele/peleS5
					usr.overlays-= /obj/susanoobitopele/peleS6
					usr.overlays-= /obj/susanoobitopele/peleS7
					usr.overlays-= /obj/susanoobitopele/peleS8
					usr.overlays-= /obj/susanoobitopele/peleS9
					usr.susanoObitoon2=0
					usr.sonv2=0
					usr.susanoObitoon=1
					usr.sonv1=1
					usr.overlays+= /obj/susanoobitocaveira/caveiraS1
					usr.overlays+= /obj/susanoobitocaveira/caveiraS2
					usr.overlays+= /obj/susanoobitocaveira/caveiraS3
					usr.overlays+= /obj/susanoobitocaveira/caveiraS4
					usr.overlays+= /obj/susanoobitocaveira/caveiraS5
					usr.overlays+= /obj/susanoobitocaveira/caveiraS6
					usr.overlays+= /obj/susanoobitocaveira/caveiraS7
					usr.overlays+= /obj/susanoobitocaveira/caveiraS8
					usr.overlays+= /obj/susanoobitocaveira/caveiraS9
					usr.overlays+= /obj/susanoobitocaveira/caveiraS10
				if(usr.susanoObitoon3&&usr.sonv3)
					usr<<"Você volta a primeira forma do Susanoo!"
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
					usr.verbs -= new /mob/jutsu/verb/SusanooShuri()
					usr.susanoObitoon3=0
					usr.sonv3=0
					usr.susanoObitoon=1
					usr.sonv1=1
					usr.overlays+= /obj/susanoobitocaveira/caveiraS1
					usr.overlays+= /obj/susanoobitocaveira/caveiraS2
					usr.overlays+= /obj/susanoobitocaveira/caveiraS3
					usr.overlays+= /obj/susanoobitocaveira/caveiraS4
					usr.overlays+= /obj/susanoobitocaveira/caveiraS5
					usr.overlays+= /obj/susanoobitocaveira/caveiraS6
					usr.overlays+= /obj/susanoobitocaveira/caveiraS7
					usr.overlays+= /obj/susanoobitocaveira/caveiraS8
					usr.overlays+= /obj/susanoobitocaveira/caveiraS9
					usr.overlays+= /obj/susanoobitocaveira/caveiraS10
				Susanoo
				if(usr.susanoObitoon)
					usr.health-=rand(3000,6000)
					if(usr.health <= 6000)
						usr.health=1
						usr.susanoObitoon=0
						usr.susanoObitoon2=0
						usr.susanoObitoon3=0
						usr.sonv3=0
						usr.sonv2=0
						usr.sonv1=0
						usr.overlays-= /obj/susanoSasukecompleto/completoS1
						usr.overlays-= /obj/susanoSasukecompleto/completoS2
						usr.overlays-= /obj/susanoSasukecompleto/completoS3
						usr.overlays-= /obj/susanoSasukecompleto/completoS4
						usr.overlays-= /obj/susanoSasukecompleto/completoS5
						usr.overlays-= /obj/susanoSasukecompleto/completoS6
						usr.overlays-= /obj/susanoSasukecompleto/completoS7
						usr.overlays-= /obj/susanoSasukecompleto/completoS8
						usr.overlays-= /obj/susanoSasukecompleto/completoS9
						usr.overlays-= /obj/susanoobitopele/peleS1
						usr.overlays-= /obj/susanoobitopele/peleS2
						usr.overlays-= /obj/susanoobitopele/peleS3
						usr.overlays-= /obj/susanoobitopele/peleS4
						usr.overlays-= /obj/susanoobitopele/peleS5
						usr.overlays-= /obj/susanoobitopele/peleS6
						usr.overlays-= /obj/susanoobitopele/peleS7
						usr.overlays-= /obj/susanoobitopele/peleS8
						usr.overlays-= /obj/susanoobitopele/peleS9
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
						usr<<"Você <font color=red>desativa</font> o Susanoo por falta de vida!"
						usr.verbs -= new /mob/jutsu/verb/Susaatak()
						usr.verbs -= new /mob/jutsu/verb/SusanooShuri()
						usr.verbs -= new /mob/jutsu/verb/SusanooObito2()
						usr.verbs -= new /mob/jutsu/verb/SusanooObito3()
						return
					else
						sleep(20)
						goto Susanoo

mob/jutsu/verb
	SusanooObito2()
		set category = "Doujutsu"
		set name = "Susano'o Nv 2"
		if(usr.cast) // If the mob's cast var is one...
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
		if(usr.PK==0)
			usr<<"Zona NON-PK!!!"
			return
		if(!usr.mson)
			usr<<"Vc precisa estar com o MS ou FMS ativado"
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
		if(usr.susanoObitoon2&&usr.sonv2)
			usr<<"O nível dois já está ativo!"
			return
		if(usr.chakra<=10000)
			usr<<"Você não tem chakra suficiente!"
			return
		if(usr.susanoObitoon&&usr.sonv1)
			usr<<"Você ativa o segundo nivel do Susanoo!"
			usr.chakra -= 10000
			usr.overlays-= /obj/susanoobitocaveira/caveiraS1
			usr.overlays-= /obj/susanoobitocaveira/caveiraS2
			usr.overlays-= /obj/susanoobitocaveira/caveiraS3
			usr.overlays-= /obj/susanoobitocaveira/caveiraS4
			usr.overlays-= /obj/susanoobitocaveira/caveiraS5
			usr.overlays-= /obj/susanoobitocaveira/caveiraS6
			usr.overlays-= /obj/susanoobitocaveira/caveiraS7
			usr.overlays-= /obj/susanoobitocaveira/caveiraS8
			usr.overlays-= /obj/susanoobitocaveira/caveiraS9
			usr.overlays-= /obj/susanoobitocaveira/caveiraS10
			usr.sonv1=0
			usr.susanoObitoon=0
			usr.sonv2=1
			usr.susanoObitoon2=1
			usr.overlays+= /obj/susanoobitopele/peleS1
			usr.overlays+= /obj/susanoobitopele/peleS2
			usr.overlays+= /obj/susanoobitopele/peleS3
			usr.overlays+= /obj/susanoobitopele/peleS4
			usr.overlays+= /obj/susanoobitopele/peleS5
			usr.overlays+= /obj/susanoobitopele/peleS6
			usr.overlays+= /obj/susanoobitopele/peleS7
			usr.overlays+= /obj/susanoobitopele/peleS8
			usr.overlays+= /obj/susanoobitopele/peleS9
		else
			usr<<"Você precisa ativar o Susano'o primeiro!"
		if(usr.susanoObitoon3&&usr.sonv3)
			usr<<"Você volta ao segundo nivel do Susanoo!"
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
			usr.sonv3=0
			usr.susanoObitoon3=0
			usr.verbs -= new /mob/jutsu/verb/SusanooShuri()
			usr.sonv2=1
			usr.susanoObitoon2=1
			usr.overlays+= /obj/susanoobitopele/peleS1
			usr.overlays+= /obj/susanoobitopele/peleS2
			usr.overlays+= /obj/susanoobitopele/peleS3
			usr.overlays+= /obj/susanoobitopele/peleS4
			usr.overlays+= /obj/susanoobitopele/peleS5
			usr.overlays+= /obj/susanoobitopele/peleS6
			usr.overlays+= /obj/susanoobitopele/peleS7
			usr.overlays+= /obj/susanoobitopele/peleS8
			usr.overlays+= /obj/susanoobitopele/peleS9
			Susanoo
			if(usr.susanoObitoon2)
				usr.health-=rand(5000,8000)
				if(usr.health <= 8000)
					usr.health=1
					usr.susanoObitoon=0
					usr.susanoObitoon2=0
					usr.susanoObitoon3=0
					usr.sonv3=0
					usr.sonv2=0
					usr.sonv1=0
					usr.overlays-= /obj/susanoSasukecompleto/completoS1
					usr.overlays-= /obj/susanoSasukecompleto/completoS2
					usr.overlays-= /obj/susanoSasukecompleto/completoS3
					usr.overlays-= /obj/susanoSasukecompleto/completoS4
					usr.overlays-= /obj/susanoSasukecompleto/completoS5
					usr.overlays-= /obj/susanoSasukecompleto/completoS6
					usr.overlays-= /obj/susanoSasukecompleto/completoS7
					usr.overlays-= /obj/susanoSasukecompleto/completoS8
					usr.overlays-= /obj/susanoSasukecompleto/completoS9
					usr.overlays-= /obj/susanoobitopele/peleS1
					usr.overlays-= /obj/susanoobitopele/peleS2
					usr.overlays-= /obj/susanoobitopele/peleS3
					usr.overlays-= /obj/susanoobitopele/peleS4
					usr.overlays-= /obj/susanoobitopele/peleS5
					usr.overlays-= /obj/susanoobitopele/peleS6
					usr.overlays-= /obj/susanoobitopele/peleS7
					usr.overlays-= /obj/susanoobitopele/peleS8
					usr.overlays-= /obj/susanoobitopele/peleS9
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
					usr<<"Você <font color=red>desativa</font> o Susanoo por falta de vida!"
					usr.verbs -= new /mob/jutsu/verb/Susaatak()
					usr.verbs -= new /mob/jutsu/verb/SusanooShuri()
					usr.verbs -= new /mob/jutsu/verb/SusanooObito2()
					usr.verbs -= new /mob/jutsu/verb/SusanooObito3()
					return
				else
					sleep(20)
					goto Susanoo


mob/jutsu/verb
	SusanooObito3()
		set category = "Doujutsu"
		set name = "Susano'o Nv 3"
		if(usr.cast) // If the mob's cast var is one...
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
		if(usr.PK==0)
			usr<<"Zona NON-PK!!!"
			return
		if(!usr.mson)
			usr<<"Vc precisa estar com o MS ou FMS ativado"
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
		if(usr.susanoObitoon3&&usr.sonv3)
			usr<<"O nível três já está ativo!"
			return
		if(usr.chakra<=10000)
			usr<<"Você não tem chakra suficiente!"
			return
		if(usr.susanoObitoon2&&usr.sonv2)
			usr<<"Você ativa a faze completa!"
			usr.chakra -= 10000
			usr.overlays-= /obj/susanoobitopele/peleS1
			usr.overlays-= /obj/susanoobitopele/peleS2
			usr.overlays-= /obj/susanoobitopele/peleS3
			usr.overlays-= /obj/susanoobitopele/peleS4
			usr.overlays-= /obj/susanoobitopele/peleS5
			usr.overlays-= /obj/susanoobitopele/peleS6
			usr.overlays-= /obj/susanoobitopele/peleS7
			usr.overlays-= /obj/susanoobitopele/peleS8
			usr.overlays-= /obj/susanoobitopele/peleS9
			usr.sonv2=0
			usr.susanoObitoon2=0
			usr.sonv3=1
			usr.susanoObitoon3=1
			usr.overlays+=/obj/ObitoSusanoocompeto/part1
			usr.overlays+=/obj/ObitoSusanoocompeto/part2
			usr.overlays+=/obj/ObitoSusanoocompeto/part3
			usr.overlays+=/obj/ObitoSusanoocompeto/part4
			usr.overlays+=/obj/ObitoSusanoocompeto/part5
			usr.overlays+=/obj/ObitoSusanoocompeto/part6
			usr.overlays+=/obj/ObitoSusanoocompeto/part7
			usr.overlays+=/obj/ObitoSusanoocompeto/part8
			usr.overlays+=/obj/ObitoSusanoocompeto/part9
			usr.overlays+=/obj/ObitoSusanoocompeto/part10
			usr.overlays+=/obj/ObitoSusanoocompeto/part11
			usr.overlays+=/obj/ObitoSusanoocompeto/part12
			usr.overlays+=/obj/ObitoSusanoocompeto/part13
			usr.overlays+=/obj/ObitoSusanoocompeto/part14
			usr.overlays+=/obj/ObitoSusanoocompeto/part15
			usr.overlays+=/obj/ObitoSusanoocompeto/part16
			usr.overlays+=/obj/ObitoSusanoocompeto/part17
			usr.overlays+=/obj/ObitoSusanoocompeto/part18
			usr.overlays+=/obj/ObitoSusanoocompeto/part19
			usr.overlays+=/obj/ObitoSusanoocompeto/part20
			usr.overlays+=/obj/ObitoSusanoocompeto/part21
			usr.overlays+=/obj/ObitoSusanoocompeto/part22
			usr.overlays+=/obj/ObitoSusanoocompeto/part23
			usr.overlays+=/obj/ObitoSusanoocompeto/part24
			usr.overlays+=/obj/ObitoSusanoocompeto/part25
			usr.verbs += new /mob/jutsu/verb/SusanooShuri()
		if(usr.susanoObitoon&&usr.sonv1)
			usr<<"Você ativa a faze completa!"
			usr.chakra -= 10000
			usr.overlays-= /obj/susanoobitocaveira/caveiraS1
			usr.overlays-= /obj/susanoobitocaveira/caveiraS2
			usr.overlays-= /obj/susanoobitocaveira/caveiraS3
			usr.overlays-= /obj/susanoobitocaveira/caveiraS4
			usr.overlays-= /obj/susanoobitocaveira/caveiraS5
			usr.overlays-= /obj/susanoobitocaveira/caveiraS6
			usr.overlays-= /obj/susanoobitocaveira/caveiraS7
			usr.overlays-= /obj/susanoobitocaveira/caveiraS8
			usr.overlays-= /obj/susanoobitocaveira/caveiraS9
			usr.overlays-= /obj/susanoobitocaveira/caveiraS10
			usr.sonv1=0
			usr.susanoObitoon=0
			usr.susanoObitoon3=1
			usr.sonv3=1
			usr.overlays+=/obj/ObitoSusanoocompeto/part1
			usr.overlays+=/obj/ObitoSusanoocompeto/part2
			usr.overlays+=/obj/ObitoSusanoocompeto/part3
			usr.overlays+=/obj/ObitoSusanoocompeto/part4
			usr.overlays+=/obj/ObitoSusanoocompeto/part5
			usr.overlays+=/obj/ObitoSusanoocompeto/part6
			usr.overlays+=/obj/ObitoSusanoocompeto/part7
			usr.overlays+=/obj/ObitoSusanoocompeto/part8
			usr.overlays+=/obj/ObitoSusanoocompeto/part9
			usr.overlays+=/obj/ObitoSusanoocompeto/part10
			usr.overlays+=/obj/ObitoSusanoocompeto/part11
			usr.overlays+=/obj/ObitoSusanoocompeto/part12
			usr.overlays+=/obj/ObitoSusanoocompeto/part13
			usr.overlays+=/obj/ObitoSusanoocompeto/part14
			usr.overlays+=/obj/ObitoSusanoocompeto/part15
			usr.overlays+=/obj/ObitoSusanoocompeto/part16
			usr.overlays+=/obj/ObitoSusanoocompeto/part17
			usr.overlays+=/obj/ObitoSusanoocompeto/part18
			usr.overlays+=/obj/ObitoSusanoocompeto/part19
			usr.overlays+=/obj/ObitoSusanoocompeto/part20
			usr.overlays+=/obj/ObitoSusanoocompeto/part21
			usr.overlays+=/obj/ObitoSusanoocompeto/part22
			usr.overlays+=/obj/ObitoSusanoocompeto/part23
			usr.overlays+=/obj/ObitoSusanoocompeto/part24
			usr.overlays+=/obj/ObitoSusanoocompeto/part25
			usr.verbs += new /mob/jutsu/verb/SusanooShuri()
			Susanoo
			if(usr.susanoObitoon3)
				usr.health-=rand(6000,9000)
				if(usr.health <= 9000)
					usr.health=1
					usr.susanoObitoon=0
					usr.susanoObitoon2=0
					usr.susanoObitoon3=0
					usr.sonv3=0
					usr.sonv2=0
					usr.sonv1=0
					usr.overlays-= /obj/susanoSasukecompleto/completoS1
					usr.overlays-= /obj/susanoSasukecompleto/completoS2
					usr.overlays-= /obj/susanoSasukecompleto/completoS3
					usr.overlays-= /obj/susanoSasukecompleto/completoS4
					usr.overlays-= /obj/susanoSasukecompleto/completoS5
					usr.overlays-= /obj/susanoSasukecompleto/completoS6
					usr.overlays-= /obj/susanoSasukecompleto/completoS7
					usr.overlays-= /obj/susanoSasukecompleto/completoS8
					usr.overlays-= /obj/susanoSasukecompleto/completoS9
					usr.overlays-= /obj/susanoobitopele/peleS1
					usr.overlays-= /obj/susanoobitopele/peleS2
					usr.overlays-= /obj/susanoobitopele/peleS3
					usr.overlays-= /obj/susanoobitopele/peleS4
					usr.overlays-= /obj/susanoobitopele/peleS5
					usr.overlays-= /obj/susanoobitopele/peleS6
					usr.overlays-= /obj/susanoobitopele/peleS7
					usr.overlays-= /obj/susanoobitopele/peleS8
					usr.overlays-= /obj/susanoobitopele/peleS9
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
					usr<<"Você <font color=red>desativa</font> o Susanoo por falta de vida!"
					usr.verbs -= new /mob/jutsu/verb/Susaatak()
					usr.verbs -= new /mob/jutsu/verb/SusanooShuri()
					usr.verbs -= new /mob/jutsu/verb/SusanooObito2()
					usr.verbs -= new /mob/jutsu/verb/SusanooObito3()
					return
				else
					sleep(20)
					goto Susanoo


mob/jutsu
	verb
		SusanooShuri()
			set name = "Kamui Shuriken"
			set category = "Doujutsu"
			if(usr.cdsshuriken)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Susanoo - Shuriken</b>!"
				return
			if(usr.PK==0)
				usr<<"Area NON-PK"
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
			else
				if(usr.cdsshuriken)return
				usr.cdsshuriken=1
				spawn()usr.Cooldown(160,"Kamui Shuriken")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=silver>Kamui Shuriken!"
				var/obj/ShurikenSusanoo/K = new /obj/ShurikenSusanoo
				K.loc = usr.loc
				K.nin=usr.nin/4 + usr.gen/4
				K.Move_Delay = 0
				usr.Chakragain()
				K.dir = usr.dir
				K.name="[usr]"
				K.Gowner=usr
				walk(K,usr.dir)
				if (target == null)
					del(K)
				sleep(100)
				del(K)
				spawn usr.Castando()

obj
	ShurikenSusanoo
		icon = 'ShurikenGSuit.dmi'
		icon_state = "Arremeçar"
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
				if(M.climbing)
					M.climbing=0
					M.move=1
					M.froze=0
					M.verbs -= /mob/cliff/verb/TreinarHP
				view(50) << "[M] foi acertado pelo Kamui Shuriken de [O]!!"
				O.random=rand(1,5)
				if(O.random==1||O.random==5)
					var/damage= O.nin/4 + O.gen/4 - M.Resistencia/3
					if(damage<=0)damage=0
					O<<"Você acerta a perna de [M] com seu Kamui ([damage] de dano)"
					M<<"Sua perna foi acertada pelo Kamui de [O], diminuindo sua velocidade! ([damage] de dano)!"
					M.overlays-='Kamui1.dmi'
					M.Move_Delay=10
					M.health-=damage
					F_damage(M, damage, "#ff0000")
					if(M.health<=0)
						M.Death(O)
						usr.cast=0
						return
					O.cast=0
					sleep(600)
					M.Move_Delay=0.7
					return
				if(O.random==2)
					var/damage= O.nin/3.8 + O.gen/3.8 - M.Resistencia/3
					if(damage<=0)damage=0
					O<<"Você acerta o braço de [M] com seu Kamui Shuriken causando um dano significante ([damage] de dano!)!"
					M<<"Seu braço foi acertado pelo Kamui Shuriken de [O] causando um dano significante ([damage] de dano!)!"
					M.overlays-='Kamui1.dmi'
					M.health-=damage
					F_damage(M, damage, "#ff0000")
					if(M.health<=0)
						M.Death(usr)
						O.cast=0
						return
					O.cast=0
					return
				if(O.random==3)
					O<<"Você acerta a cabeça de [M] com seu Kamui Shuriken causando morte instantênea!"
					M<<"Sua cabeça foi decapitada pelo Kamui Shuriken de [O] causando morte instantênea!"
					M.overlays-='Kamui1.dmi'
					M.health=0
					M.chakra=0
					M.Death(usr)
					O.cast=0
					return
				if(O.random==4)
					O<<"Você envia [M] com seu Kamui Shuriken para outra dimensão!"
					M<<"Você foi enviado para outra dimensão pelo Kamui Shuriken de [O]!"
					M.overlays-='Kamui1.dmi'
					M.loc = locate(66,228,7)
					M.verbs -= /mob/cliff/verb/TreinarHP
					O.cast=0
					return
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)




/*mob/jutsu
	verb
		Susaatak(var/mob/M in oview(1)) // Verb used for cast the beam
			set category = "Doujutsu"
			set name = "Susanoo Ataque"
			if(usr.cdsusanooataque)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o <b>Susanoo Ataque</b>!"
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
			else
				if(usr.cdsusanooataque)return
				usr.cdsusanooataque=1
				spawn()usr.Cooldown(120,"Susanoo Ataque")
				M<<"Você foi atingido pelo ataque absoluto de susanoo"
				var/damage = usr.gen/4.35 + usr.nin/4.35 - M.Resistencia/2
				if(damage<=0)damage=0
				view()<<"[M] recebeu [damage] de dano ao receber o ataque do Susanoo de [usr]!"
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				if(M.health<0)
					M.Death(usr)*/




obj
	ObitoSusanoocompeto
		layer=100
		part1
			icon='susanoo OBITO.dmi'
			icon_state="0,0"
			pixel_x = -64
			pixel_y = -64
		part2
			icon='susanoo OBITO.dmi'
			icon_state="1,0"
			pixel_x = -32
			pixel_y = -64
			density=0
		part3
			icon='susanoo OBITO.dmi'
			icon_state="2,0"
			pixel_y = -64
			density=0
		part4
			icon='susanoo OBITO.dmi'
			icon_state="3,0"
			pixel_x = 32
			pixel_y = -64
			density=0
		part5
			icon='susanoo OBITO.dmi'
			icon_state="4,0"
			pixel_x = 64
			pixel_y = -64
		part6
			icon='susanoo OBITO.dmi'
			icon_state="0,1"
			pixel_x = -64
			pixel_y = -32
		part7
			icon='susanoo OBITO.dmi'
			icon_state="1,1"
			pixel_x = -32
			pixel_y = -32
			density=0
		part8
			icon='susanoo OBITO.dmi'
			icon_state="2,1"
			pixel_y = -32
			density=0
		part9
			icon='susanoo OBITO.dmi'
			icon_state="3,1"
			pixel_x = 32
			pixel_y = -32
			density=0
		part10
			icon='susanoo OBITO.dmi'
			icon_state="4,1"
			pixel_x = 64
			pixel_y = -32
			density=0
		part11
			icon='susanoo OBITO.dmi'
			icon_state="0,2"
			pixel_x = -64
			density=0
		part12
			icon='susanoo OBITO.dmi'
			icon_state="1,2"
			pixel_x = -32
			density=0
		part13
			icon='susanoo OBITO.dmi'
			icon_state="2,2"
			density=0
		part14
			icon='susanoo OBITO.dmi'
			icon_state="3,2"
			pixel_x = 32
			density=0
		part15
			icon='susanoo OBITO.dmi'
			icon_state="4,2"
			pixel_x = 64
			density=0
		part16
			icon='susanoo OBITO.dmi'
			icon_state="0,3"
			pixel_x = -64
			pixel_y = 32
			density=0
		part17
			icon='susanoo OBITO.dmi'
			icon_state="1,3"
			pixel_x = -32
			pixel_y = 32
			density=0
		part18
			icon='susanoo OBITO.dmi'
			icon_state="2,3"
			pixel_y = 32
			density=0
		part19
			icon='susanoo OBITO.dmi'
			icon_state="3,3"
			pixel_x = 32
			pixel_y = 32
			density=0
		part20
			icon='susanoo OBITO.dmi'
			icon_state="4,3"
			pixel_x = 64
			pixel_y = 32
			density=0
		part21
			icon='susanoo OBITO.dmi'
			icon_state="0,4"
			pixel_x = -64
			pixel_y = 64
		part22
			icon='susanoo OBITO.dmi'
			icon_state="1,4"
			pixel_x = -32
			pixel_y = 64
			density=0
		part23
			icon='susanoo OBITO.dmi'
			icon_state="2,4"
			pixel_y = 64
			density=0
		part24
			icon='susanoo OBITO.dmi'
			icon_state="3,4"
			pixel_x = 32
			pixel_y = 64
			density=0
		part25
			icon='susanoo OBITO.dmi'
			icon_state="4,4"
			pixel_x = 64
			pixel_y = 64


obj/susanoobitocaveira
	caveiraS1
		icon = 'susanoo obito esquelet recolor by samy.dmi'
		icon_state = "00"
		pixel_x = -32
		layer = 100
	caveiraS2
		icon = 'susanoo obito esquelet recolor by samy.dmi'
		icon_state = "10"
		density = 0
		layer = 100
	caveiraS3
		icon = 'susanoo obito esquelet recolor by samy.dmi'
		icon_state = "20"
		pixel_x = 32
		density = 0
		layer = 100
	caveiraS4
		icon = 'susanoo obito esquelet recolor by samy.dmi'
		icon_state = "01"
		pixel_x = -32
		pixel_y = 32
		density = 0
		layer = 100
	caveiraS5
		icon = 'susanoo obito esquelet recolor by samy.dmi'
		icon_state = "11"
		pixel_y = 32
		density = 0
		layer = 100
	caveiraS6
		icon = 'susanoo obito esquelet recolor by samy.dmi'
		icon_state = "21"
		density = 0
		pixel_x = 32
		pixel_y = 32
		layer = 100
	caveiraS7
		icon = 'susanoo obito esquelet recolor by samy.dmi'
		icon_state = "02"
		pixel_x = -32
		pixel_y = 64
		density = 0
		layer = 100
	caveiraS8
		icon = 'susanoo obito esquelet recolor by samy.dmi'
		icon_state = "12"
		pixel_y = 64
		density = 0
		layer = 100
	caveiraS9
		icon = 'susanoo obito esquelet recolor by samy.dmi'
		icon_state = "22"
		pixel_x = 32
		pixel_y = 64
		density = 0
		layer = 100
	caveiraS10
		icon = 'susanoo obito esquelet recolor by samy.dmi'
		icon_state = "No player"
		density = 0
		layer = 100


obj/susanoobitopele
	peleS1
		icon = 'susanoo obito pele recolor by samy.dmi'
		icon_state = "1"
		pixel_x = -32
		density = 0
		layer = 100
	peleS2
		icon = 'susanoo obito pele recolor by samy.dmi'
		icon_state = "2"
		density = 0
		layer = 100
	peleS3
		icon = 'susanoo obito pele recolor by samy.dmi'
		icon_state = "3"
		pixel_x = 32
		density = 0
		layer = 100
	peleS4
		icon = 'susanoo obito pele recolor by samy.dmi'
		icon_state = "4"
		density = 0
		pixel_x = -32
		pixel_y = 32
		layer = 100
	peleS5
		icon = 'susanoo obito pele recolor by samy.dmi'
		icon_state = "5"
		pixel_y = 32
		density = 0
		layer = 100
	peleS6
		icon = 'susanoo obito pele recolor by samy.dmi'
		icon_state = "6"
		pixel_x = 32
		pixel_y = 32
		density = 0
		layer = 100
	peleS7
		icon = 'susanoo obito pele recolor by samy.dmi'
		icon_state = "7"
		pixel_x = -32
		pixel_y = 64
		density = 0
		layer = 100
	peleS8
		icon = 'susanoo obito pele recolor by samy.dmi'
		icon_state = "8"
		pixel_y = 64
		density = 0
		layer = 100
	peleS9
		icon = 'susanoo obito pele recolor by samy.dmi'
		icon_state = "9"
		pixel_x = 32
		pixel_y = 64
		density = 0
		layer = 100