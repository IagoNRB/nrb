obj
	var/num = 0       // This var is used later to help set the icon state
	var/width = 15   // this is basically the number of icon states you have
	var/rangemax      // the range of the var that each tile of the meter will deal with
	var/rangemin
	var/num2 = 0       // This var is used later to help set the icon state
	var/width2 = 100   // this is basically the number of icon states you have
	var/rangemax2      // the range of the var that each tile of the meter will deal with
	var/rangemin2

obj/var/tmp/gc=0







/*obj/susanooItachiCompleto
	completoI1
		icon = 'Susanoo Itachi - Copia.dmi'
		icon_state = "Susanoo Completo"
		density = 1
		layer = 5*/




obj/JintonGH
	JGH1
		icon = 'Jinton Genkai Hakuri no Jutsu.dmi'
		icon_state = "BaseESQ"
		density = 1
		layer = 5
		New()
			spawn(50) del(src)
	JGH2
		icon = 'Jinton Genkai Hakuri no Jutsu.dmi'
		icon_state = "BaseMEIO"
		density = 1
		layer = 5
		New()
			spawn(50) del(src)
	JGH3
		icon = 'Jinton Genkai Hakuri no Jutsu.dmi'
		icon_state = "BaseDIR"
		density = 1
		layer = 5
		New()
			spawn(50) del(src)
	JGH4
		icon = 'Jinton Genkai Hakuri no Jutsu.dmi'
		icon_state = "MeioESQ"
		density = 1
		layer =  5
		New()
			spawn(50) del(src)
	JGH5
		icon = 'Jinton Genkai Hakuri no Jutsu.dmi'
		icon_state = "MeioM - USUARIO"
		density = 1
		layer = 5
		New()
			spawn(50) del(src)
	JGH6
		icon = 'Jinton Genkai Hakuri no Jutsu.dmi'
		icon_state = "MeioDIR"
		density = 1
		layer = 5
		New()
			spawn(50) del(src)
	JGH7
		icon = 'Jinton Genkai Hakuri no Jutsu.dmi'
		icon_state = "TopoESQ"
		density = 1
		layer = 5
		New()
			spawn(50) del(src)
	JGH8
		icon = 'Jinton Genkai Hakuri no Jutsu.dmi'
		icon_state = "TopoMEIO"
		density = 1
		layer = 5
		New()
			spawn(50) del(src)
	JGH9
		icon = 'Jinton Genkai Hakuri no Jutsu.dmi'
		icon_state = "TopoDIR"
		density = 1
		layer = 5
		New()
			spawn(50) del(src)


obj/piramidegaara
	pir1
		icon = 'PiramideDividida.dmi'
		icon_state = "1"
		density = 1
		layer = 5
		New()
			spawn(50) del(src)

	pir2
		icon = 'PiramideDividida.dmi'
		icon_state = "2"
		density = 1
		layer = 5
		New()
			spawn(50) del(src)

	pir3
		icon = 'PiramideDividida.dmi'
		icon_state = "3"
		density = 1
		layer = 5
		New()
			spawn(50) del(src)

	pir4
		icon = 'PiramideDividida.dmi'
		icon_state = "4"
		density = 1
		layer =  5
		New()
			spawn(50) del(src)

	pir5
		icon = 'PiramideDividida.dmi'
		icon_state = "5"
		density = 1
		layer = 5
		New()
			spawn(50) del(src)
	pir6
		icon = 'PiramideDividida.dmi'
		icon_state = "6"
		density = 1
		layer = 5
		New()
			spawn(50) del(src)
	pir7
		icon = 'PiramideDividida.dmi'
		icon_state = "7"
		density = 1
		layer = 5
		New()
			spawn(50) del(src)
	pir8
		icon = 'PiramideDividida.dmi'
		icon_state = "8"
		density = 1
		layer = 5
		New()
			spawn(50) del(src)
	pir9
		icon = 'PiramideDividida.dmi'
		icon_state = "9"
		density = 1
		layer = 5
		New()
			spawn(50) del(src)






obj/DefmaeGaara
	defm1
		icon = 'MAEGAARAdividido.dmi'
		icon_state = "1"
		density = 1
		layer = 5
		New()
			spawn(50) del src
			..()
	defm2
		icon = 'MAEGAARAdividido.dmi'
		icon_state = "2"
		density = 1
		layer = 5
		New()
			spawn(50) del src
			..()
	defm3
		icon = 'MAEGAARAdividido.dmi'
		icon_state = "3"
		density = 1
		layer = 5
		New()
			spawn(50) del src
			..()
	defm4
		icon = 'MAEGAARAdividido.dmi'
		icon_state = "4"
		density = 1
		layer =  5
		New()
			spawn(50) del src
			..()
	defm5
		icon = 'MAEGAARAdividido.dmi'
		icon_state = "5"
		density = 1
		layer = 5
		New()
			spawn(50) del src
			..()
	defm6
		icon = 'MAEGAARAdividido.dmi'
		icon_state = "6"
		density = 1
		layer = 5
		New()
			spawn(50) del src
			..()
	defm7
		icon = 'MAEGAARAdividido.dmi'
		icon_state = "7"
		density = 1
		layer = 5
		New()
			spawn(50) del src
			..()
	defm8
		icon = 'MAEGAARAdividido.dmi'
		icon_state = "8"
		density = 1
		layer = 5
		New()
			spawn(50) del src
			..()
	defm9
		icon = 'MAEGAARAdividido.dmi'
		icon_state = "9"
		density = 1
		layer = 5
		New()
			spawn(50) del src
			..()




obj
	BladeEvento1
		name = "Blade1"
		icon = 'BladeDRAGONGALAXY.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state=""
		worn = 0
		price = 9999999999999999999999
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'BladeDRAGONGALAXY.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'BladeDRAGONGALAXY.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"É um Blade.Faz parte de evento."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
			Destruir()
				usr<<"Você destruiu a Blader"
				del(src)


obj
	BladeEvento2
		name = "Blade2"
		icon = 'BladeDRAGONGLAXYTURBO.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state=""
		worn = 0
		price = 9999999999999999999999
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'BladeDRAGONGLAXYTURBO.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'BladeDRAGONGLAXYTURBO.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"É um Blade.Faz parte de evento."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
			Destruir()
				usr<<"Você destruiu a Blader"
				del(src)

obj
	BladeEvento3
		name = "Blade3"
		icon = 'BladeDRANZERG.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state=""
		worn = 0
		price = 9999999999999999999999
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'BladeDRANZERG.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'BladeDRANZERG.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"É um Blade.Faz parte de evento."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
			Destruir()
				usr<<"Você destruiu a Blader"
				del(src)

obj
	BladeEvento4
		name = "Blade4"
		icon = 'BladeDRANZGIGTURB.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state=""
		worn = 0
		price = 9999999999999999999999
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'BladeDRANZGIGTURB.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'BladeDRANZGIGTURB.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"É um Blade.Faz parte de evento."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
			Destruir()
				usr<<"Você destruiu a Blader"
				del(src)

obj
	BladeEvento5
		name = "Blade5"
		icon = 'BladeIAGO.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state=""
		worn = 0
		price = 9999999999999999999999
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'BladeIAGO.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'BladeIAGO.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"É um Blade.Faz parte de evento."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

			Destruir()
				usr<<"Você destruiu a Blader"
				del(src)

obj
	BladeEvento6
		name = "Blade6"
		icon = 'BladeINFERNUS.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state=""
		worn = 0
		price = 9999999999999999999999
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'BladeINFERNUS.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'BladeINFERNUS.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"É um Blade.Faz parte de evento."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

			Destruir()
				usr<<"Você destruiu a Blader"
				del(src)

obj
	BladeEvento7
		name = "Blade7"
		icon = 'BladerDrigerG.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state=""
		worn = 0
		price = 9999999999999999999999
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'BladerDrigerG.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'BladerDrigerG.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"É um Blade.Faz parte de evento."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

			Destruir()
				usr<<"Você destruiu a Blader"
				del(src)

obj
	Flute
		name = "Flauta"
		icon = 'Flute.dmi'
		worn = 0
		price = 0
		verb
			Usar()
				if(src.worn)
					src.worn = 0
					usr.overlays -= 'Flute.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.flute = 0
					usr.swordD = 0
				else
					if(usr.flute)
						usr<<"Você apenas pode usar uma flauta por vez."
						return
					src.worn = 1
					usr.overlays += 'Flute.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					usr.swordD = 1
					usr.flute = 1
					usr.gen = usr.gen*1.1
			Olhar()

				usr<<"Esta é uma flauta comum."



obj
	DnaSenju
		name = "DNA Senju"
		icon='olhosharingan.dmi'
		verb
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]."
			Destruir()
				usr<<"Você destruiu o [src]."
				del(src)
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				//usr.SalvarAgora()

obj
	OlhoByakugan
		name = "Olho Byakugan"
		icon='byakuganthing.dmi'
		verb
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]."
			Destruir()
				usr<<"Você destruiu o [src]."
				del(src)
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				//usr.SalvarAgora()


obj
	OlhoMSObito
		name = "MS Obito"
		icon='olhosharingan.dmi'
		verb
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]."
			Destruir()
				usr<<"Você destruiu o [src]."
				del(src)
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				//usr.SalvarAgora()

obj
	OlhoMSSasuke
		name = "MS Sasuke"
		icon='olhosharingan.dmi'
		verb
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]."
			Destruir()
				usr<<"Você destruiu o [src]."
				del(src)
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				//usr.SalvarAgora()

obj
	OlhoMSItachi
		name = "MS Itachi"
		icon='olhosharingan.dmi'
		verb
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]."
			Destruir()
				usr<<"Você destruiu o [src]."
				del(src)
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				//usr.SalvarAgora()


obj
	OlhoMSShisui
		name = "MS Shisui"
		icon='olhosharingan.dmi'
		verb
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]."
			Destruir()
				usr<<"Você destruiu o [src]."
				del(src)
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				//usr.SalvarAgora()
obj
	OlhoMSMadara
		name = "MS Madara"
		icon='olhosharingan.dmi'
		verb
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]."
			Destruir()
				usr<<"Você destruiu o [src]."
				del(src)
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				//usr.SalvarAgora()


/*obj
	Katana
		name = "Katana"
		icon = 'katana.dmi'
		worn = 0
		price = 25000
		verb
			Usar()

				if(src.worn == 1)
					src.worn = 0
					usr.overlays -= 'katana.dmi'
					usr.verbs -= new /mob/Dark/verb/YamiBlade()
					usr<< "Vc removeu [src.name]."
					src.suffix = ""
					usr.swordD = 0
				else
					src.worn = 1
					usr.overlays += 'katana.dmi'
					usr<< "Vc equipou [src.name]."
					usr.verbs += new /mob/Dark/verb/YamiBlade()
					src.suffix = "Equipped"
					usr.swordD += usr.shurikenskill/2.5
			Olhar()

				usr<<"Essa é uma espada katana simples."
			Descartar()

				if(src.worn == 1)
					usr << "Not while its being worn."
				if(src.worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Vc pegou uma Katana [src]"*/


mob/var
	katana=0
	katanapega=0

obj
	Katana
		name = "Katana Antiga"
		icon = 'Espada Comum.dmi'
		icon_state = ""
		worn = 0
		price = 25000
		verb
			Descartar()
				if(src.worn == 1)
					usr << "Não enquanto você o usa."
				if(src.worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
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
					usr.verbs -= new /mob/katanaattack/verb/Atacar_com_Katana()
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
					usr.verbs += new /mob/katanaattack/verb/Atacar_com_Katana()
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




/*mob/Dark
	verb
		YamiBlade()//kaguya sword
			set name = "Usar Katana"
			set desc = ""
			set category = "Taijutsu"
			if (usr.cast == 1)
				usr<<"Not right now!"
			if (usr.chakra <= 500)
				usr<<"Not enough chakra."
			if(usr.froze)
				usr<<"Your frozen"
				return
			if(usr.Frozen)
				usr<<"Your frozen"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(usr.rank == "Student")
				usr << "Voce ainda nao sabe usar isso."
			else
				if(YB == 1)
					usr.overlays -= 'Katana-atack.dmi'
					usr.overlays += 'katana.dmi'
					usr << "Voce coloca a katana de volta na bainha"
					usr.tai = usr.Mtai
					YB = 0
				else
					usr.chakra -= 650
					usr.overlays += 'Katana-atack.dmi'
					usr.overlays -= 'katana.dmi'
					usr << "Voce tira sua Katana da bainha"
					usr.tai = usr.Mtai*1.2
					YB = 1*/

obj
	AnbuS
		name = "Anbu Suit"
		icon = 'ROUPA ANBU.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'ROUPA ANBU.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'ROUPA ANBU.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"This is Oficial Anbu Suit."
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
			Destroy()

				del(src)


obj
	AnbuKonoha
		name = "Anbu Suit Konoha"
		icon = 'Anbu Suit Konoha.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Anbu Suit Konoha.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Anbu Suit Konoha.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"This is Oficial Anbu Suit."
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
			Destroy()

				del(src)

obj
	AnbuKumo
		name = "Anbu Suit Kumo"
		icon = 'Anbu Suit Kumo.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Anbu Suit Kumo.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Anbu Suit Kumo.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"This is Oficial Anbu Suit."
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
			Destroy()
				del(src)

obj
	AnbuAme
		name = "Anbu Suit Ame"
		icon = 'Anbu Suit Ame.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Anbu Suit Ame.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Anbu Suit Ame.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"This is Oficial Anbu Suit."
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
			Destroy()
				del(src)

obj
	AnbuKiri
		name = "Anbu Suit Kiri"
		icon = 'Anbu Suit Kiri.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Anbu Suit Kiri.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Anbu Suit Kiri.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"This is Oficial Anbu Suit."
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
			Destroy()
				del(src)

obj
	AnbuSuna
		name = "Anbu Suit Suna"
		icon = 'Anbu Suit Suna.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Anbu Suit Suna.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Anbu Suit Suna.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"This is Oficial Anbu Suit."
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
			Destroy()
				del(src)

obj
	AnbuIwa
		name = "Anbu Suit Iwa"
		icon = 'Anbu Suit Iwa.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Anbu Suit Iwa.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Anbu Suit Iwa.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"This is Oficial Anbu Suit."
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
			Destroy()

				del(src)

obj
	AnbuCapuz
		name = "Capa Anbu"
		icon = 'AnbuCapuz.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'AnbuCapuz.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'AnbuCapuz.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"Uma capa da Anbu."
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
			Destroy()

				del(src)

obj
	AnbuCapuzB
		name = "Capa Anbu Branca"
		icon = 'AnbuCapuzBranco.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'AnbuCapuzBranco.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'AnbuCapuzBranco.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"Uma capa da Anbu."
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
			Destroy()

				del(src)

obj
	ShurikenGS
		name = "Shuriken Gigante"
		icon = 'ShurikenGSuit.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'ShurikenGSuit.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'ShurikenGSuit.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					usr.shurikenskill = usr.shurikenskill*1.1
			Olhar()

				usr<<"é uma shuriken pra se usar nas costas."
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
			Destroy()
				del(src)



obj
	RopSandaime
		name = "Sandaime suit"
		icon = 'rops.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'rops.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'rops.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"This is Oficial Sandaime suit."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"


obj
	BandanaSandaime
		name = "Sandaime Bandana"
		icon = 'bands.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'bands.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'bands.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"This is Oficial Sandaime bandana."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	RopMadara
		name = "Madara suit"
		icon = 'ropm.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'ropm.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'ropm.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"This is Oficial Madara suit."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"


obj
	AnbuCap
		name = "Anbu Suit"
		icon = 'CAPA ANBU CAP.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'CAPA ANBU CAP.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'CAPA ANBU CAP.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"This is Oficial Capa Anbu Suit."
			Destroy()

				del(src)
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"


obj
	Narutosen
		name = "Naruto Sennin Suit"
		icon = 'CAPA UZUMAKI EREMITA.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'CAPA UZUMAKI EREMITA.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'CAPA UZUMAKI EREMITA.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"This is Naruto especial Suit."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

mob/var/tmp/Lequeequipado=0
obj
	Fan
		name = "Leque"
		icon = 'Leque.dmi'
		worn = 0
		price = 25000
		verb
			Usar()
				if(usr.Weaponworn == 1)
					src.worn = 0
					usr.Weaponworn = 0
					usr.overlays -= 'Leque.dmi'
					usr << "Você removeu o [src.name]."
					src.suffix = ""
					usr.swordD = 0
					usr.Lequeequipado = 0
					usr.verbs -= new /mob/sword/verb/Atacar_com_Espada()
				else
					src.worn = 1
					usr.Weaponworn = 1
					usr.overlays += 'Leque.dmi'
					usr << "Você coloca o [src.name]."
					src.suffix = "Equipado"
					usr.Lequeequipado = 1
					usr.verbs += new /mob/sword/verb/Atacar_com_Espada()
			Olhar()
				usr<<"Este é o leque da Temari."
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	var
		worn = 0
		have = 0
	Weights
		name = "Pesos"
		icon = 'Pesos.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 10000
		verb
			Usar()
				if(usr.health <= 1)
					usr<<"Você não tem vida suficiente para usar pesos!"
					return
				if(src.worn)
					if(usr.Frozen||usr.froze)
						usr<<"Não pode fazer isto, está parado treinando!"
						return
					src.worn = 0
					usr.overlays -= 'Weights.dmi'//temp icon
					usr.Move_Delay = 0.7
					usr.Weights = 0
					usr << "Você removeu o(a) [src.name]."
				else
					if(usr.Frozen||usr.froze)
						usr<<"Não pode fazer isto, está parado treinando!"
						return
					src.worn = 1
					usr.Savedspeed = usr.Move_Delay
					usr.overlays += 'Weights.dmi'
					usr << "Você coloca o(a) [src.name]."
					usr.Weights = 1
			Descartar()
				if(src.worn)
					usr << "Não enquanto você o usa."
				if(!src.worn)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou o(a) [src]"


obj
	Shoes
		name = "Shoes"
		icon = 'Cloths.dmi'//dont have a base icon so cant make weights icon!lol
		price = 100
		worn = 0
		verb
			Usar()

				if(!src.worn)
					src.worn=1
					usr.overlays += 'Cloths.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
				else
					src:worn = 0
					usr.overlays -= 'Cloths.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.overlays -= 'Cloths.dmi'
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou o(a) some [src]"

obj
	Perg
		name = "Pergaminho"
		icon = 'pregaminho.dmi'//dont have a base icon so cant make weights icon!lol
		price = 100
		worn = 0
		verb
			Usar()

				if(!src.worn)
					src.worn=1
					usr.overlays += 'pregaminho.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
				else
					src:worn = 0
					usr.overlays -= 'pregaminho.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.overlays -= 'pregaminho.dmi'
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou o(a) some [src]"


mob/var/shirtI
obj
	Shirt
		name = "Shirt"
		icon = 'shirt.dmi'//dont have a base icon so cant make weights icon!lol
		price = 750
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'shirt.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.overlays-= usr.shirtI
				else
					src:worn = 1
					var/shirtred = input("Quanto vermelho quer?") as num
					var/shirtblue = input("Quanto azul quer?") as num
					var/shirtgreen = input("Quanto verde quer?") as num
					usr.shirtI = 'shirt.dmi'
					usr.shirtI += rgb(shirtred,shirtgreen,shirtblue)
					usr.rshirt = shirtred
					usr.gshirt = shirtgreen
					usr.bshirt = shirtblue
					usr.overlays += usr.shirtI
					usr.SI = usr.shirtI
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou o(a) some [src]"

obj
	SasukeShirt
		name = "Sasuke Shirt"
		icon = 'SasukeShirt.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'SasukeShirt.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'SasukeShirt.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"This is a shirt."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"




obj
	RoupaVeterano
		name = "Roupa Veterano"
		icon = 'Roupa Veterano.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Roupa Veterano.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Roupa Veterano.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"Este é Roupa Veterano."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"





obj
	RoupaStaff
		name = "Roupa da Staff"
		icon = 'Icon Staff PAULO.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Icon Staff PAULO.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Icon Staff PAULO.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"Este é Roupa da Staff."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"





obj
	CapaMissao
		name = "Capa de Missão"
		icon = 'Capademissão.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Capademissão.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Capademissão.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"Esta é Capa de Missão."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"


obj
	StaffYUKRoupa
		name = "Roupa YuK"
		icon = 'RoupaStaffYUK.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'RoupaStaffYUK.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'RoupaStaffYUK.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"Este é Roupa YuK."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"




obj
	StaffSuiRoupa
		name = "Roupa Sui Staff"
		icon = 'Roupa Staff Suigetsu.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Roupa Staff Suigetsu.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Roupa Staff Suigetsu.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"Este é Roupa Sui Staff."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	RoupaRaikageCalca
		name = "Calça do Raikage"
		icon = 'RaikageCALÇAS.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'RaikageCALÇAS.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'RaikageCALÇAS.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"Este é Calça do Raikage."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"


obj
	RoupaFury
		name = "Roupa Fury"
		icon = 'RoupaFury.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'RoupaFury.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'RoupaFury.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"Este é Roupa Fury."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"


obj
	RoupaKillerBee
		name = "Roupa Killer Bee"
		icon = 'RoupaKillerBSUBCLAN.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'RoupaKillerBSUBCLAN.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'RoupaKillerBSUBCLAN.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"Este é Roupa Killer Bee."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"


obj
	RikudouNaruto
		name = "Rikudou Naruto"
		icon = 'NarutoNovo.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'NarutoNovo.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'NarutoNovo.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"Este é Rikudou Naruto."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	RoupaKen
		name = "Ken Roupa"
		icon = 'Icon Ken.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Icon Ken.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Icon Ken.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"Este é Ken Roupa."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"


obj
	RoupaKyuubi
		name = "Kyuubi Roupa"
		icon = 'Roupa-Kyuubi.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Roupa-Kyuubi.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Roupa-Kyuubi.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"Este é Kyuubi Roupa."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"


obj
	RoupaKyuubiDark
		name = "Kyuubi Dark Roupa"
		icon = 'Roupa dark kyuubi recolor by samy.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Roupa dark kyuubi recolor by samy.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Roupa dark kyuubi recolor by samy.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"Este é Kyuubi Dark Roupa."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

mob/var/tmp/Escudoequipado=0
obj
	EscudoMadara
		name = "Escudo Madara"
		icon = 'Madara Fan.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Madara Fan.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.Escudoequipado=0
				else
					src:worn = 1
					usr.overlays += 'Madara Fan.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					usr.Escudoequipado=1
			Olhar()

				usr<<"Este é Escudo Madara."

			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	Cajado6Caminhos
		name = "Cajado dos 6 Caminhos"
		icon = '6 Paths Madara Staff.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= '6 Paths Madara Staff.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += '6 Paths Madara Staff.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"Este é o Cajado dos 6 Caminhos."

			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	SoldadoInvernalIcon
		name = "Soldado Invernal Icon"
		icon = 'Soldado Invernal Icon.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Soldado Invernal Icon.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Soldado Invernal Icon.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"Este é Soldado Invernal Icon."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

mob/var/usandoarmadurau
obj
	ArmaduraUltraResistente
		name = "Armadura Ultra Resistente"
		icon = 'Armadura Ultra resistente.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Armadura Ultra resistente.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.usandoarmadurau=0
				else
					src:worn = 1
					usr.overlays += 'Armadura Ultra resistente.dmi'
					usr << "Você coloca o(a) [src.name]. Você sente o poder correndo em seu corpo..."
					src.suffix = "Equipado"
					usr.usandoarmadurau=1
			Olhar()

				usr<<"Esta é a Armadura Ultra Resistente."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"



mob/var/usandoarmaduraa=0
obj
	ArmaduraAndromeda
		name = "Armadura Andromeda"
		icon = 'Armadura Andromeda.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Armadura Andromeda.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.usandoarmaduraa=0
				else
					src:worn = 1
					usr.overlays += 'Armadura Andromeda.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					usr.usandoarmaduraa=1
			Olhar()

				usr<<"Esta é a Armadura Andromeda."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"



obj
	IconRyuu
		name = "Icon Ryuu"
		icon = 'Icon pro char do Paulo.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Icon pro char do Paulo.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Icon pro char do Paulo.dmi'
					usr << "Você coloca o(a) [src.name]."
					usr.Resistencia += usr.Resistencia*1.1
					src.suffix = "Equipado"
			Olhar()

				usr<<"Este é o Icon do Ryuu."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"







obj
	UserArmaSuit
		name = "Usuario de Arma Suit"
		icon = 'Roupa de usuario Armamentista.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Roupa de usuario Armamentista.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Roupa de usuario Armamentista.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"This is a shirt."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	SasukeKidSuit
		name = "Sasuke Kid Suit"
		icon = 'Roupa Sasuke Kid.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Roupa Sasuke Kid.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Roupa Sasuke Kid.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"This is a shirt."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	Pants
		name = "Pants"
		icon = 'pants.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'pants.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.overlays -= usr.Picon
				else
					src:worn = 1
					var/pantsred = input("Quanto vermelho quer?") as num
					var/pantsblue = input("Quanto azul quer?") as num
					var/pantsgreen = input("Quanto verde quer?") as num
					var/pantsI = 'pants.dmi'
					pantsI += rgb(pantsred,pantsgreen,pantsblue)
					usr.rpants = pantsred
					usr.gpants = pantsgreen
					usr.bpants = pantsblue
					usr.overlays += pantsI
					usr.Picon = pantsI
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"This is a shirt."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou o(a) some [src]"





obj
	hair
		layer = FLOAT_LAYER - 2




obj
	KagebunshinS
		name = "Kage bunshin scroll"
		icon = 'scroll.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state = "1"
		worn = 0
		price = 158
		verb
			Aprender()

				if(usr.learntK == 0)
					if(usr.rank == "Estudante")
						return
					if(usr.BunshinN<200)
						usr<<"Você ainda nao pode aprendê-lo, você precisa ter feito 200 Bunshins antes..."
						return
					if(usr.BunshinN>=200)
						usr << "<I><B><font face = courier><font color = blue>Você aprendeu o Kage Bunshin No Jutsu!";usr.verbs += new /obj/bunshins/KageBunshinnojutsu/verb/KageBunshinNoJutsu()
						usr:learntK = 1
				else ..()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"



obj
	Ramenobj
		name = "Ramen"
		icon = 'things.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state="ramen"


obj
	Ramen
		name = "Ramen"
		icon = 'things.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state="ramen"
		verb
			Comer()
				set name = "Comer Ramen"
				if(usr.cdramen)
					usr << "<b>Cooldown:</b> Aguarde para comer novamente o <b>Ramen</b>!"
					return
				if(usr.cdramen)return
				usr.cdramen=1
				spawn() usr.Cooldown(50,"Ramen")
				usr<<"Você comeu um pouco de Ramen"
				usr.calories += 50000
				del(src)
			Olhar()
				usr<<"Uma tigela de Ramen."
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) tijela de [src]"

