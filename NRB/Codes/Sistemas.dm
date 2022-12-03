mob
	proc
		atirar(k,xdir)
			if(!istype(src,/mob/npc)&&src.Frozen==0&&src.PK&&!src.froze&&!src.Kaiten)
				if(!src.icon_state)src.icon_state="KnockBack"
				var/i=k
				var/reflected = 0
				while(i>0 &&src)
					var/pass=1
					var/obj/T=get_step(src,xdir)
					for(var/atom/o in get_step(src,xdir))
						if(o)
							if(o.density==1)
								pass=0
					if(!T)
						pass=0
					else
						if(T.density==1)
							pass=0
					if(xdir==NORTH)
						if(pass)
							src.y++
						else if(!reflected)
							i /= 2
							i = round(i,1)
							xdir = pick(SOUTHEAST, SOUTHWEST)
							reflected = 1
							continue
					if(xdir==SOUTH)
						if(pass)
							src.y--
						else if(!reflected)
							i /= 2
							i = round(i,1)
							xdir = pick(NORTHEAST, NORTHWEST)
							reflected = 1
							continue
					if(xdir==EAST)
						if(pass)
							src.x++
						else if(!reflected)
							i /= 2
							i = round(i,1)
							xdir = pick(NORTHWEST, SOUTHWEST)
							reflected = 1
							continue
					if(xdir==WEST)
						if(pass)
							src.x--
						else if(!reflected)
							i /= 2
							i = round(i,1)
							xdir = pick(NORTHEAST, SOUTHEAST)
							reflected = 1
							continue
					if(xdir==NORTHWEST)
						if(pass)
							src.y++
							src.x--
						else if(!reflected)
							i /= 2
							i = round(i,1)
							xdir = pick(EAST, SOUTH)
							reflected = 1
							continue
					if(xdir==NORTHEAST)
						if(pass)
							src.y++
							src.x++
						else if(!reflected)
							i /= 2
							i = round(i,1)
							xdir = pick(WEST, SOUTH)
							reflected = 1
							continue
					if(xdir==SOUTHEAST)
						if(pass)
							src.x++
							src.y--
						else if(!reflected)
							i /= 2
							i = round(i,1)
							xdir = pick(WEST, NORTH)
							reflected = 1
							continue
					if(xdir==SOUTHWEST)
						if(pass)
							src.x--
							src.y--
						else if(!reflected)
							i /= 2
							i = round(i,1)
							xdir = pick(EAST, NORTH)
							reflected = 1
							continue
					sleep(1)
					i--
				if(src)if(src.icon_state=="KnockBack")src.icon_state=""

obj/Click()//this will make it so if you click the turf your pet will walk to it			//like in MJ
	for(var/mob/npcs/Bunshin/B in world)
		if(B.original == usr)
			if(B.Frozen)
				B.Frozen = 0
				walk_towards(B,usr) // I don't know how Gunbuddy does his crap
				B.moving = 1
				sleep(600)
				B.Frozen = 1
				B.moving = 0
			else
				walk_towards(B,src)
	for(var/mob/npcs/Satetsu/SA in world)
		if(SA.original == usr)
			if(SA.Frozen)
				SA.Frozen = 0
				walk_towards(SA,src)
				SA.moving=1
				sleep(600)
				SA.Frozen=1
				SA.moving =0
			else
				walk_towards(SA,src)
	for(var/mob/npcs/KBunshin/K in world)
		if(K.original == usr)
			if(K.Frozen)
				K.Frozen = 0
				walk_towards(K,src)
				K.moving=1
				sleep(600)
				K.Frozen=1
				K.moving =0
			else
				walk_towards(K,src)
	for(var/mob/npcs/SanshouoX/S in world)
		if(S.original == usr)
			if(S.Frozen)
				S.Frozen = 0
				walk_towards(S,src)
				S.moving=1
				sleep(600)
				S.Frozen=1
				S.moving =0
			else
				walk_towards(S,src)
	for(var/mob/Karasu/P in world)
		if(usr.karasuselecionada)
			if(P.dono == usr)
				if(P.Frozen)
					P.Frozen = 0
					walk_towards(P,src)
					P.moving=1
					sleep(600)
					P.Frozen=1
					P.moving =0
				else
					walk_towards(P,src)
	for(var/mob/Kuroari/P in world)
		if(usr.kuroariselecionada)
			if(P.dono == usr)
				if(P.Frozen)
					P.Frozen = 0
					walk_towards(P,src)
					P.moving=1
					sleep(600)
					P.Frozen=1
					P.moving =0
				else
					walk_towards(P,src)
	for(var/mob/pet/P in view())
		if(P.owner == usr&&P.Frozen == 0)
			walk_towards(P,src)
		else
			..()

turf/Click()//this will make it so if you click the turf your pet will walk to it//like in MJ
	for(var/obj/am/AM in world)
		if(AM.Gowner == usr)
			if(usr.EntonAtivado)
				walk_towards(AM,src) // I don't know how Gunbuddy does his crap
	for(var/mob/npcs/Bunshin/B in world)
		if(B.original == usr)
			if(B.Frozen)
				B.Frozen = 0
				walk_towards(B,src) // I don't know how Gunbuddy does his crap
				B.moving = 1
				sleep(600)
				B:Frozen = 1
				B:moving = 0
			else
				walk_towards(B,src)
	for(var/mob/npcs/KBunshin/K in world)
		if(K.original == usr)
			if(K.froze)
				K.froze = 0
				walk_towards(K,src)
				sleep(600)
				K.froze=1
			else
				walk_towards(K,src)
	for(var/mob/npcs/GenjBunshin/K in world)
		if(K.original == usr)
			if(K.froze)
				K.froze = 0
				walk_towards(K,src)
				sleep(600)
				K.froze=1
			else
				walk_towards(K,src)
	for(var/mob/npcs/EleBunshin/K in world)
		if(K.original == usr)
			if(K.froze)
				K.froze = 0
				walk_towards(K,src)
				sleep(600)
				K.froze=1
			else
				walk_towards(K,src)
	for(var/mob/npcs/SenninBunshin/K in world)
		if(K.original == usr)
			if(K.froze)
				K.froze = 0
				walk_towards(K,src)
				sleep(600)
				K.froze=1
			else
				walk_towards(K,src)
	for(var/mob/Karasu/P in world)
		if(usr.karasuselecionada)
			if(P.dono == usr)
				if(P.froze)
					P.froze = 0
					walk_towards(P,src)
					sleep(600)
					P.froze=1
				else
					walk_towards(P,src)

	for(var/mob/Kuroari/P in world)
		if(usr.kuroariselecionada)
			if(P.dono == usr)
				if(P.froze)
					P.froze = 0
					walk_towards(P,src)
					sleep(600)
					P.froze=1
				else
					walk_towards(P,src)
	for(var/mob/Sanshouo/S in world)
		if(usr.sanshouoselecionada)
			if(S.dono == usr)
				if(S.froze)
					S.froze = 0
					walk_towards(S,src)
					sleep(600)
					S.froze=1
				else
					walk_towards(S,src)
	for(var/mob/pet/P in view())
		if(P.owner == usr&&P.Frozen == 0)
			walk_towards(P,src)
		else
			..()
	for(var/mob/Pet/P in view())
		if(P.owner == usr&&P.Frozen == 0)
			walk_towards(P,src)
		else
			..()
mob/var/FollowBunshins = 1
mob/var/karasuseguir=0
mob/var/kuroariseguir=0
mob/var/sanshouoseguir=0

mob/Move()//Move proc.. it's absolutely delectable
	if(src.Frozen)//they can't move if they're locked
		return
	else
		..()
	if(src.client&&src.FollowBunshins)
		for(var/mob/npcs/Bunshin/B in world)
			if(B.original == src)
				if(B.Frozen||B.moving)
					return
				else
					walk_towards(B,src)
		for(var/mob/oodamaBunshin/B in world)
			walk_towards(B,src)
	if(src.client&&src.FollowBunshins)
		for(var/mob/npcs/KBunshin/K in world)
			if(K.original == src)
				if(K.Frozen||K.moving)
					return
				else
					walk_towards(K,src)

mob/Click()//this will make it so if you click the turf your pet will walk to it			//like in MJ
	for(var/mob/npcs/Bunshin/B in world)
		if(B.original == usr)
			if(B:Frozen)
				B:Frozen = 0
				walk_towards(B,src) // I don't know how Gunbuddy does his crap
				B.moving = 1
				spawn(500)
				B.Frozen = 1
				B.moving = 0
			else
				walk_towards(B,src)

	for(var/mob/npcs/KBunshin/K in world)
		if(K.original == usr)
			if(K.Frozen)
				K.Frozen = 0
				walk_towards(K,src)
				K.moving=1
				sleep(600)
				K.Frozen=1
				K.moving =0
			else
				walk_towards(K,src)
	for(var/mob/pet/P in view())
		if(P.owner == usr&&P.Frozen == 0)
			walk_towards(P,src)
		else
			..()
	for(var/mob/Karasu/P in world)
		if(usr.karasuselecionada)
			if(P.dono == usr)
				if(P.Frozen)
					P.Frozen = 0
					walk_towards(P,src)
					P.moving=1
					sleep(600)
					P.Frozen=1
					P.moving =0
				else
					walk_towards(P,src)
	for(var/mob/Kuroari/P in world)
		if(usr.kuroariselecionada)
			if(P.dono == usr)
				if(P.Frozen)
					P.Frozen = 0
					walk_towards(P,src)
					P.moving=1
					sleep(600)
					P.Frozen=1
					P.moving =0
				else
					walk_towards(P,src)
	/*for(var/mob/Sanshouo/S in world)
		if(usr.sanshouoselecionada)
			if(S.dono == usr)
				if(S.Frozen)
					S.Frozen = 0
					walk_towards(S,src)
					S.moving=1
					sleep(600)
					S.Frozen=1
					S.moving =0
				else
					walk_towards(S,src)*/

mob/verb/KillBunshins()//this will make it so if you click the turf your pet will walk to it			//like in MJ
	set hidden = 1
