mob/var/tmp/LogSecretotaitrain = 0
mob/var/tmp/LogSecretogentrain = 0
mob/var/tmp/LogSecretonintrain = 0
mob/var/tmp/LogSecretoarmtrain = 0

mob/var/tmp/canLogSecretotaitrain = 0
mob/var/tmp/canLogSecretogentrain = 0
mob/var/tmp/canLogSecretonintrain = 0
mob/var/tmp/canLogSecretoarmtrain = 0



obj/
	LogSecreto
		icon = 'Tronco.dmi'
		icon_state = "2"
		density = 1
		verb
			ArmEsp()
				set name = "Treinamento de Taijutsu Especial"
				set category = "Treinamento"
				set src in oview(1)
				if(usr.level<=99)
					usr<<"Voc� � muito fraco para treinar aqui!"
					return
				if(usr.level >= 1000)
					usr<<"Voc� j� chegou ao level m�ximo."
					return
				if(usr.rank == "Estudante"||usr.rank == "Genin")
					if(usr.level >=325)
						usr<<"Voc� j� chegou ao level m�ximo como Genin."
						return
				if(usr.rank == "Chuunin")
					if(usr.level >=450)
						usr<<"Voc� j� chegou ao level m�ximo como Chuunin."
						return
				if(usr.Mtai >= 100000000)
					usr<<"Voc� j� chegou ao m�ximo de Taijutsu."
					return
				if (usr.armastreino)
					usr<<"N�o enquanto treina armas"
					return
				if(usr.varmastreino)
					usr<<"N�o enquanto treina armas"
					return
				if(usr.cast)
					return
				if(usr.resting)
					return
				if (usr.meditating)
					usr<<"N�o enquanto medita"
					return
				if(usr.libering)
					usr<<"N�o enquanto libera stamina"
					return
				if(usr.vmeditating)
					usr<<"N�o enquanto medita"
					return
				if(usr.froze||usr.DefesaAbsoluta||usr.Kaiten||usr.def||usr.kawa)
					usr<<"Est� paralizado"
					return
				if(usr.vlibering)
					usr<<"N�o enquanto libera stamina"
					return
				if(usr.vconcing)
					usr<<"N�o enquanto concentra"
					return
				if(usr.concing)
					usr<<"N�o enquanto se concentra"
					return
				if(usr.canLogSecretotaitrain)
					usr<<"Espere para poder upar novamente"
					return
				if(usr.health<5)
					usr<<"Voc� est� cansado. Descanse."
					return
				if(usr.LogSecretonintrain||usr.LogSecretogentrain||usr.LogSecretoarmtrain||usr.log10nintrain||usr.log10gentrain||usr.log10taitrain||usr.log10armtrain||usr.log4nintrain||usr.log4gentrain||usr.log4taitrain||usr.log4armtrain||usr.Log5armtrain||usr.Log11armtrain)
					usr<<"Voc� esta ocupado"
					return
				if(usr.canLogSecretonintrain||usr.canLogSecretogentrain||usr.canLogSecretoarmtrain||usr.canlog10nintrain||usr.canlog10gentrain||usr.canlog10taitrain||usr.canlog10armtrain||usr.canlog4nintrain||usr.canlog4gentrain||usr.canlog4taitrain||usr.canlog4armtrain||usr.canLog5armtrain||usr.canLog11armtrain)
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
				if(usr.LogSecretotaitrain)
					usr.LogSecretotaitrain=0
					usr.canLogSecretotaitrain=1
					usr.Frozen=0
					usr << output("Voc� parou de treinar Taijutsu no LogSecreto.","output2.sistema")
					spawn(600)
						usr.canLogSecretotaitrain=0
				else
					usr<<output("Voc� come�a a Treinar Taijutsu no LogSecreto.","output2.sistema")
					usr.LogSecretotaitrain=1
					usr.Frozen=1
					while(usr.LogSecretotaitrain)
						if(usr.concing)
							usr.concing=0
							usr.LogSecretotaitrain=0
							return
						if(usr.libering)
							usr.libering=0
							usr.LogSecretotaitrain=0
							return
						if(usr.meditating)
							usr.meditating=0
							usr.LogSecretotaitrain=0
							return
						if(usr.vmeditating)
							usr.vmeditating=0
							usr.LogSecretotaitrain=0
							return
						if(usr.vconcing)
							usr.vconcing=0
							usr.LogSecretotaitrain=0
							return
						if(usr.vlibering)
							usr.vlibering=0
							usr.LogSecretotaitrain=0
							return
						if(usr.armastreino)
							usr.armastreino=0
							usr.LogSecretotaitrain=0
							return
						sleep(200)
						if(usr) if(usr.LogSecretotaitrain==0) return
						if(usr.stamina > 5)
							if(usr.Mtai<100000000)
								usr.exp+=135
								usr.Levelup()
								usr.Mtai+=14.4
								usr.stamina-=rand(1,2)
								usr.tai = usr.Mtai
								usr<<output("Seu Taijutsu aumentou...","output2.sistema")
							else
								usr<<output("Voc� j� chegou ao n�vel m�ximo.","output2.sistema")
						sleep(250)
						if(usr) if(usr.LogSecretotaitrain==0) return
						if(usr.stamina > 5)
							if(usr.Mtai<100000000)
								usr.exp+=135
								usr.Levelup()
								usr.Mtai+=14.4
								usr.stamina-=rand(1,2)
								usr.tai = usr.Mtai
								usr<<output("Seu Taijutsu aumentou...","output2.sistema")
							else
								usr<<output("Voc� j� chegou ao n�vel m�ximo.","output2.sistema")
						sleep(200)
						if(usr) if(usr.LogSecretotaitrain==0) return
						if(usr.stamina > 5)
							if(usr.Mtai<100000000)
								usr.exp+=135
								usr.Levelup()
								usr.Mtai+=14.4
								usr.stamina-=rand(1,2)
								usr.tai = usr.Mtai
								usr<<output("Seu Taijutsu aumentou...","output2.sistema")
							else
								usr<<output("Voc� j� chegou ao n�vel m�ximo.","output2.sistema")
						sleep(250)
						if(usr) if(usr.LogSecretotaitrain==0) return
						if(usr.stamina > 5)
							if(usr.Mtai<100000000)
								usr.exp+=135
								usr.Levelup()
								usr.Mtai+=14.4
								usr.stamina-=rand(1,2)
								usr.tai = usr.Mtai
								usr<<output("Seu Taijutsu aumentou...","output2.sistema")
							else
								usr<<output("Voc� j� chegou ao n�vel m�ximo.","output2.sistema")
						if(usr.stamina <= 5)
							usr<<output("Voc� parou de Treinar Taijutsu no LogSecreto.","output2.sistema")
							usr.LogSecretotaitrain=0
							usr.icon_state=null
							usr.canLogSecretotaitrain=1
							usr.Frozen=0
							spawn(600)
								usr.canLogSecretotaitrain=0



	LogArmSecreto
		icon = 'LogArmas.dmi'
		icon_state = "2"
		density = 1
		verb
			ArmEsp()
				set name = "Treinamento de Armas Especial"
				set category = "Treinamento"
				set src in oview(1)
				if(usr.level<=99)
					usr<<"Voc� � muito fraco para treinar aqui!"
					return
				if(usr.level >= 1000)
					usr<<"Voc� j� chegou ao level m�ximo."
					return
				if(usr.rank == "Estudante"||usr.rank == "Genin")
					if(usr.level >=325)
						usr<<"Voc� j� chegou ao level m�ximo como Genin."
						return
				if(usr.rank == "Chuunin")
					if(usr.level >=450)
						usr<<"Voc� j� chegou ao level m�ximo como Chuunin."
						return
				if(usr.Mshurikenskill >= 100000000)
					usr<<"Voc� j� chegou ao m�ximo de Armas."
					return
				if (usr.armastreino)
					usr<<"N�o enquanto treina armas"
					return
				if(usr.varmastreino)
					usr<<"N�o enquanto treina armas"
					return
				if(usr.cast)
					return
				if(usr.resting)
					return
				if (usr.meditating)
					usr<<"N�o enquanto medita"
					return
				if(usr.libering)
					usr<<"N�o enquanto libera stamina"
					return
				if(usr.vmeditating)
					usr<<"N�o enquanto medita"
					return
				if(usr.froze||usr.DefesaAbsoluta||usr.Kaiten||usr.def||usr.kawa)
					usr<<"Est� paralizado"
					return
				if(usr.vlibering)
					usr<<"N�o enquanto libera stamina"
					return
				if(usr.vconcing)
					usr<<"N�o enquanto concentra"
					return
				if(usr.concing)
					usr<<"N�o enquanto se concentra"
					return
				if(usr.canLogSecretoarmtrain)
					usr<<"Espere para poder upar novamente"
					return
				if(usr.health<5)
					usr<<"Voc� est� cansado. Descanse."
					return
				if(usr.LogSecretotaitrain||usr.LogSecretonintrain||usr.LogSecretogentrain||usr.log10nintrain||usr.log10gentrain||usr.log10taitrain||usr.log10armtrain||usr.log4nintrain||usr.log4gentrain||usr.log4taitrain||usr.log4armtrain||usr.Log5armtrain||usr.Log11armtrain)
					usr<<"Voc� esta ocupado"
					return
				if(usr.canLogSecretotaitrain||usr.canLogSecretonintrain||usr.canLogSecretogentrain||usr.canlog10nintrain||usr.canlog10gentrain||usr.canlog10taitrain||usr.canlog10armtrain||usr.canlog4nintrain||usr.canlog4gentrain||usr.canlog4taitrain||usr.canlog4armtrain||usr.canLog5armtrain||usr.canLog11armtrain)
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
				if(usr.LogSecretoarmtrain)
					usr.LogSecretoarmtrain=0
					usr.canLogSecretoarmtrain=1
					usr.Frozen=0
					usr << output("Voc� parou de treinar Armas no LogSecreto.","output2.sistema")
					spawn(600)
						usr.canLogSecretoarmtrain=0
				else
					usr<<output("Voc� come�a a Treinar Armas no LogSecreto.","output2.sistema")
					usr.LogSecretoarmtrain=1
					usr.Frozen=1
					while(usr.LogSecretoarmtrain)
						if(usr.concing)
							usr.concing=0
							usr.LogSecretoarmtrain=0
							return
						if(usr.libering)
							usr.libering=0
							usr.LogSecretoarmtrain=0
							return
						if(usr.meditating)
							usr.meditating=0
							usr.LogSecretoarmtrain=0
							return
						if(usr.vmeditating)
							usr.vmeditating=0
							usr.LogSecretoarmtrain=0
							return
						if(usr.vconcing)
							usr.vconcing=0
							usr.LogSecretoarmtrain=0
							return
						if(usr.vlibering)
							usr.vlibering=0
							usr.LogSecretoarmtrain=0
							return
						if(usr.armastreino)
							usr.armastreino=0
							usr.LogSecretoarmtrain=0
							return
						sleep(200)
						if(usr) if(usr.LogSecretoarmtrain==0) return
						if(usr.stamina > 5)
							if(usr.Mshurikenskill<100000000)
								usr.exp+=135
								usr.Levelup()
								usr.Mshurikenskill+=14.4
								usr.stamina-=rand(1,2)
								usr.shurikenskill = usr.Mshurikenskill
								usr<<output("Sua Per�cia com Armas aumentou.","output2.sistema")
							else
								usr<<output("Voc� j� chegou ao n�vel m�ximo.","output2.sistema")
						sleep(250)
						if(usr) if(usr.LogSecretoarmtrain==0) return
						if(usr.stamina > 5)
							if(usr.Mshurikenskill<100000000)
								usr.exp+=135
								usr.Levelup()
								usr.Mshurikenskill+=14.4
								usr.stamina-=rand(1,2)
								usr.shurikenskill = usr.Mshurikenskill
								usr<<output("Sua Per�cia com Armas aumentou.","output2.sistema")
							else
								usr<<output("Voc� j� chegou ao n�vel m�ximo.","output2.sistema")
						sleep(200)
						if(usr) if(usr.LogSecretoarmtrain==0) return
						if(usr.stamina > 5)
							if(usr.Mshurikenskill<100000000)
								usr.exp+=135
								usr.Levelup()
								usr.Mshurikenskill+=14.4
								usr.stamina-=rand(1,2)
								usr.shurikenskill = usr.Mshurikenskill
								usr<<output("Sua Per�cia com Armas aumentou.","output2.sistema")
							else
								usr<<output("Voc� j� chegou ao n�vel m�ximo.","output2.sistema")
						sleep(250)
						if(usr) if(usr.LogSecretoarmtrain==0) return
						if(usr.stamina > 5)
							if(usr.Mshurikenskill<100000000)
								usr.exp+=135
								usr.Levelup()
								usr.Mshurikenskill+=14.4
								usr.stamina-=rand(1,2)
								usr.shurikenskill = usr.Mshurikenskill
								usr<<output("Sua Per�cia com Armas aumentou.","output2.sistema")
							else
								usr<<output("Voc� j� chegou ao n�vel m�ximo.","output2.sistema")
						if(usr.stamina <= 5)
							usr<<output("Voc� parou de Treinar Armas no LogSecreto.","output2.sistema")
							usr.LogSecretoarmtrain=0
							usr.icon_state=null
							usr.canLogSecretoarmtrain=1
							usr.Frozen=0
							spawn(600)
								usr.canLogSecretoarmtrain=0



