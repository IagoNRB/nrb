mob/var/msshisui=0
mob/var/implantoumsshisui=0

mob/var/bugoukoto=0
mob/var/tmp/koto=0
mob/var/tmp/kotoado=0
mob/var/tmp/cdkotoa=0

mob/Jutsu
	verb
		Kotoamatsukami(mob/M in oview(2))
			set category = "Doujutsu"
			set name = "Kotoamatsukami"
			if(usr.cdkotoa)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Kotoamatsukami</b>!"
				return
			if(usr.resting)
				return
			if(M.bijuunpc)
				usr<<"Não pode ser usado nele!"
				return
			if(usr.meditating)
				return
			if(usr.cast)
				return
			if(!usr.handseals)
				return
			if(usr.froze)
				usr<<"Você está paralizado!"
				return
			if(!M.client||M.kawa)
				usr<<"Voce não pegou o verdadeiro.. sua mente e seu corpo estão descontrolados!"
				usr.cast=1
				sleep(200)
				usr<<"Sua mente e seu corpo voltam ao normal!"
				usr.cast=0
				return
			if(M.GM||M.ADM)
				usr<<"Você não pode usar isso em Staffs."
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
			if(M.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.koto==1)
				usr<<"Você precisa esperar para usar esse jutsu denovo!"
				return
			if(M.kotoado==1)
				usr<<"Já existe alguém controlando a mente dele!"
				return
			usr.cdkotoa=1
			spawn()usr.Cooldown(1200,"Kotoamatsukami")
			usr.RandomChakra1()
			if(usr.chakra<=0)
				usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
				usr.health=0
				usr.chakra=0
				usr.Death(usr)
				return
			view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Kotoamatsukami"
			usr.EsquivaSharingan(M)
			if(M.Esquivou)
				M.Esquivou=0
				return
			usr.cast = 1
			M.cast = 1
			M.froze = 1
			M.move = 0
			var/tmptai = usr.tai
			var/tmpnin = usr.nin
			var/tmpgen = usr.gen
			var/tmpshurikenskill = usr.shurikenskill
			var/tmphealth = usr.health
			var/tmpchakra = usr.chakra
			var/tmpicon = usr.icon
			var/tmpOicon = usr.Oicon
			var/tmploc = usr.loc
			var/list/tmpoverlays1 = usr.overlays.Copy()
			var/list/tmpoverlays2 = M.overlays.Copy()
			usr.tai = M.tai
			usr.nin = M.nin
			usr.gen = M.gen
			usr.shurikenskill = M.shurikenskill
			usr.health = M.health
			usr.chakra = M.chakra
			usr.icon = M.icon
			usr.Oicon = M.Oicon
			usr.loc = M.loc
			usr.overlays = usr.overlays.Remove(usr.overlays)
			usr.overlays = tmpoverlays2.Copy()
			M.tai = tmptai
			M.nin = tmpnin
			M.gen = tmpgen
			M.shurikenskill = tmpshurikenskill
			M.health = tmphealth
			M.chakra = tmpchakra
			M.icon = tmpicon
			M.Oicon = tmpOicon
			M.loc = tmploc
			M.overlays = M.overlays.Remove(M.overlays)
			M.overlays = tmpoverlays1.Copy()
			usr << "Você invade a mente de [M]!!!"
			M << "[usr] !!!"
			usr.koto=1
			usr.cast = 0
			M.cast = 0
			M.kotoado = 1
			sleep(80)
			//Volta de corpo
			if(M)
				M.cast = 1
				M.froze = 0
				M.move = 1
				tmptai = M.tai
				tmpnin = M.nin
				tmpgen = M.gen
				tmphealth = M.health
				tmpchakra = M.chakra
				tmpicon = M.icon
				tmpOicon = M.Oicon
				tmploc = M.loc
				tmpoverlays1 = M.overlays.Copy()
				tmpoverlays2 = usr.overlays.Copy()
				M.tai = usr.Mtai
				M.nin = usr.Mnin
				M.gen = usr.Mgen
				M.health = usr.maxhealth
				M.chakra = usr.Mchakra
				M.shurikenskill = usr.Mshurikenskill
				M.icon = usr.icon
				M.Oicon = usr.Oicon
				M.loc = usr.loc
				M.overlays = M.overlays.Remove(M.overlays)
				M.overlays = tmpoverlays2.Copy()
				M << "[usr] deixou sua mente!"
				M.PK=1
			usr.cast = 1
			usr.tai = tmptai
			usr.nin = tmpnin
			usr.gen = tmpgen
			usr.shurikenskill = tmpshurikenskill
			usr.health = tmphealth
			usr.chakra = tmpchakra
			usr.icon = tmpicon
			usr.Oicon = tmpOicon
			usr.loc = tmploc
			usr.overlays = usr.overlays.Remove(usr.overlays)
			usr.overlays = tmpoverlays1.Copy()
			usr << "Você voltou ao seu corpo!"
			usr.cast = 0
			usr.PK=1
			sleep(40)
			usr.koto=0
			if(M)
				M.cast = 0
				M.froze = 0
				M.move = 1
				M.kotoado = 0
				M.PK=1