//	set name = "Bunshins - Matar"
	set desc = "Destrói seus bunshins"
	for(var/mob/npcs/B in world)
		if(B.original == usr)
			if(B.Frozen)
				usr.bunshin = 0
				usr.kbon = 0
				usr.kbon2 = 0
				del(B)
			else
				usr.bunshin = 0
				usr.kbon = 0
				usr.kbon2 = 0
				del(B)
mob/verb/StopOrFollowBunshins()
	set hidden = 1
//	set name = "Bunshins - Seguir/Parar"
	set desc = "Controla se seus Bunshins te seguem ou não."
	if(usr.FollowBunshins)
		usr.FollowBunshins = 0
		usr << "Seus Bunshins não te seguirão automaticamente."
	else
		usr.FollowBunshins = 1
		usr << "Seus Bunshins te seguirão automaticamente."

/*
mob/Move()//Move proc.. it's absolutely delectable
	if(src.Frozen)//they can't move if they're locked
		return
	else
		..()
	if(src.client)
		if(src.bunshin >= 1 && src.FollowBunshins)
			for(var/mob/npcs/KBunshin/K in world)
				if(K.original == src)
					if(K.Frozen||K.moving)
						return
					else
						walk_towards(K,src)
		else
			..()*/

mob/proc/KillBunshin()
	for(var/mob/npcs/B in world)
		if(B.original == src)
			if(B.Frozen)
				src.bunshin = 0
				flick("smoke2",B)
				del(B)
			else
				src.bunshin = 0
				flick("smoke2",B)
				del(B)
	for(var/mob/enemy/LimboK/B in world)
		if(B.original == src)
			if(B.Frozen)
				src.bunshin = 0
				flick("smoke2",B)
				del(B)
			else
				src.bunshin = 0
				flick("smoke2",B)
				del(B)
	for(var/mob/enemy/B in world)
		if(B.original == src)
			if(B.Frozen)
				src.bunshin = 0
				flick("smoke2",B)
				del(B)
			else
				src.bunshin = 0
				flick("smoke2",B)
				del(B)
	for(var/mob/enemy/SunaBun/B in world)
		if(B.original == src)
			if(B.Frozen)
				src.bunshin = 0
				flick("smoke2",B)
				del(B)
			else
				src.bunshin = 0
				flick("smoke2",B)
				del(B)

mob
	oodamaBunshin
		human = 1
		NPC = 1
		proc
			Die()
				flick("smoke2",src)
				del(src)

mob
	puppet
		var
			puppetowner = ""
			tmp/canhit = 1
mob
	Kuroari
		var
			puppetowner = ""
			tmp/canhit = 1
		proc
			Die()
				flick("smoke2",src)
				del(src)

mob
	Karasu
		var
			puppetowner = ""
			tmp/canhit = 1
		proc
			Die()
				flick("smoke2",src)
				del(src)

mob
	Sanshouo
		var
			puppetowner = ""
			tmp/canhit = 1
		proc/Die()
			flick("smoke2",src)
			del(src)
		Bump(atom/M)
			if(istype(M,/mob/)) // If they run into the player
				if(M == bowner||M == src.original||M.name==src.name)
					return
				else
					if(src.cast)
						return
					var/mob/P = M
					var/Damage = src.tai - P.Resistencia/2
					if(Damage<=0)Damage=0
					src.cast=1
					if(P.Kaiten)
						del(src)
					if(P.drunk&&P.NonClan)
						view()<<"[M] desvia do ataque de [src]"
						sleep(13)
						src.cast=0
						return
					P.health -= Damage
					F_damage(P, Damage, "#ff0000")
					view() << "A marionete Sanshouo de [original] atacou [M] tirando um dano de [Damage]!"
					if(P.health<=0)
						P.Death(original)
					sleep(10)
					src.cast=0

mob
	puppet
		icon = 'puppet.dmi'
		density = 1
		verb

mob
	Karasu
		icon = 'Karasu.dmi'
		icon_state = "Karasu"
		density = 1
		verb

mob
	Kuroari
		icon = 'Kuroari.dmi'
		icon_state = "Kuroari"
		human = 1
		density = 1
		verb

mob
	Sanshouo
		icon = 'Sanshouo.dmi'
		icon_state = "Sanshouo"
		density = 1
		verb
			//PickUp()
			//	set src in oview(1)
			//	if(puppetowner == usr)
			//		src.loc = usr
			//		usr<<"You picked up [src]"
			//		usr<<"<font size =3><b><u>DO NOT LOG OUT WITH A PUPPET IN YOUR Inventório OR YOU WILL LOSE EVERYTHING IN YOUR Inventório."
			//		usr.puppet=1
			//		usr.verbs -= new /mob/puppet/verb/PuppetNorth()
			//		usr.verbs -= new /mob/puppet/verb/PuppetSouth()
			//		usr.verbs -= new /mob/puppet/verb/PuppetEast()
			//		usr.verbs -= new /mob/puppet/verb/PuppetWest()
			//		usr.verbs-= new /mob/puppet/verb/Puppetattack()
//
//				else
//					usr<<"Not your puppet."//

var/list/profane = list("<",/*"punheta","buceta","caralho","punheteiro","bucetinha"*/) //make the list of profane words
var/list/bannedwords = list("<","byond.","byond.games","/hub") // if you want to ban miscellaneous words
var/list/tags = list("<","<font","<b","<u","<s","<i") // the list to ban html tags!
var/list/byonds = list("<","byond://","http://www.byond.com/games/")



//////////////////////
//Do not touch the////
//Following code!/////
//////////////////////
client/var/
	const
		DENYMSG = "You were denied permission to log in because another person with the same ip address is logged in!"
		BOOTMSG = "You were booted for multi play!"
var/Banned_Ip_list[0]
var/log = 0
mob/proc/filter2(T as text, var/list/L)
	for(var/O in L)
		if(findtext(T,O))
			return TRUE
mob/proc/spamcheck()
	if(src.spamcheck >= 5)
		return TRUE
	else
		src.spamcheck += 1
		spawn(10)
		src.spamcheck -= 1

proc/ipban(address)
	if(!Banned_Ip_list.Find(address) && address &&address!="localhost" &&address!="127.0.0.1")
		Banned_Ip_list.Add(address)

proc/scan(mob/M in world)
	var/mob/player
	for(player in world)
		if(player.client && player != M)
			return TRUE
			break
		else
			return
mob/proc/boot()
	del(src)
mob
	proc

		profane()
			src << "Lave sua boca com sabão!"
		bannedwords()
			src << "O Adim baniu essas palavras do chat!"
		html()
			src << "Por favor, não use HTML no seu nome!"
		byonds()
			src << "O Adim não permite que se poste hubs no chat. Vá divulgar sua RIP em outro lugar!"



mob/akatsuki/verb/InviteA(mob/M in world)
	set category="Akatsuki"
	set name="Chamar para a Organização"
	if(M.rank=="Nukenin"&&M.Village=="Nenhum"&&src.recruits<=9)
		M.Village="Akatsuki"
		M.Village2="Akat-Taka"
		var/obj/AKAH/H = new()
		var/obj/AKAS/S = new()
		var/obj/AKAS2/F = new()
		var/obj/Headband_Akat/B = new()
		H.loc=M
		S.loc=M
		F.loc=M
		B.loc=M
		M.akatsukimember=1
		M.mouse_over_pointer = src.mouse_over_pointer
		M.PerderSubclan()
		M.faceicon=null
		M.esquadrao=""
		M.squads=1
		src.recruits+=1
		M.esquadrao="Akatsuki Member"
		M.verbs += /mob/akat/verb/ChangeFace
		M.verbs += /mob/almaAK/verb/Reproduzir_Alma
		switch(input(M,"Qual Seu Anel (5 é para o Lider)?", text) in list("1","2","3","4","6","7","8","9","10"))
			if("1")
				M.ak1=1
			if("2")
				M.ak2=1
			if("3")
				M.ak3=1
			if("4")
				M.ak4=1
			if("6")
				M.ak6=1
			if("7")
				M.ak7=1
			if("8")
				M.ak8=1
			if("9")
				M.ak9=1
			if("10")
				M.ak10=1
	else
		usr<<"Não pode ser feito, ele já está em uma vila."
mob/akatsuki/verb/BootA(mob/M in world)
	set category="Akatsuki"
	set name="Retirar da Organização"
	if(M.Village=="Akatsuki"&&M.akatsukimember)
		M.Village="Nenhum"
		M.Village2=""
		for(var/obj/AKAH/H in M.contents)
			del(H)
		for(var/obj/AKAS/S in M.contents)
			del(S)
		for(var/obj/AKAS2/F in M.contents)
			del(F)
		for(var/obj/Headband/B in M.contents)
			del(B)
		src.recruits-=1
		M.akatsukimember=0
		M.verbs -= /mob/akat/verb/ChangeFace
		M.mouse_over_pointer=null
		M.squads=0
		M.esquadrao=""
		M.ak1=0
		M.ak2=0
		M.ak3=0
		M.ak4=0
		M.ak6=0
		M.ak7=0
		M.ak8=0
		M.ak9=0
		M.ak10=0
		M.verbs -= /mob/almaAK/verb/Reproduzir_Alma
		M.faceicon=null
		M.PerderSubclan()



	else
		usr<<"Não pode ser feito. Ele é o líder ou nem mesmo está na Akatsuki"
mob/swordsmen/verb/Invite7(mob/M in world)
	set category="SSS"
	set name="Chamar para a Organização"
	if(M.rank=="Estudante"||M.rank=="Genin"||M.rank=="Chuunin"||M.rank=="Kage")
		usr<<"Ele não pode ser chamado para a SSS."
		return
	if(M.swordsmenmember)
		usr<<"Ele já pertence a SSS"
		return
	if(M.Village=="Kiri"&&src.recruits<=7)
		M.rank="Membro"
		M.Village="7Swordsmen"
		M.Village2="Kiri"
		var/obj/SSSsuit2/S = new()
		var/obj/SSSmask/R = new()
		var/obj/SSSsuit1/B = new()
		var/obj/SSSropa/G = new()
		S.loc=M
		G.loc=M
		R.loc=M
		B.loc=M
		M.swordsmenmember=1
		M.faceicon=null
		M.mouse_over_pointer = src.mouse_over_pointer
		M.verbs += /mob/sss/verb/ChangeFace
		M.esquadrao=""
		M.squads=1
		src.recruits+=1
		M.esquadrao="SSS Member"
		M.PerderSubclan()
	else
		usr<<"Não pode ser feito, ele não é de Kiri."
