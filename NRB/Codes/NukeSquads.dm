mob/npc/SquadsNuke
	name="{NPC}Formador de Equipes Nuke"
	icon='Spawn.dmi'
	PK = 0
	imortal = 1
	health=999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(3)
			//set category="Organizacao"
			switch(input("Quer criar uma Organização para recrutar outros Nukenins? (1 Milhão + 1 ponto de evento)",text) in list ("Sim","Não"))
				if("Sim")
					if(usr.Nsquads==0)
						if(usr.seals>=100&&usr.Village=="Nenhum"&&usr.Yen>=1000000&&usr.pontosevento>=1&&usr.EhVip)
							alert("Lembre-se! Tira o FONT SIZE do começo, senão corre o risco de ser banido ou punido!")
							var/squad = input("","Esquadrão") as text|null
							usr.Nsquads=1
							usr.NukesquadLeader=1
							usr.rank="Líder"
							usr.Village="Organização Nuke"
							usr.Yen -= 1000000
							usr.pontosevento -= 1
							usr.esquadrao="[(squad)]"
							usr.verbs += /mob/NukeSquads/verb/Falar_EsquadraoNuke
							usr.verbs += /mob/NukeSquads/verb/Convidar
							usr.verbs += /mob/NukeSquads/verb/Expulsar
							usr.verbs += /mob/NukeSquads/verb/Sair_EsquadraoNuke
						else
							usr<<"Precisa ser vip! Você não é forte suficiente para criar um esquadrão, ou não têm dinheiro!"
					else
						usr<<"Você já faz parte de um esquadrão"
				else
					usr<<"Se você acha que ainda não está pronto para isso, então é o melhor a se fazer."


mob/NukeSquads
	verb
		Convidar(mob/M in view(10))
			set category="Organizacao"
			switch(input("Você tem certeza que quer recrutar este ninja?!", text) in list ("Sim","Não"))
				if("Sim")
					if(M.Village == "Nenhum"&&usr.recruits<=4&&M.Nsquads==0)
						M.Nsquads=1
						M.esquadrao="[src.esquadrao]"
						usr.recruits+=1
						M.verbs += /mob/NukeSquads/verb/Falar_EsquadraoNuke
						M.verbs += /mob/NukeSquads/verb/Sair_EsquadraoNuke
						M.rank="Membro"
						M.Village="Organização Nuke"
					else
						usr<<"Ele não é um Nukenin sem org. ou sua Organização já está cheia!"
				else
					usr<<"Entendido."
		Expulsar(mob/M in world)
			set category="Organizacao"
			switch(input("Quem você deseja tirar da sua Organização?", text) in list ("Sim","Não"))
				if("Sim")
					if(M.esquadrao==usr.esquadrao)
						M.Nsquads=0
						M.esquadrao=""
						usr.recruits-=1
						M.Village="Nenhum"
						M.rank="Nukenin"
						M.PerderSubclan()
						M.subclan=0
						M.verbs -= /mob/NukeSquads/verb/Falar_EsquadraoNuke
						M.verbs -= /mob/NukeSquads/verb/Sair_EsquadraoNuke
					else
						usr<<"Ele não é da sua Organização."
				else
					usr<<"Entendido."
					M<<"Você foi expulso da Organização e perdeu seu subclan"

		Falar_EsquadraoNuke(msg as text)
			set category="Organizacao"
			set desc = "Diga algo para todos em sua Organização."
			var/list/L
			L = list("font size","font color")
			for(var/H in L)
				if(findtext(msg,H))
					alert("Sem HTML no texto!")
					return
			if(length(msg) >= 400)
				alert("Mensagem muito longa.")
				return
			for(var/mob/M in world)
				if(usr.esquadrao == M.esquadrao&&M.squads==1)
					M << "<font size=1><font face=verdana><B><font color=white>(Organização)([usr.Clan]}-[usr]<font color=silver>: [msg]"

		Sair_EsquadraoNuke()
			set category="Organizacao"
			switch(input("Tem certeza que deseja abandonar sua Organização?",text)in list("Sim","Não"))
				if("Sim")
					if(usr.NukesquadLeader&&usr.recruits<=0)
						usr.Nsquads=0
						usr.NukesquadLeader=0
						usr.esquadrao=""
						usr.PerderSubclan()
						usr.Village="Nenhum"
						usr.rank="Nukenin"
						usr.verbs -= /mob/NukeSquads/verb/Falar_EsquadraoNuke
						usr.verbs -= /mob/NukeSquads/verb/Convidar
						usr.verbs -= /mob/NukeSquads/verb/Expulsar
						usr.verbs -= /mob/NukeSquads/verb/Sair_EsquadraoNuke
					else
						usr<<"Você tem que expulsar todos os membros primeiro!"
					if(!usr.NukesquadLeader)
						usr.Nsquads=0
						usr.NukesquadLeader=0
						usr.esquadrao=""
						usr.PerderSubclan()
						usr.Village="Nenhum"
						usr.rank="Nukenin"
						usr.verbs -= /mob/NukeSquads/verb/Falar_EsquadraoNuke
						usr.verbs -= /mob/NukeSquads/verb/Sair_EsquadraoNuke
				else
					usr<<"Boa idéia."

