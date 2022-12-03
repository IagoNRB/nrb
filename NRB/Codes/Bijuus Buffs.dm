mob/var/tmp/inkyuubi=0
mob/var/tmp/innibi=0
mob/var/tmp/insanbi=0
mob/var/tmp/inyonbi=0
mob/var/tmp/ingobi=0
mob/var/tmp/insishibi=0
mob/var/tmp/inrokubi=0
mob/var/tmp/inhachibi=0
mob/var/tmp/inkaku=0
mob/var
	kyuu2=0
	kyuu3=0
	InK3=0
	KASS=0



//===============KYUUBI=================================//

mob
	Jinc
		verb
			KyuubiPowerup()
				set category = "Bijuu"
				set name = "Manto Kurama"
				if(src.cdmantokyuubi)
					usr << "<b>Cooldown:</b> Aguarde para usar novamente o <b>Manto Kurama</b>!"
					return
				if(src.cdmantokyuubi)return
				src.cdmantokyuubi=1
				spawn()src.Cooldown(1200,"Manto Kyuubi")
				usr.Jinchuuriki=1
				if(usr.Kyuubi==1)
					if(usr.Kyuubi==1)
						usr.Kyuubi()
						return
				else
					usr<<"Você não possui o poder da 9 caudas."


mob/proc/Kyuubi()
	if(src.inbadass==1)
		return
	if(src.kyuu3>=1)
		src.InK3=1
		for(var/mob/npcs/B in world)
			if(B.original == src)
				if(B.Frozen)
					src.bunshin = 0
					src.kbon = 0
					src.kbon2 = 0
					del(B)
				else
					src.bunshin = 0
					src.kbon = 0
					src.kbon2 = 0
					del(B)
		src.overlays+='sharingan.dmi'
		src.overlays+='kyuubi.dmi'
		src.overlays+='Kyuubi Aura.dmi'
		src.overlays+=/obj/KyuubiAuraT
		src.overlays+=/obj/CKyuubi4Tails
		src.overlays+=/obj/TKyuubi4Tails
		src.overlays+=/obj/BLKyuubi4Tails
		src.overlays+=/obj/BRKyuubi4Tails
		src.overlays+=/obj/TLKyuubi4Tails
		src.overlays+=/obj/TRKyuubi4Tails
		src.health=src.health*2.1
		src.chakra=src.Mchakra*2.1
		src.tai = src.tai*2.1
		src.gen = src.gen*2.1
		src.nin = src.nin*2.1
		src.shurikenskill = src.shurikenskill*2.1
		src.verbs += typesof(/mob/Kyuubi3/verb/)
		src.inkyuubi=1
		src.KASS = 0
		sleep(1000)
		src.verbs -= typesof(/mob/Kyuubi3/verb/)
		if(src&&src.inkyuubi)
			src<<"Seu poder chegou ao fim"
			src.overlays-='kyuubi.dmi'
			src.overlays-='kyuubi.dmi'
			src.overlays-='kyuubi.dmi'
			src.overlays-='sharingan.dmi'
			src.overlays-='sharingan.dmi'
			src.overlays-='sharingan.dmi'
			src.overlays-='Kyuubi Aura.dmi'
			src.overlays-=/obj/KyuubiAuraT
			src.overlays-=/obj/CKyuubi4Tails
			src.overlays-=/obj/TKyuubi4Tails
			src.overlays-=/obj/BLKyuubi4Tails
			src.overlays-=/obj/BRKyuubi4Tails
			src.overlays-=/obj/TLKyuubi4Tails
			src.overlays-=/obj/TRKyuubi4Tails
			src.overlays-='Kyuubi Aura.dmi'
			src.overlays-=/obj/KyuubiAuraT
			src.overlays-=/obj/CKyuubi4Tails
			src.overlays-=/obj/TKyuubi4Tails
			src.overlays-=/obj/BLKyuubi4Tails
			src.overlays-=/obj/BRKyuubi4Tails
			src.overlays-=/obj/TLKyuubi4Tails
			src.overlays-=/obj/TRKyuubi4Tails
			src.overlays-='Kyuubi Aura.dmi'
			src.overlays-=/obj/KyuubiAuraT
			src.overlays-=/obj/CKyuubi4Tails
			src.overlays-=/obj/TKyuubi4Tails
			src.overlays-=/obj/BLKyuubi4Tails
			src.overlays-=/obj/BRKyuubi4Tails
			src.overlays-=/obj/TLKyuubi4Tails
			src.overlays-=/obj/TRKyuubi4Tails
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.shurikenskill=src.Mshurikenskill
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
				return
			src.Frozen = 0
			src.cast = 0
			src.InKASS = 0
			src.KAS_ONOFF = 0
			src.overlays-='Kyuubi Aura Shield.dmi'
			src.Kaiten =0
		else
			return
	if(src.kyuu2>=1)
		src.overlays+='sharingan.dmi'
		src.overlays+='kyuubi.dmi'
		src.health=src.health*1.9
		src.chakra=src.Mchakra*1.9
		src.tai = src.Mtai*1.9
		src.gen = src.Mgen*1.9
		src.nin = src.Mnin*1.9
		src.shurikenskill = src.Mshurikenskill*1.9
		src.inkyuubi=1
		sleep(800)
		if(src&&src.inkyuubi)
			src<<"Seu poder chegou ao fim"
			src.overlays-='kyuubi.dmi'
			src.overlays-='kyuubi.dmi'
			src.overlays-='kyuubi.dmi'
			src.overlays-='sharingan.dmi'
			src.overlays-='sharingan.dmi'
			src.overlays-='sharingan.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.shurikenskill=src.Mshurikenskill
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
				return
		else
			return

	else
		src.overlays+='sharingan.dmi'
		src.overlays+='kyuubi.dmi'
		src.health=src.health*1.7
		src.chakra=src.Mchakra*1.7
		src.tai = usr.tai*1.7
		src.gen = usr.gen*1.7
		src.nin = usr.nin*1.7
		src.shurikenskill = src.Mshurikenskill*1.7
		src.inkyuubi=1
		sleep(600)
		if(src&&src.inkyuubi)
			src<<"Seu poder chegou ao fim"
			src.overlays-='kyuubi.dmi'
			src.overlays-='kyuubi.dmi'
			src.overlays-='kyuubi.dmi'
			src.overlays-='sharingan.dmi'
			src.overlays-='sharingan.dmi'
			src.overlays-='sharingan.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.shurikenskill=src.Mshurikenskill
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
				return
		else
			return



