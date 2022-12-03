obj/Big_Snake_Scroll//DO NOT USE : IT IS BAD!!(use . instead)
	icon ='scrolls.dmi'
	icon_state="snake"
	verb/Summon_Snake()
		usr.Handseals()
		if(usr.cast)
			return
		if(!usr.handseals)
			return
		if(usr.chakra>=10000)
			usr.cast =1
			usr.Summoneffect()
			view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Kuchiyose No Jutsu!"
			usr.snakeup()
			usr.randomsnake()
			sleep(60)
			usr.cast=0
	verb/Pegar()
		set src in oview()
		usr.contents+=src
	verb/Unsummon()
		for(var/mob/Big_Snake/B in world)
			if(B.owner==usr)
				usr.ride=0
				usr.Frozen=0
				usr.kuchiyoseusing=0
				del(B)
		for(var/mob/Medium_Snake/B in world)
			if(B.owner==usr)
				usr.ride=0
				usr.Frozen=0
				usr.kuchiyoseusing=0
				del(B)
	verb/Destroy()
		del(src)
mob/var
	tmp/ride=0
	kuchiyoseusing=0
obj/Slug_Summoning_Scroll
	icon = 'scrolls.dmi'
	icon_state = "slug"
	verb/Summon_Slug()
		usr.Handseals()
		if(usr.cast)
			return
		if(!usr.handseals)
			return
		if(usr.Mchakra >= 30000)
			usr.cast=1
			usr.slugup()
			usr.Summoneffect()
			view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Kuchiyose No Jutsu!"
			usr.randomslug()
			sleep(60)
			usr.cast=0
		else usr <<"Você ainda não é forte o bastante para summonar!"
	verb/Pegar()
		set src in oview(1)
		src.loc = usr
		usr<<"Você pegou um(a) [src]"
	verb/Unsummon()
		for(var/mob/Big_Slug/B in world)
			if(B.owner==usr)
				usr.ride=0
				usr.kuchiyoseusing=0
				usr.Frozen=0
				del(B)
		for(var/mob/Medium_Slug/B in world)
			if(B.owner==usr)
				usr.ride=0
				usr.kuchiyoseusing=0
				usr.Frozen=0
				del(B)
	verb/Destroy()
		del(src)
obj/Frog_Summoning_Scroll
	icon = 'scrolls.dmi'
	icon_state = "frog"
	verb/Summon_Frog()
		usr.Handseals()
		if(usr.cast)
			return
		if(!usr.handseals)
			return
		if(usr.chakra >= 10000)
			usr.cast=1
			usr.frogup()
			usr.Summoneffect()
			view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Kuchiyose No Jutsu!"
			usr.randomfrog()
			sleep(60)
			usr.cast=0
		else usr <<"Você ainda não é forte o bastante para summonar!"
	verb/Pegar()
		set src in oview(1)
		src.loc = usr
		usr<<"Você pegou um(a) [src]"
	verb/Unsummon()
		for(var/mob/Gamabunta/B in world)
			if(B.owner==usr)
				usr.ride=0
				usr.kuchiyoseusing=0
				usr.Frozen=0
				del(B)
		for(var/mob/Medium_Frog/B in world)
			if(B.owner==usr)
				usr.ride=0
				usr.Frozen=0
				usr.kuchiyoseusing=0
				del(B)
	verb/Destroy()
		del(src)

obj/Bee_Summoning_Scroll
	icon = 'scrolls.dmi'
	icon_state = "bee"
	verb/Summon_Bee()
		usr.Handseals()
		if(usr.cast)
			return
		if(!usr.handseals)
			return
		if(usr.chakra >= 10000)
			usr.cast=1
			usr.beeup()
			usr.Summoneffect()
			view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Kuchiyose No Jutsu!"
			usr.randombee()
			sleep(60)
			usr.cast=0
		else usr <<"Você ainda não é forte o bastante para summonar!"
	verb/Pegar()
		set src in oview(1)
		src.loc = usr
		usr<<"Você pegou um(a) [src]"
	verb/Unsummon()
		for(var/mob/Bee/B in world)
			if(B.owner==usr)
				usr.ride=0
				usr.kuchiyoseusing=0
				usr.Frozen=0
				del(B)
		for(var/mob/Medium_Bee/B in world)
			if(B.owner==usr)
				usr.ride=0
				usr.Frozen=0
				usr.kuchiyoseusing=0
				del(B)
obj/Dog_Summoning_Scroll
	icon = 'scrolls.dmi'
	icon_state = "Cachorro"
	verb/Summon_Dog()
		usr.Handseals()
		if(usr.cast)
			return
		if(!usr.handseals)
			return
		if(usr.chakra >= 10000)
			usr.cast=1
			usr.beeup()
			usr.Summoneffect()
			view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Kuchiyose No Jutsu!"
			usr.randomdog()
			sleep(60)
			usr.cast=0
		else usr <<"Você ainda não é forte o bastante para summonar!"
	verb/Pegar()
		set src in oview(1)
		src.loc = usr
		usr<<"Você pegou um(a) [src]"
	verb/Unsummon()
		for(var/mob/Sdog/B in world)
			if(B.SDowner==usr)
				usr.ride=0
				usr.kuchiyoseusing=0
				usr.Frozen=0
				del(B)
		for(var/mob/Sdog/B in world)
			if(B.SDowner==usr)
				usr.ride=0
				usr.Frozen=0
				usr.kuchiyoseusing=0
				del(B)
	verb/Destroy()
		del(src)
obj/Dogs_Summoning_Scroll
	icon = 'scrolls.dmi'
	icon_state = "Cachorro"
	verb/Summon_Dogs()
		usr.Handseals()
		if(usr.cast)
			return
		if(!usr.handseals)
			return
		if(usr.chakra >= 10000)
			usr.cast=1
			usr.Dogup()
			usr.Summoneffect()
			view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Kuchiyose No Jutsu!"
			usr.randomdog()
			sleep(60)
			usr.cast=0
		else usr <<"Você ainda não é forte o bastante para summonar!"
	verb/Pegar()
		set src in oview(1)
		src.loc = usr
		usr<<"Você pegou um(a) [src]"
	verb/Unsummon()
		for(var/mob/KyuubiR/B in world)
			if(B.owner==usr)
				usr.ride=0
				usr.kuchiyoseusing=0
				usr.Frozen=0
				del(B)
		for(var/mob/KyuubiR/B in world)
			if(B.owner==usr)
				usr.ride=0
				usr.Frozen=0
				usr.kuchiyoseusing=0
				del(B)
	verb/Destroy()
		del(src)