//==========================================Sub Orgs Nuke=============================================================================//

mob/npc/Hyoteacherquest
	name = "{NPC}Anciao de Moon"
	icon = 'npcmissao.dmi'
	icon_state= "azul"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
		//	set category = "Subclan"
			switch (input("Quer ser do subclan Moon? Uma vez que escolher não poderá mudar???","Moon") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.seals>=100&&!usr.subclan&&usr.Village=="Organização Nuke"&&usr.Nsquads==1)
						usr<<"<B><font color = blue>Muito bem você aprendeu os jutsus do Sub Moob!"
						usr.subclan=1
						usr.verbs += new /mob/jutsu/verb/Gelop()
						usr.verbs += typesof(/mob/Moon/verb)
					else
						usr<<"Você precisa ser ex-Jounin+, não ter Vila, nem Sub Clã e fazer parte de uma Organização Nuke!"



mob/npc/AnciaodeSun
	name = "{NPC}Anciao de Sun"
	icon = 'Npc Quest itens vip.dmi'
	icon_state = ""
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Subclan"
			switch (input("Quer ser do Cla de Sun?. Uma vez que escolher não poderá mudar???","Sun") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.seals>=100&&!usr.subclan&&usr.Village=="Organização Nuke"&&usr.Nsquads==1)
						usr<<"<B><font color = blue>Muito bem você aprendeu os jutsus do Sub Sun!"
						usr.subclan=1
						usr.verbs += typesof(/mob/Sun/verb)
					else
						usr<<"Você precisa ser ex-Jounin+, não ter Vila, nem Sub Clã e fazer parte de uma Organização Nuke!"

mob/npc/AnciaodeDark
	name = "{NPC}Anciao de Dark"
	icon = 'UltimetiumNPCS.dmi'
	icon_state = "Vendedor Roupa"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Subclan"
			switch (input("Quer ser do Cla de Dark?. Uma vez que escolher não poderá mudar???","Dark") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.seals>=100&&!usr.subclan&&usr.Village=="Organização Nuke"&&usr.Nsquads==1)
						usr<<"<B><font color = blue>Muito bem você aprendeu os jutsus do Sub Dark!"
						usr.subclan=1
						usr.verbs += typesof(/mob/Dark/verb)
					else
						usr<<"Você precisa ser ex-Jounin+, não ter Vila, nem Sub Clã e fazer parte de uma Organização Nuke"


mob/npc/AnciaodeHoshi
	name = "{NPC}Anciao de Hoshi"
	icon = 'npcsx.dmi'
	icon_state = "Akashosh"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Subclan"
			switch (input("Quer ser do Cla de Hoshi?. Uma vez que escolher não poderá mudar???","Hoshi") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.seals>=100&&!usr.subclan&&usr.Village=="Organização Nuke"&&usr.Nsquads==1)
						usr<<"<B><font color = blue>Muito bem você aprendeu os jutsus do Sub Hoshi!"
						usr.subclan=1
						usr.verbs += typesof(/mob/Star/verb)
					else
						usr<<"Você precisa ser ex-Jounin+, não ter Vila, nem Sub Clã e fazer parte de uma Organização Nuke!"


mob/npc/KamizuriSub
	name="{NPC}Kamizuri Subclan"
	icon='BeeArmor.dmi'
	icon_state=""
	PK=0
	imortal = 1
	health=9999999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Subclan"
			switch (input("Quer ser do subclan Kamizuri. Uma vez que escolher não poderá mudar???","Kamizuri") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.seals>=100&&!usr.subclan&&usr.Village=="Organização Nuke"&&usr.Nsquads==1)
						usr<<"<B><font color = blue>Muito bem você aprendeu os jutsus do Sub Kamizuri!"
						usr.subclan=1
						usr.verbs += typesof(/mob/Kamizuri/verb)
					else
						usr<<"Você precisa ser ex-Jounin+, não ter Vila, nem Sub Clã e fazer parte de uma Organização Nuke!"