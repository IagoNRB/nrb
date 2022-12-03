
mob/var/treinotaiafk
mob/var/treinogenafk
mob/var/treinoninafk
mob/var/treinoarmafk



/*mob
	proc
		BunshinTreino()
			if(usr.treinotaiafk||usr.treinogenafk||usr.treinoninafk||usr.treinoarmafk)
				usr.cast = 1
				usr.KillBunshin()
				var/mob/treinos/TBunshin/K = new /mob/treinos/TBunshin
				if(K)
					K.name = "[usr.name]"
					K.original = usr
					K.icon = usr.icon
					K.overlays += usr.overlays
					K.loc = locate(usr.x-1, usr.y, usr.z)
					flick("smoke2",K)
					K.mexp = usr.mexp
					K.exp = usr.exp
					K.level = usr.level
					K.maxhealth = usr.maxhealth
					K.Mnin = usr.Mnin
					K.Mgen = usr.Mgen
					K.Mtai = usr.Mtai
					K.Mshurikenskill = usr.Mshurikenskill*/


mob
	treinos
		TBunshin
			human = 1
			NPC = 1
			imortal = 1
			proc/Die()
				flick("smoke2",src)
				del(src)





/*
proc
	SaveTBunshin()
		for(var/mob/treinos/TBunshin/K in world)
			var/savefile/F = new("Tbunshin.sav")
			F["tbunshinsave"] << tbunshinsave



proc
	LoadTBunshin()
		if(fexists("Tbunshin.sav"))
			var/savefile/F = new("Tbunshin.sav")
			F["tbunshinsave"] >> tbunshinsave*/

mob
	proc
		LoadTreino()
			if(fexists("treinos/[src.name]Treinando.sav"))
				var/savefile/F = new("treinos/[src.name]Treinando.sav")
				F["train"] >> src


mob
	proc
		SalvarTreino()
			var/savefile/F = new("players/[src.name]Treinando.sav")
			F["train"] << src



mob
	proc
		DeleteTreino()
			if(fexists("treinos/[src.name]Treinando.sav"))
				sleep(10)
				fdel("treinos/[src.name]Treinando.sav")



mob/var/mob/train





