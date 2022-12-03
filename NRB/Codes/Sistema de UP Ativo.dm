mob/var/pontodestats=0
mob/var/tmp/naomatanpcstats=0
mob/var/npcstatskills=0
mob/var/missaostatskills=0

var/tmp/list/CanNotMiss=new/list

var/tmp/list/NotUpLog1h=new/list
var/tmp/list/NotUpLog2h=new/list
var/tmp/list/NotUpLog3h=new/list


mob/var/treinamento
mob/var/treinorestante

mob/var/treino1hr=0
mob/var/treino2hr=0
mob/var/treino3hr=0

mob/var/treinando1hr=0
mob/var/treinando2hr=0
mob/var/treinando3hr=0



//======================================//
var/tmp/list/CanNotUp=new/list
var/tmp/Minutos=0

world
	New()
		spawn(-1) Min_Acontecimentos()
		..()

proc/Min_Acontecimentos()
	while(1)
		sleep(600)
		if(time2text(world.realtime,"hh")=="00"&&time2text(world.realtime,"mm")=="01")
			CanNotUp=new/list
			NotUpLog1h=new/list
			NotUpLog2h=new/list
			NotUpLog3h=new/list
			CanNotMiss=new/list

//=====================================//
mob
	verb
		trocarstatspoints()
			set hidden = 1
			if(usr.deslogado)
				usr<<"Você não pode usar esse comando sem ter logado no jogo"
				return
			switch(input("O que gostaria de trocar?","Trocando Stats Points") in list ("Upar HP","Upar Chakra","Upar Stamina","Upar CC","Upar Velo","Upar Tai","Upar Nin","Upar Gen","Upar Armas","Upar Katon","Upar Doton","Upar Suiton","Upar Fuuton","Upar Raiton","Cancelar"))
				if("Upar HP")
					var/premiacao=input("Quantos Stats Pontos?","Pontos")as num
					if(premiacao<=0)
						usr<<"Coloque um valor maior que 0!"
						return
					if(premiacao>usr.pontodestats)
						usr<<"Você não têm isso tudo de pontos para trocar!"
						return
					if(usr.maxhealth+premiacao>=10000000)
						usr<<"Este valor ultrapassa o Cap ou você já tem o máximo de HP!"
						return
					switch(input("Tem certeza que quer dar [premiacao] Pontos de Stats em HP") in list("Sim","Não"))
						if("Sim")
							if(maxhealth>=500000&&rank=="Genin")
								usr<<"Você como Genin já treinou HP demais!"
								return
							if(maxhealth>=750000&&rank=="Chuunin"||maxhealth>=750000&&rank=="Nukenin"&&seals<=99)
								usr<<"Você como Chunnin já treinou HP demais!"
								return
							if(maxhealth>=1000000&&seals>=100)
								usr<<"Você já treinou HP demais!"
								return
							if(usr.EhVip)
								usr.maxhealth+=premiacao*10.05
								usr<<"Você adicionou [premiacao*10.05] pontos em HP!"
								usr.pontodestats-=premiacao
							else
								usr.maxhealth+=premiacao*10
								usr<<"Você adicionou [premiacao*10] pontos em HP!"
								usr.pontodestats-=premiacao
						if("Não")
							usr<<"Ok!"
				if("Upar Chakra")
					var/premiacao=input("Quantos Stats Pontos?","Pontos")as num
					if(premiacao<=0)
						usr<<"Coloque um valor maior que 0!"
						return
					if(premiacao>usr.pontodestats)
						usr<<"Você não têm isso tudo de pontos para trocar!"
						return
					if(!usr.Uzumaki&&!usr.capextendido&&usr.Mchakra+premiacao>=200000||usr.Uzumaki&&!usr.capextendido&&usr.Mchakra+premiacao>=250000||usr.Uzumaki&&usr.capextendido&&usr.Mchakra+premiacao>=300000||!usr.Uzumaki&&usr.capextendido&&usr.Mchakra+premiacao>=250000)
						usr<<"Este valor ultrapassa o Cap ou você já tem o máximo de Chakra!"
						return
					switch(input("Tem certeza que quer dar [premiacao] Pontos de Stats em Chakra") in list ("Sim","Não"))
						if("Sim")
							if(usr.EhVip)
								usr.Mchakra+=premiacao*10.05
								usr.pontodestats-=premiacao
								usr<<"Você adicionou [premiacao*10.05] pontos em Chakra!"
							else
								usr.Mchakra+=premiacao*10
								usr<<"Você adicionou [premiacao*10] pontos em Chakra!"
								usr.pontodestats-=premiacao
						if("Não")
							usr<<"Ok!"
				if("Upar Stamina")
					var/premiacao=input("Quantos Stats Pontos?","Pontos")as num
					if(premiacao<=0)
						usr<<"Coloque um valor maior que 0!"
						return
					if(premiacao>usr.pontodestats)
						usr<<"Você não têm isso tudo de pontos para trocar!"
						return
					if(usr.Mstamina+premiacao>=200000&&!usr.capstaextendido||usr.Mstamina+premiacao>=usr.maxhealth/4&&usr.capstaextendido)
						usr<<"Este valor ultrapassa o Cap ou você já tem o máximo de Stamina!"
						return
					switch(input("Tem certeza que quer dar [premiacao] Pontos de Stats em Stamina") in list("Sim","Não"))
						if("Sim")
							if(usr.EhVip)
								usr.Mstamina+=premiacao*10.05
								usr<<"Você adicionou [premiacao*10.05] pontos em Stamina!"
								usr.pontodestats-=premiacao
							else
								usr.Mstamina+=premiacao*10
								usr<<"Você adicionou [premiacao*10] pontos em Stamina!"
								usr.pontodestats-=premiacao
						if("Não")
							usr<<"Ok!"
				if("Upar CC")
					var/premiacao=input("Quantos Stats Pontos?","Pontos")as num
					if(premiacao<=0)
						usr<<"Coloque um valor maior que 0!"
						return
					if(premiacao>usr.pontodestats)
						usr<<"Você não têm isso tudo de pontos para trocar!"
						return
					if(usr.chakraN+premiacao>=200000)
						usr<<"Este valor ultrapassa o Cap ou você já tem o máximo de Controle de Chakra!"
						return
					switch(input("Tem certeza que quer dar [premiacao] Pontos de Stats em CC") in list ("Sim","Não"))
						if("Sim")
							if(usr.EhVip)
								usr.chakraN+=premiacao*10.05
								usr.pontodestats-=premiacao
								usr<<"Você adicionou [premiacao*10.05] pontos em Controle de Chakra!"
							else
								usr.chakraN+=premiacao*10
								usr.pontodestats-=premiacao
								usr<<"Você adicionou [premiacao*10] pontos em Controle de Chakra!"
						if("Não")
							usr<<"Ok!"
				if("Upar Velo")
					var/premiacao=input("Quantos Stats Pontos?","Pontos")as num
					if(premiacao<=0)
						usr<<"Coloque um valor maior que 0!"
						return
					if(premiacao>usr.pontodestats)
						usr<<"Você não têm isso tudo de pontos para trocar!"
						return
					if(usr.veloN+premiacao>=200000)
						usr<<"Este valor ultrapassa o Cap ou você já tem o máximo de Velocidade!"
						return
					switch(input("Tem certeza que quer dar [premiacao] Pontos de Stats em Velocidade") in list("Sim","Não"))
						if("Sim")
							if(usr.EhVip)
								usr.veloN+=premiacao*10.05
								usr.pontodestats-=premiacao
								usr<<"Você adicionou [premiacao*10.05] pontos em Velocidade!"
							else
								usr.veloN+=premiacao*10
								usr.pontodestats-=premiacao
								usr<<"Você adicionou [premiacao*10] pontos em Velocidade!"
						if("Não")
							usr<<"Ok!"
				if("Upar Tai")
					var/premiacao=input("Quantos Stats Pontos?","Pontos")as num
					if(premiacao<=0)
						usr<<"Coloque um valor maior que 0!"
						return
					if(premiacao>usr.pontodestats)
						usr<<"Você não têm isso tudo de pontos para trocar!"
						return
					if(usr.level>=3000)
						usr<<"Você já atingiu o Cap!"
						return
					if(usr.Mtai >= 100000000)
						usr<<"Você já chegou ao máximo de Taijutsu."
						return
					switch(input("Tem certeza que quer dar [premiacao] Pontos de Stats em Taijutsu") in list("Sim","Não"))
						if("Sim")
							if(usr.EhVip)
								usr.Mtai+=premiacao*100.5
								usr.pontodestats-=premiacao
								usr<<"Você adicionou [premiacao*100.5] pontos em Taijutsu!"
							else
								usr.Mtai+=premiacao*100
								usr.pontodestats-=premiacao
								usr<<"Você adicionou [premiacao*100] pontos em Taijutsu!"
						if("Não")
							usr<<"Ok!"
				if("Upar Nin")
					var/premiacao=input("Quantos Stats Pontos?","Pontos")as num
					if(premiacao<=0)
						usr<<"Coloque um valor maior que 0!"
						return
					if(premiacao>usr.pontodestats)
						usr<<"Você não têm isso tudo de pontos para trocar!"
						return
					if(usr.level>=3000)
						usr<<"Você já atingiu o Cap!"
						return
					if(usr.Mnin >= 100000000)
						usr<<"Você já chegou ao máximo de Ninjutsu."
						return
					switch(input("Tem certeza que quer dar [premiacao] Pontos de Stats em Ninjutsu") in list("Sim","Não"))
						if("Sim")
							if(usr.EhVip)
								usr.Mnin+=premiacao*100.5
								usr.pontodestats-=premiacao
								usr<<"Você adicionou [premiacao*100.5] pontos em Ninjutsu!"
							else
								usr.Mnin+=premiacao*100
								usr.pontodestats-=premiacao
								usr<<"Você adicionou [premiacao*100] pontos em Ninjutsu!"
						if("Não")
							usr<<"Ok!"
				if("Upar Gen")
					var/premiacao=input("Quantos Stats Pontos?","Pontos")as num
					if(premiacao<=0)
						usr<<"Coloque um valor maior que 0!"
						return
					if(premiacao>usr.pontodestats)
						usr<<"Você não têm isso tudo de pontos para trocar!"
						return
					if(usr.level>=3000)
						usr<<"Você já atingiu o Cap!"
						return
					if(usr.Mgen >= 100000000)
						usr<<"Você já chegou ao máximo de Genjutsu."
						return
					switch(input("Tem certeza que quer dar [premiacao] Pontos de Stats em Genjutsu") in list("Sim","Não"))
						if("Sim")
							if(usr.EhVip)
								usr.Mgen+=premiacao*100.5
								usr.pontodestats-=premiacao
								usr<<"Você adicionou [premiacao*100.5] pontos em Genjutsu!"
							else
								usr.Mgen+=premiacao*100
								usr.pontodestats-=premiacao
								usr<<"Você adicionou [premiacao*100] pontos em Genjutsu!"
						if("Não")
							usr<<"Ok!"
				if("Upar Armas")
					var/premiacao=input("Quantos Stats Pontos?","Pontos")as num
					if(premiacao<=0)
						usr<<"Coloque um valor maior que 0!"
						return
					if(premiacao>usr.pontodestats)
						usr<<"Você não têm isso tudo de pontos para trocar!"
						return
					if(usr.level>=3000)
						usr<<"Você já atingiu o Cap!"
						return
					if(usr.Mshurikenskill >= 100000000)
						usr<<"Você já chegou ao máximo de Armas."
						return
					switch(input("Tem certeza que quer dar [premiacao] Pontos de Stats em Armas") in list("Sim","Não"))
						if("Sim")
							if(usr.EhVip)
								usr.Mshurikenskill+=premiacao*100.5
								usr.pontodestats-=premiacao
								usr<<"Você adicionou [premiacao*100.5] pontos em Perícia com Armas!"
							else
								usr.Mshurikenskill+=premiacao*100
								usr.pontodestats-=premiacao
								usr<<"Você adicionou [premiacao*100] pontos em Perícia com Armas!"
						if("Não")
							usr<<"Ok!"
				if("Upar Katon")
					var/premiacao=input("Quantos Stats Pontos?","Pontos")as num
					if(premiacao<=0)
						usr<<"Coloque um valor maior que 0!"
						return
					if(premiacao>usr.pontodestats)
						usr<<"Você não têm isso tudo de pontos para trocar!"
						return
					if(usr.fogoN>=200000)
						usr<<"Você já atingiu o Cap!"
						return
					switch(input("Tem certeza que quer dar [premiacao] Pontos de Stats em Katon") in list("Sim","Não"))
						if("Sim")
							if(usr.EhVip)
								usr.fogoN+=(premiacao*10.05)/4
								usr.pontodestats-=premiacao
								usr<<"Você adicionou [(premiacao*10.05)/4] pontos em Katon!"
							else
								usr.fogoN+=(premiacao*10)/4
								usr.pontodestats-=premiacao
								usr<<"Você adicionou [(premiacao*10)/4] pontos em Katon!"
						if("Não")
							usr<<"Ok!"
				if("Upar Suiton")
					var/premiacao=input("Quantos Stats Pontos?","Pontos")as num
					if(premiacao<=0)
						usr<<"Coloque um valor maior que 0!"
						return
					if(premiacao>usr.pontodestats)
						usr<<"Você não têm isso tudo de pontos para trocar!"
						return
					if(usr.aguaN>=200000)
						usr<<"Você já atingiu o Cap!"
						return
					switch(input("Tem certeza que quer dar [premiacao] Pontos de Stats em Suiton") in list("Sim","Não"))
						if("Sim")
							if(usr.EhVip)
								usr.aguaN+=(premiacao*10.05)/4
								usr.pontodestats-=premiacao
								usr<<"Você adicionou [(premiacao*10.05)/4] pontos em Suiton!"
							else
								usr.aguaN+=(premiacao*10)/4
								usr.pontodestats-=premiacao
								usr<<"Você adicionou [(premiacao*10)/4] pontos em Suiton!"
						if("Não")
							usr<<"Ok!"
				if("Upar Doton")
					var/premiacao=input("Quantos Stats Pontos?","Pontos")as num
					if(premiacao<=0)
						usr<<"Coloque um valor maior que 0!"
						return
					if(premiacao>usr.pontodestats)
						usr<<"Você não têm isso tudo de pontos para trocar!"
						return
					if(usr.terraN>=200000)
						usr<<"Você já atingiu o Cap!"
						return
					switch(input("Tem certeza que quer dar [premiacao] Pontos de Stats em Doton") in list("Sim","Não"))
						if("Sim")
							if(usr.EhVip)
								usr.terraN+=(premiacao*10.05)/4
								usr.pontodestats-=premiacao
								usr<<"Você adicionou [(premiacao*10.05)/4] pontos em Doton!"
							else
								usr.terraN+=(premiacao*10)/4
								usr.pontodestats-=premiacao
								usr<<"Você adicionou [(premiacao*10)/4] pontos em Doton!"
						if("Não")
							usr<<"Ok!"
				if("Upar Fuuton")
					var/premiacao=input("Quantos Stats Pontos?","Pontos")as num
					if(premiacao<=0)
						usr<<"Coloque um valor maior que 0!"
						return
					if(premiacao>usr.pontodestats)
						usr<<"Você não têm isso tudo de pontos para trocar!"
						return
					if(usr.ventoN>=200000)
						usr<<"Você já atingiu o Cap!"
						return
					switch(input("Tem certeza que quer dar [premiacao] Pontos de Stats em Fuuton") in list("Sim","Não"))
						if("Sim")
							if(usr.EhVip)
								usr.ventoN+=(premiacao*10.05)/4
								usr.pontodestats-=premiacao
								usr<<"Você adicionou [(premiacao*10.05)/4] pontos em Fuuton!"
							else
								usr.ventoN+=(premiacao*10)/4
								usr.pontodestats-=premiacao
								usr<<"Você adicionou [(premiacao*10)/4] pontos em Fuuton!"
						if("Não")
							usr<<"Ok!"
				if("Upar Raiton")
					var/premiacao=input("Quantos Stats Pontos?","Pontos")as num
					if(premiacao<=0)
						usr<<"Coloque um valor maior que 0!"
						return
					if(premiacao>usr.pontodestats)
						usr<<"Você não têm isso tudo de pontos para trocar!"
						return
					if(usr.trovaoN>=200000)
						usr<<"Você já atingiu o Cap!"
						return
					switch(input("Tem certeza que quer dar [premiacao] Pontos de Stats em Raiton") in list("Sim","Não"))
						if("Sim")
							if(usr.EhVip)
								usr.trovaoN+=(premiacao*10.05)/4
								usr.pontodestats-=premiacao
								usr<<"Você adicionou [(premiacao*10.05)/4] pontos em Raiton!"
							else
								usr.trovaoN+=(premiacao*10)/4
								usr.pontodestats-=premiacao
								usr<<"Você adicionou [(premiacao*10)/4] pontos em Raiton!"
						if("Não")
							usr<<"Ok!"