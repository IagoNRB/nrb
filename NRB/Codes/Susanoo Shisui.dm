mob/var/susanoShisuion=0
mob/var/susanoShisuion2=0
mob/var/susanoShisuion3=0
mob/var/susanoShisui=0


mob/var/susanoShisuiuses=0
mob/var/sshnv1=0
mob/var/sshnv2=0
mob/var/sshnv3=0

mob/jutsu
	verb
		SusanooShisui() // Verb used for cast the beam
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
			if(usr.susanoShisuion&&usr.sshnv1)
				usr<<"Você desativa o Susanoo"
				usr.overlays-= /obj/susanoShisuicaveira/caveiraS1
				usr.overlays-= /obj/susanoShisuicaveira/caveiraS2
				usr.overlays-= /obj/susanoShisuicaveira/caveiraS3
				usr.overlays-= /obj/susanoShisuicaveira/caveiraS4
				usr.overlays-= /obj/susanoShisuicaveira/caveiraS5
				usr.overlays-= /obj/susanoShisuicaveira/caveiraS6
				usr.overlays-= /obj/susanoShisuicaveira/caveiraS7
				usr.overlays-= /obj/susanoShisuicaveira/caveiraS8
				usr.overlays-= /obj/susanoShisuicaveira/caveiraS9
				usr.verbs -= new /mob/jutsu/verb/SusanooTotsukaAtk()
				usr.verbs -= new /mob/jutsu/verb/SusanooShisui2()
				usr.verbs -= new /mob/jutsu/verb/SusanooShisui3()
				usr.susanoShisuion=0
				usr.sshnv1=0
				return
			else
				usr.RandomChakra5()
				if(usr.chakra<=0||usr.health<=6000)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				if(!usr.susanoShisuion&&!usr.sshnv1&&!usr.susanoShisuion2&&!usr.sshnv2&&!usr.susanoShisuion3&&!usr.sshnv3)
					usr.susanoShisuion=1
					if(susanoShisuiuses>=250)
						usr.verbs += new /mob/jutsu/verb/SusanooShisui2()
					if(susanoShisuiuses>=500)
						usr.verbs += new /mob/jutsu/verb/SusanooShisui3()
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Arte Suprema: Susanoo"
					usr<<"Você ativa o Susanoo."
					usr.susanoShisuiuses += 1
					usr.overlays+= /obj/susanoShisuicaveira/caveiraS1
					usr.overlays+= /obj/susanoShisuicaveira/caveiraS2
					usr.overlays+= /obj/susanoShisuicaveira/caveiraS3
					usr.overlays+= /obj/susanoShisuicaveira/caveiraS4
					usr.overlays+= /obj/susanoShisuicaveira/caveiraS5
					usr.overlays+= /obj/susanoShisuicaveira/caveiraS6
					usr.overlays+= /obj/susanoShisuicaveira/caveiraS7
					usr.overlays+= /obj/susanoShisuicaveira/caveiraS8
					usr.overlays+= /obj/susanoShisuicaveira/caveiraS9
					usr.verbs += new /mob/jutsu/verb/SusanooTotsukaAtk()
					usr.sshnv1=1
				if(usr.susanoShisuion2&&usr.sshnv2)
					usr<<"Você volta a primeira forma do Susanoo!"
					usr.overlays-= /obj/susanoshisuipele/peleS1
					usr.overlays-= /obj/susanoshisuipele/peleS2
					usr.overlays-= /obj/susanoshisuipele/peleS3
					usr.overlays-= /obj/susanoshisuipele/peleS4
					usr.overlays-= /obj/susanoshisuipele/peleS5
					usr.overlays-= /obj/susanoshisuipele/peleS6
					usr.overlays-= /obj/susanoshisuipele/peleS7
					usr.overlays-= /obj/susanoshisuipele/peleS8
					usr.overlays-= /obj/susanoshisuipele/peleS9
					usr.susanoShisuion2=0
					usr.sshnv2=0
					usr.susanoShisuion=1
					usr.sshnv1=1
					usr.overlays+= /obj/susanoShisuicaveira/caveiraS1
					usr.overlays+= /obj/susanoShisuicaveira/caveiraS2
					usr.overlays+= /obj/susanoShisuicaveira/caveiraS3
					usr.overlays+= /obj/susanoShisuicaveira/caveiraS4
					usr.overlays+= /obj/susanoShisuicaveira/caveiraS5
					usr.overlays+= /obj/susanoShisuicaveira/caveiraS6
					usr.overlays+= /obj/susanoShisuicaveira/caveiraS7
					usr.overlays+= /obj/susanoShisuicaveira/caveiraS8
					usr.overlays+= /obj/susanoShisuicaveira/caveiraS9
				if(usr.susanoShisuion3&&usr.sshnv3)
					usr<<"Você volta a primeira forma do Susanoo!"
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
					usr.susanoShisuion3=0
					usr.sshnv3=0
					usr.susanoShisuion=1
					usr.sshnv1=1
					usr.overlays+= /obj/susanoShisuicaveira/caveiraS1
					usr.overlays+= /obj/susanoShisuicaveira/caveiraS2
					usr.overlays+= /obj/susanoShisuicaveira/caveiraS3
					usr.overlays+= /obj/susanoShisuicaveira/caveiraS4
					usr.overlays+= /obj/susanoShisuicaveira/caveiraS5
					usr.overlays+= /obj/susanoShisuicaveira/caveiraS6
					usr.overlays+= /obj/susanoShisuicaveira/caveiraS7
					usr.overlays+= /obj/susanoShisuicaveira/caveiraS8
					usr.overlays+= /obj/susanoShisuicaveira/caveiraS9
				Susanoo
				if(usr.susanoShisuion)
					usr.health-=rand(3000,6000)
					if(usr.health <= 6000)
						usr.health=1
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
						usr<<"Você <font color=red>desativa</font> o Susanoo por falta de vida!"
						usr.verbs -= new /mob/jutsu/verb/SusanooTotsukaAtk()
						usr.verbs -= new /mob/jutsu/verb/SusanooShisui2()
						usr.verbs -= new /mob/jutsu/verb/SusanooShisui3()
						return
					else
						sleep(20)
						goto Susanoo