mob/swordsmen/verb/Boot7(mob/M in world)
	set category="SSS"
	set name="Retirar da Organização"
	if(M.Village=="7Swordsmen"&&M.swordsmenmember)
		M.Village="Kiri"
		M.rank = "Jounin"
		M.Village2=""
		for(var/obj/SSSsuit2/S in M.contents)
			del(S)
		for(var/obj/SSSsuit1/B in M.contents)
			del(B)
		for(var/obj/SSSmask/R in M.contents)
			del(R)
		if(locate(/obj/SSSs1) in M.contents)
			for(var/obj/SSSs1/X in M.contents)del(X)
		if(locate(/obj/SSSs2) in M.contents)
			for(var/obj/SSSs2/X2 in M.contents)del(X2)
		if(locate(/obj/SSSs3) in M.contents)
			for(var/obj/SSSs3/X3 in M.contents)del(X3)
		if(locate(/obj/SSSs4) in M.contents)
			for(var/obj/SSSs4/X4 in M.contents)del(X4)
		if(locate(/obj/SSSs5) in M.contents)
			for(var/obj/SSSs5/X5 in M.contents)del(X5)
		if(locate(/obj/SSSs6) in M.contents)
			for(var/obj/SSSs6/X6 in M.contents)del(X6)
		if(locate(/obj/SSSs7) in M.contents)
			for(var/obj/SSSs7/X7 in M.contents)del(X7)
		if(locate(/obj/Kisamesword) in M.contents)
			for(var/obj/Kisamesword/X8 in M.contents)del(X8)
		if(locate(/obj/SamehadaWater) in M.contents)
			for(var/obj/SamehadaWater/X9 in M.contents)del(X9)
		M.verbs -= /mob/akat/verb/ChangeFace
		usr.recruits-=1
		M.swordsmenmember=0
		M.pegouespadasss=0
		M.faceicon=null
		M.verbs -= /mob/sss/verb/ChangeFace
		M.mouse_over_pointer=null
		M.squads=0
		M.esquadrao=""
		M.PerderSubclan()
	else
		usr<<"Não pode ser feito. Ele é o líder ou nem mesmo está na SSS"
mob/sound/verb/InviteS(mob/M in world)
	set category="Sound Organization"
	set name="Chamar para a Organização"
	if(M.seals>=100&&M.Village=="Oto"&&src.recruits<=4)
		M.Village="Sound Organization"
		M.Village2="Oto"
		var/obj/Sor/S = new()
		S.loc=M
		M.soundmember=1
		M.squads=1
		M.bit=1
		M.rank="Membro"
		M.mouse_over_pointer = src.mouse_over_pointer
		M.verbs += new/mob/Sl/verb/Power_up()
		M.verbs += /mob/so/verb/ChangeFace
		M.esquadrao=""
		M.faceicon=null
		src.recruits+=1
		M.esquadrao="SO Membro"
		M.PerderSubclan()
	else
		usr<<"Não pode ser feito. Ou ele é mais fraco que um Jounnin ou já está na SO"
mob/sound/verb/BootS(mob/M in world)
	set category="Sound Organization"
	set name="Retirar da Organização"
	if(M.Village=="Sound Organization"&&M.soundmember)
		M.Village="Oto"
		M.rank = "Jounin"
		M.Village2=""
		for(var/obj/Sor/S in M.contents)
			del(S)
		M.soundmember=0
		M.bit=0
		M.mouse_over_pointer=null
		M.verbs -= new/mob/Sl/verb/Power_up()
		M.verbs -= /mob/so/verb/ChangeFace
		M.squads=0
		M.faceicon=null
		src.recruits-=1
		M.esquadrao=""
		M.PerderSubclan()
	else
		usr<<"Não pode ser feito. Ele é o líder ou nem mesmo está na SO"

mob/Taka/verb/InviteH(mob/M in world)
	set category="Taka"
	set name="Chamar para a Organização"
	if(M.rank=="Nukenin"&&src.recruits<=3)
		M.Village="Taka"
		M.Village2="Akat-Taka"
		var/obj/SOSuit/S = new()
		var/obj/AKAS2/F = new()
		var/obj/Headband_Akat/B = new()
		var/obj/TakaCape/C = new()
		var/obj/EspadaTaka/D = new()
		C.loc=M
		B.loc=M
		D.loc=M
		F.loc=M
		S.loc=M
		M.Takamember=1
		M.mouse_over_pointer = src.mouse_over_pointer
		M.squads=1
		M.faceicon=null
		src.recruits+=1
		M.esquadrao=""
		M.verbs += /mob/taka/verb/ChangeFace
		M.esquadrao="Taka Member"
		M.PerderSubclan()
	else
		usr<<"É preciso ser Nukenin para entrar na Taka."

mob/Taka/verb/BootH(mob/M in world)
	set category="Taka"
	set name="Retirar da Organização"
	if(M.Village=="Taka"&&M.Takamember)
		M.Village="Nenhum"
		M.Village2=""
		M.rank = "Nukenin"
		for(var/obj/SOSuit/S in M.contents)
			del(S)
		for(var/obj/AKAS2/F in M.contents)
			del(F)
		for(var/obj/Headband_Akat/B in M.contents)
			del(B)
		for(var/obj/TakaCape/C in M.contents)
			del(C)
		for(var/obj/EspadaTaka/D in M.contents)
			del(D)
		M.Takamember=0
		M.mouse_over_pointer = null
		M.verbs -= /mob/taka/verb/ChangeFace
		M.verbs -= /mob/akat/verb/ChangeFace
		M.faceicon=null
		M.squads=0
		src.recruits-=1
		M.esquadrao=""
		M.PerderSubclan()
	else
		usr<<"Não pode ser feito. Ele é o líder ou nem mesmo está na Taka"


world/proc/AutoRepop()
	set background=1
	if(!emguerra)world.Repop()
	spawn(1800)
		world.AutoRepop()


world/proc/DeletarKB()
	set background=1
	for(var/mob/npcs/Bunshin/B in world)
		del(B)
	for(var/mob/npcs/KBunshin/B2 in world)
		del(B2)
	spawn(6000)
		world.DeletarKB()

mob/var/tmp/ENGL = 1


mob/proc/Choice()
	switch(alert("O que você quer fazer?","Char","Criar","Carregar","Deletar"))
		if("Criar")
			src.create()
		if("Carregar")
			if(fexists("players/[src.key].sav"))
				src.Load()
				src.LoadParte1()
				usr.client.view=8
				new/obj/Simbhp/health_01(usr.client)
				new/obj/Simbch/chakrar_01(usr.client)
				new/obj/Simbst/stamina_01(usr.client)
				usr.colocar_hud()
				//spawn()src.Logando()
				spawn()src.TempoVIP()
			else
				src<<"Você não possui um char nesse servidor com essa conta!"
				src.Choice()
		if("Deletar")
			src.DeleteChar()
			src.Choice()

mob
	proc
		create()
			if(fexists("players/[src.key].sav"))
				src<<"Essa conta já possui um char nesse servidor"
				src.Choice()
				return
			else
				src.loc = locate(452,298,4)
				var/list/L
				L = list("font size","big","small")
				var/list/T
				T = list("¬","¹","²","³","£","¢","°","ª","º")
				var/nome=null
				var/config = "065-090&097-122&095&032"
				while(!asciifilter(nome,config)||nome == null)nome = input("Escolha um Nome","Nome",src.key) as text
				if(length(nome) < 2)
					alert("Seu nome precisa ter mais de 2 caracteres!")
					src.Choice()
					del(src)
				if(length(nome) > 20)
					alert("Seu nome não pode conter mais que 20 caracteres!")
					src.Choice()
					del(src)
				for(var/X in L)
					if(findtext(nome,X))
						alert("Você não pode alterar o tamanho do nome!")
						src.Choice()
						return
				for(var/X in T)
					if(findtext(nome,X))
						alert("Você não pode usar esses caracteres!")
						src.Choice()
						return
				src.name="[html_encode(nome)]"
				src.loc = locate(83,13,4)



//==== SELAMENTOS ===============================================================================

//==== SELAMENTO DE ELEMENTOS ==================================================================
obj/fogo
	fogopraselar
		icon='iconsj.dmi'
		icon_state="chama"
		name = "Chama de fogo"
		verb
			Olhar()
				usr<<"Essa é uma labareda de fogo originada de um jutsu katon, talvez vc possa fazer algo com ela"
				return
obj/agua
	aguapraselar
		icon='rain.dmi'
		icon_state="puddle"
		name = "Lamina d'agua"
		verb
			Olhar()
				usr<<"Essa é uma lamina d'agua originada de um jutsu suiton, talvez vc possa fazer algo com ela"
				return
obj/terra
	terrapraselar
		icon='iconmissao.dmi'
		icon_state="pedra"
		name = "Pedra misteriosa"
		verb
			Olhar()
				usr<<"Essa é uma pedra originada de um jutsu doton, talvez vc possa fazer algo com ela"
				return
obj/trovao
	trovaopraselar
		icon='iconsj.dmi'
		icon_state="nagashi"
		name = "Fagulha eletrica"
		verb
			Olhar()
				usr<<"Essa é uma fagulha estatica originada de um jutsu raiton, talvez vc possa fazer algo com ela"
				return
obj/vento
	ventopraselar
		icon='fuutone.dmi'
		icon_state=""
		name = "Pequeno Redemoinho"
		verb
			Olhar()
				usr<<"Essa é um redemoinho originado de um jutsu fuuton, talvez vc possa fazer algo com ela"
				return


