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
			set name = "Votar Op�ao 1"
			set category = "Votacao"
			if(usr.javoto==1)
				alert("Voce ja votou nesta enquete!")
				return
			else
				world<<"[usr] votou na op�ao 1"
				usr.javoto=1
				for(var/mob/M in world)
					if(M.comecouavotacao==1)
						M.votou1+=1
				sleep(500)
				usr.javoto=0
		Votar2()
			set name = "Votar Op�ao 2"
			set category = "Votacao"
			if(usr.javoto==1)
				alert("Voce ja votou nesta enquete!")
				return
			else
				world<<"[usr] votou na op�ao 2"
				usr.javoto=1
				for(var/mob/M in world)
					if(M.comecouavotacao==1)
						M.votou2+=1
				sleep(500)
				usr.javoto=0
		Votar3()
			set name = "Votar Op�ao 3"
			set category = "Votacao"
			if(usr.javoto==1)
				alert("Voce ja votou nesta enquete!")
				return
			else
				world<<"[usr] votou na op�ao 3"
				usr.javoto=1
				for(var/mob/M in world)
					if(M.comecouavotacao==1)
						M.votou3+=1
				sleep(500)
				usr.javoto=0
		Votar4()
			set name = "Votar Op�ao 4"
			set category = "Votacao"
			if(usr.javoto==1)
				alert("Voce ja votou nesta enquete!")
				return
			else
				world<<"[usr] votou na op�ao 4"
				usr.javoto=1
				for(var/mob/M in world)
					if(M.comecouavotacao==1)
						M.votou4+=1
				sleep(500)
				usr.javoto=0

mob/ADM
	verb
		IniciarVotacao()
			set name = "Iniciar Vota��o"
			set category = "ADM"
			var/pergunta=(input("Qual ser� a pergunta? (N�o utilize HTML)") as text)
			if(pergunta=="")
				return
			else
				switch(input("Quantas op��es ter�?") in list("2","3","4"))
					if("2")
						var/opcao1=(input("Qual ser� a op��o 1?") as text)
						usr<<"Op��o 1 passou para [opcao1]"
						sleep(1)
						var/opcao2=(input("Qual ser� a op��o 2?") as text)
						usr<<"Op��o 2 passou para [opcao2]"
						world<<"<FONT SIZE = 3>[usr] est� fazendo uma vota��o! A pergunta �: [pergunta]!! As op��es s�o:</FONT>"
						world<<"<FONT SIZE = 2>Op��o 1: [opcao1]"
						world<<"<FONT SIZE = 2>Op��o 2: [opcao2]"
						world<<"<FONT SIZE = 2>Op��o 3: [opcao3]"
						world<<"<FONT SIZE = 2>Op��o 4: [opcao4]"
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
						world<<"<FONT SIZE = 3>A vota��o se encerrou. e os resultados foram: ([pergunta])</FONT>"
						world<<"<FONT SIZE = 2>Op��o 1: [opcao1]: [usr.votou1]"
						world<<"<FONT SIZE = 2>Op��o 2: [opcao2]: [usr.votou2]"
						world<<"<FONT SIZE = 2>Op��o 3: [opcao3]: [usr.votou3]"
						world<<"<FONT SIZE = 2>Op��o 4: [opcao4]: [usr.votou4]"
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
						var/opcao1=(input("Qual ser� a op��o 1?") as text)
						usr<<"Op��o 1 passou para [opcao1]"
						sleep(1)
						var/opcao2=input("Qual ser� a op��o 2?") as text
						usr<<"Op��o 2 passou para [opcao2]"
						sleep(1)
						var/opcao3=input("Qual ser� a op��o 3?") as text
						usr<<"Op��o 3 passou para [opcao3]"
						world<<"<FONT SIZE = 3>[usr] est� fazendo uma vota��o! A pergunta �: [pergunta]!! As op��es s�o:</FONT>"
						world<<"<FONT SIZE = 2>Op��o 1: [opcao1]"
						world<<"<FONT SIZE = 2>Op��o 2: [opcao2]"
						world<<"<FONT SIZE = 2>Op��o 3: [opcao3]"
						world<<"<FONT SIZE = 2>Op��o 4: [opcao4]"
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
						world<<"<FONT SIZE = 3>A vota��o se encerrou. e os resultados foram: ([pergunta])</FONT>"
						world<<"<FONT SIZE = 2>Op��o 1: [opcao1]: [usr.votou1]"
						world<<"<FONT SIZE = 2>Op��o 2: [opcao2]: [usr.votou2]"
						world<<"<FONT SIZE = 2>Op��o 3: [opcao3]: [usr.votou3]"
						world<<"<FONT SIZE = 2>Op��o 4: [opcao4]: [usr.votou4]"
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
						var/opcao1=input("Qual ser� a op��o 1?") as text
						usr<<"Op��o 1 passou para [opcao1]"
						sleep(1)
						var/opcao2=input("Qual ser� a op��o 2?") as text
						usr<<"Op��o 2 passou para [opcao2]"
						sleep(1)
						var/opcao3=input("Qual ser� a op��o 3?") as text
						sleep(1)
						var/opcao4=input("Qual ser� a op��o 4?") as text
						usr<<"Op��o 3 passou para [opcao3]"
						world<<"<FONT SIZE = 3>[usr] est� fazendo uma vota��o! A pergunta �: [pergunta]!! As op��es s�o:</FONT>"
						world<<"<FONT SIZE = 2>Op��o 1: [opcao1]"
						world<<"<FONT SIZE = 2>Op��o 2: [opcao2]"
						world<<"<FONT SIZE = 2>Op��o 3: [opcao3]"
						world<<"<FONT SIZE = 2>Op��o 4: [opcao4]"
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
						world<<"<FONT SIZE = 3>A vota��o se encerrou. e os resultados foram: ([pergunta])</FONT>"
						world<<"<FONT SIZE = 2>Op�ao 1: [opcao1]: [usr.votou1]"
						world<<"<FONT SIZE = 2>Op�ao 2: [opcao2]: [usr.votou2]"
						world<<"<FONT SIZE = 2>Op�ao 3: [opcao3]: [usr.votou3]"
						world<<"<FONT SIZE = 2>Op�ao 4: [opcao4]: [usr.votou4]"
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