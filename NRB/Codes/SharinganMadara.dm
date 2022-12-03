mob/var/msmadara=0
mob/var/implantoumsmadara=0

GoukayuuNFF.dmi
obj
	Goukakyuu1
		icon='GoukayuuNFF.dmi'
		icon_state="1"
		layer = MOB_LAYER+1
		New()
			..()
			spawn(20)
			del(src)
obj
	Goukakyuu2
		icon='GoukayuuNFF.dmi'
		icon_state="2"
		layer = MOB_LAYER+1
		New()
			..()
			spawn(20)
			del(src)
	Goukakyuu3
		icon='GoukayuuNFF.dmi'
		icon_state="3"
		layer = MOB_LAYER+1
		New()
			..()
			spawn(20)
			del(src)
	Goukakyuu4
		icon='GoukayuuNFF.dmi'
		icon_state="4"
		layer = MOB_LAYER+1
		New()
			..()
			spawn(20)
			del(src)

	Goukakyuu5
		icon='GoukayuuNFF.dmi'
		icon_state="5"
		layer = MOB_LAYER+1
		New()
			..()
			spawn(20)
			del(src)
	Goukakyuu6
		icon='GoukayuuNFF.dmi'
		icon_state="6"
		layer = MOB_LAYER+1
		New()
			..()
			spawn(20)
			del(src)
	Goukakyuu7
		icon='GoukayuuNFF.dmi'
		icon_state="7"
		layer = MOB_LAYER+1
		New()
			..()
			spawn(20)
			del(src)

	Goukakyuu8
		icon='GoukayuuNFF.dmi'
		icon_state="8"
		layer = MOB_LAYER+1
		New()
			..()
			spawn(20)
			del(src)
	Goukakyuu9
		icon='GoukayuuNFF.dmi'
		icon_state="9"
		layer = MOB_LAYER+1
		New()
			..()
			spawn(20)
			del(src)
	Goukakyuutail
		icon='GoukayuuNFF.dmi'
		icon_state="tail"
		layer = MOB_LAYER+1
		New()
			..()
			spawn(20)
			del(src)

