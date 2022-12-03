mob/var/emquest=0


mob/var/ChaveCM = 0
mob/var/ChaveCM2 = 0

obj
	ChaveCM
		name = "Chave Enferrujada"
		icon = 'turfsn.dmi'
		icon_state = "light2"
		worn = 0
		price = 9999999999999999999999
		verb
			Olhar()
				usr<<"Parece ser uma chave grande e enfurrujada. O que ela abre?"
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Voc� pegou uma [src]"
				usr.ChaveCM = 1


obj
	ChaveCM2
		name = "Chave Dourada"
		icon = 'turfsn.dmi'
		icon_state = "light2"
		worn = 0
		price = 9999999999999999999999
		verb
			Olhar()
				usr<<"Parece ser uma chave grande e dourada. O que ela abre?"
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Voc� pegou uma [src]"
				usr.ChaveCM2 = 1

obj
	Corda
		name = "Super Corda Ultra Resistente"
		icon = 'corda.dmi'
		worn = 0
		price = 9999999999999999999999
		verb
			Look()
				usr<<"Parece ser uma corda antiga em p�ssimas condi��es..."


obj
	Lampiao
		name = "Lampi�o"
		icon = 'lampiao.dmi'
		worn = 0
		price = 9999999999999999999999
		verb
			Look()
				usr<<"Parece ser um lampi�o enferrujado, que emite uma luz fraca..."

mob/var/Corda = 0
mob/var/Lampiao = 0


mob/npc/Caramisterioso
	name = "{NPC}Cara Misterioso"
	icon = 'caramisterioso.dmi'
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Cara Misterioso"
			switch(input("Oh, ol� viajante, parece que voc� me encontrou. Gostaria de conferir minhas pechinchas?",text) in list ("Sim!","N�o"))
				if("Sim!")
					switch(input("No momento s� tenho isso, gostaria de comprar??")in list("Super Corda Ultra Resistente","Nada"))
						if("Super Corda Ultra Resistente")
							if(usr.Yen >= 100000)
								usr.Yen -= 100000
								usr.Corda = 1
								var/obj/Corda/B = new/obj/Corda
								B.loc = usr
							else
								usr<<"Me desculpe, mas essa � uma corda muito resistente...estou a vendendo por 100.000 Ryous"
								return
						if("Nada")
							usr<<"Volte sempre"
							return
				if("N�o")
					usr<<"Pena...tenho muitas coisas valiosas"
					return


mob/npc/Velhomisterioso
	icon = 'npcmissao.dmi'
	icon_state = "velhinho"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(1)
			set category = "Velho Misterioso"
			switch(input("Oh, ol� viajante, parece que voc� me encontrou. Gostaria de conferir minhas pechinchas?",text) in list ("Sim!","N�o"))
				if("Sim!")
					switch(input("S� tenho isso no momento, gostaria de comprar??")in list("Lampi�o","Nada"))
						if("Lampi�o")
							if(usr.Yen >= 100000)
								usr.Yen -= 100000
								usr.Lampiao = 1
								var/obj/Lampiao/B = new/obj/Lampiao
								B.loc = usr
							else
								usr<<"Me desculpe, mas esse � um lampi�o raro, e sua luz dura para sempre...estou o vendendo por 100.000 Ryous"
								return
						if("Nada")
							usr<<"Volte sempre"
							return
				if("N�o")
					usr<<"Pena...tenho muitas coisas valiosas"
					return


turf
	CasaCME
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(ismob(A))
				if(usr.density==0)
					usr<<"N�o enquanto voa."
					return
				var/mob/M = A
				if(usr.ChaveCM)
					M.loc = locate(18,6,97)
				else
					M<<"A casa est� trancada. H� uma inscri��o na porta: Procure a chave extra onde se costuma guardar chaves extras..."
			else
				if(istype(A,/obj/)) del(A)

turf
	CasaCMExit
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(ismob(A))
				if(usr.density==0)
					usr<<"N�o enquanto voa."
					return
				var/mob/M = A
				if(usr.ChaveCM)
					M.loc = locate(25,68,7)
			else
				if(istype(A,/obj/)) del(A)

turf
	CaveE
		icon = 'turf.dmi'
		icon_state = "buraco"
		density = 0
		Enter(A)
			if(ismob(A))
				if(usr.density==0)
					usr<<"N�o enquanto voa."
					return
				var/mob/M = A
				if(usr.Corda==1)
					M<<"Voc� consegue descer at� o fundo da entrada. Parece que h� uma caverna aqui embaixo, com alguns shinobis estranhos a guardando. O que h� de t�o importante aqui?"
					M.loc = locate(3,52,9)
				else
					M<<"O buraco � muito fundo, n�o h� como descer sem ajuda. Talvez eu precise de uma corda..."
			else
				if(istype(A,/obj/)) del(A)


