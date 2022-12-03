mob/var/Log3taitrain = 0
mob/var/Log3gentrain = 0
mob/var/Log3nintrain = 0
mob/var/Log3armtrain = 0

mob/var/tmp/canLog3taitrain = 0
mob/var/tmp/canLog3gentrain = 0
mob/var/tmp/canLog3nintrain = 0
mob/var/tmp/canLog3armtrain = 0






mob/
obj
	Log3Tai
		icon = 'training logb.dmi'
		density = 1
		verb
			TaiLog3()
				set name = "Treinamento de Taijutsu Log3"
				set category = "Treinamento"
				set src in oview(1)
				if(usr.deslogado)
					usr<<"Você precisa logar primeiro para treinar."
					return
				if(usr.level >= 1000)
					usr<<"Você já chegou ao level máximo."
					return
				if (usr.armastreino)
					usr<<"Não enquanto treina armas"
					return
				if(usr.varmastreino)
					usr<<"Não enquanto treina armas"
					return
				if(usr.kawa)
					usr<<"Não no Kawarimi"
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
				if(usr.treinando)
					usr<<"Espere para poder upar novamente"
					return
				if(usr.health<5)
					usr<<"Você está cansado. Descanse."
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
				if(usr.treinamento)
					usr.treinamento=0
					usr.treinando=1
					usr.move=1
					usr.Frozen=0
					usr << "Você parou de treinar Taijutsu no Log3."
					spawn(100)
						usr.treinando=0
						usr.move=0
						usr.Frozen=1
				else
					usr<<"Você começa a Treinar Taijutsu no Log3."
					usr.treinamento=1
					while(usr.treinamento)
						if(usr.concing)
							usr.concing=0
							usr.treinamento=0
							return
						if(usr.libering)
							usr.libering=0
							usr.treinamento=0
							return
						if(usr.meditating)
							usr.meditating=0
							usr.treinamento=0
							return
						if(usr.vmeditating)
							usr.vmeditating=0
							usr.treinamento=0
							return
						if(usr.vconcing)
							usr.vconcing=0
							usr.treinamento=0
							return
						if(usr.vlibering)
							usr.vlibering=0
							usr.treinamento=0
							return
						if(usr.armastreino)
							usr.armastreino=0
							usr.treinamento=0
							return
						sleep(200)
						if(!usr.treinamento)
							return
						if(usr.stamina > 5)
							if(usr.level<=3000)
								usr.exp+=10
								usr.Levelup()
								usr.Mtai+=1.05
								usr.stamina-=rand(1,2)
								usr.tai = usr.Mtai
								usr<<"Seu taijutsu aumentou."
							else
								usr<<"Você já chegou ao nível máximo."
						sleep(250)
						if(usr.Log3taitrain==0)
							return
						if(usr.stamina > 5)
							if(usr.level<=3000)
								usr.exp+=10
								usr.Levelup()
								usr.Mtai+=1.05
								usr.stamina-=rand(1,2)
								usr.tai = usr.Mtai
								usr<<"Seu taijutsu aumentou."
							else
								usr<<"Você já chegou ao nível máximo."
						sleep(200)
						if(usr.Log3taitrain==0)
							return
						if(usr.stamina > 5)
							if(usr.level<=3000)
								usr.exp+=10
								usr.Levelup()
								usr.Mtai+=1.05
								usr.stamina-=rand(1,2)
								usr.tai = usr.Mtai
								usr<<"Seu taijutsu aumentou."
							else
								usr<<"Você já chegou ao nível máximo."
						sleep(250)
						if(usr.Log3taitrain==0)
							return
						if(usr.stamina > 5)
							if(usr.level<=3000)
								usr.exp+=10
								usr.Levelup()
								usr.Mtai+=1.05
								usr.stamina-=rand(1,2)
								usr.tai = usr.Mtai
								usr<<"Seu taijutsu aumentou."
							else
								usr<<"Você já chegou ao nível máximo."
						if(usr.stamina <= 5)
							usr<<"Você parou de Treinar Taijutsu no Log3."
							usr.Log3taitrain=0
							usr.icon_state=null
							usr.canLog3taitrain=1
							usr.move=1
							usr.Frozen=0
							spawn(100)
								usr.canLog3taitrain=0