mob/var/B=0
mob/var/frogsummoning=0
mob/var/dogsummoning=0
mob/var/beesummoning=0
turf/Click()
	for(var/mob/Bee/M in view())
		if(M.owner==usr)
			walk_towards(M,src)
	..()
mob/Click()
	for(var/mob/Bee/M in view())
		if(M.owner==usr)
			walk_towards(M,src)
	..()
turf/Click()
	for(var/mob/Sdog/M in view())
		if(M.SDowner==usr)
			walk_towards(M,src)
	..()
mob/Click()
	for(var/mob/Sdog/M in view())
		if(M.SDowner==usr)
			walk_towards(M,src)
	..()
turf/Click()
	for(var/mob/Gamabunta/M in view())
		if(M.owner==usr)
			walk_towards(M,src)
	..()
mob/Click()
	for(var/mob/Gamabunta/M in view())
		if(M.owner==usr)
			walk_towards(M,src)
	..()
turf/Click()
	for(var/mob/Big_Snake/M in view())
		if(M.owner==usr)
			walk_towards(M,src)
	..()
mob/Click()
	for(var/mob/Big_Snake/M in view())
		if(M.owner==usr)
			walk_towards(M,src)
	..()
mob/var
	slugsummoning=0
	snakesummoning=0
	kuchiyose=0
mob/proc
	randomsnake()
		if(src.snakesummoning>=50)
			if(src.Mchakra>=20000&&src.Mchakra<60000)
				var/mob/Medium_Snake/B = new()
				B.owner=src
				B.name = "Cobra Iniciante"
				B.loc = locate(src.x, src.y - 1, src.z)
				B.tai = src.gen/10 + src.nin/10 + src.tai/10 + src.shurikenskill/10
				B.max_exp = 200
				src.kuchiyoseusing=1
				B.exp = 1000
				B.kuchiyose=1
				B.health = src.maxhealth/4
				return
			if(src.Mchakra>=60000)
				var/mob/Big_Snake/B = new()
				B.owner=src
				B.name = "Grande Cobra"
				B.loc = locate(src.x, src.y - 1, src.z)
				B.tai = src.gen/4 + src.nin/4 + src.tai/4 + src.shurikenskill/4
				src.kuchiyoseusing=1
				B.max_exp = 200
				B.kuchiyose=1
				B.exp = 1000
				B.health = src.maxhealth/2
				return
		else
			src.random=rand(1,4)
			if(src.random==1)
				if(src.Mchakra>=20000&&src.Mchakra<60000)
					var/mob/Medium_Snake/B = new()
					B.owner=src
					B.name = "Cobra iniciante"
					B.loc = locate(src.x, src.y - 1, src.z)
					B.tai = src.gen/10 + src.nin/10 + src.tai/10 + src.shurikenskill/10
					B.max_exp = 200
					B.exp = 1000
					B.kuchiyose=1
					src.kuchiyoseusing=1
					B.health = src.maxhealth/4
					return
				if(src.Mchakra>=60000)
					var/mob/Big_Snake/B = new()
					B.owner=src
					B.name = "Grande Cobra"
					B.loc = locate(src.x, src.y - 1, src.z)
					B.tai = src.gen/4 + src.nin/4 + src.tai/4 + src.shurikenskill/4
					B.kuchiyose=1
					src.kuchiyoseusing=1
					B.max_exp = 200
					B.exp = 1000
					B.health = src.maxhealth/2
					return
			else
				var/mob/failedsnake/F = new()
				F.loc=src.loc
				F.y-=1
				view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Oops.."
				sleep(40)
				del(F)


mob/proc
	randomfrog()
		if(src.frogsummoning>=50)
			if(src.Mchakra>=10000&&src.Mchakra<60000)
				var/mob/Medium_Frog/B = new()
				B.owner=src
				B.name = "Gamakichi"
				B.loc = locate(src.x, src.y - 1, src.z)
				B.tai = src.gen/10 + src.nin/10 + src.tai/10 + src.shurikenskill/10
				B.max_exp = 200
				B.exp = 1000
				src.kuchiyoseusing=1
				B.kuchiyose=1
				B.health = src.maxhealth/4
				return
			if(src.Mchakra>=60000)
				var/mob/Gamabunta/B = new()
				B.owner=src
				B.name = "Gamabunta"
				B.loc = locate(src.x, src.y - 1, src.z)
				B.tai = src.gen/4 + src.nin/4 + src.tai/4 + src.shurikenskill/4
				B.max_exp = 200
				src.kuchiyoseusing=1
				B.kuchiyose=1
				B.exp = 1000
				B.health = src.maxhealth/2
				return
		else
			src.random=rand(1,4)
			if(src.random==1)
				if(src.Mchakra>=10000&&src.Mchakra<60000)
					var/mob/Medium_Frog/B = new()
					B.owner=src
					B.kuchiyose=1
					B.name = "Gamakichi"
					B.loc = locate(src.x, src.y - 1, src.z)
					B.tai = src.gen/10 + src.nin/10 + src.tai/10 + src.shurikenskill/10
					B.max_exp = 200
					B.exp = 1000
					src.kuchiyoseusing=1
					B.health = src.maxhealth/4
					return
				if(src.Mchakra>=60000)
					var/mob/Gamabunta/B = new()
					B.owner=src
					B.name = "Gamabunta"
					B.loc = locate(src.x, src.y - 1, src.z)
					B.tai = src.gen/4 + src.nin/4 + src.tai/4 + src.shurikenskill/4
					B.max_exp = 200
					B.kuchiyose=1
					src.kuchiyoseusing=1
					B.exp = 1000
					B.health = src.maxhealth/2
					return
			else
				var/mob/failedfrog/F = new()
				F.loc=src.loc
				F.y-=1
				view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Oops.."
				sleep(50)
				del(F)