//==========================================================//
obj
	Tanto
		name = "katana Tanto"
		icon = 'Espada Comum.dmi'
		icon_state = ""
		worn = 0
		price = 25000
		verb
			Usar()
				if(usr.S1 || usr.S3||usr.SVip)
					usr<<"Você não pode usar mais de uma espada por vez."
					return
				if(usr.Weaponworn == 1)
					src.worn = 0
					usr.S2 = 0
					usr.Weaponworn = 0
					usr.overlays -= 'Espada Comum.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					src.icon_state=""
					usr.swordD = 0
					usr.elementojunto=0
				else
					src.worn = 1
					usr.Weaponworn = 1
					usr.S2 = 1
					usr.overlays += 'Espada Comum.dmi'
					usr.swordD = 1
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					//usr.swordD += usr.shurikenskill/2.7
			Olhar()
				usr<<"Esta katana é milenar. Você sente o poder monstruoso ao tocar em sua lâmina."
			Pegar()

				set src in oview(1)
				if(usr.katanapega)
					usr<<"Você só pode ter uma adaga por vez."
					return
				else
					src.loc = usr
					usr.katanapega=1
					usr<<"Você pegou uma [src.name]"


//================================================================//
mob/katanaattack
	verb
		Atacar_com_Katana2()
			set category = "TaiJutsu"
			for(var/mob/M in get_step(usr,usr.dir))
				if(usr.battlingRC)
					usr<<"Não agora"
					return
				if(usr.Frozen||usr.froze||usr.kawa)
					usr<<"Não agora!"
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
				if(M.Kaiten)
					var/damage = usr.nin/4.2 + usr.shurikenskill/3.5 + usr.gen/4.2 - M.Resistencia/2
					if(damage <= 1)
						damage = 1
						usr <<"<font size=1>Você ataca [M], mas seu Hakkekushou Kaiten reflete o dano de volta à você"
						M <<"<font size=1>Você reflete o ataque de [usr], causando dano à ele mesmo"
						usr.health -= damage
						F_damage(usr, damage, "#ff0000")
						usr.Death(M)
						usr.dead = 1
						return
					else
						usr <<"<font size=1>Você ataca [M], mas seu Hakkekushou Kaiten reflete o dano de volta à você"
						M <<"<font size=1>Você reflete o ataque de [usr], causando dano à ele mesmo"
						usr.health -= damage
						F_damage(usr, damage, "#ff0000")
						usr.Death(M)
						src.dead = 1
						return
				else
					usr.atacando=1
					usr.stamina-=500
					if(usr.Tekken)
						if(usr.elementojunto==1)
							if(usr.Elemento=="Raiton")
								usr.random = rand(1,2)
								if(random==1)
									usr << "<font size=1>Você ataca [M]!"
									flick("Attack",usr)
									var/damage = usr.nin/4.2 + usr.shurikenskill/3.5 + usr.gen/4.2 + usr.trovaoN*1.75 - M.Resistencia/2
									if(damage<=0)damage=0
									view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
									M.health -= damage
									F_damage(M, damage, "#ff0000")
									M.Death(usr)
									sleep(20)
									usr.atacando=0
									return
								if(random==2)
									usr << "<font size=1>Você ataca [M] com sua espada transmitindo seu chakra elemental!"
									flick("Attack",usr)
									var/damage = usr.nin/4.2 + usr.shurikenskill/3.5 + usr.gen/4.2 + usr.trovaoN*1.75 - M.Resistencia/2
									if(damage<=0)damage=0
									view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
									M<<"O chakra raiton contido na lamina da espada de [usr] paralisou seus musculos"
									M.health -= damage
									M.Frozen=1
									F_damage(M, damage, "#ff0000")
									M.Death(usr)
									sleep(40)
									M.Frozen=0
									usr.atacando=0
									return
							if(usr.Elemento=="Suiton")
								usr.random = rand(1,2)
								if(random==1)
									usr << "<font size=1>Você ataca [M]!"
									flick("Attack",usr)
									var/damage = usr.nin/4.2 + usr.shurikenskill/3.5 + usr.gen/4.2 + usr.aguaN*1.75- M.Resistencia/2
									if(damage<=0)damage=0
									view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
									M.health -= damage
									F_damage(M, damage, "#ff0000")
									M.Death(usr)
									sleep(20)
									usr.atacando=0
									return
								if(random==2)
									usr << "<font size=1>Você ataca [M] com sua espada transmitindo seu chakra elemental!"
									flick("Attack",usr)
									var/damage = usr.nin/4.2 + usr.shurikenskill/3.5 + usr.gen/4.2 + usr.aguaN*1.75 - M.Resistencia/2
									if(damage<=0)damage=0
									view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
									M<<"O chakra suiton contido na lamina da espada de [usr] lhe deixou impossiblitado de usar jutsus katon"
									M.health -= damage
									M.molhado=1
									F_damage(M, damage, "#ff0000")
									M.Death(usr)
									sleep(40)
									usr.atacando=0
									sleep(110)
									usr.molhado=0
									return
							if(usr.Elemento=="Doton")
								usr.random = rand(1,2)
								if(random==1)
									usr << "<font size=1>Você ataca [M]!"
									flick("Attack",usr)
									var/damage = usr.nin/4.2 + usr.shurikenskill/3.5 + usr.gen/4.2 + usr.terraN*1.75 - M.Resistencia/2
									if(damage<=0)damage=0
									view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
									M.health -= damage
									F_damage(M, damage, "#ff0000")
									M.Death(usr)
									sleep(20)
									usr.atacando=0
									return
								if(random==2)
									usr << "<font size=1>Você ataca [M] com sua espada transmitindo seu chakra elemental!"
									flick("Attack",usr)
									var/damage = usr.nin/4.2 + usr.shurikenskill/3.5 + usr.gen/4.2 + usr.terraN*1.75 - M.Resistencia/2
									if(damage<=0)damage=0
									view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
									M<<"O chakra doton contido na lamina da espada de [usr] deixou seu ataque muito mais potente."
									M.health -= damage
									F_damage(M, damage, "#ff0000")
									M.Death(usr)
									sleep(40)
									usr.atacando=0
									return
							if(usr.Elemento=="Katon")
								usr.random = rand(1,2)
								if(random==1)
									usr << "<font size=1>Você ataca [M]!"
									flick("Attack",usr)
									var/damage = usr.nin/4.2 + usr.shurikenskill/3.5 + usr.gen/4.2 + usr.fogoN*1.75 - M.Resistencia/2
									if(damage<=0)damage=0
									view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
									M.health -= damage
									F_damage(M, damage, "#ff0000")
									M.Death(usr)
									sleep(20)
									usr.atacando=0
									return
								if(random==2)
									usr << "<font size=1>Você ataca [M] com sua espada transmitindo seu chakra elemental!"
									flick("Attack",usr)
									var/damage = usr.nin/4.2 + usr.shurikenskill/3.5 + usr.gen/4.2 + usr.fogoN*1.75 - M.Resistencia/2
									if(damage<=0)damage=0
									view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
									M<<"O chakra katon contido na lamina da espada de [usr] incendiou seu corpo."
									//M.burned=1
								//	M.burnon()
									M.health -= damage
									F_damage(M, damage, "#ff0000")
									M.Death(usr)
									sleep(40)
									usr.atacando=0
									sleep(60)
									M.burned=0
									return
							if(usr.Elemento=="Fuuton")
								usr.random = rand(1,2)
								if(random==1)
									usr << "<font size=1>Você ataca [M]!"
									flick("Attack",usr)
									var/damage = usr.nin/4.2 + usr.shurikenskill/3.5 + usr.gen/4.2 + usr.ventoN*1.75 - M.Resistencia/2
									if(damage<=0)damage=0
									view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
									M.health -= damage
									F_damage(M, damage, "#ff0000")
									M.Death(usr)
									sleep(20)
									usr.atacando=0
									return
								if(random==2)
									usr << "<font size=1>Você ataca [M] com sua espada transmitindo seu chakra elemental!"
									flick("Attack",usr)
									var/damage = usr.nin/4.2 + usr.shurikenskill/3.5 + usr.gen/4.2 + usr.ventoN*1.75 - M.Resistencia/2
									if(damage<=0)damage=0
									view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
									M<<"O chakra fuuton contido na lamina da espada de [usr] deixou o fio de sua espada muito mais longo. Vc foi pego no vórtice de vento"
									M.health -= damage
									F_damage(M, damage, "#ff0000")
									M.Death(usr)
									sleep(10)
									usr.atacando=0
									return
						else
							usr << "<font size=1>Você ataca [M]!"
							flick("Attack",usr)
							var/damage = usr.nin/4.2 + usr.shurikenskill/3.5 + usr.gen/4.2 - M.Resistencia/2
							if(damage<=0)damage=0
							view() << "<font size=1>[usr] ataca [M] tirando um dano de [damage]!"
							M.health -= damage
							F_damage(M, damage, "#ff0000")
							M.Death(usr)
							sleep(20)
							usr.atacando=0
							return
					else
						usr<<"Vc precisa estar usando Kenjutsu antes"
						return


