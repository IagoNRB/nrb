

mob/var/capstaextendido=0
mob/var/scrollcapstapegoA=0
mob/var/scrollcapstapegoB=0
mob/var/scrollcapstapegoC=0
mob/var/scrollcapstapegoD=0
mob/var/procurapergsta=0


mob/npc/SabioTreino
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
			//set category = "Sabio"
			switch(input("Gostaria de ser capaz de armazenar mais Chakra ou mais Stamina?", text) in list("Chakra","Stamina","Cancelar"))
				if("Chakra")
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
								for(var/obj/PergQuestChakraB/B in usr) del B
								for(var/obj/PergQuestChakraC/C in usr) del C
								for(var/obj/PergQuestChakraD/D in usr) del D
							else
								usr<<"Você não achou todos os meus pergaminhos do Chakra ainda!"
						else
							usr<<"Treine bastante... precisar ter seu controle maior... ou sua resistência não é sufuciente!"
					else
						usr<<"Você já completou esta quest!"
				if("Stamina")
					if(!usr.capstaextendido)
						if(usr.maxhealth>=800000&&usr.level>=350&&usr.veloN>=200000)
							usr<<"Muito bem, agora ache meus pergaminhos de Stamina perdidos!"
							if(usr.scrollcapstapegoA&&usr.scrollcapstapegoB&&usr.scrollcapstapegoC&&usr.scrollcapstapegoD)
								usr<<"Muito bem, agora posso executar o Ritual para seu fortalecimento..."
								sleep(10)
								usr<<"Você sente um poder te fortalecendo..."
								sleep(10)
								usr<<"Use este poder com sabedoria..."
								sleep(10)
								usr<<"<B><font color = blue>Você agora é capaz de armazenar mais Stamina em seu corpo!"
								usr.capstaextendido=1
								for(var/obj/PergQuestStaminaA/A in usr) del A
								for(var/obj/PergQuestStaminaB/B in usr) del B
								for(var/obj/PergQuestStaminaC/C in usr) del C
								for(var/obj/PergQuestStaminaD/D in usr) del D
							else
								usr<<"Você não achou todos os meus pergaminhos de Stamina ainda!"
						else
							usr<<"Treine bastante... você precisa ser mais rápido... ou sua resistência não é sufuciente!"
					else
						usr<<"Você já completou esta quest!"
				if("Cancelar")
					usr<<"Ok..."
					return





//==============================PERGAS QUEST STAMINA========================================

obj
	PergQuestStaminaA
		name = "Pergaminho de Stamina"
		icon = 'scrolls.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state="bee"
		worn = 0
		price = 9999999999999999999999
		verb
			Olhar()
				usr<<"É um Pergaminho de Stamina. Faz parte de uma Quest!"
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
				usr.scrollcapstapegoA=1

obj
	PergQuestStaminaB
		name = "Pergaminho de Stamina"
		icon = 'scrolls.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state="snake"
		worn = 0
		price = 9999999999999999999999
		verb
			Olhar()
				usr<<"É um Pergaminho de Stamina. Faz parte de uma Quest!"
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
				usr.scrollcapstapegoB=1

obj
	PergQuestStaminaC
		name = "Pergaminho de Stamina"
		icon = 'scrolls.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state="slug"
		worn = 0
		price = 9999999999999999999999
		verb
			Olhar()
				usr<<"É um Pergaminho de Stamina. Faz parte de uma Quest!"
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
				usr.scrollcapstapegoC=1

obj
	PergQuestStaminaD
		name = "Pergaminho de Stamina"
		icon = 'scrolls.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state="frog"
		worn = 0
		price = 9999999999999999999999
		verb
			Olhar()
				usr<<"É um Pergaminho de Stamina. Faz parte de uma Quest!"
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
				usr.scrollcapstapegoD=1