obj
	LogAFKTAI
		icon = 'turfsn.dmi'
		icon_state = "light2"
		density = 1
		verb
			TreinoTaioff()
				set category ="Treinamento AFK"
				set name ="Treinar Taijutsu AFK"
				set src in oview(1)
				if(usr.level == 1000)
					usr<<"Você já chegou ao level máximo."
					return
				if(usr.treinogenafk||usr.treinoninafk||usr.treinoarmafk)
					usr<<"Você está treinando afk em outro stats!"
					return
				if(usr.Mtai >= 100000000)
					usr<<"Você já chegou ao máximo de Taijutsu."
					return
				if(usr.rank == "Estudante"||usr.rank == "Genin")
					if(usr.level >=325)
						usr<<"Você já chegou ao level máximo como Genin."
						return
				if(usr.rank == "Chuunin")
					if(usr.level >=450)
						usr<<"Você já chegou ao level máximo como Chuunin."
						return
				if(usr.deslogado)
					usr<<"Você precisa logar primeiro para treinar."
					return
				if(usr.armastreino)
					usr<<"Não enquanto treina armas"
					return
				if(usr.cast)
					usr<<"Aguarde 1min para treinar novamente!"
					return
				if(usr.resting)
					return
				if(usr.DefesaAbsoluta||usr.Kaiten||usr.froze||usr.def||usr.kawa)
					usr<<"Você está paralisado"
					return
				if(usr.caught)
					usr<<"Você foi capturado"
					return
				if(usr.varmastreino)
					usr<<"Não enquanto treina armas"
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
				if(usr.treinamento)
					usr<<"Não enquanto upa tai"
					return
				if(usr.concing)
					usr<<"Não enquanto se concentra"
					return
				if(usr.libering)
					usr<<"Não enquanto libera chakra"
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
				if(usr.vtaitreino)
					usr<<"Não enquanto treina taijutsu vip"
					return
				if(usr.LogSecretotaitrain||usr.LogSecretonintrain||usr.LogSecretogentrain||usr.LogSecretoarmtrain||usr.log10nintrain||usr.log10gentrain||usr.log10taitrain||usr.log10armtrain||usr.log4nintrain||usr.log4gentrain||usr.log4taitrain||usr.log4armtrain||usr.Log5armtrain||usr.Log11armtrain)
					usr<<"Você esta ocupado"
					return
				if(usr.canLogSecretotaitrain||usr.canLogSecretonintrain||usr.canLogSecretogentrain||usr.canLogSecretoarmtrain||usr.canlog10nintrain||usr.canlog10gentrain||usr.canlog10taitrain||usr.canlog10armtrain||usr.canlog4nintrain||usr.canlog4gentrain||usr.canlog4taitrain||usr.canlog4armtrain||usr.canLog5armtrain||usr.canLog11armtrain)
					return
				if(usr.cangen)
					return
				if(usr.cannin)
					return
				if(usr.vcannin)
					return
				if(usr.canmed)
					return
				if(usr.vcanmed)
					return
				if(usr.vcangen)
					return
				if(usr.vcanarmas)
					return
				if(usr.canvtai)
					return
				if(usr.cantai)
					return
				if(usr.canarmas)
					return
				if(usr.treinotaiafk)
					usr.LoadTreino()
					for (var/mob/treinos/TBunshin/K in world)
						if(K.name == "[usr.name]")
							usr << output("Você parou de treinar Taijutsu AFK.","output2.sistema")
							usr.cast=1
							if(K.mexp > usr.mexp)
								usr.mexp = K.mexp
							if(K.exp > usr.exp)
								usr.exp = K.exp
							if(K.level > usr.level)
								usr.level = K.level
							if(K.maxhealth > usr.maxhealth)
								usr.maxhealth = K.maxhealth
							if(K.Mtai > usr.Mtai)
								usr.Mtai = K.Mtai
							if(K.Mstamina > usr.Mstamina)
								usr.Mstamina = K.Mstamina
							if(usr.veloN > K.veloN)
								K.veloN = usr.veloN
							usr.stamina = usr.Mstamina
							usr.health = usr.maxhealth
							usr.tai = usr.Mtai
							K.treinotaiafk=0
							del(K)
							usr.SalvarAgora()
							usr.treinotaiafk=0
							usr.move=1
							usr.Frozen=0
							usr.DeleteTreino()
							//SaveTBunshin()
							spawn(600)
								usr.cast=0
								usr<<output("Já pode treinar AFK novamente!","output2.sistema")
				else
					usr.treinotaiafk=1
					usr.move=0
					usr.Frozen=1
					usr << output("Você começou a treinar Taijutsu AFK.","output2.sistema")
					usr.SalvarTreino()
					var/mob/treinos/TBunshin/K = new /mob/treinos/TBunshin
					if(K)
						K.name = "[usr.name]"
						K.seals = usr.seals
						K.rank = usr.rank
						K.original = usr
						K.icon = usr.icon
						K.overlays += usr.overlays
						K.loc = locate(usr.x-1, usr.y, usr.z)
						flick("smoke2",K)
						K.mexp = usr.mexp
						K.exp = usr.exp
						K.level = usr.level
						K.maxhealth = usr.maxhealth
						K.Mchakra = usr.Mchakra
						K.Mnin = usr.Mnin
						K.Mgen = usr.Mgen
						K.Mtai = usr.Mtai
						K.Mshurikenskill = usr.Mshurikenskill
						K.Mstamina = usr.Mstamina
						K.veloN = usr.veloN
						K.chakraN = usr.chakraN
						if(usr.Uzumaki)
							K.Uzumaki=1
						if(usr.capstaextendido)
							K.capstaextendido=1
						K.treinotaiafk=1
					while(K.treinotaiafk)
						sleep(200)
						if(K) if(K.treinotaiafk==0) return
						if(K.stamina > 5)
							if(K.level <1000)
								if(K.Mtai<100000000)
									if(K.rank == "Estudante"&&K.level <325||K.rank == "Genin"&&K.level <325||K.rank == "Chuunin"&&K.level <450||K.seals>=100&&K.level<1000)
										K.Mtai+=10.9
										K.exp+=102
										K.Levelup()
									if(K.maxhealth<1000000&&K.seals>=100||K.maxhealth<500000&&K.rank=="Genin"||K.maxhealth<750000&&K.rank=="Nukenin"&&K.seals<=99||K.maxhealth<750000&&K.rank=="Chuunin")
										K.maxhealth += 9
									if(K.veloN<200000)
										K.veloN++
									if(!K.capstaextendido)
										if(K.Mstamina<200000)
											K.Mstamina += rand(3,6)
									else
										if(K.capstaextendido)
											if(K.Mstamina<K.maxhealth/4)
												K.Mstamina += rand(3,6)
						K.SalvarTreino()
						//SaveTBunshin()
						if(K) if(K.treinotaiafk==0) return




