mob/var/susanoItachiativado=0
mob/var/susanoItachion=0
mob/var/susanoItachion2=0
mob/var/susanoItachion3=0

mob/var/susanoItachiuses=0
mob/var/sinv1
mob/var/sinv2
mob/var/sinv3

mob/jutsu/verb
	SusanooItachi()
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
		if(usr.susanoItachion&&usr.sinv1)
			usr<<"Você desativa o Susanoo"
			usr.overlays-= /obj/susanooinicia/sus1
			usr.overlays-= /obj/susanooinicia/sus2
			usr.overlays-= /obj/susanooinicia/sus3
			usr.verbs -= new /mob/jutsu/verb/SusanooTotsukaAtk()
			usr.verbs -= new /mob/jutsu/verb/SusanooItachi2()
			usr.verbs -= new /mob/jutsu/verb/SusanooItachi3()
			usr.susanoItachion=0
			usr.sinv1=0
			return
		else
			usr.RandomChakra5()
			if(usr.chakra<=0||usr.health<=6000)
				usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
				usr.health=0
				usr.chakra=0
				usr.Death(usr)
				return
			if(!usr.susanoItachion&&!usr.sinv1&&!usr.susanoItachion2&&!usr.sinv2&&!usr.susanoItachion3&&!usr.sinv3)
				usr.susanoItachion=1
				if(susanoItachiuses>=250)
					usr.verbs += new /mob/jutsu/verb/SusanooItachi2()
				if(susanoItachiuses>=500)
					usr.verbs += new /mob/jutsu/verb/SusanooItachi3()
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Arte Suprema: Susanoo"
				usr<<"Você ativa o Susanoo."
				usr.susanoItachiuses += 1
				usr.overlays+= /obj/susanooinicia/sus1
				usr.overlays+= /obj/susanooinicia/sus2
				usr.overlays+= /obj/susanooinicia/sus3
				usr.verbs += new /mob/jutsu/verb/SusanooTotsukaAtk()
				usr.sinv1=1
			if(usr.susanoItachion2&&usr.sinv2)
				usr<<"Você volta a primeira forma do Susanoo!"
				usr.overlays-= /obj/susanoitachicaveira/caveira1
				usr.overlays-= /obj/susanoitachicaveira/caveira2
				usr.overlays-= /obj/susanoitachicaveira/caveira3
				usr.overlays-= /obj/susanoitachicaveira/caveira4
				usr.overlays-= /obj/susanoitachicaveira/caveira5
				usr.overlays-= /obj/susanoitachicaveira/caveira6
				usr.overlays-= /obj/susanoitachicaveira/caveira7
				usr.overlays-= /obj/susanoitachicaveira/caveira8
				usr.overlays-= /obj/susanoitachicaveira/caveira9
				usr.susanoItachion2=0
				usr.sinv2=0
				usr.susanoItachion=1
				usr.sinv1=1
				usr.overlays+= /obj/susanooinicia/sus1
				usr.overlays+= /obj/susanooinicia/sus2
				usr.overlays+= /obj/susanooinicia/sus3
			if(usr.susanoItachion3&&usr.sinv3)
				usr<<"Você volta a primeira forma do Susanoo!"
				usr.overlays-= /obj/susanoitachipele/pele1
				usr.overlays-= /obj/susanoitachipele/pele2
				usr.overlays-= /obj/susanoitachipele/pele3
				usr.overlays-= /obj/susanoitachipele/pele4
				usr.overlays-= /obj/susanoitachipele/pele5
				usr.overlays-= /obj/susanoitachipele/pele6
				usr.overlays-= /obj/susanoitachipele/pele7
				usr.overlays-= /obj/susanoitachipele/pele8
				usr.overlays-= /obj/susanoitachipele/pele9
				usr.susanoItachion3=0
				usr.sinv3=0
				usr.susanoItachion=1
				usr.sinv1=1
				usr.overlays+= /obj/susanooinicia/sus1
				usr.overlays+= /obj/susanooinicia/sus2
				usr.overlays+= /obj/susanooinicia/sus3
			Susanoo
			if(usr.susanoItachion)
				usr.health-=rand(3000,6000)
				if(usr.health <= 6000)
					usr.health=1
					usr.susanoItachion=0
					usr.susanoItachion2=0
					usr.susanoItachion3=0
					usr.sinv3=0
					usr.sinv2=0
					usr.sinv1=0
					usr.overlays-= /obj/susanoitachipele/pele1
					usr.overlays-= /obj/susanoitachipele/pele2
					usr.overlays-= /obj/susanoitachipele/pele3
					usr.overlays-= /obj/susanoitachipele/pele4
					usr.overlays-= /obj/susanoitachipele/pele5
					usr.overlays-= /obj/susanoitachipele/pele6
					usr.overlays-= /obj/susanoitachipele/pele7
					usr.overlays-= /obj/susanoitachipele/pele8
					usr.overlays-= /obj/susanoitachipele/pele9
					usr.overlays-= /obj/susanoitachicaveira/caveira1
					usr.overlays-= /obj/susanoitachicaveira/caveira2
					usr.overlays-= /obj/susanoitachicaveira/caveira3
					usr.overlays-= /obj/susanoitachicaveira/caveira4
					usr.overlays-= /obj/susanoitachicaveira/caveira5
					usr.overlays-= /obj/susanoitachicaveira/caveira6
					usr.overlays-= /obj/susanoitachicaveira/caveira7
					usr.overlays-= /obj/susanoitachicaveira/caveira8
					usr.overlays-= /obj/susanoitachicaveira/caveira9
					usr.overlays-= /obj/susanooinicia/sus1
					usr.overlays-= /obj/susanooinicia/sus2
					usr.overlays-= /obj/susanooinicia/sus3
					usr.verbs -= new /mob/jutsu/verb/SusanooItachi2()
					usr.verbs -= new /mob/jutsu/verb/SusanooItachi3()
					usr<<"Você <font color=red>desativa</font> o Susanoo por falta de vida!"
					usr.verbs -= new /mob/jutsu/verb/SusanooTotsukaAtk()
					return
				else
					sleep(20)
					goto Susanoo

