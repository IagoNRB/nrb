mob/var/tmp/cdmortesi=0
mob/sss
	verb
		mortesilenciosa()
			set category = "TaiJutsu"
			set name = "Ataque Silencioso"
			if(usr.cdmortesi)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente para usar a técnica Ataque Silencioso<b> </b>!"
				return
			if(usr.cast)
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
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
			if(usr.stamina<=500)
				usr<<"Pouca Stamina (500)"
				return
			else
				for(var/mob/M in oview(1))
					if(M.party&&M.partysensei==usr.partysensei)return
					if (M.sphere)
						return
					if (M.inspike)
						return
					if (M.Kaiten)
						usr <<"Você ataca [M] mas seu ataque é refletido."
						M <<"Você reflete o ataque de [usr], causando danos à ele"
						usr.health -= 10
						if(src.health<=0)
							usr.Death(M)
							usr.dead=1
						return
					if(M.counter)
						usr<<"Ele copia e o reflete de volta para você."
						M<<"Você copiou e o refletiu."
						usr.health -= usr.tai/4 + usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 - usr.Resistencia/2
						Death(usr)
						return
					if (M.ingat == 1)
						usr << "Seu ataque erra [M] porque ele está no Gatsuuga"
						return
					if (M.sphere)
						usr << "Seu ataque é bloqueado pela areia de [M]"
						return
					if(M.drunk&&M.NonClan)
						view()<<"[M] desvia do ataque de [usr]!"
						return
					if(M.veloN>=usr.veloN*3)
						view()<<"[M] desvia do ataque de [usr]!"
						return
					if(M.PK==0)
						usr<<"Zona NON-PK!!!"
						return
					if(usr.cdmortesi)return
					usr.cdmortesi=1
					spawn()usr.Cooldown(100,"Ataque Silencioso")
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Ataque Silencioso!!!!"
					if(M.Esquivou)
						M.Esquivou=0
						return
					var/damage=usr.tai/3.8 + usr.nin/3.8 + usr.gen/3.8 + usr.shurikenskill/3.8 - M.Resistencia/2.15
					if(damage<=0)damage=0
					usr.stamina-=500
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					M.Death(usr)
					view()<<"[M] recebe [damage]  de dano do ataque silencioso de [usr]!"
					spawn()usr.Castando()

mob/var/tmp/cdfreio=0
mob/sssjinpachi
	verb
		FREIO() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Espada Explosiva: Freio Repetido da Morte Explosiva"
			if(!usr.shibukiuse)
				usr<<"Equipe a Shibuki primeiro!"
				return
			if(usr.cdfreio)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Espada Explosiva: Freio Repetido da Morte Explosiva</b>!"
				return
			if(usr.cast||usr.Kaiten) // If the mob's cast var is one...
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
				return
			if(!usr.handseals)
				return
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.caught)
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
			if(!usr.handseals)
				return
			else // If the cast var isn't 1...
				if(usr.cdfreio)return
				usr.cdfreio=1
				spawn()usr.Cooldown(100,"Espada Explosiva: Freio Repetido da Morte Explosiva")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <FONT COLOR= red>Espada Explosiva: Freio Repetido da Morte Explosiva!</FONT>"
				sleep(30)
				if(usr.dir == NORTH)
					var/obj/freioagain/A = new /obj/freioagain/
					var/obj/freioagain/B = new /obj/freioagain/
					var/obj/freioagain/C = new /obj/freioagain/
					A.loc = locate(usr.x, usr.y+1, usr.z)
					C.loc = locate(usr.x+1, usr.y+1, usr.z)
					B.loc = locate(usr.x-1, usr.y+1, usr.z)
					A.nin=usr.nin + usr.fogoN*3
					B.nin=usr.nin + usr.fogoN*3
					C.nin=usr.nin + usr.fogoN*3
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					A.dir = NORTH
					B.dir = NORTH
					C.dir = NORTH
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
					sleep(110)
				if(usr.dir == SOUTH)
					var/obj/freioagain/A = new /obj/freioagain/
					var/obj/freioagain/B = new /obj/freioagain/
					var/obj/freioagain/C = new /obj/freioagain/
					A.loc = locate(usr.x, usr.y-1, usr.z)
					C.loc = locate(usr.x+1, usr.y-1, usr.z)
					B.loc = locate(usr.x-1, usr.y-1, usr.z)
					A.nin=usr.nin + usr.fogoN*3
					B.nin=usr.nin+ usr.fogoN*3
					C.nin=usr.nin+ usr.fogoN*3
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					A.dir = SOUTH
					B.dir = SOUTH
					C.dir = SOUTH
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
					sleep(110)
				if(usr.dir == WEST)
					var/obj/freioagain/A = new /obj/freioagain/
					var/obj/freioagain/C = new /obj/freioagain/
					var/obj/freioagain/D = new /obj/freioagain/
					A.loc = locate(usr.x-1, usr.y, usr.z)
					C.loc = locate(usr.x-1, usr.y-1, usr.z)
					D.loc = locate(usr.x-1, usr.y+1, usr.z)
					A.nin=usr.nin+ usr.fogoN*3
					C.nin=usr.nin+ usr.fogoN*3
					D.nin=usr.nin+ usr.fogoN*3
					A.Gowner=usr
					C.Gowner=usr
					D.Gowner=usr
					A.dir = WEST
					C.dir = WEST
					D.dir = WEST
					walk(A,usr.dir)
					walk(C,usr.dir)
					walk(D,usr.dir)
					sleep(110)
				if(usr.dir == EAST)
					var/obj/freioagain/A = new /obj/freioagain/
					var/obj/freioagain/C = new /obj/freioagain/
					var/obj/freioagain/D = new /obj/freioagain/
					A.loc = locate(usr.x+1, usr.y, usr.z)
					C.loc = locate(usr.x+1, usr.y-1, usr.z)
					D.loc = locate(usr.x+1, usr.y+1, usr.z)
					A.nin=usr.nin+ usr.fogoN*3
					C.nin=usr.nin+ usr.fogoN*3
					D.nin=usr.nin+ usr.fogoN*3
					A.Gowner=usr
					C.Gowner=usr
					D.Gowner=usr
					A.dir = EAST
					C.dir = EAST
					D.dir = EAST
					walk(A,usr.dir)
					walk(C,usr.dir)
					walk(D,usr.dir)
					return
				return