turf/cavesquestsentrada
	cavesentradas
		Cavemanopla
		icon = 'turf.dmi'
		icon_state = "buraco"
		density = 0
		Enter(A)
			if(ismob(A))
				if(usr.density==0)
					usr<<"N�o enquanto voa."
					return
				var/mob/M = A
				if(usr.Corda==1&&usr.Lampiao==0)
					M<<"Voc� consegue descer at� o fundo da entrada. Parece que h� outra caverna aqui embaixo. Mas, diferente da outra, essa caverna est� muito escura...preciso de algo para iluminar meu caminho. Talvez...um Lampi�o?"
					M.loc = locate(3,551,9)
					usr.cego3()
				if(usr.Corda&&usr.Lampiao==1)
					M<<"Voc� consegue descer at� o fundo da entrada. Parece que h� outra caverna aqui embaixo. Agora com algo iluminando meu caminho, posso ver do que se trata a caverna. Parece ser um labirinto...o que se encontra no final dele?"
					M.loc = locate(3,551,9)
				else
					M<<"O buraco � muito fundo, n�o h� como descer sem ajuda. Talvez eu precise de uma corda..."
			else
				if(istype(A,/obj/)) del(A)

	Caveshuriken
		icon = 'turf.dmi'
		icon_state = "buraco"
		density = 0
		Enter(A)
			if(ismob(A))
				if(usr.density==0)
					usr<<"N�o enquanto voa."
					return
				var/mob/M = A
				if(usr.Corda==1&&usr.Lampiao==0)
					M<<"Voc� consegue descer at� o fundo da entrada. Parece que h� outra caverna aqui embaixo. Mas, diferente da outra, essa caverna est� muito escura...preciso de algo para iluminar meu caminho. Talvez...um Lampi�o?"
					M.loc = locate(122,547,9)
					usr.cego3()
				if(usr.Corda&&usr.Lampiao==1)
					M<<"Voc� consegue descer at� o fundo da entrada. Parece que h� outra caverna aqui embaixo. Agora com algo iluminando meu caminho, posso ver do que se trata a caverna. Parece ser um labirinto...o que se encontra no final dele?"
					M.loc = locate(122,547,9)
				else
					M<<"O buraco � muito fundo, n�o h� como descer sem ajuda. Talvez eu precise de uma corda..."
			else
				if(istype(A,/obj/)) del(A)


	CaveColar
		icon = 'turf.dmi'
		icon_state = "buraco"
		density = 0
		Enter(A)
			if(ismob(A))
				if(usr.density==0)
					usr<<"N�o enquanto voa."
					return
				var/mob/M = A
				if(usr.Corda==1&&usr.Lampiao==0)
					M<<"Voc� consegue descer at� o fundo da entrada. Parece que h� outra caverna aqui embaixo. Mas, diferente da outra, essa caverna est� muito escura...preciso de algo para iluminar meu caminho. Talvez...um Lampi�o?"
					M.loc = locate(258,541,9)
					usr.cego3()
				if(usr.Corda&&usr.Lampiao==1)
					M<<"Voc� consegue descer at� o fundo da entrada. Parece que h� outra caverna aqui embaixo. Agora com algo iluminando meu caminho, posso ver do que se trata a caverna. Parece ser um labirinto...o que se encontra no final dele?"
					M.loc = locate(258,541,9)
				else
					M<<"O buraco � muito fundo, n�o h� como descer sem ajuda. Talvez eu precise de uma corda..."
			else
				if(istype(A,/obj/)) del(A)


	CaveFlauta
		icon = 'turf.dmi'
		icon_state = "buraco"
		density = 0
		Enter(A)
			if(ismob(A))
				if(usr.density==0)
					usr<<"N�o enquanto voa."
					return
				var/mob/M = A
				if(usr.Corda==1&&usr.Lampiao==0)
					M<<"Voc� consegue descer at� o fundo da entrada. Parece que h� outra caverna aqui embaixo. Mas, diferente da outra, essa caverna est� muito escura...preciso de algo para iluminar meu caminho. Talvez...um Lampi�o?"
					M.loc = locate(395,534,9)
					usr.cego3()
				else
					if(usr.Corda==1&&usr.Lampiao==1)
						M<<"Voc� consegue descer at� o fundo da entrada. Parece que h� outra caverna aqui embaixo. Agora com algo iluminando meu caminho, posso ver do que se trata a caverna. Parece ser um labirinto...o que se encontra no final dele?"
						M.loc = locate(395,534,9)
					else
						M<<"O buraco � muito fundo, n�o h� como descer sem ajuda. Talvez eu precise de uma corda..."
			else
				if(istype(A,/obj/)) del(A)






