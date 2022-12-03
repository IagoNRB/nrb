//===========================ZERAR O TEMPO DO LOG AO RETIRAR OS TICKETS===============================//

mob/ADM
	verb
		RetirarTicketsLogs(mob/M in world)
			set name = "Retirar Tickets"
			set category = "Tickets"
			switch(input("Tem certeza que deseja retirar os tickets?") in list ("Sim","N�o"))
				if("Sim")
					if(M.ticketlog4>0)
						usr<<"Voc� retirou [M.ticketlog4] Tickets Log4 de [M]"
						M<<"[usr] retirou [M.ticketlog4] Tickets Log4 de voc�"
						M.ticketlog4 = 0
						M.segundosdelog = 0
						M.minutosdelog = 0
						M.horasdelog = 0
					else
						usr<<"Ele n�o possui Ticket Log4"
				if("N�o")
					usr<<"Ok. [M] possui [M.ticketlog4] Tickets"
					return


mob/var/tmp/log4taitrain = 0
mob/var/tmp/log4gentrain = 0
mob/var/tmp/log4nintrain = 0
mob/var/tmp/log4armtrain = 0

mob/var/tmp/canlog4taitrain = 0
mob/var/tmp/canlog4gentrain = 0
mob/var/tmp/canlog4nintrain = 0
mob/var/tmp/canlog4armtrain = 0

mob/var
	segundosdelog = 0
	minutosdelog = 0
	horasdelog = 0
	ticketlog4 = 0

mob
	proc
		PerderLog()
			while(usr.log4taitrain||usr.log4armtrain||usr.log4gentrain||usr.log4nintrain||usr.Log5armtrain)
				sleep(10)
				segundosdelog+=1
				if(segundosdelog%60==0)//a cada 60 segundos
					segundosdelog-=60
					minutosdelog+=1
					if(minutosdelog%60==0)//a cada 60 min ou 1 hora
						minutosdelog-=60
						horasdelog+=1
						if(horasdelog%24==0)//a cada 24 horas
							horasdelog-=24
							usr.ticketlog4--
							usr<<"Voc� perdeu um Ticket Log!"
							if(usr.ticketlog4>0||usr.ticketlog5>0)
								segundosdelog=0
								minutosdelog=0
								horasdelog=0
								usr<<"Por possuir mais Tickets, seu up no Log foi extendido por mais 24 Horas"
							if(usr.ticketlog4==0||usr.ticketlog5==0)
								usr.log4taitrain=0
								usr.canlog4taitrain=1
								usr.Frozen=0
								usr << "Voc� parou de treinar no Log porque o tempo do seu Ticket acabou."
								spawn(600)
									usr.canlog4taitrain=0