mob/
obj
	Log3arm
		icon = 'training logb.dmi'
		density = 1
		verb
			ArmLog3()
				set name = "Treinamento de Armas Log3"
				set category = "Treinamento"
				set src in oview(1)
				if(usr.deslogado)
					usr<<"Você precisa logar primeiro para treinar."
					return
				if(usr.level >= 1000)
					usr<<"Você já chegou ao level máximo."
					return
				if (usr.armastreino)
					usr<<"Não enquanto treina armas"
					return
				if(usr.varmastreino)
					usr<<"Não enquanto treina armas"
					return
				if(usr.kawa)
					usr<<"Não no Kawarimi"
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
				if(usr.canLog3armtrain)
					usr<<"Espere para poder upar novamente"
					return
				if(usr.health<5)
					usr<<"Você está cansado. Descanse."
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
				if(usr.Log3armtrain)
					usr.Log3armtrain=0
					usr.canLog3armtrain=1
					usr.move=1
					usr.Frozen=0
					usr << "Você parou de treinar Armas no Log3."
					spawn(100)
						usr.canLog3armtrain=0
				else
					usr<<"Você começa a Treinar Armas no Log3."
					usr.Log3armtrain=1
					usr.move=0
					usr.Frozen=1
					while(usr.Log3armtrain)
						if(usr.concing)
							usr.concing=0
							usr.Log3armtrain=0
							return
						if(usr.libering)
							usr.libering=0
							usr.Log3armtrain=0
							return
						if(usr.meditating)
							usr.meditating=0
							usr.Log3armtrain=0
							return
						if(usr.vmeditating)
							usr.vmeditating=0
							usr.Log3armtrain=0
							return
						if(usr.vconcing)
							usr.vconcing=0
							usr.Log3armtrain=0
							return
						if(usr.vlibering)
							usr.vlibering=0
							usr.Log3armtrain=0
							return
						if(usr.armastreino)
							usr.armastreino=0
							usr.Log3armtrain=0
							return
						sleep(200)
						if(!usr.Log3armtrain)
							return
						if(usr.stamina > 5)
							if(usr.level<=3000)
								usr.exp+=10
								usr.Levelup()
								usr.Mshurikenskill+=1.05
								usr.stamina-=rand(1,2)
								usr.shurikenskill = usr.Mshurikenskill
								usr<<"Sua perícia com Armas aumentou.."
							else
								usr<<"Você já chegou ao nível máximo."
						sleep(250)
						if(usr.Log3armtrain==0)
							return
						if(usr.stamina > 5)
							if(usr.level<=3000)
								usr.exp+=10
								usr.Levelup()
								usr.Mshurikenskill+=1.05
								usr.stamina-=rand(1,2)
								usr.shurikenskill = usr.Mshurikenskill
								usr<<"Sua perícia com Armas aumentou.."
							else
								usr<<"Você já chegou ao nível máximo."
						sleep(200)
						if(usr.Log3armtrain==0)
							return
						if(usr.stamina > 5)
							if(usr.level<=3000)
								usr.exp+=10
								usr.Levelup()
								usr.Mshurikenskill+=1.05
								usr.stamina-=rand(1,2)
								usr.shurikenskill = usr.Mshurikenskill
								usr<<"Sua perícia com Armas aumentou.."
							else
								usr<<"Você já chegou ao nível máximo."
						sleep(250)
						if(usr.Log3armtrain==0)
							return
						if(usr.stamina > 5)
							if(usr.level<=3000)
								usr.exp+=10
								usr.Levelup()
								usr.Mshurikenskill+=1.05
								usr.stamina-=rand(1,2)
								usr.shurikenskill = usr.Mshurikenskill
								usr<<"Sua perícia com Armas aumentou.."
							else
								usr<<"Você já chegou ao nível máximo."
						if(usr.stamina <= 5)
							usr<<"Você parou de Treinar Armas no Log3."
							usr.Log3armtrain=0
							usr.icon_state=null
							usr.canLog3armtrain=1
							usr.move=1
							usr.Frozen=0
							spawn(100)
								usr.canLog3armtrain=0