//========================NIBI=========================================================//
mob
	Jinc
		verb
			NibiPowerup()
				set category = "Bijuu"
				set name = "Manto Matatabi"
				if(src.cdmantonibi)
					usr << "<b>Cooldown:</b> Aguarde para usar novamente o <b>Manto Matatabi</b>!"
					return
				if(src.cdmantonibi)return
				src.cdmantonibi=1
				spawn()src.Cooldown(1200,"Manto Nibi")
				usr.Jinchuuriki=1
				if(usr.Nibi==1)
					if(usr.Nibi==1)
						usr.Nibi()
						return
				else
					usr<<"Você não possui o poder da 2 caudas."


mob/proc/Nibi()
	if(src.inbadass==1)
		return
	if(src.kyuu3>=1)
		src.InK3=1
		for(var/mob/npcs/B in world)
			if(B.original == src)
				if(B.Frozen)
					src.bunshin = 0
					src.kbon = 0
					src.kbon2 = 0
					del(B)
				else
					src.bunshin = 0
					src.kbon = 0
					src.kbon2 = 0
					del(B)
		src.overlays+='nekomata.dmi'
		src.overlays+=/obj/Cnekomata2Tails
		src.overlays+=/obj/Tnekomata2Tails
		src.health=src.health*2.1
		src.chakra=src.Mchakra*2.1
		src.tai = src.tai*2.1
		src.gen = src.gen*2.1
		src.nin = src.nin*2.1
		src.shurikenskill = src.shurikenskill*2.1
		src.innibi=1
		src.KASS = 0
		sleep(1000)
		if(src&&src.innibi)
			src<<"Seu poder chegou ao fim"
			src.overlays-='nekomata.dmi'
			src.overlays-=/obj/Cnekomata2Tails
			src.overlays-=/obj/Tnekomata2Tails
			src.overlays-='nekomata.dmi'
			src.overlays-=/obj/Cnekomata2Tails
			src.overlays-=/obj/Tnekomata2Tails
			src.overlays-='nekomata.dmi'
			src.overlays-=/obj/Cnekomata2Tails
			src.overlays-=/obj/Tnekomata2Tails
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.shurikenskill=src.Mshurikenskill
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
				return
			src.Frozen = 0
			src.cast = 0
			src.InKASS = 0
			src.KAS_ONOFF = 0
			src.Kaiten =0
		else
			return
	if(src.kyuu2>=1)
		src.overlays+='nekomata.dmi'
		src.health=src.health*1.9
		src.chakra=src.Mchakra*1.9
		src.tai = src.Mtai*1.9
		src.gen = src.Mgen*1.9
		src.nin = src.Mnin*1.9
		src.shurikenskill = src.Mshurikenskill*1.9
		src.innibi=1
		sleep(800)
		if(src&&src.innibi)
			src<<"Seu poder chegou ao fim"
			src.overlays-='nekomata.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.shurikenskill=Mshurikenskill
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
				return
		else
			return

	else
		src.overlays+='nekomata.dmi'
		src.health=src.health*1.7
		src.chakra=src.Mchakra*1.7
		src.tai = src.Mtai*1.7
		src.gen = src.Mgen*1.7
		src.nin = src.Mnin*1.7
		src.shurikenskill = src.Mshurikenskill*1.7
		src.innibi=1
		sleep(600)
		if(src&&src.innibi)
			src<<"Seu poder chegou ao fim"
			src.overlays-='nekomata.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.shurikenskill=src.Mshurikenskill
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
				return
		else
			return

//===============SANBI=================================//
mob
	Jinc
		verb
			SanbiPowerup()
				set category = "Bijuu"
				set name = "Manto Isobu"
				if(src.cdmantosanbi)
					usr << "<b>Cooldown:</b> Aguarde para usar novamente o <b>Manto Isobu</b>!"
					return
				if(src.cdmantosanbi)return
				src.cdmantosanbi=1
				spawn()src.Cooldown(1200,"Manto Sanbi")
				usr.Jinchuuriki=1
				if(usr.Sanbi==1)
					if(usr.Sanbi==1)
						usr.Sanbi()
						return
				else
					usr<<"Você não possui o poder da 3 caudas."