obj
	Hpp
		name = "Frasco pequeno de Remedio"
		icon = 'experimentos.dmi'
		icon_state="rpequeno"
		verb
			Usar()
				set name = "Usar Frasco"
				if(usr.cdfrascomedico)
					usr << "<b>Cooldown:</b> Aguarde para usar novamente o <b>Frasco Pequeno de Remedio</b>!"
					return
				if(usr.health < usr.maxhealth)
					if(src.usado)return
					if(usr.cdfrascomedico)return
					usr.cdfrascomedico=1
					spawn() usr.Cooldown(150,"Frasco Pequeno de Remedio")
					usr<<"Você usou o frasco"
					src.usado=1
					flick('recuperarhp.dmi',usr)
					usr.health += usr.maxhealth/20
					if(usr.health>=usr.maxhealth)usr.health=usr.maxhealth
					F_damage(usr, usr.maxhealth/20, "#008000")
					//spawn(30)usr.overlays-='vida.dmi'
					sleep(150)
					del(src)
			Olhar()
				usr<<"Este é um remedio pequeno."
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	Hpg
		name = "Kit Medico"
		icon = 'experimentos.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state="rgrande"
		verb
			Usar()
				set name = "Usar Kit"
				if(usr.cdkitmedico)
					usr << "<b>Cooldown:</b> Aguarde para usar novamente o <b>Kit Médico</b>!"
					return
				if(usr.health < usr.maxhealth)
					if(src.usado)return
					if(usr.cdkitmedico)return
					usr.cdkitmedico=1
					spawn() usr.Cooldown(200,"Kit Medico")
					usr<<"Você usou o remédio"
					src.usado=1
					flick('recuperarhp.dmi',usr)
					usr.health += usr.maxhealth/10
					if(usr.health>=usr.maxhealth)usr.health=usr.maxhealth
					F_damage(usr, usr.maxhealth/10, "#008000")
					//spawn(30)usr.overlays-='vida.dmi'
					sleep(200)
					del(src)
			Olhar()

				usr<<"Este é um remedio grande."
			Descartar()

				src.loc=locate(usr.x,usr.y-1,usr.z)
				//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	Ant
		name = "Antidoto"
		icon = 'experimentos.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state="cpequeno"
		verb
			Usar()
				if(usr.cdantidoto2)
					usr << "<b>Cooldown:</b> Aguarde para usar novamente o <b>Antídoto</b>!"
					return
				if(usr.cdantidoto2)return
				if(src.usado)return
				usr.cdantidoto2=1
				spawn() usr.Cooldown(20,"Usar Antidoto")
				src.usado=1
				usr<<"Você usou o antidoto"
				flick('saiuveneno.dmi',usr)
				if(usr.poisoned||usr.Apoisoned)
					usr.poisoned=0
					usr.Apoisoned=0
				else if(usr.poisoned2)
					usr.random=rand(1,2)
					if(usr.random==1)
						usr<<"<font size=1>Você usou o antidoto e conseguiu se curar!"
						usr.poisoned2=0
					else
						usr<<"O Veneno parece ser mais forte e o antídoto falhou!"
				else if(usr.poisoned3)
					usr.random=rand(1,3)
					if(usr.random==2)
						usr<<"<font size=1>Você usou o antidoto e conseguiu se curar!"
						usr.poisoned3=0
					else
						usr<<"O Veneno parece ser mais forte que outros e o antídoto falhou!"
				else if(usr.poisoned4)
					usr.random=rand(1,4)
					if(usr.random==3)
						usr<<"<font size=1>Você usou o antidoto e conseguiu se curar!"
						usr.poisoned4=0
					else
						usr<<"O Veneno parece ser muito mais forte que outros e o antídoto falhou!"
				else if(usr.poisoned5)
					usr.random=rand(1,5)
					if(usr.random==4)
						usr<<"<font size=1>Você usou o antidoto e teve muita sorte, pois conseguiu se curar!"
						usr.poisoned5=0
					else
						usr<<"O Veneno parece ser de um verdadeiro mestre e o antídoto falhou!"
				sleep(300)
				del(src)
			Olhar()
				usr<<"Este é um antidoto."
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"


mob/var/tmp/drunk=0
obj
	Sake
		name = "Sake"
		icon = 'things.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state="sake"
		verb
			Beber()
				set name = "Beber Sake"
				if(usr.cdsake)
					usr << "<b>Cooldown:</b> Aguarde para beber novamente o <b>Sake</b>!"
					return
				if(usr.cdsake)return
				usr.cdsake=1
				spawn() usr.Cooldown(200,"Sake")
				usr.drunk=1
				usr<<"Você começa a se sentir relaxado e pesado..."
				spawn(350)
					usr<<"O Efeito do Sake passou"
					usr.drunk=0
					del(src)
			Olhar()

				usr<<"É uma garrafinha de Sake"
			Descartar()

				src.loc=locate(usr.x,usr.y-1,usr.z)
				//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	Soup
		name = "Sopa de Vegetais"
		icon = 'things.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state="veggies"
		verb
			Comer()
				set name = "Comer Sopa"
				if(usr.cdsopa)
					usr << "<b>Cooldown:</b> Aguarde para comer novamente a <b>Sopa</b>!"
					return
				if(src.usado)return
				if(usr.health < usr.maxhealth)
					if(usr.cdsopa)return
					usr.cdsopa=1
					spawn() usr.Cooldown(50,"Sopa")
					src.usado=1
					usr<<"Você come um pouco da Sopa de Vegetais"
					flick('recuperarhp.dmi',usr)
					usr.health += usr.maxhealth/50
					if(usr.health>=usr.maxhealth)usr.health=usr.maxhealth
					F_damage(usr, usr.maxhealth/50, "#008000")
					usr.calories += 20000
					sleep(50)
					del(src)
			Olhar()

				usr<<"Essa é uma tigela de Sopa de Vegetais."
			Descartar()

				src.loc=locate(usr.x,usr.y-1,usr.z)
				//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	Salgadinho
		name = "Salgadinho"
		icon = 'Salgadinho.dmi'//dont have a base icon so cant make weights icon!lol
		verb
			Comer()
				set name = "Salgadinho"
				if(usr.cdsopa)
					usr << "<b>Cooldown:</b> Aguarde para comer novamente o <b>Salgadinho</b>!"
					return
				if(src.usado)return
				if(usr.cdsopa)return
				usr.cdsopa=1
				spawn() usr.Cooldown(20,"Sopa")
				src.usado=1
				usr<<"Você come um Salgadinho"
				usr.calories += 10000
				sleep(20)
				del(src)
			Olhar()

				usr<<"Essa é uma tigela de Sopa de Vegetais."
			Descartar()

				src.loc=locate(usr.x,usr.y-1,usr.z)
				//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	ShinoS
		name = "Shino Suit"
		icon = 'Roupa Shino Shipp.dmi'
		worn = 0
		price = 750
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Roupa Shino Shipp.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Roupa Shino Shipp.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"É um sobretudo."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj/var/tmp/tagset=0
obj/var/tmp/counter=0
obj
	ExplodingTag
		name = "Tarja Explosiva"
		icon = 'explodingtag.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 1000
		New()
			..()
			spawn()
				src.CheckAmount()
		proc
			CheckAmount()
				src.name= "[oname] ([src.ammount])"
		verb
			Olhar()

				usr<<"Essa é uma Tarja Explosiva."
			Descartar()

				for(var/obj/ExplodingTag/O in usr.contents)
					if(O.ammount<=0)
						del(src)
					else
						var/drop = input("Quantas Tarjas Explosivas você quer dropar?")as num
						if(src.ammount>drop)
							usr<<"Você não tem tudo isso para dropar."
							return
						if(drop<=0)
							usr<<"Você não pode fazer isso."
							return
						if(src.ammount>=drop)
							src.ammount-=drop
							var/obj/ExplodingTag/B = new/obj/ExplodingTag
							B.loc=locate(usr.x,usr.y-1,usr.z)
							B.ammount=drop
							view(usr)<<"[usr] dropa [drop] Tarja Explosivas."
							if(src.ammount<=0)
								del(src)
				//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				if(src.tagset)
					usr<<"Ela já foi ativada...é melhor sair de perto enquanto há tempo!"
					return
				else
					usr<<"Você pegou um(a) [src]"
					var/counter=0
					for(var/obj/ExplodingTag/O in usr.contents)
						counter+=1
					if(counter<=0)
						Move(usr)
					else
						for(var/obj/ExplodingTag/O in usr.contents)
							O.ammount+=src.ammount
							O.name= "[O.name] ([O.ammount])"
							del(src)
			SetTag(mob/M in view(3))
				if(usr.cast)
					usr<<"Não agora."
					return
				if(M.PK==0)
					usr<<"Zona NON-PK!!!"
					return
				if(usr.Frozen||usr.froze||usr.kawa)
					usr<<"Não agora!"
					return
				if(usr.tagset>=5)
					usr<<"Você apenas pode ativar 5 Tarjas por vez."
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
				if(!src.tagset)
					var/obj/ExplodingTag/B = new/obj/ExplodingTag
					B.loc = M.loc
					B.ammount-=1
					B.Gowner=usr
					B.tagset=1
					usr.tagset+=1
					B.icon_state="fire"
					usr.verbs+= new /mob/tag/verb/Explode
					for(var/obj/ExplodingTag/O in usr.contents)
						O.ammount-=1
						if(O.ammount<=0)
							del(O)
						else
							src.name="[O.oname] ([O.ammount])"

					/*usr.random=rand(1,3)
					if(usr.random==3)
						usr<<"Sua habilidade com armadilhas aumentou!"
						usr.Mtrapskill+=1
						usr.trapskill=usr.Mtrapskill*/







mob/tag
	verb
		Explode(mob/M in view(5))
			set category = "Tarja Explosiva"
			for(var/obj/ExplodingTag/T in view(7))
				if(usr.cdtarja)
					usr << "<b>Cooldown:</b> Aguarde para usar novamente a <b>Tarja Explosiva</b>!"
					return
				if(usr.Frozen||usr.froze||usr.kawa)
					usr<<"Não agora!"
					return
				if(M.PK==0)
					usr<<"NONPK"
					return
				if(usr.cast)
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
				if(T.Gowner==usr&&T.tagset)
					if(usr.cdtarja)return
					usr.cdtarja=1
					spawn()usr.Cooldown(60,"Tarja Explosiva")
					flick("explode",T)
					view(T)<<"As tarjas explosivas de [usr] explodem!"
					usr.tagset-=1
					var/damage=usr.shurikenskill/3.5 - M.Resistencia/2
					if(damage<=0)damage=0
					sleep(5)
					del(T)
					M<<"Você foi acertado pela Tarja Explosiva de [usr] recebendo [damage] de dano!"
					usr<<"Você acertou [M] com sua Tarja Explosiva recebendo [damage] de dano!"
					M.health-=damage
					F_damage(M, damage, "#ff0000")
					usr.tagset-=0
					if(M.health<=0)
						M.Death(usr)
					for(var/mob/npcs/Bunshin/B in oview(3,T))
						flick("smoke2",B)
						sleep(4)
						del(B)
					usr.random=rand(1,3)
					/*if(usr.random==3)
						usr<<"Sua habilidade com armadilhas aumenta!"
						usr.Mtrapskill+=1
						usr.trapskill=usr.Mtrapskill*/
			usr.verbs-= new /mob/tag/verb/Explode
			usr.verbs-= new /mob/tag/verb/Explode



