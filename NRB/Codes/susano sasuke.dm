mob/var/susanoSasukeativado=0
mob/var/susanoSasukeon=0
mob/var/susanoSasukeon2=0
mob/var/susanoSasukeon3=0
mob/var/susanoSasukeuses=0

mob/var/ssnv1
mob/var/ssnv2
mob/var/ssnv3

mob/jutsu/verb
	SusanooSasuke()
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
		if(usr.susanoSasukeon&&usr.ssnv1)
			usr<<"Você desativa o Susanoo"
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
			usr.verbs -= new /mob/jutsu/verb/Susaatak()
			usr.verbs -= new /mob/jutsu/verb/SusanooSasuke2()
			usr.verbs -= new /mob/jutsu/verb/SusanooSasuke3()
			usr.susanoSasukeon=0
			usr.ssnv1=0
			return
		else
			usr.RandomChakra5()
			if(usr.chakra<=0||usr.health<=6000)
				usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
				usr.health=0
				usr.chakra=0
				usr.Death(usr)
				return
			if(!usr.susanoSasukeon&&!usr.ssnv1&&!usr.susanoSasukeon2&&!usr.ssnv2&&!usr.susanoSasukeon3&&!usr.ssnv3)
				usr.susanoSasukeon=1
				if(usr.susanoSasukeuses>=250)
					usr.verbs += new /mob/jutsu/verb/SusanooSasuke2()
				if(usr.susanoSasukeuses>=500)
					usr.verbs += new /mob/jutsu/verb/SusanooSasuke3()
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Arte Suprema: Susanoo"
				usr<<"Você ativa o Susanoo."
				usr.susanoSasukeuses += 1
				usr.overlays+= /obj/susanoSasukecaveira/caveiraS1
				usr.overlays+= /obj/susanoSasukecaveira/caveiraS2
				usr.overlays+= /obj/susanoSasukecaveira/caveiraS3
				usr.overlays+= /obj/susanoSasukecaveira/caveiraS4
				usr.overlays+= /obj/susanoSasukecaveira/caveiraS5
				usr.overlays+= /obj/susanoSasukecaveira/caveiraS6
				usr.overlays+= /obj/susanoSasukecaveira/caveiraS7
				usr.overlays+= /obj/susanoSasukecaveira/caveiraS8
				usr.overlays+= /obj/susanoSasukecaveira/caveiraS9
				usr.overlays+= /obj/susanoSasukecaveira/caveiraS10
				usr.verbs += new /mob/jutsu/verb/Susaatak()
				usr.ssnv1=1
			if(usr.susanoSasukeon2&&usr.ssnv2)
				usr<<"Você volta a primeira forma do Susanoo!"
				usr.overlays-= /obj/susanosasukepele/peleS1
				usr.overlays-= /obj/susanosasukepele/peleS2
				usr.overlays-= /obj/susanosasukepele/peleS3
				usr.overlays-= /obj/susanosasukepele/peleS4
				usr.overlays-= /obj/susanosasukepele/peleS5
				usr.overlays-= /obj/susanosasukepele/peleS6
				usr.overlays-= /obj/susanosasukepele/peleS7
				usr.overlays-= /obj/susanosasukepele/peleS8
				usr.overlays-= /obj/susanosasukepele/peleS9
				usr.susanoSasukeon2=0
				usr.ssnv2=0
				usr.susanoSasukeon=1
				usr.ssnv1=1
				usr.overlays+= /obj/susanoSasukecaveira/caveiraS1
				usr.overlays+= /obj/susanoSasukecaveira/caveiraS2
				usr.overlays+= /obj/susanoSasukecaveira/caveiraS3
				usr.overlays+= /obj/susanoSasukecaveira/caveiraS4
				usr.overlays+= /obj/susanoSasukecaveira/caveiraS5
				usr.overlays+= /obj/susanoSasukecaveira/caveiraS6
				usr.overlays+= /obj/susanoSasukecaveira/caveiraS7
				usr.overlays+= /obj/susanoSasukecaveira/caveiraS8
				usr.overlays+= /obj/susanoSasukecaveira/caveiraS9
				usr.overlays+= /obj/susanoSasukecaveira/caveiraS10
			if(usr.susanoSasukeon3&&usr.ssnv3)
				usr<<"Você volta a primeira forma do Susanoo!"
				usr.overlays-= /obj/susanoSasukecompleto/completoS1
				usr.overlays-= /obj/susanoSasukecompleto/completoS2
				usr.overlays-= /obj/susanoSasukecompleto/completoS3
				usr.overlays-= /obj/susanoSasukecompleto/completoS4
				usr.overlays-= /obj/susanoSasukecompleto/completoS5
				usr.overlays-= /obj/susanoSasukecompleto/completoS6
				usr.overlays-= /obj/susanoSasukecompleto/completoS7
				usr.overlays-= /obj/susanoSasukecompleto/completoS8
				usr.overlays-= /obj/susanoSasukecompleto/completoS9
				usr.verbs -= new /mob/jutsu/verb/SusanooAtk2()
				usr.susanoSasukeon3=0
				usr.ssnv3=0
				usr.susanoSasukeon=1
				usr.ssnv1=1
				usr.overlays+= /obj/susanoSasukecaveira/caveiraS1
				usr.overlays+= /obj/susanoSasukecaveira/caveiraS2
				usr.overlays+= /obj/susanoSasukecaveira/caveiraS3
				usr.overlays+= /obj/susanoSasukecaveira/caveiraS4
				usr.overlays+= /obj/susanoSasukecaveira/caveiraS5
				usr.overlays+= /obj/susanoSasukecaveira/caveiraS6
				usr.overlays+= /obj/susanoSasukecaveira/caveiraS7
				usr.overlays+= /obj/susanoSasukecaveira/caveiraS8
				usr.overlays+= /obj/susanoSasukecaveira/caveiraS9
				usr.overlays+= /obj/susanoSasukecaveira/caveiraS10
			Susanoo
			if(usr.susanoSasukeon)
				usr.health-=rand(3000,6000)
				if(usr.health <= 6000)
					usr.health = 1
					usr.susanoSasukeon=0
					usr.susanoSasukeon2=0
					usr.susanoSasukeon3=0
					usr.ssnv3=0
					usr.ssnv2=0
					usr.ssnv1=0
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
					usr.overlays-= /obj/susanoSasukecompleto/completoS1
					usr.overlays-= /obj/susanoSasukecompleto/completoS2
					usr.overlays-= /obj/susanoSasukecompleto/completoS3
					usr.overlays-= /obj/susanoSasukecompleto/completoS4
					usr.overlays-= /obj/susanoSasukecompleto/completoS5
					usr.overlays-= /obj/susanoSasukecompleto/completoS6
					usr.overlays-= /obj/susanoSasukecompleto/completoS7
					usr.overlays-= /obj/susanoSasukecompleto/completoS8
					usr.overlays-= /obj/susanoSasukecompleto/completoS9
					usr<<"Você <font color=red>desativa</font> o Susanoo por falta de vida!"
					usr.verbs -= new /mob/jutsu/verb/Susaatak()
					usr.verbs -= new /mob/jutsu/verb/SusanooAtk2()
					usr.verbs -= new /mob/jutsu/verb/SusanooSasuke2()
					usr.verbs -= new /mob/jutsu/verb/SusanooSasuke3()
					return
				else
					sleep(20)
					goto Susanoo