obj
	freioagain
		icon = 'katonheki.dmi'//dont have a base icon so cant make weights icon!lol
		density = 1
		New()
			spawn(100) del src
			..()
		Bump(A)
			var/mob/O = src.Gowner
			if(!O) del src
			if(ismob(A))
				var/mob/M = A
				if(M.party&&M.partysensei==O.partysensei)return
				if(M.Kaiten||M.sphere)
					return
				if(M.sd)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = O.tai/4 + O.nin/4 + O.gen/4 + O.shurikenskill/4 - M.Resistencia/2
				if(damage<=0)damage=0
				M.health -= damage
				F_damage(M, damage, "#ff0000")
				view(M) << "[M] foi acertado pelo ataque da Espada Explosiva de [O] recebendo [damage] de dano!!"
				M.Death(O)
				del(src)
			if(istype(A,/obj/))
				var/obj/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)


obj/var/tmp/jigumu=0
obj
	jigumu
		icon='katonheki.dmi'
		layer = MOB_LAYER+1
		New()
			spawn(30) del src
			..()


mob/var/tmp/cdjigomu=0
mob/ssskushimaru
	verb
		jigumunui()
			set category = "Jutsus"
			set name = "Choto Ninpo: Jigumo Nui"
			if(usr.cdjigomu)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Choto Ninpo: Jigumo Nui</b>!"
				return
			if(usr.cast) // If the mob's cast var is one...
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
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
			else
				if(usr.cdjigomu)return
				usr.cdjigomu=1
				spawn()usr.Cooldown(130,"Choto Ninpo: Jigumo Nui")
				usr.RandomChakra1()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				//usr.cast = 1 // Sets the cast var to 1, so he cant fire another beam
				view()<<"<font face = verdana><font size = 1><b><font color = white>[usr]</font><font color = green> Diz:Choto Ninpo: Jigumo Nui"
				var/obj/jigumu/G = new /obj/jigumu/
				var/obj/jigumu/H = new /obj/jigumu/
				var/obj/jigumu/I = new /obj/jigumu/
				var/obj/jigumu/J = new /obj/jigumu/
				var/obj/jigumu/L = new /obj/jigumu/
				var/obj/jigumu/A = new /obj/jigumu/
				var/obj/jigumu/B = new /obj/jigumu/
				var/obj/jigumu/M2 = new /obj/jigumu/
				var/obj/jigumu/N = new /obj/jigumu/
				var/obj/jigumu/O = new /obj/jigumu/
				var/obj/jigumu/P = new /obj/jigumu/
				var/obj/jigumu/D = new /obj/jigumu/
				var/obj/jigumu/E = new /obj/jigumu/
				var/obj/jigumu/C = new /obj/jigumu/
				var/obj/jigumu/K = new /obj/jigumu/
				var/obj/jigumu/Q = new /obj/jigumu/
				var/obj/jigumu/R = new /obj/jigumu/
				var/obj/jigumu/S = new /obj/jigumu/
				var/obj/jigumu/T = new /obj/jigumu/
				var/obj/jigumu/W = new /obj/jigumu/
				var/obj/jigumu/X = new /obj/jigumu/
				var/obj/jigumu/Y = new /obj/jigumu/
				var/obj/jigumu/Z = new /obj/jigumu/
				var/obj/jigumu/AB = new /obj/jigumu/
				var/obj/jigumu/AC = new /obj/jigumu/
				var/obj/jigumu/AD = new /obj/jigumu/
				var/obj/jigumu/AE = new /obj/jigumu/
				var/obj/jigumu/AF = new /obj/jigumu/
				var/obj/jigumu/AG = new /obj/jigumu/
				var/obj/jigumu/AH = new /obj/jigumu/
				var/obj/jigumu/AI = new /obj/jigumu/
				var/obj/jigumu/AJ = new /obj/jigumu/
				var/obj/jigumu/AK = new /obj/jigumu/
				var/obj/jigumu/AL = new /obj/jigumu/
				var/obj/jigumu/AM = new /obj/jigumu/
				var/obj/jigumu/AN = new /obj/jigumu/
				var/obj/jigumu/AO = new /obj/jigumu/
				var/obj/jigumu/AP = new /obj/jigumu/
				var/obj/jigumu/AQ = new /obj/jigumu/
				var/obj/jigumu/AR = new /obj/jigumu/
				var/obj/jigumu/AS = new /obj/jigumu/
				var/obj/jigumu/AT = new /obj/jigumu/
				var/obj/jigumu/AU = new /obj/jigumu/
				var/obj/jigumu/AV = new /obj/jigumu/
				var/obj/jigumu/AW = new /obj/jigumu/
				var/obj/jigumu/AX= new /obj/jigumu/
				var/obj/jigumu/AY = new /obj/jigumu/
				var/obj/jigumu/AZ = new /obj/jigumu/
				var/obj/jigumu/F = new /obj/jigumu/
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
				A.tai=usr.tai
				B.tai=usr.tai
				C.tai=usr.tai
				D.tai=usr.tai
				E.tai=usr.tai
				G.tai=usr.tai
				H.tai=usr.tai
				I.tai=usr.tai
				J.tai=usr.tai
				K.tai=usr.tai
				L.tai=usr.tai
				M2.tai=usr.tai
				N.tai=usr.tai
				O.tai=usr.tai
				P.tai=usr.tai
				Q.tai=usr.tai
				R.tai=usr.tai
				S.tai=usr.tai
				T.tai=usr.tai
				W.tai=usr.tai
				X.tai=usr.tai
				Y.tai=usr.tai
				Z.tai=usr.tai
				AB.tai=usr.tai
				AC.tai=usr.tai
				AD.tai=usr.tai
				AE.tai=usr.tai
				AF.tai=usr.tai
				AG.tai=usr.tai
				AH.tai=usr.tai
				AI.tai=usr.tai
				AJ.tai=usr.tai
				AK.tai=usr.tai
				AL.tai=usr.tai
				AM.tai=usr.tai
				AN.tai=usr.tai
				AO.tai=usr.tai
				AP.tai=usr.tai
				AQ.tai=usr.tai
				AR.tai=usr.tai
				AS.tai=usr.tai
				AV.tai=usr.tai
				AW.tai=usr.tai
				AX.tai=usr.tai
				AY.tai=usr.tai
				AZ.tai=usr.tai
				AU.tai=usr.tai
				AV.tai=usr.tai
				K.loc = locate(usr.x,usr.y,usr.z)
				K.jigumu=1
				A.loc = locate(usr.x+1,usr.y,usr.z)
				A.jigumu=1
				C.loc = locate(usr.x-1,usr.y,usr.z)
				C.jigumu=1
				B.loc = locate(usr.x,usr.y+1,usr.z)
				B.jigumu=1
				D.loc = locate(usr.x,usr.y-1,usr.z)
				D.jigumu=1
				E.loc = locate(usr.x+1,usr.y+1,usr.z)
				E.jigumu=1
				F.loc = locate(usr.x-1,usr.y-1,usr.z)
				F.jigumu=1
				G.loc = locate(usr.x-1,usr.y+1,usr.z)
				G.jigumu=1
				H.loc = locate(usr.x+1,usr.y-1,usr.z)
				H.jigumu=1
				I.loc = locate(usr.x+2,usr.y,usr.z)
				I.jigumu=1
				J.loc = locate(usr.x-2,usr.y,usr.z)
				J.jigumu=1
				L.loc = locate(usr.x,usr.y+2,usr.z)
				L.jigumu=1
				M2.loc = locate(usr.x,usr.y-2,usr.z)
				M2.jigumu=1
				N.loc = locate(usr.x+2,usr.y+2,usr.z)
				N.jigumu=1
				O.loc = locate(usr.x-2,usr.y-2,usr.z)
				O.jigumu=1
				P.loc = locate(usr.x-2,usr.y+2,usr.z)
				P.jigumu=1
				Q.loc = locate(usr.x+2,usr.y-2,usr.z)
				Q.jigumu=1
				R.loc = locate(usr.x+3,usr.y,usr.z)
				R.jigumu=1
				S.loc = locate(usr.x-3,usr.y,usr.z)
				S.jigumu=1
				T.loc = locate(usr.x,usr.y+3,usr.z)
				T.jigumu=1
				W.loc = locate(usr.x,usr.y-3,usr.z)
				W.jigumu=1
				X.loc = locate(usr.x+3,usr.y+3,usr.z)
				X.jigumu=1
				Y.loc = locate(usr.x-3,usr.y-3,usr.z)
				Y.jigumu=1
				Z.loc = locate(usr.x-3,usr.y+3,usr.z)
				Z.jigumu=1
				AB.loc = locate(usr.x-3,usr.y-2,usr.z)
				AB.jigumu=1
				AC.loc = locate(usr.x+3,usr.y+2,usr.z)
				AC.jigumu=1
				AD.loc = locate(usr.x+3,usr.y-2,usr.z)
				AD.jigumu=1
				AE.loc = locate(usr.x-3,usr.y+2,usr.z)
				AE.jigumu=1
				AF.loc = locate(usr.x+2,usr.y+3,usr.z)
				AF.jigumu=1
				AG.loc = locate(usr.x-2,usr.y-3,usr.z)
				AG.jigumu=1
				AH.loc = locate(usr.x-2,usr.y+3,usr.z)
				AH.jigumu=1
				AI.loc = locate(usr.x+2,usr.y-3,usr.z)
				AI.jigumu=1
				AJ.loc = locate(usr.x-1,usr.y-2,usr.z)
				AJ.jigumu=1
				AK.loc = locate(usr.x+1,usr.y+2,usr.z)
				AK.jigumu=1
				AL.loc = locate(usr.x+1,usr.y-2,usr.z)
				AL.jigumu=1
				AM.loc = locate(usr.x-1,usr.y+2,usr.z)
				AM.jigumu=1
				AN.loc = locate(usr.x+2,usr.y+1,usr.z)
				AN.jigumu=1
				AO.loc = locate(usr.x-2,usr.y-1,usr.z)
				AO.jigumu=1
				AP.loc = locate(usr.x-2,usr.y+1,usr.z)
				AP.jigumu=1
				AQ.loc = locate(usr.x+2,usr.y-1,usr.z)
				AQ.jigumu=1
				AR.loc = locate(usr.x-1,usr.y-3,usr.z)
				AR.jigumu=1
				AS.loc = locate(usr.x+1,usr.y+3,usr.z)
				AS.jigumu=1
				AT.loc = locate(usr.x+1,usr.y-3,usr.z)
				AT.jigumu=1
				AU.loc = locate(usr.x-1,usr.y+3,usr.z)
				AU.jigumu=1
				AV.loc = locate(usr.x+3,usr.y+1,usr.z)
				AV.jigumu=1
				AW.loc = locate(usr.x-3,usr.y-1,usr.z)
				AW.jigumu=1
				AX.loc = locate(usr.x-3,usr.y+1,usr.z)
				AX.jigumu=1
				AY.loc = locate(usr.x+3,usr.y-1,usr.z)
				AY.jigumu=1
				AZ.loc = locate(usr.x+3,usr.y-3,usr.z)
				AZ.jigumu=1
				for(var/mob/M in oview(5,usr))
					if(M.party&&M.partysensei==usr.partysensei)return
					var/damage=usr.tai/4 + usr.nin/4 + usr.gen/4 + usr.shurikenskill/4 - M.Resistencia/2
					if(damage<=0)damage=0
					view()<<"[M] tomou [damage] de dano do Choto Ninpo: Jigumo Nui de [usr]."
					if(M.fantasma)
						usr<<"<font size=1>Vc não consegue tocá-lo!"
						return
					M.health-=damage
					F_damage(M, damage, "#ff0000")
					if(M.health<=0)
						M.Death(usr)
				spawn()usr.Castando()
				sleep(30)
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


