mob/var/tmp/Log11armtrain = 0
mob/var/tmp/canLog11armtrain = 0








mob/
obj
	Log11
		icon = 'moreturfsnff (14).dmi'
		density = 1
		verb
			ArmLog11()
				set name = "Treinamento Geral no Log11"
				set category = "Treinamento"
				set src in oview(1)
				if(usr.deslogado)
					usr<<"Você precisa logar primeiro para treinar."
					return
				if(usr.level >= 1000)
					usr<<"Você já chegou ao level máximo."
					return
				if(usr.rank == "Estudante"||usr.rank == "Genin")
					if(usr.level >=325)
						usr<<"Você já chegou ao level máximo como Genin."
						return
				if(usr.rank == "Chuunin")
					if(usr.level >=450)
						usr<<"Você já chegou ao level máximo como Chuunin."
						return
				if(usr.Mtai >= 100000000)
					usr<<"Você já chegou ao máximo de Taijutsu."
					return
				if(usr.Mnin >= 100000000)
					usr<<"Você já chegou ao máximo de Ninjutsu."
					return
				if(usr.Mgen >= 100000000)
					usr<<"Você já chegou ao máximo de Genjutsu."
					return
				if(usr.Mshurikenskill >= 100000000)
					usr<<"Você já chegou ao máximo de Armas."
					return
				if(usr.ticketlog11<=0)
					usr<<"Você não tem Ticket Treinar tudo no Log11."
					return
				if (usr.armastreino)
					usr<<"Não enquanto treina armas"
					return
				if(usr.varmastreino)
					usr<<"Não enquanto treina armas"
					return
				if(usr.froze||usr.DefesaAbsoluta||usr.Kaiten||usr.def||usr.kawa)
					usr<<"Está paralizado"
					return
				if (usr.resting)
					usr<<"Não enquanto descansa"
					return
				if (usr.meditating)
					usr<<"Não enquanto medita"
					return
				if(usr.libering)
					usr<<"Não enquanto libera stamina"
					return
				if(usr.vmeditating)
					usr<<"Não enquanto medita"
					return
				if(usr.vlibering)
					usr<<"Não enquanto libera stamina"
					return
				if(usr.vconcing)
					usr<<"Não enquanto concentra"
					return
				if(usr.concing)
					usr<<"Não enquanto se concentra"
					return
				if(usr.canLog11armtrain)
					usr<<"Espere para poder upar novamente"
					return
				if(usr.health<5)
					usr<<"Você está cansado. Descanse."
					return
				if(usr.LogSecretotaitrain||usr.LogSecretonintrain||usr.LogSecretogentrain||usr.LogSecretoarmtrain||usr.log10nintrain||usr.log10gentrain||usr.log10taitrain||usr.log10armtrain||usr.log4nintrain||usr.log4gentrain||usr.log4taitrain||usr.log4armtrain||usr.Log5armtrain||usr.Log100armtrain)
					usr<<"Você esta ocupado"
					return
				if(usr.canLogSecretotaitrain||usr.canLogSecretonintrain||usr.canLogSecretogentrain||usr.canLogSecretoarmtrain||usr.canlog10nintrain||usr.canlog10gentrain||usr.canlog10taitrain||usr.canlog10armtrain||usr.canlog4nintrain||usr.canlog4gentrain||usr.canlog4taitrain||usr.canlog4armtrain||usr.canLog5armtrain||usr.canLog100armtrain)
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
				if(usr.Log11armtrain)
					usr.Log11armtrain=0
					usr.canLog11armtrain=1
					usr.Frozen=0
					usr << "Você parou de Treinar tudo no Log11."
					spawn(600)
						usr.canLog11armtrain=0
				else
					usr<<"Você começa a Treinar tudo no Log11."
					usr.ticketlog11-=1
					//usr.SalvarAgora()
					usr<<"Você começa a Treinar tudo no Log11."
					usr.Log11armtrain=1
					usr.Frozen=1
					while(usr.Log11armtrain)
						if(usr.concing)
							usr.concing=0
							usr.Log11armtrain=0
							return
						if(usr.libering)
							usr.libering=0
							usr.Log11armtrain=0
							return
						if(usr.meditating)
							usr.meditating=0
							usr.Log11armtrain=0
							return
						if(usr.vmeditating)
							usr.vmeditating=0
							usr.Log11armtrain=0
							return
						if(usr.vconcing)
							usr.vconcing=0
							usr.Log11armtrain=0
							return
						if(usr.vlibering)
							usr.vlibering=0
							usr.Log11armtrain=0
							return
						if(usr.armastreino)
							usr.armastreino=0
							usr.Log11armtrain=0
							return
						sleep(120)
						if(usr) if(usr.Log11armtrain==0) return
						if(usr.stamina > 5)
							if(usr.Mtai<100000000&&usr.Mnin<100000000&&usr.Mgen<100000000&&usr.Mshurikenskill<100000000)
								usr.exp+=165
								usr.Levelup()
								usr.Mshurikenskill+=13
								usr.Mtai+=13
								usr.Mnin+=13
								usr.Mgen+=13
								usr.stamina-=rand(1,2)
								usr.shurikenskill = usr.Mshurikenskill
								usr.nin = usr.Mnin
								usr.gen = usr.Mgen
								usr.tai = usr.Mtai
								usr<<"Sua perícia com todos os atributos aumentaram!.."
							else
								usr<<"Você já chegou ao nível máximo."
					sleep(130)
					if(usr) if(usr.Log11armtrain==0) return
					if(usr.stamina > 5)
						if(usr.Mtai<100000000&&usr.Mnin<100000000&&usr.Mgen<100000000&&usr.Mshurikenskill<100000000)
							usr.exp+=150
							usr.Levelup()
							usr.Mshurikenskill+=16
							usr.Mnin+=16
							usr.Mgen+=16
							usr.Mtai+=16
							usr.stamina-=rand(1,2)
							usr.shurikenskill = usr.Mshurikenskill
							usr.nin = usr.Mnin
							usr.gen = usr.Mgen
							usr.tai = usr.Mtai
							usr<<"Sua perícia com todos os atributos aumentaram!.."
						else
							usr<<"Você já chegou ao nível máximo."
					sleep(120)
					if(usr) if(usr.Log11armtrain==0) return
					if(usr.stamina > 5)
						if(usr.Mtai<100000000&&usr.Mnin<100000000&&usr.Mgen<100000000&&usr.Mshurikenskill<100000000)
							usr.exp+=165
							usr.Levelup()
							usr.Mshurikenskill+=13
							usr.Mtai+=13
							usr.Mnin+=13
							usr.Mgen+=13
							usr.stamina-=rand(1,2)
							usr.shurikenskill = usr.Mshurikenskill
							usr.nin = usr.Mnin
							usr.gen = usr.Mgen
							usr.tai = usr.Mtai
							usr<<"Sua perícia com todos os atributos aumentaram!.."
						else
							usr<<"Você já chegou ao nível máximo."
					sleep(120)
					if(usr) if(usr.Log11armtrain==0) return
					if(usr.stamina > 5)
						if(usr.Mtai<100000000&&usr.Mnin<100000000&&usr.Mgen<100000000&&usr.Mshurikenskill<100000000)
							usr.exp+=165
							usr.Levelup()
							usr.Mshurikenskill+=13
							usr.Mtai+=13
							usr.Mnin+=13
							usr.Mgen+=13
							usr.stamina-=rand(1,2)
							usr.shurikenskill = usr.Mshurikenskill
							usr.nin = usr.Mnin
							usr.gen = usr.Mgen
							usr.tai = usr.Mtai
						else
							usr<<"Você já chegou ao nível máximo."
					if(usr.stamina <= 5)
						usr<<"Você parou de Treinar tudo no Log11."
						usr.Log11armtrain=0
						usr.icon_state=null
						usr.canLog11armtrain=1
						usr.Frozen=0
						spawn(600)
							usr.canLog11armtrain=0