obj/var/oname=""
obj
	Shuriken
		name = "Shuriken"
		icon = 'shuriken.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		density=1
		oname="Shuriken"
		price = 1000
		New()
			..()
			spawn()
				src.CheckAmount()
		proc
			CheckAmount()
				src.name= "[oname] ([src.ammount])"
		verb
			Olhar()

				usr<<"Essa é uma Shuriken comum."
			Descartar()

				for(var/obj/Shuriken/O in usr.contents)
					if(O.ammount<=0)
						del(src)
					else
						var/drop = input("Quantas Shurikens você deseja dropar?")as num
						if(src.ammount>drop)
							usr<<"Você não tem tantas Shurikens com você."
							return
						if(drop<=0)
							usr<<"Não."
							return
						if(src.ammount>=drop)
							src.ammount-=drop
							var/obj/Shuriken/B = new/obj/Shuriken
							B.loc=locate(usr.x,usr.y-1,usr.z)
							B.ammount=drop
							view(usr)<<"[usr] dropa [drop] Shurikens."
							if(src.ammount<=0)
								del(src)
				//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				usr<<"Você pegou o(a) [src]"
				for(var/obj/Shuriken/O in usr.contents)
					usr.Shurcounter+=1
				if(usr.Shurcounter<=0)
					Move(usr)
				else
					for(var/obj/Shuriken/O in usr.contents)
						O.ammount+=src.ammount
						O.name= "[O.name] ([O.ammount])"
						del(src)
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
				var/obj/Shuriken/L = new()
				L.loc=usr.loc
				usr.weaponthrow=1
				L.tai=usr.shurikenskill/4.25
				L.dir = usr.dir
				L.Move_Delay=1.5
				L.Gowner=usr
				walk(L,usr.dir)
				for(var/obj/Shuriken/O in usr.contents)
					O.ammount-=1
					if(O.ammount<=0)
						del(O)
					else
						src.name="[O.oname] ([O.ammount])"
				sleep(20)
				usr.weaponthrow=0
				sleep(30)
		Bump(A)
			var/mob/O = src.Gowner
			/*if(istype(A,/obj/Log))
				for(var/obj/Log/L in oview(3,O))
					if(L)
						O<<"Você não pode estar tão próximo ao log."
						O.weaponthrow=0
						del(src)
						return

				O.random=rand(1,3)
				if(O.random==3)
					if(O.usr.Mshurikenskill<=O.cap)
						O<<"Sua habilidade com Shurikens aumenta!"
						O.usr.Mshurikenskill+=1
						O.shurikenskill=O.usr.Mshurikenskill
					else
						O<<"Você chegou ao seu cap de Shuriken."
				if(O.random==1)
					if(O.usr.Mshurikenskill<=O.cap)
						O<<"Sua habilidade com Shurikens aumenta!"
						O.usr.Mshurikenskill+=1
						O.shurikenskill=O.usr.Mshurikenskill
					else
						O<<"Você chegou ao seu cap de Shuriken."*/
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				var/damage = src.tai - M.Resistencia
				if(damage >= 1)
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					view(M) << "[M] foi acertado pela Shuriken de [O] perdendo [damage] de vida!"
					M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	Bombas
		name = "Bombas de Fumaça"
		icon = 'bomba.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		density=1
		price = 1000
		verb
			Olhar()
				usr<<"Esses sao bombas que liberam fumaça  de uso ninja."
			Descartar()
				if(src.worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.makis-=1
					//usr.SalvarAgora()
			Pegar()
				if(usr.bombas < 3)
					set src in oview(1)
					src.loc = usr
					usr<<"Você pegou um(a) [src]"
				else
					usr<<"Vc só pode carregar 3 por vez."
			Usar()
				if(usr.PK==0)
					usr<<"Zona NON-PK!!!"
					return
				if(usr.bombas>=1)
					usr.bombas-=1
					var/obj/Bdf/F = new /obj/Bdf/
					var/obj/Bdf/G = new /obj/Bdf/
					var/obj/Bdf/H = new /obj/Bdf/
					var/obj/Bdf/I = new /obj/Bdf/
					var/obj/Bdf/J = new /obj/Bdf/
					var/obj/Bdf/L = new /obj/Bdf/
					var/obj/Bdf/A = new /obj/Bdf/
					var/obj/Bdf/B = new /obj/Bdf/
					var/obj/Bdf/M2 = new /obj/Bdf/
					var/obj/Bdf/N = new /obj/Bdf/
					var/obj/Bdf/O = new /obj/Bdf/
					var/obj/Bdf/P = new /obj/Bdf/
					var/obj/Bdf/D = new /obj/Bdf/
					var/obj/Bdf/E = new /obj/Bdf/
					var/obj/Bdf/C = new /obj/Bdf/
					var/obj/Bdf/K = new /obj/Bdf/
					var/obj/Bdf/Q = new /obj/Bdf/
					var/obj/Bdf/R = new /obj/Bdf/
					var/obj/Bdf/S = new /obj/Bdf/
					var/obj/Bdf/T = new /obj/Bdf/
					var/obj/Bdf/W = new /obj/Bdf/
					var/obj/Bdf/X = new /obj/Bdf/
					var/obj/Bdf/Y = new /obj/Bdf/
					var/obj/Bdf/Z = new /obj/Bdf/
					var/obj/Bdf/AB = new /obj/Bdf/
					var/obj/Bdf/AC = new /obj/Bdf/
					var/obj/Bdf/AD = new /obj/Bdf/
					var/obj/Bdf/AE = new /obj/Bdf/
					var/obj/Bdf/AF = new /obj/Bdf/
					var/obj/Bdf/AG = new /obj/Bdf/
					var/obj/Bdf/AH = new /obj/Bdf/
					var/obj/Bdf/AI = new /obj/Bdf/
					var/obj/Bdf/AJ = new /obj/Bdf/
					var/obj/Bdf/AK = new /obj/Bdf/
					var/obj/Bdf/AL = new /obj/Bdf/
					var/obj/Bdf/AM = new /obj/Bdf/
					var/obj/Bdf/AN = new /obj/Bdf/
					var/obj/Bdf/AO = new /obj/Bdf/
					var/obj/Bdf/AP = new /obj/Bdf/
					var/obj/Bdf/AQ = new /obj/Bdf/
					var/obj/Bdf/AR = new /obj/Bdf/
					var/obj/Bdf/AS = new /obj/Bdf/
					var/obj/Bdf/AT = new /obj/Bdf/
					var/obj/Bdf/AU = new /obj/Bdf/
					var/obj/Bdf/AV = new /obj/Bdf/
					var/obj/Bdf/AW = new /obj/Bdf/
					var/obj/Bdf/AX= new /obj/Bdf/
					var/obj/Bdf/AY = new /obj/Bdf/
					var/obj/Bdf/AZ = new /obj/Bdf/
					A.owner=usr
					B.owner=usr
					C.owner=usr
					D.owner=usr
					E.owner=usr
					F.owner=usr
					G.owner=usr
					H.owner=usr
					I.owner=usr
					J.owner=usr
					K.owner=usr
					L.owner=usr
					M2.owner=usr
					N.owner=usr
					O.owner=usr
					P.owner=usr
					Q.owner=usr
					R.owner=usr
					S.owner=usr
					T.owner=usr
					W.owner=usr
					X.owner=usr
					Y.owner=usr
					Z.owner=usr
					AB.owner=usr
					AC.owner=usr
					AD.owner=usr
					AE.owner=usr
					AF.owner=usr
					AG.owner=usr
					AH.owner=usr
					AI.owner=usr
					AJ.owner=usr
					AK.owner=usr
					AL.owner=usr
					AM.owner=usr
					AN.owner=usr
					AO.owner=usr
					AP.owner=usr
					AQ.owner=usr
					AR.owner=usr
					AS.owner=usr
					AV.owner=usr
					AW.owner=usr
					AX.owner=usr
					AY.owner=usr
					AZ.owner=usr
					AU.owner=usr
					AV.owner=usr
					K.loc = locate(usr.x,usr.y,usr.z)
					K.Bdf1=1
					A.loc = locate(usr.x+1,usr.y,usr.z)
					A.Bdf1=1
					C.loc = locate(usr.x-1,usr.y,usr.z)
					C.Bdf1=1
					B.loc = locate(usr.x,usr.y+1,usr.z)
					B.Bdf1=1
					D.loc = locate(usr.x,usr.y-1,usr.z)
					D.Bdf1=1
					E.loc = locate(usr.x+1,usr.y+1,usr.z)
					E.Bdf1=1
					F.loc = locate(usr.x-1,usr.y-1,usr.z)
					F.Bdf1=1
					G.loc = locate(usr.x-1,usr.y+1,usr.z)
					G.Bdf1=1
					H.loc = locate(usr.x+1,usr.y-1,usr.z)
					H.Bdf1=1
					I.loc = locate(usr.x+2,usr.y,usr.z)
					I.Bdf1=1
					J.loc = locate(usr.x-2,usr.y,usr.z)
					J.Bdf1=1
					L.loc = locate(usr.x,usr.y+2,usr.z)
					L.Bdf1=1
					M2.loc = locate(usr.x,usr.y-2,usr.z)
					M2.Bdf1=1
					N.loc = locate(usr.x+2,usr.y+2,usr.z)
					N.Bdf1=1
					O.loc = locate(usr.x-2,usr.y-2,usr.z)
					O.Bdf1=1
					P.loc = locate(usr.x-2,usr.y+2,usr.z)
					P.Bdf1=1
					Q.loc = locate(usr.x+2,usr.y-2,usr.z)
					Q.Bdf1=1
					R.loc = locate(usr.x+3,usr.y,usr.z)
					R.Bdf1=1
					S.loc = locate(usr.x-3,usr.y,usr.z)
					S.Bdf1=1
					T.loc = locate(usr.x,usr.y+3,usr.z)
					T.Bdf1=1
					W.loc = locate(usr.x,usr.y-3,usr.z)
					W.Bdf1=1
					X.loc = locate(usr.x+3,usr.y+3,usr.z)
					X.Bdf1=1
					Y.loc = locate(usr.x-3,usr.y-3,usr.z)
					Y.Bdf1=1
					Z.loc = locate(usr.x-3,usr.y+3,usr.z)
					Z.Bdf1=1
					AB.loc = locate(usr.x-3,usr.y-2,usr.z)
					AB.Bdf1=1
					AC.loc = locate(usr.x+3,usr.y+2,usr.z)
					AC.Bdf1=1
					AD.loc = locate(usr.x+3,usr.y-2,usr.z)
					AD.Bdf1=1
					AE.loc = locate(usr.x-3,usr.y+2,usr.z)
					AE.Bdf1=1
					AF.loc = locate(usr.x+2,usr.y+3,usr.z)
					AF.Bdf1=1
					AG.loc = locate(usr.x-2,usr.y-3,usr.z)
					AG.Bdf1=1
					AH.loc = locate(usr.x-2,usr.y+3,usr.z)
					AH.Bdf1=1
					AI.loc = locate(usr.x+2,usr.y-3,usr.z)
					AI.Bdf1=1
					AJ.loc = locate(usr.x-1,usr.y-2,usr.z)
					AJ.Bdf1=1
					AK.loc = locate(usr.x+1,usr.y+2,usr.z)
					AK.Bdf1=1
					AL.loc = locate(usr.x+1,usr.y-2,usr.z)
					AL.Bdf1=1
					AM.loc = locate(usr.x-1,usr.y+2,usr.z)
					AM.Bdf1=1
					AN.loc = locate(usr.x+2,usr.y+1,usr.z)
					AN.Bdf1=1
					AO.loc = locate(usr.x-2,usr.y-1,usr.z)
					AO.Bdf1=1
					AP.loc = locate(usr.x-2,usr.y+1,usr.z)
					AP.Bdf1=1
					AQ.loc = locate(usr.x+2,usr.y-1,usr.z)
					AQ.Bdf1=1
					AR.loc = locate(usr.x-1,usr.y-3,usr.z)
					AR.Bdf1=1
					AS.loc = locate(usr.x+1,usr.y+3,usr.z)
					AS.Bdf1=1
					AT.loc = locate(usr.x+1,usr.y-3,usr.z)
					AT.Bdf1=1
					AU.loc = locate(usr.x-1,usr.y+3,usr.z)
					AU.Bdf1=1
					AV.loc = locate(usr.x+3,usr.y+1,usr.z)
					AV.Bdf1=1
					AW.loc = locate(usr.x-3,usr.y-1,usr.z)
					AW.Bdf1=1
					AX.loc = locate(usr.x-3,usr.y+1,usr.z)
					AX.Bdf1=1
					AY.loc = locate(usr.x+3,usr.y-1,usr.z)
					AY.Bdf1=1
					AZ.loc = locate(usr.x+3,usr.y-3,usr.z)
					AZ.Bdf1=1
					var/list/AAA = usr.overlays.Copy()
					usr.icon = 'invis.dmi'
					usr.overlays = usr.overlays.Remove(usr.overlays)
					flick("rise",A)
					flick("rise",B)
					flick("rise",C)
					flick("rise",D)
					flick("rise",E)
					flick("rise",F)
					flick("rise",G)
					flick("rise",H)
					flick("rise",I)
					flick("rise",J)
					flick("rise",K)
					flick("rise",L)
					flick("rise",M2)
					flick("rise",N)
					flick("rise",O)
					flick("rise",P)
					flick("rise",Q)
					flick("rise",R)
					flick("rise",S)
					flick("rise",T)
					flick("rise",W)
					flick("rise",X)
					flick("rise",Y)
					flick("rise",Z)
					flick("rise",AB)
					flick("rise",AC)
					flick("rise",AD)
					flick("rise",AE)
					flick("rise",AF)
					flick("rise",AG)
					flick("rise",AH)
					flick("rise",AI)
					flick("rise",AJ)
					flick("rise",AK)
					flick("rise",AL)
					flick("rise",AM)
					flick("rise",AN)
					flick("rise",AO)
					flick("rise",AP)
					flick("rise",AQ)
					flick("rise",AR)
					flick("rise",AS)
					flick("rise",AT)
					flick("rise",AU)
					flick("rise",AV)
					flick("rise",AW)
					flick("rise",AX)
					flick("rise",AY)
					flick("rise",AZ)
					sleep(50)
					del(K)
					del(A)
					del(B)
					del(C)
					del(D)
					del(E)
					del(F)
					del(G)
					del(H)
					del(I)
					del(J)
					del(L)
					del(M2)
					del(N)
					del(O)
					del(P)
					del(Q)
					del(R)
					del(S)
					del(T)
					del(W)
					del(X)
					del(Y)
					del(Z)
					del(AB)
					del(AC)
					del(AD)
					del(AE)
					del(AF)
					del(AG)
					del(AH)
					del(AI)
					del(AJ)
					del(AK)
					del(AL)
					del(AM)
					del(AN)
					del(AO)
					del(AP)
					del(AQ)
					del(AR)
					del(AS)
					del(AT)
					del(AU)
					del(AV)
					del(AW)
					del(AX)
					del(AY)
					del(AZ)
					usr.icon = usr.Oicon
					usr.overlays = AAA.Copy()
					del(src)
					return
				else
					usr<<"Vc n possui mais bombas de fumaça"



obj
	Makibishi
		name = "Makibishi"
		icon = 'Makibichi.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		density=1
		price = 1000
		verb
			Olhar()
				usr<<"Esses sao pregos especiais de uso ninja."
			Pegar()
				if(usr.makis <= 5)
					set src in oview(1)
					src.loc = usr
					usr<<"Você pegou um(a) [src]"
				else
					usr<<"Vc só pode carregar 5 por vez."
			Usar()
				if(usr.PK==0)
					usr<<"Zona NON-PK!!!"
					return
				if(usr.Frozen||usr.froze||usr.kawa)
					usr<<"Não agora!"
					return
				if(usr.makis>=1)
					del(src)
					var/obj/maki/L = new()
					L.loc = locate(usr.x,usr.y-1,usr.z)
					L.tai = usr.shurikenskill/3.75
					L.Gowner = usr
					L.burnMaki()
					usr.makis-=1
				else
					usr<<"Você não possui mais makibishis"
obj/maki
	icon = 'Makibichi.dmi'
	density = 0
	proc
		burnMaki()
			for(var/mob/M in view(1))
				if(M.x==src.x&&M.y==src.y)
					if(M == src.Gowner)
						return
					var/damage = round(src.tai) - M.Resistencia/1.75
					M.Move_Delay = 12
					if(damage<=0)damage=0
					if(damage >= 1)
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						view(M) << "[M] recebeu [damage] de dano por pisar nos makibishi de [usr]!!"
						var/mob/O = src.Gowner
						M.Death(O)
					sleep(50)
					M.Move_Delay=0.7
			spawn(3)
			src.burnMaki()
obj
	Kageshuriken
		icon='kageshuriken.dmi'
		density=1
		Bump(A)
			var/mob/O = src.Gowner
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				var/damage = src.tai - M.Resistencia/1.75
				if(damage<=0)damage=0
				if(damage >= 1)
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					view(M) << "[M] foi acertado pela Kage Shuriken de [Gowner] perdendo [damage] de vida!"
					M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
mob/var/tmp/weaponthrow=0
obj/var/ammount=0

obj
	KunaiM
		name = "Kunai"
		icon = 'kunaiminato.dmi'
		density=1
		New()
			spawn(100) del src
			..()
		Bump(A)
			var/mob/O = src.Gowner
			if(!O) del src
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				var/damage = src.nin - M.Resistencia/2
				if(damage<=0)damage=0
				if(damage >= 1)
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					view(M) << "[M] foi acertado pela Kunai Marcada de [Gowner] perdendo [damage] de vida!"
					M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	EscudoCapitao
		name = "Escudo Capitao"
		icon = 'jutsu steve rogers - Arremeçar Escudo.dmi'
		density=1
		Bump(A)
			var/mob/O = src.Gowner
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				var/damage = src.tai - M.Resistencia/1.75
				if(damage<=0)damage=0
				if(damage >= 1)
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					view(M) << "[M] foi acertado pelo Escudo de Vibranium de [Gowner] perdendo [damage] de vida!"
					M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	Kunai
		name = "Kunai"
		icon = 'kunai.dmi'
		worn = 0
		density=1
		oname="Kunai"
		price = 1000
		New()
			..()
			spawn()
				src.CheckAmount()
		proc
			CheckAmount()
				src.name= "[oname] ([src.ammount])"
		verb
			Olhar()

				usr<<"Essa é uma Kunai normal."
			Descartar()

				for(var/obj/Kunai/O in usr.contents)
					if(O.counter<=0)
						del(src)
					else
						var/drop = input("Quantas Kunais deseja dropar?")as num
						if(src.ammount>drop)
							usr<<"Você não está carregando tanto."
							return
						if(drop<=0)
							usr<<"Não."
							return
						if(src.ammount>=drop)
							src.ammount-=drop
							var/obj/Kunai/B = new/obj/Kunai
							B.loc=locate(usr.x,usr.y-1,usr.z)
							B.ammount=drop
							view(usr)<<"[usr] dropa [drop] Kunais."
							if(src.ammount<=0)
								del(src)
				//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				usr<<"Você pegou o(a) [src]"
				for(var/obj/Kunai/O in usr.contents)
					usr.Kucounter+=1
				if(usr.Kucounter<=0)
					Move(usr)
				else
					for(var/obj/Kunai/O in usr.contents)
						O.ammount+=src.ammount
						O.name= "[O.name] ([O.ammount])"
						del(src)
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
				var/obj/Kunai/L = new()
				L.loc=usr.loc
				usr.weaponthrow=1
				L.tai=usr.shurikenskill/4.25
				L.dir = usr.dir
				L.Move_Delay=1.5
				L.Gowner=usr
				walk(L,usr.dir)
				for(var/obj/Kunai/O in usr.contents)
					O.ammount-=1
					if(O.ammount<=0)
						del(O)
					else
						src.name="[O.oname] ([O.ammount])"
				sleep(20)
				usr.weaponthrow=0
				sleep(30)
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				var/damage = round(src.tai) - M.Resistencia
				if(damage<=0)damage=0
				if(damage >= 1)
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					view(M) << "[M] foi acertado pela Kunai de [Gowner] perdendo [damage] de vida!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

	SpiderSpikes
		name = "SpiderSpikes"
		icon = 'SpiderS.dmi'
		icon_state = "multi"
		worn = 0
		density=1
		oname="spikes"
		price = 1000
		New()
			..()
			spawn()
				src.CheckAmount()
		proc
			CheckAmount()
				src.name= "[oname] ([src.ammount])"
		verb
			Olhar()

				usr<<"This is a spider made Spike."
			Descartar()

				for(var/obj/SpiderSpikes/O in usr.contents)
					if(O.ammount<=0)
						del(src)
					else
						var/drop = input("Qnts spikes vc quer dropar?")as num
						if(src.ammount>drop)
							usr<<"Você não está carregando tantas."
						if(drop<=0)
							usr<<"Não."
						if(src.ammount>=drop)
							src.ammount-=drop
							var/obj/SpiderSpikes/B = new/obj/SpiderSpikes
							B.loc=locate(usr.x,usr.y-1,usr.z)
							B.ammount=drop
							view(usr)<<"[usr] dropa [drop] Spikes."
							if(src.ammount<=0)
								del(src)
				//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				usr<<"Você pegou o(a) [src]"
				for(var/obj/SpiderSpikes/O in usr.contents)
					counter+=1
				if(counter<=0)
					Move(usr)
				else
					for(var/obj/SpiderSpikes/O in usr.contents)
						O.ammount+=src.ammount
						O.name= "[O.name] ([O.ammount])"
						del(src)
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
				var/obj/SpiderSpikes/L = new()
				L.loc=usr.loc
				usr.weaponthrow=1
				L.tai=usr.shurikenskill
				L.dir = usr.dir
				L.Move_Delay=1.5
				L.Gowner=usr
				walk(L,usr.dir)
				for(var/obj/SpiderSpikes/O in usr.contents)
					O.ammount-=1
					if(O.ammount<=0)
						del(O)
					else
						src.name="[O.oname] ([O.ammount])"
				sleep(8)
				usr.weaponthrow=0
				sleep(30)
		Bump(A)
			var/mob/O = src.Gowner
			/*if(istype(A,/obj/Log))
				for(var/obj/Log/L in oview(3,O))
					if(L)
						O<<"Você não pode estar tão próximo ao log."
						O.weaponthrow=0
						del(src)
						return
				O.random=rand(1,3)
				if(O.random==3)
					if(O.Mkunaiskill<=O.cap)
						O<<"Sua habilidade com Kunais aumenta!"
						O.Mkunaiskill+=1
						O.kunaiskill=O.Mkunaiskill
					else
						usr<<"Você chegou ao seu cap de Kunai."
				if(O.random==1)
					if(O.Mkunaiskill<=O.cap)
						O<<"Sua habilidade com Kunais aumenta!"
						O.Mkunaiskill+=1
						O.kunaiskill=O.Mkunaiskill
					else
						usr<<"Você chegou ao seu cap de Kunai."*/
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				var/damage = round(src.tai) - M.Resistencia
				if(damage<=0)damage=0
				if(damage >= 1)
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					view(M) << "[M] foi acertado pelo [Gowner]'SpiderSpike [damage] de dano!!!"
					M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)





obj
	Sphere
		icon = 'testingextreme.dmi'
		icon_state = "main"
		layer = 999


obj
	Sphere1
		icon = 'SandSphere.dmi'
		layer = 999


obj
	tchat
		icon='menus.dmi'
		icon_state="Chat"
		screen_loc="1,4"
		Click()
			switch(input("Whats the chat system you want?", text) in list("World","Say","Nenhum"))
				if("World")
					usr.talk="world"
					alert("Your Chat System changed to <<World>>...")
				if("Say")
					usr.talk="say"
					alert("Your Chat System changed to <<Say>>...")
				if("Nenhum")
					usr.talk=0
					alert("You turned off your Chat System...")
obj
	trest
		icon='menus.dmi'
		icon_state="Rest"
		screen_loc="1,6"
		Click()
			if(usr.resting)
				usr.resting=0
				usr<<"You stop resting..."
				usr.Frozen = 0
				usr.descansando=0
				usr.icon_state = ""
				return
			else
				if(usr.health == usr.maxhealth && usr.chakra == usr.Mchakra)
					usr<<"Você não precisa descansar.."
					return
				if(usr.meditating||usr.onwater)
					return
				usr<<"Você começa à descansar..."
				usr.resting=1
				usr.descansando=1
				usr.Frozen = 1
				usr.rest()
obj
	tsave
		icon='menus.dmi'
		icon_state="save"
		screen_loc="1,5"
		Click()
			//usr.SalvarAgora()
obj
	meditate
		icon='meditate.dmi'
		icon_state=""







obj/TreeMarker
	name = "Tree Marker"
	icon = 'treemarker.dmi'


mob/npc/Bugs
	name = "Bug"
	icon = 'invis.dmi'

obj/LeeWeights
	name = "Lee's Weights"
	icon = 'Weights.dmi'

obj/SStars
	name = "Shurikens"
	icon = 'kageshuriken.dmi'

obj/JWolf
	name="Shin"
	icon ='wolf.dmi'

obj/ZSword
	name="Kubikiri Houcho"
	icon= 'Zabuza sword.dmi'

obj
	Zabuzasuit
		name = "Zabuza Suit"
		icon = 'ZabuzaSuit.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'ZabuzaSuit.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'ZabuzaSuit.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"This is Zabuza's suit."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	SSSsuit1
		name = "SSS Suit 1"
		icon = 'sss1.dmi'//dont have a base icon so cant make weights icon!lol
		price = 9999999999999999999999
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'sss1.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'sss1.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"This is SSS suit."
			Destroy()

				del(src)

			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	SSSsuit2
		name = "SSS Suit 2"
		icon = 'sss2.dmi'//dont have a base icon so cant make weights icon!lol
		price = 9999999999999999999999
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'sss2.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'sss2.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"This is SSS suit."
			Destroy()

				del(src)

			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"



obj
	Yondsuit
		name = "Yondaime Suit"
		icon = 'Dans_Cloak.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Dans_Cloak.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Dans_Cloak.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"This is Yondaime Suit."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	Hinasuit
		name = "Hinata Shippuden Suit"
		icon = 'HinataShipp.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'HinataShipp.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'HinataShipp.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"This is Hinata Suit."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"





obj
	Sshipp
		name = "Uchiha Suit"
		icon = 'sasuke2.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'sasuke2.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'sasuke2.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"This is Uchiha Suit."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	Sass
		name = "Sasuke Shippuden Suit"
		icon = 'Roupa Sasuke Shippuden.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()


				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Roupa Sasuke Shippuden.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Roupa Sasuke Shippuden.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()


				usr<<"This is Sasuke Shippuden Suit."
			Descartar()


				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()


				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	MadaraArm
		name = "Armadura Madara"
		icon = 'armadura madara.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()


				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'armadura madara.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'armadura madara.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					usr.Resistencia += usr.Resistencia/2
			Olhar()


				usr<<"Esta é a Armadura de Uchiha Madara."
			Descartar()


				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()


				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"


obj
	Ac
		name = "Akatsuki Suit"
		icon = 'akatcapa.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'akatcapa.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'akatcapa.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"This is Oficial Akatsuki Suit."
			Destroy()

				del(src)

			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	Akt2
		name = "Hidan Suit"
		icon = 'AkatSuit3.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'AkatSuit3.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'AkatSuit3.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Destroy()
				del(src)
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	BandanaKakuzu
		name = "Bandana Kakuzu"
		icon = 'Mascara Kakuzu.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Mascara Kakuzu.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Mascara Kakuzu.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Destroy()
				del(src)
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	Akt3
		name = "Tobi Suit"
		icon = 'AkatSuit2.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'AkatSuit2.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'AkatSuit2.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Destroy()
				del(src)
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"



obj
	Gs
		name = "Gaara Shippuden Suit"
		icon = 'Gaara_Shippuden.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Gaara_Shippuden.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Gaara_Shippuden.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"This is Gaara Shippuden Suit."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	Gsp
		name = "Gaara Kid Suit"
		icon = 'Roupa Gaara Kid.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Roupa Gaara Kid.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Roupa Gaara Kid.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"This is Gaara Kid Suit Suit."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	Tsukage
		name = "Tsunade Kage Suit"
		icon = 'tsunadecapa.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'tsunadecapa.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'tsunadecapa.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"This is Tsunade Capa Suit."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	Tsusuit
		name = "Tsunade Suit"
		icon = 'tsunadesuit.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'tsunadesuit.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'tsunadesuit.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"This is Tsunade Suit."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	sorasuit
		name = "Sora Suit"
		icon = 'Sora.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Sora.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Sora.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"This is Sora Suit."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	Sakurashipp
		name = "Sakura Shippuden Suit"
		icon = 'SakuraShipp.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'SakuraShipp.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'SakuraShipp.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"This is Sakura Shippuden Suit."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	NejIwapp
		name = "Neiji Shippuden Suit"
		icon = 'Neji_Shippuden.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Neji_Shippuden.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Neji_Shippuden.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"This is Neiji Shippuden Suit."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	Narutosannin
		name = "Naruto Sannin Suit"
		icon = 'NarutoSage.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'NarutoSage.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'NarutoSage.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"This is Naruto Sannin Suit."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	Narutoyond
		name = "Naruto Kid Suit"
		icon = 'Roupa Naruto Kid.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Roupa Naruto Kid.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Roupa Naruto Kid.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"This is Naruto Kage Suit."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"


obj
	Roupavip
		name = "Roupa Vip"
		icon = 'Suit Especial.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Suit Especial.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Suit Especial.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"Esta é uma roupa exclusiva dos players vips."
			Destroy()

				del(src)

			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	Inosuit
		name = "Ino Suit"
		icon = 'InoSuit.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'InoSuit.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'InoSuit.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"This is Ino Suit."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"