mob/proc
	randomslug()
		if(src.slugsummoning>=50)
			if(src.Mchakra>=10000&&src.Mchakra<60000)
				var/mob/Medium_Slug/B = new()
				B.owner=src
				B.name = "Lesma iniciante"
				B.loc = locate(src.x, src.y - 1, src.z)
				B.tai = src.gen/10 + src.nin/10 + src.tai/10 + src.shurikenskill/10
				B.max_exp = 200
				B.kuchiyose=1
				B.exp = 1000
				src.kuchiyoseusing=1
				B.health = src.maxhealth/4
				return
			if(src.Mchakra>=60000)
				var/mob/Big_Slug/B = new()
				B.owner=src
				B.name = "Katsuya"
				B.loc = locate(src.x, src.y - 1, src.z)
				B.tai = src.gen/4 + src.nin/4 + src.tai/4 + src.shurikenskill/4
				src.kuchiyoseusing=1
				B.max_exp = 200
				B.kuchiyose=1
				B.exp = 1000
				B.health = src.maxhealth/2
				return
		else
			src.random=rand(1,4)
			if(src.random==1)
				if(src.Mchakra>=10000&&src.Mchakra<60000)
					var/mob/Medium_Slug/B = new()
					B.owner=src
					B.name = "Lesma iniciante"
					B.loc = locate(src.x, src.y - 1, src.z)
					B.tai = src.gen/10 + src.nin/10 + src.tai/10 + src.shurikenskill/10
					B.max_exp = 200
					B.kuchiyose=1
					B.exp = 1000
					src.kuchiyoseusing=1
					B.health = src.maxhealth/4
					return
				if(src.Mchakra>=60000)
					var/mob/Big_Slug/B = new()
					B.owner=src
					B.name = "Katsuya"
					B.loc = locate(src.x, src.y - 1, src.z)
					B.tai = src.gen/4 + src.nin/4 + src.tai/4 + src.shurikenskill/4
					B.max_exp = 200
					src.kuchiyoseusing=1
					B.kuchiyose=1
					B.exp = 1000
					B.health = src.maxhealth/2
					return
			else
				var/mob/failedslug/F = new()
				F.loc=src.loc
				F.y-=1
				view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Oops.."
				sleep(50)
				del(F)

mob/proc
	randombee()
		if(src.beesummoning>=50)
			if(src.Mchakra>=10000&&src.Mchakra<50000)
				var/mob/Medium_Bee/B = new()
				B.owner=src
				B.name = "Abelha iniciante"
				B.loc = locate(src.x, src.y - 1, src.z)
				B.tai = src.gen/10 + src.nin/10 + src.tai/10 + src.shurikenskill/10
				B.max_exp = 200
				B.exp = 1000
				src.kuchiyoseusing=1
				B.kuchiyose=1
				B.health = src.maxhealth/4
				return
			if(src.Mchakra>=50000)
				var/mob/Bee/B = new()
				B.owner=src
				B.name = "Beetha"
				B.loc = locate(src.x, src.y - 1, src.z)
				B.tai = src.gen/4 + src.nin/4 + src.tai/4 + src.shurikenskill/4
				B.max_exp = 200
				src.kuchiyoseusing=1
				B.kuchiyose=1
				B.exp = 1000
				B.health = src.maxhealth/2
				return
		else
			src.random=rand(1,4)
			if(src.random==1)
				if(src.Mchakra>=10000&&src.Mchakra<50000)
					var/mob/Medium_Bee/B = new()
					B.owner=src
					B.kuchiyose=1
					B.name = "Abelha iniciante"
					B.loc = locate(src.x, src.y - 1, src.z)
					B.tai = src.gen/10 + src.nin/10 + src.tai/10 + src.shurikenskill/10
					B.max_exp = 200
					B.exp = 1000
					src.kuchiyoseusing=1
					B.health = src.maxhealth/4
					return
				if(src.Mchakra>=50000)
					var/mob/Bee/B = new()
					B.owner=src
					B.name = "Beetha"
					B.loc = locate(src.x, src.y - 1, src.z)
					B.tai = src.gen/4 + src.nin/4 + src.tai/4 + src.shurikenskill/4
					B.max_exp = 200
					B.kuchiyose=1
					src.kuchiyoseusing=1
					B.exp = 1000
					B.health = src.maxhealth/2
					return
			else
				var/mob/failedbee/F = new()
				F.loc=src.loc
				F.y-=1
				view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Oops.."
				sleep(50)
				del(F)

mob/proc
	randomdog()
		if(src.dogsummoning>=50)
			if(src.Mchakra>=10000&&src.Mchakra<40000)
				var/mob/Sdog/B = new()
				B.SDowner=src
				B.name = "Pakum"
				B.loc = locate(src.x, src.y - 1, src.z)
				B.tai = src.gen/10 + src.nin/10 + src.tai/10 + src.shurikenskill/10
				B.max_exp = 200
				B.exp = 1000
				src.kuchiyoseusing=1
				B.kuchiyose=1
				B.health = src.maxhealth/4
				usr.verbs += new /mob/jutsu/verb/DogSastreio()
				sleep(600)
				del (B)
				usr.verbs -= new /mob/jutsu/verb/DogSastreio()
				src.kuchiyoseusing=0
				return
			if(src.Mchakra>=40000)
				var/mob/Sdog/B = new()
				B.SDowner=src
				B.name = "Pakum"
				B.loc = locate(src.x, src.y - 1, src.z)
				B.tai = src.gen/10 + src.nin/10 + src.tai/10 + src.shurikenskill/10
				B.max_exp = 200
				src.kuchiyoseusing=1
				B.kuchiyose=1
				B.exp = 1000
				B.health = src.maxhealth/4
				usr.verbs += new /mob/jutsu/verb/DogSastreio()
				sleep(600)
				del (B)
				usr.verbs -= new /mob/jutsu/verb/DogSastreio()
				src.kuchiyoseusing=0
				return
		else
			src.random=rand(1,4)
			if(src.random==1)
				if(src.Mchakra>=10000&&src.Mchakra<40000)
					var/mob/Sdog/B = new()
					B.SDowner=src
					B.kuchiyose=1
					B.name = "Cachorro"
					B.loc = locate(src.x, src.y - 1, src.z)
					B.tai = src.tai/3.8
					B.health = src.maxhealth/3
					B.max_exp = 200
					B.exp = 1000
					src.kuchiyoseusing=1
					return
				if(src.Mchakra>=40000)
					var/mob/Sdog/B = new()
					B.SDowner=src
					B.name = "Pakum"
					B.loc = locate(src.x, src.y - 1, src.z)
					B.tai = src.gen/10 + src.nin/10 + src.tai/10 + src.shurikenskill/10
					B.max_exp = 200
					B.kuchiyose=1
					src.kuchiyoseusing=1
					B.exp = 1000
					B.health = src.maxhealth/4
					usr.verbs += new /mob/jutsu/verb/DogSastreio()
					sleep(600)
					del (B)
					usr.verbs -= new /mob/jutsu/verb/DogSastreio()
					src.kuchiyoseusing=0
			else
				var/mob/Sdog/F = new()
				F.loc=src.loc
				F.y-=1
				view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Oops.."
				sleep(30)
				del(F)
mob/proc/snakeup()
	var/chance=rand(1,5)
	if(chance==1)
		src.snakesummoning+=1
		usr <<"<font color=green>Sua habilidade em summonar cobras aumentou em 1 ponto!"
	else
		return
mob/proc/frogup()
	var/chance=rand(1,5)
	if(chance==1)
		src.frogsummoning+=1
		usr <<"<font color=green>Sua habilidade em summonar sapos aumentou em 1 ponto!"
	else
		return