obj
	pergaminhos
		FuukaPerga
			icon='scroll.dmi'
			icon_state="semnada"
			name = "Pergaminho Vazio"
		Semselo
			icon='scroll.dmi'
			icon_state="semnada"
			name = "Pergaminho Vazio"
			verb
				Selar()
					for(var/obj/fogo/fogopraselar/A in oview(1,usr))
						usr << "<B><font color = blue>Você esta selando um elemento no pergaminho"
						var/obj/pergaminhos/Katonselado/L = new/obj/pergaminhos/Katonselado
						L.loc = usr
						del(src)
						del(A)
						return
					for(var/obj/agua/aguapraselar/A in oview(1,usr))
						usr << "<B><font color = blue>Você esta selando um elemento no pergaminho"
						var/obj/pergaminhos/Suitonselado/L = new/obj/pergaminhos/Suitonselado
						L.loc = usr
						del(src)
						del(A)
						return
					for(var/obj/terra/terrapraselar/A in oview(1,usr))
						usr << "<B><font color = blue>Você esta selando um elemento no pergaminho"
						var/obj/pergaminhos/Dotonselado/L = new/obj/pergaminhos/Dotonselado
						L.loc = usr
						del(src)
						del(A)
						return
					for(var/obj/trovao/trovaopraselar/A in oview(1,usr))
						usr << "<B><font color = blue>Você esta selando um elemento no pergaminho"
						var/obj/pergaminhos/Raitonselado/L = new/obj/pergaminhos/Raitonselado
						L.loc = usr
						del(src)
						del(A)
						return
					for(var/obj/vento/ventopraselar/A in oview(1,usr))
						usr << "<B><font color = blue>Você esta selando um elemento no pergaminho"
						var/obj/pergaminhos/Fuutonselado/L = new/obj/pergaminhos/Fuutonselado
						L.loc = usr
						del(src)
						del(A)
						return
					for(var/mob/npcs/SenninBunshin/A in oview(1,usr))
						if(usr.Clan == "Uzumaki")
							usr << "<B><font color = blue>Você esta selando um bunshin com chakra natural no pergaminho"
							var/obj/pergaminhos/Bunshinselado/L = new/obj/pergaminhos/Bunshinselado
							L.loc = usr
							del(src)
							del(A)
							return
				Pegar()
					set src in oview(1)
					src.loc = usr
					usr<<"Você pegou o(a) [src]"
				Destruir()
				 del(src)
		Katonselado
			icon='scroll.dmi'
			icon_state="katon"
			name = "Katon"
			verb
				Usar()
					if(usr.cast)
						return
					usr << "<B><font color = blue>Vc usou o Katon selado no pergaminho"
					usr.Katonselo()
					del(src)
				Pegar()
					set src in oview(1)
					src.loc = usr
					usr<<"Você pegou o(a) [src]"
				Destruir()
				 del(src)
		Bunshinselado
			icon='scroll.dmi'
			icon_state="sennin"
			name = "Sennin Bunshin"
			verb
				Usar()
					if(usr.cast)
						return
					if(usr.sennin==1)
						usr<<"Você jah ativou!"
						return
					usr << "<B><font color = blue>Vc invocou um Bunshin Senjutsu"
					usr.Senninproc()
					del(src)
				Pegar()
					set src in oview(1)
					src.loc = usr
					usr<<"Você pegou o(a) [src]"
				Destruir()
				 del(src)
		Suitonselado
			icon='scroll.dmi'
			icon_state="suiton"
			name = "Suiton"
			verb
				Usar()
					if(usr.cast)
						return
					usr << "<B><font color = blue>Vc usou o Suiton selado no pergaminho"
					usr.Suitonselo()
					del(src)
				Pegar()
					set src in oview(1)
					src.loc = usr
					usr<<"Você pegou o(a) [src]"
				Destruir()
				 del(src)
		Fuutonselado
			icon='scroll.dmi'
			icon_state="fuuton"
			name = "Fuuton"
			verb
				Usar()
					if(usr.cast)
						return
					usr << "<B><font color = blue>Vc usou o Fuuton selado no pergaminho"
					usr.Fuutonselo()
					del(src)
				Pegar()
					set src in oview(1)
					src.loc = usr
					usr<<"Você pegou o(a) [src]"
				Destruir()
				 del(src)
		Dotonselado
			icon='scroll.dmi'
			icon_state="doton"
			name = "Doton"
			verb
				Usar()
					if(usr.cast)
						return
					usr << "<B><font color = blue>Vc usou o Doton selado no pergaminho"
					usr.Dotonselo()
					del(src)
				Pegar()
					set src in oview(1)
					src.loc = usr
					usr<<"Você pegou o(a) [src]"
				Destruir()
				 del(src)
		Raitonselado
			icon='scroll.dmi'
			icon_state="raiton"
			name = "Raiton"
			verb
				Usar()
					if(usr.cast)
						return
					usr << "<B><font color = blue>Vc usou o Raiton selado no pergaminho"
					usr.Raitonselo()
					del(src)
				Pegar()
					set src in oview(1)
					src.loc = usr
					usr<<"Você pegou o(a) [src]"
				Destruir()
				 del(src)


mob
	proc
		Katonselo() // Verb used for cast the beam
			if(src.cast||src.Kaiten == 1) // If the mob's cast var is one...
				return
			if(src.PK==0)
				src<<"Zona NON-PK!!!"
				return
			if(src.Frozen)
				src<<"Você está paralisado"
				return
			if(src.captured)
				src<<"Você foi capturado"
				return
			else // If the cast var isn't 1...
				src.cast=1
				var/obj/Bolafogo/K = new /obj/Bolafogo
				K.loc = usr.loc
				K.nin=usr.fogoN
				K.Move_Delay=1
				usr.Chakragain()
				K.dir = usr.dir
				K.name="[usr]"
				K.Gowner=usr
				walk(K,usr.dir)
				if (target == null)
					del(K)
				sleep(55)
				del(K)
				src.cast = 0


obj
	Bolafogo
		icon = 'Jutsus.dmi'
		icon_state = "fireball"
		density = 1
		Move()
			..()
			var/obj/caudabola/T = new /obj/caudabola
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
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.sd)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin/2) - M.Resistencia
				if(damage<=0)damage=0
				if(damage >= 1)
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					view(M) << "[M] foi acertado pelo Jutsu Katon recebendo [damage] de dano!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)


/*mob/proc/resetoverlay()if(src.key in overlays2)src.verbs += typesof(/mob/resetoverlay/verb)*/

obj
	caudabola
		icon='Jutsus.dmi'
		icon_state="fireline"
		New()
			..()
			spawn(20)
			del(src)



mob
	proc
		Suitonselo() // Verb used for cast the beam
			if(src.cast||src.Kaiten == 1) // If the mob's cast var is one...
				return
			if(src.PK==0)
				src<<"Zona NON-PK!!!"
				return
			if(src.Frozen)
				src<<"Você está paralisado"
				return
			if(src.captured)
				src<<"Você foi capturado"
				return
			else // If the cast var isn't 1...
				src.cast=1
				var/obj/Bolaagua/K = new /obj/Bolaagua
				K.loc = usr.loc
				K.nin=usr.aguaN
				K.Move_Delay=1
				usr.Chakragain()
				K.dir = usr.dir
				K.name="[usr]"
				K.Gowner=usr
				walk(K,usr.dir)
				if (target == null)
					del(K)
				sleep(55)
				del(K)
				src.cast = 0


obj
	Bolaagua
		icon = 'sasoriagua.dmi'
		icon_state = "1"
		density = 1
		Move()
			..()
			var/obj/caudabola/T = new /obj/caudabola
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
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.dd)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin/2) - M.Resistencia
				if(damage<=0)damage=0
				if(damage >= 1)
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					view(M) << "[M] foi acertado pelo Jutsu suiton recebendo [damage] de dano!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)


obj
	caudabolaagua
		icon='sasoriagua.dmi'
		icon_state="2"
		New()
			..()
			spawn(20)
			del(src)


mob
	proc
		Fuutonselo() // Verb used for cast the beam
			if(src.cast||src.Kaiten == 1) // If the mob's cast var is one...
				return
			if(src.PK==0)
				src<<"Zona NON-PK!!!"
				return
			if(src.Frozen)
				src<<"Você está paralisado"
				return
			if(src.captured)
				src<<"Você foi capturado"
				return
			else // If the cast var isn't 1...
				src.cast=1
				var/obj/Bolavento/K = new /obj/Bolavento
				K.loc = usr.loc
				K.nin=usr.ventoN
				K.Move_Delay=1
				usr.Chakragain()
				K.dir = usr.dir
				K.name="[usr]"
				K.Gowner=usr
				walk(K,usr.dir)
				if (target == null)
					del(K)
				sleep(55)
				del(K)
				src.cast = 0


obj
	Bolavento
		icon = 'fuuton.dmi'
		icon_state = ""
		density = 1
		Move()
			..()
			var/obj/caudabolavento/T = new /obj/caudabolavento
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
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.kd)
					del(src)
					return
				if(M.PK==0)
					return

				var/damage = round(src.nin/2) - M.Resistencia
				if(damage<=0)damage=0
				if(damage >= 1)
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					view(M) << "[M] foi acertado pelo Jutsu Fuuton recebendo [damage] de dano!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)


obj
	caudabolavento
		icon='fuutone.dmi'
		icon_state=""
		New()
			..()
			spawn(20)
			del(src)





mob
	proc
		Raitonselo() // Verb used for cast the beam
			if(src.cast||src.Kaiten == 1) // If the mob's cast var is one...
				return
			if(src.PK==0)
				src<<"Zona NON-PK!!!"
				return
			if(src.Frozen)
				src<<"Você está paralisado"
				return
			if(src.captured)
				src<<"Você foi capturado"
				return
			else // If the cast var isn't 1...
				src.cast=1
				var/obj/Bolatrovao/K = new /obj/Bolatrovao
				K.loc = usr.loc
				K.nin=usr.trovaoN
				K.Move_Delay=1
				usr.Chakragain()
				K.dir = usr.dir
				K.name="[usr]"
				K.Gowner=usr
				walk(K,usr.dir)
				if (target == null)
					del(K)
				sleep(55)
				del(K)
				src.cast = 0


