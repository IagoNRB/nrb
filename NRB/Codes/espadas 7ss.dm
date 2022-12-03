mob/var/kabutouse=0
obj
	EspadaKabutowari
		name = "Kabutowari"
		icon = 'Espada com martelinho.dmi'
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
					usr.kabutouse=0
					usr.overlays -= 'Espada com martelinho.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.verbs -= new /mob/sword/verb/Atacar_com_Espada2()
					src.icon_state=""
					usr.tai = usr.Mtai
					usr.nin = usr.Mnin
					usr.gen = usr.Mgen
					usr.shurikenskill = usr.Mshurikenskill
				else
					src.worn = 1
					usr.Weaponworn = 1
					usr.S2 = 1
					usr.kabutouse=1
					usr.overlays += 'Espada com martelinho.dmi'
					usr.tai = usr.tai*1.1
					usr.nin = usr.nin*1.1
					usr.gen = usr.gen*1.1
					usr.shurikenskill = usr.shurikenskill*1.1
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					usr.verbs += new /mob/sword/verb/Atacar_com_Espada2()
					//usr.swordD += usr.shurikenskill/2.7
			Olhar()
				usr<<"Esta é a Lendária Kabutowari."
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"


mob/var/kibaworn=0
obj
	EspadaKiba
		name = "Kiba"
		icon = 'Espadinha dos Trovão.dmi'
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
					usr.overlays -= 'Espadinha dos Trovão.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.verbs -= new /mob/sword/verb/Atacar_com_Espada2()
					src.icon_state=""
					usr.tai = usr.Mtai
					usr.nin = usr.Mnin
					usr.gen = usr.Mgen
					usr.shurikenskill = usr.Mshurikenskill
					usr.kibaworn=0
				else
					src.worn = 1
					usr.Weaponworn = 1
					usr.S2 = 1
					usr.overlays += 'Espadinha dos Trovão.dmi'
					usr.tai = usr.tai*1.1
					usr.nin = usr.nin*1.1
					usr.gen = usr.gen*1.1
					usr.shurikenskill = usr.shurikenskill*1.1
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					usr.verbs += new /mob/sword/verb/Atacar_com_Espada2()
					usr.kibaworn=1
					//usr.swordD += usr.shurikenskill/2.7
			Olhar()
				usr<<"Esta é a Lendária Kiba."
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"



obj
	EspadaHiramekari
		name = "Hiramekari"
		icon = 'Hiramekari.dmi'
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
					usr.overlays -= 'Hiramekari.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.verbs -= new /mob/sword/verb/Atacar_com_Espada2()
					src.icon_state=""
					usr.tai = usr.Mtai
					usr.nin = usr.Mnin
					usr.gen = usr.Mgen
					usr.shurikenskill = usr.Mshurikenskill
				else
					src.worn = 1
					usr.Weaponworn = 1
					usr.S2 = 1
					usr.overlays += 'Hiramekari.dmi'
					usr.tai = usr.tai*1.1
					usr.nin = usr.nin*1.1
					usr.gen = usr.gen*1.1
					usr.shurikenskill = usr.shurikenskill*1.1
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					usr.verbs += new /mob/sword/verb/Atacar_com_Espada2()
					//usr.swordD += usr.shurikenskill/2.7
			Olhar()
				usr<<"Esta é a Lendária Hiramekari."
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"


obj
	EspadaSemahadaBainha
		name = "Semahada Bainha"
		icon = 'SemahadaBainha.dmi'
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
					usr.overlays -= 'SemahadaBainha.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.verbs -= new /mob/sword/verb/Atacar_com_SemahadaBainha()
					src.icon_state=""
					usr.tai = usr.Mtai
					usr.nin = usr.Mnin
					usr.gen = usr.Mgen
					usr.shurikenskill = usr.Mshurikenskill
				else
					src.worn = 1
					usr.Weaponworn = 1
					usr.S2 = 1
					usr.overlays += 'SemahadaBainha.dmi'
					usr.tai = usr.Mtai*1.1
					usr.nin = usr.Mnin*1.1
					usr.gen = usr.Mgen*1.1
					usr.shurikenskill = usr.Mshurikenskill*1.1
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					usr.verbs += new /mob/sword/verb/Atacar_com_SemahadaBainha()
					//usr.swordD += usr.shurikenskill/2.7
			Olhar()
				usr<<"Esta é a Lendária Semahada."
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"


mob/var/shibukiuse=0
obj
	EspadaShibuki
		name = "Shibuki"
		icon = 'Homatsu.dmi'
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
					usr.shibukiuse=0
					usr.overlays -= 'Homatsu.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.verbs -= new /mob/sword/verb/Atacar_com_Espada2()
					src.icon_state=""
					usr.tai = usr.Mtai
					usr.nin = usr.Mnin
					usr.gen = usr.Mgen
					usr.shurikenskill = usr.Mshurikenskill
				else
					src.worn = 1
					usr.Weaponworn = 1
					usr.S2 = 1
					usr.overlays += 'Homatsu.dmi'
					usr.tai = usr.tai*1.1
					usr.nin = usr.nin*1.1
					usr.gen = usr.gen*1.1
					usr.shurikenskill = usr.shurikenskill*1.1
					usr.shibukiuse=1
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					usr.verbs += new /mob/sword/verb/Atacar_com_Espada2()
					//usr.swordD += usr.shurikenskill/2.7
			Olhar()
				usr<<"Esta é a Lendária Homatsu."
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"


obj
	SSSs3
		name = "SSS Sword 3"
		icon = 'SemahadaBainha.dmi'
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
					usr.overlays -= 'SSSs3.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.tai = usr.Mtai
					usr.nin = usr.Mnin
					usr.gen = usr.Mgen
					usr.shurikenskill = usr.Mshurikenskill
					usr.swordD = 0
					usr.verbs -= new /mob/Sword/verb/ChakraA()
				else
					usr:Weaponworn = 1
					src.worn = 1
					usr.S1 = 1
					usr.overlays += 'SSSs3.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					usr.tai = usr.tai*1.1
					usr.nin = usr.nin*1.1
					usr.gen = usr.gen*1.1
					usr.shurikenskill = usr.shurikenskill*1.1
					sleep(3)
					usr.verbs += new /mob/Sword/verb/ChakraA()
			Olhar()
				usr<<"Esta é a espada 3 da Seven Swordsmen Shinobis."
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


obj
	SSSs2
		name = "SSS Sword 2"
		icon = 'SSSs2.dmi'
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
					usr.overlays -= 'SSSs2.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.tai = usr.Mtai
					usr.nin = usr.Mnin
					usr.gen = usr.Mgen
					usr.shurikenskill = usr.Mshurikenskill
					usr.swordD = 0
					usr.verbs -= new /mob/jutsu/verb/SSS2()
				else
					usr:Weaponworn = 1
					src.worn = 1
					usr.S1 = 1
					usr.overlays += 'SSSs2.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					usr.tai = usr.tai*1.1
					usr.nin = usr.nin*1.1
					usr.gen = usr.gen*1.1
					usr.shurikenskill = usr.shurikenskill*1.1
					sleep(3)
					usr.verbs += new /mob/jutsu/verb/SSS2()
			Olhar()
				usr<<"Esta é a espada 2 da Seven Swordsmen Shinobis."
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