mob/proc/slugup()
	var/chance=rand(1,5)
	if(chance==1)
		src.slugsummoning+=1
		usr <<"<font color=green>Sua habilidade em summonar lesmas aumentou em 1 ponto!"
	else
		return

mob/proc/beeup()
	var/chance=rand(1,5)
	if(chance==1)
		src.beesummoning+=1
		usr <<"<font color=green>Sua habilidade em summonar abelhas aumentou em 1 ponto!"
	else
		return

mob/proc/Dogup()
	var/chance=rand(1,5)
	if(chance==1)
		src.dogsummoning+=1
		usr <<"<font color=green>Sua habilidade em summonar cães aumentou em 1 ponto!"
	else
		return
turf/Click()
	for(var/mob/Medium_Snake/M in view())
		if(M.owner==usr)
			walk_towards(M,src)
	..()
mob/Click()
	for(var/mob/Medium_Snake/M in view())
		if(M.owner==usr)
			walk_towards(M,src)
	..()
turf/Click()
	for(var/mob/Medium_Frog/M in view())
		if(M.owner==usr)
			walk_towards(M,src)
	..()
mob/Click()
	for(var/mob/Medium_Frog/M in view())
		if(M.owner==usr)
			walk_towards(M,src)
	..()
turf/Click()
	for(var/mob/Medium_Slug/M in view())
		if(M.owner==usr)
			walk_towards(M,src)
	..()
mob/Click()
	for(var/mob/Medium_Slug/M in view())
		if(M.owner==usr)
			walk_towards(M,src)
	..()
turf/Click()
	for(var/mob/Big_Slug/M in view())
		if(M.owner==usr)
			walk_towards(M,src)
	..()
mob/Click()
	for(var/mob/Big_Slug/M in view())
		if(M.owner==usr)
			walk_towards(M,src)
	..()

turf/Click()
	for(var/mob/Sdog/M in view())
		if(M.owner==usr)
			walk_towards(M,src)
	..()
mob/Click()
	for(var/mob/Sdog/M in view())
		if(M.owner==usr)
			walk_towards(M,src)
	..()

turf/Click()
	for(var/mob/Medium_Bee/M in view())
		if(M.owner==usr)
			walk_towards(M,src)
	..()
mob/Click()
	for(var/mob/Medium_Bee/M in view())
		if(M.owner==usr)
			walk_towards(M,src)

mob
	Bee
		icon='beetha1.dmi'
		icon_state="2"
		density=1
		layer=FLY_LAYER

		Bump(atom/M)
			if(istype(M,/mob/)) // If they run into the player
				if(M == owner)
					src.loc=M.loc
					return
				if(src.cast)
					return
				if(src.Kaiten||src.sphere)
					return
				if(src.PK==0)
					usr<<"Zona NON-PK!"
					return
				else
					var/mob/P = M
					var/Damage = src.tai - P.Resistencia/2
					if(Damage<=0)Damage=0
					P.health -= Damage // Takes the players health
					F_damage(P, Damage, "#ff0000")
					view() << "A Abelha de [src] ataca [M] tirando [Damage] de dano!"
					P.Death(src)
					src.cast = 1
					sleep(7)
					src.cast = 0
		New()
			..()
			overlays+=/obj/bpart2
			overlays+=/obj/bpart3
			overlays+=/obj/bpart4
			overlays+=/obj/bpart5

			..()
		verb/Montar()
			set src in oview(1)
			set category="Summon"
			for(var/mob/Bee/G in oview(2,usr))
				if(G.owner==usr)
					if(!usr.ride&&!G.ride)
						usr.ride=1
						if(G)
							G.ride=1
						usr.Frozen=1
					else
						usr.ride=0
						usr.Frozen=0
						if(G)
							G.ride=0
		Move()
			..()
			var/mob/O = src.owner
			if(O.ride&&src.ride)
				O.loc=src.loc
				O.dir=src.dir
				O.y+=1

obj
	bpart2
		icon='beetha1.dmi'
		icon_state="1"
		density=1
		pixel_y=32
		name="2"
obj
	bpart3
		icon='beetha1.dmi'
		icon_state="3"
		density=1
		pixel_y=-32
		name="3"
obj
	bpart4
		icon='beetha1.dmi'
		icon_state="4"
		density=1
		pixel_x=32
		name="4"
obj
	bpart5
		icon='beetha1.dmi'
		icon_state="5"
		pixel_x=-32
		density=1
		name="5"


mob
	Dog
		icon='SDog.dmi'
		icon_state="1"
		density=1
		layer=FLY_LAYER

		Bump(atom/M)
			if(istype(M,/mob/)) // If they run into the player
				if(M == owner)
					src.loc=M.loc
					return
				if(src.cast)
					return
				if(src.Kaiten||src.sphere)
					return
				if(src.PK==0)
					usr<<"Zona NON-PK!"
					return
				else
					var/mob/P = M
					var/Damage = src.tai - P.Resistencia/2
					if(Damage<=0)Damage=0
					P.health -= Damage // Takes the players health
					F_damage(P, Damage, "#ff0000")
					view() << "O Cachorro de [src] ataca [M] tirando [Damage] de dano!"
					P.Death(src)
					src.cast = 1
					sleep(7)
					src.cast = 0
		verb/Rastrear()
			set src in oview(2)
			set category="Summon"
			for(var/mob/Dog/G in oview(2,usr))
				if(G.owner==usr)
					for(var/mob/M in world)
						if(M.client)
							usr<<"{\icon[M][M.name],Rank - [M.rank]"
							usr<<"Location; [M.x],[M.y]"
							usr<<"Suas Coordenadas: [usr.x],[usr.y],[usr.z]"
						if(usr.z < M.z&&usr.z > M.z)
							usr << "<b><font color = silver><center>Pelo cheiro ele esta em outra localidade!"
							return
						else
							usr << "<b><font color = silver><center>Pelo cheiro ele esta nesse mesmo local!"
							if(usr.x > M.x)
								usr << "<b><font color = silver><center>Pelo cheiro ele esta a oeste de voce!"
							if(usr.x < M.x)
								usr << "<b><font color = silver><center>Pelo cheiro ele esta a leste de voce!"
							if(usr.y < M.y)
								usr << "<b><font color = silver><center>Pelo cheiro ele esta a norte de voce!"
							if(usr.y > M.y)
								usr << "<b><font color = silver><center>Pelo cheiro ele está à sul de você!"

		Move()
			..()
			var/mob/O = src.owner
			if(O.ride&&src.ride)
				O.loc=src.loc
				O.dir=src.dir
				O.y+=1

