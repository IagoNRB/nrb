turf
	LuaX
		Vila8
			icon = 'castle2.png'
			density = 0
		Vila9
			icon = 'casalua1.png'
			density = 0

turf
	LabLuaEntradaT
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/B=A
				if(B.client)
					if(B.density==1)
						if(luaproxima)
							B.loc = locate(583,237,8)
						else
							B<<"A Lua est� distante da Terra!"
					else
						B<<"N�o enquanto voa."

	LabLuaEntradaL
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/B=A
				if(B.client)
					if(B.density==1)
						if(luaproxima)
							B.loc = locate(514,425,8)
						else
							B<<"A Lua est� distante da Terra!"
					else
						B<<"N�o enquanto voa."



	LabLuaSaidaT
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/B=A
				if(B.client)
					if(B.density==1)
						B.loc = locate(567,234,1)
						B.inlua=0
						B.SalvarAgora()
						if(B.luamember)
							world<<"Parece que algu�m foi da Lua para a Terra!"
					else
						usr<<"N�o enquanto voa."


	LabLuaSaidaL
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/B=A
				if(B.client)
					if(B.density==1)
						B.loc = locate(371,454,8)
						B.inlua=1
						B.SalvarAgora()
						if(!B.luamember)
							world<<"Parece que algu�m foi da Terra para a Lua!"
					else
						B<<"N�o enquanto voa."

//===================================ORG Entradas e Saidas===============================//
turf
	OrgLuaE
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/B=A
				if(B.client)
					if(B.density==1)
						if(B.luamember)
							B.loc = locate(168,272,8)
						else
							B<<"Voc� precisa fazer parte desta Organiza��o para entrar."
							world<<"[B] foi morto pela barreira sagrada de Hamura por tentar invadir o Templo da Lua!"
							B.health=0
							B.chakra=0
							B.Death(B)
					else
						usr<<"N�o enquanto voa."



	OrgLuaS
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/M = A
				if(M.client)
					M.loc = locate(123,637,8)
			else
				if(istype(A,/obj/)) del(A)