mob/proc/Sanbi()
	if(src.inbadass==1)
		return
	if(src.kyuu3>=1)
		for(var/mob/npcs/B in world)
			if(B.original == src)
				if(B.Frozen)
					src.bunshin = 0
					src.kbon = 0
					src.kbon2 = 0
					del(B)
				else
					src.bunshin = 0
					src.kbon = 0
					src.kbon2 = 0
					del(B)
		src.InK3=1
		src.overlays+='Sanbi1.dmi'
		src.overlays+='Sanbi Aura.dmi'
		src.overlays+=/obj/SanbiAuraT
		src.overlays+=/obj/CSanbi3Tails
		src.overlays+=/obj/T1Sanbi3Tails
		src.overlays+=/obj/BLSanbi3Tails
		src.overlays+=/obj/BRSanbi3Tails
		src.overlays+=/obj/TLSanbi3Tails
		src.overlays+=/obj/TRSanbi3Tails
		src.health=src.health*2.1
		src.chakra=src.Mchakra*2.1
		src.tai = src.tai*2.1
		src.gen = src.gen*2.1
		src.nin = src.nin*2.1
		src.shurikenskill = src.shurikenskill*2.1
		src.verbs += typesof(/mob/Sanbi3/verb/)
		src.insanbi=1
		src.KASS = 0
		sleep(1000)
		src.verbs -= typesof(/mob/Sanbi3/verb/)
		if(src&&src.insanbi)
			src<<"Seu poder chegou ao fim"
			src.overlays-='Sanbi1.dmi'
			src.overlays-='Sanbi1.dmi'
			src.overlays-='Sanbi1.dmi'
			src.overlays-='Sanbi Aura.dmi'
			src.overlays-=/obj/SanbiAuraT
			src.overlays-=/obj/CSanbi3Tails
			src.overlays-=/obj/T1Sanbi3Tails
			src.overlays-=/obj/BLSanbi3Tails
			src.overlays-=/obj/BRSanbi3Tails
			src.overlays-=/obj/TLSanbi3Tails
			src.overlays-=/obj/TRSanbi3Tails
			src.overlays-='Sanbi Aura.dmi'
			src.overlays-=/obj/SanbiAuraT
			src.overlays-=/obj/CSanbi3Tails
			src.overlays-=/obj/T1Sanbi3Tails
			src.overlays-=/obj/BLSanbi3Tails
			src.overlays-=/obj/BRSanbi3Tails
			src.overlays-=/obj/TLSanbi3Tails
			src.overlays-=/obj/TRSanbi3Tails
			src.overlays-='Sanbi Aura.dmi'
			src.overlays-=/obj/SanbiAuraT
			src.overlays-=/obj/CSanbi3Tails
			src.overlays-=/obj/T1Sanbi3Tails
			src.overlays-=/obj/BLSanbi3Tails
			src.overlays-=/obj/BRSanbi3Tails
			src.overlays-=/obj/TLSanbi3Tails
			src.overlays-=/obj/TRSanbi3Tails
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
				return
			src.Frozen = 0
			src.cast = 0
			src.InKASS = 0
			src.KAS_ONOFF = 0
			src.overlays-='Sanbi Aura Shield.dmi'
			src.Kaiten =0
		else
			return
	if(src.kyuu2>=1)
		src.overlays+='Sanbi1.dmi'
		src.health=src.health*1.9
		src.chakra=src.Mchakra*1.9
		src.tai = src.Mtai*1.9
		src.gen = src.Mgen*1.9
		src.nin = src.Mnin*1.9
		src.shurikenskill = src.Mshurikenskill*1.9
		src.insanbi=1
		sleep(800)
		if(src&&src.insanbi)
			src<<"Seu poder chegou ao fim"
			src.overlays-='Sanbi1.dmi'
			src.overlays-='Sanbi1.dmi'
			src.overlays-='Sanbi1.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.shurikenskill=src.Mshurikenskill
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
				return
		else
			return

	else
		src.overlays+='Sanbi1.dmi'
		src.health=src.health*1.7
		src.chakra=src.Mchakra*1.7
		src.tai = src.Mtai*1.7
		src.gen = src.Mgen*1.7
		src.nin = src.Mnin*1.7
		src.shurikenskill = src.Mshurikenskill*1.7
		src.insanbi=1
		sleep(600)
		if(src&&src.insanbi)
			src<<"Seu poder chegou ao fim"
			src.overlays-='Sanbi1.dmi'
			src.overlays-='Sanbi1.dmi'
			src.overlays-='Sanbi1.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.shurikenskill=src.Mshurikenskill
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
				return
		else
			return
//==============================YONBI===============================//
mob
	Jinc
		verb
			YonbiPowerup()
				set category = "Bijuu"
				set name = "Manto Son Goku"
				if(src.cdmantoyonbi)
					usr << "<b>Cooldown:</b> Aguarde para usar novamente o <b>Manto Son Goku</b>!"
					return
				if(src.cdmantoyonbi)return
				src.cdmantoyonbi=1
				spawn()src.Cooldown(1200,"Manto Yonbi")
				usr.Jinchuuriki=1
				if(usr.Yonbi==1)
					if(usr.Yonbi==1)
						usr.Yonbi()
						return
				else
					usr<<"Você não possui o poder da 4 caudas."

mob/proc/Yonbi()
	if(src.inbadass==1)
		return
	if(src.kyuu3>=1)
		for(var/mob/npcs/B in world)
			if(B.original == src)
				if(B.Frozen)
					src.bunshin = 0
					src.kbon = 0
					src.kbon2 = 0
					del(B)
				else
					src.bunshin = 0
					src.kbon = 0
					src.kbon2 = 0
					del(B)
		src.InK3=1
		src.overlays+='Yonbi Aura.dmi'
		src.overlays+=/obj/CYonbi4Tails
		src.overlays+=/obj/TYonbi4Tails
		src.overlays+=/obj/BLYonbi4Tails
		src.overlays+=/obj/BRYonbi4Tails
		src.overlays+=/obj/TLYonbi4Tails
		src.overlays+=/obj/TRYonbi4Tails
		src.health=src.health*2.1
		src.chakra=src.Mchakra*2.1
		src.tai = src.tai*2.1
		src.gen = src.gen*2.1
		src.nin = src.nin*2.1
		src.shurikenskill = src.shurikenskill*2.1
		src.verbs += typesof(/mob/Yonbi4/verb/)
		src.inyonbi=1
		src.KASS = 0
		sleep(1000)
		src.verbs -= typesof(/mob/Yonbi4/verb/)
		if(src&&src.inyonbi)
			src<<"Seu poder chegou ao fim"
			src.overlays-='Yonbi Aura.dmi'
			src.overlays-=/obj/CYonbi4Tails
			src.overlays-=/obj/TYonbi4Tails
			src.overlays-=/obj/BLYonbi4Tails
			src.overlays-=/obj/BRYonbi4Tails
			src.overlays-=/obj/TLYonbi4Tails
			src.overlays-=/obj/TRYonbi4Tails
			src.overlays-='Yonbi Aura.dmi'
			src.overlays-=/obj/CYonbi4Tails
			src.overlays-=/obj/TYonbi4Tails
			src.overlays-=/obj/BLYonbi4Tails
			src.overlays-=/obj/BRYonbi4Tails
			src.overlays-=/obj/TLYonbi4Tails
			src.overlays-=/obj/TRYonbi4Tails
			src.overlays-='Yonbi Aura.dmi'
			src.overlays-=/obj/CYonbi4Tails
			src.overlays-=/obj/TYonbi4Tails
			src.overlays-=/obj/BLYonbi4Tails
			src.overlays-=/obj/BRYonbi4Tails
			src.overlays-=/obj/TLYonbi4Tails
			src.overlays-=/obj/TRYonbi4Tails
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.shurikenskill=src.Mshurikenskill
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
				return
			src.Frozen = 0
			src.cast = 0
			src.InKASS = 0
			src.KAS_ONOFF = 0
			src.overlays-='Yonbi Aura Shield.dmi'
			src.Kaiten =0
		else
			return
	if(src.kyuu2>=1)
		src.overlays+='Yonbi Aura.dmi'
		src.health=src.health*1.9
		src.chakra=src.Mchakra*1.9
		src.tai = src.Mtai*1.9
		src.gen = src.Mgen*1.9
		src.nin = src.Mnin*1.9
		src.shurikenskill = src.Mshurikenskill*1.9
		src.inyonbi=1
		sleep(800)
		if(src&&src.inyonbi)
			src<<"Seu poder chegou ao fim"
			src.overlays-='Yonbi Aura.dmi'
			src.overlays-='Yonbi Aura.dmi'
			src.overlays-='Yonbi Aura.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.shurikenskill=src.Mshurikenskill
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
				return
		else
			return

	else
		src.overlays+='Yonbi Aura.dmi'
		src.health=src.health*1.7
		src.chakra=src.Mchakra*1.7
		src.tai = src.Mtai*1.7
		src.gen = src.Mgen*1.7
		src.nin = src.Mnin*1.7
		src.shurikenskill = src.Mshurikenskill*1.7
		src.inyonbi=1
		sleep(600)
		if(src&&src.inyonbi)
			src<<"Seu poder chegou ao fim"
			src.overlays-='Yonbi Aura.dmi'
			src.overlays-='Yonbi Aura.dmi'
			src.overlays-='Yonbi Aura.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.shurikenskill=src.Mshurikenskill
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
				return
		else
			return