mob
	Gamabunta
		icon='gammabunta1.dmi'
		icon_state="1,1"
		density=1
		layer=FLY_LAYER

		Bump(atom/M)
			if(istype(M,/mob/)) // If they run into the player
				if(M == owner)
					src.loc=M.loc
					return
				if(src.cast)
					return
				if(src.Kaiten||src.sphere)
					return
				if(src.PK==0)
					usr<<"Zona NON-PK!"
					return
				else
					var/mob/P = M
					var/Damage = src.tai - P.Resistencia/2
					if(Damage<=0)Damage=0
					P.health -= Damage // Takes the players health
					F_damage(P, Damage, "#ff0000")
					view() << "O Gamabunta de [src] ataca [M] tirando [Damage] de dano!"
					P.Death(src)
					src.cast = 1
					sleep(7)
					src.cast = 0
		New()
			..()
			overlays+=/obj/part2
			overlays+=/obj/part3
			overlays+=/obj/part4
			overlays+=/obj/part5
			overlays+=/obj/part6
			overlays+=/obj/part7
			overlays+=/obj/part8
			overlays+=/obj/part9
			..()
		verb/Montar()
			set src in oview(2)
			set category="Summon"
			for(var/mob/Gamabunta/G in oview(2,usr))
				if(G.owner==usr)
					if(!usr.ride&&!G.ride)
						usr.ride=1
						if(G)
							G.ride=1
						usr.Frozen=1
					else
						usr.ride=0
						usr.Frozen=0
						if(G)
							G.ride=0
		verb/Jutsusapo() // Verb used for cast the beam
			set src in oview(3)
			set category = "Summon"
			set name = "Jutsu Colaborado"
			for(var/mob/Gamabunta/G in oview(3,usr))
				if(G.owner==usr)
					if(usr.cast) // If the mob's cast var is one...
						return
					if(usr.PK==0)
						usr<<"Zona NON-PK!!!"
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
						usr.RandomChakra1()
						if(usr.chakra<=0)
							usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
							usr.health=0
							usr.chakra=0
							usr.Death(usr)
							return
						usr.DoryuuN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz:<font color=blue>Suiton Doryuudan!"
						sleep(20)
						usr.Chakragain()
						if(usr.dir == NORTH)
							var/obj/aguasapo/A = new /obj/aguasapo/
							var/obj/aguasapo/B = new /obj/aguasapo/
							var/obj/aguasapo/C = new /obj/aguasapo/
							A.loc = locate(usr.x, usr.y+1, usr.z)
							C.loc = locate(usr.x+1, usr.y+1, usr.z)
							B.loc = locate(usr.x-1, usr.y+1, usr.z)
							A.nin=usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.tai/4 + usr.aguaN*1.5 + usr.ventoN*1.5
							B.nin=usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.tai/4 + usr.aguaN*1.5 + usr.ventoN*1.5
							C.nin=usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.tai/4 + usr.aguaN*1.5 + usr.ventoN*1.5
							A.Gowner=usr
							B.Gowner=usr
							C.Gowner=usr
							A.dir = NORTH
							B.dir = NORTH
							C.dir = NORTH
							walk(A,usr.dir)
							walk(B,usr.dir)
							walk(C,usr.dir)
							sleep(200)
							del(A)
							del(B)
							del(C)
							sleep(110)
						if(usr.dir == SOUTH)
							var/obj/aguasapo/A = new /obj/aguasapo/
							var/obj/aguasapo/B = new /obj/aguasapo/
							var/obj/aguasapo/C = new /obj/aguasapo/
							A.loc = locate(usr.x, usr.y-1, usr.z)
							C.loc = locate(usr.x+1, usr.y-1, usr.z)
							B.loc = locate(usr.x-1, usr.y-1, usr.z)
							A.nin=usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.tai/4 + usr.aguaN*1.5 + usr.ventoN*1.5
							B.nin=usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.tai/4 + usr.aguaN*1.5 + usr.ventoN*1.5
							C.nin=usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.tai/4 + usr.aguaN*1.5 + usr.ventoN*1.5
							A.Gowner=usr
							B.Gowner=usr
							C.Gowner=usr
							A.dir = SOUTH
							B.dir = SOUTH
							C.dir = SOUTH
							walk(A,usr.dir)
							walk(B,usr.dir)
							walk(C,usr.dir)
							sleep(200)
							del(A)
							del(B)
							del(C)
							sleep(110)
						if(usr.dir == WEST)
							var/obj/aguasapo/A = new /obj/aguasapo/
							var/obj/aguasapo/C = new /obj/aguasapo/
							var/obj/aguasapo/D = new /obj/aguasapo/
							A.loc = locate(usr.x-1, usr.y, usr.z)
							C.loc = locate(usr.x-1, usr.y-1, usr.z)
							D.loc = locate(usr.x-1, usr.y+1, usr.z)
							A.nin=usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.tai/4 + usr.aguaN*1.5 + usr.ventoN*1.5
							D.nin=usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.tai/4 + usr.aguaN*1.5 + usr.ventoN*1.5
							C.nin=usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.tai/4 + usr.aguaN*1.5 + usr.ventoN*1.5
							A.Gowner=usr
							C.Gowner=usr
							D.Gowner=usr
							A.dir = WEST
							C.dir = WEST
							D.dir = WEST
							walk(A,usr.dir)
							walk(C,usr.dir)
							walk(D,usr.dir)
							sleep(200)
							del(A)
							del(C)
							del(D)
							sleep(110)
						if(usr.dir == EAST)
							var/obj/aguasapo/A = new /obj/aguasapo/
							var/obj/aguasapo/C = new /obj/aguasapo/
							var/obj/aguasapo/D = new /obj/aguasapo/
							A.loc = locate(usr.x+1, usr.y, usr.z)
							C.loc = locate(usr.x+1, usr.y-1, usr.z)
							D.loc = locate(usr.x+1, usr.y+1, usr.z)
							A.nin=usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.tai/4 + usr.aguaN*1.5 + usr.ventoN*1.5
							D.nin=usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.tai/4 + usr.aguaN*1.5 + usr.ventoN*1.5
							C.nin=usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 + usr.tai/4 + usr.aguaN*1.5 + usr.ventoN*1.5
							A.Gowner=usr
							C.Gowner=usr
							D.Gowner=usr
							A.dir = EAST
							C.dir = EAST
							D.dir = EAST
							walk(A,usr.dir)
							walk(C,usr.dir)
							walk(D,usr.dir)
							sleep(200)
							del(A)
							del(C)
							del(D)
							sleep(110)
							return
						return
		Move()
			..()
			var/mob/O = src.owner
			if(O.ride&&src.ride)
				O.loc=src.loc
				O.dir=src.dir
				O.y+=1

