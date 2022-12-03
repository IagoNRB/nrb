mob/var/tmp/log10taitrain = 0
mob/var/tmp/log10gentrain = 0
mob/var/tmp/log10nintrain = 0
mob/var/tmp/log10armtrain = 0

mob/var/tmp/canlog10taitrain = 0
mob/var/tmp/canlog10gentrain = 0
mob/var/tmp/canlog10nintrain = 0
mob/var/tmp/canlog10armtrain = 0

var
	eventolog




mob/
obj
	log10Tai
		icon = 'moreturfsnff (14).dmi'
		density = 1
		verb
			Tailog10()
				set name = "Treinamento de Taijutsu log10"
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
				if (usr.armastreino)
					usr<<"Não enquanto treina armas"
					return
				if(usr.varmastreino)
					usr<<"Não enquanto treina armas"
					return
				if (usr.resting)
					usr<<"Não enquanto descansa"
					return
				if(usr.DefesaAbsoluta||usr.Kaiten||usr.froze||usr.def||usr.kawa)
					usr<<"Está paralizado"
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
				if(usr.canlog10taitrain)
					usr<<"Espere para poder upar novamente"
					return
				if(usr.health<5)
					usr<<"Você está cansado. Descanse."
					return
				if(usr.LogSecretotaitrain||usr.LogSecretonintrain||usr.LogSecretogentrain||usr.LogSecretoarmtrain||usr.log10nintrain||usr.log10gentrain||usr.log10armtrain||usr.log4nintrain||usr.log4gentrain||usr.log4taitrain||usr.log4armtrain||usr.Log11armtrain||usr.Log5armtrain||usr.Log100armtrain)
					usr<<"Você esta ocupado"
					return
				if(usr.canLogSecretotaitrain||usr.canLogSecretonintrain||usr.canLogSecretogentrain||usr.canLogSecretoarmtrain||usr.canlog10nintrain||usr.canlog10gentrain||usr.canlog10armtrain||usr.canlog4nintrain||usr.canlog4gentrain||usr.canlog4taitrain||usr.canlog4armtrain||usr.canLog11armtrain||usr.canLog5armtrain||usr.canLog100armtrain)
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
				if(usr.ticketlog10>=1||eventolog)
					if(usr.log10taitrain)
						usr.log10taitrain=0
						usr.canlog10taitrain=1
						usr.Frozen=0
						usr<<output("Você parou de treinar Taijutsu no log10.","output2.sistema")
						spawn(600)
							usr.canlog10taitrain=0
					else
						usr.ticketlog10=0
						//usr.SalvarAgora()
						usr<<output("Você começa a Treinar Taijutsu no log10.","output2.sistema")
						usr.log10taitrain=1
						usr.canlog10taitrain=0
						usr.Frozen=1
						while(usr.log10taitrain)
							if(usr.concing)
								usr.concing=0
								usr.log10taitrain=0
								return
							if(usr.libering)
								usr.libering=0
								usr.log10taitrain=0
								return
							if(usr.meditating)
								usr.meditating=0
								usr.log10taitrain=0
								return
							if(usr.vmeditating)
								usr.vmeditating=0
								usr.log10taitrain=0
								return
							if(usr.vconcing)
								usr.vconcing=0
								usr.log10taitrain=0
								return
							if(usr.vlibering)
								usr.vlibering=0
								usr.log10taitrain=0
								return
							if(usr.armastreino)
								usr.armastreino=0
								usr.log10taitrain=0
								return
							sleep(120)
							if(usr) if(usr.log10taitrain==0) return
							if(usr.stamina > 5)
								if(usr.Mtai<100000000)
									usr.exp+=187.5
									usr.Levelup()
									usr.Mtai+=20
									usr.stamina-=rand(1,2)
									usr.tai = usr.Mtai
									usr<<output("Seu Taijutsu aumentou","output2.sistema")
								else
									usr<<output("Você já chegou ao nível máximo.","output2.sistema")
						sleep(130)
						if(usr) if(usr.log10taitrain==0) return
						if(usr.stamina > 5)
							if(usr.Mtai<100000000)
								usr.exp+=187.5
								usr.Levelup()
								usr.Mtai+=20
								usr.stamina-=rand(1,2)
								usr.tai = usr.Mtai
								usr<<output("Seu Taijutsu aumentou","output2.sistema")
							else
								usr<<output("Você já chegou ao nível máximo.","output2.sistema")

						sleep(120)
						if(usr) if(usr.log10taitrain==0) return
						if(usr.stamina > 5)
							if(usr.Mtai<100000000)
								usr.exp+=187.5
								usr.Levelup()
								usr.Mtai+=20
								usr.stamina-=rand(1,2)
								usr.tai = usr.Mtai
								usr<<output("Seu Taijutsu aumentou","output2.sistema")
							else
								usr<<output("Você já chegou ao nível máximo.","output2.sistema")

						sleep(120)
						if(usr) if(usr.log10taitrain==0) return
						if(usr.stamina > 5)
							if(usr.Mtai<100000000)
								usr.exp+=187.5
								usr.Levelup()
								usr.Mtai+=20
								usr.stamina-=rand(1,2)
								usr.tai = usr.Mtai
								usr<<output("Seu Taijutsu aumentou","output2.sistema")
							else
								usr<<output("Você já chegou ao nível máximo.","output2.sistema")
						if(usr.stamina <= 5)
							usr<<output("Você parou de Treinar Taijutsu no log10.","output2.sistema")
							usr.log10taitrain=0
							usr.icon_state=null
							usr.canlog10taitrain=1
							usr.Frozen=0
							spawn(600)
								usr.canlog10taitrain=0
				else
					usr<<output("Você não tem Ticket Treinar no Log10 ou não tem evento ativo..","output2.sistema")