mob/jutsu/verb
	SusanooItachi2()
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
		if(usr.susanoItachion2&&usr.sinv2)
			usr<<"O nível dois já está ativo!"
			return
		if(usr.chakra<=10000)
			usr<<"Você não tem chakra suficiente!"
			return
		if(usr.susanoItachion&&usr.sinv1)
			usr<<"Você ativa o segundo nivel do Susanoo!"
			usr.chakra -= 10000
			usr.overlays-= /obj/susanooinicia/sus1
			usr.overlays-= /obj/susanooinicia/sus2
			usr.overlays-= /obj/susanooinicia/sus3
			usr.sinv1=0
			usr.susanoItachion=0
			usr.sinv2=1
			usr.susanoItachion2=1
			usr.overlays+= /obj/susanoitachicaveira/caveira1
			usr.overlays+= /obj/susanoitachicaveira/caveira2
			usr.overlays+= /obj/susanoitachicaveira/caveira3
			usr.overlays+= /obj/susanoitachicaveira/caveira4
			usr.overlays+= /obj/susanoitachicaveira/caveira5
			usr.overlays+= /obj/susanoitachicaveira/caveira6
			usr.overlays+= /obj/susanoitachicaveira/caveira7
			usr.overlays+= /obj/susanoitachicaveira/caveira8
			usr.overlays+= /obj/susanoitachicaveira/caveira9
		else
			usr<<"Você precisa ativar o Susano'o primeiro!"
		if(usr.susanoItachion3&&usr.sinv3)
			usr<<"Você volta ao segundo nivel do Susanoo!"
			usr.overlays-= /obj/susanoitachipele/pele1
			usr.overlays-= /obj/susanoitachipele/pele2
			usr.overlays-= /obj/susanoitachipele/pele3
			usr.overlays-= /obj/susanoitachipele/pele4
			usr.overlays-= /obj/susanoitachipele/pele5
			usr.overlays-= /obj/susanoitachipele/pele6
			usr.overlays-= /obj/susanoitachipele/pele7
			usr.overlays-= /obj/susanoitachipele/pele8
			usr.overlays-= /obj/susanoitachipele/pele9
			usr.sinv3=0
			usr.susanoItachion3=0
			usr.sinv2=1
			usr.susanoItachion2=1
			usr.overlays+= /obj/susanoitachicaveira/caveira1
			usr.overlays+= /obj/susanoitachicaveira/caveira2
			usr.overlays+= /obj/susanoitachicaveira/caveira3
			usr.overlays+= /obj/susanoitachicaveira/caveira4
			usr.overlays+= /obj/susanoitachicaveira/caveira5
			usr.overlays+= /obj/susanoitachicaveira/caveira6
			usr.overlays+= /obj/susanoitachicaveira/caveira7
			usr.overlays+= /obj/susanoitachicaveira/caveira8
			usr.overlays+= /obj/susanoitachicaveira/caveira9
			Susanoo
			if(usr.susanoItachion2)
				usr.health-=rand(5000,8000)
				if(usr.health <= 8000)
					usr.health=1
					usr.susanoItachion=0
					usr.susanoItachion2=0
					usr.susanoItachion3=0
					usr.sinv3=0
					usr.sinv2=0
					usr.sinv1=0
					usr.overlays-= /obj/susanoitachipele/pele1
					usr.overlays-= /obj/susanoitachipele/pele2
					usr.overlays-= /obj/susanoitachipele/pele3
					usr.overlays-= /obj/susanoitachipele/pele4
					usr.overlays-= /obj/susanoitachipele/pele5
					usr.overlays-= /obj/susanoitachipele/pele6
					usr.overlays-= /obj/susanoitachipele/pele7
					usr.overlays-= /obj/susanoitachipele/pele8
					usr.overlays-= /obj/susanoitachipele/pele9
					usr.overlays-= /obj/susanoitachicaveira/caveira1
					usr.overlays-= /obj/susanoitachicaveira/caveira2
					usr.overlays-= /obj/susanoitachicaveira/caveira3
					usr.overlays-= /obj/susanoitachicaveira/caveira4
					usr.overlays-= /obj/susanoitachicaveira/caveira5
					usr.overlays-= /obj/susanoitachicaveira/caveira6
					usr.overlays-= /obj/susanoitachicaveira/caveira7
					usr.overlays-= /obj/susanoitachicaveira/caveira8
					usr.overlays-= /obj/susanoitachicaveira/caveira9
					usr.overlays-= /obj/susanooinicia/sus1
					usr.overlays-= /obj/susanooinicia/sus2
					usr.overlays-= /obj/susanooinicia/sus3
					usr.verbs -= new /mob/jutsu/verb/SusanooItachi2()
					usr.verbs -= new /mob/jutsu/verb/SusanooItachi3()
					usr<<"Você <font color=red>desativa</font> o Susanoo por falta de vida!"
					usr.verbs -= new /mob/jutsu/verb/SusanooTotsukaAtk()
					return
				else
					sleep(20)
					goto Susanoo