mob/jutsu/verb
	SusanooShisui2()
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
		if(usr.susanoShisuion2&&usr.sshnv2)
			usr<<"O nível dois já está ativo!"
			return
		if(usr.chakra<=10000)
			usr<<"Você não tem chakra suficiente!"
			return
		if(usr.susanoShisuion&&usr.sshnv1)
			usr<<"Você ativa o segundo nivel do Susanoo!"
			usr.chakra -= 10000
			usr.overlays-= /obj/susanoShisuicaveira/caveiraS1
			usr.overlays-= /obj/susanoShisuicaveira/caveiraS2
			usr.overlays-= /obj/susanoShisuicaveira/caveiraS3
			usr.overlays-= /obj/susanoShisuicaveira/caveiraS4
			usr.overlays-= /obj/susanoShisuicaveira/caveiraS5
			usr.overlays-= /obj/susanoShisuicaveira/caveiraS6
			usr.overlays-= /obj/susanoShisuicaveira/caveiraS7
			usr.overlays-= /obj/susanoShisuicaveira/caveiraS8
			usr.overlays-= /obj/susanoShisuicaveira/caveiraS9
			usr.sshnv1=0
			usr.susanoShisuion=0
			usr.sshnv2=1
			usr.susanoShisuion2=1
			usr.overlays+= /obj/susanoshisuipele/peleS1
			usr.overlays+= /obj/susanoshisuipele/peleS2
			usr.overlays+= /obj/susanoshisuipele/peleS3
			usr.overlays+= /obj/susanoshisuipele/peleS4
			usr.overlays+= /obj/susanoshisuipele/peleS5
			usr.overlays+= /obj/susanoshisuipele/peleS6
			usr.overlays+= /obj/susanoshisuipele/peleS7
			usr.overlays+= /obj/susanoshisuipele/peleS8
			usr.overlays+= /obj/susanoshisuipele/peleS9
		else
			usr<<"Você precisa ativar o Susano'o primeiro!"
		if(usr.susanoShisuion3&&usr.sshnv3)
			usr<<"Você volta ao segundo nivel do Susanoo!"
			usr.overlays-=/obj/susanoShisuicompleto/completoS1
			usr.overlays-=/obj/susanoShisuicompleto/completoS2
			usr.overlays-=/obj/susanoShisuicompleto/completoS3
			usr.overlays-=/obj/susanoShisuicompleto/completoS4
			usr.overlays-=/obj/susanoShisuicompleto/completoS5
			usr.overlays-=/obj/susanoShisuicompleto/completoS6
			usr.overlays-=/obj/susanoShisuicompleto/completoS7
			usr.overlays-=/obj/susanoShisuicompleto/completoS8
			usr.overlays-=/obj/susanoShisuicompleto/completoS9
			usr.sshnv3=0
			usr.susanoShisuion3=0
			usr.verbs -= new /mob/jutsu/verb/SusanooTotsukaAtk()
			usr.sshnv2=1
			usr.susanoShisuion2=1
			usr.overlays+= /obj/susanoshisuipele/peleS1
			usr.overlays+= /obj/susanoshisuipele/peleS2
			usr.overlays+= /obj/susanoshisuipele/peleS3
			usr.overlays+= /obj/susanoshisuipele/peleS4
			usr.overlays+= /obj/susanoshisuipele/peleS5
			usr.overlays+= /obj/susanoshisuipele/peleS6
			usr.overlays+= /obj/susanoshisuipele/peleS7
			usr.overlays+= /obj/susanoshisuipele/peleS8
			usr.overlays+= /obj/susanoshisuipele/peleS9
			Susanoo
			if(usr.susanoShisuion2)
				usr.health-=rand(5000,8000)
				if(usr.health <= 8000)
					usr.health=1
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
					usr<<"Você <font color=red>desativa</font> o Susanoo por falta de vida!"
					usr.verbs -= new /mob/jutsu/verb/SusanooTotsukaAtk()
					usr.verbs -= new /mob/jutsu/verb/SusanooShisui2()
					usr.verbs -= new /mob/jutsu/verb/SusanooShisui3()
					return
				else
					sleep(20)
					goto Susanoo