mob/jutsu
	verb
		ShushinNoJutsu2(mob/M in oview(8))
			set category = "Jutsus"
			set name = "Shushin No Jutsu - Shisui"
			if(usr.cdshushinshisui)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Shushin no Jutsu</b>!"
				return
			usr.Handseals()
			if(usr.cast)
				return
			if(usr.hyoushou)
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
			else // If the cast var isn't 1.
				if(usr.cdshushinshisui)return
				usr.cdshushinshisui=1
				spawn()usr.Cooldown(100,"Shushin No Jutsu - Shisui")
				usr.RandomChakra01()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.loc = locate(M.x,M.y+1,M.z)
				usr.verbs -= /mob/cliff/verb/TreinarHP
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#c0c0c0>S</FONT><FONT COLOR=#bebebe>h</FONT><FONT COLOR=#bbbbbb>u</FONT><FONT COLOR=#b8b8b8>s</FONT><FONT COLOR=#b5b5b5>h</FONT><FONT COLOR=#b2b2b2>i</FONT><FONT COLOR=#afafaf>n</FONT><FONT COLOR=#acacac> </FONT><FONT COLOR=#a9a9a9>N</FONT><FONT COLOR=#a2a2a2>o</FONT><FONT COLOR=#9a9a9a> </FONT><FONT COLOR=#929292>J</FONT><FONT COLOR=#8a8a8a>u</FONT><FONT COLOR=#818181>t</FONT><FONT COLOR=#797979>s</FONT><FONT COLOR=#717171>u</FONT><FONT COLOR=#696969>!</FONT>"
				if(usr.onwater==1)
					usr.onwater=0
					return