turf
	Cave2E
		icon = 'turf.dmi'
		icon_state = "buraco"
		density = 0
		Enter(A)
			if(ismob(A))
				if(usr.density==0)
					usr<<"N�o enquanto voa."
					return
				var/mob/M = A
				if(usr.Corda==1)
					M<<"Voc� consegue descer at� o fundo da entrada. Parece que h� outra caverna aqui embaixo. Mas, diferente da outra, essa caverna est� muito escura...preciso de algo para iluminar meu caminho. Talvez...um Lampi�o?"
					M.loc = locate(320,60,8)
					usr.cego3()
				if(usr.Corda&&usr.Lampiao)
					M<<"Voc� consegue descer at� o fundo da entrada. Parece que h� outra caverna aqui embaixo. Agora com algo iluminando meu caminho, posso ver do que se trata a caverna. Parece ser um labirinto...o que se encontra no final dele?"
					M.loc = locate(320,60,8)
				else
					M<<"O buraco � muito fundo, n�o h� como descer sem ajuda. Talvez eu precise de uma corda..."
			else
				if(istype(A,/obj/)) del(A)

turf
	Cave2Exit
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(ismob(A))
				if(usr.density==0)
					usr<<"N�o enquanto voa."
					return
				var/mob/M = A
				if(M.client)
					M.loc = locate(52,36,52)
					usr.view=6
			else
				if(istype(A,/obj/)) del(A)

turf
	Cave2Exit2
		icon = 'turf.dmi'
		icon_state = "buraco"
		density = 0
		Enter(A)
			if(ismob(A))
				if(usr.density==0)
					usr<<"N�o enquanto voa."
					return
				var/mob/M = A
				if(M.client)
					M.loc = locate(52,36,52)
					usr.view=6
			else
				if(istype(A,/obj/)) del(A)


mob/var/QuestKurenai=0
mob/npc/Kurenai
	name = "{NPC}Kurenai"
	icon = 'Kurenai.dmi'
	icon_state = "Kurenai"
	PK = 0
	imortal = 1
	health = 999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(1)
			//set category = "Kurenai"
			switch(input("Um Girasol � um dia de Gl�ria! Posso te ajudar em algo?") in list ("Me ensine a Liberar de um Genjutsu","N�o"))
				if("Me ensine a Liberar de um Genjutsu")
					if(usr.QuestKurenai==1)
						usr<<"Voc� j� aprendeu o Kai!"
						return
					else
						usr<<"Mundo Shinobi n�o se baseia apenas em Ninjutsus, livrar-se de um Genjutsu � essencial em uma batalha, at� os Ninjas mais experientes sofrem em se livrar de um Genjutsu! Para se livrar de um genjutsu existem alguns met�dos como se ferir, entre outros outros. O que irei te ensinar � como moldar o seu fluxo de chakra para se libertar do Genjutsu."
						switch(input("") in list ("Hum!","Tchau"))
							if("Hum!")
								if(!usr.QuestKurenai&&usr.Mgen>=1000&&usr.chakraN>=25000)
									usr<<"Pelo visto voc� evoluiu o suficiente para aprender o Kai"
									usr.verbs += new /mob/jutsu/verb/Kainonvip()
									usr.QuestKurenai=1
									usr<<"<B><font color = blue>Voc� aprendeu o Genjutsu no Kai!"
								else
									usr<<"Voc� ainda n�o � capaz de aprender o Kai, n�o desista e Vamos acabar com isso logo."
							if("Tchau")
								usr<<"Tchauzinho!"

mob/jutsu
	verb
		Kainonvip()
			set name = "Genjutsu no Kai"
			set category = "Jutsus"
			if(usr.cdkai)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Genjutsu no Kai</b>!"
				return
			usr.Handseals()
			if(!usr.handseals)
				return
			if(usr.cast)
				return
			if(usr.def)
				usr<<"Voc� n�o pode usar kai com defesa absoluta ativada"
				return
			if(usr.parado||usr.kawa||usr.Frozen)
				usr.<<"N�o agora!"
				return
			if(usr.Kshibari)
				return
			if(usr.levando)
				return
			if(usr.resting)
				usr<<"N�o enquanto descansa"
				return
			if(usr.meditating)
				usr<<"N�o enquanto medita"
				return
			if(usr.libering)
				usr<<"N�o enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"N�o enquanto se concentra"
				return
			if(usr.kai==0)
				if(usr.cdkai)return
				usr.cdkai=1
				spawn()usr.Cooldown(350,"Kai")
				usr.RandomChakra01()
				if(usr.chakra<=0)
					usr<<"Vc n�o possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.kai=1
				view()<<"<font color=silver><b><font face=verdana>[usr]: Genjutsu no KAI!!"
				usr.froze=0
				usr.move=1
				usr.client.eye=usr
				usr.client.view=8
				spawn()usr.Cegar()
				sleep(200)
				usr.kai=0
				cdkai=0
			else
				usr<<"Ainda n�o.Seu kai ainda esta ativo"