mob/
obj
	log10arm
		icon = 'moreturfsnff (14).dmi'
		density = 1
		verb
			Armlog10()
				set name = "Treinamento de Armas log10"
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
				if(usr.Mshurikenskill >= 100000000)
					usr<<"Você já chegou ao máximo de Armas."
					return
				if (usr.armastreino)
					usr<<"Não enquanto treina armas"
					return
				if(usr.varmastreino)
					usr<<"Não enquanto treina armas"
					return
				if (usr.resting)
					usr<<"Não enquanto descansa"
					return
				if(usr.froze||usr.DefesaAbsoluta||usr.Kaiten||usr.def||usr.kawa)
					usr<<"Está paralizado"
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
				if(usr.canlog10armtrain)
					usr<<"Espere para poder upar novamente"
					return
				if(usr.health<5)
					usr<<"Você está cansado. Descanse."
					return
				if(usr.LogSecretotaitrain||usr.LogSecretonintrain||usr.LogSecretogentrain||usr.LogSecretoarmtrain||usr.log10nintrain||usr.log10gentrain||usr.log10taitrain||usr.log4nintrain||usr.log4gentrain||usr.log4taitrain||usr.log4armtrain||usr.Log11armtrain||usr.Log5armtrain||usr.Log100armtrain)
					usr<<"Você esta ocupado"
					return
				if(usr.canLogSecretotaitrain||usr.canLogSecretonintrain||usr.canLogSecretogentrain||usr.canLogSecretoarmtrain||usr.canlog10nintrain||usr.canlog10gentrain||usr.canlog10taitrain||usr.canlog4nintrain||usr.canlog4gentrain||usr.canlog4taitrain||usr.canlog4armtrain||usr.canLog11armtrain||usr.canLog5armtrain||usr.canLog100armtrain)
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
				if(usr.ticketlog10>=1||eventolog)
					if(usr.log10armtrain)
						usr.log10armtrain=0
						usr.canlog10armtrain=1
						usr.Frozen=0
						usr << output("Você parou de treinar Armas no log10.","output2.sistema")
						spawn(600)
							usr.canlog10armtrain=0
					else
						usr.ticketlog10=0
						//usr.SalvarAgora()
						usr<<output("Você começa a Treinar Armas no log10.","output2.sistema")
						usr.log10armtrain=1
						usr.Frozen=1
						while(usr.log10armtrain)
							if(usr.concing)
								usr.concing=0
								usr.log10armtrain=0
								return
							if(usr.libering)
								usr.libering=0
								usr.log10armtrain=0
								return
							if(usr.meditating)
								usr.meditating=0
								usr.log10armtrain=0
								return
							if(usr.vmeditating)
								usr.vmeditating=0
								usr.log10armtrain=0
								return
							if(usr.vconcing)
								usr.vconcing=0
								usr.log10armtrain=0
								return
							if(usr.vlibering)
								usr.vlibering=0
								usr.log10armtrain=0
								return
							if(usr.armastreino)
								usr.armastreino=0
								usr.log10armtrain=0
								return
							sleep(120)
							if(usr) if(usr.log10armtrain==0) return
							if(usr.stamina > 5)
								if(usr.Mshurikenskill<100000000)
									usr.exp+=187.5
									usr.Levelup()
									usr.Mshurikenskill+=20
									usr.stamina-=rand(1,2)
									usr.shurikenskill = usr.Mshurikenskill
									usr<<output("Sua Perícia com Armas aumentou.","output2.sistema")
								else
									usr<<output("Você já chegou ao nível máximo.","output2.sistema")
						sleep(130)
						if(usr) if(usr.log10armtrain==0) return
						if(usr.stamina > 5)
							if(usr.Mshurikenskill<100000000)
								usr.exp+=187.5
								usr.Levelup()
								usr.Mshurikenskill+=20
								usr.stamina-=rand(1,2)
								usr.shurikenskill = usr.Mshurikenskill
								usr<<output("Sua Perícia com Armas aumentou.","output2.sistema")
							else
								usr<<output("Você já chegou ao nível máximo.","output2.sistema")
						sleep(120)
						if(usr) if(usr.log10armtrain==0) return
						if(usr.stamina > 5)
							if(usr.Mshurikenskill<100000000)
								usr.exp+=187.5
								usr.Levelup()
								usr.Mshurikenskill+=20
								usr.stamina-=rand(1,2)
								usr.shurikenskill = usr.Mshurikenskill
								usr<<output("Sua Perícia com Armas aumentou.","output2.sistema")
							else
								usr<<output("Você já chegou ao nível máximo.","output2.sistema")
						sleep(120)
						if(usr) if(usr.log10armtrain==0) return
						if(usr.stamina > 5)
							if(usr.Mshurikenskill<100000000)
								usr.exp+=187.5
								usr.Levelup()
								usr.Mshurikenskill+=20
								usr.stamina-=rand(1,2)
								usr.shurikenskill = usr.Mshurikenskill
								usr<<output("Sua Perícia com Armas aumentou.","output2.sistema")
							else
								usr<<output("Você já chegou ao nível máximo.","output2.sistema")
						if(usr.stamina <= 5)
							usr<<output("Você parou de Treinar Armas no log10.","output2.sistema")
							usr.log10armtrain=0
							usr.icon_state=null
							usr.canlog10armtrain=1
							usr.froze=0
							spawn(600)
								usr.canlog10armtrain=0
				else
					usr<<output("Você não tem Ticket Treinar no Log10 ou não tem evento ativo.","output2.sistema")