mob/var/tmp
	relampagoop = 0
mob/var/tmp/cdrakurai=0
mob/sssRINGO
	verb
		rakuray()//dance 3
			set name = "Rakurai"
			set category = "Jutsus"
			if(!usr.kibaworn)
				usr<<"Equipe as Espadas Kiba primeiro!"
				return
			if(usr.cdrakurai)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b> RAKURAI!! </b>!"
				return
			if(usr.froze&&!usr.Kaiten)
				usr<<"Você está paralisado"
				return
			if(usr.Frozen&&!usr.Kaiten)
				usr<<"Você está paralisado"
				return
			if(usr.delai==1)
				usr<<"Você não pode usar com tanta frequência"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(!usr.Kaiten&&!usr.cast)
				if(usr.cdrakurai)return
				usr.RandomChakra01()
				if(usr.chakra<=0)
					usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				if(usr.relampagoop)
					usr.cast = 0
					usr.Kaiten =0
					usr.Frozen = 0
					usr.relampagoop = 0
					usr<<"Você sai do Rakurai."
					usr.overlays -= 'raios.dmi'
					usr.cdrakurai=1
					spawn()usr.Cooldown(200,"Rakurai")
					return
				else
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Rakurai!!"
					usr.Kaiten = 1
					usr.relampagoop = 1
					usr.overlays += 'raios.dmi'
					usr.Frozen = 1
					var/numerovoltas = 0
					OMG
					if(usr.relampagoop)
						while(numerovoltas <= 7)
							numerovoltas += 1
							if(numerovoltas >= 7)
								usr.cast = 0
								usr.Kaiten = 0
								usr.Frozen = 0
								usr.overlays -= 'raios.dmi'
								usr.relampagoop = 0
								usr<<"Seu Rakurai foi desativado pois chegou no seu limite!"
								usr.cdrakurai=1
								spawn()usr.Cooldown(150,"Rakurai")
								return
							usr.dir = SOUTH
							sleep(1)
							usr.dir = WEST
							sleep(1)
							usr.dir = NORTH
							sleep(1)
							usr.dir = EAST
							for(var/mob/M in oview(usr,1))
								if(M.party&&M.partysensei==usr.partysensei||M.density==0||M.Flight)
									usr.cast = 0
									usr.Kaiten = 0
									usr.Frozen = 0
									usr.overlays -= 'raios.dmi'
									usr.relampagoop = 0
									return
								var/dano1 = usr.tai/5 + usr.nin/5 + usr.gen/5 + usr.shurikenskill/5 + usr.trovaoN*1.5
								var/dano2 = dano1 - M.Resistencia/2
								if(dano2<=0)dano2=0
								usr.EsquivaSharingan(M)
								if(M.Esquivou)
									M.Esquivou=0
									usr.cast = 0
									usr.Kaiten = 0
									usr.Frozen = 0
									usr.overlays -= 'raios.dmi'
									usr.relampagoop = 0
									return
								M.health -= dano2
								F_damage(M, dano2, "#ff0000")
								view(6)<<"[M] tomou [dano2] de dano de [usr] pelo Rakurai"
								M.Death(usr)
							usr.chakra-=usr.Mchakra/100
						if(usr.chakra <= 2000)
							usr.cast = 0
							usr.Frozen = 0
							usr.relampagoop = 0 //
							usr.overlays -= 'raios.dmi'
							usr<<"Seu Rakurai desativou!"
							usr.cdrakurai=1
							spawn()usr.Cooldown(150,"Rakurai")
							usr.Kaiten = 0
							return
						else
							sleep(20)
							goto OMG