//==============================GOBI===============================//
mob
	Jinc
		verb
			GobiPowerup()
				set category = "Bijuu"
				set name = "Manto Kokuo"
				if(src.cdmantogobi)
					usr << "<b>Cooldown:</b> Aguarde para usar novamente o <b>Manto Kokuo</b>!"
					return
				if(src.cdmantogobi)return
				src.cdmantogobi=1
				spawn()src.Cooldown(1200,"Manto Gobi")
				usr.Jinchuuriki=1
				if(usr.Gobi==1)
					if(usr.Gobi==1)
						usr.Gobi()
						return
				else
					usr<<"Você não possui o poder da 5 caudas."

mob/proc/Gobi()
	if(src.inbadass==1)
		return
	if(src.kyuu3>=1)
		for(var/mob/npcs/B in world)
			if(B.original == src)
				if(B.Frozen)
					src.bunshin = 0
					src.kbon = 0
					src.kbon2 = 0
					del(B)
				else
					src.bunshin = 0
					src.kbon = 0
					src.kbon2 = 0
					del(B)
		src.InK3=1
		src.overlays+='Gobi Aura.dmi'
		src.overlays+=/obj/CGobi5Tails
		src.overlays+=/obj/TGobi5Tails
		src.overlays+=/obj/BLGobi5Tails
		src.overlays+=/obj/BRGobi5Tails
		src.overlays+=/obj/TLGobi5Tails
		src.overlays+=/obj/TRGobi5Tails
		src.health=src.health*2.1
		src.chakra=src.Mchakra*2.1
		src.tai = src.tai*2.1
		src.gen = src.gen*2.1
		src.nin = src.nin*2.1
		src.shurikenskill = src.shurikenskill*2.1
		src.ingobi=1
		src.KASS = 0
		sleep(1000)
		if(src&&src.ingobi)
			src<<"Seu poder chegou ao fim"
			src.overlays-='Gobi Aura.dmi'
			src.overlays-=/obj/CGobi5Tails
			src.overlays-=/obj/TGobi5Tails
			src.overlays-=/obj/BLGobi5Tails
			src.overlays-=/obj/BRGobi5Tails
			src.overlays-=/obj/TLGobi5Tails
			src.overlays-=/obj/TRGobi5Tails
			src.overlays-='Gobi Aura.dmi'
			src.overlays-=/obj/CGobi5Tails
			src.overlays-=/obj/TGobi5Tails
			src.overlays-=/obj/BLGobi5Tails
			src.overlays-=/obj/BRGobi5Tails
			src.overlays-=/obj/TLGobi5Tails
			src.overlays-=/obj/TRGobi5Tails
			src.overlays-='Gobi Aura.dmi'
			src.overlays-=/obj/CGobi5Tails
			src.overlays-=/obj/TGobi5Tails
			src.overlays-=/obj/BLGobi5Tails
			src.overlays-=/obj/BRGobi5Tails
			src.overlays-=/obj/TLGobi5Tails
			src.overlays-=/obj/TRGobi5Tails
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
				return
			src.Frozen = 0
			src.cast = 0
			src.InKASS = 0
			src.KAS_ONOFF = 0
			src.Kaiten =0
		else
			return
	if(src.kyuu2>=1)
		src.overlays+='Gobi Aura.dmi'
		src.health=src.health*1.9
		src.chakra=src.Mchakra*1.9
		src.tai = src.Mtai*1.9
		src.gen = src.Mgen*1.9
		src.nin = src.Mnin*1.9
		src.shurikenskill = src.Mshurikenskill*1.9
		src.ingobi=1
		sleep(800)
		if(src&&src.ingobi)
			src<<"Seu poder chegou ao fim"
			src.overlays-='Gobi Aura.dmi'
			src.overlays-='Gobi Aura.dmi'
			src.overlays-='Gobi Aura.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.shurikenskill=src.Mshurikenskill
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
				return
		else
			return

	else
		src.overlays+='Gobi Aura.dmi'
		src.health=src.health*1.7
		src.chakra=src.Mchakra*1.7
		src.tai = src.Mtai*1.7
		src.gen = src.Mgen*1.7
		src.nin = src.Mnin*1.7
		src.shurikenskill = src.Mshurikenskill*1.7
		src.ingobi=1
		sleep(600)
		if(src&&src.ingobi)
			src<<"Seu poder chegou ao fim"
			src.overlays-='Gobi Aura.dmi'
			src.overlays-='Gobi Aura.dmi'
			src.overlays-='Gobi Aura.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.shurikenskill=src.Mshurikenskill
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
				return
		else
			return