mob/jutsu/verb
	SusanooShisui3()
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
		if(usr.susanoShisuion3&&usr.sshnv3)
			usr<<"O nível três já está ativo!"
			return
		if(usr.chakra<=10000)
			usr<<"Você não tem chakra suficiente!"
			return
		if(usr.susanoShisuion2&&usr.sshnv2)
			usr<<"Você ativa a faze completa!"
			usr.chakra -= 10000
			usr.overlays-= /obj/susanoshisuipele/peleS1
			usr.overlays-= /obj/susanoshisuipele/peleS2
			usr.overlays-= /obj/susanoshisuipele/peleS3
			usr.overlays-= /obj/susanoshisuipele/peleS4
			usr.overlays-= /obj/susanoshisuipele/peleS5
			usr.overlays-= /obj/susanoshisuipele/peleS6
			usr.overlays-= /obj/susanoshisuipele/peleS7
			usr.overlays-= /obj/susanoshisuipele/peleS8
			usr.overlays-= /obj/susanoshisuipele/peleS9
			usr.sshnv2=0
			usr.susanoShisuion2=0
			usr.sshnv3=1
			usr.susanoShisuion3=1
			usr.overlays+=/obj/susanoShisuicompleto/completoS1
			usr.overlays+=/obj/susanoShisuicompleto/completoS2
			usr.overlays+=/obj/susanoShisuicompleto/completoS3
			usr.overlays+=/obj/susanoShisuicompleto/completoS4
			usr.overlays+=/obj/susanoShisuicompleto/completoS5
			usr.overlays+=/obj/susanoShisuicompleto/completoS6
			usr.overlays+=/obj/susanoShisuicompleto/completoS7
			usr.overlays+=/obj/susanoShisuicompleto/completoS8
			usr.overlays+=/obj/susanoShisuicompleto/completoS9
			usr.verbs += new /mob/jutsu/verb/SusanooTotsukaAtk()
		if(usr.susanoShisuion&&usr.sshnv1)
			usr<<"Você ativa a faze completa!"
			usr.chakra -= 10000
			usr.overlays-= /obj/susanoShisuicaveira/caveiraS1
			usr.overlays-= /obj/susanoShisuicaveira/caveiraS2
			usr.overlays-= /obj/susanoShisuicaveira/caveiraS3
			usr.overlays-= /obj/susanoShisuicaveira/caveiraS4
			usr.overlays-= /obj/susanoShisuicaveira/caveiraS5
			usr.overlays-= /obj/susanoShisuicaveira/caveiraS6
			usr.overlays-= /obj/susanoShisuicaveira/caveiraS7
			usr.overlays-= /obj/susanoShisuicaveira/caveiraS8
			usr.overlays-= /obj/susanoShisuicaveira/caveiraS9
			usr.sshnv1=0
			usr.susanoShisuion=0
			usr.susanoShisuion3=1
			usr.sshnv3=1
			usr.overlays+=/obj/susanoShisuicompleto/completoS1
			usr.overlays+=/obj/susanoShisuicompleto/completoS2
			usr.overlays+=/obj/susanoShisuicompleto/completoS3
			usr.overlays+=/obj/susanoShisuicompleto/completoS4
			usr.overlays+=/obj/susanoShisuicompleto/completoS5
			usr.overlays+=/obj/susanoShisuicompleto/completoS6
			usr.overlays+=/obj/susanoShisuicompleto/completoS7
			usr.overlays+=/obj/susanoShisuicompleto/completoS8
			usr.overlays+=/obj/susanoShisuicompleto/completoS9
			usr.verbs += new /mob/jutsu/verb/SusanooTotsukaAtk()
			Susanoo
			if(usr.susanoShisuion3)
				usr.health-=rand(6000,9000)
				if(usr.health <= 9000)
					usr.health=1
					usr.susanoShisuion=0
					usr.susanoShisuion2=0
					usr.susanoShisuion3=0
					usr.sshnv3=0
					usr.sshnv2=0
					usr.sshnv1=0
					usr.overlays-= /obj/susanoShisuicompleto/completoS1
					usr.overlays-= /obj/susanoShisuicompleto/completoS2
					usr.overlays-= /obj/susanoShisuicompleto/completoS3
					usr.overlays-= /obj/susanoShisuicompleto/completoS4
					usr.overlays-= /obj/susanoShisuicompleto/completoS5
					usr.overlays-= /obj/susanoShisuicompleto/completoS6
					usr.overlays-= /obj/susanoShisuicompleto/completoS7
					usr.overlays-= /obj/susanoShisuicompleto/completoS8
					usr.overlays-= /obj/susanoShisuicompleto/completoS9
					usr.overlays-= /obj/susanoshisuipele/peleS1
					usr.overlays-= /obj/susanoshisuipele/peleS2
					usr.overlays-= /obj/susanoshisuipele/peleS3
					usr.overlays-= /obj/susanoshisuipele/peleS4
					usr.overlays-= /obj/susanoshisuipele/peleS5
					usr.overlays-= /obj/susanoshisuipele/peleS6
					usr.overlays-= /obj/susanoshisuipele/peleS7
					usr.overlays-= /obj/susanoshisuipele/peleS8
					usr.overlays-= /obj/susanoshisuipele/peleS9
					usr.overlays-= /obj/susanoShisuicaveira/caveiraS1
					usr.overlays-= /obj/susanoShisuicaveira/caveiraS2
					usr.overlays-= /obj/susanoShisuicaveira/caveiraS3
					usr.overlays-= /obj/susanoShisuicaveira/caveiraS4
					usr.overlays-= /obj/susanoShisuicaveira/caveiraS5
					usr.overlays-= /obj/susanoShisuicaveira/caveiraS6
					usr.overlays-= /obj/susanoShisuicaveira/caveiraS7
					usr.overlays-= /obj/susanoShisuicaveira/caveiraS8
					usr.overlays-= /obj/susanoShisuicaveira/caveiraS9
					usr<<"Você <font color=red>desativa</font> o Susanoo por falta de vida!"
					usr.verbs -= new /mob/jutsu/verb/SusanooTotsukaAtk()
					usr.verbs -= new /mob/jutsu/verb/SusanooShisui2()
					usr.verbs -= new /mob/jutsu/verb/SusanooShisui3()
					return
				else
					sleep(20)
					goto Susanoo