mob/
obj
	log10Gen
		icon = 'moreturfsnff (14).dmi'
		density = 1
		verb
			Genlog10()
				set name = "Treinar Genjutsu no log10"
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
				if(usr.Mgen >= 100000000)
					usr<<"Você já chegou ao máximo de Genjutsu."
					return
				if (usr.armastreino)
					usr<<"Não enquanto treina armas"
					return
				if(usr.varmastreino)
					usr<<"Não enquanto treina armas"
					return
				if (usr.resting)
					usr<<"Não enquanto descansa"
					return
				if (usr.meditating)
					usr<<"Não enquanto medita"
					return
				if(usr.froze||usr.DefesaAbsoluta||usr.Kaiten||usr.def||usr.kawa)
					usr<<"Está paralizado"
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
				if(usr.canlog10gentrain)
					usr<<"Espere para poder upar novamente"
					return
				if(usr.health<5)
					usr<<"Você está cansado. Descanse."
					return
				if(usr.LogSecretotaitrain||usr.LogSecretonintrain||usr.LogSecretogentrain||usr.LogSecretoarmtrain||usr.log10nintrain||usr.log10taitrain||usr.log10armtrain||usr.log4nintrain||usr.log4gentrain||usr.log4taitrain||usr.log4armtrain||usr.Log11armtrain||usr.Log5armtrain||usr.Log100armtrain)
					usr<<"Você esta ocupado"
					return
				if(usr.canLogSecretotaitrain||usr.canLogSecretonintrain||usr.canLogSecretogentrain||usr.canLogSecretoarmtrain||usr.canlog10nintrain||usr.canlog10taitrain||usr.canlog10armtrain||usr.canlog4nintrain||usr.canlog4gentrain||usr.canlog4taitrain||usr.canlog4armtrain||usr.canLog11armtrain||usr.canLog5armtrain||usr.canLog100armtrain)
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
				if(usr.ticketlog10>=1||eventolog)
					if(usr.log10gentrain)
						usr.log10gentrain=0
						usr.canlog10gentrain=1
						usr.Frozen=0
						usr << output("Você parou de Treinar Genjutsu no log10.","output2.sistema")
						spawn(600)
							usr.canlog10gentrain=0
					else
						usr.ticketlog10=0
						//usr.SalvarAgora()
						usr<<output("Você começa a Treinar Genjutsu no log10.","output2.sistema")
						usr.log10gentrain=1
						usr.Frozen=1
						while(usr.log10gentrain)
							if(usr.concing)
								usr.concing=0
								usr.log10gentrain=0
								return
							if(usr.libering)
								usr.libering=0
								usr.log10gentrain=0
								return
							if(usr.meditating)
								usr.meditating=0
								usr.log10gentrain=0
								return
							if(usr.vmeditating)
								usr.vmeditating=0
								usr.log10gentrain=0
								return
							if(usr.vconcing)
								usr.vconcing=0
								usr.log10gentrain=0
								return
							if(usr.vlibering)
								usr.vlibering=0
								usr.log10gentrain=0
								return
							if(usr.armastreino)
								usr.armastreino=0
								usr.log10gentrain=0
								return
							sleep(120)
							if(usr) if(usr.log10gentrain==0) return
							if(usr.stamina > 5)
								if(usr.Mgen<100000000)
									usr.exp+=187.5
									usr.Levelup()
									usr.Mgen+=20
									usr.stamina-=rand(1,2)
									usr.gen = usr.Mgen
									usr<<output("Seu Genjtutsu aumentou.","output2.sistema")
								else
									usr<<output("Você já chegou ao nível máximo.","output2.sistema")
						sleep(130)
						if(usr) if(usr.log10gentrain==0) return
						if(usr.stamina > 5)
							if(usr.Mgen<100000000)
								usr.exp+=187.5
								usr.Levelup()
								usr.Mgen+=20
								usr.stamina-=rand(1,2)
								usr.gen = usr.Mgen
								usr<<output("Seu Genjtutsu aumentou.","output2.sistema")
							else
								usr<<output("Você já chegou ao nível máximo.","output2.sistema")
						sleep(120)
						if(usr) if(usr.log10gentrain==0) return
						if(usr.stamina > 5)
							if(usr.Mgen<100000000)
								usr.exp+=187.5
								usr.Levelup()
								usr.Mgen+=20
								usr.stamina-=rand(1,2)
								usr.gen = usr.Mgen
								usr<<output("Seu Genjtutsu aumentou.","output2.sistema")
							else
								usr<<output("Você já chegou ao nível máximo.","output2.sistema")
						sleep(120)
						if(usr) if(usr.log10gentrain==0) return
						if(usr.stamina > 5)
							if(usr.Mgen<100000000)
								usr.exp+=187.5
								usr.Levelup()
								usr.Mgen+=20
								usr.stamina-=rand(1,2)
								usr.gen = usr.Mgen
								usr<<output("Seu Genjtutsu aumentou.","output2.sistema")
							else
								usr<<output("Você já chegou ao nível máximo.","output2.sistema")
						if(usr.stamina <= 5)
							usr<<output("Você parou de Treinar Genjutsu no log10.","output2.sistema")
							usr.log10gentrain=0
							usr.icon_state=null
							usr.canlog10gentrain=1
							usr.Frozen=0
							spawn(600)
								usr.canlog10gentrain=0
				else
					usr<<output("Você não tem Ticket Treinar no Log10 ou não tem evento ativo.","output2.sistema")