mob/jutsu/verb
	SusanooItachi3()
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
		if(usr.susanoItachion3&&usr.sinv3)
			usr<<"O nível três já está ativo!"
			return
		if(usr.chakra<=10000)
			usr<<"Você não tem chakra suficiente"
			return
		if(usr.susanoItachion2&&usr.sinv2)
			usr<<"Você ativa a faze completa!"
			usr.chakra -= 10000
			usr.overlays-= /obj/susanoitachicaveira/caveira1
			usr.overlays-= /obj/susanoitachicaveira/caveira2
			usr.overlays-= /obj/susanoitachicaveira/caveira3
			usr.overlays-= /obj/susanoitachicaveira/caveira4
			usr.overlays-= /obj/susanoitachicaveira/caveira5
			usr.overlays-= /obj/susanoitachicaveira/caveira6
			usr.overlays-= /obj/susanoitachicaveira/caveira7
			usr.overlays-= /obj/susanoitachicaveira/caveira8
			usr.overlays-= /obj/susanoitachicaveira/caveira9
			usr.sinv2=0
			usr.susanoItachion2=0
			usr.sinv3=1
			usr.susanoItachion3=1
			usr.overlays+= /obj/susanoitachipele/pele1
			usr.overlays+= /obj/susanoitachipele/pele2
			usr.overlays+= /obj/susanoitachipele/pele3
			usr.overlays+= /obj/susanoitachipele/pele4
			usr.overlays+= /obj/susanoitachipele/pele5
			usr.overlays+= /obj/susanoitachipele/pele6
			usr.overlays+= /obj/susanoitachipele/pele7
			usr.overlays+= /obj/susanoitachipele/pele8
			usr.overlays+= /obj/susanoitachipele/pele9
		if(usr.susanoItachion&&usr.sinv1)
			usr<<"Você ativa a faze completa!"
			usr.chakra -= 10000
			usr.overlays-= /obj/susanooinicia/sus1
			usr.overlays-= /obj/susanooinicia/sus2
			usr.overlays-= /obj/susanooinicia/sus3
			usr.sinv1=0
			usr.susanoItachion=0
			usr.sinv3=1
			usr.susanoItachion3=1
			usr.overlays+= /obj/susanoitachipele/pele1
			usr.overlays+= /obj/susanoitachipele/pele2
			usr.overlays+= /obj/susanoitachipele/pele3
			usr.overlays+= /obj/susanoitachipele/pele4
			usr.overlays+= /obj/susanoitachipele/pele5
			usr.overlays+= /obj/susanoitachipele/pele6
			usr.overlays+= /obj/susanoitachipele/pele7
			usr.overlays+= /obj/susanoitachipele/pele8
			usr.overlays+= /obj/susanoitachipele/pele9
			Susanoo
			if(usr.susanoItachion3)
				usr.health-=rand(6000,9000)
				if(usr.health <= 9000)
					usr.health=1
					usr.susanoItachion=0
					usr.susanoItachion2=0
					usr.susanoItachion3=0
					usr.sinv3=0
					usr.sinv2=0
					usr.sinv1=0
					usr.overlays-= /obj/susanoitachipele/pele1
					usr.overlays-= /obj/susanoitachipele/pele2
					usr.overlays-= /obj/susanoitachipele/pele3
					usr.overlays-= /obj/susanoitachipele/pele4
					usr.overlays-= /obj/susanoitachipele/pele5
					usr.overlays-= /obj/susanoitachipele/pele6
					usr.overlays-= /obj/susanoitachipele/pele7
					usr.overlays-= /obj/susanoitachipele/pele8
					usr.overlays-= /obj/susanoitachipele/pele9
					usr.overlays-= /obj/susanoitachicaveira/caveira1
					usr.overlays-= /obj/susanoitachicaveira/caveira2
					usr.overlays-= /obj/susanoitachicaveira/caveira3
					usr.overlays-= /obj/susanoitachicaveira/caveira4
					usr.overlays-= /obj/susanoitachicaveira/caveira5
					usr.overlays-= /obj/susanoitachicaveira/caveira6
					usr.overlays-= /obj/susanoitachicaveira/caveira7
					usr.overlays-= /obj/susanoitachicaveira/caveira8
					usr.overlays-= /obj/susanoitachicaveira/caveira9
					usr.overlays-= /obj/susanooinicia/sus1
					usr.overlays-= /obj/susanooinicia/sus2
					usr.overlays-= /obj/susanooinicia/sus3
					usr<<"Você <font color=red>desativa</font> o Susanoo por falta de vida!"
					usr.verbs -= new /mob/jutsu/verb/SusanooTotsukaAtk()
					usr.verbs -= new /mob/jutsu/verb/SusanooItachi2()
					usr.verbs -= new /mob/jutsu/verb/SusanooItachi3()
					return
				else
					sleep(20)
					goto Susanoo