mob/
obj
	Log4Tai
		icon = 'training logb.dmi'
		density = 1
		verb
			TaiLog4()
				set name = "Treinamento de Taijutsu Log4"
				set category = "Treinamento"
				set src in oview(1)
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
				if(usr.Mtai >= 100000000)
					usr<<"Voc� j� chegou ao m�ximo de Taijutsu."
					return
				if(usr.ticketlog4<=0)
					usr<<"Voc� n�o tem Ticket Treinar no Log4."
					return
				if (usr.armastreino)
					usr<<"N�o enquanto treina armas"
					return
				if(usr.varmastreino)
					usr<<"N�o enquanto treina armas"
					return
				/*if(usr.froze||usr.DefesaAbsoluta||usr.Kaiten||usr.def||usr.kawa)
					usr<<"Est� paralizado"
					return*/
				if (usr.resting)
					usr<<"N�o enquanto descansa"
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
				if(usr.treinando)
					usr<<"Espere para poder upar novamente"
					return
				if(usr.health<5)
					usr<<"Voc� est� cansado. Descanse."
					return
				/*if(usr.LogSecretotaitrain||usr.LogSecretonintrain||usr.LogSecretogentrain||usr.LogSecretoarmtrain||usr.log10nintrain||usr.log10gentrain||usr.log10taitrain||usr.log10armtrain||usr.log4nintrain||usr.log4gentrain||usr.log4armtrain||usr.Log5armtrain||usr.Log11armtrain)
					usr<<"Voc� esta ocupado"
					return
				if(usr.canLogSecretotaitrain||usr.canLogSecretonintrain||usr.canLogSecretogentrain||usr.canLogSecretoarmtrain||usr.canlog10nintrain||usr.canlog10gentrain||usr.canlog10taitrain||usr.canlog10armtrain||usr.canlog4nintrain||usr.canlog4gentrain||usr.canlog4taitrain||usr.canlog4armtrain||usr.canLog5armtrain||usr.canLog11armtrain)
					return*/
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
				if(usr.log4taitrain)
					usr.log4taitrain=0
					usr.canlog4taitrain=1
					usr.Frozen=0
					usr << "Voc� parou de treinar Taijutsu no Log4."
					spawn(600)
						usr.canlog4taitrain=0
				else
					usr<<"Voc� pode upar no Log4 por 24 Horas"
					//usr.SalvarAgora()
					usr<<"Voc� come�a a Treinar Taijutsu no Log4."
					usr.log4taitrain=1
					usr.Frozen=1
					spawn() usr.PerderLog()
					while(usr.log4taitrain)
						if(usr.concing)
							usr.concing=0
							usr.log4taitrain=0
							return
						if(usr.libering)
							usr.libering=0
							usr.log4taitrain=0
							return
						if(usr.meditating)
							usr.meditating=0
							usr.log4taitrain=0
							return
						if(usr.vmeditating)
							usr.vmeditating=0
							usr.log4taitrain=0
							return
						if(usr.vconcing)
							usr.vconcing=0
							usr.log4taitrain=0
							return
						if(usr.vlibering)
							usr.vlibering=0
							usr.log4taitrain=0
							return
						if(usr.armastreino)
							usr.armastreino=0
							usr.log4taitrain=0
							return
						sleep(180)
						if(usr) if(usr.log4taitrain==0) return
						if(usr.stamina > 5)
							if(usr.Mtai<100000000)
								usr.exp+=50
								usr.Levelup()
								usr.Mtai+=4
								usr.maxhealth+=4
								usr.stamina-=rand(1,2)
								usr.tai = usr.Mtai
								usr<<"Seu taijutsu aumentou."
							else
								usr<<"Voc� j� chegou ao n�vel m�ximo."
					sleep(240)
					if(usr) if(usr.log4taitrain==0) return
					if(usr.stamina > 5)
						if(usr.Mtai<100000000)
							usr.exp+=60
							usr.Levelup()
							usr.Mtai+=5
							usr.maxhealth+=5
							usr.stamina-=rand(1,2)
							usr.tai = usr.Mtai
							usr<<"Seu taijutsu aumentou."
						else
							usr<<"Voc� j� chegou ao n�vel m�ximo."
					sleep(120)
					if(usr) if(usr.log4taitrain==0) return
					if(usr.stamina > 5)
						if(usr.Mtai<100000000)
							usr.exp+=50
							usr.Levelup()
							usr.Mtai+=4
							usr.maxhealth+=4
							usr.stamina-=rand(1,2)
							usr.tai = usr.Mtai
							usr<<"Seu taijutsu aumentou."
						else
							usr<<"Voc� j� chegou ao n�vel m�ximo."
					sleep(120)
					if(usr) if(usr.log4taitrain==0) return
					if(usr.stamina > 5)
						if(usr.Mtai<100000000)
							usr.exp+=50
							usr.Levelup()
							usr.Mtai+=4
							usr.maxhealth+=4
							usr.stamina-=rand(1,2)
							usr.tai = usr.Mtai
							usr<<"Seu taijutsu aumentou."
						else
							usr<<"Voc� j� chegou ao n�vel m�ximo."
					if(usr.stamina <= 5)
						usr<<"Voc� parou de Treinar Taijutsu no Log4."
						usr.log4taitrain=0
						usr.icon_state=null
						usr.canlog4taitrain=1
						usr.Frozen=0
						spawn(600)
							usr.canlog4taitrain=0