obj
	LogGenSecreto
		icon = 'npcsultimato.dmi'
		icon_state = "con"
		density = 1
		verb
			GenEsp()
				set name = "Treinar Genjutsu com S�bio"
				set category = "Treinamento"
				set src in oview(1)
				if(usr.level<=99)
					usr<<"Voc� � muito fraco para treinar aqui!"
					return
				if(usr.deslogado)
					usr<<"Voc� precisa logar primeiro para treinar."
					return
				if(usr.Mgen >= 100000000)
					usr<<"Voc� j� chegou ao m�ximo de Genjutsu."
					return
				if(usr.level >= 1000)
					usr<<"Voc� j� chegou ao level m�ximo."
					return
				if(usr.rank == "Estudante"||usr.rank == "Genin")
					if(usr.level >=325)
						usr<<"Voc� j� chegou ao level m�ximo como Genin."
						return
				if(usr.rank == "Chuunin")
					if(usr.level >=450)
						usr<<"Voc� j� chegou ao level m�ximo como Chuunin."
						return
				if (usr.armastreino)
					usr<<"N�o enquanto treina armas"
					return
				if(usr.varmastreino)
					usr<<"N�o enquanto treina armas"
					return
				if(usr.cast)
					return
				if(usr.resting)
					return
				if(usr.DefesaAbsoluta||usr.Kaiten||usr.froze||usr.def||usr.kawa)
					usr<<"Est� paralizado"
					return
				if (usr.meditating)
					usr<<"N�o enquanto medita"
					return
				if(usr.libering)
					usr<<"N�o enquanto libera stamina"
					return
				if(usr.vmeditating)
					usr<<"N�o enquanto medita"
					return
				if(usr.vlibering)
					usr<<"N�o enquanto libera stamina"
					return
				if(usr.vconcing)
					usr<<"N�o enquanto concentra"
					return
				if(usr.concing)
					usr<<"N�o enquanto se concentra"
					return
				if(usr.canLogSecretogentrain)
					usr<<"Espere para poder upar novamente"
					return
				if(usr.health<5)
					usr<<"Voc� est� cansado. Descanse."
					return
				if(usr.LogSecretotaitrain||usr.LogSecretonintrain||usr.LogSecretoarmtrain||usr.log10nintrain||usr.log10gentrain||usr.log10taitrain||usr.log10armtrain||usr.log4nintrain||usr.log4gentrain||usr.log4taitrain||usr.log4armtrain||usr.Log5armtrain||usr.Log11armtrain)
					usr<<"Voc� esta ocupado"
					return
				if(usr.canLogSecretotaitrain||usr.canLogSecretonintrain||usr.canLogSecretoarmtrain||usr.canlog10nintrain||usr.canlog10gentrain||usr.canlog10taitrain||usr.canlog10armtrain||usr.canlog4nintrain||usr.canlog4gentrain||usr.canlog4taitrain||usr.canlog4armtrain||usr.canLog5armtrain||usr.canLog11armtrain)
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
				if(usr.LogSecretogentrain)
					usr.LogSecretogentrain=0
					usr.canLogSecretogentrain=1
					usr.Frozen=0
					usr << output("Voc� parou de Treinar Genjutsu no LogSecreto.","output2.sistema")
					spawn(600)
						usr.canLogSecretogentrain=0
				else
					usr<<output("Voc� come�a a Treinar Genjutsu no LogSecreto.","output2.sistema")
					usr.LogSecretogentrain=1
					usr.Frozen=1
					while(usr.LogSecretogentrain)
						if(usr.concing)
							usr.concing=0
							usr.LogSecretogentrain=0
							return
						if(usr.libering)
							usr.libering=0
							usr.LogSecretogentrain=0
							return
						if(usr.meditating)
							usr.meditating=0
							usr.LogSecretogentrain=0
							return
						if(usr.vmeditating)
							usr.vmeditating=0
							usr.LogSecretogentrain=0
							return
						if(usr.vconcing)
							usr.vconcing=0
							usr.LogSecretogentrain=0
							return
						if(usr.vlibering)
							usr.vlibering=0
							usr.LogSecretogentrain=0
							return
						if(usr.armastreino)
							usr.armastreino=0
							usr.LogSecretogentrain=0
							return
						sleep(200)
						if(usr) if(usr.LogSecretogentrain==0) return
						if(usr.chakra > 5)
							if(usr.Mgen<100000000)
								usr.exp+=135
								usr.Levelup()
								usr.Mgen+=14.4
								usr.chakra-=rand(1,2)
								usr.gen = usr.Mgen
								usr<<output("Seu Genjtutsu aumentou.","output2.sistema")
							else
								usr<<output("Voc� j� chegou ao n�vel m�ximo.","output2.sistema")
						sleep(250)
						if(usr.LogSecretogentrain==0)
							return
						if(usr.chakra > 5)
							if(usr.Mgen<100000000)
								usr.exp+=135
								usr.Levelup()
								usr.Mgen+=14.4
								usr.chakra-=rand(1,2)
								usr.gen = usr.Mgen
								usr<<output("Seu Genjtutsu aumentou.","output2.sistema")
							else
								usr<<output("Voc� j� chegou ao n�vel m�ximo.","output2.sistema")
						sleep(200)
						if(usr) if(usr.LogSecretogentrain==0) return
						if(usr.chakra > 5)
							if(usr.Mgen<100000000)
								usr.exp+=135
								usr.Levelup()
								usr.Mgen+=14.4
								usr.chakra-=rand(1,2)
								usr.gen = usr.Mgen
								usr<<output("Seu Genjtutsu aumentou.","output2.sistema")
							else
								usr<<output("Voc� j� chegou ao n�vel m�ximo.","output2.sistema")
						sleep(250)
						if(usr) if(usr.LogSecretogentrain==0) return
						if(usr.chakra > 5)
							if(usr.Mgen<100000000)
								usr.exp+=135
								usr.Levelup()
								usr.Mgen+=14.4
								usr.stamina-=rand(1,2)
								usr.gen = usr.Mgen
								usr<<output("Seu Genjtutsu aumentou.","output2.sistema")
							else
								usr<<output("Voc� j� chegou ao n�vel m�ximo.","output2.sistema")
						if(usr.chakra <= 5)
							usr<<output("Voc� parou de Treinar Genjutsu no LogSecreto.","output2.sistema")
							usr.LogSecretogentrain=0
							usr.icon_state=null
							usr.canLogSecretogentrain=1
							usr.Frozen=0
							spawn(600)
								usr.canLogSecretogentrain=0