//===============================Rokubi========================================//
mob
	Jinc
		verb
			RokubiPowerup()
				set category = "Bijuu"
				set name = "Manto Saiken"
				if(src.cdmantorokubi)
					usr << "<b>Cooldown:</b> Aguarde para usar novamente o <b>Manto Saiken</b>!"
					return
				if(src.cdmantorokubi)return
				src.cdmantorokubi=1
				spawn()src.Cooldown(1200,"Manto Rokubi")
				usr.Jinchuuriki=1
				if(usr.Rokubi==1)
					if(usr.Rokubi==1)
						usr.Rokubi()
						return
				else
					usr<<"Você não possui o poder da 6 caudas."


mob/proc/Rokubi()
	if(src.inbadass==1)
		return
	if(src.kyuu3>=1)
		for(var/mob/npcs/B in world)
			if(B.original == src)
				if(B.Frozen)
					src.bunshin = 0
					src.kbon = 0
					src.kbon2 = 0
					del(B)
				else
					src.bunshin = 0
					src.kbon = 0
					src.kbon2 = 0
					del(B)
		src.InK3=1
		src.overlays+='Rokubi Aura.dmi'
		src.overlays+=/obj/CRokubi6Tails
		src.overlays+=/obj/TRokubi6Tails
		src.overlays+=/obj/BLRokubi6Tails
		src.overlays+=/obj/BRRokubi6Tails
		src.overlays+=/obj/TLRokubi6Tails
		src.overlays+=/obj/TRRokubi6Tails
		src.health=src.health*2.1
		src.chakra=src.Mchakra*2.1
		src.tai = src.tai*2.1
		src.gen = src.gen*2.1
		src.nin = src.nin*2.1
		src.shurikenskill = src.shurikenskill*2.1
		src.verbs += typesof(/mob/Rokubi6/verb/)
		src.inrokubi=1
		src.KASS = 0
		sleep(1000)
		src.verbs -= typesof(/mob/Rokubi6/verb/)
		if(src&&src.inrokubi)
			src<<"Seu poder chegou ao fim"
			src.overlays-='Rokubi Aura.dmi'
			src.overlays-=/obj/CRokubi6Tails
			src.overlays-=/obj/TRokubi6Tails
			src.overlays-=/obj/BLRokubi6Tails
			src.overlays-=/obj/BRRokubi6Tails
			src.overlays-=/obj/TLRokubi6Tails
			src.overlays-=/obj/TRRokubi6Tails
			src.overlays-='Rokubi Aura.dmi'
			src.overlays-=/obj/CRokubi6Tails
			src.overlays-=/obj/TRokubi6Tails
			src.overlays-=/obj/BLRokubi6Tails
			src.overlays-=/obj/BRRokubi6Tails
			src.overlays-=/obj/TLRokubi6Tails
			src.overlays-=/obj/TRRokubi6Tails
			src.overlays-='Rokubi Aura.dmi'
			src.overlays-=/obj/CRokubi6Tails
			src.overlays-=/obj/TRokubi6Tails
			src.overlays-=/obj/BLRokubi6Tails
			src.overlays-=/obj/BRRokubi6Tails
			src.overlays-=/obj/TLRokubi6Tails
			src.overlays-=/obj/TRRokubi6Tails
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.shurikenskill=src.Mshurikenskill
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
				return
			src.Frozen = 0
			src.cast = 0
			src.InKASS = 0
			src.KAS_ONOFF = 0
			src.overlays-='Rokubi Aura Shield.dmi'
			src.Kaiten =0
		else
			return
	if(src.kyuu2>=1)
		src.overlays+='Rokubi Aura.dmi'
		src.health=src.health*1.9
		src.chakra=src.Mchakra*1.9
		src.tai = src.Mtai*1.9
		src.gen = src.Mgen*1.9
		src.nin = src.Mnin*1.9
		src.shurikenskill = src.Mshurikenskill*1.9
		src.inrokubi=1
		sleep(800)
		if(src&&src.inrokubi)
			src<<"Seu poder chegou ao fim"
			src.overlays-='Rokubi Aura.dmi'
			src.overlays-='Rokubi Aura.dmi'
			src.overlays-='Rokubi Aura.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.shurikenskill=src.Mshurikenskill
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
				return
		else
			return

	else
		src.overlays+='Rokubi Aura.dmi'
		src.health=src.health*1.7
		src.chakra=src.Mchakra*1.7
		src.tai = src.Mtai*1.7
		src.gen = src.Mgen*1.7
		src.nin = src.Mnin*1.7
		src.shurikenskill = src.Mshurikenskill*1.7
		src.inrokubi=1
		sleep(600)
		if(src&&src.inrokubi)
			src<<"Seu poder chegou ao fim"
			src.overlays-='Rokubi Aura.dmi'
			src.overlays-='Rokubi Aura.dmi'
			src.overlays-='Rokubi Aura.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
				return
		else
			return

//===============================Nanabi========================================//
mob
	Jinc
		verb
			NanabiPowerup()
				set category = "Bijuu"
				set name = "Manto Choumei"
				if(src.cdmantonanabi)
					usr << "<b>Cooldown:</b> Aguarde para usar novamente o <b>Manto Choumei</b>!"
					return
				if(src.cdmantonanabi)return
				src.cdmantonanabi=1
				spawn()src.Cooldown(1200,"Manto Nanabi")
				usr.Jinchuuriki=1
				if(usr.Sishibi==1)
					if(usr.Sishibi==1)
						usr.Sishibi()
						return
				else
					usr<<"Você não possui o poder da 7 caudas."