mob/jutsu
	verb
		SusanooTotsukaAtk()
			set category = "Doujutsu"
			set name = "Susano'o Totsuka Ataque"
			if(usr.cdtotsuka)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Susano'o Totsuka</b>!"
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
			if(usr.cdtotsuka)return
			usr.cdtotsuka=1
			spawn()usr.Cooldown(120,"Susano'o Totsuka Ataque")
			usr.RandomChakra1()
			if(usr.chakra<=0)
				usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
				usr.health=0
				usr.chakra=0
				usr.Death(usr)
				return
			for(var/mob/M in oview(3,usr))
				if(M.party&&M.partysensei==usr.partysensei)return
				var/damage=usr.gen/4 + usr.nin/4 - M.Resistencia/3
				if(damage<=0)damage=0
				view()<<"[M] foi atingido pelo Susano'o Totsuka de [usr]."
				M.health-=damage
				F_damage(M, damage, "#ff0000")
				if(M.health<=0)
					M.Death(usr)
				spawn()M.Kasegui()


mob
	proc
		Kasegui()
			set background=1
			src<<"<font color=silver><b><font face=verdana>Você foi pego pelo Susano'o Totsuka!"
			src.EsquivaSharingan()
			if(src.Esquivou)
				src.Esquivou=0
				return
			src.move = 0
			src.cast = 1
			src.froze = 1
			sleep(50)
			src.move = 1
			src.froze = 0
			src.cast = 0
			view(usr)<<"[src] conseguiu se livrar do Susano'o Totsuka!"