mob/var/KatonGouMadU=0
mob/var/tmp/cdgoukmad=0
mob/Jutsu
	verb
		KatonGoukaMesshitsu() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Katon: Gouka Messhitsu"
			if(usr.cdgoukmad)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Katon: Gouka Messhitsu</b>!"
				return
			usr.Handseals()
			if(usr.cast||usr.Kaiten) // If the mob's cast var is one...
				return
			if(usr.caught)
				usr<<"Você foi capturado!"
				return
			if(!usr.handseals)
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
			else // If the cast var isn't 1...
				if(usr.cdgoukmad)return
				usr.cdgoukmad=1
				spawn()usr.Cooldown(250,"Katon: Gouka Messhitsu")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				if(usr.KatonGouMadU >= 5000)
					usr.cast = 1
					var/obj/Goukakyuu1/K = new /obj/Goukakyuu1
					var/obj/Goukakyuu2/L = new /obj/Goukakyuu2
					var/obj/Goukakyuu2/L2 = new /obj/Goukakyuu2
					var/obj/Goukakyuu2/L3 = new /obj/Goukakyuu2
					var/obj/Goukakyuu3/M1 = new /obj/Goukakyuu3
					var/obj/Goukakyuu4/N = new /obj/Goukakyuu4
					var/obj/Goukakyuu4/N2 = new /obj/Goukakyuu4
					var/obj/Goukakyuu4/N3 = new /obj/Goukakyuu4
					var/obj/Goukakyuu5/O = new /obj/Goukakyuu5
					var/obj/Goukakyuu5/O2 = new /obj/Goukakyuu5
					var/obj/Goukakyuu5/O3 = new /obj/Goukakyuu5
					var/obj/Goukakyuu5/O4 = new /obj/Goukakyuu5
					var/obj/Goukakyuu5/O5 = new /obj/Goukakyuu5
					var/obj/Goukakyuu5/O6 = new /obj/Goukakyuu5
					var/obj/Goukakyuu5/O7 = new /obj/Goukakyuu5
					var/obj/Goukakyuu5/O8 = new /obj/Goukakyuu5
					var/obj/Goukakyuu5/O9 = new /obj/Goukakyuu5
					var/obj/Goukakyuu6/TR = new /obj/Goukakyuu6
					var/obj/Goukakyuu6/TR2 = new /obj/Goukakyuu6
					var/obj/Goukakyuu6/TR3 = new /obj/Goukakyuu6
					var/obj/Goukakyuu7/TL = new /obj/Goukakyuu7
					var/obj/Goukakyuu8/BL = new /obj/Goukakyuu8
					var/obj/Goukakyuu8/BL2 = new /obj/Goukakyuu8
					var/obj/Goukakyuu8/BL3 = new /obj/Goukakyuu8
					var/obj/Goukakyuu9/BR = new /obj/Goukakyuu9
					var/obj/Goukakyuutail/T = new /obj/Goukakyuutail
					usr.KatonGouMadU += 1
					usr.handseals=0
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#ff0000>K</FONT><FONT COLOR=#ff1a00>a</FONT><FONT COLOR=#ff3300>t</FONT><FONT COLOR=#ff4d00>o</FONT><FONT COLOR=#ff6600>n</FONT><FONT COLOR=#ff8000>:</FONT><FONT COLOR=#ff9a00> </FONT><FONT COLOR=#ffb300>G</FONT><FONT COLOR=#ffcd00>o</FONT><FONT COLOR=#ffe600>u</FONT><FONT COLOR=#ffff00>k</FONT><FONT COLOR=#ffe900>a</FONT><FONT COLOR=#ffd100> </FONT><FONT COLOR=#ffba00>M</FONT><FONT COLOR=#ffa300>e</FONT><FONT COLOR=#ff8c00>s</FONT><FONT COLOR=#ff7400>s</FONT><FONT COLOR=#ff5d00>h</FONT><FONT COLOR=#ff4600>i</FONT><FONT COLOR=#ff2f00>t</FONT><FONT COLOR=#ff1700>s</FONT><FONT COLOR=#ff0000>u!</FONT>"
					K.Gowner=usr
					usr.froze=1
					usr.move=0
					if(usr.dir==NORTH)
						if(K)
							K.loc = usr.loc
							K.y+=6
							K.x-=2
						if(L)
							L.loc = usr.loc
							L.y+=6
						if(L2)
							L2.loc = usr.loc
							L2.y+=6
							L2.x-=1
						if(L3)
							L3.loc = usr.loc
							L3.y+=6
							L3.x+=1
						if(M1)
							M1.loc = usr.loc
							M1.y+=6
							M1.x+=2
						if(N)
							N.loc = usr.loc
							N.y+=5
							N.x-=2
						if(N2)
							N2.loc = usr.loc
							N2.y+=4
							N2.x-=2
						if(N3)
							N3.loc = usr.loc
							N3.y+=3
							N3.x-=2
						if(O)
							O.loc = usr.loc
							O.y+=5
						if(O2)
							O2.loc = usr.loc
							O2.y+=5
							O2.x-=1
						if(O3)
							O3.loc = usr.loc
							O3.y+=5
							O3.x+=1
						if(O4)
							O4.loc = usr.loc
							O4.y+=4
						if(O5)
							O5.loc = usr.loc
							O5.y+=4
							O5.x-=1
						if(O6)
							O6.loc = usr.loc
							O6.y+=4
							O6.x+=1
						if(O7)
							O7.loc = usr.loc
							O7.y+=3
						if(O8)
							O8.loc = usr.loc
							O8.y+=3
							O8.x-=1
						if(O9)
							O9.loc = usr.loc
							O9.y+=3
							O9.x+=1
						if(TR)
							TR.loc = usr.loc
							TR.y+=5
							TR.x+=2
						if(TR2)
							TR2.loc = usr.loc
							TR2.y+=4
							TR2.x+=2
						if(TR3)
							TR3.loc = usr.loc
							TR3.y+=3
							TR3.x+=2
						if(TL)
							TL.loc = usr.loc
							TL.y+=2
							TL.x-=2
						if(BR)
							BR.loc = usr.loc
							BR.y+=2
							BR.x+=2
						if(BL)
							BL.loc = usr.loc
							BL.y+=2
						if(BL2)
							BL2.loc = usr.loc
							BL2.y+=2
							BL2.x-=1
						if(BL3)
							BL3.loc = usr.loc
							BL3.y+=2
							BL3.x+=1
						if(T)
							T.dir = usr.dir
							T.loc = usr.loc
							T.y+=1
					if(usr.dir==SOUTH)
						if(K)
							K.loc = usr.loc
							K.y-=2
							K.x-=2
						if(L)
							L.loc = usr.loc
							L.y-=2
						if(L2)
							L2.loc = usr.loc
							L2.y-=2
							L2.x-=1
						if(L3)
							L3.loc = usr.loc
							L3.y-=2
							L3.x+=1
						if(M1)
							M1.loc = usr.loc
							M1.y-=2
							M1.x+=2
						if(N)
							N.loc = usr.loc
							N.y-=3
							N.x-=2
						if(N2)
							N2.loc = usr.loc
							N2.y-=4
							N2.x-=2
						if(N3)
							N3.loc = usr.loc
							N3.y-=5
							N3.x-=2
						if(O)
							O.loc = usr.loc
							O.y-=5
						if(O2)
							O2.loc = usr.loc
							O2.y-=5
							O2.x-=1
						if(O3)
							O3.loc = usr.loc
							O3.y-=5
							O3.x+=1
						if(O4)
							O4.loc = usr.loc
							O4.y-=4
						if(O5)
							O5.loc = usr.loc
							O5.y-=4
							O5.x-=1
						if(O6)
							O6.loc = usr.loc
							O6.y-=4
							O6.x+=1
						if(O7)
							O7.loc = usr.loc
							O7.y-=3
						if(O8)
							O8.loc = usr.loc
							O8.y-=3
							O8.x-=1
						if(O9)
							O9.loc = usr.loc
							O9.y-=3
							O9.x+=1
						if(TR)
							TR.loc = usr.loc
							TR.y-=5
							TR.x+=2
						if(TR2)
							TR2.loc = usr.loc
							TR2.y-=4
							TR2.x+=2
						if(TR3)
							TR3.loc = usr.loc
							TR3.y-=3
							TR3.x+=2
						if(TL)
							TL.loc = usr.loc
							TL.y-=6
							TL.x-=2
						if(BR)
							BR.loc = usr.loc
							BR.y-=6
							BR.x+=2
						if(BL)
							BL.loc = usr.loc
							BL.y-=6
						if(BL2)
							BL2.loc = usr.loc
							BL2.y-=6
							BL2.x-=1
						if(BL3)
							BL3.loc = usr.loc
							BL3.y-=6
							BL3.x+=1
						if(T)
							T.dir = usr.dir
							T.loc = usr.loc
							T.y-=1
					if(usr.dir==WEST)
						if(K)
							K.loc = usr.loc
							K.y+=2
							K.x-=6
						if(L)
							L.loc = usr.loc
							L.y+=2
							L.x-=3
						if(L2)
							L2.loc = usr.loc
							L2.y+=2
							L2.x-=4
						if(L3)
							L3.loc = usr.loc
							L3.y+=2
							L3.x-=5
						if(M1)
							M1.loc = usr.loc
							M1.y+=2
							M1.x-=2
						if(N)
							N.loc = usr.loc
							N.y-=1
							N.x-=6
						if(N2)
							N2.loc = usr.loc
							N2.x-=6
						if(N3)
							N3.loc = usr.loc
							N3.y+=1
							N3.x-=6
						if(O)
							O.loc = usr.loc
							O.y-=1
							O.x-=3
						if(O2)
							O2.loc = usr.loc
							O2.y-=1
							O2.x-=4
						if(O3)
							O3.loc = usr.loc
							O3.y-=1
							O3.x-=5
						if(O4)
							O4.loc = usr.loc
							O4.x-=3
						if(O5)
							O5.loc = usr.loc
							O5.x-=4
						if(O6)
							O6.loc = usr.loc
							O6.x-=5
						if(O7)
							O7.loc = usr.loc
							O7.y+=1
							O7.x-=3
						if(O8)
							O8.loc = usr.loc
							O8.y+=1
							O8.x-=4
						if(O9)
							O9.loc = usr.loc
							O9.y+=1
							O9.x-=5
						if(TR)
							TR.loc = usr.loc
							TR.y+=1
							TR.x-=2
						if(TR2)
							TR2.loc = usr.loc
							TR2.x-=2
						if(TR3)
							TR3.loc = usr.loc
							TR3.y-=1
							TR3.x-=2
						if(TL)
							TL.loc = usr.loc
							TL.y-=2
							TL.x-=6
						if(BR)
							BR.loc = usr.loc
							BR.y-=2
							BR.x-=2
						if(BL)
							BL.loc = usr.loc
							BL.y-=2
							BL.x-=3
						if(BL2)
							BL2.loc = usr.loc
							BL2.y-=2
							BL2.x-=4
						if(BL3)
							BL3.loc = usr.loc
							BL3.y-=2
							BL3.x-=5
						if(T)
							T.dir = usr.dir
							T.loc = usr.loc
							T.x-=1
					if(usr.dir==EAST)
						if(K)
							K.loc = usr.loc
							K.y+=2
							K.x+=2
						if(L)
							L.loc = usr.loc
							L.y+=2
							L.x+=3
						if(L2)
							L2.loc = usr.loc
							L2.y+=2
							L2.x+=4
						if(L3)
							L3.loc = usr.loc
							L3.y+=2
							L3.x+=5
						if(M1)
							M1.loc = usr.loc
							M1.y+=2
							M1.x+=6
						if(N)
							N.loc = usr.loc
							N.y-=1
							N.x+=2
						if(N2)
							N2.loc = usr.loc
							N2.x+=2
						if(N3)
							N3.loc = usr.loc
							N3.y+=1
							N3.x+=2
						if(O)
							O.loc = usr.loc
							O.y-=1
							O.x+=3
						if(O2)
							O2.loc = usr.loc
							O2.x+=3
						if(O3)
							O3.loc = usr.loc
							O3.y+=1
							O3.x+=3
						if(O4)
							O4.loc = usr.loc
							O4.y-=1
							O4.x+=4
						if(O5)
							O5.loc = usr.loc
							O5.x+=4
						if(O6)
							O6.loc = usr.loc
							O6.y+=1
							O6.x+=4
						if(O7)
							O7.loc = usr.loc
							O7.y-=1
							O7.x+=5
						if(O8)
							O8.loc = usr.loc
							O8.x+=5
						if(O9)
							O9.loc = usr.loc
							O9.y+=1
							O9.x+=5
						if(TR)
							TR.loc = usr.loc
							TR.y-=1
							TR.x+=6
						if(TR2)
							TR2.loc = usr.loc
							TR2.x+=6
						if(TR3)
							TR3.loc = usr.loc
							TR3.y+=1
							TR3.x+=6
						if(TL)
							TL.loc = usr.loc
							TL.y-=2
							TL.x+=2
						if(BR)
							BR.loc = usr.loc
							BR.y-=2
							BR.x+=6
						if(BL)
							BL.loc = usr.loc
							BL.y-=2
							BL.x+=3
						if(BL2)
							BL2.loc = usr.loc
							BL2.y-=2
							BL2.x+=4
						if(BL3)
							BL3.loc = usr.loc
							BL3.y-=2
							BL3.x+=5
						if(T)
							T.dir = usr.dir
							T.loc = usr.loc
							T.x+=1
					sleep(10)
					usr.cast = 0
					usr.froze=0
					usr.move=1
					var/obj/burningMA/K1 = new /obj/burningMA
					var/obj/burningMA/K2 = new /obj/burningMA
					var/obj/burningMA/K3 = new /obj/burningMA
					var/obj/burningMA/K4 = new /obj/burningMA
					var/obj/burningMA/K5 = new /obj/burningMA
					var/obj/burningMA/K6 = new /obj/burningMA
					var/obj/burningMA/K7 = new /obj/burningMA
					var/obj/burningMA/K8 = new /obj/burningMA
					var/obj/burningMA/K9 = new /obj/burningMA
					var/obj/burningMA/K10 = new /obj/burningMA
					var/obj/burningMA/K11 = new /obj/burningMA
					var/obj/burningMA/K12 = new /obj/burningMA
					var/obj/burningMA/K13 = new /obj/burningMA
					var/obj/burningMA/K14 = new /obj/burningMA
					var/obj/burningMA/K15 = new /obj/burningMA
					var/obj/burningMA/K16 = new /obj/burningMA
					var/obj/burningMA/K17 = new /obj/burningMA
					var/obj/burningMA/K18 = new /obj/burningMA
					var/obj/burningMA/K19 = new /obj/burningMA
					var/obj/burningMA/K20 = new /obj/burningMA
					var/obj/burningMA/K21 = new /obj/burningMA
					var/obj/burningMA/K22 = new /obj/burningMA
					var/obj/burningMA/K23 = new /obj/burningMA
					var/obj/burningMA/K24 = new /obj/burningMA
					var/obj/burningMA/K25 = new /obj/burningMA
					K1.loc = K.loc
					for(var/mob/M in K1.loc)
						var/damage = usr.nin/3.8 + usr.fogoN/1.75 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						if(M.health<0)M.Death(usr)
					K1.nin = usr.nin/3.8 + usr.fogoN/1.75
					K1.Gowner = usr
					K1.burn()
					K2.loc = L.loc
					for(var/mob/M in K2.loc)
						var/damage = usr.nin/3.8 + usr.fogoN/1.75 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						if(M.health<0)M.Death(usr)
					K2.nin = usr.nin/3.8 + usr.fogoN/1.75
					K2.Gowner = usr
					K2.burn()
					K3.loc = L2.loc
					for(var/mob/M in K3.loc)
						var/damage = usr.nin/3.8 + usr.fogoN/1.75 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						if(M.health<0)M.Death(usr)
					K3.nin = usr.nin/3.8 + usr.fogoN/1.75
					K3.Gowner = usr
					K3.burn()
					K4.loc = M1.loc
					for(var/mob/M in K4.loc)
						var/damage = usr.nin/3.8 + usr.fogoN/1.75 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						if(M.health<0)M.Death(usr)
					K4.nin = usr.nin/3.8 + usr.fogoN/1.75
					K4.Gowner = usr
					K4.burn()
					K5.loc = N.loc
					for(var/mob/M in K5.loc)
						var/damage = usr.nin/3.8 + usr.fogoN/1.75 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						if(M.health<0)M.Death(usr)
					K5.nin = usr.nin/3.8 + usr.fogoN/1.75
					K5.Gowner = usr
					K5.burn()
					K6.loc = O.loc
					for(var/mob/M in K6.loc)
						var/damage = usr.nin/3.8 + usr.fogoN/1.75 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						if(M.health<0)M.Death(usr)
					K6.nin = usr.nin/3.8 + usr.fogoN/1.75
					K6.Gowner = usr
					K6.burn()
					K7.loc = TR.loc
					for(var/mob/M in K7.loc)
						var/damage = usr.nin/3.8 + usr.fogoN/1.75 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						if(M.health<0)M.Death(usr)
					K7.nin = usr.nin/3.8 + usr.fogoN/1.75
					K7.Gowner = usr
					K7.burn()
					K8.loc = TL.loc
					for(var/mob/M in K8.loc)
						var/damage = usr.nin/3.8 + usr.fogoN/1.75 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						if(M.health<0)M.Death(usr)
					K8.nin = usr.nin/3.8 + usr.fogoN/1.75
					K8.Gowner = usr
					K8.burn()
					K9.loc = BR.loc
					for(var/mob/M in K9.loc)
						var/damage = usr.nin/3.8 + usr.fogoN/1.75 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						if(M.health<0)M.Death(usr)
					K9.nin = usr.nin/3.8 + usr.fogoN/1.75
					K9.Gowner = usr
					K9.burn()
					K10.loc = BL.loc
					for(var/mob/M in K10.loc)
						var/damage = usr.nin/3.8 + usr.fogoN/1.75 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						if(M.health<0)M.Death(usr)
					K10.nin = usr.nin/3.8 + usr.fogoN/1.75
					K10.Gowner = usr
					K10.burn()
					K11.loc = L3.loc
					for(var/mob/M in K11.loc)
						var/damage = usr.nin/3.8 + usr.fogoN/1.75 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						if(M.health<0)M.Death(usr)
					K11.nin = usr.nin/3.8 + usr.fogoN/1.75
					K11.Gowner = usr
					K11.burn()
					K12.loc = N2.loc
					for(var/mob/M in K12.loc)
						var/damage = usr.nin/3.8 + usr.fogoN/1.75 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						if(M.health<0)M.Death(usr)
					K12.nin = usr.nin/3.8 + usr.fogoN/1.75
					K12.Gowner = usr
					K12.burn()
					K13.loc = N3.loc
					for(var/mob/M in K13.loc)
						var/damage = usr.nin/3.8 + usr.fogoN/1.75 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						if(M.health<0)M.Death(usr)
					K13.nin = usr.nin/3.8 + usr.fogoN/1.75
					K13.Gowner = usr
					K13.burn()
					K14.loc = TR2.loc
					for(var/mob/M in K14.loc)
						var/damage = usr.nin/3.8 + usr.fogoN/1.75 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						if(M.health<0)M.Death(usr)
					K14.nin = usr.nin/3.8 + usr.fogoN/1.75
					K14.Gowner = usr
					K14.burn()
					K15.loc = TR3.loc
					for(var/mob/M in K15.loc)
						var/damage = usr.nin/3.8 + usr.fogoN/1.75 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						if(M.health<0)M.Death(usr)
					K15.nin = usr.nin/3.8 + usr.fogoN/1.75
					K15.Gowner = usr
					K15.burn()
					K16.loc = BL2.loc
					for(var/mob/M in K16.loc)
						var/damage = usr.nin/3.8 + usr.fogoN/1.75 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						if(M.health<0)M.Death(usr)
					K16.nin = usr.nin/3.8 + usr.fogoN/1.75
					K16.Gowner = usr
					K16.burn()
					K17.loc = BL3.loc
					for(var/mob/M in K17.loc)
						var/damage = usr.nin/3.8 + usr.fogoN/1.75 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						if(M.health<0)M.Death(usr)
					K17.nin = usr.nin/3.8 + usr.fogoN/1.75
					K17.Gowner = usr
					K17.burn()
					K18.loc = O2.loc
					for(var/mob/M in K18.loc)
						var/damage = usr.nin/3.8 + usr.fogoN/1.75 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						if(M.health<0)M.Death(usr)
					K18.nin = usr.nin/3.8 + usr.fogoN/1.75
					K18.Gowner = usr
					K18.burn()
					K19.loc = O3.loc
					for(var/mob/M in K19.loc)
						var/damage = usr.nin/3.8 + usr.fogoN/1.75 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						if(M.health<0)M.Death(usr)
					K19.nin = usr.nin/3.8 + usr.fogoN/1.75
					K19.Gowner = usr
					K19.burn()
					K20.loc = O4.loc
					for(var/mob/M in K20.loc)
						var/damage = usr.nin/3.8 + usr.fogoN/1.75 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						if(M.health<0)M.Death(usr)
					K20.nin = usr.nin/3.8 + usr.fogoN/1.75
					K20.Gowner = usr
					K20.burn()
					K21.loc = O5.loc
					for(var/mob/M in K21.loc)
						var/damage = usr.nin/3.8 + usr.fogoN/1.75 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						if(M.health<0)M.Death(usr)
					K21.nin = usr.nin/3.8 + usr.fogoN/1.75
					K21.Gowner = usr
					K21.burn()
					K22.loc = O6.loc
					for(var/mob/M in K22.loc)
						var/damage = usr.nin/3.8 + usr.fogoN/1.75 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						if(M.health<0)M.Death(usr)
					K22.nin = usr.nin/3.8 + usr.fogoN/1.75
					K22.Gowner = usr
					K22.burn()
					K23.loc = O7.loc
					for(var/mob/M in K23.loc)
						var/damage = usr.nin/3.8 + usr.fogoN/1.75 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						if(M.health<0)M.Death(usr)
					K23.nin = usr.nin/3.8 + usr.fogoN/1.75
					K23.Gowner = usr
					K23.burn()
					K24.loc = O8.loc
					for(var/mob/M in K10.loc)
						var/damage = usr.nin/3.8 + usr.fogoN/1.75 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						if(M.health<0)M.Death(usr)
					K24.nin = usr.nin/3.8 + usr.fogoN/1.75
					K24.Gowner = usr
					K24.burn()
					K25.loc = O9.loc
					for(var/mob/M in K25.loc)
						var/damage = usr.nin/3.8 + usr.fogoN/1.75 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						if(M.health<0)M.Death(usr)
					K25.nin = usr.nin/3.8 + usr.fogoN/1.75
					K25.Gowner = usr
					K25.burn()
				else if(usr.KatonGouMadU <= 4999&&usr.KatonGouMadU>=1000)
					usr.cast = 1
					var/obj/Goukakyuu1/K = new /obj/Goukakyuu1
					var/obj/Goukakyuu2/L = new /obj/Goukakyuu2
					var/obj/Goukakyuu3/M1 = new /obj/Goukakyuu3
					var/obj/Goukakyuu4/N = new /obj/Goukakyuu4
					var/obj/Goukakyuu5/O = new /obj/Goukakyuu5
					var/obj/Goukakyuu6/TR = new /obj/Goukakyuu6
					var/obj/Goukakyuu7/TL = new /obj/Goukakyuu7
					var/obj/Goukakyuu8/BL = new /obj/Goukakyuu8
					var/obj/Goukakyuu9/BR = new /obj/Goukakyuu9
					var/obj/Goukakyuutail/T = new /obj/Goukakyuutail
					usr.KatonGouMadU += 1
					usr.handseals=0
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#ff0000>K</FONT><FONT COLOR=#ff1a00>a</FONT><FONT COLOR=#ff3300>t</FONT><FONT COLOR=#ff4d00>o</FONT><FONT COLOR=#ff6600>n</FONT><FONT COLOR=#ff8000>:</FONT><FONT COLOR=#ff9a00> </FONT><FONT COLOR=#ffb300>G</FONT><FONT COLOR=#ffcd00>o</FONT><FONT COLOR=#ffe600>u</FONT><FONT COLOR=#ffff00>k</FONT><FONT COLOR=#ffe900>a</FONT><FONT COLOR=#ffd100> </FONT><FONT COLOR=#ffba00>M</FONT><FONT COLOR=#ffa300>e</FONT><FONT COLOR=#ff8c00>s</FONT><FONT COLOR=#ff7400>s</FONT><FONT COLOR=#ff5d00>h</FONT><FONT COLOR=#ff4600>i</FONT><FONT COLOR=#ff2f00>t</FONT><FONT COLOR=#ff1700>s</FONT><FONT COLOR=#ff0000>u!</FONT>"
					K.Gowner=usr
					usr.froze=1
					usr.move=0
					if(usr.dir==NORTH)
						if(K)
							K.loc = usr.loc
							K.y+=4
							K.x-=1
						if(L)
							L.loc = usr.loc
							L.y+=4
						if(M1)
							M1.loc = usr.loc
							M1.y+=4
							M1.x+=1
						if(N)
							N.loc = usr.loc
							N.y+=3
							N.x-=1
						if(O)
							O.loc = usr.loc
							O.y+=3
						if(TR)
							TR.loc = usr.loc
							TR.y+=3
							TR.x+=1
						if(TL)
							TL.loc = usr.loc
							TL.y+=2
							TL.x-=1
						if(BR)
							BR.loc = usr.loc
							BR.y+=2
							BR.x+=1
						if(BL)
							BL.loc = usr.loc
							BL.y+=2
						if(T)
							T.dir = usr.dir
							T.loc = usr.loc
							T.y+=1
					if(usr.dir==SOUTH)
						if(K)
							K.loc = usr.loc
							K.y-=2
							K.x-=1
						if(L)
							L.loc = usr.loc
							L.y-=2
						if(M1)
							M1.loc = usr.loc
							M1.y-=2
							M1.x+=1
						if(N)
							N.loc = usr.loc
							N.y-=3
							N.x-=1
						if(O)
							O.loc = usr.loc
							O.y-=3
						if(TR)
							TR.loc = usr.loc
							TR.y-=3
							TR.x+=1
						if(TL)
							TL.loc = usr.loc
							TL.y-=4
							TL.x-=1
						if(BR)
							BR.loc = usr.loc
							BR.y-=4
							BR.x+=1
						if(BL)
							BL.loc = usr.loc
							BL.y-=4
						if(T)
							T.dir = usr.dir
							T.loc = usr.loc
							T.y-=1
					if(usr.dir==WEST)
						if(K)
							K.loc = usr.loc
							K.y+=1
							K.x-=4
						if(L)
							L.loc = usr.loc
							L.y+=1
							L.x-=3
						if(M1)
							M1.loc = usr.loc
							M1.y+=1
							M1.x-=2
						if(N)
							N.loc = usr.loc
							N.x-=4
						if(O)
							O.loc = usr.loc
							O.x-=3
						if(TR)
							TR.loc = usr.loc
							TR.x-=2
						if(TL)
							TL.loc = usr.loc
							TL.y-=1
							TL.x-=4
						if(BR)
							BR.loc = usr.loc
							BR.y-=1
							BR.x-=2
						if(BL)
							BL.loc = usr.loc
							BL.y-=1
							BL.x-=3
						if(T)
							T.dir = usr.dir
							T.loc = usr.loc
							T.x-=1
					if(usr.dir==EAST)
						if(K)
							K.loc = usr.loc
							K.y+=1
							K.x+=2
						if(L)
							L.loc = usr.loc
							L.y+=1
							L.x+=3
						if(M1)
							M1.loc = usr.loc
							M1.y+=1
							M1.x+=4
						if(N)
							N.loc = usr.loc
							N.x+=2
						if(O)
							O.loc = usr.loc
							O.x+=3
						if(TR)
							TR.loc = usr.loc
							TR.x+=4
						if(TL)
							TL.loc = usr.loc
							TL.y-=1
							TL.x+=2
						if(BR)
							BR.loc = usr.loc
							BR.y-=1
							BR.x+=4
						if(BL)
							BL.loc = usr.loc
							BL.y-=1
							BL.x+=3
						if(T)
							T.dir = usr.dir
							T.loc = usr.loc
							T.x+=1
					sleep(8)
					usr.cast = 0
					usr.froze=0
					usr.move=1
					var/obj/burningMA/K2 = new /obj/burningMA
					var/obj/burningMA/L2 = new /obj/burningMA
					var/obj/burningMA/M12 = new /obj/burningMA
					var/obj/burningMA/N2 = new /obj/burningMA
					var/obj/burningMA/O2 = new /obj/burningMA
					var/obj/burningMA/P2 = new /obj/burningMA
					var/obj/burningMA/Q2 = new /obj/burningMA
					var/obj/burningMA/R2 = new /obj/burningMA
					var/obj/burningMA/S2 = new /obj/burningMA
					K2.loc = K.loc
					for(var/mob/M in K2.loc)
						var/damage = usr.nin/3.8 + usr.fogoN/1.75 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						if(M.health<0)M.Death(usr)
					K2.nin = usr.nin/3.8 + usr.fogoN/1.75
					K2.Gowner = usr
					K2.burn()
					L2.loc = L.loc
					for(var/mob/M in L2.loc)
						var/damage = usr.nin/3.8 + usr.fogoN/1.75 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						if(M.health<0)M.Death(usr)
					L2.nin = usr.nin/3.8 + usr.fogoN/1.75
					L2.Gowner = usr
					L2.burn()
					M12.loc = M1.loc
					for(var/mob/M in M12.loc)
						var/damage = usr.nin/3.8 + usr.fogoN/1.75 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						if(M.health<0)M.Death(usr)
					M12.nin = usr.nin/3.8 + usr.fogoN/1.75
					M12.Gowner = usr
					M12.burn()
					N2.loc = N.loc
					for(var/mob/M in N2.loc)
						var/damage = usr.nin/3.8 + usr.fogoN/1.75 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						if(M.health<0)M.Death(usr)
					N2.nin = usr.nin/3.8 + usr.fogoN/1.75
					N2.Gowner = usr
					N2.burn()
					O2.loc = O.loc
					for(var/mob/M in O2.loc)
						var/damage = usr.nin/3.8 + usr.fogoN/1.75 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						if(M.health<0)M.Death(usr)
					O2.nin = usr.nin/3.8 + usr.fogoN/1.75
					O2.Gowner = usr
					O2.burn()
					P2.loc = TR.loc
					for(var/mob/M in P2.loc)
						var/damage = usr.nin/3.8 + usr.fogoN/1.75 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						if(M.health<0)M.Death(usr)
					P2.nin = usr.nin/3.8 + usr.fogoN/1.75
					P2.Gowner = usr
					P2.burn()
					Q2.loc = TL.loc
					for(var/mob/M in Q2.loc)
						var/damage = usr.nin/3.8 + usr.fogoN/1.75 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						if(M.health<0)M.Death(usr)
					Q2.nin = usr.nin/3.8 + usr.fogoN/1.75
					Q2.Gowner = usr
					Q2.burn()
					R2.loc = BR.loc
					for(var/mob/M in R2.loc)
						var/damage = usr.nin/3.8 + usr.fogoN/1.75 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						if(M.health<0)M.Death(usr)
					R2.nin = usr.nin/3.8 + usr.fogoN/1.75
					R2.Gowner = usr
					R2.burn()
					S2.loc = BL.loc
					for(var/mob/M in S2.loc)
						var/damage = usr.nin/3.8 + usr.fogoN/1.75 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						if(M.health<0)M.Death(usr)
					S2.nin = usr.nin/3.8 + usr.fogoN/1.75
					S2.Gowner = usr
					S2.burn()
				else
					usr.cast = 1
					var/obj/GoukakyuuHead/K = new /obj/GoukakyuuHead
					var/obj/GoukakyuuTail/T = new /obj/GoukakyuuTail
					usr.KatonGouMadU += 1
					usr.froze=1
					usr.move=0
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz:  <FONT COLOR=#ff0000>K</FONT><FONT COLOR=#ff1a00>a</FONT><FONT COLOR=#ff3300>t</FONT><FONT COLOR=#ff4d00>o</FONT><FONT COLOR=#ff6600>n</FONT><FONT COLOR=#ff8000>:</FONT><FONT COLOR=#ff9a00> </FONT><FONT COLOR=#ffb300>G</FONT><FONT COLOR=#ffcd00>o</FONT><FONT COLOR=#ffe600>u</FONT><FONT COLOR=#ffff00>k</FONT><FONT COLOR=#ffe900>a</FONT><FONT COLOR=#ffd100> </FONT><FONT COLOR=#ffba00>M</FONT><FONT COLOR=#ffa300>e</FONT><FONT COLOR=#ff8c00>s</FONT><FONT COLOR=#ff7400>s</FONT><FONT COLOR=#ff5d00>h</FONT><FONT COLOR=#ff4600>i</FONT><FONT COLOR=#ff2f00>t</FONT><FONT COLOR=#ff1700>s</FONT><FONT COLOR=#ff0000>u!</FONT>"
					K.Gowner=usr
					if(usr.dir==NORTH)
						if(K)
							K.loc = usr.loc
							K.y+=2
						if(T)
							T.dir = usr.dir
							T.loc = usr.loc
							T.y+=1
					if(usr.dir==SOUTH)
						if(K)
							K.loc = usr.loc
							K.y-=2
						if(T)
							T.dir = usr.dir
							T.loc = usr.loc
							T.y-=1
					if(usr.dir==WEST)
						if(K)
							K.loc = usr.loc
							K.x-=2
						if(T)
							T.dir = usr.dir
							T.loc = usr.loc
							T.x-=1
					if(usr.dir==EAST)
						if(K)
							K.loc = usr.loc
							K.x+=2
						if(T)
							T.dir = usr.dir
							T.loc = usr.loc
							T.x+=1
					sleep(8)
					usr.cast = 0
					usr.froze=0
					usr.move=1
					var/obj/burningMA/R = new /obj/burningMA
					R.loc = K.loc
					for(var/mob/M in R.loc)
						var/damage = usr.nin/3.8 + usr.fogoN/1.75 - M.Resistencia/2
						if(damage<=0)damage=0
						if(M.Kaiten||M.sphere)
							return
						if(M.PK==0)
							return
						if(M.fantasma)
							return
						usr.EsquivaSharingan(M)
						if(M.Esquivou)
							M.Esquivou=0
							usr.Frozen=0
							usr.HakkeFreeze=0
							usr.cast=0
							return
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						if(M.health<0)M.Death(usr)
					R.nin = usr.nin/3.8 + usr.fogoN/1.75
					R.Gowner = usr
					R.burn()