obj
	Bolatrovao
		icon = 'rai.dmi'
		icon_state = ""
		density = 1
		Move()
			..()
			var/obj/caudabolatrovao/T = new /obj/caudabolatrovao
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
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.fd)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin/2) - M.Resistencia
				if(damage<=0)damage=0
				if(damage >= 1)
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					view(M) << "[M] foi acertado pelo Jutsu Raiton recebendo [damage] de dano!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)


obj
	caudabolatrovao
		icon='LineThunder.dmi'
		icon_state=""
		New()
			..()
			spawn(20)
			del(src)


mob
	proc
		Dotonselo() // Verb used for cast the beam
			if(src.cast||src.Kaiten == 1) // If the mob's cast var is one...
				return
			if(src.PK==0)
				src<<"Zona NON-PK!!!"
				return
			if(src.Frozen)
				src<<"Você está paralisado"
				return
			if(src.captured)
				src<<"Você foi capturado"
				return
			else // If the cast var isn't 1...
				src.cast=1
				var/obj/Bolaterra/K = new /obj/Bolaterra
				K.loc = usr.loc
				K.nin=usr.terraN
				K.Move_Delay=1
				usr.Chakragain()
				K.dir = usr.dir
				K.name="[usr]"
				K.Gowner=usr
				walk(K,usr.dir)
				if (target == null)
					del(K)
				sleep(55)
				del(K)
				src.cast = 0


obj
	Bolaterra
		icon = 'dotons.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.rd)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin/2) - M.Resistencia
				if(damage<=0)damage=0
				if(damage >= 1)
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					view(M) << "[M] foi acertado pelo Jutsu Doton recebendo [damage] de dano!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)



//==== Sistema Kuchiyose =========================================================================================================

mob/var
	saposumon=0
	lesmasumon=0
	abelhasumon=0
	cobrasumon=0
	cachorrosumon=0
mob/jutsu
	verb
		Kuchyose() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Kuchiyose no jutsu"
			usr.Handseals()
			if(usr.chakra <= 25000)
				usr<<"Você não tem chakra suficiente!!(25k)"
				return
			if(usr.froze)
				usr<<"Você está paralizado!"
				return
			if(usr.cast)
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
			if(!usr.handseals)
				return
			if(usr.kuchiyoseusing)
				return
			if(usr.lesmasumon)
				usr.cast=1
				usr.slugup()
				usr.Summoneffect()
				view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Kuchiyose No Jutsu!"
				usr.randomslug()
				sleep(50)
				usr.cast=0
				return
			if(usr.saposumon)
				usr.cast=1
				usr.frogup()
				usr.Summoneffect()
				view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Kuchiyose No Jutsu!"
				usr.randomfrog()
				sleep(50)
				usr.cast=0
				return
			if(usr.cobrasumon)
				usr.cast =1
				usr.Summoneffect()
				view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Kuchiyose No Jutsu!"
				usr.snakeup()
				usr.randomsnake()
				sleep(50)
				usr.cast=0
				return
			if(usr.abelhasumon)
				usr.cast=1
				usr.beeup()
				usr.Summoneffect()
				view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Kuchiyose No Jutsu!"
				usr.randombee()
				sleep(50)
				usr.cast=0
				return
			if(usr.cachorrosumon)
				usr.cast=1
				usr.Dogup()
				usr.Summoneffect()
				view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Kuchiyose No Jutsu!"
				usr.randomdog()
				sleep(50)
				usr.cast=0
			else
				usr<<"Vc n possui nenhum contrato para sumonar alguem"




obj
	caudasapoagua
		icon='water.dmi'
		New()
			..()
			spawn(20)
			del(src)
obj
	aguasapo
		icon = 'water.dmi'//dont have a base icon so cant make weights icon!lol
		density = 1
		Move()
			..()
			var/obj/caudasapoagua/T = new /obj/caudasapoagua
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
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.PK==0)
					return
				var/damage = src.nin - M.Resistencia/2
				if(damage<=0)damage=0
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				var/mob/B=src.Gowner
				view(M) << "[M] foi acertado pelo Jutsu colaborado de [B] com seu Gamabunta, tirando [damage] de dano!!"
				M.Death(B)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)





mob/jutsu
	verb
		KuchyosePain() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Kuchiyose No Jutsu"
			usr.Handseals()
			if(usr.chakra <= 25000)
				usr<<"Você não tem chakra suficiente!! (25k)"
				return
			if(usr.froze)
				usr<<"Você está paralizado!"
				return
			if(usr.cast)
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
			if(!usr.handseals)
				return
			if(usr.kuchiyoseusing)
				return
			switch (input("Qual ser vc quer sumonar???","Kuchiyose") in list ("Sapo","Cobra","Lesma","Cachorro","Abelha"))
				if("Lesma")
					if(usr.lesmasumon)
						usr.cast=1
						usr.slugup()
						usr.Summoneffect()
						view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Kuchiyose No Jutsu!"
						usr.randomslug()
						sleep(50)
						usr.cast=0
						return
					else
						usr<<"Vc n possui contrato com esse ser"
						return
				if("Sapo")
					if(usr.saposumon)
						usr.cast=1
						usr.frogup()
						usr.Summoneffect()
						view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Kuchiyose No Jutsu!"
						usr.randomfrog()
						sleep(50)
						usr.cast=0
						return
					else
						usr<<"Vc n possui contrato com esse ser"
						return
				if("Cobra")
					if(usr.cobrasumon)
						usr.cast =1
						usr.Summoneffect()
						view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Kuchiyose No Jutsu!"
						usr.snakeup()
						usr.randomsnake()
						sleep(50)
						usr.cast=0
						return
					else
						usr<<"Vc n possui contrato com esse ser"
						return
				if("Abelha")
					if(usr.abelhasumon)
						usr.cast=1
						usr.beeup()
						usr.Summoneffect()
						view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Kuchiyose No Jutsu!"
						usr.randombee()
						sleep(50)
						usr.cast=0
						return
					else
						usr<<"Vc n possui contrato com esse ser"
						return
				if("Cachorro")
					if(usr.cachorrosumon)
						usr.cast=1
						usr.Dogup()
						usr.Summoneffect()
						view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Kuchiyose No Jutsu!"
						usr.randomdog()
						sleep(50)
						usr.cast=0
						return
					else
						usr<<"Vc n possui contrato com esse ser"
						return







//===== Torneio Auto =======================================================


var
	list
		PessoaEvento = list()
	evento_limite=100
	evento_contagem=0
	evento_on=1
	evento_registro=0
	evento_tipo=""
	oponente1=0
	oponente2=0
	oponente3=0
	premio=0
mob
	var
		tmp
			ceye
		no_evento=0

	Evento
		verb
			Evento_Registro()
				set name = "Registrar / Sair"
				set category = "Evento"
				if(evento_contagem>=evento_limite)
					usr<<"Não há mais entradas!"
					return
				else
					if(!usr.no_evento)
						switch(alert("Você quer entrar no Evento?","Evento Registros","Sim","Não"))
							if("Não")
								return
							else
								if(usr.inizanami)
									usr<<"Você precisa sair da dimensão primeiro!"
									return
								if(!evento_registro)
									usr<<"Registros não estão abertos agora."
									return
								if(usr.no_evento)
									return
								if(evento_contagem>=evento_limite)
									usr<<"Não há mais entradas."
									return
								evento_contagem+=1
								usr.no_evento=1
								PessoaEvento.Add(usr)
								usr.loc=locate(140,539,4) // DEFINA AQUI A LOC
								usr.verbs -= /mob/cliff/verb/TreinarHP
								world << "<font color=red>Evento: \white [usr] se \green <u>registrou</u> \white para o Evento!"
								return
					else
						switch(alert("Você quer sair do Evento?","Evento Registros","Sim","Não"))
							if("Não")
								return
							else
								if(!evento_registro)
									usr<<"Registros não estão abertos agora."
									return
								if(!usr.no_evento)
									return
								evento_contagem-=1
								usr.no_evento=0
								PessoaEvento.Remove(usr)
								usr.loc=locate(456,174,3) // DEFINA AQUI A LOC
								world << "<font color=red>Evento: \white [usr] \red <u>Saiu</u> \white do Evento!"
								return

mob
	proc
		Evento_Checar()
			if(evento_on&&evento_registro)
				src.verbs += new/mob/Evento/verb/Evento_Registro
				return
			else
				src.verbs -= new/mob/Evento/verb/Evento_Registro
				return
proc
	EventoSair(mob/N)
		if(!N.no_evento)return
		for(var/mob/M in world)
			if(M==N)continue
			if(M==oponente1||M==oponente2)
				M.loc=locate(456,174,3) // DEFINA AQUI A LOC
		oponente1=0
		oponente2=0
		N.no_evento=0
		return