obj/susanoShisuicaveira
	caveiraS1
		icon = 'susanoo shisui esquelet.dmi'
		icon_state = "00"
		pixel_x = -32
		layer = 100
	caveiraS2
		icon = 'susanoo shisui esquelet.dmi'
		icon_state = "10"
		density = 0
		layer = 100
	caveiraS3
		icon = 'susanoo shisui esquelet.dmi'
		icon_state = "20"
		pixel_x = 32
		density = 0
		layer = 100
	caveiraS4
		icon = 'susanoo shisui esquelet.dmi'
		icon_state = "01"
		pixel_x = -32
		pixel_y = 32
		density = 0
		layer = 100
	caveiraS5
		icon = 'susanoo shisui esquelet.dmi'
		icon_state = "11"
		pixel_y = 32
		density = 0
		layer = 100
	caveiraS6
		icon = 'susanoo shisui esquelet.dmi'
		icon_state = "21"
		density = 0
		pixel_x = 32
		pixel_y = 32
		layer = 100
	caveiraS7
		icon = 'susanoo shisui esquelet.dmi'
		icon_state = "02"
		pixel_x = -32
		pixel_y = 64
		density = 0
		layer = 100
	caveiraS8
		icon = 'susanoo shisui esquelet.dmi'
		icon_state = "12"
		pixel_y = 64
		density = 0
		layer = 100
	caveiraS9
		icon = 'susanoo shisui esquelet.dmi'
		icon_state = "22"
		pixel_x = 32
		pixel_y = 64
		density = 0
		layer = 100