obj/burningMA
	icon = 'fire.dmi'
	icon_state = "2"
	density = 0
	New()
		spawn(56) del(src)
	proc/burn()
		var/mob/O = src.Gowner
		for(var/mob/M in src.loc)
			if(!O) del src
			if(M<>src.Gowner)
				if(M.x==src.x&&M.y==src.y)
					var/damage = usr.nin/7.6 + usr.fogoN/1.75 - M.Resistencia/2
					if(damage<=0)damage=0
					if(M.fantasma)
						usr<<"<font size=1>Vc não consegue tocá-lo!"
						return
					if(damage >= 1)
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						view(M) << "[M] recebeu [damage] de dano por entrar no Fogo Majestoso deixado pelo adversario!!"
						M.Death(O)
		spawn(8)
		src.burn()

//========================================================//
mob/var/tmp/cdgoryuumad=0
mob/Jutsu
	verb
		KatonRyuuenHoukanoJutsu() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Katon: Ryuuen Houka no Jutsu"
			usr.Handseals()
			if(usr.cdgoryuumad)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Katon: Ryuuen Houka no Jutsu</b>!"
				return
			if(usr.cast||usr.Kaiten == 1) // If the mob's cast var is one...
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
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(!usr.handseals)
				return
			else // If the cast var isn't 1...
				if(usr.cdgoryuumad)return
				usr.cdgoryuumad=1
				spawn()usr.Cooldown(100,"Katon: Ryuuen Houka no Jutsu")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				if(usr.Katon2N >= 100)
					if(usr.dir==NORTHWEST)
						usr<<"Você não pode usar esse jutsu quando na diagonal."
						return
					if(usr.dir==SOUTHWEST)
						usr<<"Você não pode usar esse jutsu quando na diagonal."
						return
					if(usr.dir==NORTHEAST)
						usr<<"Você não pode usar esse jutsu quando na diagonal."
						return
					if(usr.dir==SOUTHEAST)
						usr<<"Você não pode usar esse jutsu quando na diagonal."
						return
					usr.Katon2N += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#ff0000>K</FONT><FONT COLOR=#ff1311>a</FONT><FONT COLOR=#fe2622>t</FONT><FONT COLOR=#fd3933>o</FONT><FONT COLOR=#fd4c44>n</FONT><FONT COLOR=#fc5f55>:</FONT><FONT COLOR=#fb7266> </FONT><FONT COLOR=#fa8477>R</FONT><FONT COLOR=#f99788>y</FONT><FONT COLOR=#f8aa99>u</FONT><FONT COLOR=#f8bdaa>u</FONT><FONT COLOR=#f7d0bb>e</FONT><FONT COLOR=#f6e3cc>n</FONT><FONT COLOR=#f5f5dc> </FONT><FONT COLOR=#f6e4cd>H</FONT><FONT COLOR=#f7d3bd>o</FONT><FONT COLOR=#f7c1ae>u</FONT><FONT COLOR=#f8b09e>k</FONT><FONT COLOR=#f99e8e>a</FONT><FONT COLOR=#fa8d7e> </FONT><FONT COLOR=#fb7b6f>n</FONT><FONT COLOR=#fb695f>o</FONT><FONT COLOR=#fc584f> </FONT><FONT COLOR=#fd463f>J</FONT><FONT COLOR=#fe352f>u</FONT><FONT COLOR=#fe2320>t</FONT><FONT COLOR=#ff1210>s</FONT><FONT COLOR=#ff0000>u!</FONT>"
					var/obj/RyuuenHouka/D = new /obj/RyuuenHouka
					var/obj/RyuuenHouka/S = new /obj/RyuuenHouka
					var/obj/RyuuenHouka/K = new /obj/RyuuenHouka
					var/obj/RyuuenHouka/L = new /obj/RyuuenHouka
					var/obj/katonHT/N = new /obj/RyuuenHouka
					if(K)
						K.loc = usr.loc
						K.nin=usr.nin/4.15 + usr.fogoN/1.75
						K.name="[usr]"
						K.Move_Delay=0.5
						K.Gowner=usr
						walk(K,usr.dir)
					sleep(6)
					if(D)
						D.loc = usr.loc
						if(usr.dir==NORTH)
							D.x-=1
						if(usr.dir==SOUTH)
							D.x+=1
						if(usr.dir==WEST)
							D.y+=1
						if(usr.dir==EAST)
							D.y-=1
						D.nin=usr.nin/4.15 + usr.fogoN/1.75
						D.name="[usr]"
						D.Move_Delay=0.5
						D.Gowner=usr
						walk(D,usr.dir)
					sleep(6)
					if(L)
						L.loc = usr.loc
						if(usr.dir==NORTH)
							L.x+=1
						if(usr.dir==SOUTH)
							L.x-=1
						if(usr.dir==WEST)
							L.y-=1
						if(usr.dir==EAST)
							L.y+=1
						L.Move_Delay=0.5
						L.nin=usr.nin/4.15 + usr.fogoN/1.75
						L.name="[usr]"
						L.Gowner=usr
						walk(L,usr.dir)
					sleep(13)
					if(S)
						S.loc = usr.loc
						if(usr.dir==NORTH)
							S.x+=1
						if(usr.dir==SOUTH)
							S.x-=1
						if(usr.dir==WEST)
							S.y-=1
						if(usr.dir==EAST)
							S.y+=1
						S.Move_Delay=0.5
						S.nin=usr.nin/4.15 + usr.fogoN/1.75
						S.name="[usr]"
						S.Gowner=usr
						walk(S,usr.dir)
					sleep(5)
					if(N)
						N.loc = usr.loc
						if(usr.dir==NORTH)
							N.x-=1
						if(usr.dir==SOUTH)
							N.x+=1
						if(usr.dir==WEST)
							N.y+=1
						if(usr.dir==EAST)
							N.y-=1
						N.Move_Delay=0.5
						N.nin=usr.nin/4.15 + usr.fogoN/1.75
						N.name="[usr]"
						N.Gowner=usr
						walk(N,usr.dir)
					usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam
					sleep(10)
					usr.cast = 0
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						if(usr.dir==NORTHWEST)
							usr<<"Você não pode usar esse jutsu quando na diagonal."
							return
						if(usr.dir==SOUTHWEST)
							usr<<"Você não pode usar esse jutsu quando na diagonal."
							return
						if(usr.dir==NORTHEAST)
							usr<<"Você não pode usar esse jutsu quando na diagonal."
							return
						if(usr.dir==SOUTHEAST)
							usr<<"Você não pode usar esse jutsu quando na diagonal."
							return
						usr.Katon2N += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR=#ff0000>K</FONT><FONT COLOR=#ff1311>a</FONT><FONT COLOR=#fe2622>t</FONT><FONT COLOR=#fd3933>o</FONT><FONT COLOR=#fd4c44>n</FONT><FONT COLOR=#fc5f55>:</FONT><FONT COLOR=#fb7266> </FONT><FONT COLOR=#fa8477>R</FONT><FONT COLOR=#f99788>y</FONT><FONT COLOR=#f8aa99>u</FONT><FONT COLOR=#f8bdaa>u</FONT><FONT COLOR=#f7d0bb>e</FONT><FONT COLOR=#f6e3cc>n</FONT><FONT COLOR=#f5f5dc> </FONT><FONT COLOR=#f6e4cd>H</FONT><FONT COLOR=#f7d3bd>o</FONT><FONT COLOR=#f7c1ae>u</FONT><FONT COLOR=#f8b09e>k</FONT><FONT COLOR=#f99e8e>a</FONT><FONT COLOR=#fa8d7e> </FONT><FONT COLOR=#fb7b6f>n</FONT><FONT COLOR=#fb695f>o</FONT><FONT COLOR=#fc584f> </FONT><FONT COLOR=#fd463f>J</FONT><FONT COLOR=#fe352f>u</FONT><FONT COLOR=#fe2320>t</FONT><FONT COLOR=#ff1210>s</FONT><FONT COLOR=#ff0000>u!</FONT>"
						var/obj/RyuuenHouka/D = new /obj/RyuuenHouka
						var/obj/RyuuenHouka/S = new /obj/RyuuenHouka
						var/obj/RyuuenHouka/K = new /obj/RyuuenHouka
						var/obj/RyuuenHouka/L = new /obj/RyuuenHouka
						var/obj/RyuuenHouka/N = new /obj/RyuuenHouka
						if(K)
							K.loc = usr.loc
							K.nin=usr.nin/4.15 + usr.fogoN/1.75
							K.name="[usr]"
							K.Move_Delay=1
							K.Gowner=usr
							walk(K,usr.dir)
						sleep(6)
						if(D)
							D.loc = usr.loc
							if(usr.dir==NORTH)
								D.x-=1
							if(usr.dir==SOUTH)
								D.x+=1
							if(usr.dir==WEST)
								D.y+=1
							if(usr.dir==EAST)
								D.y-=1
							D.nin=usr.nin/4.15 + usr.fogoN/1.75
							D.name="[usr]"
							D.Move_Delay=1
							D.Gowner=usr
							walk(D,usr.dir)
						sleep(6)
						if(L)
							L.loc = usr.loc
							if(usr.dir==NORTH)
								L.x+=1
							if(usr.dir==SOUTH)
								L.x-=1
							if(usr.dir==WEST)
								L.y-=1
							if(usr.dir==EAST)
								L.y+=1
							L.Move_Delay=1
							L.nin=usr.nin/4.15 + usr.fogoN/1.75
							L.name="[usr]"
							L.Gowner=usr
							walk(L,usr.dir)
						sleep(13)
						if(S)
							S.loc = usr.loc
							if(usr.dir==NORTH)
								S.x+=1
							if(usr.dir==SOUTH)
								S.x-=1
							if(usr.dir==WEST)
								S.y-=1
							if(usr.dir==EAST)
								S.y+=1
							S.Move_Delay=1
							S.nin=usr.nin/4.15 + usr.fogoN/1.75
							S.name="[usr]"
							S.Gowner=usr
							walk(S,usr.dir)
						sleep(5)
						if(N)
							N.loc = usr.loc
							if(usr.dir==NORTH)
								N.x-=1
							if(usr.dir==SOUTH)
								N.x+=1
							if(usr.dir==WEST)
								N.y+=1
							if(usr.dir==EAST)
								N.y-=1
							N.Move_Delay=1
							N.nin=usr.nin/4.15 + usr.fogoN/1.75
							N.name="[usr]"
							N.Gowner=usr
							walk(N,usr.dir)
						usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam
						sleep(10)
						usr.cast = 0
					else
						usr<<"Você falhou em usar o Katon: Ryuuen Houka no Jutsu!"