obj
	part2
		icon='gammabunta1.dmi'
		icon_state="1,2"
		density=1
		pixel_y=32
		name="1"
obj
	part3
		icon='gammabunta1.dmi'
		icon_state="0,1"
		density=1
		pixel_x=-32
		name="2"
obj
	part4
		icon='gammabunta1.dmi'
		icon_state="2,1"
		density=1
		pixel_x=32
		name="3"
obj
	part5
		icon='gammabunta1.dmi'
		icon_state="0,2"
		pixel_x=-32
		density=1
		pixel_y=32
		name="4"
obj
	part6
		icon='gammabunta1.dmi'
		icon_state="2,2"
		pixel_x=32
		density=1
		pixel_y=32
		name="5"
obj
	part7
		icon='gammabunta1.dmi'
		icon_state="0,0"
		pixel_x=-32
		pixel_y=-32
		density=1
		name="6"
obj
	part8
		icon='gammabunta1.dmi'
		icon_state="1,0"
		density=1
		pixel_y=-32
		name="7"
obj
	part9
		icon='gammabunta1.dmi'
		icon_state="2,0"
		pixel_x=32
		density=1
		pixel_y=-32
		name="8"

mob/var/tmp/cobraprotegendo=0
mob
	Big_Snake
		icon='orochimarusnake.dmi'
		icon_state="0,0"
		density=1
		layer=FLY_LAYER

		Bump(atom/M)
			if(istype(M,/mob/)) // If they run into the player
				if(M == owner)
					src.loc=M.loc
					return
				if(src.cast)
					return
				if(src.Kaiten||src.sphere)
					return
				if(src.PK==0)
					usr<<"Zona NON-PK!"
					return
				else
					var/mob/P = M
					var/Damage = src.tai - P.Resistencia/2
					if(Damage<=0)Damage=0
					P.health -= Damage // Takes the players health
					F_damage(P, Damage, "#ff0000")
					view() << "A Manda de [src] ataca [M] tirando [Damage] de dano!"
					P.Death(src)
					src.cast = 1
					sleep(5)
					src.cast = 0
		New()
			..()
			overlays+=/obj/snake1
			overlays+=/obj/snake2
			overlays+=/obj/snake3
			overlays+=/obj/snake4
			overlays+=/obj/snake5
			..()
		verb/Montar()
			set src in oview(2)
			set category="Summon"
			for(var/mob/Big_Snake/G in oview(2,usr))
				if(G.owner==usr)
					if(!usr.ride&&!G.ride)
						usr.ride=1
						if(G)
							G.ride=1
						usr.Frozen=1
					else
						usr.ride=0
						usr.Frozen=0
						if(G)
							G.ride=0
		verb/Proteger()
			set src in oview(3)
			set category="Summon"
			for(var/mob/Big_Snake/G in oview(3,usr))
				if(G.owner==usr)
					if(usr.cast)
						return
					usr.cast=1
					var/list/AAA = usr.overlays.Copy()
					usr.icon = 'invis.dmi'
					usr.overlays = usr.overlays.Remove(usr.overlays)
					usr.Kaiten=1
					usr<<"Vc se ocultou dentro da cobra"
					usr.Frozen=1
					usr.cobraprotegendo=1
					sleep(200)
					usr.icon = usr.Oicon
					usr.overlays = AAA.Copy()
					usr.cast=0
					usr.Frozen=0
					usr.Kaiten=0
					usr.cobraprotegendo=0

		Move()
			..()
			var/mob/O = src.owner
			if(O.ride&&src.ride)
				O.loc=src.loc
				O.dir=src.dir
				O.y+=2
obj
	snake1
		icon='orochimarusnake.dmi'
		icon_state="0,1"
		density=1
		pixel_y=32
		name="2"
obj
	snake2
		icon='orochimarusnake.dmi'
		icon_state="1,0"
		density=1
		pixel_x=32
		name="2"
obj
	snake3
		icon='orochimarusnake.dmi'
		icon_state="1,1"
		density=1
		pixel_x=32
		pixel_y=32
		name="2"
obj
	snake4
		icon='orochimarusnake.dmi'
		icon_state="0,2"
		density=1
		pixel_y=64
		name="2"
obj
	snake5
		icon='orochimarusnake.dmi'
		icon_state="1,2"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"

mob/var/tmp/kcurando=0
mob
	Big_Slug
		icon='katsuya(1).dmi'
		icon_state="1,0"
		density=1
		layer=FLY_LAYER

		Bump(atom/M)
			if(istype(M,/mob/)) // If they run into the player
				if(M == owner)
					src.loc=M.loc
					return
				if(src.cast)
					return
				if(src.Kaiten||src.sphere)
					return
				if(src.PK==0)
					usr<<"Zona NON-PK!"
					return
				else
					var/mob/P = M
					var/Damage = src.tai - P.Resistencia/2
					if(Damage<=0)Damage=0
					P.health -= Damage // Takes the players health
					F_damage(P, Damage, "#ff0000")
					view() << "A Katsuyu de [usr] ataca [M] tirando [Damage] de dano!"
					P.Death(usr)
					src.cast = 1
					sleep(5)
					src.cast = 0
		New()
			..()
			overlays+=/obj/kata1
			overlays+=/obj/kata2
			overlays+=/obj/kata3
			overlays+=/obj/kata4
			overlays+=/obj/kata5
			..()
		verb/Montar()
			set src in oview(2)
			set category="Summon"
			for(var/mob/Big_Slug/G in oview(2,usr))
				if(G.owner==usr)
					if(!usr.ride&&!G.ride)
						usr.ride=1
						if(G)
							G.ride=1
						usr.Frozen=1
					else
						usr.ride=0
						usr.Frozen=0
						if(G)
							G.ride=0
		verb/Curar(mob/M in view())
			set src in oview(2)
			set category="Summon"
			if(usr.kcurando)
				usr<<"Espere para curar novamente!"
				return
			else
				if(usr.kcurando)return
				usr.kcurando=1
				spawn()usr.Cooldown(1200,"Curar")
				for(var/mob/Big_Slug/G in oview(2,usr))
					if(G.owner==usr)
						if(usr.chakra<=20000)
							usr<<"Pouco chakra (20k)"
							return
	//					for(var/mob/M in view())
						usr<<"Um pequena parte de Katsuya se divide para curar [M]"
						M.froze=0
						M.health = M.maxhealth
						M.chakra = M.Mchakra
						M.stamina = M.Mstamina
						M.Frozen=0
						M.acido=0
						M.Move_Delay=0.7
						M.caught=0
						M.captured=0
						M.screwed=0
						M:sight &= ~BLIND


		Move()
			..()
			var/mob/O = src.owner
			if(O.ride&&src.ride)
				O.loc=src.loc
				O.dir=src.dir
				O.y+=1