mob/jutsu/verb
	SusanooSasuke2()
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
		if(usr.susanoSasukeon2&&usr.ssnv2)
			usr<<"O nível dois já está ativo!"
			return
		if(usr.chakra<=10000)
			usr<<"Você não tem chakra suficiente!"
			return
		if(usr.susanoSasukeon&&usr.ssnv1)
			usr<<"Você ativa o segundo nivel do Susanoo!"
			usr.chakra -= 10000
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
			usr.ssnv1=0
			usr.susanoSasukeon=0
			usr.ssnv2=1
			usr.susanoSasukeon2=1
			usr.overlays+= /obj/susanosasukepele/peleS1
			usr.overlays+= /obj/susanosasukepele/peleS2
			usr.overlays+= /obj/susanosasukepele/peleS3
			usr.overlays+= /obj/susanosasukepele/peleS4
			usr.overlays+= /obj/susanosasukepele/peleS5
			usr.overlays+= /obj/susanosasukepele/peleS6
			usr.overlays+= /obj/susanosasukepele/peleS7
			usr.overlays+= /obj/susanosasukepele/peleS8
			usr.overlays+= /obj/susanosasukepele/peleS9
		else
			usr<<"Você precisa ativar o Susano'o primeiro!"
		if(usr.susanoSasukeon3&&usr.ssnv3)
			usr<<"Você volta ao segundo nivel do Susanoo!"
			usr.overlays-= /obj/susanoSasukecompleto/completoS1
			usr.overlays-= /obj/susanoSasukecompleto/completoS2
			usr.overlays-= /obj/susanoSasukecompleto/completoS3
			usr.overlays-= /obj/susanoSasukecompleto/completoS4
			usr.overlays-= /obj/susanoSasukecompleto/completoS5
			usr.overlays-= /obj/susanoSasukecompleto/completoS6
			usr.overlays-= /obj/susanoSasukecompleto/completoS7
			usr.overlays-= /obj/susanoSasukecompleto/completoS8
			usr.overlays-= /obj/susanoSasukecompleto/completoS9
			usr.ssnv3=0
			usr.susanoSasukeon3=0
			usr.verbs -= new /mob/jutsu/verb/SusanooAtk2()
			usr.ssnv2=1
			usr.susanoSasukeon2=1
			usr.overlays+= /obj/susanosasukepele/peleS1
			usr.overlays+= /obj/susanosasukepele/peleS2
			usr.overlays+= /obj/susanosasukepele/peleS3
			usr.overlays+= /obj/susanosasukepele/peleS4
			usr.overlays+= /obj/susanosasukepele/peleS5
			usr.overlays+= /obj/susanosasukepele/peleS6
			usr.overlays+= /obj/susanosasukepele/peleS7
			usr.overlays+= /obj/susanosasukepele/peleS8
			usr.overlays+= /obj/susanosasukepele/peleS9
			Susanoo
			if(usr.susanoSasukeon2)
				usr.health-=rand(5000,8000)
				if(usr.health <= 8000)
					usr.health=1
					usr.susanoSasukeon=0
					usr.susanoSasukeon2=0
					usr.susanoSasukeon3=0
					usr.ssnv3=0
					usr.ssnv2=0
					usr.ssnv1=0
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
					usr.overlays-= /obj/susanoSasukecompleto/completoS1
					usr.overlays-= /obj/susanoSasukecompleto/completoS2
					usr.overlays-= /obj/susanoSasukecompleto/completoS3
					usr.overlays-= /obj/susanoSasukecompleto/completoS4
					usr.overlays-= /obj/susanoSasukecompleto/completoS5
					usr.overlays-= /obj/susanoSasukecompleto/completoS6
					usr.overlays-= /obj/susanoSasukecompleto/completoS7
					usr.overlays-= /obj/susanoSasukecompleto/completoS8
					usr.overlays-= /obj/susanoSasukecompleto/completoS9
					usr<<"Você <font color=red>desativa</font> o Susanoo por falta de vida!"
					usr.verbs -= new /mob/jutsu/verb/Susaatak()
					usr.verbs -= new /mob/jutsu/verb/SusanooAtk2()
					usr.verbs -= new /mob/jutsu/verb/SusanooSasuke2()
					usr.verbs -= new /mob/jutsu/verb/SusanooSasuke3()
					return
				else
					sleep(20)
					goto Susanoo