/*obj
	caudagoryuM
		icon='firedragon.dmi'
		icon_state="2"
		New()
			..()
			spawn(30)
			del(src)*/
obj
	RyuuenHouka
		icon = 'firedragon.dmi'
		icon_state = "1"
		density = 1
		Move()
			spawn(30) del(src)
			..()
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				var/mob/O = src.Gowner
				if(!O) del src
				if(M.Kaiten||M.sphere)
					return
				if(M.PK==0)
					return
				var/damage = O.nin/4.15 - M.Resistencia/2
				if(damage >= 1)
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					view(M) << "[M] levou [damage] de dano ao ser acertado pelo Katon: Ryuuen Houka no Jutsu!"
					M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

//========================================================//
mob/Jutsu
	verb
		MadaraSearch()
			set category = "Jutsus"
			set name = "Técnica Sensorial"
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			for(var/mob/M in oview(50))
				if(M.client&&M.z==usr.z)
					if(M.GM||M.ADM)return
					usr<<"{\icon[M][M.name]"
					usr<<"Location: [M.x],[M.y]"
//========================================================//
mob/var/tmp/cdgunbaiu=0
mob/Jutsu
	verb
		MadaraRef()
			set category = "Jutsus"
			set name = "Gunbai Uchiha"
			if(!usr.Escudoequipado)
				usr<<"Equipe o Escudo Madara primeiro!"
				return
			if(usr.cdgunbaiu)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Gunbai Uchiha</b>!"
				return
			if(usr.froze||usr.Frozen||usr.captured||usr.kawa)
				usr<<"Não agora!"
				return
			if(usr.cast)
				usr<<"Não agora!"
				return
			if(usr.chakra<=2000)
				usr<<"Não tem chakra suficiente (2k)!"
				return
			else
				if(usr.cdgunbaiu)return
				usr.cdgunbaiu=1
				spawn()usr.Cooldown(300,"Gunbai Uchiha")
				view()<<" <FONT COLOR=#ff0000>U</FONT><FONT COLOR=#f71506>c</FONT><FONT COLOR=#ee2a0c>h</FONT><FONT COLOR=#e44013>i</FONT><FONT COLOR=#db5519>h</FONT><FONT COLOR=#d2691e>a</FONT><FONT COLOR=#da581a>g</FONT><FONT COLOR=#e14715>a</FONT><FONT COLOR=#e93510>e</FONT><FONT COLOR=#f1230a>s</FONT><FONT COLOR=#f81205>h</FONT><FONT COLOR=#ff0000>i</FONT> "
				usr.chakra-=2000
				usr.Frozen = 1
				usr.cast = 1
				usr.def = 1
				usr.Kaiten =1
				usr.overlays += 'goubaiu.dmi'
				sleep(30)
				usr.Frozen = 0
				usr.cast = 0
				usr.def = 0
				usr.Kaiten =0
				usr.overlays -= 'goubaiu.dmi'
				usr<<"Seu Uchihagaeshi acabou!"