obj/susanoshisuipele
	peleS1
		icon = 'SusanooPeleShis.dmi'
		icon_state = "1"
		pixel_x = -32
		density = 0
		layer = 100
	peleS2
		icon = 'SusanooPeleShis.dmi'
		icon_state = "2"
		density = 0
		layer = 100
	peleS3
		icon = 'SusanooPeleShis.dmi'
		icon_state = "3"
		pixel_x = 32
		density = 0
		layer = 100
	peleS4
		icon = 'SusanooPeleShis.dmi'
		icon_state = "4"
		density = 0
		pixel_x = -32
		pixel_y = 32
		layer = 100
	peleS5
		icon = 'SusanooPeleShis.dmi'
		icon_state = "5"
		pixel_y = 32
		density = 0
		layer = 100
	peleS6
		icon = 'SusanooPeleShis.dmi'
		icon_state = "6"
		pixel_x = 32
		pixel_y = 32
		density = 0
		layer = 100
	peleS7
		icon = 'SusanooPeleShis.dmi'
		icon_state = "7"
		pixel_x = -32
		pixel_y = 64
		density = 0
		layer = 100
	peleS8
		icon = 'SusanooPeleShis.dmi'
		icon_state = "8"
		pixel_y = 64
		density = 0
		layer = 100
	peleS9
		icon = 'SusanooPeleShis.dmi'
		icon_state = "9"
		pixel_x = 32
		pixel_y = 64
		density = 0
		layer = 100

obj
obj/susanoShisuicompleto
	completoS1
		icon = 'SusanooCompShis.dmi'
		icon_state = "1"
		pixel_x = -32
		density = 0
		layer = 100
	completoS2
		icon = 'SusanooCompShis.dmi'
		icon_state = "2"
		density = 0
		layer = 100
	completoS3
		icon = 'SusanooCompShis.dmi'
		icon_state = "3"
		pixel_x = 32
		density = 0
		layer = 5
	completoS4
		icon = 'SusanooCompShis.dmi'
		icon_state = "4"
		pixel_x = -32
		pixel_y = 32
		density = 0
		layer = 100
	completoS5
		icon = 'SusanooCompShis.dmi'
		icon_state = "5"
		pixel_y = 32
		density = 0
		layer = 100
	completoS6
		icon = 'SusanooCompShis.dmi'
		icon_state = "6"
		pixel_x = 32
		pixel_y = 32
		density = 0
		layer = 100
	completoS7
		icon = 'SusanooCompShis.dmi'
		icon_state = "7"
		pixel_x = -32
		pixel_y = 64
		density = 0
		layer = 100
	completoS8
		icon = 'SusanooCompShis.dmi'
		icon_state = "8"
		pixel_y = 64
		density = 0
		layer = 100
	completoS9
		icon = 'SusanooCompShis.dmi'
		icon_state = "9"
		pixel_x = 32
		pixel_y = 64
		density = 0
		layer = 100