mob/jutsu/verb
	SusanooSasuke3()
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
		if(usr.susanoSasukeon3&&usr.ssnv3)
			usr<<"O nível três já está ativo!"
			return
		if(usr.chakra<=10000)
			usr<<"Você não tem chakra suficiente"
			return
		if(usr.susanoSasukeon2&&usr.ssnv2)
			usr<<"Você ativa a faze completa!"
			usr.chakra -= 10000
			usr.overlays-= /obj/susanosasukepele/peleS1
			usr.overlays-= /obj/susanosasukepele/peleS2
			usr.overlays-= /obj/susanosasukepele/peleS3
			usr.overlays-= /obj/susanosasukepele/peleS4
			usr.overlays-= /obj/susanosasukepele/peleS5
			usr.overlays-= /obj/susanosasukepele/peleS6
			usr.overlays-= /obj/susanosasukepele/peleS7
			usr.overlays-= /obj/susanosasukepele/peleS8
			usr.overlays-= /obj/susanosasukepele/peleS9
			usr.ssnv2=0
			usr.susanoSasukeon2=0
			usr.ssnv3=1
			usr.susanoSasukeon3=1
			usr.overlays+= /obj/susanoSasukecompleto/completoS1
			usr.overlays+= /obj/susanoSasukecompleto/completoS2
			usr.overlays+= /obj/susanoSasukecompleto/completoS3
			usr.overlays+= /obj/susanoSasukecompleto/completoS4
			usr.overlays+= /obj/susanoSasukecompleto/completoS5
			usr.overlays+= /obj/susanoSasukecompleto/completoS6
			usr.overlays+= /obj/susanoSasukecompleto/completoS7
			usr.overlays+= /obj/susanoSasukecompleto/completoS8
			usr.overlays+= /obj/susanoSasukecompleto/completoS9
			usr.verbs += new /mob/jutsu/verb/SusanooAtk2()
		if(usr.susanoSasukeon&&usr.ssnv1)
			usr<<"Você ativa a faze completa!"
			usr.chakra -= 10000
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
			usr.ssnv1=0
			usr.susanoSasukeon=0
			usr.susanoSasukeon3=1
			usr.ssnv3=1
			usr.overlays+= /obj/susanoSasukecompleto/completoS1
			usr.overlays+= /obj/susanoSasukecompleto/completoS2
			usr.overlays+= /obj/susanoSasukecompleto/completoS3
			usr.overlays+= /obj/susanoSasukecompleto/completoS4
			usr.overlays+= /obj/susanoSasukecompleto/completoS5
			usr.overlays+= /obj/susanoSasukecompleto/completoS6
			usr.overlays+= /obj/susanoSasukecompleto/completoS7
			usr.overlays+= /obj/susanoSasukecompleto/completoS8
			usr.overlays+= /obj/susanoSasukecompleto/completoS9
			usr.verbs += new /mob/jutsu/verb/SusanooAtk2()
			Susanoo
			if(usr.susanoSasukeon3)
				usr.health-=rand(6000,9000)
				if(usr.health <= 9000)
					usr.health=1
					usr.susanoSasukeon=0
					usr.susanoSasukeon2=0
					usr.susanoSasukeon3=0
					usr.ssnv3=0
					usr.ssnv2=0
					usr.ssnv1=0
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
					usr.overlays-= /obj/susanoSasukecompleto/completoS1
					usr.overlays-= /obj/susanoSasukecompleto/completoS2
					usr.overlays-= /obj/susanoSasukecompleto/completoS3
					usr.overlays-= /obj/susanoSasukecompleto/completoS4
					usr.overlays-= /obj/susanoSasukecompleto/completoS5
					usr.overlays-= /obj/susanoSasukecompleto/completoS6
					usr.overlays-= /obj/susanoSasukecompleto/completoS7
					usr.overlays-= /obj/susanoSasukecompleto/completoS8
					usr.overlays-= /obj/susanoSasukecompleto/completoS9
					usr<<"Você <font color=red>desativa</font> o Susanoo por falta de vida!"
					usr.verbs -= new /mob/jutsu/verb/Susaatak()
					usr.verbs -= new /mob/jutsu/verb/SusanooAtk2()
					usr.verbs -= new /mob/jutsu/verb/SusanooSasuke2()
					usr.verbs -= new /mob/jutsu/verb/SusanooSasuke3()
					return
				else
					sleep(20)
					goto Susanoo