obj
	kata1
		icon='katsuya(1).dmi'
		icon_state="0,0"
		density=1
		pixel_x=-32

obj
	kata2
		icon='katsuya(1).dmi'
		icon_state="2,0"
		density=1
		pixel_x=32

obj
	kata3
		icon='katsuya(1).dmi'
		icon_state="1,1"
		density=1
		pixel_y=32
obj
	kata4
		icon='katsuya(1).dmi'
		icon_state="0,1"
		density=1
		pixel_x=-32
		pixel_y=32

obj
	kata5
		icon='katsuya(1).dmi'
		icon_state="2,1"
		density=1
		pixel_x=32
		pixel_y=32

mob
	Medium_Frog
		icon='medium frog.dmi'
		icon_state="0,1"
		density=1

		layer=FLY_LAYER
		Bump(atom/M)
			if(istype(M,/mob/)) // If they run into the player
				if(M == owner||cast == 1)
					return
				if(src.Kaiten||src.sphere)
					return
				if(src.PK==0)
					usr<<"Zona NON-PK!"
					return
				else
					var/mob/P = M
					var/Damage = src.tai - P.Resistencia/2
					if(Damage<=0)Damage=0
					P.health -= Damage // Takes the players health
					view() << "O Sapo de [src] ataca [M] tirando [Damage] de dano!"
					P.Death(src)
					src.cast = 1
					sleep(5)
					src.cast = 0
		New()
			..()
			overlays+=/obj/mfrog1
			overlays+=/obj/mfrog2
			overlays+=/obj/mfrog3
			..()
obj
	mfrog1
		icon='medium frog.dmi'
		icon_state="0,0"
		density=1
		pixel_y=-32
obj
	mfrog2
		icon='medium frog.dmi'
		icon_state="1,1"
		density=1
		pixel_x=32
obj
	mfrog3
		icon='medium frog.dmi'
		icon_state="1,0"
		density=1
		pixel_x=32
		pixel_y=-32


mob
	Medium_Bee
		icon='medium bee.dmi'
		icon_state="2"
		density=1

		layer=FLY_LAYER
		Bump(atom/M)
			if(istype(M,/mob/)) // If they run into the player
				if(M == owner||cast == 1)
					return
				if(src.Kaiten||src.sphere)
					return
				if(src.PK==0)
					usr<<"Zona NON-PK!"
					return
				else
					var/mob/P = M
					var/Damage = src.tai - P.Resistencia/2
					if(Damage<=0)Damage=0
					P.health -= Damage // Takes the players health
					view() << "A Abelhinha de [src] ataca [M] tirando [Damage] de dano!"
					P.Death(src)
					src.cast = 1
					sleep(5)
					src.cast = 0
		New()
			..()

			overlays+=/obj/mbee2
			overlays+=/obj/mbee3
			overlays+=/obj/mbee4
			overlays+=/obj/mbee5
			..()
obj
	mbee2
		icon='beetha1.dmi'
		icon_state="1"
		density=1
		pixel_y=32
		name="2"
obj
	mbee3
		icon='beetha1.dmi'
		icon_state="3"
		density=1
		pixel_y=-32
		name="3"
obj
	mbee4
		icon='beetha1.dmi'
		icon_state="4"
		density=1
		pixel_x=32
		name="4"
obj
	mbee5
		icon='beetha1.dmi'
		icon_state="5"
		pixel_x=-32
		density=1
		name="5"
mob/failedsnake
	icon='fail summons.dmi'
	icon_state="snake"


mob/failedfrog
	icon='fail summons.dmi'
	icon_state="frog"
mob/failedbee
	icon='fail summons.dmi'
	icon_state="bee"


mob/Medium_Slug
	icon='mediumslug.dmi'
	icon_state="0,0"
	Bump(atom/M)
		if(istype(M,/mob/)) // If they run into the player
			if(M == owner||cast == 1)
				return
			if(src.Kaiten||src.sphere)
				return
			if(src.PK==0)
				usr<<"Zona NON-PK!"
				return
			else
				var/mob/P = M
				var/Damage = src.tai - P.Resistencia/2
				if(Damage<=0)Damage=0
				P.health -= Damage // Takes the players health
				view() << "A Lesminha de [src] ataca [M] tirando [Damage] de dano!"
				P.Death(src)
				src.cast = 1
				sleep(5)
				src.cast = 0
	New()
		..()
		overlays+=/obj/msnail1
		overlays+=/obj/msnail2
		overlays+=/obj/msnail3
		..()
obj
	msnail1
		icon='mediumslug.dmi'
		icon_state="1,0"
		density=1
		pixel_x=32
obj
	msnail2
		icon='mediumslug.dmi'
		icon_state="0,1"
		density=1
		pixel_y=32
obj
	msnail3
		icon='mediumslug.dmi'
		icon_state="1,1"
		density=1
		pixel_x=32
		pixel_y=32
mob/failedslug
	icon='fail summons.dmi'
	icon_state="slug"
obj
	msnake1
		icon='snakemedium.dmi'
		icon_state="0,1"
		density=1
		pixel_y=32
mob
	Medium_Snake
		icon='snakemedium.dmi'
		icon_state="0,0"
		density=1
		layer=FLY_LAYER
		Bump(atom/M)
			if(istype(M,/mob/)) // If they run into the player
				if(M == owner||cast == 1)
					return
				if(src.Kaiten||src.sphere)
					return
				if(src.PK==0)
					usr<<"Zona NON-PK!"
					return
				else
					var/mob/P = M
					var/Damage = src.tai - P.Resistencia/2
					if(Damage<=0)Damage=0
					P.health -= Damage // Takes the players health
					view() << "A Cobrinha de [src] ataca [M] tirando [Damage] de dano!"
					P.Death(src)
					src.cast = 1
					sleep(5)
					src.cast = 0
		New()
			..()
			overlays+=/obj/msnake1
			..()
obj/summoneffect
	icon='summoningeffect.dmi'
	density=0
obj/summoncircle
	icon='summoncircle.dmi'
	density=0
	layer=MOB_LAYER+1