obj
	Narutoshipp
		name = "Naruto Shippuden Suit"
		icon = 'Naruto_Shippuden.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Naruto_Shippuden.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Naruto_Shippuden.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"This is Naruto Shippuden Suit."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	Saisuit
		name = "Sai Suit"
		icon = 'SaiSuit.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'SaiSuit.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'SaiSuit.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"This is Sai Suit."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	Kankuorusuit
		name = "Kankuoru Suit"
		icon = 'Kankuro_Suite.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Kankuro_Suite.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Kankuro_Suite.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"This is Kankuoru 's suit."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	RockLeesuit
		name = "RockLee Suit"
		icon = 'Leesuitx.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Leesuitx.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Leesuitx.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"This is a shirt."
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	Ropachuuna
		name = "Chuunin Vestimenta"
		icon = 'Chuunin Vest.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Chuunin Vest.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Chuunin Vest.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"Esse é um coleto especial dado para os Chuunins"
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	LChuuninVest
		name = "Kumo Chuunin Vest"
		icon = 'lightningVest.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'lightningVest.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'lightningVest.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"Esse é um coleto especial dado para os Chuunins"
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	GChuuninVest
		name = "Kusa Chuunin Vest"
		icon = 'BrightGrass.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'BrightGrass.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'BrightGrass.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"Esse é um coleto especial dado para os Chuunins"
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	MChuuninVest
		name = "Water Chuunin Vest"
		icon = 'waterVest.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'waterVest.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'waterVest.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"Esse é um coleto especial dado para os Chuunins"
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	WChuuninVest
		name = "Water Chuunin Vest"
		icon = 'waterfallvest.dmi'
		worn = 0
		price = 2000
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'waterfallvest.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'waterfallvest.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"Esse é um coleto especial dado para os Chuunins"
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	RChuuninVest
		name = "Ame Chuunin Vest"
		icon = 'rainvest.dmi'
		worn = 0
		price = 2000
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'rainvest.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'rainvest.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"Esse é um coleto especial dado para os Chuunins"
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	SChuuninVest
		name = "Suna Chuunin Vest"
		icon = 'sandvest.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'sandvest.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'sandvest.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"Esse é um coleto especial dado para os Chuunins"
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	SoundChuuninVest
		name = "Oto Chuunin Vest"
		icon = 'SoundVest.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'SoundVest.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'SoundVest.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"Esse é um coleto especial dado para os Chuunins"
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	ChuuninVest
		name = "Chuunin Vest"
		icon = 'Vest.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Vest.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Vest.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"Esse é um coleto especial dado para os Chuunins"
			Descartar()

				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	Headband
		name = "Head Band"
		worn = 0
		icon = 'headband.dmi'
		Click()
			if(src.worn == 1)
				src:worn = 0
				usr.overlays -= 'headband.dmi'//temp icon
				usr.overlays -= 'kakashi style.dmi'
				usr.overlays -= 'bandastyle.dmi'
				usr.overlays -= 'leetype.dmi'
				usr.overlays -= 'neijihb.dmi'
				usr.overlays -= 'zabuzahb.dmi'
				usr.overlays -= 'inostyle.dmi'
				usr.overlays -= 'Leg Style.dmi'
				usr << "Você removeu o(a) [src.name]."
				src.suffix = ""
				usr.bandanat = 0
			else
				switch(input("Você deseja usar a bandana em que estilo?","Escolha")in list("Regular","Lee ","Kakashi ","Bandana ","Neiji ","Zabuza ","Leg ","Ino "))
					if("Zabuza ")
						src.worn = 1
						usr.overlays += 'zabuzahb.dmi'
						usr << "Você coloca o(a) [src.name]."
						src.suffix = "Equipado"
						usr.bandanat = 1
					if("Neiji ")
						src.worn = 1
						usr.overlays += 'neijihb.dmi'
						usr << "Você coloca o(a) [src.name]."
						src.suffix = "Equipado"
						usr.bandanat = 1
					if("Leg ")
						src.worn = 1
						usr.overlays += 'Leg Style.dmi'
						usr << "Você coloca o(a) [src.name]."
						src.suffix = "Equipado"
						usr.bandanat = 1
					if("Ino ")
						src.worn = 1
						usr.overlays += 'inostyle.dmi'
						usr << "Você coloca o(a) [src.name]."
						src.suffix = "Equipado"
						usr.bandanat = 1
					if("Regular")
						src.worn = 1
						usr.overlays += 'headband.dmi'
						usr << "Você coloca o(a) [src.name]."
						src.suffix = "Equipado"
						usr.bandanat = 1
					if("Kakashi ")
						src.worn = 1
						usr.overlays += 'kakashi style.dmi'
						usr << "Você coloca o(a) [src.name]."
						src.suffix = "Equipado"
						usr.bandanat = 2
					if("Bandana ")
						src.worn = 1
						usr.overlays += 'bandastyle.dmi'
						usr << "Você coloca o(a) [src.name]."
						src.suffix = "Equipado"
						usr.bandanat = 3
					if("Lee ")
						src.worn = 1
						usr.overlays += 'leetype.dmi'
						usr << "Você coloca o(a) [src.name]."
						src.suffix = "Equipado"
						usr.bandanat = 4
		verb
			/*Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'headband.dmi'//temp icon
					usr.overlays -= 'kakashi style.dmi'
					usr.overlays -= 'bandastyle.dmi'
					usr.overlays -= 'leetype.dmi'
					usr.overlays -= 'neijihb.dmi'
					usr.overlays -= 'zabuzahb.dmi'
					usr.overlays -= 'inostyle.dmi'
					usr.overlays -= 'Leg Style.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.bandanat = 0
				else
					switch(input("Você deseja usar a bandana em que estilo?","Escolha")in list("Regular","Lee ","Kakashi ","Bandana ","Neiji ","Zabuza ","Leg ","Ino "))
						if("Zabuza ")
							src.worn = 1
							usr.overlays += 'zabuzahb.dmi'
							usr << "Você coloca o(a) [src.name]."
							src.suffix = "Equipado"
							usr.bandanat = 1
						if("Neiji ")
							src.worn = 1
							usr.overlays += 'neijihb.dmi'
							usr << "Você coloca o(a) [src.name]."
							src.suffix = "Equipado"
							usr.bandanat = 1
						if("Leg ")
							src.worn = 1
							usr.overlays += 'Leg Style.dmi'
							usr << "Você coloca o(a) [src.name]."
							src.suffix = "Equipado"
							usr.bandanat = 1
						if("Ino ")
							src.worn = 1
							usr.overlays += 'inostyle.dmi'
							usr << "Você coloca o(a) [src.name]."
							src.suffix = "Equipado"
							usr.bandanat = 1
						if("Regular")
							src.worn = 1
							usr.overlays += 'headband.dmi'
							usr << "Você coloca o(a) [src.name]."
							src.suffix = "Equipado"
							usr.bandanat = 1
						if("Kakashi ")
							src.worn = 1
							usr.overlays += 'kakashi style.dmi'
							usr << "Você coloca o(a) [src.name]."
							src.suffix = "Equipado"
							usr.bandanat = 2
						if("Bandana ")
							src.worn = 1
							usr.overlays += 'bandastyle.dmi'
							usr << "Você coloca o(a) [src.name]."
							src.suffix = "Equipado"
							usr.bandanat = 3
						if("Lee ")
							src.worn = 1
							usr.overlays += 'leetype.dmi'
							usr << "Você coloca o(a) [src.name]."
							src.suffix = "Equipado"
							usr.bandanat = 4*/
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
			Destroy()
			 del(src)
obj
	Narutosuit
		name = "Naruto suit"
		icon = 'Narutosuit.dmi'
		worn = 0
		price = 4500
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Narutosuit.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Narutosuit.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a Naruto suit."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	Jirayasuit
		name = "Jiraya Suit"
		icon = 'jiraiyarobe.dmi'
		worn = 0
		price = 4500
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'jiraiyarobe.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'jiraiyarobe.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a Jiraya Suit."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	Ropaoprata
		name = "Ropao Prata"
		icon = 'blitzkrieg_suit.dmi'
		worn = 0
		price = 4500
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'blitzkrieg_suit.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'blitzkrieg_suit.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a Ropao Prata."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	Kenshinsuit
		name = "Kenshin Suit"
		icon = 'kenshin.dmi'
		worn = 0
		price = 4500
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'kenshin.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'kenshin.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a Kenshin Suit."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	Neijisuit
		name = "Neiji suit"
		icon = 'neijisuit.dmi'
		worn = 0
		price = 4500
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'neijisuit.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'neijisuit.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a Neiji suit."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	GrassLSuit
		name = "Roupa do Fumakage"
		icon = 'KurakageSuit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'KurakageSuit.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'KurakageSuit.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é uma roupa oficial dada ao Fumakage."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	GrassLHat
		name = "Chapéu do Fumakage"
		icon = 'KurakageHat.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'KurakageHat.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'KurakageHat.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é uma roupa oficial dada ao Fumakage."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	SnowLSuit
		name = "Yuki Lord suit"
		icon = 'SFL.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'SFL.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'SFL.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é uma roupa oficial dada ao Yuki Lord."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	WaterLSuit
		name = "Waterfall Kage suit"
		icon = 'WFL.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'WFL.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'WFL.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é uma roupa oficial dada ao Waterfall Hero."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	WaterLHat
		name = "Waterfall Kage Hat"
		icon = 'WFL_hat.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'WFL_hat.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'WFL_hat.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é uma roupa oficial dada ao Waterfall Hero."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	AmekageSuit
		name = "Amekage suit"
		icon = 'AmekageSuit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'AmekageSuit.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'AmekageSuit.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é uma roupa oficial dada ao Amekage."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	AmekageHat
		name = "Amekage Hat"
		icon = 'AmekageHat.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'AmekageHat.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'AmekageHat.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é uma roupa oficial dada ao Amekage."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	HokageSuit
		name = "Hokage suit"
		icon = 'HokageSuit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'HokageSuit.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'HokageSuit.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é uma roupa oficial dada ao Hokage."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	HokageHat
		name = "Hokage Hat"
		icon = 'HokageHat.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'HokageHat.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'HokageHat.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é uma roupa oficial dada ao Hokage."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	HoshikageSuit
		name = "Hoshikage suit"
		icon = 'HoshikageSuit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'HoshikageSuit.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'HoshikageSuit.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é uma roupa oficial dada ao Hoshikage."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	HoshikageHat
		name = "Hoshikage Hat"
		icon = 'HoshikageHat.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'HoshikageHat.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'HoshikageHat.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é uma roupa oficial dada ao Hoshikage."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	KazekageSuit
		name = "Kazekage suit"
		icon = 'KazekageSuit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'KazekageSuit.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'KazekageSuit.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é uma roupa oficial dada ao Kazekage."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	KazekageHat
		name = "Kazekage Hat"
		icon = 'KazekageHat.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'KazekageHat.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'KazekageHat.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é uma roupa oficial dada ao Kazekage."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	MizukageSuit
		name = "Mizukage suit"
		icon = 'MizukageSuit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'MizukageSuit.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'MizukageSuit.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é uma roupa oficial dada ao Mizukage."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	MizukageHat
		name = "Mizukage Hat"
		icon = 'MizukageHat.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'MizukageHat.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'MizukageHat.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é uma roupa oficial dada ao Mizukage."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	OtokageSuit
		name = "Otokage suit"
		icon = 'OtokageSuit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'OtokageSuit.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'OtokageSuit.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é uma roupa oficial dada ao Otokage."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	OtokageHat
		name = "Otokage Hat"
		icon = 'OtokageHat.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'OtokageHat.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'OtokageHat.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é uma roupa oficial dada ao Otokage."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	RaikageSuit
		name = "Raikage suit"
		icon = 'RaikageSuit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'RaikageSuit.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'RaikageSuit.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é uma roupa oficial dada ao Raikage."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	TsuchikageSuit
		name = "Tsuchi suit"
		icon = 'TsuchikageSuit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'TsuchikageSuit.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'TsuchikageSuit.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é uma roupa oficial dada ao Raikage."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	RaikageHat
		name = "Raikage Hat"
		icon = 'RaikageHat.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'RaikageHat.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'RaikageHat.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é uma roupa oficial dada ao Raikage."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	TsuchikageHat
		name = "Tsuchikage Hat"
		icon = 'TsuchikageHat.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'TsuchikageHat.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'TsuchikageHat.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é uma roupa oficial dada ao Raikage."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	SOSuit
		name = "Taka suit"
		icon = 'Hebi Cloak.dmi'
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Hebi Cloak.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Hebi Cloak.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Roupa usaa por mebros da Taka."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"






obj
	AKAH
		name = "Akatsuki Hat"
		icon = 'AKAH.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'AKAH.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'AKAH.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a Akatsuki Hat."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	AKAS
		name = "Akatsuki Suit"
		icon = 'akatcapa.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'akatcapa.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'akatcapa.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a Akatsuki suit."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	AKAS2
		name = "Akatsuki Suit 2"
		icon = 'AkatSuit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'AkatSuit.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'AkatSuit.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a Akatsuki suit 2."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	JuugoSuit
		name = "Roupa do Juugo"
		icon = 'Juugo suit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Juugo suit.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Juugo suit.dmi'
					usr << "Você remove a [src.name]"
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é uma [src.name]"
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	KarinSuit
		name = "Roupa da Karin"
		icon = 'Ropa karin.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Ropa karin.dmi'//temp icon
					usr << "Você tira a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Ropa karin.dmi'
					usr << "Você veste a  [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é a [src.name]"
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	SuigetsuSuit
		name = "Roupa do Suigetsu"
		icon = 'Suigetsuroups.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Suigetsuroups.dmi'//temp icon
					usr << "Você tira a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Suigetsuroups.dmi'
					usr << "Você veste a  [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é a [src.name]"
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	TakaCape
		name = "Capa da Taka"
		icon = 'cloak2.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'cloak2.dmi'//temp icon
					usr << "Você tira a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'cloak2.dmi'
					usr << "Você veste a  [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é a Capa da Taka."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	Headband_Akat
		name = "Akatsuki Headband"
		icon = 'headband_akat.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'headband_akat.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'headband_akat.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a Akatsuki suit 2."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	Piercings
		name = "Piercings Catalisadores"
		icon = 'piercing.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'piercing.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'piercing.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a Akatsuki suit 2."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"



obj
	NucHat
		name = "Núcleo Hat"
		icon = 'NucHat.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'NucHat.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'NucHat.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a ANBU Ne Mask."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	TobiMask
		name = "Tobi Mask"
		icon = 'Tobim.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Tobim.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Tobim.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a Tobi Mask."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	SSSmask
		name = "SSS Mask"
		icon = 'sssm.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'sssm.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'sssm.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a SSS Mask."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	NucSuit
		name = "Núcleo Suit"
		icon = 'NucSuit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'NucSuit.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'NucSuit.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a ANBU Ne Suit."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
	LH
		name = "Lords Hat"
		icon = 'LH.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'LH.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'LH.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a Lords Hat."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	Suit1
		name = "Suit"
		icon = 'Suit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Suit.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Suit.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a official suit given to Zuki and his Friends."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	HSuit
		name = "Hunter Suit"
		icon = 'HSuit.dmi'
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'HSuit.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'HSuit.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a official suit given to Hunters."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	Vest2
		name = "Vest2"
		icon = 'Vest2.dmi'//dont have a base icon so cant make weights icon!lol
		layer = 999
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Vest2.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Vest2.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a ANBU CAPs vest."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	Snowvest
		name = "Yuki Vest"
		icon = 'snowvest.dmi'//dont have a base icon so cant make weights icon!lol
		layer = 999
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'snowvest.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'snowvest.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a Snow Chuunin vest."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	Anbu
		name = "Star Mask"
		icon = 'Anbu.dmi'//dont have a base icon so cant make weights icon!lol
		layer = 999
		worn = 0
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Anbu.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Anbu.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is the Mask given to Admins."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	Ranbu
		name = "Red ANBU mask"
		icon = 'MASCARA ANBU Konoha.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'MASCARA ANBU Konoha.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'MASCARA ANBU Konoha.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is the ANBU captains mask."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	Eanbu
		name = "Iwa ANBU mask"
		icon = 'MASCARA ANBU Ishi.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'MASCARA ANBU Ishi.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'MASCARA ANBU Ishi.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is the ANBU captains mask."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	Sanbu
		name = "Suna ANBU mask"
		icon = 'MASCARA ANBU Suna.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'MASCARA ANBU Suna.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'MASCARA ANBU Suna.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is the ANBU captains mask."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	Yanbu
		name = "Kumo ANBU mask"
		icon = 'Yanbu.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Yanbu.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Yanbu.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is the ANBU captains mask."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	Panbu
		name = "Yuki ANBU mask"
		icon = 'MASCARA ANBU Yuki.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'MASCARA ANBU Yuki.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'MASCARA ANBU Yuki.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is the ANBU captains mask."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	Danbu
		name = "Oto ANBU mask"
		icon = 'MASCARA ANBU Oto.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'MASCARA ANBU Oto.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'MASCARA ANBU Oto.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is the ANBU captains mask."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	Markings
		name = "CS Lvl 1"
		icon = 'CSItem.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'CSItem.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'CSItem.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is the cursed seal markings."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	Markings2
		name = "CS Lvl 2"
		icon = 'cs2.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'cs2.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'cs2.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is the cursed seal markings."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	SSSs7
		name = "SSS Sword 7"
		icon = 'zabuza sowd.dmi'
		worn = 0
		price = 999999999999999999999999999999999999999999999999999999999999999999999
		verb
			Usar()
				if(usr.S2 || usr.S3||usr.SVip)
					usr<<"You can not have more than one sword on at a time."
					return
				if(usr.Weaponworn == 1)
					usr.S1 = 0
					usr:Weaponworn = 0
					src.worn = 0
					usr.overlays -= 'zabuza sowd.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.nin = usr.Mnin
					usr.swordD = 0
					usr.verbs -= new /mob/sword/verb/Atacar_com_Espada()
					usr.verbs -= new /mob/Sword/verb/Hit()
					usr.verbs -= new /mob/jutsu/verb/ocultar()
				else
					usr:Weaponworn = 1
					src.worn = 1
					usr.S1 = 1
					usr.overlays += 'zabuza sowd.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					usr.nin = usr.nin*1.1
					sleep(3)
					usr.verbs += new /mob/sword/verb/Atacar_com_Espada()
					usr.verbs += new /mob/Sword/verb/Hit()
					usr.verbs += new /mob/jutsu/verb/ocultar()
			Olhar()
				usr<<"Esta é a espada 7 da Senven Swordsmen Shinobis."
			Destroy()
				usr.pegouespadasss=0
				del(src)

			Pegar()
				set src in oview(1)
				if(usr.rank=="7Swordsmen")
					src.loc = usr
					usr.pegouespadasss=1
					usr<<"Você pegou um(a) [src]"
					return
				else
					usr<<"Você não pertence a SSS para pegar esta espada."

mob/var/pegouespadasss=0
obj
	SSSs1
		name = "SSS Sword 1"
		icon = 'SSSs1.dmi'
		worn = 0
		price = 999999999999999999999999999999999999999999999999999999999999999999999
		verb
			Usar()
				if(usr.S2 || usr.S3||usr.SVip)
					usr<<"You can not have more than one sword on at a time."
					return
				if(usr.Weaponworn == 1)
					usr.S1 = 0
					usr:Weaponworn = 0
					src.worn = 0
					usr.overlays -= 'SSSs1.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.nin = usr.Mnin
					usr.swordD = 0
					usr.verbs -= new /mob/sword/verb/Atacar_com_Espada()
					usr.verbs -= new /mob/Sword/verb/Hit()
					usr.verbs -= new /mob/jutsu/verb/SSS1()
				else
					usr:Weaponworn = 1
					src.worn = 1
					usr.S1 = 1
					usr.overlays += 'SSSs1.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					usr.nin = usr.nin*1.1
					sleep(3)
					usr.verbs += new /mob/sword/verb/Atacar_com_Espada()
					usr.verbs += new /mob/Sword/verb/Hit()
					usr.verbs += new /mob/jutsu/verb/SSS1()
			Olhar()
				usr<<"Esta é a espada 1 da Seven Swordsmen Shinobis."
			Destroy()
				usr.pegouespadasss=0
				del(src)

			Pegar()
				set src in oview(1)
				if(usr.pegouespadasss)
					usr<<"Você já tem uma espada da SSS."
					return
				if(usr.rank=="7Swordsmen")
					src.loc = usr
					usr.pegouespadasss=1
					usr<<"Você pegou um(a) [src]"
					return
				else
					usr<<"Você não pertence a SSS para pegar esta espada."

//==================================================================================//
obj
	SSSs4
		name = "SSS Sword 4"
		icon = 'SSSs4.dmi'
		worn = 0
		price = 999999999999999999999999999999999999999999999999999999999999999999999
		verb
			Usar()
				if(usr.S2 || usr.S3||usr.SVip)
					usr<<"You can not have more than one sword on at a time."
					return
				if(usr.Weaponworn == 1)
					usr.S1 = 0
					usr:Weaponworn = 0
					src.worn = 0
					usr.overlays -= 'SSSs4.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.nin = usr.Mnin
					usr.swordD = 0
					usr.verbs -= new /mob/sword/verb/Atacar_com_Espada()
					usr.verbs -= new /mob/Sword/verb/Hit()
					usr.verbs -= new /mob/jutsu/verb/SSS4()
				else
					usr:Weaponworn = 1
					src.worn = 1
					usr.S1 = 1
					usr.overlays += 'SSSs4.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					usr.nin = usr.nin*1.1
					sleep(3)
					usr.verbs += new /mob/sword/verb/Atacar_com_Espada()
					usr.verbs += new /mob/Sword/verb/Hit()
					usr.verbs += new /mob/jutsu/verb/SSS4()
			Olhar()
				usr<<"Esta é a espada 4 da Seven Swordsmen Shinobis."
			Pegar()
				set src in oview(1)
				if(usr.pegouespadasss)
					usr<<"Você já tem uma espada da SSS."
					return
				if(usr.rank=="7Swordsmen")
					src.loc = usr
					usr.pegouespadasss=1
					usr<<"Você pegou um(a) [src]"
					return
				else
					usr<<"Você não pertence a SSS para pegar esta espada."

//==================================================================================//
obj
	SSSs5
		name = "SSS Sword 5"
		icon = 'SSSs5.dmi'
		worn = 0
		price = 999999999999999999999999999999999999999999999999999999999999999999999
		verb
			Usar()
				if(usr.S2 || usr.S3||usr.SVip)
					usr<<"You can not have more than one sword on at a time."
					return
				if(usr.Weaponworn == 1)
					usr.S1 = 0
					usr:Weaponworn = 0
					src.worn = 0
					usr.overlays -= 'SSSs5.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.nin = usr.Mnin
					usr.swordD = 0
					usr.verbs -= new /mob/sword/verb/Atacar_com_Espada()
					usr.verbs -= new /mob/Sword/verb/Hit()
					usr.verbs -= new /mob/jutsu/verb/SSS5()
				else
					usr:Weaponworn = 1
					src.worn = 1
					usr.S1 = 1
					usr.overlays += 'SSSs5.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					usr.nin = usr.nin*1.1
					sleep(3)
					usr.verbs += new /mob/sword/verb/Atacar_com_Espada()
					usr.verbs += new /mob/Sword/verb/Hit()
					usr.verbs += new /mob/jutsu/verb/SSS5()
			Olhar()
				usr<<"Esta é a espada 5 da Seven Swordsmen Shinobis."
			Pegar()
				set src in oview(1)
				if(usr.pegouespadasss)
					usr<<"Você já tem uma espada da SSS."
					return
				if(usr.rank=="7Swordsmen")
					src.loc = usr
					usr.pegouespadasss=1
					usr<<"Você pegou um(a) [src]"
					return
				else
					usr<<"Você não pertence a SSS para pegar esta espada."

//==================================================================================//

obj
	SSSs6
		name = "SSS Sword 6"
		icon = 'SSSs6.dmi'
		worn = 0
		price = 999999999999999999999999999999999999999999999999999999999999999999999
		verb
			Usar()
				if(usr.S2 || usr.S3||usr.SVip)
					usr<<"You can not have more than one sword on at a time."
					return
				if(usr.Weaponworn == 1)
					usr.S1 = 0
					usr:Weaponworn = 0
					src.worn = 0
					usr.overlays -= 'SSSs6.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.nin = usr.Mnin
					usr.swordD = 0
					usr.verbs -= new /mob/sword/verb/Atacar_com_Espada()
					usr.verbs -= new /mob/Sword/verb/Hit()
					usr.verbs -= new /mob/jutsu/verb/SSS6()
				else
					usr:Weaponworn = 1
					src.worn = 1
					usr.S1 = 1
					usr.overlays += 'SSSs6.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					usr.nin = usr.nin*1.1
					sleep(3)
					usr.verbs += new /mob/sword/verb/Atacar_com_Espada()
					usr.verbs += new /mob/Sword/verb/Hit()
					usr.verbs += new /mob/jutsu/verb/SSS6()
			Olhar()
				usr<<"Esta é a espada 6 da Seven Swordsmen Shinobis."
			Pegar()
				set src in oview(1)
				if(usr.pegouespadasss)
					usr<<"Você já tem uma espada da SSS."
					return
				if(usr.rank=="7Swordsmen")
					src.loc = usr
					usr.pegouespadasss=1
					usr<<"Você pegou um(a) [src]"
					return
				else
					usr<<"Você não pertence a SSS para pegar esta espada."