//========================================================//
obj/var/tmp/TS=0
obj
	ts1
		icon='DotonTechniques.dmi'
		icon_state= "1"
		layer = MOB_LAYER+1
	ts2
		icon='DotonTechniques.dmi'
		icon_state= "2"
		layer = MOB_LAYER+1
	ts3
		icon='DotonTechniques.dmi'
		icon_state= "3"
		layer = MOB_LAYER+1
	ts4
		icon='DotonTechniques.dmi'
		icon_state= "4"
		layer = MOB_LAYER+1
	ts5
		icon='DotonTechniques.dmi'
		icon_state= "5"
		layer = MOB_LAYER+1
	ts6
		icon='DotonTechniques.dmi'
		icon_state= "6"
		layer = MOB_LAYER+1
	ts7
		icon='DotonTechniques.dmi'
		icon_state= "7"
		layer = MOB_LAYER+1
	ts8
		icon='DotonTechniques.dmi'
		icon_state= "8"
		layer = MOB_LAYER+1
	ts9
		icon='DotonTechniques.dmi'
		icon_state= "9"
		layer = MOB_LAYER+1

mob/var/tmp/cdtengais=0

mob/var/tmp
	CarTengai=0
	DesTengai=0

mob/Jutsu
	verb
		TengaiShinsei()
			set category ="Doujutsu"
			set name ="Tengai Shinsei"
			if(usr.cdtengais)
				usr<<"Aguarde o Cooldown do Tengai Shinsei"
				return
			if(!usr.mson)
				usr<<"Vc precisa estar com o MS, FMS ou Rinnegan ativado"
				return
			else // If the cast var isn't 1...
				if(usr.cdtengais)return
				usr.cdtengais=1
				spawn()usr.Cooldown(600,"Tengai Shinsei")
				usr.TengaiShinsei2()