mob/
obj
	Log4arm
		icon = 'training logb.dmi'
		density = 1
		verb
			ArmLog4()
				set name = "Treinamento de Armas Log4"
				set category = "Treinamento"
				set src in oview(1)
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
				if(usr.Mshurikenskill >= 100000000)
					usr<<"Voc� j� chegou ao m�ximo de Armas."
					return
				if(usr.ticketlog4<=0)
					usr<<"Voc� n�o tem Ticket Treinar no Log4."
					return
				if (usr.armastreino)
					usr<<"N�o enquanto treina armas"
					return
				if(usr.varmastreino)
					usr<<"N�o enquanto treina armas"
					return
				if(usr.froze||usr.DefesaAbsoluta||usr.Kaiten||usr.def||usr.kawa)
					usr<<"Est� paralizado"
					return
				if (usr.resting)
					usr<<"N�o enquanto descansa"
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
				if(usr.canlog4armtrain)
					usr<<"Espere para poder upar novamente"
					return
				if(usr.health<5)
					usr<<"Voc� est� cansado. Descanse."
					return
				/*if(usr.LogSecretotaitrain||usr.LogSecretonintrain||usr.LogSecretogentrain||usr.LogSecretoarmtrain||usr.log10nintrain||usr.log10gentrain||usr.log10taitrain||usr.log10armtrain||usr.log4nintrain||usr.log4gentrain||usr.log4taitrain||usr.Log5armtrain||usr.Log11armtrain)
					usr<<"Voc� esta ocupado"
					return
				if(usr.canLogSecretotaitrain||usr.canLogSecretonintrain||usr.canLogSecretogentrain||usr.canLogSecretoarmtrain||usr.canlog10nintrain||usr.canlog10gentrain||usr.canlog10taitrain||usr.canlog10armtrain||usr.canlog4nintrain||usr.canlog4gentrain||usr.canlog4taitrain||usr.canLog5armtrain||usr.canLog11armtrain)
					return*/
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
				if(usr.log4armtrain)
					usr.log4armtrain=0
					usr.canlog4armtrain=1
					usr.Frozen=0
					usr << "Voc� parou de treinar Armas no Log4."
					spawn(600)
						usr.canlog4armtrain=0
				else
					usr<<"Voc� pode upar no Log4 por 24 Horas"
					//usr.SalvarAgora()
					usr<<"Voc� come�a a Treinar Armas no Log4."
					usr.log4armtrain=1
					usr.Frozen=1
					spawn() usr.PerderLog()
					while(usr.log4armtrain)
						if(usr.concing)
							usr.concing=0
							usr.log4armtrain=0
							return
						if(usr.libering)
							usr.libering=0
							usr.log4armtrain=0
							return
						if(usr.meditating)
							usr.meditating=0
							usr.log4armtrain=0
							return
						if(usr.vmeditating)
							usr.vmeditating=0
							usr.log4armtrain=0
							return
						if(usr.vconcing)
							usr.vconcing=0
							usr.log4armtrain=0
							return
						if(usr.vlibering)
							usr.vlibering=0
							usr.log4armtrain=0
							return
						if(usr.armastreino)
							usr.armastreino=0
							usr.log4armtrain=0
							return
						sleep(180)
						if(usr) if(usr.log4armtrain==0) return
						if(usr.stamina > 5)
							if(usr.Mshurikenskill<100000000)
								usr.exp+=50
								usr.Levelup()
								usr.Mshurikenskill+=4
								usr.maxhealth+=4
								usr.stamina-=rand(1,2)
								usr.shurikenskill = usr.Mshurikenskill
								usr<<"Sua per�cia com Armas aumentou.."
							else
								usr<<"Voc� j� chegou ao n�vel m�ximo."
					sleep(240)
					if(usr) if(usr.log4armtrain==0) return
					if(usr.stamina > 5)
						if(usr.Mshurikenskill<100000000)
							usr.exp+=60
							usr.Levelup()
							usr.Mshurikenskill+=5
							usr.maxhealth+=5
							usr.stamina-=rand(1,2)
							usr.shurikenskill = usr.Mshurikenskill
							usr<<"Sua per�cia com Armas aumentou.."
						else
							usr<<"Voc� j� chegou ao n�vel m�ximo."
					sleep(120)
					if(usr) if(usr.log4armtrain==0) return
					if(usr.stamina > 5)
						if(usr.Mshurikenskill<100000000)
							usr.exp+=50
							usr.Levelup()
							usr.Mshurikenskill+=4
							usr.maxhealth+=4
							usr.stamina-=rand(1,2)
							usr.shurikenskill = usr.Mshurikenskill
							usr<<"Sua per�cia com Armas aumentou.."
						else
							usr<<"Voc� j� chegou ao n�vel m�ximo."
					sleep(120)
					if(usr) if(usr.log4armtrain==0) return
					if(usr.stamina > 5)
						if(usr.Mshurikenskill<100000000)
							usr.exp+=50
							usr.Levelup()
							usr.Mshurikenskill+=4
							usr.maxhealth+=4
							usr.stamina-=rand(1,2)
							usr.shurikenskill = usr.Mshurikenskill
							usr<<"Sua per�cia com Armas aumentou.."
						else
							usr<<"Voc� j� chegou ao n�vel m�ximo."
					if(usr.stamina <= 5)
						usr<<"Voc� parou de Treinar Armas no Log4."
						usr.log4armtrain=0
						usr.icon_state=null
						usr.canlog4armtrain=1
						usr.Frozen=0
						spawn(600)
							usr.canlog4armtrain=0