mob/jutsu
	verb
		Kai()
			set name = "Genjutsu no Kai"
			set category = "Jutsus"
			if(usr.cdkai)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Genjutsu no Kai</b>!"
				return
			usr.Handseals()
			if(!usr.handseals)
				return
			if(usr.cast)
				return
			if(usr.def)
				usr<<"Voc� n�o pode usar kai com defesa absoluta ativada"
				return
			if(usr.parado||usr.kawa||usr.Frozen)
				usr.<<"N�o agora!"
				return
			if(usr.Kshibari)
				return
			if(usr.levando)
				return
			if(usr.resting)
				usr<<"N�o enquanto descansa"
				return
			if(usr.meditating)
				usr<<"N�o enquanto medita"
				return
			if(usr.libering)
				usr<<"N�o enquanto libera chakra"
				return
			if(usr.concing)
				usr<<"N�o enquanto se concentra"
				return
			if(usr.kai==0)
				if(usr.cdkai)return
				usr.cdkai=1
				spawn()usr.Cooldown(350,"Kai")
				usr.RandomChakra01()
				if(usr.chakra<=0)
					usr<<"Vc n�o possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					return
				usr.kai=1
				view()<<"<font color=silver><b><font face=verdana>[usr]: Genjutsu no KAI!!"
				usr.move=1
				usr.froze=0
				usr.client.eye=usr
				usr.client.view=8
				spawn()usr.Cegar()
				sleep(200)
				usr.kai=0
			else
				usr<<"Ainda n�o.Seu kai ainda esta ativo"

mob/jutsu
	verb
		Meisagakure()
			set popup_menu = 0
			set category = "Jutsus"
			set name = "Meisagakure no Jutsu"
			if(usr.cdmeisagakure)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Meisagakure no Jutsu</b>!"
				return
			usr.Handseals()
			if(usr.resting)
				return
			if(usr.meditating)
				return
			if(usr.cast)
				return
			if(usr.Frozen)
				usr<<"Voc� est� paralisado"
				return
			if(usr.caught)
				usr<<"Voc� foi capturado"
				return
			if(usr.captured)
				usr<<"Voc� foi capturado"
				return
			if(!usr.handseals)
				return
			if(usr.froze)
				usr<<"Voc� est� paralisado"
				return
			if(usr.resting)
				usr<<"N�o enquanto descansa"
				return
			if(usr.meditating)
				usr<<"N�o enquanto medita"
				return
			else
				var/list/O = usr.overlays.Copy()
				if(usr.meisagakure)
					usr.cdmeisagakure=1
					spawn()usr.Cooldown(100,"Meisagakure no Jutsu")
					usr.cast=0
					usr<<"Seu Meisagakure no Jutsu terminou."
					usr.icon = usr.Oicon
					usr.overlays = O.Copy()
					usr.meisagakure =0
					return
				else
					if(usr.cdmeisagakure)return
					usr.RandomChakra01()
					if(usr.chakra<=0)
						usr<<"Vc n�o possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					view()<<"<font color=silver><b><font face=verdana>[usr]: Meisagakure no Jutsu!"
					usr.icon = 'invis.dmi'
					usr.cast=1
					usr.overlays = usr.overlays.Remove(usr.overlays)
					usr.meisagakure = 1
					Nagashi
						if(usr.meisagakure)
							usr.chakra -=rand(5000,8000)
							if(usr.chakra < 8000)
								usr.cast=0
								usr<<"Seu Meisagakure no Jutsu terminou."
								usr.icon = usr.Oicon
								usr.overlays = O.Copy()
								usr.meisagakure=0
								usr<<"Voc� <font color=red>desativa</font> o Meisagakure no Jutsu por falta de chakra!"
								return
							else
								sleep(30)
								goto Nagashi

mob/jutsu
	verb
		DochuuEigyo()
			set popup_menu = 0
			set category = "Jutsus"
			set name = "Dochuu Eigyo"
			usr.Handseals()
			if(usr.cddochuu)
				usr << "<b>Cooldown:</b> Aguarde para usar novamente o jutsu <b>Dochuu Eigyo</b>!"
				return
			if(usr.resting)
				return
			if(usr.meditating)
				return
			if(usr.cast)
				return
			if(usr.Frozen)
				usr<<"Voc� est� paralisado"
				return
			if(usr.caught)
				usr<<"Voc� foi capturado"
				return
			if(usr.captured)
				usr<<"Voc� foi capturado"
				return
			if(!usr.handseals)
				return
			if(usr.froze)
				usr<<"Voc� est� paralisado"
				return
			if(usr.resting)
				usr<<"N�o enquanto descansa"
				return
			if(usr.meditating)
				usr<<"N�o enquanto medita"
				return
			else
				var/list/O = usr.overlays.Copy()
				if(usr.dochuu)
					usr.cddochuu=1
					spawn()usr.Cooldown(200,"Dochuu Eigyo")
					usr.cast=0
					usr<<"Seu Dochuu Eigyo terminou."
					usr.icon = usr.Oicon
					usr.overlays = O.Copy()
					usr.dochuu =0
					return
				else
					if(usr.cddochuu)return
					usr.RandomChakra01()
					if(usr.chakra<=0)
						usr<<"Vc n�o possuia chakra suficiente para esse jutsu. Por isso o jutsu falhou e seu chakra foi drenado a ZERO"
						usr.health=0
						usr.chakra=0
						usr.Death(usr)
						return
					view()<<"<font color=silver><b><font face=verdana>[usr]: Dochuu Eigyo!"
					usr.icon = 'invis.dmi'
					usr.cast=1
					usr.overlays = usr.overlays.Remove(usr.overlays)
					usr.dochuu = 1
					Nagashi
						if(usr.dochuu)
							usr.chakra -= usr.chakra/100
							if(usr.chakra <= usr.chakra/100)
								usr.cast=0
								usr<<"Seu Dochuu Eigyo terminou."
								usr.icon = usr.Oicon
								usr.overlays = O.Copy()
								usr.dochuu=0
								usr<<"Voc� <font color=red>desativa</font> o Dochuu Eigyo por falta de chakra!"
								return
							else
								sleep(20)
								goto Nagashi