#define DEBUG
/*/var/const/
	scoreboard={""}
	scoreboardtitle={"<STYLE>BODY {background: #000000;  color: orange}</STYLE><head><title>Naruto Revolução Brasil - Top Levels</title></head></body>"}
/Rank_Entry/
	var{Name;Key;Level;Date}
	New(mob/person)
		if(!person)return
		Name=(person.name)
		Key=(person.key)
		Level=(person.level)
		Date=(time2text(world.realtime))
/proc/
	RankingDisplay(var/mob/person)
		var/list/levels=new()
		var/savefile/F=new("levels.sav")
		F[("stuff")]>>(levels)
		var/html="<center><TABLE BORDER=1><TR><TH><html><BODY><center><h1><U><font color=orange>Ranking<font color=green></u></h1><TABLE CELLSPACING=10>"
		if(!levels)html+="<TR><TD>Nenhum rank alto.</TD></TR>\n"
		else
			html+="<tr><th><B>#</th><th>Nome <I>(key)</I></th><th>Level</th><th>Data</th></tr>\n<br>"
			for(var/number in 1 to levels.len)
				var{character=(levels[(number)]);Rank_Entry/player=(levels[(character)])}
				html+="<tr><td><u>[(number)]\th</td><td></u>[(player.Name)] <I>([(player.Key)])</I></td><td>[num2text(round(player.Level),10000)]</td><td>[(player.Date)]</td></tr>\n"
		person<<browse("[scoreboardtitle][html]","window=scoreboard;size=524x344")
	Ranking(var/mob/player)
		if(player.GM)return
		if(!player||!player.client)return
		var/savefile/F=new("levels.sav")
		var/list/level=new()
		F[("stuff")]>>(level)
		if(!level)level=new()
		var{character="[(player.client.ckey)]/[(player.name)]"
			score=level.Find(character)
			Rank_Entry/newest=new(player)
			Rank_Entry/last}
		if(score)
			var/Rank_Entry/old=(level[(character)])
			if(old.Level>=player.level)return score
			while(score>1)
				last=level[(level[(score-1)])]
				if(last.Level>=player.level)break
				level[(score)]=(level[(score-1)])
				level[(--score)]=(character)
				level[(level[(score+1)])]=(last)
			level[(character)]=(newest)
			F[("stuff")]<<(level)
			return score
		score=(level.len)
		if(score>=100)
			last=(level[(level[(score)])])
			if(last.Level>=player.level)return 101
			level[(score)]=(character)
		else score=(level.len+1),level+=(character)
		while(score>1)
			last=(level[(level[(score-1)])])
			if(last.Level>=player.level)break
			level[(score)]=(level[(score-1)])
			level[(--score)]=(character)
			level[(level[(score+1)])]=(last)
		level[(character)]=(newest)
		F[("stuff")]<<(level)
		return score

mob/verb/Scoreboard()
	set name = "Ranking"
	Ranking(src)
	RankingDisplay(src)*/

mob/var
	_Cooldowns[]
mob/proc/_CD(Name,Cooldown)
	if(!_Cooldowns)_Cooldowns=new
	if(_Cooldowns[Name]&&_Cooldowns[Name]>world.timeofday)
		if(_Cooldowns[Name]>world.timeofday+(Cooldown*3)) _Cooldowns[Name]=world.timeofday+Cooldown
		usr<<"<b>Cooldown:</b> Você não pode utilizar o jutsu <b>[Name]</b>. (<b>[(_Cooldowns[Name]-world.timeofday)/10] Segundos Restantes</b>)"
		return 1



	_Cooldowns[Name]=world.timeofday+Cooldown
	return 0





mob
	verb
		Sincronia()
			set category = "Treinamento"
			set name = "Sincronizar"
			if(usr.cast)
				return
			if(usr.sincronia==0)
				usr<<"Vc esta em modo de sincronia. Enquanto estiver assim não poderá se mover"
				usr.sincronia=1
			else
				usr.sincronia=0
				usr<<"Vc saiu do modo sincronia"