obj
	LogAFKARMA
		icon = 'turfsn.dmi'
		icon_state = "light2"
		density = 1
		verb
			TreinoArmoff()
				set category ="Treinamento AFK"
				set name ="Treinar Armas AFK"
				set src in oview(1)
				if(usr.level == 1000)
					usr<<"Você já chegou ao level máximo."
					return
				if(usr.treinogenafk||usr.treinoninafk||usr.treinotaiafk)
					usr<<"Você está treinando afk em outro stats!"
					return
				if(usr.Mshurikenskill >= 100000000)
					usr<<"Você já chegou ao máximo de Armas."
					return
				if(usr.rank == "Estudante"||usr.rank == "Genin")
					if(usr.level >=325)
						usr<<"Você já chegou ao level máximo como Genin."
						return
				if(usr.rank == "Chuunin")
					if(usr.level >=450)
						usr<<"Você já chegou ao level máximo como Chuunin."
						return
				if(usr.deslogado)
					usr<<"Você precisa logar primeiro para treinar."
					return
				if(usr.armastreino)
					usr<<"Não enquanto treina armas"
					return
				if(usr.cast)
					usr<<"Aguarde 1min para treinar novamente!"
					return
				if(usr.resting)
					return
				if(usr.DefesaAbsoluta||usr.Kaiten||usr.froze||usr.def||usr.kawa)
					usr<<"Você está paralisado"
					return
				if(usr.caught)
					usr<<"Você foi capturado"
					return
				if(usr.varmastreino)
					usr<<"Não enquanto treina armas"
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
				if(usr.treinamento)
					usr<<"Não enquanto upa tai"
					return
				if(usr.concing)
					usr<<"Não enquanto se concentra"
					return
				if(usr.libering)
					usr<<"Não enquanto libera chakra"
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
				if(usr.vtaitreino)
					usr<<"Não enquanto treina taijutsu vip"
					return
				if(usr.LogSecretotaitrain||usr.LogSecretonintrain||usr.LogSecretogentrain||usr.LogSecretoarmtrain||usr.log10nintrain||usr.log10gentrain||usr.log10taitrain||usr.log10armtrain||usr.log4nintrain||usr.log4gentrain||usr.log4taitrain||usr.log4armtrain||usr.Log5armtrain||usr.Log11armtrain)
					usr<<"Você esta ocupado"
					return
				if(usr.canLogSecretotaitrain||usr.canLogSecretonintrain||usr.canLogSecretogentrain||usr.canLogSecretoarmtrain||usr.canlog10nintrain||usr.canlog10gentrain||usr.canlog10taitrain||usr.canlog10armtrain||usr.canlog4nintrain||usr.canlog4gentrain||usr.canlog4taitrain||usr.canlog4armtrain||usr.canLog5armtrain||usr.canLog11armtrain)
					return
				if(usr.cangen)
					return
				if(usr.cannin)
					return
				if(usr.vcannin)
					return
				if(usr.canmed)
					return
				if(usr.vcanmed)
					return
				if(usr.vcangen)
					return
				if(usr.vcanarmas)
					return
				if(usr.canvtai)
					return
				if(usr.cantai)
					return
				if(usr.canarmas)
					return
				if(usr.treinoarmafk)
					usr.LoadTreino()
					for (var/mob/treinos/TBunshin/K in world)
						if(K.name == "[usr.name]")
							usr << output("Você parou de treinar armas AFK.","output2.sistema")
							usr.cast=1
							if(K.mexp > usr.mexp)
								usr.mexp = K.mexp
							if(K.exp > usr.exp)
								usr.exp = K.exp
							if(K.level > usr.level)
								usr.level = K.level
							if(K.maxhealth > usr.maxhealth)
								usr.maxhealth = K.maxhealth
							if(K.Mshurikenskill > usr.Mshurikenskill)
								usr.Mshurikenskill = K.Mshurikenskill
							if(K.Mstamina > usr.Mstamina)
								usr.Mstamina = K.Mstamina
							if(K.veloN > usr.veloN)
								usr.veloN = K.veloN
							usr.stamina = usr.Mstamina
							usr.health = usr.maxhealth
							usr.shurikenskill = usr.Mshurikenskill
							K.treinoarmafk=0
							//K.DeleteTreino()
							del(K)
							usr.SalvarAgora()
							usr.treinoarmafk=0
							usr.move=1
							usr.Frozen=0
							usr.DeleteTreino()
							//SaveTBunshin()
							spawn(600)
								usr.cast=0
								usr<<output("Já pode treinar AFK novamente!","output2.sistema")
				else
					usr.treinoarmafk=1
					usr.move=0
					usr.Frozen=1
					usr << output("Você começou a treinar armas AFK.","output2.sistema")
					usr.SalvarTreino()
					var/mob/treinos/TBunshin/K = new /mob/treinos/TBunshin
					if(K)
						K.name = "[usr.name]"
						K.seals = usr.seals
						K.rank = usr.rank
						K.original = usr
						K.icon = usr.icon
						K.overlays += usr.overlays
						K.loc = locate(usr.x-1, usr.y, usr.z)
						flick("smoke2",K)
						K.mexp = usr.mexp
						K.exp = usr.exp
						K.level = usr.level
						K.maxhealth = usr.maxhealth
						K.Mchakra = usr.Mchakra
						K.Mnin = usr.Mnin
						K.Mgen = usr.Mgen
						K.Mtai = usr.Mtai
						K.Mshurikenskill = usr.Mshurikenskill
						K.Mstamina = usr.Mstamina
						K.veloN = usr.veloN
						K.chakraN = usr.chakraN
						if(usr.Uzumaki)
							K.Uzumaki=1
						if(usr.capstaextendido)
							K.capstaextendido=1
						K.treinoarmafk=1
					while(K.treinoarmafk)
						sleep(200)
						if(K) if(K.treinoarmafk==0) return
						if(K.stamina > 5)
							if(K.level <1000)
								if(K.Mshurikenskill<100000000)
									if(K.rank == "Estudante"&&K.level <325||K.rank == "Genin"&&K.level <325||K.rank == "Chuunin"&&K.level <450||K.seals>=100&&K.level<1000)
										K.Mshurikenskill+=10.9
										K.exp+=102
										K.Levelup()
									if(K.maxhealth<1000000&&K.seals>=100||K.maxhealth<500000&&K.rank=="Genin"||K.maxhealth<750000&&K.rank=="Nukenin"&&K.seals<=99||K.maxhealth<750000&&K.rank=="Chuunin")
										K.maxhealth += 9
									if(K.veloN<200000)
										K.veloN++
									if(!K.capstaextendido)
										if(K.Mstamina<200000)
											K.Mstamina += rand(3,6)
									else
										if(K.capstaextendido)
											if(K.Mstamina<K.maxhealth/4)
												K.Mstamina += rand(3,6)
						K.SalvarTreino()
						//SaveTBunshin()
						if(K) if(K.treinoarmafk==0) return




