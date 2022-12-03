mob/var/SusanooRinneganativado=0
mob/var/SusanooRinneganon=0
mob/var/SusanooRinneganuses=0
mob/var/spnv=0

mob/jutsu
	verb
		SusanooRinnegan() // Verb used for cast the beam
			set category = "Doujutsu"
			set name = "Rinnegan: Susanoo Perfeito"
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
			if(!usr.rinne)
				usr<<"Vc precisa estar com o Rinnegan ativado"
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
			if(usr.susanoSasukeon||usr.susanoSasukeon2||usr.susanoSasukeon3||usr.susanoItachion||usr.susanoItachion2||usr.susanoItachion3||usr.susanoObitoon||usr.susanoObitoon2||usr.susanoObitoon3||usr.susanoShisuion||usr.susanoShisuion2||usr.susanoShisuion3)
				usr<<"Você já está com um Susano'o ativado!"
				return
			if(usr.SusanooRinneganon)
				usr<<"Você desativa o Susanoo"
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
				usr.verbs -= new /mob/jutsu/verb/SusaatakR()
				usr.SusanooRinneganon=0
				usr.spnv=0
				return
			else
				usr.RandomChakra5()
				if(usr.chakra<=0||usr.health<=6000)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return

				usr.SusanooRinneganon=1
				usr.spnv=1
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=cyan> Diz: Arte Suprema: Susanoo Perfeito!"
				usr<<"Você ativa o Susanoo."
				if(usr.msobito||usr.msitachi||usr.mssasuke||usr.msmadara)
					usr.SusanooRinneganuses += 1
					usr.overlays+=/obj/SusanooR/part1
					usr.overlays+=/obj/SusanooR/part2
					usr.overlays+=/obj/SusanooR/part3
					usr.overlays+=/obj/SusanooR/part4
					usr.overlays+=/obj/SusanooR/part5
					usr.overlays+=/obj/SusanooR/part6
					usr.overlays+=/obj/SusanooR/part7
					usr.overlays+=/obj/SusanooR/part8
					usr.overlays+=/obj/SusanooR/part9
					usr.overlays+=/obj/SusanooR/part10
					usr.overlays+=/obj/SusanooR/part11
					usr.overlays+=/obj/SusanooR/part12
					usr.overlays+=/obj/SusanooR/part13
					usr.overlays+=/obj/SusanooR/part14
					usr.overlays+=/obj/SusanooR/part15
					usr.overlays+=/obj/SusanooR/part16
					usr.overlays+=/obj/SusanooR/part17
					usr.overlays+=/obj/SusanooR/part18
					usr.overlays+=/obj/SusanooR/part19
					usr.overlays+=/obj/SusanooR/part20
					usr.overlays+=/obj/SusanooR/part21
					usr.overlays+=/obj/SusanooR/part22
					usr.overlays+=/obj/SusanooR/part23
					usr.overlays+=/obj/SusanooR/part24
					usr.overlays+=/obj/SusanooR/part25
				else if(usr.msshisui)
					usr.overlays+=/obj/SusanooShisuiR/part1
					usr.overlays+=/obj/SusanooShisuiR/part2
					usr.overlays+=/obj/SusanooShisuiR/part3
					usr.overlays+=/obj/SusanooShisuiR/part4
					usr.overlays+=/obj/SusanooShisuiR/part5
					usr.overlays+=/obj/SusanooShisuiR/part6
					usr.overlays+=/obj/SusanooShisuiR/part7
					usr.overlays+=/obj/SusanooShisuiR/part8
					usr.overlays+=/obj/SusanooShisuiR/part9
					usr.overlays+=/obj/SusanooShisuiR/part10
					usr.overlays+=/obj/SusanooShisuiR/part11
					usr.overlays+=/obj/SusanooShisuiR/part12
					usr.overlays+=/obj/SusanooShisuiR/part13
					usr.overlays+=/obj/SusanooShisuiR/part14
					usr.overlays+=/obj/SusanooShisuiR/part15
					usr.overlays+=/obj/SusanooShisuiR/part16
					usr.overlays+=/obj/SusanooShisuiR/part17
					usr.overlays+=/obj/SusanooShisuiR/part18
					usr.overlays+=/obj/SusanooShisuiR/part19
					usr.overlays+=/obj/SusanooShisuiR/part20
					usr.overlays+=/obj/SusanooShisuiR/part21
					usr.overlays+=/obj/SusanooShisuiR/part22
					usr.overlays+=/obj/SusanooShisuiR/part23
					usr.overlays+=/obj/SusanooShisuiR/part24
					usr.overlays+=/obj/SusanooShisuiR/part25
				usr.verbs += new /mob/jutsu/verb/SusaatakR()
				Susanoo
				if(usr.SusanooRinneganon)
					usr.health-=rand(5000,8000)
					if(usr.health <= 8000)
						usr.health = 1
						usr.SusanooRinneganon=0
						usr.spnv=0
						usr<<"Você <font color=red>desativa</font> o Susanoo Perfeito por falta de vida!"
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
						usr.verbs -= new /mob/jutsu/verb/SusaatakR()
						return
					else
						sleep(20)
						goto Susanoo