mob
	proc
		TengaiShinsei2()
			if(usr.DesTengai==1)
				usr.DesTengai=0
				usr.CarTengai=0
				usr<<"Seu Jutsu desativou por ter andado."
				usr.aura=0
				return
			if(usr.aura==0)
				usr.RandomChakra5()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.CarTengai=1
				usr<< "Você está concentrando o seu chakra"
				sleep(18)
				usr.aura=1
				usr.overlays+='chib.dmi'
				view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Tengai Shinsei!"
				var/obj/ts1/A = new /obj/ts1/
				var/obj/ts2/B = new /obj/ts2/
				var/obj/ts3/C = new /obj/ts3/
				var/obj/ts4/D = new /obj/ts4/
				var/obj/ts5/E = new /obj/ts5/
				var/obj/ts6/F = new /obj/ts6/
				var/obj/ts7/G = new /obj/ts7/
				var/obj/ts8/H = new /obj/ts8/
				var/obj/ts9/I = new /obj/ts9/
				A.loc = locate(usr.x-1,usr.y+7,usr.z)
				A.TS=1
				B.loc = locate(usr.x,usr.y+7,usr.z)
				B.TS=1
				C.loc = locate(usr.x+1,usr.y+7,usr.z)
				C.TS=1
				D.loc = locate(usr.x-1,usr.y+6,usr.z)
				D.TS=1
				E.loc = locate(usr.x,usr.y+6,usr.z)
				E.TS=1
				F.loc = locate(usr.x+1,usr.y+6,usr.z)
				F.TS=1
				G.loc = locate(usr.x-1,usr.y+5,usr.z)
				G.TS=1
				H.loc = locate(usr.x,usr.y+5,usr.z)
				H.TS=1
				I.loc = locate(usr.x+1,usr.y+5,usr.z)
				I.TS=1
				flick("rise",A)
				flick("rise",B)
				flick("rise",C)
				flick("rise",D)
				flick("rise",E)
				flick("rise",F)
				flick("rise",G)
				flick("rise",H)
				flick("rise",I)
				sleep(3)
				step(A,SOUTH)
				step(B,SOUTH)
				step(C,SOUTH)
				step(D,SOUTH)
				step(E,SOUTH)
				step(F,SOUTH)
				step(G,SOUTH)
				step(H,SOUTH)
				step(I,SOUTH)
				sleep(3)
				step(A,SOUTH)
				step(B,SOUTH)
				step(C,SOUTH)
				step(D,SOUTH)
				step(E,SOUTH)
				step(F,SOUTH)
				step(G,SOUTH)
				step(H,SOUTH)
				step(I,SOUTH)
				sleep(3)
				step(A,SOUTH)
				step(B,SOUTH)
				step(C,SOUTH)
				step(D,SOUTH)
				step(E,SOUTH)
				step(F,SOUTH)
				step(G,SOUTH)
				step(H,SOUTH)
				step(I,SOUTH)
				sleep(3)
				step(A,SOUTH)
				step(B,SOUTH)
				step(C,SOUTH)
				step(D,SOUTH)
				step(E,SOUTH)
				step(F,SOUTH)
				step(G,SOUTH)
				step(H,SOUTH)
				step(I,SOUTH)
				sleep(3)
				step(A,SOUTH)
				step(B,SOUTH)
				step(C,SOUTH)
				step(D,SOUTH)
				step(E,SOUTH)
				step(F,SOUTH)
				step(G,SOUTH)
				step(H,SOUTH)
				step(I,SOUTH)
				var/obj/Crater_Center/CT = new /obj/Crater_Center
				CT.loc = usr.loc
				TExecution(/obj/tengaishi/Darkness,10)
				spawn()usr.Cooldown(400,"Tengai Shinsei")
				sleep(10)
				del(A)
				del(B)
				del(C)
				del(D)
				del(E)
				del(F)
				del(G)
				del(H)
				del(I)
				del(CT)
				del(CT)
				usr.overlays-='chib.dmi'
				usr.CarTengai=0
				usr.aura=0



