turf
	doorfromacadkonoha
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/B=A
				if(B.client)
					B.loc = locate(400,308,1)
			else
				if(istype(A,/obj/)) del(A)
	doorfromacadstar
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			//if(emguerra)return 0
			if(ismob(A))
				var/mob/B = A
				if(B.client)
					B.loc = locate(43,83,31)
			else
				if(istype(A,/obj/)) del(A)
	doorfromacadsound
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			//if(emguerra)return 0
			if(ismob(A))
				var/mob/B = A
				if(B.client)
					if(B.z==10)
						B.loc = locate(238,461,1)
					if(B.z==2)
						B.loc = locate(198,388,1)
			else
				if(istype(A,/obj/)) del(A)
	doorfromacadrain
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/B=A
				if(B.client)
					B.loc = locate(523,598,1)
			else
				if(istype(A,/obj/)) del(A)

	doorfromacadgrass
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			//if(emguerra)return 0
			if(ismob(A))
				var/mob/B = A
				if(B.client)
					if(B.z==8&&B.x>0&&B.x<91&&B.y>0&&B.y<54)
						B.loc = locate(359,510,1)
					else
						B.loc = locate(359,510,1)
			else
				if(istype(A,/obj/)) del(A)

	doorfromacadlightning
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/B=A
				if(B.client)
					B.loc = locate(665,418,1)
			else
				if(istype(A,/obj/)) del(A)

	doorfromacadearth
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/B=A
				if(B.client)
					B.loc = locate(92,619,1)

	doorfromacadwaterfall
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			//if(emguerra)return 0
			if(ismob(A))
				var/mob/B = A
				if(B.client)
					if(B.z==8&&B.x>0&&B.x<91&&B.y>0&&B.y<54)
						B.loc = locate(483,105,1)
					else
						B.loc = locate(483,105,1)
			else
				if(istype(A,/obj/)) del(A)

	doorfromacadwater
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/B=A
				if(B.client)
					B.loc = locate(604,89,1)
			else
				if(istype(A,/obj/)) del(A)

	doorfromacadsand
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/B=A
				if(B.client)
					B.loc = locate(135,127,1)
			else
				if(istype(A,/obj/)) del(A)
//===========================CT VIP==========================================//
turf
	saidavipkiri
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/B=A
				if(B.client)
					B.loc = locate(586,94,1)

	saidavipiwa
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/B=A
				if(B.client)
					B.loc = locate(98,548,1)


	saidavipkumo
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/B=A
				if(B.client)
					B.loc = locate(573,365,1)

	saidavipame
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/B=A
				if(B.client)
					B.loc = locate(541,519,1)

	saidavipoto
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/B = A
				if(B.client)
					B.loc = locate(199,348,1)

	saidavipkonoha
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/B=A
				if(B.client)
					B.loc = locate(370,225,1)

	saidavipsuna
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/B=A
				if(B.client)
					B.loc = locate(110,162,1)