mob/
obj
	Log3Gen
		icon = 'training logb.dmi'
		density = 1
		verb
			GenLog3()
				set name = "Treinar Genjutsu no Log3"
				set category = "Treinamento"
				set src in oview(1)
				if(usr.deslogado)
					usr<<"Você precisa logar primeiro para treinar."
					return
				if(usr.level >= 1000)
					usr<<"Você já chegou ao level máximo."
					return
				if (usr.armastreino)
					usr<<"Não enquanto treina armas"
					return
				if(usr.kawa)
					usr<<"Não no Kawarimi"
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
				if(usr.canLog3gentrain)
					usr<<"Espere para poder upar novamente"
					return
				if(usr.health<5)
					usr<<"Você está cansado. Descanse."
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
				if(usr.Log3gentrain)
					usr.Log3gentrain=0
					usr.canLog3gentrain=1
					usr.move=1
					usr.Frozen=0
					usr << "Você parou de Treinar Genjutsu no Log3."
					spawn(100)
						usr.canLog3gentrain=0
				else
					usr<<"Você começa a Treinar Genjutsu no Log3."
					usr.Log3gentrain=1
					usr.move=0
					usr.Frozen=1
					while(usr.Log3gentrain)
						if(usr.concing)
							usr.concing=0
							usr.Log3gentrain=0
							return
						if(usr.libering)
							usr.libering=0
							usr.Log3gentrain=0
							return
						if(usr.meditating)
							usr.meditating=0
							usr.Log3gentrain=0
							return
						if(usr.vmeditating)
							usr.vmeditating=0
							usr.Log3gentrain=0
							return
						if(usr.vconcing)
							usr.vconcing=0
							usr.Log3gentrain=0
							return
						if(usr.vlibering)
							usr.vlibering=0
							usr.Log3gentrain=0
							return
						if(usr.armastreino)
							usr.armastreino=0
							usr.Log3gentrain=0
							return
						sleep(200)
						if(!usr.Log3gentrain)
							return
						if(usr.stamina > 5)
							if(usr.level<=3000)
								usr.exp+=10
								usr.Levelup()
								usr.Mgen+=1.05
								usr.stamina-=rand(1,2)
								usr.gen = usr.Mgen
								usr<<"Seu Genjtutsu aumentou.."
							else
								usr<<"Você já chegou ao nível máximo."
						sleep(250)
						if(usr.Log3gentrain==0)
							return
						if(usr.stamina > 5)
							if(usr.level<=3000)
								usr.exp+=10
								usr.Levelup()
								usr.Mgen+=1.05
								usr.stamina-=rand(1,2)
								usr.gen = usr.Mgen
								usr<<"Seu Genjtutsu aumentou.."
							else
								usr<<"Você já chegou ao nível máximo."
						sleep(200)
						if(usr.Log3gentrain==0)
							return
						if(usr.stamina > 5)
							if(usr.level<=3000)
								usr.exp+=10
								usr.Levelup()
								usr.Mgen+=1.05
								usr.stamina-=rand(1,2)
								usr.gen = usr.Mgen
								usr<<"Seu Genjtutsu aumentou.."
							else
								usr<<"Você já chegou ao nível máximo."
						sleep(250)
						if(usr.Log3gentrain==0)
							return
						if(usr.stamina > 5)
							if(usr.level<=3000)
								usr.exp+=10
								usr.Levelup()
								usr.Mgen+=1.05
								usr.stamina-=rand(1,2)
								usr.gen = usr.Mgen
								usr<<"Seu Genjtutsu aumentou.."
							else
								usr<<"Você já chegou ao nível máximo."
						if(usr.stamina <= 5)
							usr<<"Você parou de Treinar Genjutsu no Log3."
							usr.Log3gentrain=0
							usr.icon_state=null
							usr.canLog3gentrain=1
							usr.move=1
							usr.Frozen=0
							spawn(100)
								usr.canLog3gentrain=0