obj
	SusanooShisuiR
		layer=100
		part1
			icon='Susanoo Rinnegan Shisui.dmi'
			icon_state="0,0"
			pixel_x = -64
			pixel_y = -64
		part2
			icon='Susanoo Rinnegan Shisui.dmi'
			icon_state="1,0"
			pixel_x = -32
			pixel_y = -64
			density=0
		part3
			icon='Susanoo Rinnegan Shisui.dmi'
			icon_state="2,0"
			pixel_y = -64
			density=0
		part4
			icon='Susanoo Rinnegan Shisui.dmi'
			icon_state="3,0"
			pixel_x = 32
			pixel_y = -64
			density=0
		part5
			icon='Susanoo Rinnegan Shisui.dmi'
			icon_state="4,0"
			pixel_x = 64
			pixel_y = -64
		part6
			icon='Susanoo Rinnegan Shisui.dmi'
			icon_state="0,1"
			pixel_x = -64
			pixel_y = -32
		part7
			icon='Susanoo Rinnegan Shisui.dmi'
			icon_state="1,1"
			pixel_x = -32
			pixel_y = -32
			density=0
		part8
			icon='Susanoo Rinnegan Shisui.dmi'
			icon_state="2,1"
			pixel_y = -32
			density=0
		part9
			icon='Susanoo Rinnegan Shisui.dmi'
			icon_state="3,1"
			pixel_x = 32
			pixel_y = -32
			density=0
		part10
			icon='Susanoo Rinnegan Shisui.dmi'
			icon_state="4,1"
			pixel_x = 64
			pixel_y = -32
			density=0
		part11
			icon='Susanoo Rinnegan Shisui.dmi'
			icon_state="0,2"
			pixel_x = -64
			density=0
		part12
			icon='Susanoo Rinnegan Shisui.dmi'
			icon_state="1,2"
			pixel_x = -32
			density=0
		part13
			icon='Susanoo Rinnegan Shisui.dmi'
			icon_state="2,2"
			density=0
		part14
			icon='Susanoo Rinnegan Shisui.dmi'
			icon_state="3,2"
			pixel_x = 32
			density=0
		part15
			icon='Susanoo Rinnegan Shisui.dmi'
			icon_state="4,2"
			pixel_x = 64
			density=0
		part16
			icon='Susanoo Rinnegan Shisui.dmi'
			icon_state="0,3"
			pixel_x = -64
			pixel_y = 32
			density=0
		part17
			icon='Susanoo Rinnegan Shisui.dmi'
			icon_state="1,3"
			pixel_x = -32
			pixel_y = 32
			density=0
		part18
			icon='Susanoo Rinnegan Shisui.dmi'
			icon_state="2,3"
			pixel_y = 32
			density=0
		part19
			icon='Susanoo Rinnegan Shisui.dmi'
			icon_state="3,3"
			pixel_x = 32
			pixel_y = 32
			density=0
		part20
			icon='Susanoo Rinnegan Shisui.dmi'
			icon_state="4,3"
			pixel_x = 64
			pixel_y = 32
			density=0
		part21
			icon='Susanoo Rinnegan Shisui.dmi'
			icon_state="0,4"
			pixel_x = -64
			pixel_y = 64
		part22
			icon='Susanoo Rinnegan Shisui.dmi'
			icon_state="1,4"
			pixel_x = -32
			pixel_y = 64
			density=0
		part23
			icon='Susanoo Rinnegan Shisui.dmi'
			icon_state="2,4"
			pixel_y = 64
			density=0
		part24
			icon='Susanoo Rinnegan Shisui.dmi'
			icon_state="3,4"
			pixel_x = 32
			pixel_y = 64
			density=0
		part25
			icon='Susanoo Rinnegan Shisui.dmi'
			icon_state="4,4"
			pixel_x = 64
			pixel_y = 64