mob/var
	rouboumsobito=0
	rouboumssasuke=0
	rouboumsitachi=0
	rouboubyahinata=0
	rouboubyaneji=0

mob/var
	perdeubya1=0
	perdeusharing1=0
	perdeurinegan1=0
	perdeumovimento1=0
mob/jutsus
	verb
		ExtrairMeuPau(mob/M in oview(1))
			set name = "Extrair DNA Senju/Doujutsu"
			set category="Jutsus"
			if(M.health>0)
				usr<<"Ele n�o est� desmaiado para extrair."
				return
			if(emguerra==0)
				return
			if(M.seals<100)
				usr<<"Ele precisa ser ex-Jounin+ pelo menos!"
				return
			if(M.FMS||M.temtenseigan)
				usr<<"Este poder n�o pode ser tomado!"
				return
			else
				if(M.Shodaime)
					var/obj/DnaSenju/D = new/obj/DnaSenju
					D.loc = usr
					//usr.SalvarAgora()
					usr<<"Voc� extraiu o DNA Senju de [M]."
					usr.dnasenjuu=1
					usr.candna=1
					M<<"Voc� foi ferido gravemente para ter seu sangue colhetado DNA. Seus movimentos est�o mais lentos!"
					M.Move_Delay = 10
					M.senjuextraido=1
					M.perdeumovimento1+=1
				else if(M.shari==1)
					M.verbs -= /mob/jutsu/verb/Copy
					M.verbs -= /mob/jutsu/verb/Sharinganilluminate
					M.verbs -= /mob/jutsu/verb/Ilusion1
					M.verbs -= /mob/jutsu/verb/Sharinganfreeze
					M.verbs -= /mob/jutsu/verb/Genjcounter
					M.verbs -= /mob/jutsu/verb/Kaen
					M.verbs -= /mob/jutsu/verb/Shinu
					M.verbs -= /mob/uchiha/verb/Sharingan
					M.verbs -= /mob/jutsu/verb/MagenMoeruKaradaKami
					//Kamui
					M.Perdeusharingan=1
					M.perdeusharing1+=1
					M.cego5()
					if(M.msobito)
						usr.rouboumsobito=1
						var/obj/OlhoMSObito/O = new/obj/OlhoMSObito
						O.loc = usr
					if(M.mssasuke)
						usr.rouboumssasuke=1
						var/obj/OlhoMSSasuke/O = new/obj/OlhoMSSasuke
						O.loc = usr
					if(M.msitachi)
						usr.rouboumsitachi=1
						var/obj/OlhoMSItachi/O = new/obj/OlhoMSItachi
						O.loc = usr
					if(M.msshisui)
						usr.rouboumsshisui=1
						var/obj/OlhoMSShisui/O = new/obj/OlhoMSShisui
						O.loc = usr
					if(M.msmadara)
						usr.rouboumsmadara=1
						var/obj/OlhoMSMadara/O = new/obj/OlhoMSMadara
						O.loc = usr
					//M.SalvarAgora()
					//usr.SalvarAgora()
					usr.cansharinga=1
					usr<<"Voc� extraiu o Sharingan de [M]."
					M<<"Voc� teve seu Sharingan extra�do por [usr]."
				else if(M.shari==2)
					M.verbs -= /mob/jutsu/verb/Copy
					M.verbs -= /mob/jutsu/verb/Sharinganilluminate
					M.verbs -= /mob/jutsu/verb/Ilusion1
					M.verbs -= /mob/jutsu/verb/Sharinganfreeze
					M.verbs -= /mob/jutsu/verb/Genjcounter
					M.verbs -= /mob/jutsu/verb/Kaen
					M.verbs -= /mob/jutsu/verb/Shinu
					M.verbs -= /mob/uchiha/verb/Sharingan
					M.verbs -= /mob/jutsu/verb/MagenMoeruKaradaKami
					//Kamui
					M.Perdeusharingan=1
					M.perdeusharing1+=1
					M.cego5()
					if(M.msobito)
						usr.rouboumsobito=1
						var/obj/OlhoMSObito/O = new/obj/OlhoMSObito
						O.loc = usr
					if(M.mssasuke)
						usr.rouboumssasuke=1
						var/obj/OlhoMSSasuke/O = new/obj/OlhoMSSasuke
						O.loc = usr
					if(M.msitachi)
						usr.rouboumsitachi=1
						var/obj/OlhoMSItachi/O = new/obj/OlhoMSItachi
						O.loc = usr
					if(M.msshisui)
						usr.rouboumsshisui=1
						var/obj/OlhoMSShisui/O = new/obj/OlhoMSShisui
						O.loc = usr
					if(M.msmadara)
						usr.rouboumsmadara=1
						var/obj/OlhoMSMadara/O = new/obj/OlhoMSMadara
						O.loc = usr
					//M.SalvarAgora()
					//usr.SalvarAgora()
					usr.cansharinga=1
					usr<<"Voc� extraiu o Sharingan de [M]."
					M<<"Voc� teve seu Sharingan extra�do por [usr]."
				else if(M.shari==3)
					M.verbs -= /mob/jutsu/verb/Copy
					M.verbs -= /mob/jutsu/verb/Sharinganilluminate
					M.verbs -= /mob/jutsu/verb/Ilusion1
					M.verbs -= /mob/jutsu/verb/Sharinganfreeze
					M.verbs -= /mob/jutsu/verb/Genjcounter
					M.verbs -= /mob/jutsu/verb/Kaen
					M.verbs -= /mob/jutsu/verb/Shinu
					M.verbs -= /mob/uchiha/verb/Sharingan
					M.verbs -= /mob/jutsu/verb/MagenMoeruKaradaKami
					//Kamui
					M.Perdeusharingan=1
					M.perdeusharing1+=1
					M.cego5()
					if(M.msobito)
						usr.rouboumsobito=1
						var/obj/OlhoMSObito/O = new/obj/OlhoMSObito
						O.loc = usr
					if(M.mssasuke)
						usr.rouboumssasuke=1
						var/obj/OlhoMSSasuke/O = new/obj/OlhoMSSasuke
						O.loc = usr
					if(M.msitachi)
						usr.rouboumsitachi=1
						var/obj/OlhoMSItachi/O = new/obj/OlhoMSItachi
						O.loc = usr
					if(M.msshisui)
						usr.rouboumsshisui=1
						var/obj/OlhoMSShisui/O = new/obj/OlhoMSShisui
						O.loc = usr
					if(M.msmadara)
						usr.rouboumsmadara=1
						var/obj/OlhoMSMadara/O = new/obj/OlhoMSMadara
						O.loc = usr
					//M.SalvarAgora()
					//usr.SalvarAgora()
					usr.cansharinga=1
					usr<<"Voc� extraiu o Sharingan de [M]."
					M<<"Voc� teve seu Sharingan extra�do por [usr]."
				else if(M.Hyuuga&&!M.PerdeuByakugan&&!M.temtenseigan||M.implantoubya&&!M.temtenseigan)
					if(usr.luamember)
						usr<<"Voc� n�o pode usar este jutsu em Hyuugas!"
						return
					var/obj/OlhoByakugan/B = new/obj/OlhoByakugan
					B.loc = usr
					M.PerdeuByakugan=1
					M.perdeubya1+=1
					M.cego5()
					M.implantoubya=0
					M.verbs -= /mob/hyuuga/verb/HakkeRokujuuYonshou
					M.verbs -= /mob/hyuuga/verb/ByakuganSearch
					M.verbs -= /mob/hyuuga/verb/HakkeHyakuNijuhaSho
					M.verbs -= /mob/jutsu/verb/Sharinganilluminate
					M.verbs -= /mob/hyuuga/verb/HakkeKuushou
					M.verbs -= /mob/teste/verb/Haryate
					M.verbs -= new /mob/hyuuga/verb/HakkeshouKaiten()
					M.verbs -= new /mob/hyuuga/verb/Byakugan()
					M.verbs -= new /mob/hyuuga/verb/ByakuganSearch()
					M.verbs -= new /mob/jutsu/verb/HyuugaShisa()
					if(M.hyuugahinata)
						usr.rouboubyahinata=1
					if(M.hyuuganeji)
						usr.rouboubyaneji=1
					//usr.SalvarAgora()
					usr.canbyakuroubado=1
					//M.SalvarAgora()
					usr<<"Voc� extraiu o Byakugan de [M]."
					M<<"Voc� teve seu Byakugan extra�do por [usr]."
				else if(M.Rinnegan&&!M.PerdeuRinnegan)
					M.verbs -= /mob/jutsu/verb/Copy
					M.verbs -= /mob/jutsu/verb/Sharinganilluminate
					M.verbs -= /mob/jutsu/verb/Ilusion1
					M.verbs -= /mob/jutsu/verb/Sharinganfreeze
					M.verbs -= /mob/jutsu/verb/Genjcounter
					M.verbs -= /mob/jutsu/verb/Kaen
					M.verbs -= /mob/jutsu/verb/Shinu
					M.verbs -= /mob/uchiha/verb/Sharingan
					M.verbs -= /mob/uchiha/verb/MangekyouPrep
					M.verbs -= /mob/jutsu/verb/Fantasma
					//Kamui
					M.verbs -= new /obj/bunshins/Pb/verb/Pb()
					M.verbs -= new /mob/Pein/verb/Kuuin()
					M.verbs -= new /mob/Pein/verb/Shinra()
					M.verbs -= new /mob/Pein/verb/Banshou()
					M.verbs -= new /mob/Pein/verb/Matar_Corpos()
					M.verbs -= new /mob/Pein/verb/ChibakuTensei()
					M.verbs -= new /mob/jutsu/verb/Rasenganpein()
					M.verbs -= new /mob/jutsu/verb/SeloPein()
					M.verbs -= new /mob/jutsu/verb/Perturbar()
					M.verbs -= new /mob/jutsu/verb/CloneEspelho()
					M.verbs -= new /mob/jutsu/verb/Lancachakra()
					M.verbs -= new /mob/Pein/verb/Rinnegan()
					M.verbs -= new /mob/jutsu/verb/SusanooRinnegan()
					M.verbs -= new /mob/jutsu/verb/SusaatakR()
					M.verbs -= /mob/jutsu/verb/Novoamat2
					M.verbs -= /mob/uchiha/verb/Tsukiyomi
					//Susanoo
					//Enton
					M.PerdeuRinnegan=1
					M.perdeurinegan1+=1
					M.cego5()
					M.PerdeuMS=1
					//M.SalvarAgora()
					//usr.SalvarAgora()
					usr.canrinneaganroubado=1
					usr<<"Voc� extraiu o Rinnegan de [M]."
					M<<"Voc� teve seu Rinnegan extra�do por [usr]."
				else if(M.msobito&&!M.PerdeuMS)
					M.verbs -= /mob/jutsu/verb/Copy
					M.verbs -= /mob/jutsu/verb/Sharinganilluminate
					M.verbs -= /mob/jutsu/verb/Ilusion1
					M.verbs -= /mob/jutsu/verb/Sharinganfreeze
					M.verbs -= /mob/jutsu/verb/Genjcounter
					M.verbs -= /mob/jutsu/verb/Kaen
					M.verbs -= /mob/jutsu/verb/Shinu
					M.verbs -= /mob/uchiha/verb/Sharingan
					M.verbs -= /mob/uchiha/verb/MangekyouPrep
					M.verbs -= /mob/jutsu/verb/Fantasma
					M.verbs -= new /mob/jutsu/verb/SusanooObito()
					M.verbs -= new /mob/jutsu/verb/Susaatak()
					M.verbs -= new /mob/jutsu/verb/SusanooShuri()
					//Kamui
					M.msobito=1
					M.perdeusharing1+=1
					M.PerdeuMS=1
					M.cego5()
					var/obj/OlhoMSObito/O = new/obj/OlhoMSObito
					O.loc = usr
					//M.SalvarAgora()
					//usr.SalvarAgora()
					usr.rouboumsobito=1
					usr.canmsroubado=1
					usr<<"Voc� extraiu o Mangekyou Sharingan de [M]."
					M<<"Voc� teve seu Mangekyou Sharingan extra�do por [usr]."
				else if(M.mssasuke&&!M.PerdeuMS)
					M.verbs -= /mob/jutsu/verb/Copy
					M.verbs -= /mob/jutsu/verb/Sharinganilluminate
					M.verbs -= /mob/jutsu/verb/Ilusion1
					M.verbs -= /mob/jutsu/verb/Sharinganfreeze
					M.verbs -= /mob/jutsu/verb/Genjcounter
					M.verbs -= /mob/jutsu/verb/Kaen
					M.verbs -= /mob/jutsu/verb/Shinu
					M.verbs -= /mob/uchiha/verb/Sharingan
					M.verbs -= /mob/uchiha/verb/MangekyouPrep
					M.verbs -= /mob/jutsu/verb/Novoamat2
					M.verbs -= new /mob/jutsu/verb/SusanooSasuke()
					M.verbs -= new /mob/jutsu/verb/Susaatak()
					M.verbs -= new /mob/jutsu/verb/SusanooAtk2()
					//Enton
					//Susanoo
					M.mssasuke=1
					M.PerdeuMS=1
					M.perdeusharing1+=1
					M.cego5()
					var/obj/OlhoMSSasuke/S = new/obj/OlhoMSSasuke
					S.loc = usr
					//M.SalvarAgora()
					//usr.SalvarAgora()
					usr.canmsroubado=1
					usr.rouboumsitachi=1
					usr<<"Voc� extraiu o Mangekyou Sharingan de [M]."
					M<<"Voc� teve seu Mangekyou Sharingan extra�do por [usr]."
				else if(M.msitachi&&!M.PerdeuMS)
					M.verbs -= /mob/jutsu/verb/Copy
					M.verbs -= /mob/jutsu/verb/Sharinganilluminate
					M.verbs -= /mob/jutsu/verb/Ilusion1
					M.verbs -= /mob/jutsu/verb/Sharinganfreeze
					M.verbs -= /mob/jutsu/verb/Genjcounter
					M.verbs -= /mob/jutsu/verb/Kaen
					M.verbs -= /mob/jutsu/verb/Shinu
					M.verbs -= /mob/uchiha/verb/Sharingan
					M.verbs -= /mob/uchiha/verb/MangekyouPrep
					M.verbs -= /mob/jutsu/verb/Novoamat2
					M.verbs -= /mob/uchiha/verb/Tsukiyomi
					M.verbs -= new /mob/jutsu/verb/SusanooItachi()
					M.verbs -= new /mob/jutsu/verb/SusanooTotsukaAtk()
					M.verbs -= /mob/jutsu/verb/MagenMoeruKaradaKami
					//Susanoo
					M.msitachi=1
					M.perdeusharing1+=1
					M.PerdeuMS=1
					M.cego5()
					var/obj/OlhoMSItachi/It = new/obj/OlhoMSItachi
					It.loc = usr
					//M.SalvarAgora()
					//usr.SalvarAgora()
					usr.rouboumsitachi=1
					usr.canmsroubado=1
					usr<<"Voc� extraiu o Mangekyou Sharingan de [M]."
					M<<"Voc� teve seu Mangekyou Sharingan extra�do por [usr]."
				else if(M.msshisui&&!M.PerdeuMS)
					M.verbs -= /mob/jutsu/verb/Copy
					M.verbs -= /mob/jutsu/verb/Sharinganilluminate
					M.verbs -= /mob/jutsu/verb/Ilusion1
					M.verbs -= /mob/jutsu/verb/Sharinganfreeze
					M.verbs -= /mob/jutsu/verb/Genjcounter
					M.verbs -= /mob/jutsu/verb/Kaen
					M.verbs -= /mob/jutsu/verb/Shinu
					M.verbs -= /mob/uchiha/verb/Sharingan
					M.verbs -= /mob/uchiha/verb/MangekyouPrep
					M.verbs -= new/mob/Jutsu/verb/Kotoamatsukami()
					M.verbs -= /mob/jutsu/verb/MagenMoeruKaradaKami
					//Susanoo
					M.msshisui=1
					M.perdeusharing1+=1
					M.PerdeuMS=1
					M.cego5()
					var/obj/OlhoMSShisui/It = new/obj/OlhoMSShisui
					It.loc = usr
					//M.SalvarAgora()
					//usr.SalvarAgora()
					usr.rouboumsshisui=1
					usr.canmsroubado=1
					usr<<"Voc� extraiu o Mangekyou Sharingan de [M]."
					M<<"Voc� teve seu Mangekyou Sharingan extra�do por [usr]."
				else if(M.msmadara&&!M.PerdeuMS)
					M.verbs -= /mob/jutsu/verb/Copy
					M.verbs -= /mob/jutsu/verb/Sharinganilluminate
					M.verbs -= /mob/jutsu/verb/Ilusion1
					M.verbs -= /mob/jutsu/verb/Sharinganfreeze
					M.verbs -= /mob/jutsu/verb/Genjcounter
					M.verbs -= /mob/jutsu/verb/Kaen
					M.verbs -= /mob/jutsu/verb/Shinu
					M.verbs -= /mob/uchiha/verb/Sharingan
					M.verbs -= /mob/uchiha/verb/MangekyouPrep
					M.verbs -= new/mob/Jutsu/verb/TengaiShinsei()
					M.verbs -= new/obj/bunshins/Limbobunshin/verb/Limbunshin()
					//Susanoo
					M.msmadara=1
					M.perdeusharing1+=1
					M.PerdeuMS=1
					M.cego5()
					var/obj/OlhoMSMadara/It = new/obj/OlhoMSMadara
					It.loc = usr
					//M.SalvarAgora()
					//usr.SalvarAgora()
					usr.rouboumsmadara=1
					usr.canmsroubado=1
					usr<<"Voc� extraiu o Mangekyou Sharingan de [M]."
					M<<"Voc� teve seu Mangekyou Sharingan extra�do por [usr]."

		Selar_Amaterasu()
			set name = "Fuuka Houin"
			set category="Jutsus"
			if(!usr.fuukas)
				usr<<"Voc� precisa de um pergaminho de Fuuka Houin."
				return
			for(var/mob/M in oview(1,usr))
				if(M.burned)
					M.burned=0
			for(var/obj/am/K in oview(2,usr))
				usr<<"Voc� selou o amaterasu no pergaminho."
				del(K)
			if(usr.fuukas==1)
				for(var/obj/pergaminhos/FuukaPerga/R in usr.contents)
					del(R)
			if(usr.fuukas==2)
				for(var/obj/pergaminhos/FuukaPerga/R in usr.contents)
					del(R)
				var/obj/pergaminhos/FuukaPerga/S = new/obj/pergaminhos/FuukaPerga
				S.loc = usr
			if(usr.fuukas>2)
				for(var/obj/pergaminhos/FuukaPerga/R in usr.contents)
					del(R)