mob/
obj
	Log3Nin
		icon = 'training logb.dmi'
		density = 1
		verb
			NinLog3()
				set name = "Treinar Ninjutsu no Log3"
				set category = "Treinamento"
				set src in oview(1)
				if(usr.deslogado)
					usr<<"Você precisa logar primeiro para treinar."
					return
				if(usr.level >= 1000)
					usr<<"Você já chegou ao level máximo."
					return
				if (usr.armastreino)
					usr<<"Não enquanto treina armas"
					return
				if(usr.kawa)
					usr<<"Não no Kawarimi"
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
				if(usr.canLog3nintrain)
					usr<<"Espere para poder upar novamente"
					return
				if(usr.health<5)
					usr<<"Você está cansado. Descanse."
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
				if(usr.Log3nintrain)
					usr.Log3nintrain=0
					usr.canLog3nintrain=1
					usr.move=1
					usr.Frozen=0
					usr << "Você parou de Treinar Ninjutsu no Log3."
					spawn(100)
						usr.canLog3nintrain=0
				else
					usr<<"Você começa a Treinar Ninjutsu no Log3."
					usr.Log3nintrain=1
					usr.move=0
					usr.Frozen=1
					while(usr.Log3nintrain)
						if(usr.concing)
							usr.concing=0
							usr.Log3nintrain=0
							return
						if(usr.libering)
							usr.libering=0
							usr.Log3nintrain=0
							return
						if(usr.meditating)
							usr.meditating=0
							usr.Log3nintrain=0
							return
						if(usr.vmeditating)
							usr.vmeditating=0
							usr.Log3nintrain=0
							return
						if(usr.vconcing)
							usr.vconcing=0
							usr.Log3nintrain=0
							return
						if(usr.vlibering)
							usr.vlibering=0
							usr.Log3nintrain=0
							return
						if(usr.armastreino)
							usr.armastreino=0
							usr.Log3nintrain=0
							return
						sleep(200)
						if(!usr.Log3nintrain)
							return
						if(usr.stamina > 5)
							if(usr.level<=3000)
								usr.exp+=10
								usr.Levelup()
								usr.Mnin+=1.05
								usr.stamina-=rand(1,2)
								usr.nin = usr.Mnin
								usr<<"Seu Ninjutsu aumentou.."
							else
								usr<<"Você já chegou ao nível máximo."
						sleep(250)
						if(usr.Log3nintrain==0)
							return
						if(usr.stamina > 5)
							if(usr.level<=3000)
								usr.exp+=10
								usr.Levelup()
								usr.Mnin+=1.05
								usr.stamina-=rand(1,2)
								usr.nin = usr.Mnin
								usr<<"Seu Ninjutsu aumentou.."
							else
								usr<<"Você já chegou ao nível máximo."
						sleep(200)
						if(usr.Log3nintrain==0)
							return
						if(usr.stamina > 5)
							if(usr.level<=3000)
								usr.exp+=10
								usr.Levelup()
								usr.Mnin+=1.05
								usr.stamina-=rand(1,2)
								usr.nin = usr.Mnin
								usr<<"Seu Ninjutsu aumentou.."
							else
								usr<<"Você já chegou ao nível máximo."
						sleep(250)
						if(usr.Log3nintrain==0)
							return
						if(usr.stamina > 5)
							if(usr.level<=3000)
								usr.exp+=10
								usr.Levelup()
								usr.Mnin+=1.05
								usr.stamina-=rand(1,2)
								usr.nin = usr.Mnin
								usr<<"Seu Ninjutsu aumentou.."
							else
								usr<<"Você já chegou ao nível máximo."
						if(usr.stamina <= 5)
							usr<<"Você parou de Treinar Ninjutsu no Log3."
							usr.Log3nintrain=0
							usr.icon_state=null
							usr.canLog3nintrain=1
							usr.move=1
							usr.Frozen=0
							spawn(100)
								usr.canLog3nintrain=0