mob/jutsu
	verb
		SusanooAtk2()
			set name = "Susanoo - Flecha"
			set category = "Doujutsu"
			if(usr.cdsflecha)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Susanoo - Flecha</b>!"
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
				if(usr.cdsflecha)return
				usr.cdsflecha=1
				spawn()usr.Cooldown(160,"Susanoo - Flecha")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=silver>Flecha Susanoo"
				var/obj/FlechaSusanoo/K = new /obj/FlechaSusanoo
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
	FlechaSusanoo
		icon = 'Flecha Susanoo.dmi'
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
				if(M.party&&M.partysensei==O.partysensei)return
				if(M.Kaiten||M.sphere)
					return
				if(M.PK==0)
					return
				var/damage = O.nin/4 + O.gen/4 - M.Resistencia/3
				if(damage >= 1)
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					view(50) << "[M] foi acertado pela Flecha Susanoo de [O] recebendo [damage] de dano!!"
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)



mob/jutsu
	verb
		Susaatak() // Verb used for cast the beam
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
				for(var/mob/M in oview(1))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(usr.cdsusanooataque)return
					usr.cdsusanooataque=1
					spawn()usr.Cooldown(120,"Susanoo Ataque")
					M<<"Você foi atingido pelo ataque absoluto de susanoo"
					var/damage = usr.gen/4.25 + usr.nin/4.25 - M.Resistencia/3
					if(damage<=0)damage=0
					view()<<"[M] recebeu [damage] de dano ao receber o ataque do Susanoo de [usr]!"
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					if(M.health<0)
						M.Death(usr)