//==================================================================================//
obj
	Vipsword
		name = "Espada especial"
		icon = 'FireSword2.dmi'
		worn = 0
		price = 999999999999999999999999999999999999999999999999999999999999999999999
		verb
			Usar()
				if(usr.S2 || usr.S3)
					usr<<"You can not have more than one sword on at a time."
					return
				if(usr.Weaponworn == 1)
					usr.SVip = 0
					usr:Weaponworn = 0
					src.worn = 0
					usr.overlays -= 'FireSword2.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.swordD = 0
				else
					usr:Weaponworn = 1
					src.worn = 1
					usr.SVip = 1
					usr.overlays += 'FireSword2.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					sleep(3)
			Olhar()
				usr<<"Esta é uma espada usada por players Vip."
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	Windmill
		name = "Windmill Shuriken"
		icon = 'windmill.dmi'
		worn = 0
		density=1
		price = 30000
		verb
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
			Olhar()
				usr<<"This is the Shuriken that Sasuke uses."
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
				var/obj/Windmill/L = new()
				usr.weaponthrow=1
				usr.windmills-=1
				L.loc=usr.loc
				L.tai=usr.shurikenskill/7
				L.dir = usr.dir
				L.Move_Delay=1.5
				L.Gowner=usr
				walk(L,usr.dir)
				sleep(30)
				del(L)
				src.loc=locate(usr.x,usr.y,usr.z)
				sleep(20)
				usr.weaponthrow=0

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
				if(M.Kaiten||M.sphere)
					return
				if(M.jashin)
					return
				var/damage = round(src.tai) - M.Resistencia/1.75
				if(damage<=0)damage=0
				if(damage >= 1)
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					var/mob/B=src.Gowner
					view(M) << "[M] foi acertado pelo [Gowner]'s Windmill tirando [damage] de dano!!"
					M.Death(B)

			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(,/obj/))
				del(src)


obj
	WindmillNPC
		name = "Windmill Shuriken"
		icon = 'windmill.dmi'
		worn = 0
		density=1
		price = 30000
		verb
			Olhar()
				usr<<"This is the Shuriken that Sasuke uses."
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
				var/obj/Windmill/L = new()
				usr.weaponthrow=1
				usr.windmills-=1
				L.loc=usr.loc
				L.nin=src.tai
				L.dir = usr.dir
				L.Move_Delay=1.5
				L.Gowner=usr
				walk(L,usr.dir)
				src.loc=locate(usr.x,usr.y,usr.z)
				sleep(3)
				usr.weaponthrow=0

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
		New()
			spawn(30) del src
			..()
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				var/mob/OwNeR=src.Gowner
				if( !OwNeR ) del src
				if( M==src.Gowner|| OwNeR==M || OwNeR.cast ) return
				if(M.Kaiten||M.sphere)
					return
				var/damage = OwNeR.nin - M.Resistencia/2
				if(damage<=0)damage=0
				if(damage >= 1)
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					view(M) << "[M] foi acertado pela Windmill de [OwNeR] perdendo [damage] de vida!"
					if(M.health<=0)
						M.health=0
						M.Death(OwNeR)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)


obj
	SshurikenBunshin
		icon = 'SShuriken.dmi'
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
				var/obj/SshurikenBunshin/L = new()
				usr.weaponthrow=1
				usr.windmills-=1
				L.loc=usr.loc
				L.nin=src.nin
				L.dir = usr.dir
				L.Move_Delay=1.5
				L.Gowner=src.Gowner
				walk(L,usr.dir)
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
					view(M) << "[M] foi acertado pelo Suna Shuriken do Suna Bunshin de [OwNeR] tirando [damage] de dano!!"
					if(M.health<=0)
						M.Death(OwNeR)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(,/obj/))
				del(src)


obj
	Peins
		name = "Projétil"
		icon = 'windmill_akat.dmi'
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
				var/obj/Peins/L = new()
				usr.weaponthrow=1
				usr.windmills-=1
				L.loc=usr.loc
				L.nin=src.nin
				L.dir = usr.dir
				L.Move_Delay=1.5
				L.Gowner=src.Gowner
				walk(L,usr.dir)
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
					view(M) << "[M] foi acertado pelo Projétil de [OwNeR] tirando [damage] de dano!!"
					if(M.health<=0)
						M.Death(OwNeR)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(,/obj/))
				del(src)
obj
	Trikunai
		name = "Trikunai"
		icon = 'trikunai.dmi'
		worn = 0
		density=1
		price = 30000
		verb
			Olhar()
				usr<<"This a Tri Pointed Kunai."
			Descartar()
				if(src.worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.trikunai-=1
					//usr.SalvarAgora()
			Pegar()
				if(usr.trikunai <= 1)
					set src in oview(1)
					src.loc = usr
					usr<<"Você pegou um(a) [src]"
				else
					usr<<"You can only carry 2 at a time."
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
				var/obj/Trikunai/L = new()
				usr.weaponthrow=1
				usr.trikunai-=1
				L.loc=usr.loc
				L.tai=usr.shurikenskill/7
				L.dir = usr.dir
				L.Move_Delay=1.5
				L.Gowner=usr
				walk(L,usr.dir)
				sleep(30)
				del(L)
				src.loc=locate(usr.x,usr.y,usr.z)
				sleep(20)
				usr.weaponthrow=0

		Bump(A)
			/*var/mob/O = src.Gowner
			if(istype(A,/obj/Log))
				for(var/obj/Log/L in oview(3))
					if(L)
						usr<<"Você não pode estar tão próximo ao log."
						return
				O.random=rand(1,3)
				if(O.random==3)
					if(O.Mkunaiskill<=O.cap)
						O<<"Sua habilidade com Kunais aumenta!"
						O.Mkunaiskill+=1
						O.kunaiskill=O.Mkunaiskill*/
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.jashin)
					return
				var/damage = round(src.tai) - M.Resistencia
				if(damage<=0)damage=0
				if(damage >= 1)
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					var/mob/B=src.Gowner
					view(M) << "[M] foi acertado pelo [Gowner]'s Trikunai tirando [damage] de dano!!"
					M.Death(B)

			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(,/obj/))
				del(src)