obj/susanooinicia
	sus1
		icon = 'Susanoo pele- Itachi.dmi'
		icon_state = "Direita"
		density = 0
		pixel_x = -32
		layer = 5
	sus2
		icon = 'Susanoo pele- Itachi.dmi'
		icon_state = ""
		density = 0
		layer = 5
	sus3
		icon = 'Susanoo pele- Itachi.dmi'
		icon_state = "Ezquerda"
		density = 0
		pixel_x = 32
		layer = 5


obj/susanoitachicaveira
	caveira1
		icon = 'SusanooESQ-Ichi.dmi'
		icon_state = "1"
		density = 0
		pixel_x = -32
		layer = 5
	caveira2
		icon = 'SusanooESQ-Ichi.dmi'
		icon_state = "2"
		density = 0
		layer = 5
	caveira3
		icon = 'SusanooESQ-Ichi.dmi'
		icon_state = "3"
		density = 0
		pixel_x = 32
		layer = 5
	caveira4
		icon = 'SusanooESQ-Ichi.dmi'
		icon_state = "4"
		density = 0
		pixel_x = -32
		pixel_y = 32
		layer = 5
	caveira5
		icon = 'SusanooESQ-Ichi.dmi'
		icon_state = "5"
		density = 0
		pixel_y = 32
		layer = 5
	caveira6
		icon = 'SusanooESQ-Ichi.dmi'
		icon_state = "6"
		density = 0
		pixel_x = 32
		pixel_y = 32
		layer = 5
	caveira7
		icon = 'SusanooESQ-Ichi.dmi'
		icon_state = "7"
		density = 0
		pixel_x = -32
		pixel_y = 64
		layer = 5
	caveira8
		icon = 'SusanooESQ-Ichi.dmi'
		icon_state = "8"
		density = 0
		pixel_y = 64
		layer = 5
	caveira9
		icon = 'SusanooESQ-Ichi.dmi'
		icon_state = "9"
		density = 0
		pixel_x = 32
		pixel_y = 64
		layer = 5

obj/susanoitachipele
	pele1
		icon = 'SusanooIchiFull.dmi'
		icon_state = "1"
		density = 0
		pixel_x = -32
		layer = 5
	pele2
		icon = 'SusanooIchiFull.dmi'
		icon_state = "2"
		density = 0
		layer = 5
	pele3
		icon = 'SusanooIchiFull.dmi'
		icon_state = "3"
		density = 0
		pixel_x = 32
		layer = 5
	pele4
		icon = 'SusanooIchiFull.dmi'
		icon_state = "4"
		density = 0
		pixel_x = -32
		pixel_y = 32
		layer = 5
	pele5
		icon = 'SusanooIchiFull.dmi'
		icon_state = "5"
		density = 0
		pixel_y = 32
		layer = 5
	pele6
		icon = 'SusanooIchiFull.dmi'
		icon_state = "6"
		density = 0
		pixel_x = 32
		pixel_y = 32
		layer = 5
	pele7
		icon = 'SusanooIchiFull.dmi'
		icon_state = "7"
		density = 0
		pixel_x = -32
		pixel_y = 64
		layer = 5
	pele8
		icon = 'SusanooIchiFull.dmi'
		icon_state = "8"
		density = 0
		pixel_y = 64
		layer = 5
	pele9
		icon = 'SusanooIchiFull.dmi'
		icon_state = "9"
		density = 0
		pixel_x = 32
		pixel_y = 64
		layer = 5