obj/tengaishi/Darkness //define the obj
	icon = 'invis.dmi' //give the obj an icon; icon_states can be used as well
	layer = MOB_LAYER+1 //give the obj a layer above that of the mob so that it has an 'overlay' appearence
	New() //Called by the new() proc in the 'parameter'
		spawn(10) del(src) //

mob/proc/TExecution(path,radius) //Define the 'parameter' with an arg that will reference a typepath. You may want to give the proc a different name (i.e. Execution to AoE_Param) in your game
	for(var/obj/T in orange(10,src)) //For every turf within radius tiles of the player, INCLUDING the location of the player...
		new path(T) //...create a new Darkness obj at the turf's location
	for(var/mob/M in orange(10,src)) //For every mob within radius tiles of the player, INCLUDING the location of the player...
		src.tengaidamage(M,radius)

mob/proc/tengaidamage(mob/M,radius)
	if(M.fantasma)
		return//Define the proc along with an arg referencing to the mob you're attacking and the radius of the attack
	var/damage=usr.nin/3.25 - M.Resistencia/2.25 //define the variable that will be used for damage dealing
	damage = damage/**(radius + 1 - get_dist(src,M))*/
	if(damage<=0)damage=0 //damage calculator formula that's felxible to ANY rang
	M.health -= damage //Subtract the calculated 'damage' from the mob's Health variable
	if(M.health<=0)
		M.Death(usr)



//========================================================================//
mob/var/tmp/cdgoukamek=0
mob/Jutsu
	verb
		KatonGoukaMekkyaku() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Katon: Gouka Mekkyaku"
			if(usr.cdgoukamek)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Katon: Gouka Mekkyaku</b>!"
				return
			usr.Handseals()
			if(usr.cast) // If the mob's cast var is one...
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(usr.chakra<=8000)
				usr<<"Não tem chakra o bastante.."
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
			if(usr.froze)
				usr<<"Você está paralisado"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			else // If the cast var isn't 1...
				usr.chakra-=8000
				if(usr.cdgoukamek)return
				usr.cdgoukamek=1
				spawn()usr.Cooldown(120,"Katon: Gouka Mekkyaku")
				if(usr.chakra<=8000)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz:  <FONT COLOR=#ff0000>K</FONT><FONT COLOR=#ff0700>a</FONT><FONT COLOR=#ff0e00>t</FONT><FONT COLOR=#ff1500>o</FONT><FONT COLOR=#ff1c00>n</FONT><FONT COLOR=#ff2300>:</FONT><FONT COLOR=#ff2a00> </FONT><FONT COLOR=#ff3100>G</FONT><FONT COLOR=#ff3800>o</FONT><FONT COLOR=#ff3f00>u</FONT><FONT COLOR=#ff4500>k</FONT><FONT COLOR=#ff3f00>a</FONT><FONT COLOR=#ff3800> </FONT><FONT COLOR=#ff3100>M</FONT><FONT COLOR=#ff2a00>e</FONT><FONT COLOR=#ff2300>k</FONT><FONT COLOR=#ff1c00>k</FONT><FONT COLOR=#ff1500>y</FONT><FONT COLOR=#ff0e00>a</FONT><FONT COLOR=#ff0700>k</FONT><FONT COLOR=#ff0000>u</FONT>"
				sleep(8)
				if(usr.dir == NORTH)
					var/obj/KGMEKI/A = new /obj/KGMEKI
					var/obj/KGMEKI/B = new /obj/KGMEKI
					var/obj/KGMEKI/C = new /obj/KGMEKI
					var/obj/KGMEKI/D = new /obj/KGMEKI
					var/obj/KGMEKI/E = new /obj/KGMEKI
					A.loc = locate(usr.x, usr.y+1, usr.z)
					C.loc = locate(usr.x+1, usr.y+1, usr.z)
					B.loc = locate(usr.x-1, usr.y+1, usr.z)
					D.loc = locate(usr.x-2, usr.y+1, usr.z)
					E.loc = locate(usr.x+2, usr.y+1, usr.z)
					A.nin=usr.nin/4.15 + usr.fogoN/1.75
					B.nin=usr.nin/4.15 + usr.fogoN/1.75
					C.nin=usr.nin/4.15 + usr.fogoN/1.75
					D.nin=usr.nin/4.15 + usr.fogoN/1.75
					E.nin=usr.nin/4.15 + usr.fogoN/1.75
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					D.Gowner=usr
					E.Gowner=usr
					A.dir = NORTH
					B.dir = NORTH
					C.dir = NORTH
					D.dir = NORTH
					E.dir = NORTH
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
					walk(D,usr.dir)
					walk(E,usr.dir)
					sleep(300)
					del(A)
					del(C)
					del(D)
					del(B)
					del(E)
					sleep(110)
				if(usr.dir == SOUTH)
					var/obj/KGMEKI/A = new /obj/KGMEKI
					var/obj/KGMEKI/B = new /obj/KGMEKI
					var/obj/KGMEKI/C = new /obj/KGMEKI
					var/obj/KGMEKI/D = new /obj/KGMEKI
					var/obj/KGMEKI/E = new /obj/KGMEKI
					A.loc = locate(usr.x, usr.y-1, usr.z)
					C.loc = locate(usr.x+1, usr.y-1, usr.z)
					B.loc = locate(usr.x-1, usr.y-1, usr.z)
					D.loc = locate(usr.x-2, usr.y-1, usr.z)
					E.loc = locate(usr.x+2, usr.y-1, usr.z)
					A.nin=usr.nin/4.15 + usr.fogoN/1.75
					B.nin=usr.nin/4.15 + usr.fogoN/1.75
					C.nin=usr.nin/4.15 + usr.fogoN/1.75
					D.nin=usr.nin/4.15 + usr.fogoN/1.75
					E.nin=usr.nin/4.15 + usr.fogoN/1.75
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					D.Gowner=usr
					E.Gowner=usr
					A.dir = SOUTH
					B.dir = SOUTH
					C.dir = SOUTH
					D.dir = SOUTH
					E.dir = SOUTH
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
					walk(D,usr.dir)
					walk(E,usr.dir)
					sleep(300)
					del(A)
					del(C)
					del(D)
					del(B)
					del(E)
					sleep(110)
				if(usr.dir == WEST)
					var/obj/KGMEKI/A = new /obj/KGMEKI
					var/obj/KGMEKI/C = new /obj/KGMEKI
					var/obj/KGMEKI/D = new /obj/KGMEKI
					var/obj/KGMEKI/B = new /obj/KGMEKI
					var/obj/KGMEKI/E = new /obj/KGMEKI
					A.loc = locate(usr.x-1, usr.y, usr.z)
					C.loc = locate(usr.x-1, usr.y-1, usr.z)
					D.loc = locate(usr.x-1, usr.y+1, usr.z)
					B.loc = locate(usr.x-1, usr.y+2, usr.z)
					E.loc = locate(usr.x-1, usr.y-2, usr.z)
					A.nin=usr.nin/4.15 + usr.fogoN/1.75
					B.nin=usr.nin/4.15 + usr.fogoN/1.75
					C.nin=usr.nin/4.15 + usr.fogoN/1.75
					D.nin=usr.nin/4.15 + usr.fogoN/1.75
					E.nin=usr.nin/4.15 + usr.fogoN/1.75
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					D.Gowner=usr
					E.Gowner=usr
					A.dir = WEST
					C.dir = WEST
					D.dir = WEST
					B.dir = WEST
					E.dir = WEST
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
					walk(D,usr.dir)
					walk(E,usr.dir)
					sleep(300)
					del(A)
					del(C)
					del(D)
					del(B)
					del(E)
					sleep(110)
				if(usr.dir == EAST)
					var/obj/KGMEKI/A = new /obj/KGMEKI
					var/obj/KGMEKI/C = new /obj/KGMEKI
					var/obj/KGMEKI/D = new /obj/KGMEKI
					var/obj/KGMEKI/B = new /obj/KGMEKI
					var/obj/KGMEKI/E = new /obj/KGMEKI
					A.loc = locate(usr.x+1, usr.y, usr.z)
					C.loc = locate(usr.x+1, usr.y-1, usr.z)
					D.loc = locate(usr.x+1, usr.y+1, usr.z)
					E.loc = locate(usr.x+1, usr.y+2, usr.z)
					B.loc = locate(usr.x+1, usr.y-2, usr.z)
					A.nin=usr.nin/4.15 + usr.fogoN/1.75
					B.nin=usr.nin/4.15 + usr.fogoN/1.75
					C.nin=usr.nin/4.15 + usr.fogoN/1.75
					D.nin=usr.nin/4.15 + usr.fogoN/1.75
					E.nin=usr.nin/4.15 + usr.fogoN/1.75
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					D.Gowner=usr
					E.Gowner=usr
					A.dir = EAST
					C.dir = EAST
					D.dir = EAST
					B.dir = EAST
					E.dir = EAST
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
					walk(D,usr.dir)
					walk(E,usr.dir)
					sleep(300)
					del(A)
					del(C)
					del(D)
					del(B)
					del(E)