obj
	LogAFKNIN
		icon = 'turfsn.dmi'
		icon_state = "light2"
		density = 1
		verb
			TreinoNinoff()
				set category ="Treinamento AFK"
				set name ="Treinar Ninjutsu AFK"
				set src in oview(1)
				if(usr.level == 1000)
					usr<<"Você já chegou ao level máximo."
					return
				if(usr.treinogenafk||usr.treinotaiafk||usr.treinoarmafk)
					usr<<"Você está treinando afk em outro stats!"
					return
				if(usr.Mnin >= 100000000)
					usr<<"Você já chegou ao máximo de Ninjutsu."
					return
				if(usr.rank == "Estudante"||usr.rank == "Genin")
					if(usr.level >=325)
						usr<<"Você já chegou ao level máximo como Genin."
						return
				if(usr.rank == "Chuunin")
					if(usr.level >=450)
						usr<<"Você já chegou ao level máximo como Chuunin."
						return
				if(usr.deslogado)
					usr<<"Você precisa logar primeiro para treinar."
					return
				if(usr.armastreino)
					usr<<"Não enquanto treina armas"
					return
				if(usr.cast)
					usr<<"Aguarde 1min para treinar novamente!"
					return
				if(usr.resting)
					return
				if(usr.DefesaAbsoluta||usr.Kaiten||usr.froze||usr.def||usr.kawa)
					usr<<"Você está paralisado"
					return
				if(usr.caught)
					usr<<"Você foi capturado"
					return
				if(usr.varmastreino)
					usr<<"Não enquanto treina armas"
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
				if(usr.treinamento)
					usr<<"Não enquanto upa tai"
					return
				if(usr.concing)
					usr<<"Não enquanto se concentra"
					return
				if(usr.libering)
					usr<<"Não enquanto libera chakra"
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
				if(usr.vtaitreino)
					usr<<"Não enquanto treina taijutsu vip"
					return
				if(usr.LogSecretotaitrain||usr.LogSecretonintrain||usr.LogSecretogentrain||usr.LogSecretoarmtrain||usr.log10nintrain||usr.log10gentrain||usr.log10taitrain||usr.log10armtrain||usr.log4nintrain||usr.log4gentrain||usr.log4taitrain||usr.log4armtrain||usr.Log5armtrain||usr.Log11armtrain)
					usr<<"Você esta ocupado"
					return
				if(usr.canLogSecretotaitrain||usr.canLogSecretonintrain||usr.canLogSecretogentrain||usr.canLogSecretoarmtrain||usr.canlog10nintrain||usr.canlog10gentrain||usr.canlog10taitrain||usr.canlog10armtrain||usr.canlog4nintrain||usr.canlog4gentrain||usr.canlog4taitrain||usr.canlog4armtrain||usr.canLog5armtrain||usr.canLog11armtrain)
					return
				if(usr.cangen)
					return
				if(usr.cannin)
					return
				if(usr.vcannin)
					return
				if(usr.canmed)
					return
				if(usr.vcanmed)
					return
				if(usr.vcangen)
					return
				if(usr.vcanarmas)
					return
				if(usr.canvtai)
					return
				if(usr.cantai)
					return
				if(usr.canarmas)
					return
				if(usr.treinoninafk)
					usr.LoadTreino()
					for (var/mob/treinos/TBunshin/K in world)
						if(K.name == "[usr.name]")
							usr << output("Você parou de treinar Ninjutsu AFK.","output2.sistema")
							usr.cast=1
							if(K.mexp > usr.mexp)
								usr.mexp = K.mexp
							if(K.exp > usr.exp)
								usr.exp = K.exp
							if(K.level > usr.level)
								usr.level = K.level
							if(K.maxhealth > usr.maxhealth)
								usr.maxhealth = K.maxhealth
							if(K.Mnin > usr.Mnin)
								usr.Mnin = K.Mnin
							if(K.veloN > usr.veloN)
								usr.veloN = K.veloN
							if(K.chakraN > usr.chakraN)
								usr.chakraN = K.chakraN
							if(K.Mchakra > usr.Mchakra)
								usr.Mchakra = K.Mchakra
							usr.chakra = usr.Mchakra
							usr.health = usr.maxhealth
							usr.nin = usr.Mnin
							K.treinoninafk=0
							del(K)
							usr.SalvarAgora()
							usr.treinoninafk=0
							usr.move=1
							usr.Frozen=0
							usr.DeleteTreino()
							//SaveTBunshin()
							spawn(600)
								usr.cast=0
								usr<<output("Já pode treinar AFK novamente!","output2.sistema")
				else
					usr.treinoninafk=1
					usr.move=0
					usr.Frozen=1
					usr << output("Você começou a treinar Ninjutsu AFK.","output2.sistema")
					usr.SalvarTreino()
					var/mob/treinos/TBunshin/K = new /mob/treinos/TBunshin
					if(K)
						K.name = "[usr.name]"
						K.seals = usr.seals
						K.rank = usr.rank
						K.original = usr
						K.icon = usr.icon
						K.overlays += usr.overlays
						K.loc = locate(usr.x-1, usr.y, usr.z)
						flick("smoke2",K)
						K.mexp = usr.mexp
						K.exp = usr.exp
						K.level = usr.level
						K.maxhealth = usr.maxhealth
						K.Mchakra = usr.Mchakra
						K.Mnin = usr.Mnin
						K.Mgen = usr.Mgen
						K.Mtai = usr.Mtai
						K.Mshurikenskill = usr.Mshurikenskill
						K.Mstamina = usr.Mstamina
						K.veloN = usr.veloN
						K.chakraN = usr.chakraN
						if(usr.Uzumaki)
							K.Uzumaki=1
						if(usr.capstaextendido)
							K.capstaextendido=1
						K.treinoninafk=1
					while(K.treinoninafk)
						sleep(200)
						if(K) if(K.treinoninafk==0) return
						if(K.stamina > 5)
							if(K.level <1000)
								if(K.Mnin<100000000)
									if(K.rank == "Estudante"&&K.level <325||K.rank == "Genin"&&K.level <325||K.rank == "Chuunin"&&K.level <450||K.seals>=100&&K.level<1000)
										K.Mnin+=10.9
										K.exp+=102
										K.Levelup()
									if(K.maxhealth<1000000&&K.seals>=100||K.maxhealth<500000&&K.rank=="Genin"||K.maxhealth<750000&&K.rank=="Nukenin"&&K.seals<=99||K.maxhealth<750000&&K.rank=="Chuunin")
										K.maxhealth += 9
									if(K.veloN<200000)
										K.veloN++
									if(K.chakraN < 200000)
										K.chakraN+=4
									if(K.Uzumaki)
										if(!K.capstaextendido)
											if(K.Mchakra <= 250000)
												K.Mchakra += rand(4,8)
										else
											if(K.Mchakra <= 300000)
												K.Mchakra += rand(4,8)
									else
										if(!K.capstaextendido)
											if(K.Mchakra <= 200000)
												K.Mchakra += rand(4,8)
										else
											if(K.Mchakra <= 250000)
												K.Mchakra += rand(4,8)
						K.SalvarTreino()
						//SaveTBunshin()
						if(K) if(K.treinoninafk==0) return