mob/
obj
	Log4Gen
		icon = 'training logb.dmi'
		density = 1
		verb
			GenLog4()
				set name = "Treinar Genjutsu no Log4"
				set category = "Treinamento"
				set src in oview(1)
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
				if(usr.Mgen >= 100000000)
					usr<<"Voc� j� chegou ao m�ximo de Genjutsu."
					return
				if(usr.ticketlog4<=0)
					usr<<"Voc� n�o tem Ticket Treinar no Log4."
					return
				if (usr.armastreino)
					usr<<"N�o enquanto treina armas"
					return
				if(usr.froze||usr.DefesaAbsoluta||usr.Kaiten||usr.def||usr.kawa)
					usr<<"Est� paralizado"
					return
				if(usr.varmastreino)
					usr<<"N�o enquanto treina armas"
					return
				if (usr.resting)
					usr<<"N�o enquanto descansa"
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
				if(usr.canlog4gentrain)
					usr<<"Espere para poder upar novamente"
					return
				if(usr.health<5)
					usr<<"Voc� est� cansado. Descanse."
					return
				/*if(usr.LogSecretotaitrain||usr.LogSecretonintrain||usr.LogSecretogentrain||usr.LogSecretoarmtrain||usr.log10nintrain||usr.log10gentrain||usr.log10taitrain||usr.log10armtrain||usr.log4nintrain||usr.log4taitrain||usr.log4armtrain||usr.Log5armtrain||usr.Log11armtrain)
					usr<<"Voc� esta ocupado"
					return
				if(usr.canLogSecretotaitrain||usr.canLogSecretonintrain||usr.canLogSecretogentrain||usr.canLogSecretoarmtrain||usr.canlog10nintrain||usr.canlog10gentrain||usr.canlog10taitrain||usr.canlog10armtrain||usr.canlog4nintrain||usr.canlog4taitrain||usr.canlog4armtrain||usr.canLog5armtrain||usr.canLog11armtrain)
					return*/
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
				if(usr.log4gentrain)
					usr.log4gentrain=0
					usr.canlog4gentrain=1
					usr.Frozen=0
					usr << "Voc� parou de Treinar Genjutsu no Log4."
					spawn(600)
						usr.canlog4gentrain=0
				else
					usr<<"Voc� pode upar no Log4 por 24 Horas"
					//usr.SalvarAgora()
					usr<<"Voc� come�a a Treinar Genjutsu no Log4."
					usr.log4gentrain=1
					usr.Frozen=1
					spawn() usr.PerderLog()
					while(usr.log4gentrain)
						if(usr.concing)
							usr.concing=0
							usr.log4gentrain=0
							return
						if(usr.libering)
							usr.libering=0
							usr.log4gentrain=0
							return
						if(usr.meditating)
							usr.meditating=0
							usr.log4gentrain=0
							return
						if(usr.vmeditating)
							usr.vmeditating=0
							usr.log4gentrain=0
							return
						if(usr.vconcing)
							usr.vconcing=0
							usr.log4gentrain=0
							return
						if(usr.vlibering)
							usr.vlibering=0
							usr.log4gentrain=0
							return
						if(usr.armastreino)
							usr.armastreino=0
							usr.log4gentrain=0
							return
						sleep(180)
						if(usr) if(usr.log4gentrain==0) return
						if(usr.stamina > 5)
							if(usr.Mgen<100000000)
								usr.exp+=50
								usr.Levelup()
								usr.Mgen+=4
								usr.maxhealth+=4
								usr.stamina-=rand(1,2)
								usr.gen = usr.Mgen
								usr<<"Seu Genjtutsu aumentou.."
							else
								usr<<"Voc� j� chegou ao n�vel m�ximo."
					sleep(240)
					if(usr) if(usr.log4gentrain==0) return
					if(usr.stamina > 5)
						if(usr.Mgen<100000000)
							usr.exp+=60
							usr.Levelup()
							usr.Mgen+=5
							usr.maxhealth+=5
							usr.stamina-=rand(1,2)
							usr.gen = usr.Mgen
							usr<<"Seu Genjtutsu aumentou.."
						else
							usr<<"Voc� j� chegou ao n�vel m�ximo."
					sleep(120)
					if(usr) if(usr.log4gentrain==0) return
					if(usr.stamina > 5)
						if(usr.Mgen<100000000)
							usr.exp+=50
							usr.Levelup()
							usr.Mgen+=4
							usr.maxhealth+=4
							usr.stamina-=rand(1,2)
							usr.gen = usr.Mgen
							usr<<"Seu Genjtutsu aumentou.."
						else
							usr<<"Voc� j� chegou ao n�vel m�ximo."
					sleep(120)
					if(usr) if(usr.log4gentrain==0) return
					if(usr.stamina > 5)
						if(usr.Mgen<100000000)
							usr.exp+=50
							usr.Levelup()
							usr.Mgen+=4
							usr.maxhealth+=4
							usr.stamina-=rand(1,2)
							usr.gen = usr.Mgen
							usr<<"Seu Genjtutsu aumentou.."
						else
							usr<<"Voc� j� chegou ao n�vel m�ximo."
					if(usr.stamina <= 5)
						usr<<"Voc� parou de Treinar Genjutsu no Log4."
						usr.log4gentrain=0
						usr.icon_state=null
						usr.canlog4gentrain=1
						usr.Frozen=0
						spawn(600)
							usr.canlog4gentrain=0