obj
	caudagomeki
		icon='Jutsus.dmi'
		icon_state="firelineb"
		New()
			..()
			spawn(20)
			del(src)

obj
	KGMEKI
		icon = 'katonheki.dmi'
		icon_state = ""
		density = 1
		New()
			spawn(100) del src
			..()
		Move()
			..()
			var/obj/caudagomeki/T = new /obj/caudagomeki
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
				if(M.Kaiten||M.sphere)
					return
				if(!M.PK)
					usr<<"Zona Non-PK"
					return
				var/damage = O.nin/4.15 + O.fogoN/1.75 - M.Resistencia/2
				if(damage<=0)damage=0
				if(damage>= 1)
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					view(M) << "[M] foi acertado pelo Katon: Gouka Mekkyaku de [O] recebendo [damage] de dano!!"
					M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

//=========================================================================================//
mob/var/limbouses=0
mob/var/tmp/cdlimbo=0
obj
	bunshins
		Limbobunshin//being worked on dont use
			verb/Limbunshin()
				set name = "Criaturas do Limbo"
				set desc = "Cria Clones de outra Dimensão"
				set category = "Doujutsu"
				if(usr.cdlimbo)
					usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Criaturas do Limbo</b>!"
					return
				if(!usr.mson)
					usr<<"Vc precisa estar com o MS, FMS ou Rinnegan ativado"
					return
				if(usr.cast)
					usr<<"Não agora!"
					return
				if(usr.PK==0)
					usr<<"Zona NON-PK!!!"
					return
				if(usr.Frozen)
					usr<<"Você está Congelado"
					return
				if(usr.caught)
					usr<<"Você foi capturado"
					return
				if(usr.captured)
					usr<<"Você foi capturado"
					return
				if(usr.inso)
					usr<<"Não agora!"
					return
				if(usr.froze)
					usr<<"Você está congelado"
					return
				if(usr.resting)
					usr<<"Não enquanto descansa"
					return
				if(usr.meditating)
					usr<<"Não enquanto descansa"
					return
				if(usr.Kaiten||usr.counter)
					usr<<"Não agora!"
					return
				else
					if(usr.cdlimbo)return
					usr.cdlimbo=1
					spawn()usr.Cooldown(1600,"Criaturas do Limbo")
					usr.RandomChakra1()
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
//					usr.MokKage()
					if(usr.limbouses<5000)
						usr.cast = 1
						usr.KillBunshin()
						usr.limbouses += 1
						view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Criaturas do Limbo"
						var/mob/enemy/LimboK/K = new /mob/enemy/LimboK
						if(K)
							K.name = "Limbo de [usr.name]"
							K.original = usr
							K.icon = 'invis.dmi'
							K.loc = locate(usr.x-1, usr.y, usr.z)
							K.max_exp = 2
							K.limbonpc = 1
							K.Village = usr.Village
							K.exp = 2
							K.nin = usr.nin/6.5
							K.tai = usr.nin/3
							K.shurikenskill= usr.nin/6.5
							K.health = usr.maxhealth/2
						sleep(14)
						usr.cast=0
						usr.chakra -= 5000
					else
						usr.cast = 1
						usr.limbouses += 1
						view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Criaturas do Limbo"
						usr.KillBunshin()
						var/mob/enemy/LimboK/K = new /mob/enemy/LimboK
						var/mob/enemy/LimboK/L = new /mob/enemy/LimboK
						var/mob/enemy/LimboK/M = new /mob/enemy/LimboK
						var/mob/enemy/LimboK/N = new /mob/enemy/LimboK
						if(K)
							K.name = "Limbo de [usr.name]"
							K.original = usr
							K.icon = 'invis.dmi'
							K.loc = locate(usr.x-1, usr.y, usr.z)
							K.max_exp = 2
							K.limbonpc = 1
							K.Village = usr.Village
							K.exp = 2
							K.nin = usr.nin/4
							K.tai = usr.nin/3
							K.shurikenskill= usr.nin/10
							K.health = usr.maxhealth/2
						if(L)
							L.name = "Limbo de [usr.name]"
							L.original = usr
							L.icon = 'invis.dmi'
							L.loc = locate(usr.x+1, usr.y, usr.z)
							L.max_exp = 2
							L.limbonpc = 1
							L.Village = usr.Village
							L.exp = 2
							L.nin = usr.nin/4.5
							L.tai = usr.nin/3
							L.shurikenskill= usr.nin/10
							L.health = usr.maxhealth/2
						if(M)
							M.name = "Limbo de [usr.name]"
							M.original = usr
							M.icon = 'invis.dmi'
							M.loc = locate(usr.x+1, usr.y, usr.z)
							M.max_exp = 2
							M.limbonpc = 1
							M.Village = usr.Village
							M.exp = 2
							M.nin = usr.nin/4.5
							M.tai = usr.nin/3
							M.shurikenskill= usr.nin/10
							M.health = usr.maxhealth/2
						if(N)
							N.name = "[usr.name]"
							N.original = usr
							N.icon = 'invis.dmi'
							N.loc = locate(usr.x+1, usr.y, usr.z)
							N.max_exp = 2
							N.limbonpc = 1
							N.Village = usr.Village
							N.exp = 2
							N.nin = usr.nin/4.5
							N.tai = usr.nin/3
							N.shurikenskill= usr.nin/10
							N.health = usr.maxhealth/2
						sleep(14)
						usr.cast=0
						usr.chakra -= 5000


//=========================================================================//
mob
	enemy
		LimboK
		limbonpc=1
		waterwalk = 1
		NPC=1
		New()
			spawn(1200) del src
			..()
		Bump(atom/M)
			if(istype(M,/mob/))
				var/mob/OwNeR=src.original
				var/mob/P=M

				if( !OwNeR ) del src
				if( P == bowner||P == OwNeR||P.name==src.name ) return
				src.cast=1;spawn(10) src.cast=0

				var/Damage = src.tai - P.Resistencia/2
				if(Damage<0) Damage=0

				if(P.Kaiten) del(src)
				if(P.drunk&&P.NonClan)
					view()<<"[M] desvia do ataque de [src]"
					sleep(13)
					src.cast=0
					return

				P.health -= Damage
				F_damage(P, Damage, "#ff0000")
				view() << "[src] atacou [M] tirando um dano de [Damage]!"
				P.Death(src)


obj
	WindLimbo
		name = "ProjétilInvi"
		icon = 'invis.dmi'
		icon_state = ""
		worn = 0
		density=1
		price = 30000
		verb
			Olhar()
				usr<<"This is the Pein uses."
			Descartar()
				if(src.worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.windmills-=1
					//usr.SalvarAgora()
			Atirar()
				if(usr.cast)
					return
				if(usr.weaponthrow)
					return
				if(usr.PK==0)
					usr<<"Zona NON-PK!!!"
					return
				if(usr.meditating)
					usr<<"Não enquanto medita"
					return
				if(usr.treinamento)
					usr<<"Não enquanto upa tai"
					return
				if(usr.libering)
					usr<<"Não enquanto libera chakra"
					return
				if(usr.concing)
					usr<<"Não enquanto se concentra"
					return
				if(usr.vmeditating)
					usr<<"Não enquanto medita"
					return
				if(usr.vconcing)
					usr<<"Não enquanto concentra"
					return
				if(usr.vlibering)
					usr<<"Não enquanto libera chakra"
				return
				var/obj/WindLimbo/L = new()
				usr.weaponthrow=1
				usr.windmills-=1
				L.loc=usr.loc
				L.nin=src.nin
				L.dir = usr.dir
				L.Move_Delay=1.5
				L.Gowner=src.Gowner
				walk(L,usr.dir)
				sleep(10)
				del(L)
				src.loc=locate(usr.x,usr.y,usr.z)
				sleep(3)
				usr.weaponthrow=0
		New()
			spawn(30) del src
			..()
		Bump(A)
			/*var/mob/O = src.Gowner
			if(istype(A,/obj/Log))
				for(var/obj/Log/L in oview(3))
					if(L)
						usr<<"Você não pode estar tão próximo ao log."
						return
				O.random=rand(1,3)
				if(O.random==3)
					if(O.usr.Mshurikenskill<=O.cap)
						O<<"Sua habilidade com Shurikens aumenta!"
						O.usr.Mshurikenskill+=1
						O.shurikenskill=O.usr.Mshurikenskill*/
			if(ismob(A))
				var/mob/M = A
				var/mob/OwNeR=src.Gowner
				if( !OwNeR ) del src
				if( M==src.Gowner|| OwNeR==M || OwNeR.cast ) return
				if(M.Kaiten||M.sphere)
					return
				if(M.jashin)
					return
				if(M.bijuunpc)
					return
				var/damage = src.nin - M.Resistencia/2
				if(damage<=0)damage=0
				if(damage >= 1)
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					view(M) << "[M] foi atacado pela Criatura do Limbo de [OwNeR] tirando [damage] de dano!!"
					if(M.health<=0)
						M.Death(OwNeR)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(,/obj/))
				del(src)