mob/var/tmp/cdatakespada2=0
mob/sword
	verb
		Atacar_com_Espada2()
			set name = "Atacar com Espada"
			set category = "TaiJutsu"
			for(var/mob/M in get_step(usr,usr.dir))
				if(M.party&&M.partysensei==usr.partysensei)return
				if(usr.cdatakespada2)
					usr << "<b>Aguarde para atacar novamente!</b>"
					return
				if(usr.battlingRC)
					usr<<"Não agora"
					return
				if(M.battlingRC)
					usr<<"Não agora"
					return
				if(M.drunk)
					view()<<"[M] desvia do ataque de [usr]!"
					return
				if(M.inspike)
					usr<<"<font size=1>Seu ataque erra [usr]!"
					return
				if(M.sphere)
					usr<<"<font size=1>Seu ataque acerta a areia que o protege!"
					return
				if(M.fantasma)
					usr<<"<font size=1>Vc não consegue tocá-lo!"
					return
				if(usr.stamina<=500)
					usr<<"Pouca Stamina (500)."
					return
				if(M.PK==0)
					usr<<"Zona NON-PK!"
					return
				if(usr.PK==0)
					usr<<"Zona NON-PK!"
					return
				if(usr.atacando)
					usr<<"Aguarde para atacar novamente"
					return
				if(usr.cdatakespada2)return
				usr.cdatakespada2=1
				spawn()usr.Cooldown(60,"Atacar com Espada")
				if(M.Kaiten)
					var/damage = usr.shurikenskill/4 + usr.nin/4 + usr.gen/4 + usr.tai/4 - usr.Resistencia/2
					if(damage <= 1)
						damage = 1
						usr <<"<font size=1>Você ataca [M], mas seu Hakkekushou Kaiten reflete o dano de volta à você"
						M <<"<font size=1>Você reflete o ataque de [usr], causando dano à ele mesmo"
						usr.health -= damage
						F_damage(usr, damage, "#ff0000")
						usr.Death(M)
						return
					else
						usr <<"<font size=1>Você ataca [M], mas seu Hakkekushou Kaiten reflete o dano de volta à você"
						M <<"<font size=1>Você reflete o ataque de [usr], causando dano à ele mesmo"
						usr.health -= damage
						F_damage(usr, damage, "#ff0000")
						usr.Death(M)
						return
				else
					usr << "<font size=1>Você ataca [M]!"
					flick("Attack",usr)
					var/damage = usr.shurikenskill/4 + usr.nin/4 + usr.gen/4 + usr.tai/4 - M.Resistencia/1.5
					if(damage<=0)damage=0
					view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					M.Death(usr)
					sleep(30)
					usr.atacando=0
					return
					if(M.health<=0)
						M.Death(usr)


mob/var/tmp/cdataksamehadabainha=0
mob/sword
	verb
		Atacar_com_SemahadaBainha()
			set name = "Atacar com Samehada"
			set category = "TaiJutsu"
			for(var/mob/M in get_step(usr,usr.dir))
				if(M.party&&M.partysensei==usr.partysensei)return
				if(usr.cdataksamehadabainha)
					usr << "<b>Aguarde para atacar novamente!</b>"
					return
				if(usr.battlingRC)
					usr<<"Não agora"
					return
				if(M.battlingRC)
					usr<<"Não agora"
					return
				if(M.drunk)
					view()<<"[M] desvia do ataque de [usr]!"
					return
				if(M.inspike)
					usr<<"<font size=1>Seu ataque erra [usr]!"
					return
				if(M.sphere)
					usr<<"<font size=1>Seu ataque acerta a areia que o protege!"
					return
				if(M.fantasma)
					usr<<"<font size=1>Vc não consegue tocá-lo!"
					return
				if(usr.stamina<=500)
					usr<<"Pouca Stamina (500)."
					return
				if(M.PK==0)
					usr<<"Zona NON-PK!"
					return
				if(usr.PK==0)
					usr<<"Zona NON-PK!"
					return
				if(usr.atacando)
					return
				if(usr.cdataksamehadabainha)return
				usr.cdataksamehadabainha=1
				spawn()usr.Cooldown(60,"Atacar com Samehada")
				if(M.Kaiten)
					var/damage = usr.shurikenskill/3.5 + usr.nin/3.5 + usr.gen/3.5 + usr.tai/3.5 - usr.Resistencia/1.5
					if(damage <= 1)
						damage = 1
						usr <<"<font size=1>Você ataca [M], mas seu Hakkekushou Kaiten reflete o dano de volta à você"
						M <<"<font size=1>Você reflete o ataque de [usr], causando dano à ele mesmo"
						usr.health -= damage
						F_damage(usr, damage, "#ff0000")
						usr.Death(M)
						return
					else
						usr <<"<font size=1>Você ataca [M], mas seu Hakkekushou Kaiten reflete o dano de volta à você"
						M <<"<font size=1>Você reflete o ataque de [usr], causando dano à ele mesmo"
						usr.health -= damage
						F_damage(usr, damage, "#ff0000")
						usr.Death(M)
						return
				else
					usr << "<font size=1>Você ataca [M]!"
					flick("Attack",usr)
					var/damage = usr.shurikenskill/3.5 + usr.nin/3.5 + usr.gen/3.5 + usr.tai/3.5 - M.Resistencia/1.5
					if(damage<=0)damage=0
					view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
					view() << "<font size=1>A Samehada de [usr] absorveu o Chakra de [M] para seu dono!"
					M.health -= damage
					M.chakra -= damage/2
					usr.chakra += damage/2
					F_damage(M, damage, "#ff0000")
					M.Death(usr)
					sleep(20)
					usr.atacando=0
					return
					if(M.health<=0||M.chakra<=0)
						M.Death(usr)
						return