mob/proc/Sishibi()
	if(src.inbadass==1)
		return
	if(src.kyuu3>=1)
		src.InK3=1
		for(var/mob/npcs/B in world)
			if(B.original == src)
				if(B.Frozen)
					src.bunshin = 0
					src.kbon = 0
					src.kbon2 = 0
					del(B)
				else
					src.bunshin = 0
					src.kbon = 0
					src.kbon2 = 0
					del(B)
		src.overlays+='Sishibi Aura.dmi'
		src.overlays+=/obj/CSishibi7Tails
		src.overlays+=/obj/TSishibi7Tails
		src.overlays+=/obj/BLSishibi7Tails
		src.overlays+=/obj/BRSishibi7Tails
		src.overlays+=/obj/TLSishibi7Tails
		src.overlays+=/obj/TRSishibi7Tails
		src.health=src.health*2.1
		src.chakra=src.Mchakra*2.1
		src.tai = src.tai*2.1
		src.gen = src.gen*2.1
		src.nin = src.nin*2.1
		src.shurikenskill = src.shurikenskill*2.1
		src.insishibi=1
		src.KASS = 0
		sleep(1000)
		if(src&&src.insishibi)
			src<<"Seu poder chegou ao fim"
			src.overlays-='Sishibi Aura.dmi'
			src.overlays-=/obj/CSishibi7Tails
			src.overlays-=/obj/TSishibi7Tails
			src.overlays-=/obj/BLSishibi7Tails
			src.overlays-=/obj/BRSishibi7Tails
			src.overlays-=/obj/TLSishibi7Tails
			src.overlays-=/obj/TRSishibi7Tails
			src.overlays-='Sishibi Aura.dmi'
			src.overlays-=/obj/CSishibi7Tails
			src.overlays-=/obj/TSishibi7Tails
			src.overlays-=/obj/BLSishibi7Tails
			src.overlays-=/obj/BRSishibi7Tails
			src.overlays-=/obj/TLSishibi7Tails
			src.overlays-=/obj/TRSishibi7Tails
			src.overlays-='Sishibi Aura.dmi'
			src.overlays-=/obj/CSishibi7Tails
			src.overlays-=/obj/TSishibi7Tails
			src.overlays-=/obj/BLSishibi7Tails
			src.overlays-=/obj/BRSishibi7Tails
			src.overlays-=/obj/TLSishibi7Tails
			src.overlays-=/obj/TRSishibi7Tails
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.shurikenskill=src.Mshurikenskill
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
				return
			src.Frozen = 0
			src.cast = 0
			src.InKASS = 0
			src.KAS_ONOFF = 0
			src.Kaiten =0
		else
			return
	if(src.kyuu2>=1)
		src.overlays+='Sishibi Aura.dmi'
		src.health=src.health*1.9
		src.chakra=src.Mchakra*1.9
		src.tai = src.Mtai*1.9
		src.gen = src.Mgen*1.9
		src.nin = src.Mnin*1.9
		src.shurikenskill = src.Mshurikenskill*1.9
		src.insishibi=1
		sleep(800)
		if(src&&src.insishibi)
			src<<"Seu poder chegou ao fim"
			src.overlays-='Sishibi Aura.dmi'
			src.overlays-='Sishibi Aura.dmi'
			src.overlays-='Sishibi Aura.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.shurikenskill=src.Mshurikenskill
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
				return
		else
			return

	else
		src.overlays+='Sishibi Aura.dmi'
		src.health=src.health*1.7
		src.chakra=src.Mchakra*1.7
		src.tai = src.Mtai*1.7
		src.gen = src.Mgen*1.7
		src.nin = src.Mnin*1.7
		src.shurikenskill = src.Mshurikenskill*1.7
		src.insishibi=1
		sleep(600)
		if(src&&src.insishibi)
			src<<"Seu poder chegou ao fim"
			src.overlays-='Sishibi Aura.dmi'
			src.overlays-='Sishibi Aura.dmi'
			src.overlays-='Sishibi Aura.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.shurikenskill=src.Mshurikenskill
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
				return
		else
			return

//===============================Hachibi========================================//
mob
	Jinc
		verb
			HachibiPowerup()
				set category = "Bijuu"
				set name = "Manto Gyuki"
				if(src.cdmantohachibi)
					usr << "<b>Cooldown:</b> Aguarde para usar novamente o <b>Manto Gyuki</b>!"
					return
				if(src.cdmantohachibi)return
				src.cdmantohachibi=1
				spawn()src.Cooldown(1200,"Manto Hachibi")
				usr.Jinchuuriki=1
				if(usr.Hachibi==1)
					if(usr.Hachibi==1)
						usr.Hachibi()
						return
				else
					usr<<"Você não possui o poder da 8 caudas."


mob/proc/Hachibi()
	if(src.inbadass==1)
		return
	if(src.kyuu3>=1)
		src.InK3=1
		for(var/mob/npcs/B in world)
			if(B.original == src)
				if(B.Frozen)
					src.bunshin = 0
					src.kbon = 0
					src.kbon2 = 0
					del(B)
				else
					src.bunshin = 0
					src.kbon = 0
					src.kbon2 = 0
					del(B)
		src.overlays+='Hachibi Aura.dmi'
		src.overlays+=/obj/CHachibi8Tails
		src.overlays+=/obj/THachibi8Tails
		src.overlays+=/obj/BLHachibi8Tails
		src.overlays+=/obj/BRHachibi8Tails
		src.overlays+=/obj/TLHachibi8Tails
		src.overlays+=/obj/TRHachibi8Tails
		src.health=src.health*2.1
		src.chakra=src.Mchakra*2.1
		src.tai = src.tai*2.1
		src.gen = src.gen*2.1
		src.nin = src.nin*2.1
		src.shurikenskill = src.shurikenskill*2.1
		src.verbs += typesof(/mob/Hachibi8/verb/)
		src.inhachibi=1
		src.KASS = 0
		sleep(1000)
		src.verbs -= typesof(/mob/Hachibi8/verb/)
		if(src&&src.inhachibi)
			src<<"Seu poder chegou ao fim"
			src.overlays-='Hachibi Aura.dmi'
			src.overlays-=/obj/CHachibi8Tails
			src.overlays-=/obj/THachibi8Tails
			src.overlays-=/obj/BLHachibi8Tails
			src.overlays-=/obj/BRHachibi8Tails
			src.overlays-=/obj/TLHachibi8Tails
			src.overlays-=/obj/TRHachibi8Tails
			src.overlays-='Hachibi Aura.dmi'
			src.overlays-=/obj/CHachibi8Tails
			src.overlays-=/obj/THachibi8Tails
			src.overlays-=/obj/BLHachibi8Tails
			src.overlays-=/obj/BRHachibi8Tails
			src.overlays-=/obj/TLHachibi8Tails
			src.overlays-=/obj/TRHachibi8Tails
			src.overlays-='Hachibi Aura.dmi'
			src.overlays-=/obj/CHachibi8Tails
			src.overlays-=/obj/THachibi8Tails
			src.overlays-=/obj/BLHachibi8Tails
			src.overlays-=/obj/BRHachibi8Tails
			src.overlays-=/obj/TLHachibi8Tails
			src.overlays-=/obj/TRHachibi8Tails
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.shurikenskill=src.Mshurikenskill
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
				return
			src.Frozen = 0
			src.cast = 0
			src.InKASS = 0
			src.KAS_ONOFF = 0
			src.overlays-='Hachibi Aura Shield.dmi'
			src.Kaiten =0
		else
			return
	if(src.kyuu2>=1)
		src.overlays+='Hachibi Aura.dmi'
		src.health=src.health*1.9
		src.chakra=src.Mchakra*1.9
		src.tai = src.Mtai*1.9
		src.gen = src.Mgen*1.9
		src.nin = src.Mnin*1.9
		src.shurikenskill = src.Mshurikenskill*1.9
		src.inhachibi=1
		sleep(800)
		if(src&&src.inhachibi)
			src<<"Seu poder chegou ao fim"
			src.overlays-='Hachibi Aura.dmi'
			src.overlays-='Hachibi Aura.dmi'
			src.overlays-='Hachibi Aura.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.shurikenskill=src.Mshurikenskill
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
				return
		else
			return

	else
		src.overlays+='Hachibi Aura.dmi'
		src.health=src.health*1.7
		src.chakra=src.Mchakra*1.7
		src.tai = src.Mtai*1.7
		src.gen = src.Mgen*1.7
		src.nin = src.Mnin*1.7
		src.shurikenskill = src.Mshurikenskill*1.7
		src.inhachibi=1
		sleep(600)
		if(src&&src.inhachibi)
			src<<"Seu poder chegou ao fim"
			src.overlays-='Hachibi Aura.dmi'
			src.overlays-='Hachibi Aura.dmi'
			src.overlays-='Hachibi Aura.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.shurikenskill=src.Mshurikenskill
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
				return
		else
			return


