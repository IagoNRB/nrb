mob
	var
		votou1=0
		votou2=0
		votou3=0
		votou4=0
		javoto=0
		comecouavotacao=0
		pergunta=""
		opcao1="Tanto faz!"
		opcao2="Tanto faz!"
		opcao3=""
		opcao4=""

mob/votacao
	verb
		Votar1()
			set name = "Votar Opçao 1"
			set category = "Votacao"
			if(usr.javoto==1)
				alert("Voce ja votou nesta enquete!")
				return
			else
				world<<"[usr] votou na opçao 1"
				usr.javoto=1
				for(var/mob/M in world)
					if(M.comecouavotacao==1)
						M.votou1+=1
				sleep(500)
				usr.javoto=0
		Votar2()
			set name = "Votar Opçao 2"
			set category = "Votacao"
			if(usr.javoto==1)
				alert("Voce ja votou nesta enquete!")
				return
			else
				world<<"[usr] votou na opçao 2"
				usr.javoto=1
				for(var/mob/M in world)
					if(M.comecouavotacao==1)
						M.votou2+=1
				sleep(500)
				usr.javoto=0
		Votar3()
			set name = "Votar Opçao 3"
			set category = "Votacao"
			if(usr.javoto==1)
				alert("Voce ja votou nesta enquete!")
				return
			else
				world<<"[usr] votou na opçao 3"
				usr.javoto=1
				for(var/mob/M in world)
					if(M.comecouavotacao==1)
						M.votou3+=1
				sleep(500)
				usr.javoto=0
		Votar4()
			set name = "Votar Opçao 4"
			set category = "Votacao"
			if(usr.javoto==1)
				alert("Voce ja votou nesta enquete!")
				return
			else
				world<<"[usr] votou na opçao 4"
				usr.javoto=1
				for(var/mob/M in world)
					if(M.comecouavotacao==1)
						M.votou4+=1
				sleep(500)
				usr.javoto=0