mob/jutsu
	verb
		SusaatakR(var/mob/M in orange(5)) // Verb used for cast the beam
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
				spawn()flick("dragãoZIM.dmi",usr)
				M<<"Você foi atingido pelo ataque absoluto de susanoo"
				var/damage = usr.nin/3.5 +usr.gen/3.5 - M.Resistencia/3.65
				if(damage<=0)damage=0
				view()<<"[M] recebeu [damage] de dano ao receber o ataque do Susanoo de [usr]!"
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				if(M.health<0)
					M.Death(usr)







obj
	SusanooR
		layer=100
		part1
			icon='susanoo FMS.dmi'
			icon_state="0,0"
			pixel_x = -64
			pixel_y = -64
		part2
			icon='susanoo FMS.dmi'
			icon_state="1,0"
			pixel_x = -32
			pixel_y = -64
			density=0
		part3
			icon='susanoo FMS.dmi'
			icon_state="2,0"
			pixel_y = -64
			density=0
		part4
			icon='susanoo FMS.dmi'
			icon_state="3,0"
			pixel_x = 32
			pixel_y = -64
			density=0
		part5
			icon='susanoo FMS.dmi'
			icon_state="4,0"
			pixel_x = 64
			pixel_y = -64
		part6
			icon='susanoo FMS.dmi'
			icon_state="0,1"
			pixel_x = -64
			pixel_y = -32
		part7
			icon='susanoo FMS.dmi'
			icon_state="1,1"
			pixel_x = -32
			pixel_y = -32
			density=0
		part8
			icon='susanoo FMS.dmi'
			icon_state="2,1"
			pixel_y = -32
			density=0
		part9
			icon='susanoo FMS.dmi'
			icon_state="3,1"
			pixel_x = 32
			pixel_y = -32
			density=0
		part10
			icon='susanoo FMS.dmi'
			icon_state="4,1"
			pixel_x = 64
			pixel_y = -32
			density=0
		part11
			icon='susanoo FMS.dmi'
			icon_state="0,2"
			pixel_x = -64
			density=0
		part12
			icon='susanoo FMS.dmi'
			icon_state="1,2"
			pixel_x = -32
			density=0
		part13
			icon='susanoo FMS.dmi'
			icon_state="2,2"
			density=0
		part14
			icon='susanoo FMS.dmi'
			icon_state="3,2"
			pixel_x = 32
			density=0
		part15
			icon='susanoo FMS.dmi'
			icon_state="4,2"
			pixel_x = 64
			density=0
		part16
			icon='susanoo FMS.dmi'
			icon_state="0,3"
			pixel_x = -64
			pixel_y = 32
			density=0
		part17
			icon='susanoo FMS.dmi'
			icon_state="1,3"
			pixel_x = -32
			pixel_y = 32
			density=0
		part18
			icon='susanoo FMS.dmi'
			icon_state="2,3"
			pixel_y = 32
			density=0
		part19
			icon='susanoo FMS.dmi'
			icon_state="3,3"
			pixel_x = 32
			pixel_y = 32
			density=0
		part20
			icon='susanoo FMS.dmi'
			icon_state="4,3"
			pixel_x = 64
			pixel_y = 32
			density=0
		part21
			icon='susanoo FMS.dmi'
			icon_state="0,4"
			pixel_x = -64
			pixel_y = 64
		part22
			icon='susanoo FMS.dmi'
			icon_state="1,4"
			pixel_x = -32
			pixel_y = 64
			density=0
		part23
			icon='susanoo FMS.dmi'
			icon_state="2,4"
			pixel_y = 64
			density=0
		part24
			icon='susanoo FMS.dmi'
			icon_state="3,4"
			pixel_x = 32
			pixel_y = 64
			density=0
		part25
			icon='susanoo FMS.dmi'
			icon_state="4,4"
			pixel_x = 64
			pixel_y = 64