mob/var/tmp/cdrraiga = 0
mob/sssRINGO
	verb
		RRAIGA() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Raiton: Raiga"
			if(usr.cdrraiga)
				usr<<"Cooldown"
				return
			if(usr.Frozen)
				usr<<"Você está paralisado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.PK==0)
				usr<<"Zona NON-PK!!!"
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
				for(var/mob/M in oview(2))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(M.PK==0)
						return
					if(M.froze||M.Frozen)
						usr << "Ele já está freezado..."
						return
					usr.RandomChakra1()
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					usr.cdrraiga = 1
					spawn()usr.Cooldown(150,"Raiton: Raiga")
					M<<"Você está paralisado pelo Raiton: Raiga de [usr]"
					usr<<"Você paralizou [M] com o seu Raiton: Raiga"
					var/Sleeptime = round(usr.tai/100 + usr.nin/100 + usr.gen/100 + usr.shurikenskill/100)
					if(Sleeptime >= 1)
						if(Sleeptime<10)
							Sleeptime = 20
						if(Sleeptime>150)
							Sleeptime=40
						M.overlays += 'raios.dmi'
						M.Frozen = 1
						M.froze = 1
						sleep(Sleeptime)
						M.Frozen=0
						M<<"Você foi preso pelo Raiton: Raiga de [usr]."
						M.overlays -= 'Wprison.dmi'
						usr<<"[M] se livrou do seu Raiton: Raiga!"
						M.froze = 0