obj/susanoSasukecaveira
	caveiraS1
		icon = 'susanoo sasuke esquelet.dmi'
		icon_state = "00"
		pixel_x = -32
		layer = 100
	caveiraS2
		icon = 'susanoo sasuke esquelet.dmi'
		icon_state = "10"
		density = 0
		layer = 100
	caveiraS3
		icon = 'susanoo sasuke esquelet.dmi'
		icon_state = "20"
		pixel_x = 32
		density = 0
		layer = 100
	caveiraS4
		icon = 'susanoo sasuke esquelet.dmi'
		icon_state = "01"
		pixel_x = -32
		pixel_y = 32
		density = 0
		layer = 100
	caveiraS5
		icon = 'susanoo sasuke esquelet.dmi'
		icon_state = "11"
		pixel_y = 32
		density = 0
		layer = 100
	caveiraS6
		icon = 'susanoo sasuke esquelet.dmi'
		icon_state = "21"
		density = 0
		pixel_x = 32
		pixel_y = 32
		layer = 100
	caveiraS7
		icon = 'susanoo sasuke esquelet.dmi'
		icon_state = "02"
		pixel_x = -32
		pixel_y = 64
		density = 0
		layer = 100
	caveiraS8
		icon = 'susanoo sasuke esquelet.dmi'
		icon_state = "12"
		pixel_y = 64
		density = 0
		layer = 100
	caveiraS9
		icon = 'susanoo sasuke esquelet.dmi'
		icon_state = "22"
		pixel_x = 32
		pixel_y = 64
		density = 0
		layer = 100
	caveiraS10
		icon = 'susanoo sasuke esquelet.dmi'
		icon_state = "No player"
		density = 0
		layer = 100


obj/susanosasukepele
	peleS1
		icon = 'SusanooPeleSask.dmi'
		icon_state = "1"
		pixel_x = -32
		density = 0
		layer = 100
	peleS2
		icon = 'SusanooPeleSask.dmi'
		icon_state = "2"
		density = 0
		layer = 100
	peleS3
		icon = 'SusanooPeleSask.dmi'
		icon_state = "3"
		pixel_x = 32
		density = 0
		layer = 100
	peleS4
		icon = 'SusanooPeleSask.dmi'
		icon_state = "4"
		density = 0
		pixel_x = -32
		pixel_y = 32
		layer = 100
	peleS5
		icon = 'SusanooPeleSask.dmi'
		icon_state = "5"
		pixel_y = 32
		density = 0
		layer = 100
	peleS6
		icon = 'SusanooPeleSask.dmi'
		icon_state = "6"
		pixel_x = 32
		pixel_y = 32
		density = 0
		layer = 100
	peleS7
		icon = 'SusanooPeleSask.dmi'
		icon_state = "7"
		pixel_x = -32
		pixel_y = 64
		density = 0
		layer = 100
	peleS8
		icon = 'SusanooPeleSask.dmi'
		icon_state = "8"
		pixel_y = 64
		density = 0
		layer = 100
	peleS9
		icon = 'SusanooPeleSask.dmi'
		icon_state = "9"
		pixel_x = 32
		pixel_y = 64
		density = 0
		layer = 100

obj/susanoSasukecompleto
	completoS1
		icon = 'SusanooCompSask.dmi'
		icon_state = "1"
		pixel_x = -32
		density = 0
		layer = 100
	completoS2
		icon = 'SusanooCompSask.dmi'
		icon_state = "2"
		density = 0
		layer = 100
	completoS3
		icon = 'SusanooCompSask.dmi'
		icon_state = "3"
		pixel_x = 32
		density = 0
		layer = 5
	completoS4
		icon = 'SusanooCompSask.dmi'
		icon_state = "4"
		pixel_x = -32
		pixel_y = 32
		density = 0
		layer = 100
	completoS5
		icon = 'SusanooCompSask.dmi'
		icon_state = "5"
		pixel_y = 32
		density = 0
		layer = 100
	completoS6
		icon = 'SusanooCompSask.dmi'
		icon_state = "6"
		pixel_x = 32
		pixel_y = 32
		density = 0
		layer = 100
	completoS7
		icon = 'SusanooCompSask.dmi'
		icon_state = "7"
		pixel_x = -32
		pixel_y = 64
		density = 0
		layer = 100
	completoS8
		icon = 'SusanooCompSask.dmi'
		icon_state = "8"
		pixel_y = 64
		density = 0
		layer = 100
	completoS9
		icon = 'SusanooCompSask.dmi'
		icon_state = "9"
		pixel_x = 32
		pixel_y = 64
		density = 0
		layer = 100