mob/proc/Summoneffect()
	var/obj/summoneffect/U = new()
	var/obj/summoneffect/D = new()
	var/obj/summoneffect/L = new()
	var/obj/summoneffect/R = new()
	var/obj/summoneffect/NW = new()
	var/obj/summoneffect/NE = new()
	var/obj/summoneffect/SE = new()
	var/obj/summoneffect/SW = new()
	var/obj/summoncircle/SC = new()
	SC.loc=usr.loc
	flick("summon",SC)
	U.loc=src.loc
	walk(U,NORTH)
	D.loc=src.loc
	walk(D,SOUTH)
	L.loc=src.loc
	walk(L,WEST)
	R.loc=src.loc
	walk(R,EAST)
	NW.loc=src.loc
	walk(NW,NORTHWEST)
	NE.loc=src.loc
	walk(NE,NORTHEAST)
	SE.loc=src.loc
	walk(SE,SOUTHEAST)
	SW.loc=src.loc
	walk(SW,SOUTHWEST)
	sleep(3)
	if(U)
		del(U)
	if(D)
		del(D)
	if(L)
		del(L)
	if(R)
		del(R)
	if(NW)
		del(NW)
	if(NE)
		del(NE)
	if(SE)
		del(SE)
	if(SW)
		del(SW)
	sleep(7)
	if(SC)
		del(SC)

mob
	KyuubiR
		icon='Kyuubi12.dmi'
		icon_state="2,1"
		density=1
		layer=FLY_LAYER

		Bump(atom/M)
			if(istype(M,/mob/)) // If they run into the player
				if(M == owner)
					src.loc=M.loc
					return
				if(src.cast)
					return
				if(src.Kaiten||src.sphere)
					return
				if(src.PK==0)
					usr<<"Zona NON-PK!"
					return
				else
					var/mob/P = M
					var/Damage = src.tai/1.4 - P.Resistencia/2
					if(Damage<=0)Damage=0
					P.health -= Damage // Takes the players health
					view() << "A Kyuubi de [src] ataca [M] tirando [Damage] de dano!"
					P.Death(src)
					src.cast = 1
					sleep(5)
					src.cast = 0
		New()
			..()
			overlays+=/obj/ky1
			overlays+=/obj/ky2
			overlays+=/obj/ky3
			overlays+=/obj/ky4
			overlays+=/obj/ky5
			overlays+=/obj/ky6
			overlays+=/obj/ky7
			overlays+=/obj/ky8
			overlays+=/obj/ky9
			overlays+=/obj/ky10
			overlays+=/obj/ky11
			overlays+=/obj/ky12
			overlays+=/obj/ky13
			overlays+=/obj/ky14
			overlays+=/obj/ky15
			overlays+=/obj/ky16
			overlays+=/obj/ky17
			overlays+=/obj/ky18
			overlays+=/obj/ky19
			overlays+=/obj/ky20
			overlays+=/obj/ky21
			overlays+=/obj/ky22
			overlays+=/obj/ky23
			overlays+=/obj/ky24

			..()
		verb/Montar()
			set src in oview(2)
			set category="Staff"
			for(var/mob/KyuubiR/G in oview(1,usr))
				if(G.owner==usr)
					if(!usr.ride&&!G.ride)
						usr.ride=1
						if(G)
							G.ride=1
						usr.Frozen=1
					else
						usr.ride=0
						usr.Frozen=0
						if(G)
							G.ride=0
		Move()
			..()
			var/mob/O = src.owner
			if(O.ride&&src.ride)
				O.loc=src.loc
				O.dir=src.dir
				O.y+=2
obj
	ky1
		icon='kyuubi12.dmi'
		icon_state="3,1"
		density=1
		pixel_y=32
		name="2"
obj
	ky2
		icon='kyuubi12.dmi'
		icon_state="2,2"
		density=1
		pixel_x=32
		name="2"
obj
	ky3
		icon='kyuubi12.dmi'
		icon_state="3,2"
		density=1
		pixel_x=32
		pixel_y=32
		name="2"
obj
	ky4
		icon='kyuubi12.dmi'
		icon_state="0,2"
		density=1
		pixel_y=64
		name="2"
obj
	ky5
		icon='Kyuubi12.dmi'
		icon_state="1,2"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
obj
	ky6
		icon='Kyuubi12.dmi'
		icon_state="0,0"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
obj
	ky7
		icon='Kyuubi12.dmi'
		icon_state="1,0"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
obj
	ky8
		icon='Kyuubi12.dmi'
		icon_state="2,0"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
obj
	ky9
		icon='Kyuubi12.dmi'
		icon_state="3,0"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
obj
	ky10
		icon='Kyuubi12.dmi'
		icon_state="4,0"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
obj
	ky11
		icon='Kyuubi12.dmi'
		icon_state="5,0"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
obj
	ky12
		icon='Kyuubi12.dmi'
		icon_state="0,1"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
obj
	ky12
		icon='Kyuubi12.dmi'
		icon_state="1,1"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
obj
	ky13
		icon='Kyuubi12.dmi'
		icon_state="4,1"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
obj
	ky14
		icon='Kyuubi12.dmi'
		icon_state="5,1"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
obj
	ky15
		icon='Kyuubi12.dmi'
		icon_state="0,2"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
obj
	ky16
		icon='Kyuubi12.dmi'
		icon_state="1,2"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
obj
	ky17
		icon='Kyuubi12.dmi'
		icon_state="4,2"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
obj
	ky18
		icon='Kyuubi12.dmi'
		icon_state="5,2"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
obj
	ky19
		icon='Kyuubi12.dmi'
		icon_state="0,3"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
obj
	ky20
		icon='Kyuubi12.dmi'
		icon_state="1,3"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
obj
	ky21
		icon='Kyuubi12.dmi'
		icon_state="2,3"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
obj
	ky22
		icon='Kyuubi12.dmi'
		icon_state="3,3"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
obj
	ky23
		icon='Kyuubi12.dmi'
		icon_state="4,3"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
obj
	ky24
		icon='Kyuubi12.dmi'
		icon_state="5,3"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"


mob
	Dogg
		icon='SDog.dmi'
		icon_state=""
		density=1
		layer=FLY_LAYER

		Bump(atom/M)
			if(istype(M,/mob/)) // If they run into the player
				if(M == SDowner)
					src.loc=M.loc
					return
				if(src.cast)
					return
				if(src.Kaiten||src.sphere)
					return
				if(src.PK==0)
					usr<<"Zona NON-PK!"
					return
				else
					var/mob/P = M
					var/Damage = src.tai - P.Resistencia/2
					if(Damage<=0)Damage=0
					P.health -= Damage // Takes the players health
					F_damage(P, Damage, "#ff0000")
					view() << "O Cachorro de [src] ataca [M] tirando [Damage] de dano!"
					P.Death(src)
					src.cast = 1
					sleep(5)
					src.cast = 0
		New()
			..()
			overlays+=/obj/SD1

obj
	SD1
		icon='Sdog.dmi'
		icon_state=""
		density=1
		pixel_x=-32