mob/var/tmp/cdrbakurai=0
mob/sssRINGO
	verb
		Bakurai() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Raiton: Bakurai"
			if(usr.cdrbakurai)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Raiton: Bakurai</b>!"
				return
			usr.Handseals()
			if(usr.cast||usr.Kaiten == 1) // If the mob's cast var is one...
				return
			if(!usr.handseals)
				return
			if(usr.froze)
				usr<<"Você está paralizado!"
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
			else // If the cast var isn't 1...
				for(var/mob/M in oview(3))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(usr.cdrbakurai)return
					usr.cdrbakurai=1
					spawn() usr.Cooldown(100,"Raiton: Bakurai")
					usr.RandomChakra1()
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Raiton: Bakurai"
					var/damage = usr.tai/4.25 + usr.nin/4.25 + usr.gen/4.25 + usr.shurikenskill/4.25 - M.Resistencia/2
					if(damage<=0)damage=0
					flick('elec1.dmi',M)
					view()<<"[M] recebeu [damage] de dano ao receber o Raiton: Bakurai de [usr]!"
					M.health -= damage
					F_damage(M, damage, "#ff0000")
					if(M.health<=0)M.Death(usr)
					sleep(10)
					usr.cast = 0


mob/var/tmp/cdmartelokabuto=0
mob/sssjinin
	verb
		MarteloK() // Verb used for cast the beam
			set category = "Jutsus"
			set name = "Martelo Kabutowari"
			if(!usr.kabutouse)
				usr<<"Equipe a Kabutowari primeiro!"
				return
			if(usr.cdmartelokabuto)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Martelo Kabutowari</b>!"
				return
			if(usr.cast)
				return
			if(usr.Frozen)
				usr<<"Você está paralisado."
				return
			if(usr.froze)
				usr<<"Você está paralisado."
				return
			if(usr.stamina<=3000)
				usr<<"Pouca stamina (3k)"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.stamina<=2999)
				usr<<"Você não tem stamina o suficiente."
				return
			else
				for(var/mob/M in oview(3))
					if(M.party&&M.partysensei==usr.partysensei)return
					if(usr.cdmartelokabuto)return
					usr.cdmartelokabuto=1
					spawn()usr.Cooldown(100,"Oukashou")
					usr.chakra-=3000
					usr.stamina-=3000
					if(usr.chakra<=0)
						usr<<"Vc não possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
	//				usr.cast=1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: Oukashou!"
					var/obj/Crater_Center/B = new /obj/Crater_Center
					B.loc = M.loc
					var/damage = usr.tai/4 + usr.gen/4 + usr.shurikenskill/4 + usr.nin/4 - M.Resistencia/2
					M.health -= damage
					F_damage(M, damage, "#800080")
					M.Death(usr)
					spawn()usr.Castando()