mob/
obj
	Log4Nin
		icon = 'training logb.dmi'
		density = 1
		verb
			NinLog4()
				set name = "Treinar Ninjutsu no Log4"
				set category = "Treinamento"
				set src in oview(1)
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
				if(usr.Mnin >= 100000000)
					usr<<"Voc� j� chegou ao m�ximo de Ninjutsu."
					return
				if(usr.ticketlog4<=0)
					usr<<"Voc� n�o tem Ticket Treinar no Log4."
					return
				if (usr.armastreino)
					usr<<"N�o enquanto treina armas"
					return
				if(usr.froze||usr.DefesaAbsoluta||usr.Kaiten||usr.def||usr.kawa)
					usr<<"Est� paralizado"
					return
				if(usr.varmastreino)
					usr<<"N�o enquanto treina armas"
					return
				if (usr.resting)
					usr<<"N�o enquanto descansa"
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
				if(usr.canlog4nintrain)
					usr<<"Espere para poder upar novamente"
					return
				if(usr.health<5)
					usr<<"Voc� est� cansado. Descanse."
					return
				/*if(usr.LogSecretotaitrain||usr.LogSecretonintrain||usr.LogSecretogentrain||usr.LogSecretoarmtrain||usr.log10nintrain||usr.log10gentrain||usr.log10taitrain||usr.log10armtrain||usr.log4gentrain||usr.log4taitrain||usr.log4armtrain||usr.Log5armtrain||usr.Log11armtrain)
					usr<<"Voc� esta ocupado"
					return
				if(usr.canLogSecretotaitrain||usr.canLogSecretonintrain||usr.canLogSecretogentrain||usr.canLogSecretoarmtrain||usr.canlog10nintrain||usr.canlog10gentrain||usr.canlog10taitrain||usr.canlog10armtrain||usr.canlog4gentrain||usr.canlog4taitrain||usr.canlog4armtrain||usr.canLog5armtrain||usr.canLog11armtrain)
					return*/
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
				if(usr.log4nintrain)
					usr.log4nintrain=0
					usr.canlog4nintrain=1
					usr.Frozen=0
					usr << "Voc� parou de Treinar Ninjutsu no Log4."
					spawn(600)
						usr.canlog4nintrain=0
				else
					usr<<"Voc� pode upar no Log4 por 24 Horas"
					//usr.SalvarAgora()
					usr<<"Voc� come�a a Treinar Ninjutsu no Log4."
					usr.log4nintrain=1
					usr.Frozen=1
					spawn() usr.PerderLog()
					while(usr.log4nintrain)
						if(usr.concing)
							usr.concing=0
							usr.log4nintrain=0
							return
						if(usr.libering)
							usr.libering=0
							usr.log4nintrain=0
							return
						if(usr.meditating)
							usr.meditating=0
							usr.log4nintrain=0
							return
						if(usr.vmeditating)
							usr.vmeditating=0
							usr.log4nintrain=0
							return
						if(usr.vconcing)
							usr.vconcing=0
							usr.log4nintrain=0
							return
						if(usr.vlibering)
							usr.vlibering=0
							usr.log4nintrain=0
							return
						if(usr.armastreino)
							usr.armastreino=0
							usr.log4nintrain=0
							return
						sleep(180)
						if(usr) if(usr.log4nintrain==0) return
						if(usr.stamina > 5)
							if(usr.Mnin<100000000)
								usr.exp+=50
								usr.Levelup()
								usr.Mnin+=4
								usr.maxhealth+=4
								usr.stamina-=rand(1,2)
								usr.nin = usr.Mnin
								usr<<"Seu Ninjutsu aumentou.."
							else
								usr<<"Voc� j� chegou ao n�vel m�ximo."
					sleep(240)
					if(usr) if(usr.log4nintrain==0) return
					if(usr.stamina > 5)
						if(usr.Mnin<100000000)
							usr.exp+=70
							usr.Levelup()
							usr.Mnin+=5
							usr.maxhealth+=5
							usr.stamina-=rand(1,2)
							usr.nin = usr.Mnin
							usr<<"Seu Ninjutsu aumentou.."
						else
							usr<<"Voc� j� chegou ao n�vel m�ximo."
					sleep(120)
					if(usr) if(usr.log4nintrain==0) return
					if(usr.stamina > 5)
						if(usr.Mnin<100000000)
							usr.exp+=50
							usr.Levelup()
							usr.Mnin+=4
							usr.maxhealth+=4
							usr.stamina-=rand(1,2)
							usr.nin = usr.Mnin
							usr<<"Seu Ninjutsu aumentou.."
						else
							usr<<"Voc� j� chegou ao n�vel m�ximo."
					sleep(120)
					if(usr) if(usr.log4nintrain==0) return
					if(usr.stamina > 5)
						if(usr.Mnin<100000000)
							usr.exp+=70
							usr.Levelup()
							usr.Mnin+=5
							usr.maxhealth+=5
							usr.stamina-=rand(1,2)
							usr.nin = usr.Mnin
							usr<<"Seu Ninjutsu aumentou.."
						else
							usr<<"Voc� j� chegou ao n�vel m�ximo."
					if(usr.stamina <= 5)
						usr<<"Voc� parou de Treinar Ninjutsu no Log4."
						usr.log4nintrain=0
						usr.icon_state=null
						usr.canlog4nintrain=1
						usr.Frozen=0
						spawn(600)
							usr.canlog4nintrain=0