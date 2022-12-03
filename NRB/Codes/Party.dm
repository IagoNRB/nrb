mob/var/partydono=0
mob/var/party=0
mob/var/partysensei=""
mob/var/precruits=0

mob/verb/ComecarP()
	set name= "Criar Party"
	set category = "Commands"
	if(!party)
		usr.partydono=1
		usr.party=1
		usr.precruits=0
		usr.Equipe="[usr.name]"
		usr.partysensei="[usr]"
		usr.verbs+= /mob/Party/verb/SairP
		usr.verbs+= /mob/Party/verb/PartyE
		usr.verbs+= /mob/Party/verb/PartyMSG
		usr.verbs+= /mob/Party/verb/RemoverP
		usr.verbs+= /mob/Party/verb/ConvidarP
		usr.verbs+= /mob/Party/verb/NSenseiP
		if(emguerra)
			if(usr.rank=="Kage"||usr.rank=="Hamura"||usr.rank=="Líder"&&usr.Village2=="Akatsuki"||usr.amelider||usr.otolider)
				usr.verbs+= /mob/Party/verb/ConvidarPG
	else
		usr<<"Você já faz parte de uma Party!"


mob/Party/verb/ConvidarP(mob/M in oview(5))
	set name= "Convidar Party"
	set category= "Party"
	if(!M.client)
		usr<<"Não pode chamar um NPC!"
		return
	if(M==usr)
		usr<<"Não pode convidar a si mesmo!"
		return
	if(M.party)
		usr<<"Ele já faz parte de uma Party!"
		return
	if(usr.precruits<2)
		usr<<"Você convidou [M] para uma Party"
		switch(input(M,"Você quer entrar na Party do [usr]?", text) in list("Sim","Nao"))
			if("Sim")
				M.Equipe="[usr.name]"
				M.party=1
				M.partysensei="[usr]"
				M.verbs+=  new /mob/Party/verb/SairP
				M.verbs+=  new /mob/Party/verb/PartyE
				M.verbs+=  new /mob/Party/verb/PartyMSG
				usr.precruits+=1
				usr<<"[M] entrou em sua Party"
				M<<"Você entrou na Party de [usr.name]!"
			if("Nao")
				usr<<"Ele recusou entrar em sua Party"
	else
		usr<<"Você já esgotou o limite de parceiros!"

mob/Party/verb/RemoverP(mob/M in world)
	set name= "Remover da Party"
	set category= "Party"
	if(M==usr)
		usr<<"Não pode remover a si mesmo!"
		return
	switch(input("Você tem certeza de que quer remover [M] de sua Party?",) in list("Sim","Nao"))
		if("Sim")
			if(M.partysensei==usr.partysensei)
				M.Equipe=""
				M.party=0
				M.partysensei=""
				usr.precruits-=1
				M.verbs-= /mob/Party/verb/SairP
				M.verbs-= /mob/Party/verb/PartyE
				M.verbs-= /mob/Party/verb/PartyMSG
				usr<<"Você tirou [M] de sua Party"
				M<<"[usr] tirou você da Party!"
			else
				usr<<"[M] não é de sua vila ou de sua equipe"
		if("Nao")
			usr<<"Sabia escolha, não remova de sua Party atoa"

mob/Party/verb/NSenseiP()
	set name= "Desfazer Party"
	set category= "Party"
	switch(input("Desfazer Party?",) in list("Sim","Nao"))
		if("Sim")
			if(usr.precruits==0)
				usr.Equipe=""
				usr.party=0
				usr.partysensei=""
				usr.partydono=0
				usr<<"Você desfez a Party!"
				usr.verbs-= /mob/Party/verb/SairP
				usr.verbs-= /mob/Party/verb/PartyE
				usr.verbs-= /mob/Party/verb/PartyMSG
				usr.verbs-= /mob/Party/verb/RemoverP
				usr.verbs-= /mob/Party/verb/NSenseiP
				usr.verbs-= /mob/Party/verb/ConvidarPG
			else
				usr<<"Você deve tirar todos os membros da Party antes!"
		if("Nao")
			usr<<"Sabia escolha, não desfaça atoa"

mob/Party/verb/SairP()
	set name= "Sair da Party"
	set category= "Party"
	switch(input("Você realmente quer sair de Party?",) in list("Sim","Nao"))
		if("Sim")
			if(usr.party&&!usr.partydono)
				for(var/mob/M in world)
					if(M.name == usr.partysensei)
						M.precruits -= 1
				usr.Equipe=""
				usr.party=0
				usr.partysensei=""
				usr.verbs-= /mob/Party/verb/SairP
				usr.verbs-= /mob/Party/verb/PartyE
				usr.verbs-= /mob/Party/verb/PartyMSG
				usr<<"Você saiu da Party!"
			else
				usr<<"Você não está em nenhuma Party ou você e o dono!"
		if("Nao")
			usr<<"Sabia escolha, não saia de uma Party atoa"

mob/Party/verb/PartyE()
	set name= "Minha Party"
	set category= "Party"
	usr<<"<font color=blue>Sua Party é a de [usr.partysensei]"
	usr<<"<font color=blue>O dono de sua Party é [usr.partysensei]"
	usr<<"<font color=blue>Membros da Party de [usr.partysensei] Online -"
	for(var/mob/M in world)
		if(M.partysensei == usr.partysensei){usr<<"<font color=green>{\icon[M][M.rank] ([M])"}

mob/Party/verb/PartyMSG(msg as text)
	set desc = "Diga algo para todos da sua Party"
	var/list/L
	L = list("font size","font color")
	for(var/H in L)
		if(findtext(msg,H))
			alert("Sem HTML no texto!")
			return
	if(length(msg) >= 400)
		alert("Mensagem muito grande!")
		return
	for(var/mob/M in world)
		if(usr.partysensei == M.partysensei&&M.party)
			M << "<font size=1><font face=verdana><B><font color=white>(Para Party)([usr.Clan]}-[usr]<font color=red>: [msg]"

mob/Party/verb/ConvidarPG()
	set name= "Convidar Party Guerra"
	set category= "Party"
	for(var/mob/M in world)
		if(usr.Village == M.Village||usr.Village == M.Village2)
			if(!M.client)
				usr<<"Não pode chamar um NPC!"
				return
			if(M==usr)
				usr<<"Não pode convidar a si mesmo!"
				return
			if(M.party)
				usr<<"Ele já faz parte de uma Party!"
				return
			if(usr.precruits<100)
				usr<<"Você convidou [M] para uma Party"
				switch(input(M,"Você quer entrar na Party do [usr]?", text) in list("Sim","Nao"))
					if("Sim")
						M.Equipe="[usr.name]"
						M.party=1
						M.partysensei="[usr]"
						M.verbs+=  new /mob/Party/verb/SairP
						M.verbs+=  new /mob/Party/verb/PartyE
						M.verbs+=  new /mob/Party/verb/PartyMSG
						usr.precruits+=1
						usr<<"[M] entrou em sua Party"
						M<<"Você entrou na Party de [usr.name]!"
					if("Nao")
						usr<<"Ele recusou entrar em sua Party"
			else
				usr<<"Você já esgotou o limite de parceiros!"