mob/ADM
	verb
		IniciarVotacao()
			set name = "Iniciar Votação"
			set category = "ADM"
			var/pergunta=(input("Qual será a pergunta? (Não utilize HTML)") as text)
			if(pergunta=="")
				return
			else
				switch(input("Quantas opções terá?") in list("2","3","4"))
					if("2")
						var/opcao1=(input("Qual será a opção 1?") as text)
						usr<<"Opção 1 passou para [opcao1]"
						sleep(1)
						var/opcao2=(input("Qual será a opção 2?") as text)
						usr<<"Opção 2 passou para [opcao2]"
						world<<"<FONT SIZE = 3>[usr] está fazendo uma votação! A pergunta é: [pergunta]!! As opções são:</FONT>"
						world<<"<FONT SIZE = 2>Opção 1: [opcao1]"
						world<<"<FONT SIZE = 2>Opção 2: [opcao2]"
						world<<"<FONT SIZE = 2>Opção 3: [opcao3]"
						world<<"<FONT SIZE = 2>Opção 4: [opcao4]"
						usr.comecouavotacao=1
						for(var/mob/M in world)
							if(M.client)
								M.verbs+=typesof(/mob/votacao/verb)
								M.javoto=0
								usr.votou1=0
								usr.votou2=0
								usr.votou3=0
								usr.votou4=0
						sleep(1200)
						world<<"<FONT SIZE = 3>A votação se encerrou. e os resultados foram: ([pergunta])</FONT>"
						world<<"<FONT SIZE = 2>Opção 1: [opcao1]: [usr.votou1]"
						world<<"<FONT SIZE = 2>Opção 2: [opcao2]: [usr.votou2]"
						world<<"<FONT SIZE = 2>Opção 3: [opcao3]: [usr.votou3]"
						world<<"<FONT SIZE = 2>Opção 4: [opcao4]: [usr.votou4]"
						usr.comecouavotacao=0
						for(var/mob/M in world)
							if(M.client)
								M.verbs-=typesof(/mob/votacao/verb)
								M.javoto=0
						sleep(1)
						opcao1="Tanto faz!"
						opcao2="Tanto faz!"
						opcao3="Tanto faz!"
						opcao4="Tanto faz!"
						pergunta=""
						usr.votou1=0
						usr.votou2=0
						usr.votou3=0
						usr.votou4=0
					if("3")
						var/opcao1=(input("Qual será a opção 1?") as text)
						usr<<"Opção 1 passou para [opcao1]"
						sleep(1)
						var/opcao2=input("Qual será a opção 2?") as text
						usr<<"Opção 2 passou para [opcao2]"
						sleep(1)
						var/opcao3=input("Qual será a opção 3?") as text
						usr<<"Opção 3 passou para [opcao3]"
						world<<"<FONT SIZE = 3>[usr] está fazendo uma votação! A pergunta é: [pergunta]!! As opções são:</FONT>"
						world<<"<FONT SIZE = 2>Opção 1: [opcao1]"
						world<<"<FONT SIZE = 2>Opção 2: [opcao2]"
						world<<"<FONT SIZE = 2>Opção 3: [opcao3]"
						world<<"<FONT SIZE = 2>Opção 4: [opcao4]"
						usr.comecouavotacao=1
						for(var/mob/M in world)
							if(M.client)
								M.verbs+=typesof(/mob/votacao/verb)
								M.javoto=0
								usr.votou1=0
								usr.votou2=0
								usr.votou3=0
								usr.votou4=0
						sleep(1200)
						world<<"<FONT SIZE = 3>A votação se encerrou. e os resultados foram: ([pergunta])</FONT>"
						world<<"<FONT SIZE = 2>Opção 1: [opcao1]: [usr.votou1]"
						world<<"<FONT SIZE = 2>Opção 2: [opcao2]: [usr.votou2]"
						world<<"<FONT SIZE = 2>Opção 3: [opcao3]: [usr.votou3]"
						world<<"<FONT SIZE = 2>Opção 4: [opcao4]: [usr.votou4]"
						usr.comecouavotacao=0
						for(var/mob/M in world)
							if(M.client)
								M.verbs-=typesof(/mob/votacao/verb)
								M.javoto=0
						sleep(1)
						opcao1="Tanto faz!"
						opcao2="Tanto faz!"
						opcao3="Tanto faz!"
						opcao4="Tanto faz!"
						pergunta=""
						usr.votou1=0
						usr.votou2=0
						usr.votou3=0
						usr.votou4=0
					if("4")
						var/opcao1=input("Qual será a opção 1?") as text
						usr<<"Opção 1 passou para [opcao1]"
						sleep(1)
						var/opcao2=input("Qual será a opção 2?") as text
						usr<<"Opção 2 passou para [opcao2]"
						sleep(1)
						var/opcao3=input("Qual será a opção 3?") as text
						sleep(1)
						var/opcao4=input("Qual será a opção 4?") as text
						usr<<"Opção 3 passou para [opcao3]"
						world<<"<FONT SIZE = 3>[usr] está fazendo uma votação! A pergunta é: [pergunta]!! As opções são:</FONT>"
						world<<"<FONT SIZE = 2>Opção 1: [opcao1]"
						world<<"<FONT SIZE = 2>Opção 2: [opcao2]"
						world<<"<FONT SIZE = 2>Opção 3: [opcao3]"
						world<<"<FONT SIZE = 2>Opção 4: [opcao4]"
						usr.comecouavotacao=1
						for(var/mob/M in world)
							if(M.client)
								M.verbs+=typesof(/mob/votacao/verb)
								M.javoto=0
								usr.votou1=0
								usr.votou2=0
								usr.votou3=0
								usr.votou4=0
						sleep(1200)
						world<<"<FONT SIZE = 3>A votação se encerrou. e os resultados foram: ([pergunta])</FONT>"
						world<<"<FONT SIZE = 2>Opçao 1: [opcao1]: [usr.votou1]"
						world<<"<FONT SIZE = 2>Opçao 2: [opcao2]: [usr.votou2]"
						world<<"<FONT SIZE = 2>Opçao 3: [opcao3]: [usr.votou3]"
						world<<"<FONT SIZE = 2>Opçao 4: [opcao4]: [usr.votou4]"
						usr.comecouavotacao=0
						for(var/mob/M in world)
							if(M.client)
								M.verbs-=typesof(/mob/votacao/verb)
								M.javoto=0
						sleep(1)
						opcao1="Tanto faz!"
						opcao2="Tanto faz!"
						opcao3="Tanto faz!"
						opcao4="Tanto faz!"
						pergunta=""
						usr.votou1=0
						usr.votou2=0
						usr.votou3=0
						usr.votou4=0



/*
kakuzu jutsus (linhas e pele de ferro)
oiroke n desativa

zambatou bugged*/