obj
	LogAFKGEN
		icon = 'turfsn.dmi'
		icon_state = "light2"
		density = 1
		verb
			TreinoGenoff()
				set category ="Treinamento AFK"
				set name ="Treinar Genjutsu AFK"
				set src in oview(1)
				if(usr.level == 1000)
					usr<<"Você já chegou ao level máximo."
					return
				if(usr.treinoninafk||usr.treinotaiafk||usr.treinoarmafk)
					usr<<"Você está treinando afk em outro stats!"
					return
				if(usr.Mtai >= 100000000)
					usr<<"Você já chegou ao máximo de Taijutsu."
					return
				if(usr.rank == "Estudante"||usr.rank == "Genin")
					if(usr.level >=325)
						usr<<"Você já chegou ao level máximo como Genin."
						return
				if(usr.rank == "Chuunin")
					if(usr.level >=450)
						usr<<"Você já chegou ao level máximo como Chuunin."
						return
				if(usr.deslogado)
					usr<<"Você precisa logar primeiro para treinar."
					return
				if(usr.armastreino)
					usr<<"Não enquanto treina armas"
					return
				if(usr.cast)
					usr<<"Aguarde 1min para treinar novamente!"
					return
				if(usr.resting)
					return
				if(usr.DefesaAbsoluta||usr.Kaiten||usr.froze||usr.def||usr.kawa)
					usr<<"Você está paralisado"
					return
				if(usr.caught)
					usr<<"Você foi capturado"
					return
				if(usr.varmastreino)
					usr<<"Não enquanto treina armas"
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
				if(usr.treinamento)
					usr<<"Não enquanto upa tai"
					return
				if(usr.concing)
					usr<<"Não enquanto se concentra"
					return
				if(usr.libering)
					usr<<"Não enquanto libera chakra"
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
				if(usr.vtaitreino)
					usr<<"Não enquanto treina taijutsu vip"
					return
				if(usr.LogSecretotaitrain||usr.LogSecretonintrain||usr.LogSecretogentrain||usr.LogSecretoarmtrain||usr.log10nintrain||usr.log10gentrain||usr.log10taitrain||usr.log10armtrain||usr.log4nintrain||usr.log4gentrain||usr.log4taitrain||usr.log4armtrain||usr.Log5armtrain||usr.Log11armtrain)
					usr<<"Você esta ocupado"
					return
				if(usr.canLogSecretotaitrain||usr.canLogSecretonintrain||usr.canLogSecretogentrain||usr.canLogSecretoarmtrain||usr.canlog10nintrain||usr.canlog10gentrain||usr.canlog10taitrain||usr.canlog10armtrain||usr.canlog4nintrain||usr.canlog4gentrain||usr.canlog4taitrain||usr.canlog4armtrain||usr.canLog5armtrain||usr.canLog11armtrain)
					return
				if(usr.cangen)
					return
				if(usr.cannin)
					return
				if(usr.vcannin)
					return
				if(usr.canmed)
					return
				if(usr.vcanmed)
					return
				if(usr.vcangen)
					return
				if(usr.vcanarmas)
					return
				if(usr.canvtai)
					return
				if(usr.cantai)
					return
				if(usr.canarmas)
					return
				if(usr.treinogenafk)
					usr.LoadTreino()
					for (var/mob/treinos/TBunshin/K in world)
						if(K.name == "[usr.name]")
							usr << output("Você parou de treinar Genjutsu AFK.","output2.sistema")
							usr.cast=1
							if(K.mexp > usr.mexp)
								usr.mexp = K.mexp
							if(K.exp > usr.exp)
								usr.exp = K.exp
							if(K.level > usr.level)
								usr.level = K.level
							if(K.maxhealth > usr.maxhealth)
								usr.maxhealth = K.maxhealth
							if(K.Mnin > usr.Mnin)
								usr.Mgen = K.Mgen
							if(K.veloN > usr.veloN)
								usr.veloN = K.veloN
							if(K.chakraN > usr.chakraN)
								usr.chakraN = K.chakraN
							if(K.Mchakra > usr.Mchakra)
								usr.Mchakra = K.Mchakra
							usr.gen = usr.Mgen
							usr.chakra = usr.Mchakra
							usr.health = usr.maxhealth
							K.treinogenafk=0
							del(K)
							usr.SalvarAgora()
							usr.treinogenafk=0
							usr.move=1
							usr.Frozen=0
							usr.DeleteTreino()
						//	SaveTBunshin()
							//usr.DeleteTreino()
							spawn(600)
								usr.cast=0
								usr<<output("Já pode treinar AFK novamente!","output2.sistema")
				else
					usr.treinogenafk=1
					usr.move=0
					usr.Frozen=1
					usr << output("Você começou a treinar Genjutsu AFK.","output2.sistema")
					usr.SalvarTreino()
					var/mob/treinos/TBunshin/K = new /mob/treinos/TBunshin
					if(K)
						K.name = "[usr.name]"
						K.seals = usr.seals
						K.rank = usr.rank
						K.original = usr
						K.icon = usr.icon
						K.overlays += usr.overlays
						K.loc = locate(usr.x-1, usr.y, usr.z)
						flick("smoke2",K)
						K.mexp = usr.mexp
						K.exp = usr.exp
						K.level = usr.level
						K.maxhealth = usr.maxhealth
						K.Mchakra = usr.Mchakra
						K.Mnin = usr.Mnin
						K.Mgen = usr.Mgen
						K.Mtai = usr.Mtai
						K.Mshurikenskill = usr.Mshurikenskill
						K.Mstamina = usr.Mstamina
						K.veloN = usr.veloN
						K.chakraN = usr.chakraN
						if(usr.Uzumaki)
							K.Uzumaki=1
						if(usr.capstaextendido)
							K.capstaextendido=1
						K.treinogenafk=1
					while(K.treinogenafk)
						sleep(200)
						if(K) if(K.treinogenafk==0) return
						if(K.stamina > 5)
							if(K.level <1000)
								if(K.Mgen<100000000)
									if(K.rank == "Estudante"&&K.level <325||K.rank == "Genin"&&K.level <325||K.rank == "Chuunin"&&K.level <450||K.seals>=100&&K.level<1000)
										K.Mgen+=10.9
										K.exp+=102
										K.Levelup()
									if(K.maxhealth<1000000&&K.seals>=100||K.maxhealth<500000&&K.rank=="Genin"||K.maxhealth<750000&&K.rank=="Nukenin"&&K.seals<=99||K.maxhealth<750000&&K.rank=="Chuunin")
										K.maxhealth += 9
									if(K.veloN<200000)
										K.veloN++
									if(K.chakraN < 200000)
										K.chakraN+=4
									if(!K.capstaextendido)
										if(K.Mstamina<200000)
											K.Mstamina += rand(3,6)
									else
										if(K.capstaextendido)
											if(K.Mstamina<K.maxhealth/4)
												K.Mstamina += rand(3,6)
									if(K.Uzumaki)
										if(!K.capstaextendido)
											if(K.Mchakra <= 250000)
												K.Mchakra += rand(4,8)
										else
											if(K.Mchakra <= 300000)
												K.Mchakra += rand(4,8)
									else
										if(!K.capstaextendido)
											if(K.Mchakra <= 200000)
												K.Mchakra += rand(4,8)
										else
											if(K.Mchakra <= 250000)
												K.Mchakra += rand(4,8)
						K.SalvarTreino()
					//	SaveTBunshin()
						if(K) if(K.treinogenafk==0) return



mob/verb/VerClonesOn()
	set name = "Ver Clones AFK"
	usr<<output("Clones upando AFK:","output2.sistema")
	for (var/mob/treinos/TBunshin/K in world)
		usr<<output("{\icon[K][K.name],Rank - [K.rank]","output2.sistema")