//=======================Ichibi======================================//
mob
	Jinc
		verb
			IchibiPowerup()
				set category = "Bijuu"
				set name = "Manto Shukaku"
				if(src.cdmantoichibi)
					usr << "<b>Cooldown:</b> Aguarde para usar novamente o <b>Manto Shukaku</b>!"
					return
				if(src.cdmantoichibi)return
				src.cdmantoichibi=1
				spawn()src.Cooldown(1200,"Manto Ichibi")
				usr.Jinchuuriki=1
				if(usr.Ichibi==1)
					if(usr.Ichibi==1)
						usr.Kaku()
						return
				else
					usr<<"Você não possui o poder do 1 cauda."


mob/var
	kaku2=0
	kaku3=0
mob/proc/Kaku()
	if(src.inbadass==1)
		return
	if(src.kaku3>=1)
		src.overlays+='kakuA.dmi'
		src.overlays+='kaku3.dmi'
		src.health=src.health*2.1
		src.chakra=src.Mchakra*2.1
		src.tai = src.tai*2.1
		src.gen = src.gen*2.1
		src.nin = src.nin*2.1
		src.shurikenskill = src.shurikenskill*2.1
		src.inkaku=1
		sleep(1000)
		if(src&&src.inkaku)
			src<<"Seu poder chegou ao fim"
			src.overlays-='kaku3.dmi'
			src.overlays-='kaku3.dmi'
			src.overlays-='kaku3.dmi'
			src.overlays-='kakuA.dmi'
			src.overlays-='kakuA.dmi'
			src.overlays-='kakuA.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.shurikenskill=src.Mshurikenskill
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
				return
		else
			return
	if(src.kaku2>=1)
		src.overlays+='kaku2.dmi'
		src.overlays+='kakuA.dmi'
		src.health=src.health*1.9
		src.chakra=src.Mchakra*1.9
		src.tai = src.Mtai*1.9
		src.gen = src.Mgen*1.9
		src.nin = src.Mnin*1.9
		src.shurikenskill = src.Mshurikenskill*1.9
		src.inkaku=1
		sleep(800)
		if(src&&src.inkaku)
			src<<"Seu poder chegou ao fim"
			src.overlays-='kaku2.dmi'
			src.overlays-='kaku2.dmi'
			src.overlays-='kaku2.dmi'
			src.overlays-='kakuA.dmi'
			src.overlays-='kakuA.dmi'
			src.overlays-='kakuA.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.shurikenskill=src.Mshurikenskill
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
				return
		else
			return

	else
		src.overlays+='kaku.dmi'
		src.overlays-='kakuA.dmi'
		src.health=src.health*1.7
		src.chakra=src.Mchakra*1.7
		src.tai = src.Mtai*1.7
		src.gen = src.Mgen*1.7
		src.nin = src.Mnin*1.7
		src.shurikenskill = src.Mshurikenskill*1.7
		src.inkaku=1
		sleep(600)
		if(src&&src.inkaku)
			src<<"Seu poder chegou ao fim"
			src.overlays-='kaku.dmi'
			src.overlays-='kaku.dmi'
			src.overlays-='kaku.dmi'
			src.overlays-='kakuA.dmi'
			src.overlays-='kakuA.dmi'
			src.overlays-='kakuA.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.shurikenskill=src.Mshurikenskill
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
				return
		else
			return

