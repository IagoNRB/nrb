mob/var/susanoFMSativado=0
mob/var/susanoFMSon=0


mob/var/susanoFMSuses=0

mob/jutsu
	verb
		SusanooFMS() // Verb used for cast the beam
			set category = "Doujutsu"
			set name = "Susanoo"
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
			if(usr.susanoFMSon)
				usr<<"Você desativa o Susanoo"
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
				usr.verbs -= new /mob/jutsu/verb/Susaatak2()
				usr.Kaiten=0
				usr.susanoFMSon=0
				return
			else
				usr.RandomChakra5()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.susanoFMSon=1
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Arte Suprema: Susanoo"
				usr<<"Você ativa o Susanoo."
				usr.susanoFMSuses += 1
				usr.kawa=0
				usr.overlays+=/obj/Susanoo/part1
				usr.overlays+=/obj/Susanoo/part2
				usr.overlays+=/obj/Susanoo/part3
				usr.overlays+=/obj/Susanoo/part4
				usr.overlays+=/obj/Susanoo/part5
				usr.overlays+=/obj/Susanoo/part6
				usr.overlays+=/obj/Susanoo/part7
				usr.overlays+=/obj/Susanoo/part8
				usr.overlays+=/obj/Susanoo/part9
				usr.overlays+=/obj/Susanoo/part10
				usr.overlays+=/obj/Susanoo/part11
				usr.overlays+=/obj/Susanoo/part12
				usr.overlays+=/obj/Susanoo/part13
				usr.overlays+=/obj/Susanoo/part14
				usr.overlays+=/obj/Susanoo/part15
				usr.overlays+=/obj/Susanoo/part16
				usr.overlays+=/obj/Susanoo/part17
				usr.overlays+=/obj/Susanoo/part18
				usr.overlays+=/obj/Susanoo/part19
				usr.overlays+=/obj/Susanoo/part20
				usr.overlays+=/obj/Susanoo/part21
				usr.overlays+=/obj/Susanoo/part22
				usr.overlays+=/obj/Susanoo/part23
				usr.overlays+=/obj/Susanoo/part24
				usr.overlays+=/obj/Susanoo/part25
				usr.overlays+=/obj/Susanoo/part26
				usr.verbs += new /mob/jutsu/verb/Susaatak2()
				usr.Kaiten=1
				Susanoo
				if(usr.susanoFMSon)
					usr.health-=rand(500,1000)
					if(usr.health <= 500)
						usr.susanoFMSon=0
						usr<<"Você <font color=red>desativa</font> o Susanoo por falta de vida!"
						return
					else
						sleep(20)
						goto Susanoo



mob/jutsu
	verb
		Susaatak2() // Verb used for cast the beam
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
				for(var/mob/M in oview(2))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(usr.cdsusanooataque)return
					usr.cdsusanooataque=1
					spawn()usr.Cooldown(120,"Susanoo Ataque")
					M<<"Você foi atingido pelo ataque absoluto de susanoo"
					var/damage = usr.nin/3 - M.Resistencia/1.5
					if(damage<=0)damage=0
					view()<<"[M] recebeu [damage] de dano ao receber o ataque do Susanoo de [usr]!"
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					if(M.health<0)
						M.Death(usr)