mob/
obj
	log10Nin
		icon = 'moreturfsnff (14).dmi'
		density = 1
		verb
			Ninlog10()
				set name = "Treinar Ninjutsu log10"
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
				if(usr.Mnin >= 100000000)
					usr<<"Você já chegou ao máximo de Ninjutsu."
					return
				if (usr.armastreino)
					usr<<"Não enquanto treina armas"
					return
				if(usr.varmastreino)
					usr<<"Não enquanto treina armas"
					return
				if (usr.resting)
					usr<<"Não enquanto descansa"
					return
				if (usr.meditating)
					usr<<"Não enquanto medita"
					return
				if(usr.froze||usr.DefesaAbsoluta||usr.Kaiten||usr.def||usr.kawa)
					usr<<"Está paralizado"
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
				if(usr.canlog10nintrain)
					usr<<"Espere para poder upar novamente"
					return
				if(usr.health<5)
					usr<<"Você está cansado. Descanse."
					return
				if(usr.LogSecretotaitrain||usr.LogSecretonintrain||usr.LogSecretogentrain||usr.LogSecretoarmtrain||usr.log10gentrain||usr.log10taitrain||usr.log10armtrain||usr.log4nintrain||usr.log4gentrain||usr.log4taitrain||usr.log4armtrain||usr.Log11armtrain||usr.Log5armtrain||usr.Log100armtrain)
					usr<<"Você esta ocupado"
					return
				if(usr.canLogSecretotaitrain||usr.canLogSecretonintrain||usr.canLogSecretogentrain||usr.canLogSecretoarmtrain||usr.canlog10gentrain||usr.canlog10taitrain||usr.canlog10armtrain||usr.canlog4nintrain||usr.canlog4gentrain||usr.canlog4taitrain||usr.canlog4armtrain||usr.canLog11armtrain||usr.canLog5armtrain||usr.canLog100armtrain)
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
				if(usr.ticketlog10>=1||eventolog)
					if(usr.log10nintrain)
						usr.log10nintrain=0
						usr.canlog10nintrain=1
						usr.Frozen=0
						usr << output("Você parou de Treinar Ninjutsu no log10.","output2.sistema")
						spawn(600)
							usr.canlog10nintrain=0
					else
						usr.ticketlog10=0
						//usr.SalvarAgora()
						usr<<output("Você começa a Treinar Ninjutsu no log10.","output2.sistema")
						usr.log10nintrain=1
						usr.Frozen=1
						while(usr.log10nintrain)
							if(usr.concing)
								usr.concing=0
								usr.log10nintrain=0
								return
							if(usr.libering)
								usr.libering=0
								usr.log10nintrain=0
								return
							if(usr.meditating)
								usr.meditating=0
								usr.log10nintrain=0
								return
							if(usr.vmeditating)
								usr.vmeditating=0
								usr.log10nintrain=0
								return
							if(usr.vconcing)
								usr.vconcing=0
								usr.log10nintrain=0
								return
							if(usr.vlibering)
								usr.vlibering=0
								usr.log10nintrain=0
								return
							if(usr.armastreino)
								usr.armastreino=0
								usr.log10nintrain=0
								return
							sleep(120)
							if(usr) if(usr.log10nintrain==0) return
							if(usr.stamina > 5)
								if(usr.Mnin<100000000)
									usr.exp+=187.5
									usr.Levelup()
									usr.Mnin+=20
									usr.stamina-=rand(1,2)
									usr.nin = usr.Mnin
									usr<<output("Seu Ninjutsu aumentou.","output2.sistema")
								else
									usr<<output("Você já chegou ao nível máximo.","output2.sistema")
						sleep(130)
						if(usr) if(usr.log10nintrain==0) return
						if(usr.stamina > 5)
							if(usr.Mnin<100000000)
								usr.exp+=187.5
								usr.Levelup()
								usr.Mnin+=20
								usr.stamina-=rand(1,2)
								usr.nin = usr.Mnin
								usr<<output("Seu Ninjutsu aumentou.","output2.sistema")
							else
								usr<<output("Você já chegou ao nível máximo.","output2.sistema")
						sleep(120)
						if(usr) if(usr.log10nintrain==0) return
						if(usr.stamina > 5)
							if(usr.Mnin<100000000)
								usr.exp+=187.5
								usr.Levelup()
								usr.Mnin+=20
								usr.stamina-=rand(1,2)
								usr.nin = usr.Mnin
								usr<<output("Seu Ninjutsu aumentou.","output2.sistema")
							else
								usr<<output("Você já chegou ao nível máximo.","output2.sistema")
						sleep(120)
						if(usr) if(usr.log10nintrain==0) return
						if(usr.stamina > 5)
							if(usr.Mnin<100000000)
								usr.exp+=187.5
								usr.Levelup()
								usr.Mnin+=20
								usr.stamina-=rand(1,2)
								usr.nin = usr.Mnin
								usr<<output("Seu Ninjutsu aumentou.","output2.sistema")
							else
								usr<<output("Você já chegou ao nível máximo.","output2.sistema")
						if(usr.stamina <= 5)
							usr<<output("Você parou de Treinar Ninjutsu no log10.","output2.sistema")
							usr.log10nintrain=0
							usr.icon_state=null
							usr.canlog10nintrain=1
							usr.Frozen=0
							spawn(600)
								usr.canlog10nintrain=0
				else
					usr<<output("Você não tem Ticket Treinar no Log10 ou não tem evento ativo.","output2.sistema")