obj
	Mondaisword
		name = "Zambatou"
		icon = 'Mondai sword.dmi'
		icon_state = ""
		worn = 0
		price = 25000
		verb
			Descartar()
				if(src.worn == 1)
					usr << "Não enquanto você o usa."
				if(src.worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Usar()
				if(usr.S1 || usr.S3||usr.SVip)
					usr<<"You can not have more than one sword on at a time."
					return
				if(usr.Weaponworn == 1)
					src.worn = 0
					usr.S2 = 0
					usr.Weaponworn = 0
					usr.overlays -= 'Mondai sword.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.verbs -= new /mob/sword/verb/Atacar_com_Espada()
					src.icon_state=""
					usr.swordD = 0
					usr.elementojunto=0
				else
					src.worn = 1
					usr.Weaponworn = 1
					usr.S2 = 1
					usr.overlays += 'Mondai sword.dmi'
					usr.swordD = 1
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					usr.verbs += new /mob/sword/verb/Atacar_com_Espada()
					//usr.swordD += usr.shurikenskill/2.7
			Olhar()
				usr<<"Esta é uma Zambatou simples."
			Juntar_Elemento()
				if(usr.Weaponworn ==1)
					usr<<"Desequipe a espada"
					return
				if(usr.elementojunto==1)
					usr<<"Vc retirou o chakra da espada"
					src.icon_state=""
					//usr.swordD = 0
					usr.elementojunto=0
					return
				if(usr.Weaponworn == 0&&usr.elementojunto==0)
					usr<<"Vc está adiconando seu chakra elemental na lamina da espada"
					if(usr.Elemento=="Raiton")
						src.icon_state="raiton"
						usr.elementojunto=1
						usr.swordD += usr.trovaoN*1.75
						usr<<"Vc adicionou chakra raiton a lamina. Agora seus ataques são mais fortes e vc tem a chance de paralisar o oponente em um ataque"
					if(usr.Elemento=="Suiton")
						src.icon_state="suiton"
						usr.elementojunto=1
						usr.swordD += usr.aguaN*1.75
						usr<<"Vc adicionou chakra suiton a lamina. Agora seus ataques se baseiam também a seu genjutsu e sua defesa contra ataques Katon está mais forte"
					if(usr.Elemento=="Doton")
						src.icon_state="doton"
						usr.elementojunto=1
						usr.swordD += usr.terraN*1.75
						usr<<"Vc adicionou chakra doton a lamina. Ela agora está mais resistente e ataca com mais força."
					if(usr.Elemento=="Katon")
						src.icon_state="katon"
						usr.elementojunto=1
						usr.swordD += usr.fogoN*1.75
						usr<<"Vc adicionou chakra katon a lamina. Agora nos seus ataques vc pode queimar seus adversarios"
					if(usr.Elemento=="Fuuton")
						src.icon_state="fuuton"
						usr.elementojunto=1
						usr.swordD += usr.ventoN*1.75
						usr<<"Vc adicionou chakra fuuton a lamina. Agora sua lamina foi ampliada aumentando a zona de corte de sua espada"
					sleep(2000)
					src.icon_state=""
					usr.swordD = 0
					usr.elementojunto=0
					usr<<"O elemento adicionado a lamina de sua espada terminou"
					return
				else
					usr<<"Vc precisa desequipar sua espada primeiro e se certificar q ela está sem chakra elemental adicionado"
					return
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	Kisamesword
		name = "Samehada"
		icon = 'KisamesSword.dmi'
		worn = 0
		price = 99999999999999999
		verb
			Usar()
				if(usr.S1 || usr.S2||usr.SVip)
					usr<<"You can not have more than one sword on at a time."
					return
				if(usr.Weaponworn == 1)
					src.worn = 0
					usr.Weaponworn = 0
					usr.S3 = 0
					usr.faixatirada=0
					usr.overlays -= 'KisamesSword.dmi'
					usr.overlays -= 'samehadatrans.dmi'
					usr<< "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.gen = usr.Mgen
					usr.swordD = 0
					usr.verbs -= new /mob/sword/verb/Atacar_com_Espada()
					usr.verbs -= new /mob/Sword/verb/Hit()
					usr.verbs -= new /mob/Sword/verb/ChakraA()
					usr.verbs -= new /mob/Sword/verb/HitSam()

				else
					src.worn = 1
					usr.Weaponworn = 1
					usr.S3 = 1
					usr.overlays += 'KisamesSword.dmi'
					usr<< "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					usr.verbs += new /mob/sword/verb/Atacar_com_Espada()
					usr.verbs += new /mob/Sword/verb/Hit()
					usr.verbs += new /mob/Sword/verb/ChakraA()
					usr.verbs += new /mob/Sword/verb/HitSam()


			Olhar()
				usr<<"This is the sword that Kisame uses."
			Tirar_Faixas()
				if(usr.Weaponworn == 1)
					usr.overlays -= 'KisamesSword.dmi'
					usr.overlays += 'samehadatrans.dmi'
					usr<< "Você tirou as faixas da [src.name]."
					usr.faixatirada=1
				else
					usr<<"Vc precisa equipa-la primeiro"
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				if(usr.pegouespadasss)
					usr<<"Você já tem uma espada da SSS ou da Akatsuki."
					return
				if(usr.rank=="7Swordsmen"||usr.Village=="Akatsuki")
					src.loc = usr
					usr<<"Você pegou um(a) [src]"
					return
				else
					usr<<"Você não pertence a SSS ou a Akatsuki para pegar esta espada."









obj
	Enmma
		name = "Bastao Enmma"
		icon = 'bastao.dmi'
		worn = 0
		price = 99999999999999999
		verb
			Usar()
				if(usr.S1 || usr.S2||usr.SVip)
					usr<<"You can not have more than one sword on at a time."
					return
				if(usr.Weaponworn == 1)
					src.worn = 0
					usr.Weaponworn = 0
					usr.S3 = 0
					usr.overlays -= 'bastao.dmi'
					usr<< "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.gen = usr.Mgen
					usr.swordD = 0
					usr.verbs -= new /mob/sword/verb/Atacar_com_Espada()
					usr.verbs -= new /mob/Sword/verb/Hit()


				else
					src.worn = 1
					usr.Weaponworn = 1
					usr.S3 = 1
					usr.overlays += 'bastao.dmi'
					usr<< "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					usr.verbs += new /mob/sword/verb/Atacar_com_Espada()
					usr.verbs += new /mob/Sword/verb/Hit()



			Olhar()
				usr<<"This is the bastao Enmma."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"




obj
	MondaiFire
		name = "Mondai Fire"
		icon = 'mondaifire.dmi'
		worn = 0
		price = 9999999999999999999999
		verb
			Usar()
				if(usr.S1 || usr.S2||usr.SVip)
					usr<<"You can not have more than one sword on at a time."
					return
				if(usr.Weaponworn == 1)
					src.worn = 0
					usr.Weaponworn = 0
					usr.S3 = 0
					usr.overlays -= 'mondaifire.dmi'
					usr<< "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.gen = usr.Mgen
					usr.swordD = 0
					usr.verbs -= new /mob/sword/verb/Atacar_com_Espada()

				else
					src.worn = 1
					usr.Weaponworn = 1
					usr.S3 = 1
					usr.overlays += 'mondaifire.dmi'
					usr<< "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					usr.verbs += new /mob/sword/verb/Atacar_com_Espada()

			Olhar()
				usr<<"This is Mondai Sword Fire."
			Descartar()
				if(src.worn == 1)
					usr << "Não enquanto você o usa."
				if(src.worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"


obj
	SamehadaWater
		name = "Samehada Water"
		icon = 'samehadawater.dmi'
		worn = 0
		price = 9999999999999999999999
		verb
			Usar()
				if(usr.S1 || usr.S2||usr.SVip)
					usr<<"You can not have more than one sword on at a time."
					return
				if(usr.Weaponworn == 1)
					src.worn = 0
					usr.Weaponworn = 0
					usr.S3 = 0
					usr.overlays -= 'samehadawater.dmi'
					usr<< "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.nin -= 9000
					usr.gen -= 3000
					usr.tai -= 5000
					usr.swordD = 0
					usr.verbs -= new /mob/sword/verb/Atacar_com_Espada()

				else
					src.worn = 1
					usr.nin += 9000
					usr.gen += 3000
					usr.tai += 5000
					usr.Weaponworn = 1
					usr.S3 = 1
					usr.overlays += 'samehadawater.dmi'
					usr<< "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					usr.verbs += new /mob/sword/verb/Atacar_com_Espada()

			Olhar()
				usr<<"This is Samehada Sword Water."
			Descartar()
				if(src.worn == 1)
					usr << "Não enquanto você o usa."
				if(src.worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				if(usr.pegouespadasss)
					usr<<"Você já tem uma espada da SSS ou da Akatsuki."
					return
				if(usr.rank=="7Swordsmen"||usr.Village=="Akatsuki")
					src.loc = usr
					usr<<"Você pegou um(a) [src]"
					return
				else
					usr<<"Você não pertence a SSS ou a Akatsuki para pegar esta espada."


obj
	Kusagani
		name = "Kusagani Sword"
		icon = 'Kusagani.dmi'
		worn = 0
		price = 9999999999999999999999
		verb
			Usar()
				if(usr.S1 || usr.S2||usr.SVip)
					usr<<"You can not have more than one sword on at a time."
					return
				if(usr.Weaponworn == 1)
					src.worn = 0
					usr.Weaponworn = 0
					usr.S3 = 0
					usr.overlays -= 'Kusagani.dmi'
					usr<< "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.gen = usr.Mgen
					usr.swordD = 0
					usr.verbs -= new /mob/sword/verb/Atacar_com_Espada()
					usr.verbs -= new /mob/Sword/verb/Hit()

				else
					src.worn = 1
					usr.Weaponworn = 1
					usr.S3 = 1
					usr.overlays += 'Kusagani.dmi'
					usr<< "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					usr.verbs += new /mob/sword/verb/Atacar_com_Espada()
					usr.verbs += new /mob/Sword/verb/Hit()

			Olhar()
				usr<<"This is Orochimaru Sword."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"


obj
	KusaganiJ
		name = "Kusanagi"
		icon = 'kusajony.dmi'
		worn = 0
		price = 9999999999999999999999
		verb
			Usar()
				if(usr.S1 || usr.S2||usr.SVip)
					usr<<"You can not have more than one sword on at a time."
					return
				if(usr.Weaponworn == 1)
					src.worn = 0
					usr.Weaponworn = 0
					usr.S3 = 0
					usr.overlays -= 'kusajony.dmi'
					usr<< "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.swordD = 0
					usr.verbs -= new /mob/sword/verb/Atacar_com_Espada()
					usr.verbs -= new /mob/Sword/verb/Hit()

				else
					src.worn = 1
					usr.Weaponworn = 1
					usr.S3 = 1
					usr.overlays += 'kusajony.dmi'
					usr<< "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					usr.verbs += new /mob/sword/verb/Atacar_com_Espada()
					usr.verbs += new /mob/Sword/verb/Hit()

			Olhar()
				usr<<"This is Orochimaru Sword."
			Descartar()
				if(src.worn == 1)
					usr << "Não enquanto você o usa."
				if(src.worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	KunaiKnife
		name = "Kunai Knife"
		icon = 'kunaiknife.dmi'
		worn = 0
		price = 1000
		verb
			Usar()
				if(usr:Kunaiworn == 1)
					src.worn = 0
					usr:Kunaiworn = 0
					usr.overlays -= 'kunaiknife.dmi'
					usr.overlays -= 'kunaiknife.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src.worn = 1
					usr:Kunaiworn = 1
					usr.overlays += 'kunaiknife.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This a standard Kunai Knife."
			Descartar()
				if(src.worn)
					usr << "Não enquanto você o usa."
					return
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	Jouninsuit
		name = "Jounin Vestimenta"
		icon = 'New Jounin.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'New Jounin.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'New Jounin.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a official suit given to Jounins."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"


obj
	JouninKumo
		name = "Jounin Vestimenta"
		icon = 'Kumo Suit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Kumo Suit.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Kumo Suit.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a official suit given to Jounins."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"


obj
	JouninKiri
		name = "Jounin Vestimenta"
		icon = 'Mist Suit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Mist Suit.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Mist Suit.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a official suit given to Jounins."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"


obj
	JouninSuna
		name = "Jounin Vestimenta"
		icon = 'Suna Suit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Suna Suit.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Suna Suit.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a official suit given to Jounins."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	MascaraBranca
		name = "Mascara Branca"
		icon = 'mascaranova.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'mascaranova.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'mascaranova.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Esta é uma Máscara Branca."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"




obj
	JouninAme
		name = "Jounin Vestimenta"
		icon = 'Ame Suit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Ame Suit.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Ame Suit.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a official suit given to Jounins."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"


obj
	JouninIwa
		name = "Jounin Vestimenta"
		icon = 'Iwa Suit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Iwa Suit.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Iwa Suit.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a official suit given to Jounins."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"


obj
	SSSropa
		name = "SSS suit 2"
		icon = 'sevenropa.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'sevenropa.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'sevenropa.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a official suit given to Jounins."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	Pill
		name = "Pilula de Soldado"
		icon = 'things.dmi'
		icon_state="Pill"
		verb
			Tomar()
				set name = "Tomar Pilula"
				if(usr.cdpilula)
					usr << "<b>Cooldown:</b> Aguarde para tomar novamente a <b>Pílula de Soldado</b>!"
					return
				if(src.usado)return
				if(usr.health < usr.maxhealth || usr.stamina < usr.Mstamina)
					if(usr.cdpilula)return
					usr.cdpilula=1
					spawn() usr.Cooldown(80,"Pilula")
					src.usado=1
					usr<<"Você tomou a [src]"
					flick('recuperarhp.dmi',usr)
					usr.chakra += usr.Mchakra/10
					if(usr.chakra>=usr.Mchakra)usr.chakra=usr.Mchakra
					usr.stamina += usr.Mstamina/10
					if(usr.stamina>=usr.Mstamina)usr.stamina=usr.Mstamina
					F_damage(usr, usr.Mchakra/10, "#008000")
					spawn(20)F_damage(usr, usr.Mstamina/10, "#008000")
					usr.calories += 20
					sleep(80)
					del(src)
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	ANBUattacksuit
		name = "Sannin suit"
		icon = 'ANBUattacksuit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'ANBUattacksuit.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'ANBUattacksuit.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a official suit given to Sannin."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	BigHat
		name = "Big Hat"
		icon = 'strawhat.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'strawhat.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'strawhat.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a Big Hat."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	Sandles
		name = "Sandles"
		icon = 'Bsandels.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Bsandels.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Bsandels.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Sandles."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	BoneSword
		name = "Bone Sword"
		icon = 'EspadaKaguya.dmi'
		worn = 0
		price = 0
		verb
			Usar()
				if(usr:BSworn == 1)
					src.worn = 0
					usr:BSworn = 0
					usr.overlays -= 'EspadaKaguya.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.bonesword = 0
					usr.tai = usr.Mtai
				else
					if(usr.spinesword)
						usr<<"You can only weild one Bone sword at a time"
						return
					src.worn = 1
					usr:BSworn = 1
					usr.overlays += 'EspadaKaguya.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					usr.tai = usr.Mtai*1.1
					usr.bonesword = 1
			Olhar()
				usr<<"This is a sword made from the arm bone."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
obj
	Spinewhip
		name = "Spine Bone Whip"
		icon = 'tessenka.dmi'
		worn = 0
		price = 0
		verb
			Usar()
				if(usr:SWworn == 1)
					src:worn = 0
					usr:SWworn = 0
					usr.overlays -= 'tessenka.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.spinesword = 0
					usr.tai = usr.Mtai
				else
					if(usr.bonesword)
						usr<<"Você só pode usar 1 deles."
						return
					src.worn = 1
					usr:SWworn = 1
					usr.overlays += 'tessenka.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					usr.tai = usr.Mtai*1.1
					usr.spinesword = 1
			Olhar()
				usr<<"This is a whip made from the spine."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()

obj
	Lanca
		name = "Lanca de Chakra"
		icon = 'lanca.dmi'
		worn = 0
		price = 0
		verb
			Usar()
				if(usr:SWworn == 1)
					src:worn = 0
					usr:SWworn = 0
					usr.overlays -= 'lanca.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.lamina = 0
					usr.tai -= 1500
					usr.swordD=0
				else
					if(usr.bonesword)
						usr<<"Você só pode usar 1 deles."
						return
					src.worn = 1
					usr:SWworn = 1
					usr.overlays += 'lanca.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					usr.tai += 1500
					usr.lamina = 1
			Olhar()
				usr<<"É uma lamina de chakra."
			Destruir()
				usr<<"Você destruiu sua Lança de Chakra"
				del(src)
mob/var
	goud=0
obj
	Gourd
		name = "Gourd"
		icon = 'sandgourd.dmi'//dont have a base icon so cant make weights icon!lol
		price = 3000
		worn = 0
		verb
			Usar()
				if(usr.goud==1)
					src:worn = 0
					usr.overlays -= 'sandgourd.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					usr.goud=0
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'sandgourd.dmi'
					usr << "Você coloca o(a) [src.name]."
					usr.goud=1
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a gourd filled with sand."
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou o(a) [src]"
obj
	Ganbu
		name = "Green ANBU Mask"
		icon = 'MASCARA ANBU Kusa.dmi'
		worn = 0
		verb
			Usar()
				if(src.worn)
					src:worn = 0
					usr.overlays -= 'MASCARA ANBU Kusa.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'MASCARA ANBU Kusa.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is the ANBU Green Mask."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou o(a) [src]"
obj
	Banbu
		name = "Blue ANBU Mask"
		icon = 'MASCARA ANBU Ame.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'MASCARA ANBU Ame.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'MASCARA ANBU Ame.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is the ANBU Blue Mask."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou o(a) [src]"


obj
	BanbuK
		name = "Blue ANBU Mask"
		icon = 'MASCARA ANBU Kiri.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'MASCARA ANBU Kiri.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'MASCARA ANBU Kiri.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is the ANBU Blue Mask."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou o(a) [src]"

obj
	BanbuT
		name = "Blue ANBU Mask"
		icon = 'MASCARA ANBU Taki.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'MASCARA ANBU Taki.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'MASCARA ANBU Taki.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is the ANBU Blue Mask."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou o(a) [src]"
/*obj
	Doll_Summoning_Scroll
		icon='scroll.dmi'
		icon_state="4"
		name = "Puppet1"
		verb
			Learn_Doll1()
				usr << "<B><font color = blue>You have Learned Doll Summons!!"
				usr.verbs += new /mob/puppet/verb/kugutsu()

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou o(a) [src]"
			Destroy()
			 del(src)
*/
obj
	KibaS
		name = "Sweater"
		icon = 'KibaS.dmi'
		worn = 0
		price = 750
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'KibaS.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'KibaS.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a sweater."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	HakuS
		name = "Haku Suit"
		icon = 'HakuS.dmi'
		worn = 0
		price = 750
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'HakuS.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'HakuS.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is Hakus suit."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	NaraS
		name = "Nara Suit"
		icon = 'NaraS.dmi'
		worn = 0
		price = 750
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'NaraS.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'NaraS.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a Nara Shirt."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	KunaiHolster
		name = "Leg Bag"
		icon = 'Kunai_Holster.dmi'
		worn = 0
		price = 0
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Kunai_Holster.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Kunai_Holster.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a Kunai Holster."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"


obj
	ChojiS
		name = "Choji Suit"
		icon = 'Roupa Chouji Shipp.dmi'
		worn = 0
		price = 750
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Roupa Chouji Shipp.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Roupa Chouji Shipp.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a Choji Suit."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	elec
		name = "elec"
		icon = 'elec.dmi'

obj
	Doll
		name = "Guard"
		icon = 'karasu.dmi'

obj
	Note
		name = "Notes"
		icon = 'notes.dmi'

obj
	CloudSuit
		name = "Kumo Jounin Suit"
		icon = 'cloudjouninS.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'cloudjouninS.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'cloudjouninS.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a official vest given to jounins."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	GrassSuit
		name = "Kusa Jounin Suit"
		icon = 'grassjouninS.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'grassjouninS.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'grassjouninS.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a official vest given to jounins."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	LeafSuit
		name = "Konoha Jounin Suit"
		icon = 'leafjouninS.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'leafjouninS.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'leafjouninS.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a official vest given to jounins."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	MistSuit
		name = "Kiri Jounin Suit"
		icon = 'mistjouninS.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'mistjouninS.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'mistjouninS.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a official vest given to jounins."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	RainSuit
		name = "Ame Jounin Suit"
		icon = 'rainjouninS.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'rainjouninS.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'rainjouninS.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a official vest given to jounins."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	RockSuit
		name = "Iwa Jounin Suit"
		icon = 'rockjouninS.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'rockjouninS.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'rockjouninS.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a official vest given to jounins."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	SandSuit
		name = "Suna Jounin Suit"
		icon = 'SandjouninS.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'SandjouninS.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'SandjouninS.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a official vest given to jounins."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	StarSuit
		name = "Hoshi Jounin Suit"
		icon = 'StarSuit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'StarSuit.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'StarSuit.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a official vest given to jounins."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	SnowSuit
		name = "Yuki Jounin Suit"
		icon = 'SnowjouninS.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'SnowjouninS.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'SnowjouninS.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a official vest given to jounins."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	SoundSuit
		name = "Oto Jounin Suit"
		icon = 'soundjouninS.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'soundjouninS.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'soundjouninS.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a official vest given to jounins."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	WaterfallSuit
		name = "Taki Jounin Suit"
		icon = 'waterfalljouninS.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'waterfalljouninS.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'waterfalljouninS.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a official vest given to jounins."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	KabutoSuit
		name = "Kabuto Suit"
		icon = 'KabutoSuit.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'KabutoSuit.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'KabutoSuit.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a Medic Suit."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
obj
	SasukeSuit
		name = "Sasake Suit"
		icon = 'SasukeSuit.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'SasukeSuit.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'SasukeSuit.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is Sasake's Suit."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"


obj
	Esmeraldsword
		name="Seimei Sword"
		icon='Esmeraldsword.dmi'
		worn= 0
		price= 9999999999999999999999999
		verb
			Usar()
				if(usr.S2 || usr.S3||usr.SVip)
					usr<<"You can not have more than one sword on at a time."
					return
				if(usr.Weaponworn == 1)
					usr.S1 = 0
					usr:Weaponworn = 0
					src.worn = 0
					usr.overlays -= 'Esmeraldsword.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.nin = usr.Mnin
					usr.swordD = 0
					usr.verbs -= new /mob/sword/verb/Atacar_com_Espada()
					usr.verbs -= new /mob/Sword/verb/Hit()
				else
					usr:Weaponworn = 1
					src.worn = 1
					usr.S1 = 1
					usr.overlays += 'Esmeraldsword.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					sleep(3)
					usr.nin*=1.6
					usr.verbs += new /mob/sword/verb/Atacar_com_Espada()
					usr.verbs += new /mob/Sword/verb/Hit()


			Olhar()
				usr<<"Esta é a espada mais poderosa feita por shinobis da Vila Takumi."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	TobiArma
		name="Madara Sword"
		icon='Tobi - Arma.dmi'
		worn= 0
		price= 9999999999999999999999999
		verb
			Usar()
				if(usr.S2 || usr.S3||usr.SVip)
					usr<<"You can not have more than one sword on at a time."
					return
				if(usr.Weaponworn == 1)
					usr.S1 = 0
					usr:Weaponworn = 0
					src.worn = 0
					usr.overlays -= 'Tobi - Arma.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.gen = usr.Mgen
					usr.swordD = 0
				else
					usr:Weaponworn = 1
					src.worn = 1
					usr.S1 = 1
					usr.overlays += 'Tobi - Arma.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					sleep(3)
					usr.gen*=1.1
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"


obj
	ImperialGariansword
		name="Imperial Garian Sword"
		icon='ImperialGariansword.dmi'
		worn= 0
		price= 9999999999999999999999999
		verb
			Usar()
				if(usr.S2 || usr.S3||usr.SVip)
					usr<<"You can not have more than one sword on at a time."
					return
				if(usr.Weaponworn == 1)
					usr.S1 = 0
					usr:Weaponworn = 0
					src.worn = 0
					usr.overlays -= 'ImperialGariansword.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.nin = usr.Mnin
					usr.swordD = 0
					usr.nin -= 3000
					usr.gen -= 8000
					usr.tai -= 500
					usr.nin = usr.Mnin
					usr.gen = usr.Mgen
					usr.tai = usr.Mtai
					usr.verbs -= new /mob/sword/verb/Atacar_com_Espada()



				else


					usr:Weaponworn = 1
					src.worn = 1
					usr.S1 = 1
					usr.overlays += 'ImperialGariansword.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					usr.nin += 3000
					usr.gen += 8000
					usr.tai += 500
					sleep(3)



					usr.verbs += new /mob/sword/verb/Atacar_com_Espada()


			Olhar()
				usr<<"Esta é a espada da vila Takumi que aumenta as capacidades de genjutsu do shinobi que a usa."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"





obj
	HishouSoukenswords
		name="Hishou Souken Swords"
		icon='HishouSoukenswords.dmi'
		worn= 0
		price= 9999999999999999999999999
		verb
			Usar()
				if(usr.S2 || usr.S3||usr.SVip)
					usr<<"You can not have more than one sword on at a time."
					return
				if(usr.Weaponworn == 1)
					usr.S1 = 0
					usr:Weaponworn = 0
					src.worn = 0
					usr.overlays -= 'HishouSoukenswords.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.nin = usr.Mnin
					usr.swordD = 0
					usr.nin -= 5000
					usr.gen -= 3000
					usr.tai -= 5000
					usr.nin = usr.Mnin
					usr.gen = usr.Mgen
					usr.tai = usr.Mtai
					usr.verbs -= new /mob/sword/verb/Atacar_com_Espada()


				else

					usr:Weaponworn = 1
					src.worn = 1
					usr.S1 = 1
					usr.overlays += 'HishouSoukenswords.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					usr.nin += 5000
					usr.gen += 3000
					usr.tai += 5000
					sleep(3)



					usr.verbs += new /mob/sword/verb/Atacar_com_Espada()




			Olhar()
				usr<<"Estas espadas são leves e de fácil manuseio.Com elas o shinobi ataca com uma velocidade incrível."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"



obj
	SevenSwords
		name="Water Sword"
		icon='(12)Water Sword.dmi'
		worn= 0
		price= 9999999999999999999999999
		verb
			Usar()
				if(usr.S2 || usr.S3||usr.SVip)
					usr<<"You can not have more than one sword on at a time."
					return
				if(usr.Weaponworn == 1)
					usr.S1 = 0
					usr:Weaponworn = 0
					src.worn = 0
					usr.overlays -= '(12)Water Sword.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.nin = usr.Mnin
					usr.swordD = 0
					usr.verbs -= new /mob/sword/verb/Atacar_com_Espada()


				else


					usr:Weaponworn = 1
					src.worn = 1
					usr.S1 = 1
					usr.overlays += '(12)Water Sword.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"

					sleep(3)



					usr.verbs += new /mob/sword/verb/Atacar_com_Espada()




			Olhar()
				usr<<"Esta espada é oficialmente uma espada da Seven Swordsmen Shinobis."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"



obj
	Starsuitt
		name = "Hoshi Suit"
		icon = 'Starsuitt.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Starsuitt.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Starsuitt.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a Hoshi suit."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"



obj
	Starhat
		name = "Star Hat"
		icon = 'Starhat.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Starhat.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Starhat.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"This is a Star Hat."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"




obj
	Kagesword
		name="Kage Sword"
		icon='Kagesword.dmi'
		worn= 0
		price= 9999999999999999999999999
		verb
			Usar()
				if(usr.S2 || usr.S3||usr.SVip)
					usr<<"You can not have more than one sword on at a time."
					return
				if(usr.Weaponworn == 1)
					usr.S1 = 0
					usr:Weaponworn = 0
					src.worn = 0
					usr.overlays -= 'Kagesword.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.nin -= 8000
					usr.gen -= 3000
					usr.tai -= 5000
					usr.swordD = 0
					usr.verbs -= new /mob/sword/verb/Atacar_com_Espada()


				else
					usr.nin += 8000
					usr.gen += 3000
					usr.tai += 5000


					usr:Weaponworn = 1
					src.worn = 1
					usr.S1 = 1
					usr.overlays += 'Kagesword.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"

					sleep(3)

					usr.verbs += new /mob/sword/verb/Atacar_com_Espada()
			Olhar()
				usr<<"Esta é a espada oficial dos Kages de todas as vilas.."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"




obj
	KusaganiChidori
		name="Kusagani Chidori"
		icon='SasukeSword2.dmi'
		worn= 0
		price= 9999999999999999999999999
		verb
			Usar()
				if(usr.S2 || usr.S3||usr.SVip)
					usr<<"You can not have more than one sword on at a time."
					return
				if(usr.Weaponworn == 1)
					usr.S1 = 0
					usr:Weaponworn = 0
					src.worn = 0
					usr.overlays -= 'SasukeSword2.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.nin = usr.Mnin
					usr.gen = usr.Mgen
					usr.swordD = 0
					usr.verbs -= new /mob/sword/verb/Atacar_com_Espada()
					usr.verbs -= new /mob/Sword/verb/Hit()
					usr.verbs -= new /mob/Sword/verb/Hitfreeze()



				else

					usr:Weaponworn = 1
					src.worn = 1
					usr.S1 = 1
					usr.overlays += 'SasukeSword2.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					sleep(3)
					usr.nin = usr.nin*1.2
					usr.gen = usr.gen*1.3
					usr.verbs += new /mob/sword/verb/Atacar_com_Espada()
					usr.verbs += new /mob/Sword/verb/Hit()
					usr.verbs += new /mob/Sword/verb/Hitfreeze()
			Olhar()
				usr<<"Esta é uma Kusagani com a técnica chidori em sua lamina.."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"



obj
	StarSword
		name="Hoshi Sword"
		icon='HoshiSword.dmi'
		worn= 0
		price= 9999999999999999999999999
		verb
			Usar()
				if(usr.S2 || usr.S3||usr.SVip)
					usr<<"You can not have more than one sword on at a time."
					return
				if(usr.Weaponworn == 1)
					usr.S1 = 0
					usr:Weaponworn = 0
					src.worn = 0
					usr.overlays -= 'HoshiSword.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.nin = usr.Mnin
					usr.swordD = 0
					usr.verbs -= new /mob/sword/verb/Atacar_com_Espada()



				else

					usr:Weaponworn = 1
					src.worn = 1
					usr.S1 = 1
					usr.overlays += 'HoshiSword.dmi'
					usr.nin = usr.Mnin*1.3
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					sleep(3)
					usr.verbs += new /mob/sword/verb/Atacar_com_Espada()
			Olhar()
				usr<<"Esta é uma espada geralmente usada por shinobis de Hoshi.."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"












obj
	CloudSage
		name = "Kumo Sannin Suit"
		icon = 'CloudSage.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 9999999999999999999999
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'CloudSage.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'CloudSage.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é a roupa usada pelos Sannins de Kumo."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	Takaleader
		name = "Taka Leader Suit"
		icon = 'cloak2.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 9999999999999999999999
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'cloak2.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'cloak2.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é a roupa usada pelo lider da Taka."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"


obj
	LeafSage
		name = "Konoha Sannin Suit"
		icon = 'LeafSage.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 9999999999999999999999
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'LeafSage.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'LeafSage.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é a roupa usada pelos Sannins de Konoha."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	GrassSage
		name = "Kusa Sannin Suit"
		icon = 'GrassSage.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 9999999999999999999999
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'GrassSage.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'GrassSage.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é a roupa usada pelos Sannins de Kusa."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	RainSage
		name = "Ame Sannin Suit"
		icon = 'RainSage.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 9999999999999999999999
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'RainSage.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'RainSage.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é a roupa usada pelos Sannins de Ame."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"


obj
	SandSage
		name = "Suna Sannin Suit"
		icon = 'SandSage.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 9999999999999999999999
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'SandSage.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'SandSage.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é a roupa usada pelos Sannins de Suna."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"



obj
	SoundSage
		name = "Oto Sannin Suit"
		icon = 'SoundSage.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 9999999999999999999999
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'SoundSage.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'SoundSage.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é a roupa usada pelos Sannins de Oto."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"


obj
	RockSage
		name = "Iwa Sannin Suit"
		icon = 'RockSage.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 9999999999999999999999
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'RockSage.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'RockSage.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é a roupa usada pelos Sannins de Iwa."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"


obj
	SnowSage
		name = "Yuki Sannin Suit"
		icon = 'SnowSage.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 9999999999999999999999
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'SnowSage.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'SnowSage.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é a roupa usada pelos Sannins de Yuki."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"


obj
	MistSage
		name = "Kiri Sannin Suit"
		icon = 'MistSage.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 9999999999999999999999
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'MistSage.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'MistSage.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é a roupa usada pelos Sannins de Kiri."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"



obj
	StarSage
		name = "Hoshi Sannin Suit"
		icon = 'StarSage.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 9999999999999999999999
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'StarSage.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'StarSage.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é a roupa usada pelos Sannins de Hoshi."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"


obj
	PoliceUniforme
		name = "Police Uniforme"
		icon = 'PoliceUniforme.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 9999999999999999999999
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'PoliceUniforme.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'PoliceUniforme.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é a roupa usada pelos membros da Police Force."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"



obj
	Sor
		name = "Roupa SO"
		icon = 'Roupa SO.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 9999999999999999999999
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Roupa SO.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Roupa SO.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é a roupa usada pelos membros da SO."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

















obj
	FireSword
		name="Police Sword"
		icon='FireSword2.dmi'
		worn= 0
		price= 9999999999999999999999999
		verb
			Usar()
				if(usr.S2 || usr.S3||usr.SVip)
					usr<<"You can not have more than one sword on at a time."
					return
				if(usr.Weaponworn == 1)
					usr.S1 = 0
					usr:Weaponworn = 0
					src.worn = 0
					usr.overlays -= 'FireSword2.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.nin -= 1000
					usr.gen -= 3000
					usr.tai -= 5000
					usr.swordD = 0
					usr.verbs -= new /mob/sword/verb/Atacar_com_Espada()



				else
					usr:Weaponworn = 1
					src.worn = 1
					usr.S1 = 1
					usr.overlays += 'FireSword2.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					usr.nin += 1000
					usr.gen += 3000
					usr.tai += 5000

					sleep(3)

					usr.verbs += new /mob/sword/verb/Atacar_com_Espada()

			Olhar()
				usr<<"Esta é a espada oficial dos membros da honorável Uchiha Police.."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"












obj
	NidaimeSword
		name="Raijin no Ken Sword"
		icon='9RaijinnoKen.dmi'
		worn= 0
		price= 9999999999999999999999999
		verb
			Usar()
				if(usr.S2 || usr.S3||usr.SVip)
					usr<<"You can not have more than one sword on at a time."
					return
				if(usr.Weaponworn == 1)
					usr.S1 = 0
					usr:Weaponworn = 0
					src.worn = 0
					usr.overlays -= '9RaijinnoKen.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.nin = usr.Mnin
					usr.swordD = 0
					usr.verbs -= new /mob/sword/verb/Atacar_com_Espada()
					usr.verbs -= new /mob/Sword/verb/Hit()


				else
					usr:Weaponworn = 1
					src.worn = 1
					usr.S1 = 1
					usr.overlays += '9RaijinnoKen.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					sleep(3)
					usr.verbs += new /mob/sword/verb/Atacar_com_Espada()
					usr.verbs += new /mob/Sword/verb/Hit()
			Olhar()
				usr<<"Esta é a espada oficial do Nidaime Hokage.."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"










obj
	ANBUCAP
		name="Anbu Cap Sword"
		icon='(2)espada.dmi'
		worn= 0
		price= 9999999999999999999999999
		verb
			Usar()
				if(usr.S2 || usr.S3||usr.SVip)
					usr<<"You can not have more than one sword on at a time."
					return
				if(usr.Weaponworn == 1)
					usr.S1 = 0
					usr:Weaponworn = 0
					src.worn = 0
					usr.overlays -= '(2)espada.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.nin = usr.Mnin
					usr.swordD = 0
					usr.verbs -= new /mob/sword/verb/Atacar_com_Espada()


				else
					usr:Weaponworn = 1
					src.worn = 1
					usr.S1 = 1
					usr.overlays += '(2)espada.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"

					sleep(3)

					usr.verbs += new /mob/sword/verb/Atacar_com_Espada()
			Olhar()
				usr<<"Esta é uma misteriosa espada.."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"






obj
	HidanSword
		name="Hidan Sword"
		icon='HidanSword.dmi'
		worn= 0
		price= 9999999999999999999999999
		verb
			Usar()
				if(usr.S2 || usr.S3||usr.SVip)
					usr<<"You can not have more than one sword on at a time."
					return
				if(usr.Weaponworn == 1)
					usr.S1 = 0
					usr:Weaponworn = 0
					src.worn = 0
					usr.overlays -= 'HidanSword.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.swordD = 0
					usr.verbs -= new /mob/sword/verb/Atacar_com_Espada()
					usr.verbs -= new /mob/Sword/verb/Hit()
					usr.verbs -= new /mob/Sword/verb/HitSpecial()



				else
					usr:Weaponworn = 1
					src.worn = 1
					usr.S1 = 1
					usr.overlays += 'HidanSword.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"

					sleep(3)
					usr.verbs += new /mob/sword/verb/Atacar_com_Espada()
					usr.verbs += new /mob/Sword/verb/Hit()
					usr.verbs += new /mob/Sword/verb/HitSpecial()

			Olhar()
				usr<<"Esta é uma misteriosa espada.."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	SuigetsuSword
		name="Espada do Suigetsu"
		icon='SuigetsuSword.dmi'
		worn= 0
		price= 9999999999999999999999999
		verb
			Usar()
				if(usr.S2 || usr.S3||usr.SVip)
					usr<<"You can not have more than one sword on at a time."
					return
				if(usr.Weaponworn == 1)
					usr.S1 = 0
					usr:Weaponworn = 0
					src.worn = 0
					usr.overlays -= 'SuigetsuSword.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.nin = usr.Mnin
					usr.swordD = 0
					usr.verbs -= new /mob/sword/verb/Atacar_com_Espada()
					usr.verbs -= new /mob/Sword/verb/Hit()



				else
					usr:Weaponworn = 1
					src.worn = 1
					usr.S1 = 1
					usr.overlays += 'SuigetsuSword.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"

					sleep(3)
					usr.verbs += new /mob/sword/verb/Atacar_com_Espada()
					usr.verbs += new /mob/Sword/verb/Hit()

			Olhar()
				usr<<"Esta é uma misteriosa espada.."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	EspadaTaka
		name="Katana da Taka"
		icon='ESPADA HEBI.dmi'
		worn= 0
		price= 9999999999999999999999999
		verb
			Usar()
				if(usr.S2 || usr.S3||usr.SVip)
					usr<<"You can not have more than one sword on at a time."
					return
				if(usr.Weaponworn == 1)
					usr.S1 = 0
					usr:Weaponworn = 0
					src.worn = 0
					usr.overlays -= 'ESPADA HEBI.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.nin = usr.Mnin
					usr.swordD = 0
					usr.verbs -= new /mob/sword/verb/Atacar_com_Espada()
					usr.verbs -= new /mob/Sword/verb/Hit()



				else
					usr:Weaponworn = 1
					src.worn = 1
					usr.S1 = 1
					usr.overlays += 'ESPADA HEBI.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"

					sleep(3)
					usr.verbs += new /mob/sword/verb/Atacar_com_Espada()
					usr.verbs += new /mob/Sword/verb/Hit()

			Olhar()
				usr<<"Esta é uma misteriosa espada.."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"


obj
	AnbuSword
		name="Anbu Sword"
		icon='Steel Long Sword2.dmi'
		worn= 0
		price= 9999999999999999999999999
		verb
			Usar()
				if(usr.S2 || usr.S3||usr.SVip)
					usr<<"You can not have more than one sword on at a time."
					return
				if(usr.Weaponworn == 1)
					usr.S1 = 0
					usr:Weaponworn = 0
					src.worn = 0
					usr.overlays -= 'Steel Long Sword2.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.nin = usr.Mnin
					usr.swordD = 0
					usr.verbs -= new /mob/sword/verb/Atacar_com_Espada()


				else
					usr:Weaponworn = 1
					src.worn = 1
					usr.S1 = 1
					usr.overlays += 'Steel Long Sword2.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"

					sleep(3)


					usr.verbs += new /mob/sword/verb/Atacar_com_Espada()
			Olhar()
				usr<<"Esta é uma misteriosa espada.."
			Destroy()
				del(src)

			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"






obj
	Tblue
		name = "Ticket Azul"
		icon = 'ts.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state="Tblue"
		worn = 0
		price = 9999999999999999999999
		verb
			Olhar()
				usr<<"É um ticket azul.Talvez vc possa trocalo por alguma coisa."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"


obj
	Tblueb
		name = "Ticket Azul Claro"
		icon = 'ts.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state="Tblueb"
		worn = 0
		price = 9999999999999999999999
		verb
			Olhar()
				usr<<"É um ticket azul-claro.Talvez vc possa trocalo por alguma coisa."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"


obj
	Tdblue
		name = "Ticket Azul Marinho"
		icon = 'ts.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state="Tdblue"
		worn = 0
		price = 9999999999999999999999
		verb
			Olhar()
				usr<<"É um ticket azul-marinho.Talvez vc possa trocalo por alguma coisa."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"


obj
	Tb
		name = "Ticket Preto"
		icon = 'ts.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state="Tb"
		worn = 0
		price = 9999999999999999999999
		verb
			Olhar()
				usr<<"É um ticket preto.Talvez vc possa trocalo por alguma coisa."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"


obj
	ReloP
		name = "Relógio Parado"
		icon = 'house_furniture.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state="clock"
		worn = 0
		price = 9999999999999999999999
		verb
			Olhar()
				usr<<"É um Relógio Parado.Talvez vc possa usá-lo para alguma coisa."
			//	world<<"[usr] começou a contar as horas pelo Relógio Parado para dar meia hora de bunda!"

			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr << "Você parou de usar o [src.name]!"
				//	world<<"[usr] parou de dar a bunda!"
					src.suffix = ""
				else
					src:worn = 1
					usr << "Você começa a usar o [src.name]."
					src.suffix = "Equipado"
				//	world<<"[usr] começou a dar a bunda!"
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"


obj
	Tgreen
		name = "Ticket Verde"
		icon = 'ts.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state="Tgreen"
		worn = 0
		price = 9999999999999999999999
		verb
			Olhar()
				usr<<"É um ticket verde.Talvez vc possa trocalo por alguma coisa."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"


obj
	Tw
		name = "Ticket Branco"
		icon = 'ts.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state="Tw"
		worn = 0
		price = 9999999999999999999999
		verb
			Olhar()
				usr<<"É um ticket branco.Talvez vc possa trocalo por alguma coisa."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"



obj
	Tred
		name = "Ticket Vermelho"
		icon = 'ts.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state="Tred"
		worn = 0
		price = 9999999999999999999999
		verb
			Olhar()
				usr<<"É um ticket vermelho.Talvez vc possa trocalo por alguma coisa."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"

obj
	Pedra
		name = "pedra do vento"
		icon = 'pedra.dmi'
		verb
			Pegar()
				set src in oview(1)
				if(usr.fq==1)
					usr<<"Você já tem uma pedra igual"
				else
					var/obj/Pedra/B = new/obj/Pedra
					B.loc = usr
					usr<<"Você pegou um(a) [src]"
					usr.fq = 1
					del(src)
			Destroy()
				usr.fq=0
				del(src)

obj
	Petala
		name = "petala de rosa"
		icon = 'petala.dmi'
		verb
			Pegar()
				set src in oview(1)
				if(usr.hq >= 1)
					usr<<"Você já tem uma petala igual"
				else
					var/obj/Petala/B = new/obj/Petala
					B.loc = usr
					usr<<"Você pegou um(a) [src]"
					usr.hq = 1
					del(src)
			Destroy()
				usr.hq=0
				del(src)

obj
	Concha
		name = "concha"
		icon = 'concha.dmi'
		verb
			Pegar()
				set src in oview(1)
				if(usr.sq >= 1)
					usr<<"Você já tem uma concha igual"
				else
					var/obj/Concha/B = new/obj/Concha
					B.loc = usr
					usr<<"Você pegou um(a) [src]"
					usr.sq = 1
					del(src)
			Destroy()
				usr.sq=0
				del(src)

obj
	Mel
		name = "pote de mel"
		icon = 'mel.dmi'
		verb
			Pegar()
				set src in oview(1)
				if(usr.dq2 >= 1)
					usr<<"Você já tem um pote de mel igual"
				else
					var/obj/Mel/B = new/obj/Mel
					B.loc = usr
					usr<<"Você pegou um(a) [src]"
					usr.dq2 = 1
					del(src)
			Destroy()
				usr.dq2=0
				del(src)

obj
	Casca
		name = "casca de arvore do deserto"
		icon = 'casca.dmi'
		verb
			Pegar()
				set src in oview(1)
				if(usr.rq >= 1)
					usr<<"Você já tem uma casca igual"
				else
					var/obj/Casca/B = new/obj/Casca
					B.loc = usr
					usr<<"Você pegou um(a) [src]"
					usr.rq = 1
					del(src)
			Destroy()
				usr.rq=0
				del(src)

mob/var/segele=0
obj
	SegundoE
		name = "Pergaminho Secreto"
		icon = 'experimentos2.dmi'
		icon_state = "elemento2"
		verb
			Pegar()
				set src in oview(1)
				if(usr.segele >= 1)
					usr<<"Você já tem esse pergaminho igual"
				else
					var/obj/SegundoE/B = new/obj/SegundoE
					B.loc = usr
					usr<<"Você pegou um(a) [src]"
					usr.segele = 1
					del(src)
			Destroy()
				usr.segele=0
				del(src)

obj
	erva
		name = "Erva da força"
		icon = 'experimentos2.dmi'
		icon_state = "erva"
		verb
			Pegar()
				set src in oview(1)
				if(usr.erva >= 1)
					usr<<"Você já tem essa erva"
				else
					var/obj/erva/B = new/obj/erva
					B.loc = usr
					usr<<"Você pegou um(a) [src]"
					usr.erva = 1
					usr.pegouerva = 1
					del(src)
			Destroy()
				usr.erva=0
				usr.pegouerva = 0
				del(src)

obj
	argila
		name = "Bloco de argila"
		icon = 'experimentos2.dmi'
		icon_state = "argila"
		verb
			Pegar()
				set src in oview(1)
				if(locate(/obj/argila) in usr.contents)
					usr<<"Você já tem esse bloco"
				else
					var/obj/argila/B = new/obj/argila
					B.loc = usr
					usr<<"Você pegou um(a) [src]"
					usr.blocoargila = 1
					del(src)
			Destroy()
				usr.blocoargila=0
				for(var/obj/argila/B in usr) del B

obj
	peixe
		name = "Peixe"
		icon = 'experimentos2.dmi'
		icon_state = "peixe"
		verb
			Pegar()
				set src in oview(1)
				if(locate(/obj/peixe) in usr.contents)
					usr<<"Você já tem esse peixe"
				else
					var/obj/peixe/B = new/obj/peixe
					B.loc = usr
					usr.peixe=1
					usr<<"Você pegou um(a) [src]"
					del(src)
			Destroy()
				usr.peixe=0
				del(src)

obj
	pergaminhokage
		name = "Papéis Lacrados"
		icon = 'teste.dmi'
		verb
			Pegar()
				set src in oview(1)
				if(locate(/obj/pergaminhokage) in usr.contents)
					usr<<"Você já tem esse pergaminho"
				else
					var/obj/pergaminhokage/B = new/obj/pergaminhokage
					B.loc = usr
					usr<<"Você pegou um(a) [src]"
					usr.pergaminhopegado = 1
					del(src)
			Destroy()
				usr.pergaminhopegado=0
				del(src)






obj
	key1
		name = "Chave1"
		icon = 'key.dmi'
		verb
			Pegar()
				set src in oview(1)
				if(usr.key1 >= 1)
					usr<<"Você já tem esse pergaminho."
				else
					src.loc = usr
					usr<<"Você pegou um(a) [src]"
					usr.key1 = 1
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				usr.key1 = 0
			Destroy()
			 set hidden = 1
			 del(src)


obj
	key2
		name = "Chave2"
		icon = 'key.dmi'
		verb
			Pegar()
				set src in oview(1)
				if(usr.key2 >= 1)
					usr<<"Você já tem esse pergaminho."
				else
					src.loc = usr
					usr<<"Você pegou um(a) [src]"
					usr.key2 = 1
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				usr.key2 = 0
			Destroy()
			 set hidden = 1
			 del(src)


obj
	key3
		name = "Chave3"
		icon = 'key.dmi'
		verb
			Pegar()
				set src in oview(1)
				if(usr.key3 >= 1)
					usr<<"Você já tem esse pergaminho."
				else
					src.loc = usr
					usr<<"Você pegou um(a) [src]"
					usr.key3 = 1
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				usr.key3 = 0
			Destroy()
			 set hidden = 1
			 del(src)


obj
	key4
		name = "Chave4"
		icon = 'key.dmi'
		verb
			Pegar()
				set src in oview(1)
				if(usr.key4 >= 1)
					usr<<"Você já tem esse pergaminho."
				else
					src.loc = usr
					usr<<"Você pegou um(a) [src]"
					usr.key4 = 1
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				usr.key4 = 0
			Destroy()
			 set hidden = 1
			 del(src)

obj
	key5
		name = "Chave5"
		icon = 'key.dmi'
		verb
			Pegar()
				set src in oview(1)
				if(usr.key5 >= 1)
					usr<<"Você já tem esse pergaminho."
				else
					src.loc = usr
					usr<<"Você pegou um(a) [src]"
					usr.key5 = 1
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				usr.key5 = 0
			Destroy()
			 set hidden = 1
			 del(src)


obj
	key6
		name = "Chave6"
		icon = 'key.dmi'
		verb
			Pegar()
				set src in oview(1)
				if(usr.key6 >= 1)
					usr<<"Você já tem esse pergaminho."
				else
					src.loc = usr
					usr<<"Você pegou um(a) [src]"
					usr.key6 = 1
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				usr.key6 = 0
			Destroy()
			 set hidden = 1
			 del(src)



obj
	key7
		name = "Chave7"
		icon = 'key.dmi'
		verb
			Pegar()
				set src in oview(1)
				if(usr.key7 >= 1)
					usr<<"Você já tem esse pergaminho."
				else
					src.loc = usr
					usr<<"Você pegou um(a) [src]"
					usr.key7 = 1
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				usr.key7 = 0
			Destroy()
			 set hidden = 1
			 del(src)



obj
	key8
		name = "Chave8"
		icon = 'key.dmi'
		verb
			Pegar()
				set src in oview(1)
				if(usr.key8 >= 1)
					usr<<"Você já tem esse pergaminho."
				else
					src.loc = usr
					usr<<"Você pegou um(a) [src]"
					usr.key8 = 1
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				usr.key8 = 0
			Destroy()
			 set hidden = 1
			 del(src)




obj
	key9
		name = "Chave9"
		icon = 'key.dmi'
		verb
			Pegar()
				set src in oview(1)
				if(usr.key9 >= 1)
					usr<<"Você já tem esse pergaminho."
				else
					src.loc = usr
					usr<<"Você pegou um(a) [src]"
					usr.key9 = 1
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				usr.key9 = 0
			Destroy()
			 set hidden = 1
			 del(src)




obj
	key10
		name = "Chave10"
		icon = 'key.dmi'
		verb
			Pegar()
				set src in oview(1)
				if(usr.key10 >= 1)
					usr<<"Você já tem esse pergaminho."
				else
					src.loc = usr
					usr<<"Você pegou um(a) [src]"
					usr.key10 = 1
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				usr.key10 = 0
			Destroy()
			 set hidden = 1
			 del(src)



obj
	key11
		name = "Chave11"
		icon = 'key.dmi'
		verb
			Pegar()
				set src in oview(1)
				if(usr.key11 >= 1)
					usr<<"Você já tem esse pergaminho."
				else
					src.loc = usr
					usr<<"Você pegou um(a) [src]"
					usr.key11 = 1
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				usr.key11 = 0
			Destroy()
			 set hidden = 1
			 del(src)



obj
	key12
		name = "Chave12"
		icon = 'key.dmi'
		verb
			Pegar()
				set src in oview(1)
				if(usr.key12 >= 1)
					usr<<"Você já tem esse pergaminho."
				else
					src.loc = usr
					usr<<"Você pegou um(a) [src]"
					usr.key12 = 1
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				usr.key1 = 0
			Destroy()
			 set hidden = 12
			 del(src)


obj
	key13
		name = "Chave13"
		icon = 'key.dmi'
		verb
			Pegar()
				set src in oview(1)
				if(usr.key13 >= 1)
					usr<<"Você já tem esse pergaminho."
				else
					src.loc = usr
					usr<<"Você pegou um(a) [src]"
					usr.key13 = 1
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				usr.key13 = 0
			Destroy()
			 set hidden = 1
			 del(src)


obj
	key14
		name = "Chave14"
		icon = 'key.dmi'
		verb
			Pegar()
				set src in oview(1)
				if(usr.key14 >= 1)
					usr<<"Você já tem esse pergaminho."
				else
					src.loc = usr
					usr<<"Você pegou um(a) [src]"
					usr.key14 = 1
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				usr.key14 = 0
			Destroy()
			 set hidden = 1
			 del(src)



obj
	key15
		name = "Chave15"
		icon = 'key.dmi'
		verb
			Pegar()
				set src in oview(1)
				if(usr.key15 >= 1)
					usr<<"Você já tem esse pergaminho."
				else
					src.loc = usr
					usr<<"Você pegou um(a) [src]"
					usr.key15 = 1
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				usr.key15 = 0
			Destroy()
			 set hidden = 1
			 del(src)


obj
	key16
		name = "Chave16"
		icon = 'key.dmi'
		verb
			Pegar()
				set src in oview(1)
				if(usr.key16 >= 1)
					usr<<"Você já tem esse pergaminho."
				else
					src.loc = usr
					usr<<"Você pegou um(a) [src]"
					usr.key16 = 1
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				usr.key16 = 0
			Destroy()
			 set hidden = 1
			 del(src)



obj
	key17
		name = "Chave17"
		icon = 'key.dmi'
		verb
			Pegar()
				set src in oview(1)
				if(usr.key17 >= 1)
					usr<<"Você já tem esse pergaminho."
				else
					src.loc = usr
					usr<<"Você pegou um(a) [src]"
					usr.key17 = 1
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				usr.key17 = 0
			Destroy()
			 set hidden = 1
			 del(src)



obj
	key18
		name = "Chave18"
		icon = 'key.dmi'
		verb
			Pegar()
				set src in oview(1)
				if(usr.key18 >= 1)
					usr<<"Você já tem esse pergaminho."
				else
					src.loc = usr
					usr<<"Você pegou um(a) [src]"
					usr.key18 = 1
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				usr.key18 = 0
			Destroy()
			 set hidden = 1
			 del(src)



obj
	key19
		name = "Chave19"
		icon = 'key.dmi'
		verb
			Pegar()
				set src in oview(1)
				if(usr.key19 >= 1)
					usr<<"Você já tem esse pergaminho."
				else
					src.loc = usr
					usr<<"Você pegou um(a) [src]"
					usr.key19 = 1
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				usr.key19 = 0
			Destroy()
			 set hidden = 1
			 del(src)


obj
	key20
		name = "Chave20"
		icon = 'key.dmi'
		verb
			Pegar()
				set src in oview(1)
				if(usr.key20 >= 1)
					usr<<"Você já tem esse pergaminho."
				else
					src.loc = usr
					usr<<"Você pegou um(a) [src]"
					usr.key20 = 1
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				usr.key20 = 0
			Destroy()
			 set hidden = 1
			 del(src)



obj
	key21
		name = "Chave21"
		icon = 'key.dmi'
		verb
			Pegar()
				set src in oview(1)
				if(usr.key21 >= 1)
					usr<<"Você já tem esse pergaminho."
				else
					src.loc = usr
					usr<<"Você pegou um(a) [src]"
					usr.key21 = 1
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				usr.key21 = 0
			Destroy()
			 set hidden = 1
			 del(src)


obj
	key22
		name = "Chave22"
		icon = 'key.dmi'
		verb
			Pegar()
				set src in oview(1)
				if(usr.key22 >= 1)
					usr<<"Você já tem esse pergaminho."
				else
					src.loc = usr
					usr<<"Você pegou um(a) [src]"
					usr.key22 = 1
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				usr.key22 = 0
			Destroy()
			 set hidden = 1
			 del(src)

obj
	bolsadeargila
		name = "Bolsa de Argila"
		icon = 'bolsa.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'bolsa.dmi'//temp icon
					usr << "Você retirou a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'bolsa.dmi'
					usr << "Você colocou a [src.name]."
					src.suffix = "Equipado"
			Look()
				usr<<"Uma bolsa em que se guarda argila."
			Drop()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"



obj
	AmatsukiSword
		name = "Espada do Ama"
		icon = '9RaijinnoKen.dmi'
		worn = 0
		price = 9999999999999999999999
		verb
			Wear()
				if(usr.S1 || usr.S2)
					usr<<"You can not have more than one sword on at a time."
					return
				if(usr.Weaponworn == 1)
					src.worn = 0
					usr.Weaponworn = 0
					usr.S3 = 0
					usr.overlays -= '9RaijinnoKen.dmi'
					usr<< "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.nin -= 900
					usr.gen -= 300
					usr.tai -= 500
					usr.swordD = 0
					usr.verbs -= new /mob/sword/verb/Atacar_com_Espada()


				else
					src.worn = 1
					usr.nin += 900
					usr.gen += 300
					usr.tai += 500
					usr.Weaponworn = 1
					usr.S3 = 1
					usr.overlays += '9RaijinnoKen.dmi'
					usr<< "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					usr.verbs += new /mob/sword/verb/Atacar_com_Espada()

			Look()
				usr<<"Essa é a espada do Amatsuki."
			Drop()
				if(src.worn == 1)
					usr << "Não enquanto você o usa."
				if(src.worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"


obj
	stonewallH
		name = "Parade de pedra"
		icon = 'stonewallH.dmi'
		layer = MOB_LAYER+999
		base
			icon_state = "h1"
			density = 1
			New()
				..()
				overlays += /obj/stonewallH/h2/
				overlays += /obj/stonewallH/h4/
				overlays += /obj/stonewallH/h6/
				overlays += /obj/stonewallH/h8/
				overlays += /obj/stonewallH/h10/

		h2
			icon_state = "h2"
			pixel_y = 32
		h3
			icon_state = "h3"
	//		pixel_x = -32
			density = 1
		h4
			icon_state = "h4"
			pixel_y = 32
			pixel_x = -32
		h5
			icon_state = "h5"
	//		pixel_x = -64
			density = 1
		h6
			icon_state = "h6"
			pixel_y = 32
			pixel_x = -64
		h7
			icon_state = "h7"
	//		pixel_x = -96
			density = 1
		h8
			icon_state = "h8"
			pixel_y = 32
			pixel_x = -96
		h9
			icon_state = "h9"
	//		pixel_x = -128
			density = 1
		h10
			icon_state = "h10"
			pixel_y = 32
			pixel_x = -128
		h11
			icon_state = "h11"
	//		pixel_x = -160
			density = 1
		h12
			icon_state = "h12"
			pixel_y = 32
		//	pixel_x = -160

obj
	stonewallV
		name = "Parade de pedra"
		icon = 'stonewallV.dmi'
		layer = MOB_LAYER+999
		Enter(mob/player/M)
		base
			icon_state = "v1"
			density = 1
			New()
				..()
				overlays += /obj/stonewallV/v2/
				overlays += /obj/stonewallV/v4/
				overlays += /obj/stonewallV/v6/
				overlays += /obj/stonewallV/v8/
				overlays += /obj/stonewallV/v10/

		v2
			icon_state = "v2"
			pixel_x = -32
		v3
			icon_state = "v3"
	//		pixel_x = -32
			density = 1
		v4
			icon_state = "v4"
			pixel_y = 32
			pixel_x = -32
		v5
			icon_state = "v5"
	//		pixel_x = -64
			density = 1
		v6
			icon_state = "v6"
			pixel_x = -32
			pixel_y = 64
		v7
			icon_state = "v7"
	//		pixel_x = -96
			density = 1
		v8
			icon_state = "v8"
			pixel_x = -32
			pixel_y = 96
		v9
			icon_state = "v9"
	//		pixel_x = -128
			density = 1
		v10
			icon_state = "v10"
			pixel_x = -32
			pixel_y = 128
		v11
			icon_state = "v11"
	//		pixel_x = -160
			density = 1
		v12
			icon_state = "v12"
			pixel_x = -32
		//	pixel_x = -160

obj
	effects
		Spat
			icon= 'spat.dmi'
			layer = 3
			density=0
			New()
				..()
				spawn(8)
				del(src)

obj
	KonohaCapa
		name = "Konoha Cloak"
		icon = 'Konoha Cloak.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Konoha Cloak.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Konoha Cloak.dmi'
					usr << "Você coloca a [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é a roupa que a Anko usa.."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você a usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou a [src]"

obj
	Dress
		name = "Vestido"
		icon = 'dress1.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'dress1.dmi'//temp icon
					usr << "Você removeu o [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'dress1.dmi'
					usr << "Você coloca o [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Esse é uma vestido comum."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou o [src]"

obj
	DressG
		name = "Vestido de Gala"
		icon = 'dress2.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'dress2.dmi'//temp icon
					usr << "Você removeu o [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'dress2.dmi'
					usr << "Você coloca o [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Esse é uma vestido comum."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou o [src]"

obj
	Skirt
		name = "Saia"
		icon = 'skirt.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'skirt.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'skirt.dmi'
					usr << "Você coloca a [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é uma saia comum."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou a [src]"

obj
	TemariS
		name = "Roupa da Temari"
		icon = 'TemariSuit.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'TemariSuit.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'TemariSuit.dmi'
					usr << "Você coloca a [src.name]."
					src.suffix = "Equipado"
			Olhar()
				usr<<"Essa é a roupa que a Temari usa."
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você a usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou a [src]"


/obj/Crater_Center

	icon = 'Crater.dmi'
	icon_state = "crater middle 2"
	density = 0

	New()
		src.underlays += new/obj/Crater_Top_Right
		src.underlays += new/obj/Crater_Top_Center
		src.underlays += new/obj/Crater_Top_Left
		src.underlays += new/obj/Crater_Middle_Left
		src.underlays += new/obj/Crater_Middle_Right
		src.underlays += new/obj/Crater_Bottom_Right
		src.underlays += new/obj/Crater_Bottom_Left
		src.underlays += new/obj/Crater_Bottom_Center
		spawn(100) del(src)

/obj/Crater_Top_Right

	icon = 'Crater.dmi'
	icon_state = "crater top 3"
	density = 0

	New()
		pixel_y = 32
		pixel_x = 32


/obj/Crater_Top_Center

	icon = 'Crater.dmi'
	icon_state = "crater top 2"
	density = 0

	New()
		pixel_y = 32
		pixel_x = 0


/obj/Crater_Top_Left

	icon = 'Crater.dmi'
	icon_state = "crater top 1"
	density = 0

	New()
		pixel_y = 32
		pixel_x = -32



/obj/Crater_Middle_Left

	icon = 'Crater.dmi'
	icon_state = "crater middle 1"
	density = 0

	New()
		pixel_x = -32


/obj/Crater_Middle_Right

	icon = 'Crater.dmi'
	icon_state = "crater middle 3"
	density = 0

	New()
		pixel_x = 32


/obj/Crater_Bottom_Right

	icon = 'Crater.dmi'
	icon_state = "crater bottom 3"
	density = 0

	New()
		pixel_x = 32
		pixel_y = -32


/obj/Crater_Bottom_Left

	icon = 'Crater.dmi'
	icon_state = "crater bottom 1"
	density = 0

	New()
		pixel_x = -32
		pixel_y = -32


/obj/Crater_Bottom_Center

	icon = 'Crater.dmi'
	icon_state = "crater bottom 2"
	density = 0

	New()
		pixel_y = -32

/obj/Crater_Center1

	icon = 'Crater.dmi'
	icon_state = "crater middle 2"
	density = 0

obj
	Candelabro
		name = "Candelabro"
		icon = 'iconsj.dmi'
		icon_state = "um ''candeeiro''"
		density = 1

mob/var/abriu = 0

obj/var/abriu = 0

obj/Tesouro
	BauSurpresa
		name = "Tesouro Ninja"
		icon = 'baú.dmi'
		icon_state = "1"
		density = 1
		verb
			Abrir()
				if(src.abriu)
					usr<<"Este baú já foi aberto"
				if(!src.abriu)
					src.abriu = 1
					usr.random = rand(1,100)
					world<<"[usr.random]"
					if(usr.random <= 20)
						world<<"<B><font color = red><font size = 2>[usr] abriu um Tesouro Ninja e conseguiu: 50K de Ryous"
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>Abriu um Tesouro Ninja e Conseguiu: 50K de Ryous<BR>","TesouroLog.html")
						usr.Yen+=50000
						del(src)
					if(usr.random >= 51&&usr.random<=60)
						world<<"<B><font color = red><font size = 2>[usr] abriu um Tesouro Ninja e conseguiu: 100K de Ryous"
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>Abriu um Tesouro Ninja e Conseguiu: 100K de Ryous<BR>","TesouroLog.html")
						usr.Yen+=100000
						del(src)
					if(usr.random == 22 || usr.random == 21)
						var/obj/ArmaduraUltraResistente/B = new/obj/ArmaduraUltraResistente
						B.loc = usr
						world<<"<B><font color = red><font size = 2>[usr] abriu um Tesouro Ninja e conseguiu: ArmaduraUltraResistente"
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>Abriu um Tesouro Ninja e Conseguiu: [B]<BR>","TesouroLog.html")
						del(src)
					if(usr.random == 19 || usr.random == 17)
						world<<"<B><font color = red><font size = 2>[usr] abriu um Tesouro Ninja e conseguiu: 3 NRB Coin"
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>Abriu um Tesouro Ninja e Conseguiu: 3 NRB Coin<BR>","TesouroLog.html")
						del(src)
					if(usr.random >=23&&usr.random<=25||usr.random >=44&&usr.random<=50||usr.random == 30)
						var/obj/Weights/B = new/obj/Weights
						B.loc = usr
						world<<"<B><font color = red><font size = 2>[usr] abriu um Tesouro Ninja e conseguiu: [B]"
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>Abriu um Tesouro Ninja e Conseguiu: [B]<BR>","TesouroLog.html")
						del(src)
					if(usr.random == 26 || usr.random == 27|| usr.random == 67)
						var/obj/Mondaisword/B = new/obj/Mondaisword
						world<<"<B><font color = red><font size = 2>[usr] abriu um Tesouro Ninja e conseguiu: [B]"
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>Abriu um Tesouro Ninja e Conseguiu: [B]<BR>","TesouroLog.html")
						B.loc = usr
						del(src)
					if(usr.random == 28 || usr.random == 36 || usr.random == 38|| usr.random == 66)
						var/obj/Tesouro/PergaShushin/B = new/obj/Tesouro/PergaShushin
						world<<"<B><font color = red><font size = 2>[usr] abriu um Tesouro Ninja e conseguiu: [B]"
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>Abriu um Tesouro Ninja e Conseguiu: [B]<BR>","TesouroLog.html")
						B.loc = usr
						del(src)
					if(usr.random == 29 || usr.random == 39 || usr.random == 40|| usr.random == 65)
						var/obj/Tesouro/PergaDaibakuha/B = new/obj/Tesouro/PergaDaibakuha
						world<<"<B><font color = red><font size = 2>[usr] abriu um Tesouro Ninja e conseguiu: [B]"
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>Abriu um Tesouro Ninja e Conseguiu: [B]<BR>","TesouroLog.html")
						B.loc = usr
						del(src)
					if(usr.random == 69)
						var/obj/Tesouro/PergaFuukaHouin/B = new/obj/Tesouro/PergaFuukaHouin
						world<<"<B><font color = red><font size = 2>[usr] abriu um Tesouro Ninja e conseguiu: [B]"
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>Abriu um Tesouro Ninja e Conseguiu: [B]<BR>","TesouroLog.html")
						B.loc = usr
						del(src)
					if(usr.random == 31|| usr.random == 68)
						var/obj/Tesouro/PergaMeisagakure/B = new/obj/Tesouro/PergaMeisagakure
						world<<"<B><font color = red><font size = 2>[usr] abriu um Tesouro Ninja e conseguiu: [B]"
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>Abriu um Tesouro Ninja e Conseguiu: [B]<BR>","TesouroLog.html")
						B.loc = usr
						del(src)
					if(usr.random == 32)
						var/obj/Tesouro/PergaExtrair/B = new/obj/Tesouro/PergaExtrair
						world<<"<B><font color = red><font size = 2>[usr] abriu um Tesouro Ninja e conseguiu: [B]"
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>Abriu um Tesouro Ninja e Conseguiu: [B]<BR>","TesouroLog.html")
						B.loc = usr
						del(src)
					if(usr.random == 33 || usr.random == 37|| usr.random == 64)
						var/obj/Tesouro/PergaKirigakure/B = new/obj/Tesouro/PergaKirigakure
						world<<"<B><font color = red><font size = 2>[usr] abriu um Tesouro Ninja e conseguiu: [B]"
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>Abriu um Tesouro Ninja e Conseguiu: [B]<BR>","TesouroLog.html")
						B.loc = usr
						del(src)
					/*if(usr.random == 34)
						usr.ticketlog4+=1
						world<<"<B><font color = red><font size = 2>[usr] abriu um Tesouro Ninja e conseguiu: 01 Ticket para Log4!"
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>Abriu um Tesouro Ninja e Conseguiu: 01 Ticket para Log4!<BR>","TesouroLog.html")
						del(src)
					if(usr.random == 41)
						usr.ticketlog5+=1
						world<<"<B><font color = red><font size = 2>[usr] abriu um Tesouro Ninja e conseguiu: 01 Ticket para Log5!"
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>Abriu um Tesouro Ninja e Conseguiu: 01 Ticket para Log5!<BR>","TesouroLog.html")
						del(src)*/
					if(usr.random == 34 || usr.random == 42|| usr.random == 62)
						var/obj/Tesouro/PergaShinchuu/B = new/obj/Tesouro/PergaShinchuu
						world<<"<B><font color = red><font size = 2>[usr] abriu um Tesouro Ninja e conseguiu: [B]"
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>Abriu um Tesouro Ninja e Conseguiu: [B]<BR>","TesouroLog.html")
						B.loc = usr
						del(src)
					if(usr.random == 35 || usr.random == 43 || usr.random == 61)
						var/obj/Tesouro/PergaDochuu/B = new/obj/Tesouro/PergaDochuu
						B.loc = usr
						world<<"<B><font color = red><font size = 2>[usr] abriu um Tesouro Ninja e conseguiu: [B]"
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>Abriu um Tesouro Ninja e Conseguiu: [B]<BR>","TesouroLog.html")
						del(src)
					if(usr.random >=70&&usr.random<=74)
						var/obj/ShurikenQuest/B = new/obj/ShurikenQuest
						B.loc = usr
						world<<"<B><font color = red><font size = 2>[usr] abriu um Tesouro Ninja e conseguiu: [B]"
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>Abriu um Tesouro Ninja e Conseguiu: [B]<BR>","TesouroLog.html")
						del(src)
					if(usr.random >=75&&usr.random<=79)
						var/obj/ManoplaQuest/B = new/obj/ManoplaQuest
						B.loc = usr
						world<<"<B><font color = red><font size = 2>[usr] abriu um Tesouro Ninja e conseguiu: [B]"
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>Abriu um Tesouro Ninja e Conseguiu: [B]<BR>","TesouroLog.html")
						del(src)
					if(usr.random >=80&&usr.random<=84)
						var/obj/FlautaQuest/B = new/obj/FlautaQuest
						B.loc = usr
						world<<"<B><font color = red><font size = 2>[usr] abriu um Tesouro Ninja e conseguiu: [B]"
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>Abriu um Tesouro Ninja e Conseguiu: [B]<BR>","TesouroLog.html")
						del(src)
					if(usr.random >=85&&usr.random<=89)
						var/obj/ColarQuest/B = new/obj/ColarQuest
						B.loc = usr
						world<<"<B><font color = red><font size = 2>[usr] abriu um Tesouro Ninja e conseguiu: [B]"
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>Abriu um Tesouro Ninja e Conseguiu: [B]<BR>","TesouroLog.html")
						del(src)
					if(usr.random == 90||usr.random== 91)
						var/obj/Tesouro/TicketVila/B = new/obj/Tesouro/TicketVila
						B.loc = usr
						world<<"<B><font color = red><font size = 2>[usr] abriu um Tesouro Ninja e conseguiu: [B]"
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>Abriu um Tesouro Ninja e Conseguiu: [B]<BR>","TesouroLog.html")
						del(src)
					if(usr.random >91)
						world<<"<B><font color = red><font size = 2>[usr] abriu um Tesouro Ninja e o Baú estava vazio"
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>Abriu um Tesouro Ninja e estava vazio<BR>","TesouroLog.html")
						del(src)
					if(usr.random >96||usr.random==30||usr.random==01||usr.random==05||usr.random==9)
						var/obj/ReloP/B = new/obj/ReloP
						B.loc = usr
						world<<"<B><font color = red><font size = 2>[usr] abriu um Tesouro Ninja e o Baú e achou um Relógio Parado! Agora ele pode dar meia hora de bunda!"
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>Abriu um Tesouro Ninja e estava tinha um  Relógio Parado!<BR>","TesouroLog.html")
						del(src)
					if(usr.random >=92&&usr.random<=95)
						var/obj/MadaraArm/B = new/obj/MadaraArm
						B.loc = usr
						world<<"<B><font color = red><font size = 2>[usr] abriu um Tesouro Ninja e conseguiu: Armadura do Madara!"
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>Abriu um Tesouro Ninja e Conseguiu: Armadura do Madara!<BR>","TesouroLog.html")
						del(src)

			Olhar()
				usr<<"Um Raro Tesouro Ninja"
				src.loc=locate(usr.x,usr.y-1,usr.z)
				//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
			Destruir()
				usr<<"Você destruiu o [src]"
				del(src)

mob/var
	sabeshushin=0
	sabeextrair=0
	sabeextrairbijuu=0
	sabesuirou=0
	sabekirigakure=0
	sabedochuu=0
	sabeshinchuu=0
	sabedaibakuha=0
	sabemeisagakure=0
	sabefuukahouin=0

obj/Tesouro
	PergaShushin
		name = "Pergaminho de Shushin Jutsu"
		icon = 'scrolls.dmi'
		icon_state="fuuton"
		verb
			Aprender()
				if(usr.sabeshushin)
					usr<<"Você já conhece este jutsu."
					return
				if(usr.veloN>=50000&&usr.level>=200&&!usr.sabeshushin)
					usr<<"<B><font color = blue>Você aprendeu o Shushin no Jutsu"
					usr.sabeshushin=1
					usr.verbs += new /mob/jutsu/verb/ShushinNoJutsu()
					//usr.SalvarAgora()
					del(src)
				else
					usr<<"Você precisa treinar sua velocidade para aprender está técnica!"
			Olhar()
				usr<<"Pergaminho de Aprendizagem: Shushin no Jutsu."
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
			Destruir()
				usr<<"Você destruiu o [src]"
				del(src)
	PergaDaibakuha
		name = "Pergaminho de Bunshin Daibakuha"
		icon = 'scrolls.dmi'
		icon_state="fuuton"
		verb
			Aprender()
				if(usr.sabedaibakuha)
					usr<<"Você já conhece este jutsu."
					return
				if(usr.chakraN>=25000&&usr.level>=150&&!usr.sabedaibakuha)
					usr<<"<B><font color = blue>Você aprendeu o Bunshin Daibakuha"
					usr.sabedaibakuha=1
					usr.verbs += new /mob/jutsu/verb/BakuretsuBunshin()
					//usr.SalvarAgora()
					del(src)
				else
					usr<<"Você precisa treinar seu controle para aprender está técnica!"
			Olhar()
				usr<<"Pergaminho de Aprendizagem: Bunshin Daibakuha."
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
			Destruir()
				usr<<"Você destruiu o [src]"
				del(src)
	PergaFuukaHouin
		name = "Pergaminho de Fuuka Houin"
		icon = 'scrolls.dmi'
		icon_state="fuuton"
		verb
			Aprender()
				if(usr.sabefuukahouin)
					usr<<"Você já conhece este jutsu."
					return
				if(usr.chakra>=60000&&usr.level>=350&&usr.seals==100&&!usr.sabefuukahouin)
					usr<<"<B><font color = blue>Você aprendeu o Fuuka Houin"
					usr.sabefuukahouin=1
					usr.verbs += new /mob/jutsus/verb/Selar_Amaterasu
					//usr.SalvarAgora()
					del(src)
				else
					usr<<"Você precisa treinar seu controle para aprender está técnica!"
			Olhar()
				usr<<"Pergaminho de Aprendizagem: Fuuka Houin."
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
			Destruir()
				usr<<"Você destruiu o [src]"
				del(src)
	PergaMeisagakure
		name = "Pergaminho de Meisagakure no Jutsu"
		icon = 'scrolls.dmi'
		icon_state="fuuton"
		verb
			Aprender()
				if(usr.sabemeisagakure)
					usr<<"Você já conhece este jutsu."
					return
				if(usr.chakraN>=60000&&usr.level>=350&&usr.seals==100&&!usr.sabemeisagakure)
					usr<<"<B><font color = blue>Você aprendeu o Meisagakure no Jutsu"
					usr.sabemeisagakure=1
					usr.verbs += new /mob/jutsu/verb/Meisagakure()
					//usr.SalvarAgora()
					del(src)
				else
					usr<<"Você precisa treinar seu controle para aprender está técnica!"
			Olhar()
				usr<<"Pergaminho de Aprendizagem: Meisagakure no Jutsu."
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
			Destruir()
				usr<<"Você destruiu o [src]"
				del(src)
	PergaExtrair
		name = "Pergaminho de Extração"
		icon = 'scrolls.dmi'
		icon_state="kinjutsu"
		verb
			Aprender()
				if(usr.sabeextrair)
					usr<<"Você já conhece este jutsu."
					return
				if(usr.seals>=100&&usr.chakraN>=175000&&usr.level>=350&&usr.Mstamina >= 200000&&!usr.sabeextrair)
					usr<<"<B><font color = blue>Você aprendeu a Extrair DNA/Doujutsu!"
					usr.sabeextrair=1
					//usr.SalvarAgora()
					usr.verbs += new /mob/jutsus/verb/ExtrairMeuPau()
					del(src)
				else
					usr<<"Você precisa treinar suas habilidades de concentração para aprender esta técnica!"
			Olhar()
				usr<<"Pergaminho de Aprendizagem: Extração de DNA/Doujutsu."
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
			Destruir()
				usr<<"Você destruiu o [src]"
				del(src)
	PergaKirigakure
		name = "Pergaminho de Kirigakure no Jutsu"
		icon = 'scrolls.dmi'
		icon_state="suiton"
		verb
			Aprender()
				if(usr.sabekirigakure)
					usr<<"Você já conhece este jutsu."
					return
				if(usr.chakraN>=25000&&usr.level>=150&&usr.Suiton&&usr.aguaN>=1000&&!usr.sabekirigakure)
					usr<<"<B><font color = blue>Você aprendeu o Kirigakure no Jutsu!"
					usr.sabekirigakure=1
					usr.verbs += new /mob/mist/verb/KirigakurenoJutsu()
					//usr.SalvarAgora()
					del(src)
				else
					usr<<"Você precisa ser considerado um mestre em Suiton para aprender esta técnica."
			Olhar()
				usr<<"Pergaminho de Aprendizagem: Kirigakure no Jutsu."
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
			Destruir()
				usr<<"Você destruiu o [src]"
				del(src)
	PergaSuirou
		name = "Pergaminho de Suirou no Jutsu"
		icon = 'scrolls.dmi'
		icon_state="suiton"
		verb
			Aprender()
				if(usr.sabesuirou)
					usr<<"Você já conhece este jutsu."
					return
				if(usr.chakraN>=25000&&usr.level>=150&&usr.Suiton&&usr.aguaN>=1000&&!usr.sabesuirou)
					usr<<"<B><font color = blue>Você aprendeu o Suirou no Jutsu!"
					usr.sabesuirou=1
					usr.verbs += new /mob/suiton/verb/SuirouNoJutsu()
					//usr.SalvarAgora()
					del(src)
				else
					usr<<"Você precisa ser considerado um mestre em Suiton para aprender esta técnica."
			Olhar()
				usr<<"Pergaminho de Aprendizagem: Suirou no Jutsu."
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
			Destruir()
				usr<<"Você destruiu o [src]"
				del(src)
	PergaShinchuu
		name = "Pergaminho de Shinchuu Zanshu"
		icon = 'scrolls.dmi'
		icon_state="doton"
		verb
			Aprender()
				if(usr.sabeshinchuu)
					usr<<"Você já conhece este jutsu."
					return
				if(usr.chakraN>=25000&&usr.level>=150&&usr.Doton&&usr.terraN>=1000&&!usr.sabeshinchuu)
					usr<<"<B><font color = blue>Você aprendeu o Doton: Shinchuu Zanshu no Jutsu!"
					usr.sabeshinchuu=1
					usr.verbs += new /mob/jutsu/verb/Soterra()
					//usr.SalvarAgora()
					del(src)
				else
					usr<<"Você precisa ser considerado um mestre em Doton para aprender esta técnica."
			Olhar()
				usr<<"Pergaminho de Aprendizagem: Doton: Shinchuu Zanshu no Jutsu"
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
			Destruir()
				usr<<"Você destruiu o [src]"
				del(src)
	PergaDochuu
		name = "Pergaminho de Dochuu Eigyo"
		icon = 'scrolls.dmi'
		icon_state="doton"
		verb
			Aprender()
				if(usr.sabedochuu)
					usr<<"Você já conhece este jutsu."
					return
				if(usr.chakraN>=25000&&usr.level>=150&&usr.Doton&&usr.terraN>=1000&&!usr.sabedochuu)
					usr<<"<B><font color = blue>Você aprendeu o Doton: Dochuu Eigyo no Jutsu!"
					usr.sabedochuu=1
					usr.verbs += new /mob/jutsu/verb/DochuuEigyo()
					//usr.SalvarAgora()
					del(src)
				else
					usr<<"Você precisa ser considerado um mestre em Doton para aprender esta técnica."
			Olhar()
				usr<<"Pergaminho de Aprendizagem: Doton: Dochuu Eigyo no Jutsu"
			Descartar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
			Destruir()
				usr<<"Você destruiu o [src]"
				del(src)
	TicketVila
		name = "Ticket Vila"
		icon = 'ts.dmi'
		icon_state="Tblue"
		worn = 0
		price = 9999999999999999999999
		verb
			Olhar()
				usr<<"Este é um Ticket de Acesso a Vila. Ao utilizar este ticket você se tornará membro da vila escolhida!"
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					//usr.SalvarAgora()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
			Destruir()
				usr<<"Você destruiu o [src]"
				del(src)
			Usar()
				if(usr.rank<>"Nukenin")
					usr<<"Você precisa ser Nukenin"
					return
				switch(input("Qual a Vila que você quer pertencer?") in list("Konoha","Kiri","Kumo","Ame","Oto","Iwa","Suna","Cancelar"))
					if("Konoha")
						usr.leafS=1
						usr.mistS=0
						usr.soundS=0
						usr.earthS=0
						usr.sandS=0
						usr.rainS=0
						usr.grassS=0
						usr.lightningS=0
						usr.snowS=0
						usr.missingS=0
						usr.villageselected=1
						usr.Village="Konoha"
						usr.PerderSubclan()
						if(usr.seals==100)
							usr.rank="Jounin"
						else
							usr.rank="Genin"
						del(src)
					if("Kiri")
						usr.leafS=0
						usr.mistS=1
						usr.soundS=0
						usr.earthS=0
						usr.sandS=0
						usr.rainS=0
						usr.grassS=0
						usr.lightningS=0
						usr.snowS=0
						usr.missingS=0
						usr.villageselected=1
						usr.Village="Kiri"
						usr.PerderSubclan()
						if(usr.seals==100)
							usr.rank="Jounin"
						else
							usr.rank="Genin"
						del(src)
					if("Kumo")
						usr.leafS=0
						usr.mistS=0
						usr.soundS=0
						usr.earthS=0
						usr.sandS=0
						usr.rainS=0
						usr.grassS=0
						usr.lightningS=1
						usr.snowS=0
						usr.missingS=0
						usr.villageselected=1
						usr.Village="Kumo"
						usr.PerderSubclan()
						if(usr.seals==100)
							usr.rank="Jounin"
						else
							usr.rank="Genin"
						del(src)
					if("Ame")
						usr.leafS=0
						usr.mistS=0
						usr.soundS=0
						usr.earthS=0
						usr.sandS=0
						usr.rainS=1
						usr.grassS=0
						usr.lightningS=0
						usr.snowS=0
						usr.missingS=0
						usr.villageselected=1
						usr.Village="Ame"
						usr.PerderSubclan()
						if(usr.seals==100)
							usr.rank="Jounin"
						else
							usr.rank="Genin"
						del(src)
					if("Oto")
						usr.leafS=0
						usr.mistS=0
						usr.soundS=1
						usr.earthS=0
						usr.sandS=0
						usr.rainS=0
						usr.grassS=0
						usr.lightningS=0
						usr.snowS=0
						usr.missingS=0
						usr.villageselected=1
						usr.Village="Oto"
						usr.PerderSubclan()
						if(usr.seals==100)
							usr.rank="Jounin"
						else
							usr.rank="Genin"
						del(src)
					if("Iwa")
						usr.leafS=0
						usr.mistS=0
						usr.soundS=0
						usr.earthS=1
						usr.sandS=0
						usr.rainS=0
						usr.grassS=0
						usr.lightningS=0
						usr.snowS=0
						usr.missingS=0
						usr.villageselected=1
						usr.Village="Iwa"
						usr.PerderSubclan()
						if(usr.seals==100)
							usr.rank="Jounin"
						else
							usr.rank="Genin"
						del(src)
					if("Suna")
						usr.leafS=0
						usr.mistS=0
						usr.soundS=0
						usr.earthS=0
						usr.sandS=1
						usr.rainS=0
						usr.grassS=0
						usr.lightningS=0
						usr.snowS=0
						usr.missingS=0
						usr.villageselected=1
						usr.Village="Suna"
						usr.PerderSubclan()
						if(usr.seals==100)
							usr.rank="Jounin"
						else
							usr.rank="Genin"
						del(src)
					if("Cancelar")
						return