obj
	LogNinSecreto
		icon = 'waterclara.dmi'
		icon_state = "5"
		density = 1
		verb
			NinEsp()
				set name = "Treinar Ninjutsu na Cachoeira"
				set category = "Treinamento"
				set src in oview(1)
				if(usr.level<=99)
					usr<<"Voc� � muito fraco para treinar aqui!"
					return
				if(usr.Mnin >= 100000000)
					usr<<"Voc� j� chegou ao m�ximo de Ninjutsu."
					return
				if(usr.deslogado)
					usr<<"Voc� precisa logar primeiro para treinar."
					return
				if(usr.level >= 1000)
					usr<<"Voc� j� chegou ao level m�ximo."
					return
				if(usr.rank == "Estudante"||usr.rank == "Genin")
					if(usr.level >=325)
						usr<<"Voc� j� chegou ao level m�ximo como Genin."
						return
				if(usr.rank == "Chuunin")
					if(usr.level >=450)
						usr<<"Voc� j� chegou ao level m�ximo como Chuunin."
						return
				if (usr.armastreino)
					usr<<"N�o enquanto treina armas"
					return
				if(usr.varmastreino)
					usr<<"N�o enquanto treina armas"
					return
				if(usr.DefesaAbsoluta||usr.Kaiten||usr.froze||usr.def||usr.kawa)
					usr<<"Est� paralizado"
					return
				if(usr.cast)
					return
				if(usr.resting)
					return
				if (usr.meditating)
					usr<<"N�o enquanto medita"
					return
				if(usr.libering)
					usr<<"N�o enquanto libera stamina"
					return
				if(usr.vmeditating)
					usr<<"N�o enquanto medita"
					return
				if(usr.vlibering)
					usr<<"N�o enquanto libera stamina"
					return
				if(usr.vconcing)
					usr<<"N�o enquanto concentra"
					return
				if(usr.concing)
					usr<<"N�o enquanto se concentra"
					return
				if(usr.canLogSecretonintrain)
					usr<<"Espere para poder upar novamente"
					return
				if(usr.health<5)
					usr<<"Voc� est� cansado. Descanse."
					return
				if(usr.LogSecretotaitrain||usr.LogSecretogentrain||usr.LogSecretoarmtrain||usr.log10nintrain||usr.log10gentrain||usr.log10taitrain||usr.log10armtrain||usr.log4nintrain||usr.log4gentrain||usr.log4taitrain||usr.log4armtrain||usr.Log5armtrain||usr.Log11armtrain)
					usr<<"Voc� esta ocupado"
					return
				if(usr.canLogSecretotaitrain||usr.canLogSecretogentrain||usr.canLogSecretoarmtrain||usr.canlog10nintrain||usr.canlog10gentrain||usr.canlog10taitrain||usr.canlog10armtrain||usr.canlog4nintrain||usr.canlog4gentrain||usr.canlog4taitrain||usr.canlog4armtrain||usr.canLog5armtrain||usr.canLog11armtrain)
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
				if(usr.LogSecretonintrain)
					usr.LogSecretonintrain=0
					usr.canLogSecretonintrain=1
					usr.Frozen=0
					usr << output("Voc� parou de Treinar Ninjutsu no LogSecreto.","output2.sistema")
					spawn(600)
						usr.canLogSecretonintrain=0
				else
					usr<<output("Voc� come�a a Treinar Ninjutsu no LogSecreto.","output2.sistema")
					usr.LogSecretonintrain=1
					usr.Frozen=1
					while(usr.LogSecretonintrain)
						if(usr.concing)
							usr.concing=0
							usr.LogSecretonintrain=0
							return
						if(usr.libering)
							usr.libering=0
							usr.LogSecretonintrain=0
							return
						if(usr.meditating)
							usr.meditating=0
							usr.LogSecretonintrain=0
							return
						if(usr.vmeditating)
							usr.vmeditating=0
							usr.LogSecretonintrain=0
							return
						if(usr.vconcing)
							usr.vconcing=0
							usr.LogSecretonintrain=0
							return
						if(usr.vlibering)
							usr.vlibering=0
							usr.LogSecretonintrain=0
							return
						if(usr.armastreino)
							usr.armastreino=0
							usr.LogSecretonintrain=0
							return
						sleep(200)
						if(usr) if(usr.LogSecretonintrain==0) return
						if(usr.chakra > 5)
							if(usr.Mnin<100000000)
								usr.exp+=135
								usr.Levelup()
								usr.Mnin+=14.4
								usr.chakra-=rand(1,2)
								usr.nin = usr.Mnin
								usr<<output("Seu Ninjutsu aumentou.","output2.sistema")
							else
								usr<<output("Voc� j� chegou ao n�vel m�ximo.","output2.sistema")
						sleep(250)
						if(usr) if(usr.LogSecretonintrain==0) return
						if(usr.chakra > 5)
							if(usr.Mnin<100000000)
								usr.exp+=135
								usr.Levelup()
								usr.Mnin+=14.4
								usr.chakra-=rand(1,2)
								usr.nin = usr.Mnin
								usr<<output("Seu Ninjutsu aumentou.","output2.sistema")
							else
								usr<<output("Voc� j� chegou ao n�vel m�ximo.","output2.sistema")
						sleep(200)
						if(usr) if(usr.LogSecretonintrain==0) return
						if(usr.chakra > 5)
							if(usr.Mnin<100000000)
								usr.exp+=135
								usr.Levelup()
								usr.Mnin+=14.4
								usr.chakra-=rand(1,2)
								usr.nin = usr.Mnin
								usr<<output("Seu Ninjutsu aumentou.","output2.sistema")
							else
								usr<<output("Voc� j� chegou ao n�vel m�ximo.","output2.sistema")
						sleep(250)
						if(usr) if(usr.LogSecretonintrain==0) return
						if(usr.chakra > 5)
							if(usr.Mnin<100000000)
								usr.exp+=135
								usr.Levelup()
								usr.Mnin+=14.4
								usr.chakra-=rand(1,2)
								usr.nin = usr.Mnin
								usr<<output("Seu Ninjutsu aumentou.","output2.sistema")
							else
								usr<<output("Voc� j� chegou ao n�vel m�ximo.","output2.sistema")
						if(usr.chakra <= 5)
							usr<<output("Voc� parou de Treinar Ninjutsu no LogSecreto.","output2.sistema")
							usr.LogSecretonintrain=0
							usr.icon_state=null
							usr.canLogSecretonintrain=1
							usr.Frozen=0
							spawn(600)
								usr.canLogSecretonintrain=0





turf
	invadleafx
		icon = 'NONPK.dmi'
		icon_state="1"
		density=0
		layer=0
		Enter(A)
			if(ismob(A))
				var/mob/M = A
				if(M.client)
					for(var/mob/M2 in world)
						if(!(M.Village == "Konoha"))
							if(M2.Village == "Konoha")
								if(M.z==1&&M.x>269&&M.x<478&&M.y>229&&M.y<339)
									if(!(invasorLeaf))
										M2 << "<font size=1><font color=red><font face=tahoma>ALERTA: Um shinobi de outra vila acabou de invadir Konoha!"
										invasorLeaf=1
										spawn(200) invasorLeaf=0
			else
				if(istype(A,/obj/)) del(A)