var/Mensagem="<b><center><font size = 3><font color = white>Atualização 01/07/2017</font></center></b><hr>- Adicionado mensagem ao logar. Por favor, leiam! <br>- Agora quem é level menor que 200 upará 3x mais rápido que a rate normal. Isso inclui Nin, Tai, Gen, Armas, Hp e Perícias <br>- Nerfado dano do Amaterasu <br>- Diminuido tempo para fazer efeito do Tsuk <br>- Buffado dano do Tsuk <br>- Aumentando a dificuldade de acertar o Kamui <br>- Aumentado CD do Kamui <br>- Aumentado dano do Kamui <br>- Buffado dano do Hakke Hyakunijuhasho <br>- Buffado dano do Choudan Bakugeki <br>- Buffado dano do Shoshigan Shikumi e do Explodir <br>- Buffado dano do Zinsuketsu Fuusajin <br>- Diminuido duração do freeze de haku para 6 segundos <br>- Buffado dano do Sawarabi <br>- Buffado dano do Sotaiso <br>- Durante o 8 portao de Lee, o Regen de HP não funciona mais <br>- Atacar tendões e Nervos de Medic agora causa dano <br>- Senpou FRS volta a dar dano contínuo <br>- Adicionado CD no Senpou FRS <br>- Retirado Delay de Senbon no Jutsu de Byakugan Hinata <br>- Buffado dano do Furacão de Windmill <br>- Arrumado CD do Mokuton de Obito <br>- Corrigido Bug na morte <br>- Retirado Req de Stats para Missão A e S <br>- Missão B de matar Ninja Assassino passa a dar mais Ryous <br>- Missão B de matar ladrões agora dá menos Ryous <br>- Missão A passa a dar mais Ryous <br>- Aumentado HP e Dano do {Enemy}Dosu Kinuta <br>-{Enemy}Dosu Kinuta agora ataca normalmente <br>- Diminuido HP e Dano do {Enemy}Orochimaru <br>- Missão S passa a dar mais Ryous <br>- Dosu Kinuta e Orochimaru deixam de dar Kills Nukenin durante as respectivas missões, A e S <br>- Desbugado Enton de Ms Sasuke <br>- Diminuído Req para Susanoo's <br>- Corrigido Katon Kasumi Enbu <br>- Diminuído quantidade de ladrões para missao B, agora são 10 <br>- Diminuído CD de Upar para 1 seg <br>- Retirado Treino no Log2 <br>- Reformulado Senjutsu Senju e Uzumaki <br>- Nerfado duração dos efeitos do Jourou Senbon <br>- Buffado dano do Jourou Senbon <br>- Aumentado CD do Jourou Senbon <br>- Automaticamente ao ir para o Centro VIP o player ficará PK <br>- Retirado perda de HP ao abrir os portões <br>- Retirado dano no HP acumulativo ao abrir portões diferentes <br>- Desbugado Up de CC <br>- Diminuído req para Asa Kujaku, Gai Noturno e Elefante <br>- Diminuido req para Senjutsu Uzumaki e Senju <br>- Diminuido Req para Susano Shisui <br>- Diminuido Req para Envenenar de Aburame <br>- Aumentado CD do Hakke Hyakunijuuhachi Shou <br>- Diminuido Consumo de Chakra do Kamui <br>- Diminuido tempo da animação do Kamui <br>- Kamui agora freeza o alvo durante a conjuração <br>- Kamui agora acerta bunshin e não pode mais voltar no kawa <br>- Adicionado jutsu Chunnin para Sharingan Obito <br>- Liberado refazer a Prova do CS após falhar ou morrer na Floresta  <br>- Aumentado tempo de duração do Amaterasu <br>- Nerfado dano do Amaterasu <br>- Adicionado jutsu MS de Obito <br>- Arrumado elemento Suiton <br>- Modificado Amaterasu <br> <hr><b><center><font size = 3><font color = white>Atualização 24/06/2017</font></center></b><hr>- Modificado base de freeze dos Sharingan NIN <br>- Aumentado duração do Kanashibari e kagami <br>- Adicionado novo jutsu para Obito Gennin <br>- Desbugado cego do Getsuei <br>- Diminuido tempo de respawn após a morte <br>- Buffando dano do Kubi <br>- Corrigido bugs em Nara <br>- Diminuido consumo de Chakra do Nagashi <br>- Agora bunshins andam mesmo com kawa ativado <br>- Retirado Tsukiyomi para MS Sasuke e adicionado Enton <br>- Não precisa parar de treinar para visualizar arenas <br>- Adicionado Ticket Vila e Ticket Rename <br>- Diminuido o dano de alguns NPC's <br>- Arrumado e diminuido o custo de desfazer contrato <br>- Diminuido dificuldade do UP de CC <br>- Diminuido CD de Desafiar nas Arenas <br>- Diminuido CD do AFK <br>- Agora quem morre ja é considerado fora das Arenas <br>- Colocado limite de 4seg dentro da arena depois de matar o adversário, após esse tempo você é enviado automaticamente ao Respawn <br>- Nerfado dano do Rasenregan <br>- Diminuido duração do Rasenregan <br>- Senpou FRS e Kage FRS agora da apenas 1 hit e some <br>- Diminuido Req de Stats para Virar Gennin (50 em cada agora) <br>- Retirado CC da Loja de Cois e de Evento <br>- Retirado Req de Missões para Chunna <br>- Retirado req de Ninjutsu do Byakugan 2 <br> <hr><b><center><font size = 3><font color = white>Atualização 16/06/2017</font></center></b><hr>- Corrigido duração e bugs de alguns freezes <br>- Corrigido problema do HP voltar ao relogar/suicidar <br>- Corrigido andar na diagonal <br>- Reformulado Clan Nara e adicionado novo jutsu <br>- Ajustado clan Inuzuka <br>- Ajustado clan Usuário de Marionetes <br>- Ajustado clan uchiha. Agora os olhos com base genjutsu possuem maior dano e duração de efeito nos genjutsus <br>- Buffado dano dos clans que não escalam com pericia <br>- Kage Bunshins agora andam na água <br>-Diminuido tempo de respawn após a morte <br>- Corrigido alguns bugs que prendiam o usuário ao matar o alvo <br> <hr><b><center><font size = 3><font color = white>Atualização 11/06/2017</font></center></b><hr>- Corrigido dano do Enbu <br>- Corrigido Shoshigan e Getsuei <br>- Retirado up manual de HP na montanha <br>- Arrumado bug da EXP na montanha automática <br>- Aumentando Cap HP gennin para 500k e para chunnin 1kk <br>- Dano do bunshin daibakuha agora é base all stat <br> <hr><b><center><font size = 3><font color = white>Atualização 08/06/2017</font></center></b><hr>- Reformulado e ativado up automático de HP na montanha <br>- Nerfado UP em pericia para demorar o dobro do up de stats <br>- Diminuido cap da pericia para 100k <br>- Vip agora upa pericia 1, 2, 1, 1 a cada 180 seg <br>- Henge no Jutsu diminuindo CD e tirado janela de opção caso queira manter <br>- Kawarimi Aumentado duração para 10 seg <br>- Shushin no Jutsu retirado janela de escolha <br>- Retirado a janela de escolha para os jutsus de Clan que ainda tinham <br>- Agora não precisa ter mais genjutsu que o inimigo para usar alguns doujutsus <br>- Kanashibari no Genjutsu retirado bug do kawarimi <br>- Aumentado dano no chakra de Aburame <br>- Corrigido Tsumoji <br>- Buffado os Jutsus do clan <br>- Pilula vermelha voltou para gennin <br>- Reformulado buff das pilulas e das auras <br>- Choudan corrigido e apenas para Chunnin+ <br>- Shiranshin adicionado CD <br>- Shitenshin diminuido o tempo de CD <br>- Nerfado o dano de pericia dos clans <br>- Shousen removido separador para yamanaka e medic. Agora os dois curam igual <br>- Chikatsu Saisei removido separador para yamanaka e medic. Agora os dois curam igual <br>- Super Soco atualizado o dano e colocado icon <br>- Oukashou buffado o dano <br>- Com exceção do Koku Angyou, os jutsus agora hitam npcs <br>- Koku Angyou aumentado o dano e diminuido duração do cegar <br>- Magen Jubaku diminuido duração do freeze <br>- Oboro Bunshin adicionado + 1 bunshin e agora eles nascem separados. Diminuido duração da tontura <br>- Kokohi Tatakai diminuido duração do screwed e diminuido gasto de chakra <br>- Buffado dano do clan e corrigido o dano ser dividido entre nin ou armas. Agora o dano é a soma dos dois <br>- Buffado dano do clan Usuario de Armas <br>- Nerfado dano na pericia dos Elementais <br>- Aumentado dano no stats dos Elementais <br>- Alterado formula de freeze do suirou e shinchuu zanshuu <br>- Diminuido alguns reqs de Quests <br>- Aumentado alguns reqs de Quests <br>- Corrigido bug que fazia perder jutsus de clan ao mudar o rank <br>- Corrigido alguns bugs menores <br>- Retirado Kills de Vila <br>- Retirado Delay do Haryate <br>- Retirado Delay do Tajuu Kb <br>- Adicionado Gatsuuga <br>- Corrigido alguns bugs do clan Inuzuka <br>- Retirado cave Npc por ora <br>- Adicionado 2 novos jutsus para Yamanaka. Um para gennin e outro para chunnin+ <br>- Adicionado Delay nos hits do KB <br>- Modificado o efeito do Enbu <br><hr><b><center><fonte size = 3><font color = white>Atualizuação 28/05/2017</font></center></b><hr> - Adicionados Jutsus para Chuunin e Jounin Medic<br> - Nerfado Atacar Nervos<br> - Nerfado Atacar Tendões<br> - Melhorado Dano de Super Soco<br> - Melhorado dano de Oukashou<br> - Adicionado Jutsu para Uzumaki Genin<br> - Criado Jutsu para Usu Gen<br> - Pílula Vermelha Akimichi colocada para Chuunin+<br> - Desbugado Escudo Aburame<hr><b><center><fonte size = 3><font color = white>Atualizuação 22/05/2017</font></center></b><hr> - Diminuído Cap Diário de Up em NPC<br> - Desbugados NPCs de Up<br> - Alterados alguns requisitos de entradas secretas<br> - Desbugado Reset diário de Up em NPC<br> - Desbugado Tsumoji <hr><b><center><fonte size = 3><font color = white>Atualizuação 19/05/2017</font></center></b><hr> - Expandido Cap HP Genin<br> - Desbugado Tsumoji<br> - Desbugado Nikudan Hari Sensha<hr><b><center><fonte size = 3><font color = white>Atualizuação 18/05/2017</font></center></b><hr> - Desbugado HP<br> - Desbugado Log2<br> - Diminuídos alguns requisitos<hr><b><center><fonte size = 3><font color = white>Atualizuação 13/05/2017</font></center></b><hr> - Nova Versão 2017<br> - Retirados Tickets Logs de Baús<br> - Alteradas Localizações<br> - Diminuída a Rate<br> - Continuidade ao Mapa expandido (60%)<hr><b><center><fonte size = 3><font color = white>Atualizuação 12/11/2016</font></center></b><hr> - Adicionado Up automático de Log 5<hr><b><center><fonte size = 3><font color = white>Atualizuação 07/11/2016</font></center></b><hr> - Consertado Jutsus Aburame<br> - Ajeitado req. Quest de Veneno<br> - Adicionado Log4 por tempo<br> - Projeto Mapa novo em 40%<hr><b><center><fonte size = 3><font color = white>Atualizuação 05/11/2016</font></center></b><hr> - Desbugados Morte por NPC<br> - Desbugados Jutsus Uchiha e Aburame<br> - Desbugado Kirigakure<br> - Desbugado comando Dar Jounin <br> - Colocado Delay entre os Ataques de Kage Bunshins<br><hr><b><center><fonte size = 3><font color = white>Atualizuação 29/10/2016</font></center></b><hr> - Desbugados AutoJails <br> - Diminuidos Requisitos de Missões para Jounin<br> - Adiantado Alguns Jutsus de Jounin para Chuunin<br><hr><b><center><fonte size = 3><font color = white>Atualizuação 28/10/2016</font></center></b><hr> - Criado Ticket Rename para Compra<br> - Melhorados Jutsus Uchiha<br> - Melhorados Jutsus Akimichi<hr><b><center><fonte size = 3><font color = white>Atualizuação 23/10/2016</font></center></b><hr> - Lançado Sistema de AutoJail!<br><hr><b><center><fonte size = 3><font color = white>Atualizuação 22/10/2016</font></center></b><hr> - Lançado Baús com Dicas Especiais de Quests <br> - Baús de Quests em Trocas de NRB Coins<br><hr><b><center><fonte size = 3><font color = white>Atualizuação 21/10/2016</font></center></b><hr> - Refeito Cálculo de Resistencia<br> - Colocado Cap HP Genin / Nukenin Ex-Genin|Chuunin = 1kk<br> - Colocado Cap HP Chuunin = 5kk<br> - Colocado Cap HP Jounin+ / Ex-Jounin+ = 10kk<br> - Finalizando Baús de Quest para compra!<br><hr><b><center><fonte size = 3><font color = white>Atualizuação 20/10/2016</font></center></b><hr> - Ajustes de Alguns Clãs<br> - Retirado Up de HP de Logs Secretos<br><hr><b><center><fonte size = 3><font color = white>Atualizuação 17/10/2016</font></center></b><hr> - Desbugado Up de HP na montanha<br> - Desbugado CD de Kaen<br><hr><b><center><fonte size = 3><font color = white>Atualizuação 16/10/2016</font></center></b><hr> - Desbugado Up de HP com pesos na montanha<br><hr><b><center><fonte size = 3><font color = white>Atualizuação 13/10/2016</font></center></b><hr> - Adicionada Quest para Aumento de Cap de Stamina<br> - Consertado sistema para Aumento de Cap de Chakra<br> - Agora ao chegar no level 150 o jogador é kikado automaticamente do Log 10<br> - Desbugados alguns detalhes do Up de HP na montanha!<br><hr><b><center><fonte size = 3><font color = white>Atualizuação 13/10/2016</font></center></b><hr> - Tirado Up de HP com Stats<br> - Arrumados Subs 7SS<br> - Adicionado Jutsu para Uchiha Itachi e Uchiha Shisui<br> - Tirando a recuperação de HP com Ramem<br> - Alteração em Buff Sharingan<br> - Começado quest para aumentar cap de Stamina<br><hr><b><center><fonte size = 3><font color = white>Atualizuação 12/10/2016</font></center></b><hr> - Modificado UP de Perícia e de HP na montanha (automático)<br> - Diversificado estilos de Sharingans Nv3<br> - Melhorado Jutsu Kaen (Uchiha)<br> - Resetado para consertos de diversos Bugs<br><hr><b><center><fonte size = 3><font color = white>Atualizuação 06/10/2016</font></center></b><hr> - Desbugado Ups na Montanha<br> - Desbugados Buffs de HP <br> - Desbugado Bug de Cap Genjutsu <br><hr><b><center><fonte size = 3><font color = white>Atualizuação 24/09/2016</font></center></b><hr> - Desbugado Save de Subs <br> - Melhorados Subs 7ss<br> - Consertado Buff de Hp <br> - Consertado up de hp<hr><b><center><fonte size = 3><font color = white>Atualizuação 12/09/2016</font></center></b><hr> - Balanceados e Desbugados Subs <br> - Fixado Cap de Stats <br> - Colocado limite de alcance em Sensoriais<br><hr><b><center><fonte size = 3><font color = white>Atualizuação 06/09/2016</font></center></b><hr> - Desbugado NPC Sakura (novamente)<br> - Adicionado Mural de Promoção Mensal<br> - Mudado Icon de Jutsu de Hashirama <br> - Mudado Icon do Susanoo Obito (Pele e Caveira)<br> - Mudado Icon de Susano Rinnegan para Sasuke, Itachi e Shisui(diferenciando a cor)<br> - Alterado Danos de Alguns Jutsus de Rinnegan (adicionando Genjutsu na média)<br> - Desbugado Masterização de Venenos<br> - Avanço na construção de Susanoo Madara<br><hr><b><center><fonte size = 3><font color = white>Atualizuação 29/08/2016</font></center></b><hr> - Desbugado NPC Sakura<br> - Adicionado Susanoo Shisui<br> - Adicionado Icon em Jutsu de Sub Hashirama<br> - Colocado perda de stats em HK de Rinnegan<br> - Adicionado Golem de Madeira para Sub Hashirama<b><center><fonte size = 3><font color = white>Atualizuação 25/08/2016</font></center></b><hr> - Adicionado Mokuton Buda das 1000 Palmas para Senju Jounin+<br> - Kamui Shuriken de Susano'o Obito refeito!<br> - Alterado Icon de Mokuton Kyuu<br> - Alterado Icon de Jutsu do Tenseigan<br> - Começado Golem de Madeira para Sub Hashirama<br><hr><hr><b><center><fonte size = 3><font color = white>Atualizuação 23/08/2016</font></center></b><hr> - Desbugados Alguns Subs<br> - Adicionada Janela com Quadro de Eventos<br> - Implantado Sistema de KillsLog (Anti-FK)<br> - Adicionado Jutsu Dagão de Madeira para Senjuu Jounin+<br> -  Consertado Totsuka Sword (Não sela mais o usuário)<br> -  Desbugado Bug de Freeze Eterno entre Kanashibari e Kawarimi<br> -  Desbugado Bug da Montanha (para entendedores)<br> -  Desbugado quando a Cobra Morre o Invocador fica freeze + invisivel<br> -  Ajeitado CD de Curar da Katsuyu<br> - Reajustado Valor de Cirurgias para redcuperações físicas<br> - Adicionada Quest para Medics Jounin+ para masterizar venenos!<br><hr><hr><b><center><fonte size = 3><font color = white>Atualizuação 19/08/2016</font></center></b><hr> - Aumentado Cap de NPCs diários para up<br> - Consertados alguns subs como Sakon, Sasori e Kisame<br> - Consertados Jutsus Rinnegan e Pein<br> - Adicionado Sharingan Shisui (sem Susanoos por enquanto)<br> - Adicionado Sharingan Madara (sem susanoo por enquanto)<br><hr><b><center><fonte size = 3><font color = white>Atualizuação 08/07/2016</font></center></b><hr> - Criado Modo de UP por NPC<br> - Adicionada Quest para extender Cap de Chakra<br> - Adicionados CDs em alguns jutsus<br> - Adicionados Subs 7ss<br> - Adicinada Caverna para Up com NPCs<br> - Adicionados Villages Shinobis<br> - Adicionados Itens para Quests<br> - Adicionada Montanha no CT Vip<br> - Terminados Jutsus de Shisui e Madara (Faltando Apenas os Susanoos)<br> - Adicionados Up de Elementos na SO e na 7SS<br> - Desbugado comando tirar da 7SS<br> - Guardiões de Kiri e de Oto não atacam membros da 7SS e SO, respectivamente<br> - Adicionado função para Chave Enferrujada<br> - Reequilibrados alguns custos de Chakra<br><hr><b><center><fonte size = 3><font color = white>Atualizuação 13/06/2016</font></center></b><hr> - Refeito Edo Tensei de Sub Orochimaru<br> - Consertado Comando Desfazer Corpos de Pein<br> - Adicionado Comando Desfazer Edo Tensei de Sub Orochimaru<br> - Melhorado Jutsu de Senjuu (dano)<br> - Desbugados Alguns jutsus em Bijuu<br> - Trocado Região do Dedicado (maior proteção)<br><hr><b><center><fonte size = 3><font color = white>Atualizuação 11/06/2016</font></center></b><hr> - Buff Bijuu/Modo Heremita/Senjutsu não buga mais com regen Vip<br> - Desbugado Raikiri Sub Kakashi<br> - Adicionado Comando para Ver requisitos de Cargos<br> - Adicionado Comando Ver Mapa Lua<br> - Alterado Requisitos para Sannin (Vitorias e Honra)<br> - Criados Comandos para Ver Arena/Arena Tradiciona/Arena: Jaula<br> - Desbugado Buff rantom quer dava um jutsu incorreto<br> - Mudada Skin do Game<br> - Ajustes em Tenseigan<br> - Recolocado NPC Fu<br> - Refeito NPC Edo Itachi<br> - Consertado Anúncio de players na floresta da morte<br> - Local de Logs Especiais agora é seguro<br> - Adicionados Jutsus para Senjuu Jounin+<br> - Buffados Bunshins com IA<br><hr><b><center><fonte size = 3><font color = white>Atualizuação 01/06/2016</font></center></b><hr> - Desbugado Jutsu Kokohi tatakai<br> - Adicionado Jutsu Izanagi<br> - Adicionado Jutsu Izanami<br> - Refeito estilo de dano do Kamui<br> - Refeito estilo de dano do Masoquismo (sub Hidan)<br> - Adicionados Susanoo'o para Itachi, Sasuke, Obito e Rinnegan<br> - Refeito a IA Máscaras Kakuzu<br> - Refeito a IA Corpos de Pein<br> - Refeito a IA Suna Bunshin<br> - Criada dimensão Izanami<br> - Adicionados Jutsus de Kakuzu, desbugado Arrancar Coração e Pele de ferro<br><hr><b><center><fonte size = 3><font color = white>Atualizuação 30/04/2016</font></center></b><hr> - Desbugado Icon Jutsu Akimichi<br>  - Refeito danos de Jutsus elementais<br> - Adicionado Sub Ranton (Anbu)<br> - Reequilibrados alguns Juutsus de Clãs<br> - Adicionado Jutsu Uzumaki (Kage FRS)<br> - Adicionados Jutsus Supremos Suiton, Raiton, Fuuton e Doton (Katon já tinha 2)<br> - Concertado Tajuu Taki Rasengan (icon)<br> - Refeito Mizu no Kinobiri<br> - Acertados alguns bugs de mapa<br> - Desbugados Jutsus Yamanaka e Usuário de Gen!"

