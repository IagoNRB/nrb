mob/var/capextendido=0
mob/var/scrollcappegoA=0
mob/var/scrollcappegoB=0
mob/var/scrollcappegoC=0
mob/var/scrollcappegoD=0
mob/var/procuraperg=0


/*mob/npc/SabioTreino
	name = "{NPC}Sabio do Treino"
	icon = 'UltimetiumNPCS.dmi'
	NPC = 1
	icon_state = "Tutor de Up"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Sabio"
			switch(input("Gostaria de ser capaz de armazenar mais Chakra?", text) in list("Sim!","Não, obrigado"))
				if("Sim!")
					if(!usr.capextendido)
						if(usr.maxhealth>=800000&&usr.level>=350&&usr.chakraN>=200000)
							usr<<"Muito bem, agora ache meus pergaminhos do chakra perdidos!"
							if(usr.scrollcappegoA&&usr.scrollcappegoB&&usr.scrollcappegoC&&usr.scrollcappegoD)
								usr<<"Muito bem, agora posso executar o Ritual para seu fortalecimento..."
								sleep(10)
								usr<<"Você sente um poder te fortalecendo..."
								sleep(10)
								usr<<"Use este poder com sabedoria..."
								sleep(10)
								usr<<"<B><font color = blue>Você agora é capaz de armazenar mais Chakra em seu corpo!"
								usr.capextendido=1
								for(var/obj/PergQuestChakraA/A in usr) del A
								for(var/obj/PergQuestChakraD/D in usr) del D
								for(var/obj/PergQuestChakraB/B in usr) del B
								for(var/obj/PergQuestChakraC/C in usr) del C
							else
								usr<<"Você não achou todos meus pergaminhos do Chakra ainda!"
						else
							usr<<"Treine bastante... precisar ter seu controle maior... ou sua resistência não é sufuciente!"
					else
						usr<<"Você já completou esta quest!"
				if("Não, obrigado")
					usr<<"Fraco..."*/


obj
	PergQuestChakraA
		name = "Pergaminho do Chakra"
		icon = 'scrolls.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state="bee"
		worn = 0
		price = 9999999999999999999999
		verb
			Olhar()
				usr<<"É um Pergaminho do Chakra. Faz parte de uma Quest!"
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
				usr.scrollcappegoA=1

obj
	PergQuestChakraD
		name = "Pergaminho do Chakra"
		icon = 'scrolls.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state="frog"
		worn = 0
		price = 9999999999999999999999
		verb
			Olhar()
				usr<<"É um Pergaminho do Chakra. Faz parte de uma Quest!"
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
				usr.scrollcappegoD=1

obj
	PergQuestChakraB
		name = "Pergaminho do Chakra"
		icon = 'scrolls.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state="snake"
		worn = 0
		price = 9999999999999999999999
		verb
			Olhar()
				usr<<"É um Pergaminho do Chakra. Faz parte de uma Quest!"
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
				usr.scrollcappegoB=1

obj
	PergQuestChakraC
		name = "Pergaminho do Chakra"
		icon = 'scrolls.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state="slug"
		worn = 0
		price = 9999999999999999999999
		verb
			Olhar()
				usr<<"É um Pergaminho do Chakra. Faz parte de uma Quest!"
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
				usr.scrollcappegoC=1


turf
	QCE
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/B=A
				if(B.client)
					if(B.density==1)
						if(B.level>=350)
							B.loc = locate(560,257,10)
						else
							B<<"Você precisa ser mais forte para poder entrar!"
							world<<"[B] foi morto por uma barreira extremamente poderosa!"
							B.health=0
							B.chakra=0
							B.Death(B)
							//usr.SalvarAgora()
					else
						usr<<"Não enquanto voa."


turf
	QMS
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/B=A
				if(B.client)
					if(B.density==1)
						if(B.level>=200&&B.seals>=100)
							B.loc = locate(576,161,10)
						else
							B<<"Você precisa ser mais forte para poder entrar!"
							world<<"[B] foi morto por uma barreira extremamente poderosa!"
							B.health=0
							B.chakra=0
							B.Death(B)
							//usr.SalvarAgora()
					else
						usr<<"Não enquanto voa."


mob/var/nivelElementoT=""
mob/var/nivelElementoS=""
mob/var/nivelElementoR=""
mob/var/nivelElementoK=""
mob/var/nivelElementoV=""