mob/GM
	verb
		OpcoesLog()
			set category = "GM"
			set name = "Evento LOG"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				switch(input("O que você quer fazer?","Evento")in list("Abrir Evento","Encerrar Evento","Cancelar"))
					if("Cancelar")
						return
					if("Abrir Evento")
						if(!eventolog)
							eventolog=1
							world<<output("<font color=red>Evento: \white [usr] Começou o Evento de Logs. Vá para o segundo andar da loja e up nos log 10!","output2.sistema")
						else
							usr<<"Já tem um evento desse ativo!"
					if("Encerrar Evento")
						if(eventolog)
							eventolog=0
							for(var/mob/M in world)
								if(M.client)
									if(M.z==2&&M.x>69&&M.x<101&&M.y>298&&M.y<324)
										if(M.log10taitrain==1)
											M<<"Você parou de Treinar Taijutsu!"
											M.log10taitrain=0
											M.canlog10taitrain=1
											spawn(100)
												M.canlog10taitrain=0
										if(M.log10nintrain==1)
											M<<"Você parou de Treinar Ninjutsu!"
											M.log10nintrain=0
											M.canlog10nintrain=1
											spawn(100)
												M.canlog10nintrain=0
										if(M.log10gentrain==1)
											M<<"Você parou de Treinar Genjutsu!"
											M.log10gentrain=0
											M.canlog10gentrain=1
											spawn(100)
												M.canlog10gentrain=0
										if(M.log10armtrain==1)
											M<<"Você parou de Treinar Armas!"
											M.log10armtrain=0
											M.canlog10armtrain=1
											spawn(100)
												M.canlog10armtrain=0
										M.Suicides()
							world << output("<font color=red>Evento: \white [usr] encerrou o Evento Log!","output2.sistema")
						else
							usr<<"Não tem evento desse ocorrendo no momento!"
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)