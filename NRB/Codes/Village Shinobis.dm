mob
	enemy//..attack
		/*Leafvillageshinobi
			name= "Guardiao de Konoha"
			Village="Konoha"
			icon = 'Guards.dmi'
			icon_state="Guard Leaf/Grass"
			villagesnpc = 1
			Tekken = 1
			maxhealth = 1000000
			chakra = 99999999999999
			//Resistencia = 200000
			health = 1000000
			stamina = 20000000
			tai = 100000
			nin = 100000
			gen = 100000
			shurikenskill=100000
			NPC=1
			waterwalk=1
		Mistvillageshinobi
			name= "Guardiao de Kiri"
			icon = 'Guards.dmi'
			icon_state="Guard Snow/Mist/Rain/Water"
			Village="Kiri"
			villagesnpc = 1
			Tekken = 1
			maxhealth = 1000000
			//Resistencia = 200000
			health = 1000000
			stamina = 20000000
			tai = 100000
			nin = 100000
			gen = 100000
			shurikenskill=100000
			NPC=1
			waterwalk=1
		Rainvillageshinobi
			name= "Guardiao de Ame"
			icon = 'Guards.dmi'
			icon_state="Guard Snow/Mist/Rain/Water"
			Village="Ame"
			villagesnpc = 1
			Tekken = 1
			maxhealth = 1000000
			//Resistencia = 200000
			health = 1000000
			stamina = 20000000
			tai = 100000
			nin = 100000
			gen = 100000
			shurikenskill=100000
			NPC=1
			waterwalk=1
		Cloudvillageshinobi
			name= "Guardiao de Kumo"
			icon = 'Guards.dmi'
			icon_state="Guard Rock/Sand/Cloud"
			Village="Kumo"
			villagesnpc = 1
			Tekken = 1
			maxhealth = 1000000
			//Resistencia = 200000
			health = 1000000
			stamina = 20000000
			tai = 100000
			nin = 100000
			gen = 100000
			shurikenskill=100000
			NPC=1
			waterwalk=1
		Rockvillageshinobi
			name= "Guardiao de Iwa"
			icon = 'Guards.dmi'
			icon_state="Guard Rock/Sand/Cloud"
			Village="Iwa"
			villagesnpc = 1
			Tekken = 1
			maxhealth = 1000000
			//Resistencia = 200000
			health = 1000000
			stamina = 20000000
			tai = 100000
			nin = 100000
			gen = 100000
			shurikenskill=100000
			NPC=1
			waterwalk=1
		Otovillageshinobi
			name= "Guardiao de Oto"
			icon = 'Guards.dmi'
			icon_state="Guard Rock/Sand/Cloud"
			Village="Oto"
			villagesnpc = 1
			Tekken = 1
			maxhealth = 1000000
			//Resistencia = 200000
			health = 1000000
			stamina = 20000000
			tai = 100000
			nin = 100000
			gen = 100000
			shurikenskill=100000
			NPC=1
			waterwalk=1
		Sandvillageshinobi
			name= "Guardiao de Suna"
			icon = 'Guards.dmi'
			icon_state="Guard Rock/Sand/Cloud"
			Village="Suna"
			villagesnpc = 1
			Tekken = 1
			maxhealth = 1000000
			//Resistencia = 200000
			health = 1000000
			stamina = 20000000
			tai = 100000
			nin = 100000
			gen = 100000
			shurikenskill=100000
			NPC=1
			waterwalk=1*/


obj
	VPeins
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
			spawn(40) del src
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
				if( M==src.Gowner|| OwNeR==M || OwNeR.cast) return
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