mob/var/tmp/kamuion=0
mob/var/tmp/usouprimeirokamui=0

mob/jutsu/verb
	NovoKamui()
		set category = "Doujutsu"
		set name = "Kamui"
		if(usr.cdkamui)
			usr << "<b>Cooldown:</b> Aguarde para usar novamente o <b>Kamui</b>!"
			return
		if(usr.kamuion)
			usr << "<b>Você já ativou seu Kamui</b>!"
			return
		if(usr.caught)
			usr<<"Você foi capturado"
			return
		if(usr.PK==0)
			usr<<"Zona NON-PK!!!"
			return
			return
		if(usr.Frozen)
			usr<<"Você está paralisado"
			return
		if(usr.captured)
			usr<<"Você foi capturado"
			return
		if(!usr.mson||!usr.fume)
			usr<<"Vc tem q ativar o MS ou FMS antes"
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
			if(usr.cdkamui)return
			usr.cdkamui=1
			spawn()usr.Cooldown(450,"Kamui")
			if(usr.chakra<=30000)
				usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
				usr.health=0
				usr.chakra=0
				usr.Death(usr)
				return
			usr.chakra-=30000
			usr<<"você ativou seu amaterasu."
			usr<<"Concentrando-se..."
			if(usr.usouprimeirokamui)
				usr<<"Basta fazer um click duplo onde quiser que seu Kamui absorva!"
				usr.usouprimeirokamui=1
			usr.kamuion=1
			sleep(90)
			usr<<"Seu olho está cansado, você não será capaz de utilizar seu Kamui durante um certo tempo!"
			usr.kamuion=0
			usr.overlays-='Sharingan Amaterasu.dmi'

mob/Click()
	if(usr.Uchiha&&usr.kamuion)
		/*if(!M.cliente)
			usr<<"Não pode usar em NPC!"
			return*/
		if(usr.cast ||usr.froze || usr.parado || usr.arenafreeze || usr.Frozen || !usr.PK|| usr.caught || usr.captured || usr.resting||usr.Makyoufreeze||usr.sombrafreeze||usr.morreunaguerra||usr.ElementoTreino||usr.Kaiten)return
		usr<<"Você gastou 20k de chakra"
		usr.chakra-=20000
		if(usr.chakra<=20000)
			usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
			usr.health=0
			usr.chakra=0
			usr.Death(usr)
			return
		//var/obj/KamuiT/A = new /obj/KamuiT
		//A.nin = usr.nin
	//	A.Gowner = usr
		usr.Kamuinn()
		//A.loc = locate (M.z,M.x,M.y)
		usr.Castando()
		return


obj/KamuiT
	icon = 'Kamui1.dmi'
	density = 0
	New()
		spawn(30) del(src)
	proc
		Kamuinn(atom/M)
			if(istype(M,/mob/))
				if(M<>src.Gowner)
					usr.random=rand(1,5)
					if(usr.random==1)
						var/damage= usr.nin/4.25 - M.Resistencia/2
						if(damage<=0)damage=0
						usr<<"Você acerta a perna de [M] com seu Kamui ([damage] de dano)"
						M<<"Sua perna foi acertada pelo Kamui de [usr], diminuindo sua velocidade! ([damage] de dano)!"
						M.Move_Delay=1.4
						M.health-=damage
						F_damage(M, damage, "#ff0000")
						if(M.health<=0)
							M.Death(usr)
							usr.cast=0
							return
						usr.cast=0
						sleep(300)
						M.Move_Delay=0.7
						return
					if(usr.random==2)
						var/damage= usr.nin/4.25 - M.Resistencia/2
						if(damage<=0)damage=0
						usr<<"Você acerta o braço de [M] com seu Kamui causando um dano significante ([damage] de dano!)!"
						M<<"Seu braço foi acertado pelo Kamui de [usr] causando um dano significante ([damage] de dano!)!"
						M.health-=damage
						F_damage(M, damage, "#ff0000")
						if(M.health<=0)
							M.Death(usr)
							usr.cast=0
							return
						usr.cast=0
						return
					if(usr.random==3)
						usr<<"Você acerta a cabeça de [M] com seu Kamui causando morte instantênea!"
						M<<"Sua cabeça foi decapitada pelo Kamui de [usr] causando morte instantênea!"
						M.health=0
						M.chakra=0
						M.Death(usr)
						usr.cast=0
						return
					if(usr.random==4)
						usr<<"Você envia [M] com seu Kamui para outra dimensão!"
						M<<"Você foi enviado para outra dimensão pelo Kamui de [usr]!"
						M.health=0
						M.chakra=0
						M.Death(usr)
						usr.cast=0
						return
					else
						usr.cast=1
						usr<<"Você errou!"
						sleep(20)
						usr.cast=0
						return