
mob/var
	Hatake = 0
mob/player/uchiha
	Uchiha=1
	Realplayer = 1
	human = 1
	Clan = "Uchiha"
	Inuzuka=0
	Gaaraclan=0
	Kaguya=0
	Hyuuga=0
	Nara=0
	NonClan=0
	Aburame=0
	Akimichi = 0
	Kamizuri=0
mob/player/nonclan
	NonClan=1
	Realplayer = 1
	human = 1
	Clan = "Non-Clan"
	Inuzuka=0
	Gaaraclan=0
	Kaguya=0
	Hyuuga=0
	Nara=0
	Uchiha=0
	Aburame=0
	Akimichi = 0
	Kamizuri=0
mob/player/nara
	Nara=1
	Realplayer = 1
	human = 1
	Clan = "Nara"
	Inuzuka=0
	Gaaraclan=0
	Kaguya=0
	Hyuuga=0
	NonClan=0
	Uchiha=0
	Aburame=0
	Akimichi = 0
	Kamizuri=0
mob/player/Hyuuga
	Hyuuga=1
	Realplayer = 1
	human = 1
	Clan = "Hyuuga"
	Inuzuka=0
	Gaaraclan=0
	Kaguya=0
	Nara=0
	NonClan=0
	Uchiha=0
	Aburame=0
	Akimichi = 0
	Kamizuri=0
mob/player/kaguya
	Kaguya=1
	Realplayer = 1
	human = 1
	Clan = "Kaguya"
	Inuzuka=0
	Gaaraclan=0
	Hyuuga=0
	Nara=0
	NonClan=0
	Uchiha=0
	Aburame=0
	Akimichi = 0
	Kamizuri=0
mob/player/Gaara
	Gaaraclan=1
	Realplayer = 1
	human = 1
	Clan = "Gaara"
	Inuzuka=0
	Kaguya=0
	Hyuuga=0
	Nara=0
	NonClan=0
	Uchiha=0
	Aburame=0
	Akimichi = 0
	Kamizuri=0
mob/player/Inuzuka
	Inuzuka=1
	Realplayer = 1
	human = 1
	Clan = "Inuzuka"
	Gaaraclan=0
	Kaguya=0
	Hyuuga=0
	Nara=0
	NonClan=0
	Uchiha=0
	Aburame=0
	Akimichi = 0
	Kamizuri=0
mob/player/Akimichi
	Akimichi=1
	Realplayer = 1
	human = 1
	Clan = "Akimichi"
	Inuzuka=0
	Gaaraclan=0
	Kaguya=0
	Hyuuga=0
	Nara=0
	NonClan=0
	Uchiha=0
	Aburame=0
	Kamizuri=0
mob/player/Haku
	Haku=1
	Realplayer = 1
	human = 1
	Clan = "Haku"
	Akimichi=0
	Inuzuka=0
	Gaaraclan=0
	Kaguya=0
	Hyuuga=0
	Nara=0
	NonClan=0
	Uchiha=0
	Aburame=0
	Kamizuri=0
mob/player/Aburame
	Aburame=1
	Realplayer = 1
	Konchuu = 10
	human = 1
	Clan = "Aburame"
	Haku = 0
	Akimichi=0
	Inuzuka=0
	Gaaraclan=0
	Kaguya=0
	Hyuuga=0
	Nara=0
	NonClan=0
	Uchiha=0
	Kamizuri=0
mob/player/Kamizuri
	Kamizuri=1
	Aburame=0
	Realplayer = 1
	Konchuu = 10
	human = 1
	Clan = "Kamizuri"
	Haku = 0
	Akimichi=0
	Inuzuka=0
	Gaaraclan=0
	Kaguya=0
	Hyuuga=0
	Nara=0
	NonClan=0
	Uchiha=0
mob/player/Hatake
	Hatake=1
	Realplayer = 1
	Konchuu = 10
	human = 1
	Clan = "Hatake"
	Haku = 0
	Akimichi=0
	Inuzuka=0
	Gaaraclan=0
	Kaguya=0
	Hyuuga=0
	Nara=0
	NonClan=0
	Uchiha=0
	Kamizuri=0
	Aburame=0


mob
	proc
		updateChakra()
			var/percent=round(src.chakra/src.Mchakra*100,10)
			if(percent>100) percent=100
			if(percent<0) percent=0
			for(var/obj/Barrachakra/o in src.client.screen)
				o.icon_state=num2text(percent)
			spawn(10)
				src.updateChakra()
	proc
		updateHealth()
			var/percent=round(src.health/src.maxhealth*100,10)
			if(percent>100) percent=100
			if(percent<0) percent=0
			for(var/obj/Barrahp/o in src.client.screen)
				o.icon_state=num2text(percent)
			spawn(10)
				src.updateHealth()
	proc
		updateStamina()
			var/percent=round(src.stamina/src.Mstamina*100,10)
			if(percent>100) percent=100
			if(percent<0) percent=0
			for(var/obj/Barrast/o in src.client.screen)
				o.icon_state=num2text(percent)
			spawn(10)
				src.updateStamina()
mob
	proc
		atualizar()
			var/percent=round(src.stamina/src.Mstamina*100,10)
			if(percent>100) percent = 100
			if(percent<0) percent = 0

			for(var/obj/Barrast/o in src.client.screen)
				o.icon_state=num2text(percent)
			percent=round(src.chakra/src.Mchakra*100,10)
			if(percent>100) percent=100
			if(percent<0) percent=0

			for(var/obj/nada/o in src.client.screen)
				o.icon_state=num2text(percent)
			percent=round(src.chakra/src.Mchakra*100,10)
			if(percent>100) percent=100
			if(percent<0) percent=0
			for(var/obj/Barrachakra/o in src.client.screen)
				o.icon_state=num2text(percent)
			percent=round(src.health/src.maxhealth*100,10)
			if(percent>100) percent=100
			if(percent<0) percent=0
			for(var/obj/Barrahp/o in src.client.screen)
				o.icon_state=num2text(percent)
			spawn(50)
				src.atualizar()
		colocar_hud()
			new/obj/Barrast/stamina_02(src.client)
			new/obj/Barrast/stamina_03(src.client)
			new/obj/Barrahp/health_02(src.client)
			new/obj/Barrahp/health_03(src.client)
			new/obj/Barrachakra/chakrar_02(src.client)
			new/obj/Barrachakra/chakrar_03(src.client)
			src.atualizar()

obj
	nada
		nada1
			icon='ADM.dmi'