mob/proc/Mostrar_Mensagem()
	var/html="<body bgcolor=black><center><font color=white><b><u>Naruto Revolução Brasil</font></b></u><br/><br/><b><font size=3><font color=green>Atualizações Temporada 2017 (Owner Iago)<hr></font></font></b></center><font color=white>[Mensagem]</font></body>"
	src << browse(html,"window=MOTD,size=800x600,can_resize=1,can_minimize=1, can_close=1")


mob/verb/Ver_Mensagem()
	set hidden=1
	set name = "Ver Atualizações"
	src.Mostrar_Mensagem()
var
	list/bingosorteio=new

obj/recompensaentrada
	icon='Base white.dmi'
	var
		bingob="E"
		rank="Nukenin"
		recompensa=0
		Village="Nenhum"
mob/var/ninrank="D"
world
	proc
		bingobook()
			set background = 1
			var/list/bingo=new
			/*if(!EN[2])
				bingosorteio=new
				return*/
			for(var/mob/C in world)
				if(C.client)
					var/mob/O = C
					if(O && O.recompensa)
						var/obj/recompensaentrada/w=new/obj/recompensaentrada
						w.name=O.name
						w.icon=O.icon
						w.overlays=O.overlays
						w.Village=O.Village
						w.recompensa=O.recompensa
						w.bingob=O.bingob
						w.rank=O.rank
						//w.name="[w.name] ([w.bingob]), Rank: [w.rank], Vila/Org: [w.Village], Recompensa: [w.recompensa] Ryous"
						bingo+=w
					sleep(0)
			bingosorteio=new
			while(length(bingo)>0)
				var/obj/recompensaentrada/proximo=0
				for(var/obj/recompensaentrada/O in bingo)
					if(proximo)
						if(O.recompensa>proximo.recompensa)
							proximo=O
					else
						proximo=O
				sleep(-1)
				bingo-=proximo
				bingosorteio+=proximo
mob
	verb
		Bingo_Book()
			set name = "Bingo Book"
			var/BingoBook
			BingoBook+={"<STYLE>BODY {background: Black; color: White}IMG.icon{width:32;height:32} </STYLE> <tr align="center"><center><td colspan="6"></td></tr></table>"}
			BingoBook+={"
<head><title></title></head>
<br>
<table border="1" cellpadding="4">
<tr align="center"><th colspan="3">Nome</th><th>Rank</th><th>Vila/Organização</th><th>Recompensa</th></tr>"}
			for(var/obj/recompensaentrada/M in bingosorteio)if(M.recompensa>=1)BingoBook+={"<tr align="center"><td colspan="3"><font size=3>[M] ([M.bingob])<td>[M.rank]</td><td>[M.Village]</td><td>[M.recompensa] Ryous</tr>"}
			src<<browse(BingoBook,"window=who,size=600x600,can_resize=0,can_minimize=0")


proc
	split(var/textstring,var/splitcharacter)
		if(!istext(textstring))return
		if(!istext(splitcharacter))return
		var/list/list2make = list("")
		var/currenttext
		var/out = ""
		for(var/i = 1,i < length(textstring),i++)
			currenttext = copytext(textstring,i,i+1)
			if(length(textstring) - 1 == i)
				currenttext = copytext(textstring,i,i+2)
				out += currenttext
				if(out)list2make += out
				out = ""
				continue
			if(currenttext == splitcharacter)
				if(out)list2make += out
				out = ""
				continue
			out += currenttext
		return list2make

	asciifilter(var/text,var/options)
		var/options2 = split(options,"&")
		var/list/allowedlist = list("")
		for(var/x in options2)
			if(findtext(x,"-"))
				var/startnum = text2num(copytext(x,1,4))
				var/endnum = text2num(copytext(x,5,8))
				for(var/i = startnum, i <= endnum)
					allowedlist += i
					i ++
			else
				allowedlist += text2num(x)
		for(var/ii = 1, ii <= length(text), ii++)
			var/a = text2ascii(copytext(text, ii, ii+1))
			if(a in allowedlist)
				continue
			else
				return 0
		return 1

mob
	proc
		Castando()
			usr.cast=1
			sleep(30)
			usr.cast=0

mob
	verb
		AntiDDOS()
			set hidden = 1
			usr << "Você não tem permissão pra usar esse comando."
			return



mob/uchiha/verb
	EscolherSharingan()
		set name = "Escolher Sharingan"
		if(!usr.MSP)
			switch(input("Qual tipo de Mangekyou Sharingan você deseja ter?", text) in list ("Obito","Sasuke","Itachi"))
				if("Obito")
					usr.msobito=1
					usr.MSP=1
					usr.verbs -= /mob/uchiha/verb/EscolherSharingan
					//usr.SalvarAgora()
					usr<<"Você escolheu seu tipo de Sharingan."
					return
				if("Sasuke")
					usr.mssasuke=1
					usr.MSP=1
					usr.verbs -= /mob/uchiha/verb/EscolherSharingan
					//usr.SalvarAgora()
					usr<<"Você escolheu seu tipo de Sharingan."
					return
				if("Itachi")
					usr.msitachi=1
					usr.MSP=1
					usr.verbs -= /mob/uchiha/verb/EscolherSharingan
					//usr.SalvarAgora()
					usr<<"Você escolheu seu tipo de Sharingan."
					return
		else
			usr<<"Você já escolheu seu tipo."
			return