//==== JINCHURIKIS ====================================================================//
mob
	Jinc
		verb
			Powerup2()
				set category = "Bijuu"
				set name = "Usar Chakra Total Bijuu"
				if(usr.innibi==1||usr.insanbi==1||usr.inkaku==1||usr.inyonbi==1||usr.ingobi==1||usr.inrokubi==1||usr.insishibi==1||usr.inhachibi==1||usr.inkyuubi==1)
					return
				if(usr.rank =="Estudante"||usr.rank=="Genin")
					usr<<"Você precisa ser no mínimo Chuunin e ser escolhido como jinchuuriki para usar esta opção."
					return
				if(usr.rank =="Nukenin"||usr.rank=="Kage")
					return
				if(usr.inbadass==1)
					usr.overlays-='bdsanbi.dmi'
					usr.overlays-='bdyonbi.dmi'
					usr.overlays-='bdkyuu.dmi'
					usr.overlays-='bdgobi.dmi'
					usr.overlays-='bdroku.dmi'
					usr.overlays-='bdshuka.dmi'
					usr.overlays-='bdhachi.dmi'
					usr.overlays-='bdsichi.dmi'
					usr.overlays-='bdnibi.dmi'
					usr.health=usr.velhohp
					usr.chakra=usr.chakra
					usr.tai = usr.Mtai
					usr.gen = usr.Mgen
					usr.nin = usr.Mnin
					usr.shurikenskill = usr.Mshurikenskill
					usr.inbadass=0
					usr.verbs -= new /mob/jutsu/verb/GGKai()
					usr.verbs -= new /mob/Jinc/verb/BDamaJinchu()
					return
				if(usr.badass==1)
					usr.verbs += new /mob/jutsu/verb/GGKai()
					usr.verbs += new /mob/Jinc/verb/BDamaJinchu()
					usr.velhohp = usr.health
					usr.velhochakra = usr.chakra
					usr.Badass()
					return
				else
					usr<<"Você não possui o controle total de seu bijuu."


				if(usr.Nibi==1)
					if(usr.Nibi==1)
						usr.Nibi()
						return
				else
					usr<<"Você não possui o poder da 2caudas."
				if(usr.Sanbi==1)
					if(usr.Sanbi==1)
						usr.Sanbi()
						return
				else
					usr<<"Você não possui o poder da 3caudas."
				if(usr.Yonbi==1)
					if(usr.Yonbi==1)
						usr.Yonbi()
						return
				else
					usr<<"Você não possui o poder da 4caudas."
				if(usr.Gobi==1)
					if(usr.Gobi==1)
						usr.Gobi()
						return
				else
					usr<<"Você não possui o poder da 5caudas."
				if(usr.Rokubi==1)
					if(usr.Rokubi==1)
						usr.Rokubi()
						return
				else
					usr<<"Você não possui o poder da 6caudas."
				if(usr.Sishibi==1)
					if(usr.Sishibi==1)
						usr.Sishibi()
						return
				else
					usr<<"Você não possui o poder da 7caudas."
				if(usr.Hachibi==1)
					if(usr.Hachibi==1)
						usr.Hachibi()
						return
				else
					usr<<"Você não possui o poder da 8caudas."

				if(usr.Ichibi==1)
					if(usr.Ichibi==1)
						usr.Kaku()
						return
				else
					usr<<"Você não tem o Shukkaku."


mob
	proc
		Badass()
			if(src.cdchakratotal)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b></b>!"
				return
			src.inbadass=1
			if(src.cdchakratotal)return
			src.cdchakratotal=1
			spawn()src.Cooldown(1200,"Chakra Total")
			src.inbadass=1
			if(src.Juubi==1)
				src.health=src.health*7
				src.chakra=src.Mchakra*7
				src.tai = src.Mtai*7
				src.gen = src.Mgen*7
				src.nin = src.Mnin*7
				src.shurikenskill = src.Mshurikenskill*7
				src.icon='Juubijinchuuriki.dmi'
				return
			if(src.Kyuubi==1)
				src.health=src.health*3.3
				src.chakra=src.Mchakra*3.3
				src.tai = src.Mtai*3.3
				src.gen = src.Mgen*3.3
				src.nin = src.Mnin*3.3
				src.shurikenskill = src.Mshurikenskill*3.3
				src.overlays+='bdkyuu.dmi'
				return
			if(src.Nibi==1)
				src.health=src.health*2.6
				src.chakra=src.Mchakra*2.6
				src.tai = usr.Mtai*2.6
				src.gen = usr.Mgen*2.6
				src.nin = usr.Mnin*2.6
				src.shurikenskill = src.Mshurikenskill*2.6
				src.overlays+='bdnibi.dmi'
				return
			if(src.Sanbi==1)
				src.health=src.health*2.7
				src.chakra=src.Mchakra*2.7
				src.tai = usr.Mtai*2.7
				src.gen = usr.Mgen*2.7
				src.nin = usr.Mnin*2.7
				src.shurikenskill = src.Mshurikenskill*2.7
				src.overlays+='bdsanbi.dmi'
				return
			if(src.Yonbi==1)
				src.health=src.health*2.8
				src.chakra=src.Mchakra*2.8
				src.tai = usr.Mtai*2.8
				src.gen = usr.Mgen*2.8
				src.nin = usr.Mnin*2.8
				src.shurikenskill = src.Mshurikenskill*2.8
				src.overlays+='bdyonbi.dmi'
				return
			if(src.Gobi==1)
				src.health=src.health*2.9
				src.chakra=src.Mchakra*2.9
				src.tai = usr.Mtai*2.9
				src.gen = usr.Mgen*2.9
				src.nin = usr.Mnin*2.9
				src.shurikenskill = src.Mshurikenskill*2.9
				src.overlays+='bdgobi.dmi'
				return
			if(src.Rokubi==1)
				src.health=src.health*3
				src.chakra=src.Mchakra*3
				src.tai = usr.Mtai*3
				src.gen = usr.Mgen*3
				src.nin = usr.Mnin*3
				src.shurikenskill = src.Mshurikenskill*3
				src.overlays+='bdroku.dmi'
				return
			if(src.Sishibi==1)
				src.health=src.health*3.1
				src.chakra=src.Mchakra*3.1
				src.tai = usr.Mtai*3.1
				src.gen = usr.Mgen*3.1
				src.nin = usr.Mnin*3.1
				src.shurikenskill = src.Mshurikenskill*3.1
				src.overlays+='bdsichi.dmi'
				return
			if(src.Hachibi==1)
				src.health=src.health*3.2
				src.chakra=src.Mchakra*3.2
				src.tai = usr.Mtai*3.2
				src.gen = usr.Mgen*3.2
				src.nin = usr.Mnin*3.2
				src.shurikenskill = src.Mshurikenskill*3.2
				src.overlays+='bdhachi.dmi'
				return
			if(src.Ichibi==1)
				src.health=src.health*2.5
				src.chakra=src.Mchakra*2.5
				src.tai = usr.Mtai*2.5
				src.gen = usr.Mgen*2.5
				src.nin = usr.Mnin*2.5
				src.shurikenskill = src.Mshurikenskill*2.5
				src.overlays+='bdshuka.dmi'
				return