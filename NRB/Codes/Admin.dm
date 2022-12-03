/*
  Codes by Shisui

  ########################################################################################

  Todos os codes feitos aqui foi supersionado e ajudado por Deus, só ele sabe como funciona.
  Não edita abaixo
20 * 60 * 60 = 360*20 = 72000
*/





mob
	verb
		Floormap()
			set hidden = 1

mob
	verb
		Dungeonmap()
			set hidden = 1

mob/ADM
	verb
		DeletarEspadasSSS()
			set name = "Destruir Espadas SSS no Mundo"
			set category = "ADM"
			switch(input("Você tem certeza disso?") in list ("Sim","Não"))
				if("Sim")
					for(var/mob/M in world)
						if(M.pegouespadasss)
							return
						else
							if(locate(/obj/SSSs1) in M.contents)
								for(var/obj/SSSs1/X in M.contents)del(X)
								usr<<"Você deletou a SSSs1 de [M]"
							if(locate(/obj/SSSs2) in M.contents)
								for(var/obj/SSSs2/X2 in M.contents)del(X2)
								usr<<"Você deletou a SSSs2 de [M]"
							if(locate(/obj/SSSs3) in M.contents)
								for(var/obj/SSSs3/X3 in M.contents)del(X3)
								usr<<"Você deletou a SSSs3 de [M]"
							if(locate(/obj/SSSs4) in M.contents)
								for(var/obj/SSSs4/X4 in M.contents)del(X4)
								usr<<"Você deletou a SSSs4 de [M]"
							if(locate(/obj/SSSs5) in M.contents)
								for(var/obj/SSSs5/X5 in M.contents)del(X5)
								usr<<"Você deletou a SSSs5 de [M]"
							if(locate(/obj/SSSs6) in M.contents)
								for(var/obj/SSSs6/X6 in M.contents)del(X6)
								usr<<"Você deletou a SSSs6 de [M]"
							if(locate(/obj/SSSs7) in M.contents)
								for(var/obj/SSSs7/X7 in M.contents)del(X7)
								usr<<"Você deletou a SSSs7 de [M]"
							if(locate(/obj/Kisamesword) in M.contents)
								for(var/obj/Kisamesword/X8 in M.contents)del(X8)
								usr<<"Você deletou a Samehada de [M]"
							if(locate(/obj/SamehadaWater) in M.contents)
								for(var/obj/SamehadaWater/X9 in M.contents)del(X9)
								usr<<"Você deletou a SamehadaWater de [M]"
				if("Não")
					usr<<"Ok."
mob/ADM/verb
	VerIps()
		set name="Ver IPs Mundo"
		set category="ADM"
		for(var/mob/M in world)
			if(M.client)
				usr<<"Nome: <b>[M]</b> | IP: <b>[M.client.address]</b>"
	VerIpPessoa(mob/M in world)
		set name="Ver IP Pessoa"
		set category="ADM"
		if(M.client)
			usr<<"Nome: <b>[M]</b> | IP: <b>[M.client.address]</b>"
		else
			usr<<"Ele é um NPC."
mob/ADM/verb
	VerCIDs()
		set name="Ver CID Mundo"
		set category="ADM"
		for(var/mob/M in world)
			if(M.client)
				usr<<"Nome: <b>[M]</b> | CID: <b>[M.client.computer_id]</b>"
	VerCIDPessoa(mob/M in world)
		set name="Ver CID Pessoa"
		set category="ADM"
		if(M.client)
			usr<<"Nome: <b>[M]</b> | CID: <b>[M.client.computer_id]</b>"
		else
			usr<<"Ele é um NPC."

mob/var/tmp/aumentoufonte=0
mob
	GM
		verb
			AumentarFonte()
				set category = "GM"
				set name = "Aumentar Fonte"
				if(!usr.aumentoufonte)
					switch(alert("Você tem certeza que deseja aumentar sua fonte?", "Aumentar Fonte", "Sim", "Não"))
						if("Sim")
							usr.aumentoufonte = 1
							usr<<"Não abuse deste comando, utilize apenas se for necessário em eventos ou colocar ordem no servidor."
						if("Não")
							return
				else if(usr.aumentoufonte)
					switch(alert("Você tem certeza que deseja diminuir sua fonte?", "Diminuir Fonte", "Sim", "Não"))
						if("Sim")
							usr.aumentoufonte = 0
							usr<<"sua fonte foi diminuida!"
						if("Não")
							return
			CriarTesouro()
				set category = "GM"
				set name = "Criar Tesouro Ninja"
				switch(alert("Você tem certeza que deseja criar um Tesouro Ninja?", "Tesouro Ninja", "Sim", "Não"))
					if("Sim")
						var/obj/Tesouro/BauSurpresa/B = new /obj/Tesouro/BauSurpresa
						B.loc = locate(usr.x,usr.y-1,usr.z)
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>Criou um Tesouro Ninja!<BR>","TesouroLog.html")
					if("Não")
						usr<<"Ok"

			CriarBauQuest()
				set category = "ADM"
				set name = "Criar Bau de Quest"
				switch(alert("Você tem certeza que deseja criar um Bau de Quest?", "Baú de Quest", "Sim", "Não"))
					if("Sim")
						var/obj/Tesouro/BauQuest/B = new /obj/Tesouro/BauQuest
						B.loc = locate(usr.x,usr.y-1,usr.z)
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>Criou um Baú de Quest!<BR>","TesouroQuestLog.html")
					if("Não")
						usr<<"Ok"

mob
	GM
		verb
			Pontos()
				set category = "GM"
				set name = "Dar Pontos de Evento"
				var/list/jogadores = list()
				for(var/mob/m in world)if(m.client)if(m)jogadores.Add(m)
				var/mob/m = input("Quem você quer dar ponto de evento?","Pontos de Evento") as mob in jogadores
				if(!m||!m.client)return
				var/premiacao=input("Quantos Pontos de Evento?","Pontos de Evento")as num
				if(premiacao<=0)premiacao=0
				switch(alert("Tem certeza que quer dar [premiacao] Pontos de Evento para [m]?","Pontos de Evento","Sim","Não"))
					if("Sim")
						m.pontosevento+=premiacao
						m << "Você ganhou [premiacao] Pontos de Evento!"
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> à <b>[m]</b>([m.key]) <b>[premiacao] Pontos de Evento</b><BR>","GMlog.html")
			NCoins()
				set category = "ADM"
				set name = "Dar NRB Coins"
				var/list/jogadores = list()
				for(var/mob/m in world)if(m.client)if(m)jogadores.Add(m)
				var/mob/m = input("Quem você quer dar NRB Coins?","NRB Coins") as mob in jogadores
				if(!m||!m.client)return
				var/premiacao=input("Quantos NRB Coins?","NRB Coins")as num
				if(premiacao<=0)premiacao=0
				switch(alert("Tem certeza que quer dar [premiacao] Pontos de Evento para [m]?","Pontos de Evento","Sim","Não"))
					if("Sim")
						m.nrbcoin+=premiacao
						m << "Você ganhou [premiacao] NRB Coins!"
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> à <b>[m]</b>([m.key]) <b>[premiacao] NRB Coins</b><BR>","GMlog.html")

			Multi_Key_Check()
				set category = "GM"
				set name = "Checar Multi-Key"
				var/Found[0]
				for(var/mob/M in world)
					if(Found.Find(M))continue
					if(M.client)
						for(var/mob/M2 in world)
							if(!M2.client)continue
							if(!M2)continue
							if(M == M2)continue
							if(M.client.address == M2.client.address)
								Found += M
								Found += M2
								usr << "<B>\red Multi-Key Encontrada!"
								usr << "<small><B><font color = #999999>Nome:</font> [M.name] <B><font color = #999999>- Key:</font> [M.key] <B><font color = #999999>- IP:</font> [M.client.address]."
								usr << "<small><B><font color = #999999>Nome:</font> [M2.name] <B><font color = #999999>- Key:</font> [M2.key] <B><font color = #999999>- IP:</font> [M2.client.address]."
			Ver_Status(mob/M in world)
				set category = "GM"
				set name = "Ver Status"
				usr << "<b><small>Nome: [M.name] | Key: [M.key] | Clan: [M.Clan] | Rank: [M.rank] | Vila: [M.Village] \
				<br><small><b>Level: [M.level] | Experiência: [M.exp]/[M.mexp] \
				<br><small><b>HP: [M.health]/[M.maxhealth] \
				<br><small><b>Chakra: [M.chakra]/[M.Mchakra] \
				<br><small><b>Stamina: [M.stamina]/[M.Mstamina] \
				<br><small><b>Tempo VIP: [src.fimdiavip] / [src.fimmesvip]"
			Assumir_Vila()
				set category = "GM"
				set name = "Assumir Vila"
				if(usr.GM)
					usr.rank = "GM"
					usr.Village = "Staff"
				if(usr.ADM)
					usr.rank = "ADM"
					usr.Village = "Staff"

mob/ADM/verb/EditLv(mob/m in world)
{
	set name = "Editar Level"
	set category ="Editar Stats"
	var/a=input(usr,"Editar nivel para?") as num
	var/c=0

	m.mexp=100
	m.exp=0
	if(a>1)
	{
		for(var/b=1;b<=a;b++)
		{
			c=m.mexp
			m.exp=((b-2)*760+c)
			m.mexp=c+(b*760)
			if(b==a)
			{
				m.level=a
				usr<<"Prontinho"
				m<<"Prontinho"
				break
			}
		}
	}

}


mob
	GM1
		verb
			Tirar_Subclan(mob/M in world)
				set category = "GM"
				set name = "Tirar Subclan"
				if(!M.subclan)
					usr<<"Ele não tem Subclan."
					return
				switch(input("Você tem certeza disso?") in list ("Sim","Não"))
					if("Sim")
						M.PerderSubclan()
						usr.subclan=0
						usr<<"Você tirou o Subclan de [M]"
					else
						usr<<"Tenha mais cuidado ao usar um comando."
			KickarMK()
				set name = "Kickar MultiKey"
				set category = "GM"
				if(usr.GM)
					var/Found[0]
					for(var/mob/M in world)
						if(Found.Find(M))continue
						if(M.client)
							for(var/mob/M2 in world)
								if(!M2.client)continue
								if(!M2)continue
								if(M == M2)continue
								if(M.client.address == M2.client.address)
									Found += M
									Found += M2
									text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) usou o comando <b>Kickar MultiKey</b><BR>","GMlog.html")
									world<<"[M] foi kickado por Multi-Key!"
									world<<"[M2] foi kickado por Multi-Key!"
									spawn()M.SalvarAgora()
									spawn()M2.SalvarAgora()
									spawn(5)
										del(M)
										del(M2)
			Create()
				set name = "Criar"
				set category = "Staff"
				if(usr.GM == 1||usr.key=="Iago762"||usr.key==""||usr.key==""||usr.key=="")
					var/varItem
					var/varType = input("What do you want to create?","Create") in list("Object","Mob","Turf","Cancelar")
					if(varType == "Cancelar")
						return
					if(varType == "Object")
						varItem = input("What do you want to make?","Create obj") in typesof(/obj) + list("Cancelar")
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) criou o Objeto <b>[varItem]</b><BR>","GMlog.html")
					if(varType == "Mob")
						varItem = input("What do you want to make?","Create mob") in typesof(/mob) + list("Cancelar")
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) criou o Mob <b>[varItem]</b><BR>","GMlog.html")
					if(varType == "Turf")
						varItem = input("What do you want to make?","Create turf") in typesof(/turf) + list("Cancelar")
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) criou a Turf <b>[varItem]</b><BR>","GMlog.html")
					if(varItem == "Cancelar")
						return
					new varItem(locate(src.x,src.y,src.z))
				else
					world << "[usr] <font color = red><b> não tem acesso aos comandos de GM/ADM e por isso foi desconectado!</font>!"
					del(usr)
			Renomear(mob/M as mob in world, ID as text)
				set category="GM"
				var/senha=input("Qual a senha?")as text
				if(senha==""||usr.key=="Iago762"||usr.key=="Xompiras"||usr.key=="")

					if(length(ID) <= 2)
						src<<"<font color = red> Their name must be longer then 2 characters!"
					else
						if(src.key<>M.key)
							if(M.treinotaiafk||M.treinogenafk||M.treinoninafk||M.treinoarmafk)
								src<<"Não pode renomear enquanto treina AFK!"
								return
							if(M.GM)
								if(src.key=="Iago762"||src.key=="")
									text2file("[time2text(world.realtime)]: <b>[M]</b>([M.key]) teve seu nome renomeado para <b>[ID]</b> por <b>[usr]</b>([usr.key])<BR>","GMlog.html")
									M.name=ID
									world<<"[M] teve seu nome alterado para [ID] por [M]!"
									src<<"Você renomeou [M] para [ID]!"
									//M.SalvarAgora()
								else
									world<<"[src] foi Kickado do servidor por tentar renomear o nome do Staff [M] para [ID]!"
									text2file("[time2text(world.realtime)]: <b>[src]</b>([src.key]) tentou renomear <b>[usr]</b>([usr.key]) para <b>[ID]</b> e foi kickado!<BR>","GMlog.html")
									del(src)
							else
								text2file("[time2text(world.realtime)]: <b>[M]</b>([M.key]) teve seu nome renomeado para <b>[ID]</b> por <b>[usr]</b>([usr.key])<BR>","GMlog.html")
								M.name=ID
								M<<"Você foi renomeado para [ID] por [src]!"
								src<<"Você renomeou [M] para [ID]!"
								world<<"[M] teve seu nome alterado para [ID] por [src]!"
				else
					world << "[usr] errou a senha UHDSAUHD que noob!"
					del(usr)

			Reboot()
				set name = "Reboot"
				set category = "GM"
				var/senha=input("Qual a senha?")as text
				if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
					text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) usou o comando <b>Reboot</b><BR>","GMlog.html")
					world << "Reboot em 30 segundos. Salve seu jogo!"
					sleep(250)
					world << "Reboot em 5"
					sleep(10)
					world << "4"
					sleep(10)
					world << "3"
					sleep(10)
					world << "2"
					sleep(10)
					world << "1"
					for(var/mob/M in world)
						if(M.client)
							if(M.partydono||M.party)
								M.party = 0
								M.partysensei=""
								M.partydono=0
								M.Equipe=""
								M.precruits=0
								M<<"A Party foi desfeita!"
								M.verbs-= /mob/Party/verb/SairP
								M.verbs-= /mob/Party/verb/PartyE
								M.verbs-= /mob/Party/verb/PartyMSG
								M.verbs-= /mob/Party/verb/RemoverP
								M.verbs-= /mob/Party/verb/ConvidarP
								M.verbs-= /mob/Party/verb/NSenseiP
								M.verbs-= /mob/Party/verb/ConvidarPG
							M.SalvarAgora()
					SubAkatSave()
					SalvarBijuus()
					sleep(10)
					world.Reboot()
				else
					world << "[usr] errou a senha UHDSAUHD que noob!"
					del(usr)
mob/var
	jailed=0
	perdeums=0
	perdeusenjutsu=0

mob/ADM
	verb
		Editarvar(client/M in world)
			set name="Permitir CS"
			set category="ADM"
			M.mob.sefodeulegal=0
			usr<<"Pronto"

		RetirarSenjutsuMS()
			set name="Resetar Senjutsu e MS"
			set category="ADM"
			for(var/mob/M in world)
				if(M.Clan=="Uchiha"&&M.rank=="Genin"&&!M.perdeums||M.Clan=="Uchiha"&&M.rank=="Nukenin"&&!M.convidado&&M.seals<=53&&!M.perdeums)
					M.verbs -= new /mob/uchiha/verb/MangekyouPrep()
					M.verbs -= new /mob/jutsu/verb/Novoamat2()
					M.verbs -= new /mob/Hatake/verb/Susanoo()
					M.verbs -= new /mob/jutsu/verb/Roubo()
					M.verbs -= new /mob/uchiha/verb/Tsukiyomi()
					M.mangeN=0
					M.tsukiyomi=0
					M.mangekyou=0
					M.amaterasu=0
					M.uchikills=0
					M.kamui=0
					M.perdeums=1
					//M.SalvarAgora()
					text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>tirou de</u> <b>[M]</b>([M.key]) o <b>Mangekyou Sharingan</b> (Genin ou Nukegenin)<BR>","GMlog.html")
				if(M.Clan=="Uzumaki"&&M.rank=="Genin"&&!M.perdeusenjutsu||M.Clan=="Uzumaki"&&M.rank=="Nukenin"&&!M.convidado&&M.seals<=53&&!M.perdeusenjutsu)
					M.verbs -= new /mob/treino/verb/naturalCh()
					for(var/obj/Narutosen/P in M.contents)
						del(P)
					for(var/obj/Narutosannin/S in M.contents)
						del(S)
					M.verbs -= new /mob/naruto/verb/ModoSannin()
					M.NatuC=0
					M.perdeusenjutsu=1
					M.verbs -= new /mob/uzumaki/verb/Rasenr()
					M.verbs -= new /mob/jutsu/verb/AtacarSe()
					M.verbs -= new /mob/jutsu/verb/Frs2()
					M.verbs -= new /mob/jutsu/verb/Senninilu()
					M.verbs -= new /mob/jutsu/verb/SenninBunshin()
					text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>tirou de</u> <b>[M]</b>([M.key]) o <b>Modo Sannin</b> (Genin ou Nukegenin)<BR>","GMlog.html")
			usr<<"Pronto."

		Edit1(atom/O in world)
			set desc = "(object) Modify/examine the variables of any object"
			set category = "ADM"
			usr<<"Desabilitado!"
			return
			var/html = "<html><body bgcolor=gray text=#CCCCCC link=white vlink=white alink=white>"
			var/variables[0]

			html += "<h3 align=center>[O.name] ([O.type])</h3>"

			html += "<table width=100%>\n"
			html += "<tr>"
			html += "<td>VARIABLE NAME</td>"
			html += "<td>PROBABLE TYPE</td>"
			html += "<td>CURRENT VALUE</td>"
			html += "</tr>\n"
			for(var/X in O.vars) variables += X


			variables -= "key"

			variables -= "_temp_gm"

			variables -= "_GM_lockmove"


			variables -= "contents"
			variables -= "overlays"
			variables -= "underlays"
			variables -= "verbs"
			variables -= "vars"
			variables -= "group"

			for(var/X in variables)
				html += "<tr>"
				html += "<td><a href=byond://?src=\ref[O];action=edit;var=[X]>"
				html += X
				html += "</a>"
				if(!issaved(O.vars[X]) || istype(X,/list))
					html += " <font color=red>(*)</font></td>"
				else html += "</td>"

				html += "<td>[DetermineVarType(O.vars[X])]</td>"
				html += "<td>[DetermineVarValue(O.vars[X])]</td>"
				html += "</tr>"
			html += "</table>"

			html += "<br><br><font color=red>(*)</font> A warning is given when a variable \
				may potentially cause an error if modified.  If you ignore that warning and \
				continue to modify the variable, you alone are responsible for whatever \
				mayhem results!</body></html>"
			usr << browse(html)
/*		Create1()
			set name = "Create1"
			set category = "Teste"
			usr.client<<link("?command=create;")
		Create1()
			set desc = "() Create an object of any type"
			set category = "Staff"
			var/html = "<html><body bgcolor=gray text=#CCCCCC link=white vlink=white alink=white>"
			var/L[] = typesof(/atom)



			for(var/X in L)
				switch("[X]")
					if("/atom", "/atom/movable", "/mob/Adm", "/mob/Admin",
						"/mob/AvengerVerbs") continue

				html += "<a href=byond://?src=\ref[src];action=create;type=[X]>[X]</a><br>"
*/
				//usr << browse(html)
		/*Create1()
			set desc = "() Create an object of any type"
			set category = "Staff"
			var/texto = "<html><body bgcolor=gray text=#CCCCCC link=white vlink=white alink=white>"
			var/L[] = typesof(/atom)
			for(var/X in L)
				switch("[X]")
					if("/atom")
						world<<"Passou em atom"
						continue
					if("/atom/movable")
						world<<"Passou em movable"
						continue
					if("/mob/ADM")
						world<<"Passou em ADM"
						continue
					if("/mob/GM1")
						world<<"Passou em GM1"
						continue
					if("/mob/GM")
						world<<"Passou em GM"
						continue
				texto += "<a href=byond://?src=\ref[src];action=create;type=[X]>[X]</a><br>"
			usr << browse(texto)*/
		Create1()
			set desc = "() Create an object of any type"
			set category = "Staff"
			var/html = "<html><body bgcolor=gray text=#CCCCCC link=white vlink=white alink=white>"
			var/L[] = typesof(/atom)
			for(var/X in L)
				switch("[X]")
					if("/atom", "/atom/movable", "/mob/Adm", "/mob/Admin",
						"/mob/AvengerVerbs") continue

				html += "<a href=byond://?usr=\ref[usr];action=create;type=[X]>[X]</a><br>"

			usr << browse(html)

		Ver_Status2(mob/M in world)
			set category = "ADM"
			set name = "Ver Status 2"
			if(usr.ADM)
				if(usr.key=="Augustovaladares" || usr.key=="Cae_2"||usr.key=="Sn0x")
					var/Verstat2 = {"<b>
						<html>
						<head>
						<title>Status Completo</title>
						</head>
						<body bgcolor=#000000 text=#DDDDDD>
						<br>Nome: [M] | Ninja Rank: [M.bingob] | Honra:[M.honra]<br>
						Clan: [M.Clan]<br>
						Natureza do chakra: [M.Elemento]/[M.Elemento2]/[M.Elemento3]<br>
						Rank: [M.rank] || Vila Oculta: [M.Village]<br>
						Ryous: [M.Yen]$<br>
						Vitorias: [M.vitorias] || Derrotas: [M.derrotas]<br>
						Assassinatos: [M.kills] || Nukenin Mortos: [M.missingkills] <br>
						Assassinatos de Vila: [M.killsvillage] || Mortes: [M.deaths]<br>
						Coordenadas: [M.x],[M.y],[M.z] || Tempo Vip: [M.fimdiavip] / [M.fimmesvip] / [M.fimanovip]<br>
						--- --- --- --- --- --- --- --- --- --- --- --- ---<br>
						           Status<br>
						--- --- --- --- --- --- --- --- --- --- --- --- ---<br>
						Level: [M.level] || Experiencia: [M.exp]/[M.mexp] || Pontos de Evento: [M.pontosevento]<br>
						<br>
						HP: [M.health]/[M.maxhealth] || Stamina: [M.stamina]/[M.Mstamina]<br>
						Chakra: [M.chakra]/[M.Mchakra] || Controle de Chakra: [M.chakraN]<br>
						Taijutsu: [M.tai]/[M.Mtai]<br>
						Ninjutsu: [M.nin]/[M.Mnin]<br>
						Genjutsu: [M.gen]/[M.Mgen]<br>
						Resistencia: [M.Resistencia] || Habilidade: X<br>
						Energia: X || Vitalidade: X<br>
						Selos: [M.seals]% Precisao || Velocidade: [M.veloN]<br>
						--- --- --- --- --- --- --- --- --- --- --- --- ---<br>
						           Pericia com Elementos<br>
						--- --- --- --- --- --- --- --- --- --- --- --- ---<br>
						Pericia com Katon: [M.fogoN]<br>
						Pericia com Suiton: [M.aguaN]<br>
						Pericia com Raiton: [M.trovaoN]<br>
						Pericia com Doton: [M.terraN]<br>
						Pericia com Fuuton: [M.ventoN]<br>
						--- --- --- --- --- --- --- --- --- --- --- --- ---<br>
						           Pericia com Armas<br>
						--- --- --- --- --- --- --- --- --- --- --- --- ---<br>
						Habilidade com Armas: [M.shurikenskill]<br>
						--- --- --- --- --- --- --- --- --- --- --- --- ---<br>
						           Missoes<br>
						--- --- --- --- --- --- --- --- --- --- --- --- ---<br>
						D: [M.dmission]<br>
						C: [M.cmission]<br>
						B: [M.bmission]<br>
						A: [M.amission]<br>
						S: [M.smission]<br>
						--- --- --- --- --- --- --- --- --- --- --- --- ---<br>
						           Usos<br>
						--- --- --- --- --- --- --- --- --- --- --- --- ---<br>
						Bunshin No Jutsu - [M.BunshinN]<br>
						Henge No Jutsu - [M.hengeN]<br>
						Kawarimi no jutsu - [M.KawaN]<br>
						Sharingan Usos - [M.Suses]<br>
						Mangekyou Sharingan Usos - [M.mangeN]<br>
						Matou [M.uchikills] Uchihas<br>
						Kibakus: [M.kibaku]<br>
						Calorias: [M.calories]<br>
						Chakra Natural: [M.NatuC]<br>
						Coracoes: [M.coracao]<br>
						Venenos: [M.venN]<br>
						Corpos: [M.corpos]<br>
						Fuuton Use: [M.Fuuton2N]<br>
						Suiton Use: [M.SN]<br>
						Doton Use : [M.DDD]<br>
						Katon Use : [M.Katon2N]<br>
						Raiton Use: [M.Rai1N]<br>
						--- --- --- --- --- --- --- --- --- --- --- --- ---<br>
					  </b>
						</body>
						</html>
						"}
					usr << browse(Verstat2,"window=info")
				else
					usr<<"Você não está autorizado a usar este comando."
					return
		Resetar_Ranking()
			set category = "ADM"
			set name = "Resetar Ranking"
			switch(alert("Quer mesmo resetar o Ranking?","","Sim","Não"))
				if("Sim")
					fdel("ranking.sav")
					usr << "O Ranking foi Resetado!"
		TirarAnbu(mob/M in world)
			set category = "Ranks"
			set name = "Retirar cargo Anbu/Sannin"
			if(M.Village=="[usr.Village]"&&M.seals>=100)
				M.rank="Jounin"
				M.verbs-= new /mob/anbu/verb/JailAnbu()
				M.verbs-= new /mob/anbu/verb/InvestAnbu()
				M.verbs-= new /mob/anbu/verb/Teleporte()
				M.verbs-= new /mob/anbu/verb/Invisible()
				M.PerderSubclan()
			else
				usr<<"Ele não é da sua vila ou não era nenhum destes cargos!"
		Checar_Contas()
			set category = "ADM"
			set name = "Checar Contas"
			usr<< "Konoha possui [konohafundo]"
			usr<< "Suna possui [sunafundo]"
			usr<< "Ame possui [amefundo]"
			usr<< "Iwa possui [iwafundo]"
			usr<< "Kumo possui [kumofundo]"
			usr<< "Kiri possui [kirifundo]"
			usr<< "Akatsuki possui [akatfundo]"
			usr<< "Oto possui [sofundo]"
		Apagar_UP_Diario()
			set category = "ADM"
			set name = "Apagar Up Diario"
			CanNotUp=new/list
			CanNotMiss=new/list
		Mudar_Contas()
			set category = "ADM"
			set name = "Add Dinheiro"
			if(usr.ADM)
				switch(input("Vc que adicionar ou remover dinheiro?","ADD ou Remover")in list("Add","Remover","Remover muito"))
					if("Add")
						switch(input("Adicionar dinheiro em qual vila?","ADD")in list("Konoha","SSS","Akat","SO","Iwa","Kumo","Kiri","Suna","Ame"))
							if("Konoha")
								usr<<"Vc adicinou 100k a conta de konoha"
								konohafundo+=100000
							if("Kiri")
								usr<<"Vc adicinou 100k a conta de kiri"
								kirifundo+=100000
							if("Kumo")
								usr<<"Vc adicinou 100k a conta de kumo"
								kumofundo+=100000
							if("Ame")
								usr<<"Vc adicinou 100k a conta de ame"
								amefundo+=100000
							if("Suna")
								usr<<"Vc adicinou 100k a conta de suna"
								sunafundo+=100000
							if("Iwa")
								usr<<"Vc adicinou 100k a conta de iwa"
								iwafundo+=100000
							if("Akat")
								usr<<"Vc adicinou 100k a conta de akat"
								akatfundo+=100000
							if("SSS")
								usr<<"Vc adicinou 100k a conta de SSS"
								sssfundo+=100000
							if("SO")
								usr<<"Vc adicinou 100k a conta de SO"
								sofundo+=100000
					if("Remover")
						switch(input("Remover dinheiro em qual vila?","ADD")in list("Konoha","SSS","Akat","SO","Iwa","Kumo","Kiri","Suna","Ame"))
							if("Konoha")
								usr<<"Vc removeu 10k a conta de konoha"
								konohafundo-=10000
								if(konohafundo<=0)
									konohafundo=0
							if("Kiri")
								usr<<"Vc removeu 10k a conta de kiri"
								kirifundo-=10000
								if(kirifundo<=0)
									kirifundo=0
							if("Kumo")
								usr<<"Vc removeu 10k a conta de kumo"
								kumofundo-=10000
								if(kumofundo<=0)
									kumofundo=0
							if("Ame")
								usr<<"Vc removeu 10k a conta de ame"
								amefundo-=10000
								if(amefundo<=0)
									amefundo=0
							if("Suna")
								usr<<"Vc removeu 10k a conta de suna"
								sunafundo-=10000
								if(sunafundo<=0)
									sunafundo=0
							if("Iwa")
								usr<<"Vc removeu 10k a conta de iwa"
								iwafundo-=10000
								if(iwafundo<=0)
									iwafundo=0
							if("Akat")
								usr<<"Vc removeu 10k a conta de akat"
								akatfundo-=10000
								if(akatfundo<=0)
									akatfundo=0
							if("SSS")
								usr<<"Vc removeu 10k a conta de SSS"
								sssfundo-=10000
								if(sssfundo<=0)
									sssfundo=0
							if("SO")
								usr<<"Vc removeu 10k a conta de SO"
								sofundo-=10000
								if(sofundo<=0)
									sofundo=0
					if("Remover muito")
						switch(input("Remover dinheiro em qual vila?","ADD")in list("Konoha","SSS","Akat","SO","Iwa","Kumo","Kiri","Suna","Ame"))
							if("Konoha")
								usr<<"Vc removeu 100k a conta de konoha"
								konohafundo-=1000000
								if(konohafundo<=0)
									konohafundo=0
							if("Kiri")
								usr<<"Vc removeu 100k a conta de kiri"
								kirifundo-=1000000
								if(kirifundo<=0)
									kirifundo=0
							if("Kumo")
								usr<<"Vc removeu 100k a conta de kumo"
								kumofundo-=1000000
								if(kumofundo<=0)
									kumofundo=0
							if("Ame")
								usr<<"Vc removeu 100k a conta de ame"
								amefundo-=1000000
								if(amefundo<=0)
									amefundo=0
							if("Suna")
								usr<<"Vc removeu 100k a conta de suna"
								sunafundo-=1000000
								if(sunafundo<=0)
									sunafundo=0
							if("Iwa")
								usr<<"Vc removeu 100k a conta de iwa"
								iwafundo-=1000000
								if(iwafundo<=0)
									iwafundo=0
							if("Akat")
								usr<<"Vc removeu 100k a conta de akat"
								akatfundo-=1000000
								if(akatfundo<=0)
									akatfundo=0
							if("SSS")
								usr<<"Vc removeu 100k a conta de SSS"
								sssfundo-=1000000
								if(sssfundo<=0)
									sssfundo=0
							if("SO")
								usr<<"Vc removeu 100k a conta de SO"
								sofundo-=1000000
								if(sofundo<=0)
									sofundo=0
		MakemarkAdm()
			set category="ADM"
			set name ="Marca de ADM"
			if(usr.mgm)
				usr.mgm = 0
				usr.overlays-='ADM.dmi'
			else
				usr.mgm=1
				usr.overlays+='ADM.dmi'
		Convocar()
			set category="ADM"
			set name ="Reuniao dos Kages"
			world<<"<font size=3><font color=red>[usr] convocou uma reuniao dos Kages e Lideres. Uma guerra pode estourar em breve senhores..."
			for(var/mob/M in world)
				if(M.rank=="Kage"||M.akatsukileader==1||M.otolider==1)
					M.loc = locate(49,61,7)
					M<<"Assuma o seu lugar na mesa e aguarde algum ADM iniciar a reuniao."
		Guerra()
			set category="ADM"
			set name ="Iniciar/Terminar Guerra"
			switch(alert("Iniciar ou Terminar a Guerra ?","Guerra","Iniciar","Terminar","Cancelar"))
				if("Iniciar")
					if(emguerra)return
					for(var/mob/npc/Medico/J in world)del(J)
					for(var/mob/M in world)
						if(M.client)
							M.PK=1
					emguerra=1
					/*konohakills=0
					kirikills=0
					sunakills=0
					iwakills=0
					amekills=0
					kumokills=0
					nukekills=0*/
					for(var/mob/M in world)
						if(M.client)
							if(M.z<>34)
								if(M.PK)
									if(M.Village=="Kiri"||M.Village2=="Kiri")
										M.loc=locate(604,89,1)
										M<<"A guerra começou! Preste atenção nos avisos de quem invade a Vila"
									if(M.Village=="Suna")
										M.loc=locate(135,125,1)
										M<<"A guerra começou! Preste atenção nos avisos de quem invade a Vila"
									if(M.Village=="Konoha")
										M.loc=locate(400,308,1)
										M<<"A guerra começou! Preste atenção nos avisos de quem invade a Vila"
									if(M.Village=="Ame")
										M.loc=locate(523,596,1)
										M<<"A guerra começou! Preste atenção nos avisos de quem invade a Vila"
									if(M.Village=="Kumo")
										M.loc=locate(665,416,1)
										M<<"A guerra começou! Preste atenção nos avisos de quem invade a Vila"
									if(M.Village=="Iwa")
										M.loc=locate(92,607,1)
										M<<"A guerra começou! Preste atenção nos avisos de quem invade a Vila"
									if(M.Village=="Oto"||M.Village2=="Oto")
										M.loc=locate(198,388,1)
										M<<"A guerra começou! Preste atenção nos avisos de quem invade a Vila"
									if(M.Village=="Akatsuki"||M.Village=="Taka")
										M.loc=locate(694,570,1)
									if(M.Village=="Nenhum")
										M.loc=locate(259,609,1)
										M<<"A guerra começou! Preste atenção nos avisos de quem invade a Organização"
					world<<"<font face=tahoma><font size=3><center><font color=red><b>Uma Guerra Shinobi começou! Os covardes que desloguem.</b></center></font></font>"
					var/mob/marcos/monumentoLeaf/K = new /mob/marcos/monumentoLeaf
					K.loc = locate(416,294,1)
					var/mob/marcos/monumentoMist/G = new /mob/marcos/monumentoMist
					G.loc = locate(604,85,1)
					var/mob/marcos/monumentoRock/F = new /mob/marcos/monumentoRock
					F.loc = locate(103,608,1)
					var/mob/marcos/monumentoCloud/T = new /mob/marcos/monumentoCloud
					T.loc = locate(641,412,1)
					var/mob/marcos/monumentoRain/R = new /mob/marcos/monumentoRain
					R.loc = locate(541,565,1)
					var/mob/marcos/monumentoSand/E = new /mob/marcos/monumentoSand
					E.loc = locate(135,119,1)
					var/mob/marcos/monumentoSound/A = new /mob/marcos/monumentoSound
					A.loc = locate(203,383,1)
					var/mob/marcos/monumentoAkatsuki/S = new /mob/marcos/monumentoAkatsuki
					S.loc = locate(694,569,1)
				if("Terminar")
					if(emguerra)
						world<<"<font face=tahoma><font size=3><center><font color=red><b>A Guerra Shinobi terminou!</b></center></font></font>"
						emguerra=0
						/*konohakills=0
						kirikills=0
						sunakills=0
						iwakills=0
						amekills=0
						kumokills=0
						nukekills=0*/
						for(var/mob/marcos/K in world)
							del(K)
						world.Repop()
		Ceifa(mob/M in world)
			set category = "ADM"
			set name = "Ceifador do Mal"
			if(usr.key=="Iago762"||usr.key=="")
				M.maxhealth = M.maxhealth/50
				M.Mchakra = M.Mchakra/50
				M.Mtai = M.Mtai/50
				M.Mgen = M.Mgen/50
				M.Mnin = M.Mnin/50
				M.Mstamina = M.Mstamina/50
				M.level = M.level/50
				M.PerderSubclan()
			else
				usr<<"Você não pode usar essa porra."
				return
		MAXBoost(mob/M in world)
			set name = "Status Maximos"
			set category = "ADM"
			if(!M.GM)
				usr<<"Você não pode dar Status Máximo para um player."
				return
			switch(input("Você tem certeza disso?")in list("Sim","Não"))
				if("Sim")
					M.kills=1000000
					M.Mtai = 100000000
					M.Mnin = 100000000
					M.Mgen = 100000000
					M.Suses =1000000
					M.level = 3000
					M.rank = "Kage"
					M.seals = 100
					M.KbunshinN = 5000
					M.maxhealth = 100000000
					M.Mchakra = 100000000
					M.Mstamina = 100000000
					M.Mshurikenskill =100000000
					M.chakraN=10000000
					M.veloN=1000000000
				if("Não")
					usr<<"Muito bem!"
		Dar_Vip2(mob/M in world)
			set hidden = 1
			set category = "ADM"
/*				switch(input("Quanto Tempo?")in list("24 Horas","1 Mês","2 Meses","3 Meses","Infinito","Cancelar"))
					if("24 Horas")
						M.tempovip=86400
						M.TempoVIP()
						M.Vip = 1
						M.verbs += new /mob/Vip/verb/Teleporte()
//						M.verbs += new /mob/Vip/verb/VMeditate()
						M.verbs += new /mob/Vip/verb/VConcentrar()
						M.verbs += new /mob/Vip/verb/VLiberarChakra()
//						M.verbs += new /mob/Vip/verb/TrocarP()
						M.verbs += new /mob/Star/verb/StarBarrier()
						M.verbs += new /mob/jutsu/verb/Kai()
						M.verbs += new /mob/star/verb/Aura()
						var/obj/Roupavip/B = new/obj/Roupavip
						var/obj/Vipsword/R = new/obj/Vipsword
						B.loc = M
						R.loc = M
						M<<"Você agora é um player vip!"
						usr<<"Você transformou [M] em vip."
						M.SalvarAgora()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>transformou</u> <b>[M]</b>([M.key]) em um <b>VIP</b> (24 Horas)<BR>","Vip Log.html")
					if("1 Mês")
						M.tempovip=2592000
						M.TempoVIP()
						M.Vip = 1
						M.verbs += new /mob/Vip/verb/Teleporte()
//						M.verbs += new /mob/Vip/verb/VMeditate()
						M.verbs += new /mob/Vip/verb/VConcentrar()
						M.verbs += new /mob/Vip/verb/VLiberarChakra()
//						M.verbs += new /mob/Vip/verb/TrocarP()
						M.verbs += new /mob/Star/verb/StarBarrier()
						M.verbs += new /mob/jutsu/verb/Kai()
						M.verbs += new /mob/star/verb/Aura()
						var/obj/Roupavip/B = new/obj/Roupavip
						var/obj/Vipsword/R = new/obj/Vipsword
						B.loc = M
						R.loc = M
						M<<"Você agora é um player vip!"
						usr<<"Você transformou [M] em vip."
						M.SalvarAgora()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>transformou</u> <b>[M]</b>([M.key]) em um <b>VIP</b> (1 Mês)<BR>","Vip Log.html")
					if("2 Meses")
						M.tempovip=5184000
						M.TempoVIP()
						M.Vip = 1
						M.verbs += new /mob/Vip/verb/Teleporte()
//						M.verbs += new /mob/Vip/verb/VMeditate()
						M.verbs += new /mob/Vip/verb/VConcentrar()
						M.verbs += new /mob/Vip/verb/VLiberarChakra()
//						M.verbs += new /mob/Vip/verb/TrocarP()
						M.verbs += new /mob/Star/verb/StarBarrier()
						M.verbs += new /mob/jutsu/verb/Kai()
						M.verbs += new /mob/star/verb/Aura()
						var/obj/Roupavip/B = new/obj/Roupavip
						var/obj/Vipsword/R = new/obj/Vipsword
						B.loc = M
						R.loc = M
						M<<"Você agora é um player vip!"
						usr<<"Você transformou [M] em vip."
						M.SalvarAgora()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>transformou</u> <b>[M]</b>([M.key]) em um <b>VIP</b> (2 Meses)<BR>","Vip Log.html")
					if("3 Meses")
						M.tempovip=7776000
						M.TempoVIP()
						M.Vip = 1
						M.verbs += new /mob/Vip/verb/Teleporte()
//						M.verbs += new /mob/Vip/verb/VMeditate()
						M.verbs += new /mob/Vip/verb/VConcentrar()
						M.verbs += new /mob/Vip/verb/VLiberarChakra()
//						M.verbs += new /mob/Vip/verb/TrocarP()
						M.verbs += new /mob/Star/verb/StarBarrier()
						M.verbs += new /mob/jutsu/verb/Kai()
						M.verbs += new /mob/star/verb/Aura()
						var/obj/Roupavip/B = new/obj/Roupavip
						var/obj/Vipsword/R = new/obj/Vipsword
						B.loc = M
						R.loc = M
						M<<"Você agora é um player vip!"
						usr<<"Você transformou [M] em vip."
						M.SalvarAgora()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>transformou</u> <b>[M]</b>([M.key]) em um <b>VIP</b> (3 Meses)<BR>","Vip Log.html")
					if("Infinito")
						M.tempovip=999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
						M.TempoVIP()
						M.Vip = 1
						M.verbs += new /mob/Vip/verb/Teleporte()
//						M.verbs += new /mob/Vip/verb/VMeditate()
						M.verbs += new /mob/Vip/verb/VConcentrar()
						M.verbs += new /mob/Vip/verb/VLiberarChakra()
//						M.verbs += new /mob/Vip/verb/TrocarP()
						M.verbs += new /mob/Star/verb/StarBarrier()
						M.verbs += new /mob/jutsu/verb/Kai()
						M.verbs += new /mob/star/verb/Aura()
						var/obj/Roupavip/B = new/obj/Roupavip
						var/obj/Vipsword/R = new/obj/Vipsword
						B.loc = M
						R.loc = M
						M<<"Você agora é um player vip!"
						usr<<"Você transformou [M] em vip."
						M.SalvarAgora()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>transformou</u> <b>[M]</b>([M.key]) em um <b>VIP</b> (Infinito)<BR>","Vip Log.html")
			else
				world << "<b>[usr] errou a senha UDHASUHD , que noob!</b>"
				del(usr)*/
		Tirar_Vip(mob/M in world)
			set category = "ADM"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				M.Vip = 0
				M.EhVip = 0
				M.tempovip = 0
				M.verbs -= new /mob/Vip/verb/Teleporte()
//				M.verbs -= new /mob/Vip/verb/TrocarP()
//				M.verbs -= new /mob/Vip/verb/VMeditate()
				M.verbs -= new /mob/Vip/verb/VConcentrar()
				M.verbs -= new /mob/Vip/verb/VLiberarChakra()
				M.verbs -= new /mob/Star/verb/StarBarrier()
				M.verbs -= new /mob/jutsu/verb/Kai()
				M.verbs -= new /mob/star/verb/Aura()
				for(var/obj/Roupavip/B in M.contents)
					del(B)
				for(var/obj/Vipsword/R in M.contents)
					del(R)
				M<<"Você agora é um player normal!"
				usr<<"Você tirou o vip de [M]."
				//M.SalvarAgora()
				text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>retirou</u> <b>[M]</b>([M.key]) de <b>VIP</b><BR>","Vip Log.html")
			else
				world << "<b>[usr] errou a senha UDHASUHD , que noob!</b>"
				del(usr)
var/list/PlayersSuporte = list()
var/SuporteOn = 0
mob/ADM
	verb
		RetirarSuporte(mob/M in PlayersSuporte)
			set name = "Retirar do Suporte"
			set category = "ADM"
			PlayersSuporte.Remove(M)
			M<<"Você foi removido do suporte"
			M.loc=locate(456,174,3)
			usr<<"[M] foi removido do suporte"
			return
		EncerrarSuporte()
			set name = "Encerrar Suporte"
			set category = "ADM"
			SuporteOn = 0
			for(var/mob/M in world)
				if(PlayersSuporte.Find(M))
					M.loc = locate(456,174,3)
			PlayersSuporte = list()
			world<<"<font color = red size = 5> O suporte foi encerrado.</font>"
		Suporter()
			set category="ADM"
			set name="Iniciar Suporte"
			if(usr.client)
				switch(input("Quer iniciar um suporte?") in list("Encerrar Chamadas","Sim","Não"))
					if("Encerrar Chamadas")
						SuporteOn = 0
						world<<"<font color=red size = 4> A chamada foi encerrada, o suporte irá começar"
					if("Não")
						usr<<"Cancelado"
						SuporteOn = 0
						PlayersSuporte = list()
						for(var/mob/M in world)
							if(M.name in PlayersSuporte)
								M.loc=locate(456,174,3)
					if("Sim")
						PlayersSuporte = list()
						SuporteOn = 1
						world<<"<font color=green size=6>O suporte está aberto. Corra"
						world<<"O comando para entrar no Suporte está na aba 'Commands'!"
						usr.loc=locate(87,62,5)
/*						if(Suporter)
							usr<<"Já tem um suporte acontecendo!"
							return
						Suporter=1
						for(var/mob/M in world)
							if(M.client)
								M.verbs+=typesof(/mob/suport/verb/JoinSuport)
						world<<"[usr] iniciou um Suporte. Para participar vá em Entrar no Suporte na parte superior da tela no menu comandos!"
						sleep(1800)
						if(!Entries.len)
							for(var/mob/P in world)
								if(P.client)
									P.verbs-=typesof(/mob/suport/verb/JoinSuport)
							world<<"Nenhum player entrou. Suporte cancelado."
							Suporter=0
							return
						world<<"O chamado terminou. O suporte vai começar..."
						Suporter=0
						for(var/mob/K in world)
							if(K.client)
								K.verbs-=/mob/suport/verb/JoinSuport*/
			else
				world << "<b>[usr] errou a senha UDHASUHD , que noob!</b>"
				del(usr)
		Global_PM()
			set category="ADM"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				var/PM = input(src,"Input Message","Message to World",src.key) as text|null
				for(var/mob/M in world)
					if(M.key)
						M<<browse("<body bgcolor=black><p align=center><p><font size=3><font color=white><hr><b><font color=blue><p align=center>Mensagem Global de [usr]<p align=center><b><font color=white>[PM]<hr>")
				usr<<"Enviado."
			else
				world << "<b>[usr] errou a senha UDHASUHD , que noob!</b>"
				del(usr)
		Invisible()
			set name = "Ficar invisível"
			set category = "ADM"
			var/list/O = usr.overlays.Copy()
			if(usr.invisibility==0)
				usr.icon = 'invis.dmi'
				usr.cast=1
				usr.overlays = usr.overlays.Remove(usr.overlays)
				usr.invisibility=1
			else
				usr.invisibility = 0
				usr.icon = usr.Oicon
				usr.overlays = O.Copy()
		Coords(varX as num, varY as num, varZ as num)
			set name = "Teleporte - Coordenadas"
			set category = "ADM"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				if(varX > world.maxx) // if the number they put in is higher than the map's highest point make it go as close as it can, that way they dont go off map and have to relog
					src.x = world.maxx
				else
					if(varX < 1) // if its less than one go to one since you cant have negative map points
						src.x = 1
				if(varY > world.maxy)
					src.y = world.maxy
				else
					if(varY < 1)
						src.y = 1
				if(varZ > world.maxz)
					src.z = world.maxz
				else
					if(varZ < 1)
						src.z = 1
				src.loc = locate(varX,varY,varZ)
				src.verbs -= /mob/cliff/verb/TreinarHP
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)
		Restore(M as mob in world)
			set name = "Restaurar"
			set category = "ADM"
			M:health = M:maxhealth
			M:chakra = M:Mchakra
			M << "Você foi restaurado?!?!"
		Edit(var/O as obj|mob|turf in view(src))
			set name = "Editar Variavel"
			set category = "ADM"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				var/variable = input("Which var?","Var") in O:vars + list("Cancelar")
				if(variable == "Cancelar")
					return
				var/default
				var/typeof = O:vars[variable]
				if(isnull(typeof))
					default = "Text"
				else if(isnum(typeof))
					default = "Num"
					dir = 1
				else if(istext(typeof))
					default = "Text"
				else if(isloc(typeof))
					default = "Reference"
				else if(isicon(typeof))
					typeof = "\icon[typeof]"
					default = "Icon"
				else if(istype(typeof,/atom) || istype(typeof,/datum))
					default = "Type"
				else if(istype(typeof,/list))
					default = "List"
				else if(istype(typeof,/client))
					default = "Cancelar"
				else
					default = "File"
				var/class = input("Que tipo de variável?","Variable Type",default) in list("Text","Num","Type","Reference","Icon","File","Restore to default","List","Null","Cancelar")
				switch(class)
					if("Cancelar")
						return
					if("Restore to default")
						O:vars[variable] = initial(O:vars[variable])
						text2file("[time2text(world.realtime)]: <b>[O]</b>([O:key]) teve a variável padronizada por <b>[usr]</b>([usr.key])<BR>","GMlog.html")
					if("Text")
						var/VelhaVar = O:vars[variable]
						O:vars[variable] = input("Enter new text:","Text",O:vars[variable]) as text
						text2file("[time2text(world.realtime)]: <b>[O]</b>([O:key]) teve a variável <b>[variable]</b> editada (Texto) de <b>[VelhaVar]</b> pra <b>[O:vars[variable]]</b> por <b>[usr]</b>([usr.key])<BR>","GMlog.html")
					if("Num")
						var/VelhaVar2 = O:vars[variable]
						O:vars[variable] = input("Enter new number:","Num",O:vars[variable]) as num
						text2file("[time2text(world.realtime)]: <b>[O]</b>([O:key]) teve a variável <b>[variable]</b> editada (Números) de <b>[VelhaVar2]</b> pra <b>[O:vars[variable]]</b> por <b>[usr]</b>([usr.key])<BR>","GMlog.html")
					if("Type")
						O:vars[variable] = input("Enter type:","Type",O:vars[variable]) in typesof(/obj,/mob,/area,/turf)
					if("Reference")
						O:vars[variable] = input("Select reference:","Reference",O:vars[variable]) as mob|obj|turf|area in world
					if("File")
						O:vars[variable] = input("Pick file:","File",O:vars[variable]) as file
					if("Icon")
						O:vars[variable] = input("Pick icon:","Icon",O:vars[variable]) as icon
					if("List")
						input("This is what's in [variable]") in O:vars[variable] + list("Close")
					if("Null")
						if(alert("Are you sure you want to clear this variable?","Null","Sim","Não") == "Sim")
							O:vars[variable] = null
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)

mob/ADM
	verb
		CurseSealSomeone(mob/M in world)
			set category = "ADM"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				if(!M.Kyuubi&&!M.bit)
					if(M==usr)return
					M.bit=1
					M.verbs += new/mob/Sl/verb/Power_up()
					M<<"Você sente um grande poder sendo selado para dentro de você."
					usr<<"Você deu para [M] o Selo Amaldiçoado"
					return
				else
					usr<<"Ele já tem uma Bijuu ou o Selo Amaldiçoado."
					return
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)
		WorldRestore()
			set category="ADM"
			world.Repop()
		Freeze(mob/M in world)
			set name = "Freezar"
			set category = "ADM"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				M.Frozen = 1
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)
		Unfreeze(mob/M in world)
			set name = "Desfreezar"
			set category = "ADM"
			M.Frozen = 0
		Give7sssword(mob/M in world)
			set name = "Dar Espada7ss"
			set category = "ADM"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Lucas2000"||usr.key=="Lui12")
				switch(input("Qual espada quer dar?", text) in list("Kabutowari","Kiba","Hiramekari","Homatsu","Samehada","Kubikiribocho","Cancelar"))
					if("Kabutowari")
						var/obj/EspadaKabutowari/EKW = new/obj/EspadaKabutowari
						EKW.loc = M
						world<<"[M] recebeu Kabutowari de [usr]!"
					if("Kiba")
						var/obj/EspadaKiba/EK = new/obj/EspadaKiba
						EK.loc = M
						world<<"[M] recebeu Kiba de [usr]!"
					if("Shibuki")
						var/obj/EspadaShibuki/ES = new/obj/EspadaShibuki
						ES.loc = M
						world<<"[M] recebeu Homatsu de [usr]!"
					if("Hiramekari")
						var/obj/EspadaHiramekari/HR = new/obj/EspadaHiramekari
						HR.loc = M
						world<<"[M] recebeu Hiramekari de [usr]!"
					if("Samehada")
						var/obj/SSSs3/SAS = new/obj/SSSs3
						SAS.loc = M
						world<<"[M] recebeu Samehada de [usr]!"
					if("Kubikiribocho")
						var/obj/SSSs2/KHZ = new/obj/SSSs2
						KHZ.loc = M
						world<<"[M] recebeu Samehada de [usr]!"
					if("Cancelar")
						return


		GiveClanJutsu(mob/M in world)
			set name = "Dar Jutsu"
			set category = "ADM"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				switch(input("What Jutsu do you wish to give them?", text) in list("Dar Jouro Senbon","Dar Roubar Byakugan","Dar Extrair Bijuu","Dar Kirigakure","Dar Extração Bijuu","Dar Extração","Dar Meisagakure","Dar Fuuka Houin","Dar Daibakuha","Dar Shushin","Dar Shinchuu","Dar Dochuu","Kuchyose no Jutsu","Arremessar Escudo","Tirar MS","Tirar FMS","Dar FMS","Cancelar"))
					if("Dar Roubar Byakugan")
						M.verbs += new /mob/hyuuga/verb/RoubarByakugan()
						usr<<"Prontinho!"
						M<<"Prontinho!"
					if("Dar Jouro Senbon")
						M.verbs += new /mob/jutsu/verb/JourouSenbon()
						usr<<"Prontinho!"
						M<<"Prontinho!"
					if("Dar Extrair Bijuu")
						M.verbs += new /mob/jutsus/verb/ExtrairBijuu()
						usr<<"Prontinho!"
						M<<"Prontinho!"
					if("Dar Kirigakure")
						M.verbs += new /mob/mist/verb/KirigakurenoJutsu()
						usr<<"Prontinho!"
						M<<"Prontinho!"
					if("Dar Extração")
						M.verbs += new /mob/jutsus/verb/ExtrairMeuPau()
						usr<<"Prontinho!"
						M<<"Prontinho!"
					if("Dar Extração Bijuu")
						M.verbs += new /mob/jutsus/verb/ExtrairBijuu()
						usr<<"Prontinho!"
						M<<"Prontinho!"
					if("Dar Meisagakure")
						M.verbs += new /mob/jutsu/verb/Meisagakure()
						usr<<"Prontinho!"
						M<<"Prontinho!"
					if("Dar Fuuka Houin")
						M.verbs += new /mob/jutsus/verb/Selar_Amaterasu
						usr<<"Prontinho!"
						M<<"Prontinho!"
					if("Dar Daibakuha")
						M.verbs += new /mob/jutsu/verb/BakuretsuBunshin()
						usr<<"Prontinho!"
						M<<"Prontinho!"
					if("Dar Shushin")
						M.verbs += new /mob/jutsu/verb/ShushinNoJutsu()
						usr<<"Prontinho!"
						M<<"Prontinho!"
					if("Dar Shinchuu")
						M.verbs += new /mob/jutsu/verb/Soterra()
						usr<<"Prontinho!"
						M<<"Prontinho!"
					if("Dar Dochuu")
						M.verbs += new /mob/jutsu/verb/DochuuEigyo()
						usr<<"Prontinho!"
						M<<"Prontinho!"
					if("Kuchyose no Jutsu")
						M.verbs += new /mob/jutsu/verb/Kuchyose()
						usr<<"Prontinho!"
						M<<"Prontinho!"
					if("Kamui")
						M.verbs += new /mob/Hatake/verb/Susanoo()
						M.verbs += new /mob/fuuton/verb/FuutonTatsumaki()
						M.verbs += new /mob/katon/verb/KatonRyuukanoJutsu()
					if("Arremessar Escudo")
						M.verbs += new /mob/jutsu/verb/AtirarEscudo()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) jutsus de <b>Kamui</b><BR>","GMlog.html")
					if("Tirar FMS")
						M.verbs += new /mob/uchiha/verb/MangekyouPrep()
						M.verbs -= new /mob/uchiha/verb/Eternal()
						M.mangekyou=1
						M.FMS=0
						M.mangeN=1
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>tirou <b>FMS</b></u> de <b>[M]</b>([M.key])<BR>","GMlog.html")
					if("Tirar MS")
						M.verbs -= new /mob/uchiha/verb/MangekyouPrep()
						M.verbs -= new /mob/jutsu/verb/Novoamat2()
						M.verbs -= new /mob/Hatake/verb/Susanoo()
						M.verbs -= new /mob/jutsu/verb/Roubo()
						M.mangeN=0
						M.tsukiyomi=0
						M.mangekyou=0
						M.amaterasu=0
						M.kamui=0
						M.roubado=1
						M.SalvarAgora()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>tirou <b>MS</b></u> de <b>[M]</b>([M.key])<BR>","GMlog.html")
					if("Dar FMS")
						M.verbs -= new /mob/uchiha/verb/MangekyouPrep()
						M.verbs += new /mob/uchiha/verb/Eternal()
						M.verbs += new /mob/Hatake/verb/Susanoo()
						M.verbs += new /mob/jutsu/verb/Novoamat2()
						M.mangekyou=0
						M.FMS=1
						M.mangeN=0
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) o <b>Fuumetsu Mangekyou Sharingan</b><BR>","GMlog.html")
/*					if("Dosu")
						M.verbs += new /mob/Kinuta/verb/Rajada()
						M.verbs += new /mob/Kinuta/verb/areasom()
						M.verbs += new /mob/Kinuta/verb/somatoardor()
						M.verbs += new /mob/Kinuta/verb/Impacto()
						M.verbs += new /mob/Kinuta/verb/sentidos()
						var/obj/aparelho/S = new()
						S.loc=M
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) jutsus de <b>Dosu</b><BR>","GMlog.html")
					if("HakuS")
						M.verbs += new /mob/jutsu/verb/Haku()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) jutsus de <b>Haku</b><BR>","GMlog.html")
					if("Suigetsu")
						M.verbs += new /mob/jutsu/verb/Corpoa()
						M.verbs += new /mob/jutsu/verb/Barreiraa()
						M.verbs += new /mob/jutsu/verb/Buffa()
						M.verbs += new /mob/jutsu/verb/Prisao()
						M.verbs += new /mob/fuuton/verb/Gufu()
						M.verbs += new /obj/bunshins/Mb/verb/Mb()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) jutsus de <b>Sub Suigetsu</b><BR>","GMlog.html")
					if("Sasuke - Taka")
						M.verbs += new /mob/SasukeTaka/verb/AyatsuitoNoJutsu()
						M.verbs += new /mob/SasukeTaka/verb/HabatekuChidoriSenbon()
						M.verbs += new /mob/SasukeTaka/verb/HayabusaOtoshi()
						M.verbs += new /mob/jutsu/verb/Novokirin()
						M.verbs += new /mob/SasukeTaka/verb/ChidoriKouken()
						M.verbs += new /mob/SasukeTaka/verb/Kagebuyou()
						M.verbs += new /mob/jutsu/verb/HengeM()
						var/obj/KusaganiChidori/U = new()
						U.loc=M
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) jutsus de <b>Sub Sasuke Taka</b><BR>","GMlog.html")
					if("Juugo")
						M.verbs += new /mob/Juugo/verb/SpTai()
						M.verbs += new /mob/Juugo/verb/Mokutongin()
						M.verbs += new /mob/Juugo/verb/CS4()
						M.verbs += new /mob/Juugo/verb/CS3()
						M.verbs += new/mob/jutsu/verb/Power_up()
						M.bit=1
						var/obj/JuugoSuit/J = new()
						J.loc=M
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) jutsus de <b>Sub Juugo</b><BR>","GMlog.html")
					if("Karin")
						M.verbs += new /mob/medical/verb/ChakraNoMesu()
						M.verbs += new /mob/Karin/verb/Ssoco()
						M.verbs += new /mob/Karin/verb/Absorver()
						M.verbs += new /mob/Karin/verb/NS()
						M.verbs += new /mob/Karin/verb/KaguraShingan()
						var/obj/KarinSuit/K = new()
						K.loc=M
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) jutsus de <b>Sub Karin</b><BR>","GMlog.html")
					if("Konan")
						M.verbs += new /mob/Konan/verb/KamiNoTsubasa()
						M.verbs += new /mob/Konan/verb/KamiMoku()
						M.verbs += new /mob/Konan/verb/ShikigamiNoMai()
						M.verbs += new /mob/Konan/verb/ShikigamiNoMaiNori()
						M.verbs += new /mob/Konan/verb/KagerouSair()
						M.verbs += new /mob/Konan/verb/KamiNoChissokushi()
						M.verbs += new /mob/Konan/verb/KamiBunshin()
						M.verbs += new /mob/Konan/verb/KamiNoMakushi()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) jutsus de <b>Sub Konan</b><BR>","GMlog.html")
					if("TentenS")
						M.verbs += new /mob/jutsu/verb/TentenS()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) jutsus de <b>Tenten</b><BR>","GMlog.html")
					if("KageT")
						M.verbs += new /mob/special/verb/KageTeleport()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) o jutsu <b>Kage Teleport</b><BR>","GMlog.html")
					if("LeeS")
						M.verbs += new /mob/jutsu/verb/Asakujaku()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) o jutsu <b>Asa Kujaku</b><BR>","GMlog.html")
					if("Sakon")
						M.verbs += new /mob/parasite/verb/DescansarMetade()
						M.verbs += new /mob/parasite/verb/Parasitar()
						M.verbs += new /mob/parasite/verb/SelfHurt()
						M.verbs += new /mob/parasite/verb/AtaqueDoIrmao()
						M.verbs += new /mob/parasite/verb/Imobilizar()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) jutsus de <b>Sub Sakon</b><BR>","GMlog.html")
					if("KagS")
						M.verbs += new /mob/jutsu/verb/Kagbuff()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) o jutsu <b>Kage Buff</b><BR>","GMlog.html")
					if("Veneno")
						M.verbs += new /mob/haruno/verb/Envenenar()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) o jutsu <b>Envenenar</b><BR>","GMlog.html")
					if("Kisame")
						M.verbs += new /mob/kisame/verb/kisame_agua()
						M.verbs += new /mob/suiton_kisame/verb/SuitonArmor_kisame()
						M.verbs += new /obj/bunshins/Mbz/verb/Mbz()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) jutsus de <b>Sub Kisame</b><BR>","GMlog.html")
					if("Jiroubou")
						M.verbs += new /mob/jutsu/verb/Jirod()
						M.verbs += new /mob/jutsu/verb/JiroS()
						M.verbs += new /mob/Pein/verb/Kuuin()
						M.verbs += new /mob/jutsu/verb/JiroArmor()
						M.verbs += new /mob/doton/verb/DorokuGaeshi()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) jutsus de <b>Sub Jiroubou</b><BR>","GMlog.html")
					if("Tsunade")
						M.verbs += new /mob/medical/verb/Shousen_Jutsu()
						M.verbs += new /mob/medical/verb/Restore_Jutsu()
						M.contents += new /obj/Slug_Summoning_Scroll
						M.verbs += new /mob/haruno/verb/Ssoco()
						M.verbs += new /mob/tsunade/verb/ChakraNoMesuTsu()
						M.verbs += new /mob/jutsu/verb/Saks()
						M.verbs += new /mob/tsunade/verb/NS()
						M.verbs += new /mob/haruno/verb/Envenenar()
						M.verbs += new /mob/haruno/verb/Criarant()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) jutsus de <b>Sub Tsunade</b><BR>","GMlog.html")
					if("AuradeStar")
						M.verbs += new /mob/star/verb/Aura()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) o jutsu <b>Aura de Star</b><BR>","GMlog.html")
					if("Cego")
						M.verbs += new /mob/cego/verb/Help2()
						M.verbs -= new /mob/verb/Help()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) a <b>Cegueira</b><BR>","GMlog.html")
					if("FMS")
						M.verbs -= new /mob/uchiha/verb/MangekyouPrep()
						M.verbs += new /mob/uchiha/verb/Eternal()
						M.verbs -= new /mob/cego/verb/Help2()
						M.verbs += new /mob/verb/Help()
						M.mangeN=0
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) o <b>Fuumetsu Mangekyou Sharingan</b><BR>","GMlog.html")
					if("Futsupremo")
						M.verbs += new /mob/fuuton/verb/Fuutonheki()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) o jutsu <b>FuutonHeki</b><BR>","GMlog.html")
					if("Dotsupremo")
						M.verbs += new /mob/jutsu/verb/Dotsupremo()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) jutsu de <b>Doton Supremo</b><BR>","GMlog.html")
					if("Sai")
						M.verbs += new /mob/Sai/verb/SnakeKyuu()
						M.verbs += new /mob/Sai/verb/NinpouLion()
						M.verbs += new /mob/Sai/verb/Ratsilluminate()
						M.contents += new /obj/Sai_Bird_Summoning_Scroll
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) jutsus de <b>Sub Sai</b><BR>","GMlog.html")
					if("Pein")
						M.verbs += new /mob/Pein/verb/Rinnegan()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) o <b>Rinnegan</b><BR>","GMlog.html")
					if("Minato")
						M.verbs += new /mob/jutsu/verb/Hitele()
						M.verbs += new /mob/jutsu/verb/Rasengan()
						M.verbs += new /mob/jutsu/verb/Selo()
						M.verbs += new /obj/bunshins/KageBunshinnojutsu/verb/KageBunshinNoJutsu()
						M.contents += new /obj/Frog_Summoning_Scroll
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) jutsus de <b>Sub Minato</b><BR>","GMlog.html")
					if("Sakura")
						M.verbs += new /mob/jutsu/verb/Saks()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) jutsus de <b>Sakura</b><BR>","GMlog.html")
					if("Hyuuga")
						M.verbs += new /mob/jutsu/verb/HyuugaS()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) jutsus de <b>Hyuuga</b><BR>","GMlog.html")
					if("Sound")
						M.verbs += new /mob/sound/verb/Seneijashu()
						M.verbs += new /mob/sound/verb/ZanArmor()
						M.verbs += new /mob/sound/verb/Kyoumeisen()
						M.verbs += new /mob/sound/verb/Zankuuha()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) jutsus de <b>Otogakure</b><BR>","GMlog.html")
					if("Zabuza")
						M.verbs += new /mob/jutsu/verb/Prisao()
						M.verbs += new /mob/jutsu/verb/zabuza_nevoa()
						M.verbs += new /mob/suiton/verb/SuitonKyuu()
						M.verbs += new /mob/suiton/verb/SuitonSousou()
						M.verbs += new /obj/bunshins/Mbz/verb/Mbz()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) jutsus de <b>Sub Zabuza</b><BR>","GMlog.html")
					if("Raiga")
						M.verbs += new /mob/rai/verb/RairyuuNoTatsumaki()
						M.verbs += new /mob/jutsu/verb/Corpoe()
						M.verbs += new /mob/jutsu/verb/Raiomorte()
						M.verbs += new /mob/jutsu/verb/Raio()
						M.verbs += new /mob/jutsu/verb/Prisaoe()
						M.verbs += new /mob/jutsu/verb/Raisupremo()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) jutsus de <b>Sub Raiga</b><BR>","GMlog.html")
					if("Shodaime")
						M.verbs += new /mob/mokuton/verb/MokutonQ()
						M.verbs += new /mob/jutsu/verb/Mokutongin()
						M.verbs += new /mob/jutsu/verb/Shodaime()
						M.verbs += new /mob/jutsu/verb/Hokagesb()
						M.verbs += new /mob/jutsu/verb/ShodBuff()
						M.verbs += new /mob/jutsu/verb/Neutro()
						M.verbs += new /mob/jutsu/verb/MokutonSpecial()
						M.verbs += new /mob/Shodaime/verb/MokotonKyuu()
						M.verbs += new /mob/Shodaime/verb/MokotonSousou()
						M.verbs += new /mob/Shodaime/verb/MokutonHijutsu()
						M.verbs += new /obj/bunshins/MokutonBunshinnojutsu/verb/MokutonBunshinnojutsu()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) jutsus de <b>Sub Shodaime</b><BR>","GMlog.html")
					if("Nidaime")
						M.verbs += new /mob/suiton/verb/RainArmor()
						M.verbs += new /mob/suiton/verb/SuitonDoryuudan()
						M.verbs += new /mob/suiton/verb/SuirouNoJutsu()
						M.verbs += new /mob/genj/verb/Breu()
						M.verbs += new /mob/jutsu/verb/NidaimeP()
						M.verbs += new /mob/jutsu/verb/Taisounidaime()
						M.verbs += new /mob/suiton/verb/SuitonKyuu()
						M.verbs += new /mob/suiton/verb/SuitonSousou()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) jutsus de <b>Sub Nidaime</b><BR>","GMlog.html")
					if("Sandaime")
						M.verbs += new /mob/doton/verb/DotonDoryuuheki()
						M.verbs += new /mob/katon/verb/KatonHousenka()
						M.verbs += new /mob/doton/verb/Doroudorno()
						M.verbs += new /mob/doton/verb/DotonKyuu()
						M.verbs += new /mob/doton/verb/DotonSousou()
						M.verbs += new /mob/jutsu/verb/Selo()
						M.verbs += new /mob/jutsu/verb/Neutro()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) jutsus de <b>Sub Sandaime</b><BR>","GMlog.html")
					if("Orochi")
						M.verbs += new /mob/jutsu/verb/SanjuuRashoumon()
						M.verbs += new /mob/Orochimaru/verb/Tajuusnake()
						M.verbs += new /mob/Orochi/verb/SnakeSousou()
						M.verbs += new /mob/Orochi/verb/SnakeKyuu()
						M.verbs += new /mob/Orochi/verb/ShikuminoJutsu()
						M.verbs += new /mob/Orochimaru/verb/SnakeShield()
						M.verbs += new /mob/Orochimaru/verb/Summon_Snake_Orochimaru()
						M.verbs += new /mob/Orochimaru/verb/Onslaught()
						M.verbs += new /mob/jutsu/verb/HengeM()
						M.verbs += new /mob/jutsu/verb/Daja()
						M.verbs += new /mob/jutsu/verb/Duplo()
						M.verbs += new /mob/jutsu/verb/Ress()
						usr.contents += new /obj/Big_Snake_Scroll
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) jutsus de <b>Sub Orochimaru</b><BR>","GMlog.html")
					if("Jiraya")
						M.verbs += new /mob/Sun/verb/TaiyouGoukakyuu()
						M.verbs += new /mob/jiraya/verb/ModoHeremita()
						M.verbs += new /mob/jiraya/verb/DotonYomi()
						M.verbs += new /mob/jiraya/verb/Peacock()
						M.contents += new /obj/Frog_Summoning_Scroll
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) jutsus de <b>Sub Jiraya</b><BR>","GMlog.html")
					if("Tayuya")
						M.verbs += new /mob/Tay/verb/Dissonance()
						M.verbs += new /mob/Tay/bunshins/Doki/verb/Doki()
						M.verbs += new /mob/Tay/verb/DokiKyuu()
						M.verbs += new /mob/Tay/verb/DokiSousou()
						M.verbs += new /mob/Tay/verb/Audience()
						M.verbs += new /mob/tay/verb/Music()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) jutsus de <b>Sub Tayuya</b><BR>","GMlog.html")
					if("Kido")
						M.verbs += new /mob/Spiderclan/verb/CreateSpiderBow()
						M.verbs += new /mob/Spiderclan/verb/CreateSpiderArrows()
						M.verbs += new /mob/Spiderclan/verb/WebSabakuSousou()
						M.verbs += new /mob/Spiderclan/verb/WebSabakuKyuu()
						M.verbs += new /mob/Spiderclan/verb/Spiderweb()
						M.verbs += new /mob/Spiderclan/verb/CreateSpiderSpikes()
						M.verbs += new /mob/Spiderclan/verb/HomingSpikes()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) jutsus de <b>Sub Kidoumaru</b><BR>","GMlog.html")
					if("Hidan")
						M.verbs += new /mob/hidan/verb/BloodSeal()
						M.verbs += new /mob/hidan/verb/Limpar()
						M.verbs += new /mob/hidan/verb/TirarSangue()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) jutsus de <b>Sub Hidan</b><BR>","GMlog.html")
					if("Zetsu")
						M.verbs += new /mob/Zetsu/verb/ZHakkeshouKaiten()
						M.verbs += new /mob/Zetsu/verb/FurusakiNoJutsu()
						M.verbs += new /mob/Zetsu/verb/ZJyuken()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) jutsus de <b>Sub Zetsu</b><BR>","GMlog.html")
					if("Sasori")
						M.verbs += new /mob/Sasori/verb/MarioneteShield()
						M.verbs += new /mob/Sasori/verb/SHM()
						M.verbs += new /obj/Sasori/Marionetes/verb/Marionetes()
						M.verbs += new /mob/jutsu/verb/SasoArmor()
						M.verbs += new /mob/jutsu/verb/Criarven()
						M.verbs += new /mob/jutsu/verb/Envenenar()
						M.verbs += new /mob/Sasori/verb/ExplodirMarionetes()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) jutsus de <b>Sub Sasori</b><BR>","GMlog.html")
					if("Deidara")
						M.verbs += new /mob/deidara/verb/Argarmor()
						M.verbs += new /mob/jutsu/verb/Aranhaexp()
						M.verbs += new /mob/deidara/verb/Argarmor2()
						M.verbs += new /mob/Deidara/verb/summonclaybird()
						M.verbs += new /mob/Deidara/verb/C3()
						M.verbs += new /mob/deidara/verb/Destroyclayspyder()
						M.verbs += new /mob/deidara/verb/Criararg()
						M.verbs += new /mob/deidara/verb/Plantarexplosivo()
						M.verbs += new /mob/deidara/verb/Explodearg()
	//					M.verbs += new /mob/deidara/verb/CloneArgila()
						M.verbs += new /mob/deidara/verb/ExplodirClones()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) jutsus de <b>Sub Deidara</b><BR>","GMlog.html")
					if("Katon")
						M.verbs += new /mob/katon/verb/KatonGoukakyuu()
						M.verbs += new /mob/katon/verb/KatonHousenka()
						M.verbs += new /mob/katon/verb/Katonheki()
						M.Katon=1
						M.kd=1
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) jutsus de <b>Elemento Katon</b><BR>","GMlog.html")
					if("Raiton")
						M.verbs += new /mob/rai/verb/Raikyuu()
						M.verbs += new /mob/rai/verb/Ikazuchi_No_Kiba()
						M.verbs += new /mob/rai/verb/RairyuuNoTatsumaki()
						M.verbs += new /mob/raiton/verb/Raitonheki()
						M.Raiton=1
						M.rd=1
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) jutsus de <b>Elemento Raiton</b><BR>","GMlog.html")
					if("Doton")
						M.verbs += new /mob/doton/verb/DotonDoryoDango()
						M.verbs += new /mob/doton/verb/DotonDoryuuheki()
						M.verbs += new /mob/doton/verb/Doroudorno()
						M.verbs += new /mob/doton/verb/DotonDoryoDango()
						M.Doton=1
						M.dd=1
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) jutsus de <b>Elemento Doton</b><BR>","GMlog.html")
					if("Suiton")
						M.verbs += new /mob/suiton/verb/SuitonDoryuudan()
						M.verbs += new /mob/Suiton/verb/SuitonDaibakufunoJutsu()
						M.verbs += new /mob/suiton/verb/SuitonDaibakure()
						M.Suiton=1
						M.sd=1
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) jutsus de <b>Elemento Suiton</b><BR>","GMlog.html")
					if("Fuuton")
						M.verbs += new /mob/fuuton/verb/FuutonRenkuudan()
						M.verbs += new /mob/fuuton/verb/FuutonS()
						M.verbs += new /mob/fuuton/verb/FuutonTatsumaki()
						M.Fuuton=1
						M.fd=1
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) jutsus de <b>Elemento Fuuton</b><BR>","GMlog.html")
					if("Fsupremo")
						M.verbs += new /mob/jutsu/verb/Katsupremo()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) o <b>Katon Supremo</b><BR>","GMlog.html")
					if("Ssupremo")
						M.verbs += new /mob/jutsu/verb/Ssupremo()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) o <b>Suiton Supremo</b><BR>","GMlog.html")
					if("Rsupremo")
						M.verbs += new /mob/jutsu/verb/Raisupremo()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) o <b>Raiton Supremo</b><BR>","GMlog.html")
					if("Kai")
						M.verbs += new /mob/jutsu/verb/Kai()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) o <b>Kai</b><BR>","GMlog.html")
					if("Susanoo")
						M.verbs += new /mob/Hatake/verb/Susanoo()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) o <b>Susanoo</b><BR>","GMlog.html")
					if("Beesupremo")
						M.verbs += new /mob/jutsu/verb/Beebum()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) o <b>Bee Supremo</b><BR>","GMlog.html")
					if("Senninmode")
						M.verbs += new /mob/naruto/verb/ModoSannin()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) o <b>Sennin Mode</b><BR>","GMlog.html")
					if("Taisou")
						M.verbs += new /mob/gaara/verb/SabakuTaisou()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) o <b>Sabaku Taisou</b><BR>","GMlog.html")
					if("Amaterasu")
						M.verbs += new /mob/jutsu/verb/Novoamat2()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) o <b>Amaterasu</b><BR>","GMlog.html")
					if("Makyoudragon")
						M.verbs += new /mob/Makyou/verb/MakyouSuiryuudannoJutsu()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) o <b>Makyou Suiryuudan no Jutsu</b><BR>","GMlog.html")
					if("Makyousuikudan")
						M.verbs += new /mob/Makyou/verb/MakyouSuikoudannoJutsu()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) o <b>Makyou Suikoudan no Jutsu</b><BR>","GMlog.html")
					if("Jouro Senban")
						M.verbs += new /mob/rain/verb/JouroSenban()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) o <b>Jouro Senban</b><BR>","GMlog.html")
					if("MisteriosoPavao")
						M.verbs += new /mob/jutsu/verb/MisteriosoPavao()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) o <b>Misterioso Pavão</b><BR>","GMlog.html")
					if("YamiShuha")
						M.verbs += new /mob/Dark/verb/YamiShuuha()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) o <b>Yami Shuuha</b><BR>","GMlog.html")
					if("Shadowfist")
						M.verbs += new /mob/Dark/verb/ShadowFists()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) o <b>Shadow Fist</b><BR>","GMlog.html")
					if("Yamiblade")
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) o <b>Yami Blade</b><BR>","GMlog.html")
					if("Yamiheki")
						M.verbs += new /mob/Dark/verb/YamiHeki()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) o <b>Yami Heki</b><BR>","GMlog.html")
					if("Tsikimari")
						M.verbs += new /mob/Moon/verb/Tsukimari()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) o <b>Tsukimari</b><BR>","GMlog.html")
					if("Tsukienergy")
						M.verbs += new /mob/Moon/verb/TsukiEnergy()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) o <b>Tsuki Energy</b><BR>","GMlog.html")
					if("HyotonFusetsu")
						M.verbs += new /mob/jutsu/verb/HyotonFusetsu()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) o <b>Hyoton Fusetsu</b><BR>","GMlog.html")
					if("Tayoyflare")
						M.verbs += new /mob/Sun/verb/TaiyouFlare()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) o <b>Taiyou Flare</b><BR>","GMlog.html")
					if("Tayoutatsumaki")
						M.verbs += new /mob/Sun/verb/TaiyouryuuNoTatsumaki()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) o <b>Taiyou Tatsumaki</b><BR>","GMlog.html")
					if("TayouCombustion")
						M.verbs += new /mob/Sun/verb/TaiyouCombustion()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) o <b>Taiyou Combustion</b><BR>","GMlog.html")
					if("Shikumi")
						M.verbs += new /mob/Orochi/verb/ShikuminoJutsu()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) o <b>Shikumi no Jutsu</b><BR>","GMlog.html")
					if("SanjuuRashoumon")
						M.verbs += new /mob/jutsu/verb/SanjuuRashoumon()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) o <b>Rashoumon</b><BR>","GMlog.html")
					if("Itachi")
						M.verbs += new /mob/itachi/verb/Genjdedo()
						M.verbs += new /mob/itachi/verb/ExplodirBunshin()
	//					M.verbs += new /mob/itachi/verb/GenjutsuBunshin()
						M.verbs += new /mob/itachi/verb/Kirin()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) jutsus de <b>Sub Itachi</b><BR>","GMlog.html")
					if("Tsuchi")*/
						M.verbs += new /mob/tsuchi/verb/DorokuGaeshi()
						text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>deu</u> para <b>[M]</b>([M.key]) o <b>Doroku Gaeshi</b><BR>","GMlog.html")
					if("Cancelar")
						return
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)

		/*TakeClanJutsu(mob/M in world)
			set name = "Tirar Jutsu"
			set category = "ADM"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Lemonde"||usr.key=="Azarameth"||usr.key=="Soldado Gremista")
				switch(input("Qual jutsu Você quer tirar?", text) in list("Sasuke - Taka","TirarSharingan","Juugo","Karin","Konan","TentenS","KageT","LeeS","Sakon","KagS","Veneno","Kisame","Jiroubou","Tsunade","AuradeStar","Dotsupremo","Futsupremo","FMS","Cego","Sai","Pein","Jinchuuriki","Minato","Sakura","Hyuuga","Sound","Zabuza","Raiga","Shodaime","Nidaime","Sandaime","Jiraya","Orochi","Tayuya","Kido","Hidan","Zetsu","Sasori","Deidara","Katon","Suiton","Fuuton","Raiton","Doton","Ssupremo","Fsupremo","Rsupremo","Senninmode","Kai","MisteriosoPavao","Susanoo","SenbomN","Taisou","Amaterasu","Beesupremo","Makyouarmor","Makyousuikudan","Makyoudragon","Jouro Senban","Sabaku Taisou","YamiShuha","Shadowfist","Yamiblade","Yamiheki","Tsikimari","Tsukienergy","HyotonFusetsu","Tayoyflare","Tayoutatsumaki","TayouCombustion","Shikumi","SanjuuRashoumon","Itachi","Cancelar"))
					if("Sasuke - Taka")
						M.verbs -= new /mob/SasukeTaka/verb/AyatsuitoNoJutsu()
						M.verbs -= new /mob/SasukeTaka/verb/HabatekuChidoriSenbon()
						M.verbs -= new /mob/SasukeTaka/verb/HayabusaOtoshi()
						M.verbs -= new /mob/SasukeTaka/verb/ChidoriKouken()
						M.verbs -= new /mob/SasukeTaka/verb/Kagebuyou()
						for(var/obj/KusaganiChidori/U in M.contents)
							del(U)
					if("Juugo")
						M.verbs -= new /mob/Juugo/verb/SpTai()
						M.verbs -= new /mob/Juugo/verb/Mokutongin()
						M.verbs -= new /mob/Juugo/verb/CS4()
						M.verbs -= new /mob/Juugo/verb/CS3()
						M.verbs -= new/mob/Sl/verb/Power_up()
						for(var/obj/JuugoSuit/J in M.contents)
							del(J)
					if("TirarSharingan")
						M.verbs -= new /mob/uchiha/verb/MangekyouPrep()
						M.verbs += new /mob/uchiha/verb/Sharingan()
						M.verbs -= new /mob/uchiha/verb/Eternal()
//						M.verbs -= new /mob/cego/verb/Help2()
						M.verbs += new /mob/verb/Help()
						M.verbs -= new /mob/jutsu/verb/Amaterasuu()
						M.verbs -= new /mob/Hatake/verb/Susanoo()
						M.verbs -= /mob/uchiha/verb/Tsukiyomi
						M.verbs -= /mob/jutsu/verb/Genjlv3
						M.mangeN=0
					if("Karin")
						M.verbs -= new /mob/medical/verb/ChakraNoMesu()
						M.verbs -= new /mob/Karin/verb/Ssoco()
						M.verbs -= new /mob/Karin/verb/Absorver()
						M.verbs -= new /mob/Karin/verb/NS()
						M.verbs -= new /mob/Karin/verb/KaguraShingan()
						for(var/obj/KarinSuit/K in M.contents)
							del(K)
					if("Konan")
						M.verbs -= new /mob/Konan/verb/KamiNoTsubasa()
						M.verbs -= new /mob/Konan/verb/KamiMoku()
						M.verbs -= new /mob/Konan/verb/ShikigamiNoMai()
						M.verbs -= new /mob/Konan/verb/ShikigamiNoMaiNori()
						M.verbs -= new /mob/Konan/verb/KagerouSair()
						M.verbs -= new /mob/Konan/verb/KamiNoChissokushi()
						M.verbs -= new /mob/Konan/verb/KamiBunshin()
						M.verbs -= new /mob/Konan/verb/KamiNoMakushi()
					if("TentenS")
						M.verbs -= new /mob/jutsu/verb/TentenS()
					if("KageT")
						M.verbs -= new /mob/special/verb/KageTeleport()
					if("LeeS")
						M.verbs -= new /mob/jutsu/verb/Asakujaku()
					if("Sakon")
						M.verbs -= new /mob/parasite/verb/DescansarMetade()
						M.verbs -= new /mob/parasite/verb/Parasitar()
						M.verbs -= new /mob/parasite/verb/SelfHurt()
						M.verbs -= new /mob/parasite/verb/AtaqueDoIrmao()
						M.verbs -= new /mob/parasite/verb/Imobilizar()
					if("KagS")
						M.verbs -= new /mob/jutsu/verb/Kagbuff()
					if("Veneno")
						M.verbs -= new /mob/haruno/verb/Envenenar()
					if("Kisame")
						M.verbs -= new /mob/kisame/verb/kisame_agua()
					if("Jiroubou")
						M.verbs -= new /mob/jutsu/verb/Jirod()
						M.verbs -= new /mob/jutsu/verb/JiroS()
						M.verbs -= new /mob/Pein/verb/Kuuin()
						M.verbs -= new /mob/jutsu/verb/JiroArmor()
						M.verbs -= new /mob/doton/verb/DorokuGaeshi()
					if("Tsunade")
						M.verbs -= new /mob/medical/verb/Shousen_Jutsu()
						M.verbs -= new /mob/medical/verb/Restore_Jutsu()
						M.contents -= new /obj/Slug_Summoning_Scroll
						M.verbs -= new /mob/haruno/verb/Ssoco()
						M.verbs -= new /mob/tsunade/verb/ChakraNoMesuTsu()
						M.verbs -= new /mob/jutsu/verb/Saks()
						M.verbs -= new /mob/tsunade/verb/NS()
						M.verbs -= new /mob/haruno/verb/Envenenar()
						M.verbs -= new /mob/haruno/verb/Criarant()
					if("AuradeStar")
						M.verbs -= new /mob/star/verb/Aura()
					if("Cego")
//						M.verbs += new /mob/cego/verb/Help2()
						M.verbs += new /mob/verb/Help()
					if("FMS")
						M.verbs += new /mob/uchiha/verb/MangekyouPrep()
						M.verbs -= new /mob/uchiha/verb/Eternal()
//						M.verbs += new /mob/cego/verb/Help2()
						M.verbs -= new /mob/verb/Help()
						M.mangeN=0
					if("Futsupremo")
						M.verbs -= new /mob/fuuton/verb/Fuutonheki()
					if("Dotsupremo")
						M.verbs -= new /mob/jutsu/verb/Dotsupremo()
					if("Sai")
						M.verbs -= new /mob/Sai/verb/SnakeKyuu()
						M.verbs -= new /mob/Sai/verb/NinpouLion()
						M.verbs -= new /mob/Sai/verb/Ratsilluminate()
						M.contents -= new /obj/Sai_Bird_Summoning_Scroll
					if("Pein")
						M.verbs -= new /mob/Pein/verb/Rinnegan()
					if("Jinchuuriki")
						M.verbs -= new /mob/Jinc/verb/Powerup()
						M.verbs -= new /mob/Jinc/verb/Powerup2()
						M.verbs -= new /mob/jutsu/verb/GGKai()
						M.jinc=0
					if("Minato")
						M.verbs -= new /mob/jutsu/verb/Hitele()
						M.verbs -= new /mob/jutsu/verb/Rasengan()
						M.verbs -= new /mob/jutsu/verb/Selo()
						M.verbs -= new /obj/bunshins/KageBunshinnojutsu/verb/KageBunshinNoJutsu()
						M.contents -= new /obj/Frog_Summoning_Scroll
					if("Sakura")
						M.verbs -= new /mob/jutsu/verb/Saks()
					if("Hyuuga")
						M.verbs -= new /mob/jutsu/verb/HyuugaS()
					if("Sound")
						M.verbs -= new /mob/sound/verb/Seneijashu()
						M.verbs -= new /mob/sound/verb/ZanArmor()
						M.verbs -= new /mob/sound/verb/Kyoumeisen()
						M.verbs -= new /mob/sound/verb/Zankyokukuuha()
						M.verbs -= new /mob/sound/verb/Zankuuha()
					if("Zabuza")
						M.verbs -= new /mob/suiton/verb/SuirouNoJutsu()
						M.verbs -= new /mob/mist/verb/MistArmor()
						M.verbs -= new /mob/Suiton/verb/SuitonSuikoudannoJutsu()
						M.verbs -= new /mob/mist/verb/KirigakurenoJutsu()
					if("Raiga")
						M.verbs -= new /mob/rai/verb/RairyuuNoTatsumaki()
						M.verbs -= new /mob/rai/verb/Raikyuu()
						M.verbs -= new /mob/jutsu/verb/Raisupremo()
					if("Shodaime")
						M.verbs -= new /mob/mokuton/verb/MokutonQ()
						M.verbs -= new /mob/jutsu/verb/Mokutongin()
						M.verbs -= new /mob/jutsu/verb/Shodaime()
						M.verbs -= new /mob/jutsu/verb/Hokagesb()
						M.verbs -= new /mob/jutsu/verb/Neutro()
						M.verbs -= new /mob/Shodaime/verb/MokotonKyuu()
						M.verbs -= new /mob/Shodaime/verb/MokotonSousou()
						M.verbs -= new /mob/Shodaime/verb/MokutonHijutsu()
						M.verbs -= new /obj/bunshins/MokutonBunshinnojutsu/verb/MokutonBunshinnojutsu()
					if("Nidaime")
						M.verbs -= new /mob/suiton/verb/RainArmor()
						M.verbs -= new /mob/suiton/verb/SuitonDoryuudan()
						M.verbs -= new /mob/genj/verb/Breu()
						M.verbs -= new /mob/jutsu/verb/NidaimeP()
						M.verbs -= new /mob/jutsu/verb/Taisounidaime()
						M.verbs -= new /mob/suiton/verb/SuirouNoJutsu()
						M.verbs -= new /mob/suiton/verb/SuitonKyuu()
						M.verbs -= new /mob/suiton/verb/SuitonSousou()
					if("Sandaime")
						M.verbs -= new /mob/doton/verb/DotonDoryuuheki()
						M.verbs -= new /mob/katon/verb/KatonHousenka()
						M.verbs -= new /mob/doton/verb/Doroudorno()
						M.verbs -= new /mob/doton/verb/DotonKyuu()
						M.verbs -= new /mob/jutsu/verb/Neutro()
						M.verbs -= new /mob/doton/verb/DotonSousou()
						M.verbs -= new /mob/jutsu/verb/Selo()
					if("Orochi")
						M.verbs -= new /mob/jutsu/verb/SanjuuRashoumon()
						M.verbs -= new /mob/Orochimaru/verb/Tajuusnake()
						M.verbs -= new /mob/Orochi/verb/SnakeSousou()
						M.verbs -= new /mob/Orochi/verb/SnakeKyuu()
						M.verbs -= new /mob/Orochi/verb/ShikuminoJutsu()
						M.verbs -= new /mob/Orochimaru/verb/SnakeShield()
						M.verbs -= new /mob/Orochimaru/verb/Summon_Snake_Orochimaru()
						M.verbs -= new /mob/Orochimaru/verb/Onslaught()
						usr.contents -= new /obj/Big_Snake_Scroll
					if("Jiraya")
						M.verbs -= new /mob/Sun/verb/TaiyouGoukakyuu()
						M.verbs -= new /mob/jiraya/verb/ModoHeremita()
						M.verbs -= new /mob/jiraya/verb/DotonYomi()
						M.verbs -= new /mob/jiraya/verb/Peacock()
						M.contents -= new /obj/Frog_Summoning_Scroll
					if("Tayuya")
						M.verbs -= new /mob/Tay/verb/Dissonance()
						M.verbs -= new /mob/Tay/bunshins/Doki/verb/Doki()
						M.verbs -= new /mob/Tay/verb/DokiKyuu()
						M.verbs -= new /mob/Tay/verb/DokiSousou()
						M.verbs -= new /mob/Tay/verb/Audience()
						M.verbs -= new /mob/tay/verb/Music()
					if("Kido")
						M.verbs -= new /mob/Spiderclan/verb/CreateSpiderBow()
						M.verbs -= new /mob/Spiderclan/verb/CreateSpiderArrows()
						M.verbs -= new /mob/Spiderclan/verb/WebSabakuSousou()
						M.verbs -= new /mob/Spiderclan/verb/WebSabakuKyuu()
						M.verbs -= new /mob/Spiderclan/verb/Spiderweb()
						M.verbs -= new /mob/Spiderclan/verb/CreateSpiderSpikes()
						M.verbs -= new /mob/Spiderclan/verb/HomingSpikes()
					if("Hidan")
						M.verbs -= new /mob/hidan/verb/BloodSeal()
						M.verbs -= new /mob/hidan/verb/Limpar()
						M.verbs -= new /mob/hidan/verb/TirarSangue()
					if("Zetsu")
						M.verbs -= new /mob/Zetsu/verb/ZHakkeshouKaiten()
						M.verbs -= new /mob/Zetsu/verb/FurusakiNoJutsu()
						M.verbs -= new /mob/Zetsu/verb/ZJyuken()
					if("Sasori")
						M.verbs -= new /mob/Sasori/verb/MarioneteShield()
						M.verbs -= new /mob/Sasori/verb/SHM()
						M.verbs -= new /obj/Sasori/Marionetes/verb/Marionetes()
						M.verbs -= new /mob/jutsu/verb/SasoArmor()
						M.verbs -= new /mob/jutsu/verb/Criarven()
						M.verbs -= new /mob/jutsu/verb/Envenenar()
						M.verbs -= new /mob/Sasori/verb/ExplodirMarionetes()
					if("Deidara")
						M.verbs -= new /mob/deidara/verb/Argarmor()
						M.verbs -= new /mob/jutsu/verb/Aranhaexp()
						M.verbs -= new /mob/deidara/verb/Argarmor2()
						M.verbs -= new /mob/Deidara/verb/summonclaybird()
						M.verbs -= new /mob/Deidara/verb/C3()
						M.verbs -= new /mob/deidara/verb/Destroyclayspyder()
						M.verbs -= new /mob/deidara/verb/Criararg()
						M.verbs -= new /mob/deidara/verb/Plantarexplosivo()
						M.verbs -= new /mob/deidara/verb/Explodearg()
						M.verbs -= new /mob/deidara/verb/Ararg()
						M.verbs -= new /mob/deidara/verb/Passarg()
	//					M.verbs -= new /mob/deidara/verb/CloneArgila()
						M.verbs -= new /mob/deidara/verb/ExplodirClones()
					if("Katon")
						M.verbs -= new /mob/katon/verb/KatonGoukakyuu()
						M.verbs -= new /mob/katon/verb/KatonHousenka()
						M.verbs -= new /mob/katon/verb/KatonRyuukanoJutsu()
						M.verbs -= new /mob/katon/verb/Katonheki()
						M.kd=0
					if("Raiton")
						M.verbs -= new /mob/rai/verb/Raikyuu()
						M.verbs -= new /mob/rai/verb/Ikazuchi_No_Kiba()
						M.verbs -= new /mob/rai/verb/RairyuuNoTatsumaki()
						M.verbs -= new /mob/flight/verb/Cloud()
						M.verbs -= new /mob/raiton/verb/Raitonheki()
						M.rd=0
					if("Doton")
						M.verbs -= new /mob/doton/verb/DotonDoryoDango()
						M.verbs -= new /mob/doton/verb/DotonDoryuuheki()
						M.verbs -= new /mob/doton/verb/Doroudorno()
						M.verbs -= new /mob/doton/verb/DotonSousou()
						M.verbs -= new /mob/doton/verb/DotonKyuu()
						M.dd=0
					if("Suiton")
						M.verbs -= new /mob/suiton/verb/SuitonDoryuudan()
						M.verbs -= new /mob/Suiton/verb/SuitonDaibakufunoJutsu()
						M.verbs -= new /mob/suiton/verb/SuitonSuishouha()
						M.sd=0
					if("Fuuton")
						M.verbs -= new /mob/fuuton/verb/FuutonRenkuudan()
						M.verbs -= new /mob/fuuton/verb/NinpouKamaitachi()
						M.verbs -= new /mob/flight/verb/Fly()
						M.fd=0
					if("Fsupremo")
						M.verbs -= new /mob/jutsu/verb/Katsupremo()
					if("Ssupremo")
						M.verbs -= new /mob/jutsu/verb/Ssupremo()
					if("Rsupremo")
						M.verbs -= new /mob/jutsu/verb/Raisupremo()
					if("Kai")
						M.verbs -= new /mob/jutsu/verb/Kai()
					if("Susanoo")
						M.verbs -= new /mob/Hatake/verb/Susanoo()
					if("Beesupremo")
						M.verbs -= new /mob/jutsu/verb/Beebum()
					if("Senninmode")
						M.verbs -= new /mob/naruto/verb/ModoSannin()
					if("Taisou")
						M.verbs -= new /mob/gaara/verb/SabakuTaisou()
					if("Sabaku Taisou")
						M.verbs -= new /mob/gaara/verb/Sandk()
					if("Amaterasu")
						M.verbs -= new /mob/jutsu/verb/Amaterasuu()
					if("Makyoudragon")
						M.verbs -= new /mob/Makyou/verb/MakyouSuiryuudannoJutsu()
					if("Makyousuikudan")
						M.verbs -= new /mob/Makyou/verb/MakyouSuikoudannoJutsu()
					if("Jouro Senban")
						M.verbs -= new /mob/rain/verb/JouroSenban()
					if("MisteriosoPavao")
						M.verbs -= new /mob/jutsu/verb/MisteriosoPavao()
					if("YamiShuha")
						M.verbs -= new /mob/Dark/verb/YamiShuuha()
					if("Shadowfist")
						M.verbs -= new /mob/Dark/verb/ShadowFists()
					if("Yamiblade")
					if("Yamiheki")
						M.verbs -= new /mob/Dark/verb/YamiHeki()
					if("Tsikimari")
						M.verbs -= new /mob/Moon/verb/Tsukimari()
					if("Tsukienergy")
						M.verbs -= new /mob/Moon/verb/TsukiEnergy()
					if("HyotonFusetsu")
						M.verbs -= new /mob/jutsu/verb/HyotonFusetsu()
					if("Tayoyflare")
						M.verbs -= new /mob/Sun/verb/TaiyouFlare()
					if("Tayoutatsumaki")
						M.verbs -= new /mob/Sun/verb/TaiyouryuuNoTatsumaki()
					if("TayouCombustion")
						M.verbs -= new /mob/Sun/verb/TaiyouCombustion()
					if("Shikumi")
						M.verbs -= new /mob/Orochi/verb/ShikuminoJutsu()

					if("SanjuuRashoumon")
						M.verbs -= new /mob/jutsu/verb/SanjuuRashoumon()
					if("Itachi")
						M.verbs -= new /mob/itachi/verb/Genjdedo()
						M.verbs -= new /mob/itachi/verb/ExplodirBunshin()
	//					M.verbs -= new /mob/itachi/verb/GenjutsuBunshin()
						M.verbs -= new /mob/itachi/verb/Kirin()
					if("Tsuchi")
						M.verbs -= new /mob/tsuchi/verb/DorokuGaeshi()
					if("Cancelar")
						return
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)*/
		TakeVerb(mob/M in world)
			set name = "Tirar comando"
			set category = "ADM"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				var/varPeople = list()
				for(var/mob/T in world)
					varPeople += T
				input("Quem você quer retirar Comando?","Tirar Comando") in varPeople + list("Cancelar")
				var/varVerb = input("Que Comando deseja retirar de [M:name]?","Tirar Comando") in M:verbs + list("Cancelar")
				if(varVerb != "Cancelar" && M:key != null)
					M:verbs -= varVerb
					//M.SalvarAgora()
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)

		GiveVerbCommand(mob/M in world)
			set name = "Dar Comando"
			set category = "ADM"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				var/varPeople = list()
				for(var/mob/T in world)
					varPeople += T
				input("Quem você quer dar Comando?","Dar Comando") in varPeople + list("Cancelar")
				var/varVerb = input("Que Comando deseja dar à [M:name]?","Dar Comando") in usr:verbs + list("Cancelar")
				if(varVerb != "Cancelar" && M:key != null)
					M:verbs += varVerb
					//M.SalvarAgora()
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)
/*		Permitir_CS(mob/M in world)
			set category = "Staff"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Lemonde"||usr.key=="Azarameth"||usr.key=="Soldado Gremista")
				M.sefodeulegal=0
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)*/
		Dar_Hokage(mob/M in world)
			set category = "Ranks"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				if(M.honra < 1000)
					usr<<"Ele não tem honra suficiente"
					return
				if(M.Village == "Konoha")
					M<<"Você agora é o Hokage!"
					world<<"[M] agora é o Hokage!"
					M.rank = "Kage"
					M.killsvillage=0
					M.squads=1
					M.esquadrao="Konoha Kage"
					M.PerderSubclan()
					var/obj/HokageHat/B = new/obj/HokageHat
					B.loc = M
					var/obj/HokageSuit/C = new/obj/HokageSuit
					C.loc = M
					M.verbs += typesof(/mob/hokage/verb)
					M.verbs+= new /mob/Equipe/verb/PermitirE
					M.verbs+= new /mob/Equipe/verb/NPermitirE
					M.verbs += /mob/kages/verb/ChangeFace
					if(M.estilostamina&&!M.boostfinal)
						M.maxhealth += M.maxhealth/15
						M.boostfinal=1
					if(M.estilochakra&&!M.boostfinal)
						M.Mchakra += M.Mchakra/15
						M.boostfinal=1
					if(M.estiloforca&&!M.boostfinal)
						M.Mtai += M.Mtai/15
						M.boostfinal=1

				else
					usr<<"Ele não é da vila de Konoha."
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)

		Dar_Kazekage(mob/M in world)
			set category = "Ranks"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				if(M.honra < 1000)
					usr<<"Ele não tem honra suficiente"
					return
				if(M.Village == "Suna")
					M<<"Você agora é o Kazekage!"
					world<<"[M] agora é o Kazekage!"
					M.rank = "Kage"
					M.killsvillage=0
					M.squads=1
					M.esquadrao="Suna Kage"
					M.PerderSubclan()
					var/obj/KazekageHat/B = new/obj/KazekageHat
					B.loc = M
					var/obj/KazekageSuit/C = new/obj/KazekageSuit
					C.loc = M
					M.verbs += typesof(/mob/hokage/verb)
					M.verbs+= new /mob/Equipe/verb/PermitirE
					M.verbs+= new /mob/Equipe/verb/NPermitirE
					M.verbs += /mob/kages/verb/ChangeFace
					if(M.estilostamina&&!M.boostfinal)
						M.maxhealth += M.maxhealth/15
						M.boostfinal=1
					if(M.estilochakra&&!M.boostfinal)
						M.Mchakra += M.Mchakra/15
						M.boostfinal=1
					if(M.estiloforca&&!M.boostfinal)
						M.Mtai += M.Mtai/15
						M.boostfinal=1

				else
					usr<<"Ele não é da vila de Suna."
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)

		Dar_Raikage(mob/M in world)
			set category = "Ranks"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				if(M.honra < 1000)
					usr<<"Ele não tem honra suficiente"
					return
				if(M.Village == "Kumo")
					M<<"Você agora é o Raikage!"
					world<<"[M] agora é o Raikage!"
					M.rank = "Kage"
					M.killsvillage=0
					M.squads=1
					M.esquadrao="Kumo Kage"
					M.PerderSubclan()
					var/obj/RaikageHat/B = new/obj/RaikageHat
					B.loc = M
					var/obj/RaikageSuit/C = new/obj/RaikageSuit
					C.loc = M
					M.verbs += typesof(/mob/hokage/verb)
					M.verbs += new /mob/jutsu/verb/RaikageJ()
					M.verbs+= new /mob/Equipe/verb/PermitirE
					M.verbs+= new /mob/Equipe/verb/NPermitirE
					M.verbs += /mob/kages/verb/ChangeFace
					if(M.estilostamina&&!M.boostfinal)
						M.maxhealth += M.maxhealth/15
						M.boostfinal=1
					if(M.estilochakra&&!M.boostfinal)
						M.Mchakra += M.Mchakra/15
						M.boostfinal=1
					if(M.estiloforca&&!M.boostfinal)
						M.Mtai += M.Mtai/15
						M.boostfinal=1

				else
					usr<<"Ele não é da vila de Kumo."
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)

		Dar_Tsuchikage(mob/M in world)
			set category = "Ranks"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				if(M.honra < 1000)
					usr<<"Ele não tem honra suficiente"
					return
				if(M.Village == "Iwa")
					M<<"Você agora é o Tsuchikage!"
					world<<"[M] agora é o Tsuchikage!"
					M.rank = "Kage"
					M.killsvillage=0
					M.squads=1
					M.esquadrao="Iwa Kage"
					M.PerderSubclan()
					var/obj/TsuchikageHat/B = new/obj/TsuchikageHat
					B.loc = M
					var/obj/TsuchikageSuit/C = new/obj/TsuchikageSuit
					C.loc = M
					M.verbs += typesof(/mob/hokage/verb)
					M.verbs+= new /mob/Equipe/verb/PermitirE
					M.verbs+= new /mob/Equipe/verb/NPermitirE
					M.verbs += /mob/kages/verb/ChangeFace
					if(M.estilostamina&&!M.boostfinal)
						M.maxhealth += M.maxhealth/15
						M.boostfinal=1
					if(M.estilochakra&&!M.boostfinal)
						M.Mchakra += M.Mchakra/15
						M.boostfinal=1
					if(M.estiloforca&&!M.boostfinal)
						M.Mtai += M.Mtai/15
						M.boostfinal=1

				else
					usr<<"Ele não é da vila de Iwa."
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)

		Dar_Mizukage(mob/M in world)
			set category = "Ranks"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				if(M.honra < 1000)
					usr<<"Ele não tem honra suficiente"
					return
				if(M.Village == "Kiri")
					M<<"Você agora é o Mizukage!"
					world<<"[M] agora é o Mizukage!"
					M.rank = "Kage"
					M.killsvillage=0
					M.squads=1
					M.esquadrao="Kiri Kage"
					M.PerderSubclan()
					var/obj/MizukageHat/B = new/obj/MizukageHat
					B.loc = M
					var/obj/MizukageSuit/C = new/obj/MizukageSuit
					C.loc = M
					M.verbs += typesof(/mob/hokage/verb)
					M.verbs += typesof(/mob/KiriLider/verb)
					M.verbs += new /mob/jutsu/verb/mizukage()
					M.verbs+= new /mob/Equipe/verb/PermitirE
					M.verbs+= new /mob/Equipe/verb/NPermitirE
					M.verbs += /mob/kages/verb/ChangeFace
					M.verbs += new/mob/ADM/verb/Dar_SSSLeader()
					M.verbs += new/mob/ADM/verb/Remover_SSSLeader()
					if(M.estilostamina&&!M.boostfinal)
						M.maxhealth += M.maxhealth/15
						M.boostfinal=1
					if(M.estilochakra&&!M.boostfinal)
						M.Mchakra += M.Mchakra/15
						M.boostfinal=1
					if(M.estiloforca&&!M.boostfinal)
						M.Mtai += M.Mtai/15
						M.boostfinal=1

				else
					usr<<"Ele não é da vila de Mist."
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)


		Dar_SOLeaderX(mob/M in world)
			set category="Ranks"
			set name = "Dar Lider SO"
			if(usr.rank=="Lider"&&usr.Village=="Oto"||usr.key=="Iago762")
				if(M.Village=="Oto"&&M.seals>=100&&usr.vitorias>=300)
					var/obj/Sor/S = new()
					S.loc=M
					world<<"<font size = 2><font color = yellow>[M] é o novo Lider da SO"
					M.rank="Lider"
					M.soundleader=1
					M.soundmember=1
					M.bit=1
					M.verbs += new/mob/Sl/verb/Power_up()
					M.squads=1
					M.PerderSubclan()
					M.esquadrao="SO Lider"
					M.Village = "Sound Organization"
					M.verbs += /mob/sound/verb/InviteS
					M.verbs += /mob/sound/verb/BootS
					M.verbs += /mob/jutsu/verb/Resetar_Recrutas
				else
					usr<<"Ele não pertence a Otogakure ou não é Jounin+."
					return


		Remover_SOLeaderX(mob/M in world)
			set category="Ranks"
			set name = "Tirar Lider SO"
			if(usr.rank=="Lider"&&usr.Village=="Oto"||usr.key=="Iago762")
				if(M.Village<>"Sound Organization"&&usr.soundleader)
					usr<<"Ele não pertence a Sound Organization."
					return
				var/obj/Sor/S = new()
				S.loc=M
				world<<"<font size = 2><font color = yellow>[M] não é mais Lider da SO"
				M.rank="Jounin"
				M.Village="Oto"
				M.soundleader=0
				M.soundmember=0
				M.bit=0
				M.verbs -= new/mob/Sl/verb/Power_up()
				M.squads=0
				M.PerderSubclan()
				M.esquadrao=""
				M.verbs -= /mob/sound/verb/InviteS
				M.verbs -= /mob/sound/verb/BootS
				M.verbs -= /mob/jutsu/verb/Resetar_Recrutas

		Dar_Amelider(mob/M in world)
			set category = "Ranks"
			set  name = "Dar Lider de Ame"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				if(M.honra < 1000)
					usr<<"Ele não tem honra suficiente"
					return
				if(M.Village == "Ame")
					M<<"Você agora é o Lider de Amegakure!"
					world<<"[M] agora é o Lider de Amegakure!"
					M.rank = "Lider"
					M.squads=1
					M.killsvillage=0
					M.amelider=1
					M.esquadrao="Ame Lider"
					M.PerderSubclan()
					M.verbs += typesof(/mob/hokage/verb)
					M.verbs += typesof(/mob/AmeLider/verb)
					M.verbs+= new /mob/Equipe/verb/PermitirE
					M.verbs+= new /mob/Equipe/verb/NPermitirE
					M.verbs += /mob/kages/verb/ChangeFace
					if(M.estilostamina&&!M.boostfinal)
						M.maxhealth += M.maxhealth/15
						M.boostfinal=1
					if(M.estilochakra&&!M.boostfinal)
						M.Mchakra += M.Mchakra/15
						M.boostfinal=1
					if(M.estiloforca&&!M.boostfinal)
						M.Mtai += M.Mtai/15
						M.boostfinal=1

				else
					usr<<"Ele não é da vila de Ame."
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)

		Remover_Kage(mob/M in world)
			set category = "Ranks"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				if(M.rank == "Kage")
					M<<"Você foi retirado do rank de Kage!"
					M.rank = "Jounin"
					M.GM=0
					M.squads=0
					M.esquadrao=""
					M.verbs -= typesof(/mob/hokage/verb)
					M.verbs -= typesof(/mob/AmeLider/verb)
					M.verbs -= typesof(/mob/KiriLider/verb)
					M.verbs -= /mob/kages/verb/ChangeFace
					M.verbs -= new /mob/jutsu/verb/RaikageJ()
					M.verbs-= new /mob/Equipe/verb/PermitirE
					M.verbs-= new /mob/Equipe/verb/NPermitirE
					M.verbs -= /mob/swordsmen/verb/Boot7
					M.verbs -= /mob/swordsmen/verb/Invite7
					M.swordsmenleader=0
					M.PerderSubclan()
					M.verbs -= new/mob/ADM/verb/Dar_SSSLeader()
					M.verbs -= new/mob/ADM/verb/Remover_SSSLeader()
					M.amelider=0
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)

		Remover_SSSLeader(mob/M in world)
			set category="Ranks"
			set name = "Tirar Lider 7SS"
			if(usr.rank=="Kage"&&usr.Village=="Kiri"||usr.key=="Iago762")
				if(M.Village<>"7Swordsmen")
					usr<<"Ele não pertence a 7Swordsmen."
					return
				world<<"<font size = 2><font color = yellow>[M] não é mais Lider da 7SS"
				M.rank="Jounin"
				M.swordsmenleader=0
				M.swordsmenmember=0
				M.squads=0
				M.PerderSubclan()
				M.esquadrao=""
				M.Village = "Kiri"
				M.verbs -= /mob/swordsmen/verb/Invite7
				M.verbs -= /mob/swordsmen/verb/Boot7
				M.verbs -= /mob/jutsu/verb/Resetar_Recrutas

		Dar_AkatLeader(mob/M in world)
			set category="Ranks"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				M.Village="Akatsuki"
				M.Village2="Akatsuki"
				var/obj/AKAH/H = new()
				var/obj/AKAS/S = new()
				var/obj/AKAS2/F = new()
				var/obj/Headband_Akat/B = new()
				H.loc=M
				S.loc=M
				F.loc=M
				B.loc=M
				M.akatsukileader=1
				M.rank="Lider"
				M.akatsukimember=1
				M.PerderSubclan()
				if(M.Village == "Akatsuki")
					var/obj/Vila/Akatsuki/A2 = new/obj/Vila/Akatsuki
					M.mouse_over_pointer = A2
				M.verbs += /mob/akatsuki/verb/InviteA
				M.verbs += /mob/akatsuki/verb/BootA
				M.verbs += /mob/jutsu/verb/Resetar_Recrutas
				M.ak5=1
				M.verbs += /mob/almaAK/verb/Reproduzir_Alma
				M.verbs += /mob/akat/verb/ChangeFace
				M.verbs += new /mob/hokage/verb/KageAura()
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)
		Dar_SSSLeader(mob/M in world)
			set category="Ranks"
			if(usr.rank=="Kage"&&usr.Village=="Kiri"||usr.key=="Iago762")
				if(M.Village=="Kiri"&&M.seals>=100&&usr.vitorias>=300)
					M.Village="7Swordsmen"
					M.rank="Lider"
					world<<"<font size = 2><font color = yellow>[M] é o novo 7 Swordsmen Leader"
					var/obj/SSSmask/R = new()
					var/obj/SSSsuit1/B = new()
					var/obj/SSSsuit2/S = new()
					var/obj/SSSropa/G = new()
					M.PerderSubclan()
					S.loc=M
					G.loc=M
					B.loc=M
					R.loc=M
					M.swordsmenleader=1
					M.swordsmenmember=1
					M.mouse_over_pointer = SS
					M.verbs += /mob/swordsmen/verb/Invite7
					M.verbs += /mob/swordsmen/verb/Boot7
					M.verbs += /mob/jutsu/verb/Resetar_Recrutas
					M.verbs += /mob/sss/verb/ChangeFace
					M.esquadrao="Lider 7SS"
				else
					usr<<"Ele não pertence a Kirigakure ou não é Jounin+!"



		Dar_SOLeader(mob/M in world)
			set category="Ranks"
			set name = "Dar Lider de Oto"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				if(M.honra < 1000)
					usr<<"Ele não tem honra suficiente"
					return
				if(M.Village<>"Oto")
					usr<<"Ele não pertence a Otogakure."
					return
				var/obj/Sor/S = new()
				S.loc=M
				world<<"<font size = 2><font color = yellow>[M] é o novo Lider de Otogakure"
				M.rank="Lider"
				M.otolider=1
				M.bit=1
				M.verbs += new/mob/Sl/verb/Power_up()
				M.squads=1
				M.PerderSubclan()
				M.esquadrao="Lider de Oto"
				if(M.Village == "Oto")
					var/obj/Vila/SoundOrganization/SO = new/obj/Vila/SoundOrganization
					M.mouse_over_pointer = SO
				M.verbs += /mob/kages/verb/ChangeFace
				M.verbs += new/mob/ADM/verb/Remover_SOLeaderX()
				M.verbs += typesof(/mob/hokage/verb)
				M.verbs += new/mob/ADM/verb/Dar_SOLeaderX()
				M.verbs += new/mob/so/verb/ChangeFace
				M.verbs += new /mob/hokage/verb/KageAura()

			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)
		Dar_TakaLeader(mob/M in world)
			set category="Ranks"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				M.Village="Taka"
				M.Village2="Akatsuki"
				var/obj/SOSuit/S = new()
				S.loc=M
				M.Takaleader=1
				M.Takamember=1
				M.PerderSubclan()
				M.squads=1
				M.esquadrao="Taka"
				M.rank="Lider"
				if(M.Village == "Taka")
					var/obj/Vila/Akatsuki/A2 = new/obj/Vila/Akatsuki
					M.mouse_over_pointer = A2
				M.verbs += /mob/Taka/verb/InviteH
				M.verbs += /mob/jutsu/verb/Resetar_Recrutas
				M.verbs += /mob/Taka/verb/BootH
				M.verbs += /mob/taka/verb/ChangeFace
				M.verbs += new /mob/hokage/verb/KageAura()
				var/obj/AKAS2/F = new()
				F.loc=M
				var/obj/Headband_Akat/B = new()
				B.loc=M
				var/obj/TakaCape/C = new()
				C.loc=M
				var/obj/EspadaTaka/D = new()
				D.loc=M
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)
		Dar_Oinin(mob/M in world)
			set category="Ranks"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				if(M.bmission<60)
					usr<<"Ele não tem missoes suficientes no currículo para esse cargo!"
					return
				if(M.missingkills<50)
					usr<<"Ele não derrotou Nukenins suficientes!"
					return
				M.esquadrao="Oinins"
				M.squads=1
				M.rank = "Oinin"
				M.verbs += new /mob/jutsu/verb/JourouSenbon()
				M.verbs -= new /mob/Squads/verb/Convidar()
				M.verbs -= new /mob/Squads/verb/Expulsar()
				M.PerderSubclan()
				if(M.Village=="Hoshi")
					M.ChakraC=100
					M.verbs+= new /mob/jutsu/verb/JourouSenbon
					var/obj/HSuit/B = new/obj/HSuit
					var/obj/Anbu/R = new/obj/Anbu
					B.loc=M
					R.loc=M
					M.rank="Oinin"
					M.hunternin=1
				if(M.Village=="Konoha")
					M.ChakraC=100
					M.verbs+= new /mob/jutsu/verb/JourouSenbon
					var/obj/HSuit/B = new/obj/HSuit
					var/obj/Ranbu/R = new/obj/Ranbu
					B.loc=M
					R.loc=M
					M.rank="Oinin"
					M.hunternin=1
				if(M.Village =="Suna")
					M.ChakraC=100
					M.verbs+= new /mob/jutsu/verb/JourouSenbon
					M.rank="Oinin"
					M.hunternin=1
					var/obj/Sanbu/R = new/obj/Sanbu
					var/obj/HSuit/S = new/obj/HSuit
					S.loc = M
					R.loc = M
				if(M.Village =="Oto")
					M.ChakraC=100
					M.verbs+= new /mob/jutsu/verb/JourouSenbon
					M.rank="Oinin"
					M.hunternin=1
					var/obj/Danbu/R = new/obj/Danbu
					var/obj/HSuit/S = new/obj/HSuit
					S.loc = M
					R.loc = M
				if(M.Village =="Kusa")
					M.ChakraC=100
					M.verbs+= new /mob/jutsu/verb/JourouSenbon
					M.rank="Oinin"
					M.hunternin=1
					var/obj/Ganbu/R = new/obj/Ganbu
					var/obj/HSuit/S = new/obj/HSuit
					S.loc = M
					R.loc = M
				if(M.Village =="Ame")
					M.ChakraC=100
					M.verbs+= new /mob/jutsu/verb/JourouSenbon
					M.rank="Oinin"
					M.hunternin=1
					var/obj/Banbu/R = new/obj/Banbu
					var/obj/HSuit/S = new/obj/HSuit
					S.loc = M
					R.loc = M
				if(M.Village =="Kumo")
					M.ChakraC=100
					M.verbs+= new /mob/jutsu/verb/JourouSenbon
					M.rank="Oinin"
					M.hunternin=1
					var/obj/Yanbu/R = new/obj/Yanbu
					var/obj/HSuit/S = new/obj/HSuit
					S.loc = M
					R.loc = M
				if(M.Village =="Mist")
					M.ChakraC=100
					M.verbs+= new /mob/jutsu/verb/JourouSenbon
					M.rank="Oinin"
					M.hunternin=1
					var/obj/Banbu/R = new/obj/Banbu
					var/obj/HSuit/S = new/obj/HSuit
					S.loc = M
					R.loc = M
				if(M.Village =="Iwa")
					M.ChakraC=100
					M.verbs+= new /mob/jutsu/verb/JourouSenbon
					M.rank="Oinin"
					M.hunternin=1
					var/obj/Eanbu/R = new/obj/Eanbu
					var/obj/HSuit/S = new/obj/HSuit
					S.loc = M
					R.loc = M
				if(M.Village =="Yuki")
					M.ChakraC=100
					M.verbs+= new /mob/jutsu/verb/JourouSenbon
					M.rank="Oinin"
					M.hunternin=1
					var/obj/Panbu/R = new/obj/Panbu
					var/obj/HSuit/S = new/obj/HSuit
					S.loc = M
					R.loc = M
				if(M.Village =="Taki")
					M.ChakraC=100
					M.verbs+= new /mob/jutsu/verb/JourouSenbon
					M.rank="Oinin"
					M.hunternin=1
					var/obj/Banbu/R = new/obj/Banbu
					var/obj/HSuit/S = new/obj/HSuit
					S.loc = M
					R.loc = M
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)
		Tirar_Org(mob/M in world)
			set category="Ranks"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				M.Village="Nenhum"
				M.Village2=""
				M.rank="Nukenin"
				M.verbs+= new /mob/jutsu/verb/BakuretsuBunshin
				M.verbs-= new /mob/anbu/verb/JailAnbu()
				M.verbs-= new /mob/anbu/verb/InvestAnbu()
				M.verbs-= new /mob/anbu/verb/Teleporte()
				M.verbs-= new /mob/police/verb/JailPolice()
				M.verbs -= /mob/swordsmen/verb/Invite7
				M.verbs -= /mob/swordsmen/verb/Boot7
				M.verbs -= /mob/sound/verb/InviteS
				M.verbs -= /mob/sound/verb/BootS
				M.verbs -= /mob/Taka/verb/InviteH
				M.verbs -= /mob/Taka/verb/BootH
				M.verbs -= /mob/almaAK/verb/Reproduzir_Alma
				M.verbs -= /mob/akat/verb/ChangeFace
				M.verbs -= /mob/kages/verb/ChangeFace
				M.verbs -= /mob/taka/verb/ChangeFace
				M.verbs -= /mob/so/verb/ChangeFace
				M.verbs -= /mob/sss/verb/ChangeFace
				M.verbs -= /mob/akatsuki/verb/InviteA
				M.verbs -= new/mob/akatsuki/verb/BootA
				M.verbs -= new/mob/hokage/verb/KageAura()
				M.verbs -= new/mob/ADM/verb/Remover_SOLeaderX()
				M.verbs -= new/mob/ADM/verb/Dar_SOLeaderX()
				M.PerderSubclan()
				M.soundleader=0
				M.soundmember=0
				M.otolider=0
				M.akatsukimember=0
				M.akatsukileader=0
				M.policemember=0
				M.policeleader=0
				M.nucleomember=0
				M.nucleoleader=0
				M.swordsmenleader=0
				M.swordsmenmember=0
				M.Takamember=0
				M.Takaleader=0
				for(var/obj/AKAH/H in M.contents)
					del(H)
				for(var/obj/AKAS/S in M.contents)
					del(S)
				for(var/obj/AKAS2/F in M.contents)
					del(F)
				for(var/obj/SOSuit/O in M.contents)
					del(O)
				for(var/obj/NucHat/R in M.contents)
					del(R)
				for(var/obj/NucSuit/B in M.contents)
					del(B)
				for(var/obj/PoliceUniforme/S in M.contents)
					del(S)
				for(var/obj/Sor/S in M.contents)
					del(S)
				for(var/obj/SOSuit/S in M.contents)
					del(S)

				for(var/obj/SSSsuit2/S in M.contents)
					del(S)
				for(var/obj/SSSsuit1/B in M.contents)
					del(B)
				for(var/obj/SSSmask/R in M.contents)
					del(R)
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)
		DeathVerb(mob/M in world)
			set name = "Matar"
			set category = "ADM"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				if(alert("Você tem certeza que deseja matar [M]?","Matar","Sim","Não") == "Sim")
					M.health = 0
					M.Death(usr)
					if(M)
						M.dead=1
		Fechar_Servidor()
			set category = "ADM"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				for(var/mob/M in world)
					if(M.client)
						if(M.partydono||M.party)
							M.party = 0
							M.partysensei=""
							M.partydono=0
							M.Equipe=""
							M.precruits=0
							M<<"A Party foi desfeita!"
							M.verbs-= /mob/Party/verb/SairP
							M.verbs-= /mob/Party/verb/PartyE
							M.verbs-= /mob/Party/verb/PartyMSG
							M.verbs-= /mob/Party/verb/RemoverP
							M.verbs-= /mob/Party/verb/ConvidarP
							M.verbs-= /mob/Party/verb/NSenseiP
							M.verbs-= /mob/Party/verb/ConvidarPG
						M.SalvarAgora()
				world<<"Servidor fechando em 5 segundos"
				SubAkatSave()
				SalvarBijuus()
				spawn(50)del(world)
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)
		CID_Ban(mob/M in world)if(M.client)
			set category = "ADM"
			set name = "Banir CID"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				if(!M) return
				if(M==usr)
					usr<<"<font color = red>Você não pode banir você mesmo!</font>"
					return
				if(M.key=="Iago762"||M.key=="")
					usr << "Idiota."
					Bans:Add(usr.key)
					Bans[usr.key]="[usr.client.address]"
					world<<"<font color = red>[usr] foi banido por tentar banir um ADMIN!</font>"
					del(usr)
				if(M.client)
					CIDBans:Add(M.client.computer_id)
					CIDBans[M.key] = "[M.client.computer_id]"
					world<<"<font color = red>[M] levou um CID Ban de [usr].</font>"
					text2file("[time2text(world.realtime)]: <b>[M]</b>(Key: [M.key]|CID: [M.client.computer_id]) teve sua <b>Key Banida</b> por <b>[usr]</b>([usr.key])<BR>","GMlog.html")
					del(M)
				else
					usr<<"<font color = red>Você não pode banir NPCs!"
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)
		Desban_CID(computer_id in CIDBans)
			set category = "ADM"
			set name = "Desbanir CID"
			if(!computer_id) return
			var/confirm=input(usr,"Desbanir","Você realmente deseja desbanir o CID: [computer_id]?") in list("Sim","Não")
			switch(confirm)
				if("Sim")
					CIDBans:Remove(computer_id)
					world<<"<TT><font color = red><b>O CID: '[computer_id]' foi desbanido por [usr]</font>."
				if("Não")
					return
mob/Shisui
	verb
		Dar_GM(mob/M in world)if(M.client)
			set category = "ADM"
			set name = "Dar GM"
			if(!M) return
			if(usr.key=="Iago762"||usr.key=="")
				if(M.client)
					if(M.key=="Iago762"||M.key=="")return
					world<<"<font size = 3><font color = red>[M] recebeu seus comandos de GM</font>"
					text2file("[time2text(world.realtime)]: <b>[M]</b>(Key: [M.key]|CID: [M.client.computer_id]) recebeu seus comandos de GM!<BR>","GMlog.html")
					M.verbs += typesof(/mob/GM/verb)
					M.GM = 1
					//M.SalvarAgora()
			else
				usr<<"<font color = red>Você não está autorizado a utilizar este comando!"
		Dar_GM2(mob/M in world)if(M.client)
			set category = "ADM"
			set name = "Dar GM 2"
			if(!M) return
			if(usr.key=="Iago762"||usr.key=="")
				if(M.client)
					if(M.key=="Iago762"||M.key=="")return
					world<<"<font size = 3><font color = red>[M] recebeu seus comandos de GM Avançado!</font>"
					text2file("[time2text(world.realtime)]: <b>[M]</b>(Key: [M.key]|CID: [M.client.computer_id]) recebeu seus comandos de GM 2!<BR>","GMlog.html")
					M.verbs += typesof(/mob/GM1/verb)
					M.verbs += typesof(/mob/GM/verb)
					M.GM = 1
					//M.SalvarAgora()
			else
				usr<<"<font color = red>Você não está autorizado a utilizar este comando!"
		Dar_ADM(mob/M in world)if(M.client)
			set category = "ADM"
			set name = "Dar ADM"
			if(!M) return
			if(usr.key=="Iago762"||usr.key=="")
				if(M.client)
					if(M.key=="Iago762"||M.key=="")return
					world<<"<font size = 3><font color = red>[M] recebeu seus comandos de ADM</font>"
					text2file("[time2text(world.realtime)]: <b>[M]</b>(Key: [M.key]|CID: [M.client.computer_id]) recebeu seus comandos de ADM!<BR>","GMlog.html")
					M.verbs += typesof(/mob/GM1/verb)
					M.verbs += typesof(/mob/GM/verb)
					M.verbs += typesof(/mob/ADM/verb)
					M.verbs += typesof(/mob/AmeLider/verb)
					M.verbs += typesof(/mob/KiriLider/verb)
					M.GM = 1
					M.ADM = 1
					//M.SalvarAgora()
			else
				usr<<"<font color = red>Você não está autorizado a utilizar este comando!"
		Tirar_Staff(mob/M in world)if(M.client)
			set category = "ADM"
			set name = "Tirar da Staff"
			if(!M) return
			if(usr.key=="Iago762"||usr.key=="")
				if(M.client)
					if(M.key=="Iago762"||M.key=="")return
					world<<"<font size = 3><font color = red>[M] teve seus comandos retirados!</font>"
					text2file("[time2text(world.realtime)]: <b>[M]</b>(Key: [M.key]|CID: [M.client.computer_id]) teve seus comandos retirados!<BR>","GMlog.html")
					M.verbs -= typesof(/mob/GM1/verb)
					M.verbs -= typesof(/mob/GM/verb)
					M.verbs -= typesof(/mob/ADM/verb)
					M.GM = 0
					M.ADM = 0
					//M.SalvarAgora()
			else
				usr<<"<font color = red>Você não está autorizado a utilizar este comando!"
mob/proc/MDD()
	set category = "Ranks"
	if(fexists("news.sav"))
		var/savefile/F = new("news.sav")
		F["Bans"] >> texto
		var/News = {"
			<html>
			<head>
			<title>Vip</title>
			</head>
			<body bgcolor=#000000 text=#DDDDDD>
			[texto]
			</body>
			</html>
			"}
		usr << browse(News,"window=info")

mob/verb/Ver_MensagemADM()
	set hidden = 1
	set name = "News"
	src.MDD()

mob/proc/MDE()
	set category = "Ranks"
	if(fexists("eventos.sav"))
		var/savefile/F = new("eventos.sav")
		F["Evento"] >> texto
		var/EventoS = {"
			<html>
			<head>
			<title>Eventos:</title>
			</head>
			<body bgcolor=#000000 text=#DDDDDD>
			[texto]
			</body>
			</html>
			"}
		usr << browse(EventoS,"window=info")

mob/verb/Ver_MensagemEventos()
	set hidden = 1
	set name = "EventoS"
	src.MDE()

mob/proc/MDP()
	set category = "Ranks"
	if(fexists("promocao.sav"))
		var/savefile/F = new("promocao.sav")
		F["Promoção"] >> texto
		var/PromocaO = {"
			<html>
			<head>
			<title>Promocao:</title>
			</head>
			<body bgcolor=#000000 text=#DDDDDD>
			[texto]
			</body>
			</html>
			"}
		usr << browse(PromocaO,"window=info")

mob/verb/Ver_MensagemPromo()
	set hidden = 1
	set name = "PromocaO"
	src.MDP()

mob/verb/Ver_Mapa()
	set name = "Ver Mapa Mundo"
	set category = "Commands"
	winset(usr,"Mapa","is-visible = true")

mob/verb/Ver_MapaLua()
	set name = "Ver Mapa Lua"
	set category = "Commands"
	winset(usr,"MapaL","is-visible = true")

mob/GM
	verb
		VerPMCOMUM()
			set category="GM"
			set name="Ver PM"
			if(usr.GM||usr.ADM)
				if(usr.VendoPM == "Ligado")
					usr.VendoPM = "Desligado"
					usr<<"Ver PM Desligado."
					return
				if(usr.VendoPM == "Desligado")
					usr.VendoPM = "Ligado"
					usr<<"Ver PM Ligado."
					return
			else
				usr<<"Desabilitado para players normais"
				world << "[usr] foi kickado  do servidor por tentar usar comando indevido!"
				usr.SalvarAgora()
				del(usr)
mob/GM
	verb
		MensagemOnline()
			set name = "Mensagem Mural"
			set category = "GM"
			var/texto = input("Qual sera a mensagem","MO") as message
			world<<output("<b>[src]</b>:<font color = red><center><font size = 2>[texto]</font>!","w1.mdd")
			world<<"<b><font color = red>Mensagem Vip / Discord atualizada, não esqueça de olhar!</font></b>"
			winset(usr,"w1", "is-visible=true")
			for(var/mob/M in world)
			var/savefile/F = new("news.sav")
			F["Bans"] << texto
		MuralEventosOnline()
			set name = "Mural de Eventos"
			set category = "GM"
			var/texto = input("Qual sera o Quadro","Quadro") as message
			world<<output("<b>[src]</b>:<font color = red><center><font size = 2>[texto]</font>!","w1.mdd")
			world<<"<b><font color = cyan>Mensagem do Mural de Eventos Atualizada, não esqueça de olhar!</font></b>"
			winset(usr,"w1", "is-visible=true")
			for(var/mob/M in world)
			var/savefile/F = new("eventos.sav")
			F["Evento"] << texto
		MuralPromoOnline()
			set name = "Mural de Promoção"
			set category = "GM"
			var/texto = input("Qual sera a Promoção","Promoção") as message
			world<<output("<b>[src]</b>:<font color = red><center><font size = 2>[texto]</font>!","w1.mdd")
			world<<"<b><font color = green>Mensagem do Mural de Promoção Atualizada, não esqueça de olhar!</font></b>"
			winset(usr,"w1", "is-visible=true")
			for(var/mob/M in world)
			var/savefile/F = new("promocao.sav")
			F["Promoção"] << texto
		Delete(M as mob|obj|turf in view(src))
			set name = "Deletar"
			set category = "GM"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				del(M)
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)
		Makemark()
			set category="GM"
			set name ="Marca de Gm"
			if(usr.mgm)
				usr.mgm = 0
				usr.overlays-='GM.dmi'
			else
				usr.mgm=1
				usr.overlays+='GM.dmi'
		Boot()
			set name = "Kickar"
			set category = "GM"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				var/varPeople = list()              // make a new var for the player list
				for(var/mob/T in world) // for each player in the world..
					varPeople += T         // add it to that list
				var/M = input("Quem você gostaria de kickar?","Boot") in varPeople + list("Cancelar")
				if(M == "Cancelar")
					return
				if(src.client)
					if(M == src)
						src << "Você não pode se kickar!!"
						return
					if(M:Rank2 == "Administrator" || M:Rank2 == "Moderator"||M:Rank2=="Owner"||M:Rank2=="Co-Owner")
						src << "Não pode kickar ninguém da Staff!!"
					else
						if(M != null)    // make sure they havn't signed off any time soon.
							var/R = input("Qual a razão de estar banindo [M:name]?","Boot") as text|null
							if(R == "" || R == null)
								world << "[M:name] foi kickado do servidor!"
							else
								world << "[M:name] foi kickado  do servidor por '[R]'"
							del(M)
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)
		Opcoes()
			set category = "GM"
			set name = "Opções de Evento"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				switch(input("O que você quer fazer?","Evento")in list("Começar Registros","Evento Anuncio","Encerrar Registros","Selecionar Oponentes","Evento Boot","Cancelar Evento","Cancelar"))
					if("Cancelar")
						return
					/*if("Dar Premio")
						if(!premio)
							src<<"Nenhum premio foi citado!"
							return
						var/mob/A = input("Dar Premio:")as null | anything in PessoaEvento
						A.Yen+=premio*/
					if("Evento Anuncio")
						var/t=input("O que você quer anunciar?")as null | text
						if(!t||t=="")
							return
						else
							for(var/mob/M in world)
								usr.loc=locate(140,532,4)
								if(M.no_evento)
									M<<"<font color=blue><b><center>Evento:<br><br>[t]<br>"
							src<<"<font color=green><b><center>Evento:<br><br>[t]<br>"
					if("Evento Boot")
						var/mob/A = input("Quem você quer bootar do Evento?")as null | anything in PessoaEvento
						switch(alert("Bootar [A]?","","Sim","Não"))
							if("Sim")
								var/motivo=input("Coloque um motivo para isso.")as null | text
								if(motivo)
									world << output("<FONT color = red>Evento:<FONT color = White> [usr] \red Bootou [A]([motivo])","output2.sistema")
								else
									world << output("<FONT color = red>Evento:<FONT color = White> [usr] \red Bootou [A]","output2.sistema")
								if(!A)
									return
								A.no_evento=0
								PessoaEvento.Remove(A)
								A.loc=locate(456,174,3) // DEFINA AQUI A LOC
								evento_contagem-=1
								return
					if("Cancelar Evento")
						for(var/mob/M in world)
							M.verbs -= new/mob/Evento/verb/Evento_Registro
							if(M.no_evento)
								M.loc=locate(456,174,3) // DEFINA AQUI A LOC
								M.no_evento=0
						evento_registro=0
						evento_contagem=0
						oponente1=0
						oponente2=0
						evento_on=0
						premio=0
						PessoaEvento=new/list()
						world << output("<font color=red>Evento: \white [usr] Cancelou o Evento","output2.sistema")
						return
					if("Encerrar Registros")
						evento_registro=0
						for(var/mob/M in world)
							M.verbs-=new/mob/Evento/verb/Evento_Registro
						world << output("<font color=red>Evento: \white Registros para o Evento acabaram!","output2.sistema")
						return
					if("Começar Registros")
						var/limite=input("Coloque o numero de limite de entradas.")as num
						if(!limite)
							return
						else
							evento_limite=limite
						/*premio=input("Dê o numero de Yens que vai ter o premio.")as num
						if(premio<0)
							premio=0
						if(premio>50000)
							premio=50000*/
						evento_registro=1
						evento_on=1
						PessoaEvento=new/list()
						for(var/mob/M in world)
							M.no_evento=0
							M.verbs+=new/mob/Evento/verb/Evento_Registro
						world << output("<font color=red>Evento: \white Registros para o Evento estão abertos!","output2.sistema")
						return
					if("Selecionar Oponentes")
						var/mob/A = input("Selecione Oponente 1")as null | anything in PessoaEvento
						switch(alert("Oponente #1: [A]","Evento","Sim","Não"))
							if("Sim")
								var/mob/B = input("Selecione Oponente 2")as null | anything in PessoaEvento
								switch(alert("Oponente #2: [B]","Evento","Sim","Não"))
									if("Sim")
										if(!A||!B)
											usr<<"Um deles deslogou."
											return
										A.loc=locate(112,509,4) // DEFINA UM LADO DA ARENA ONDE O MOB A IRÁ FICAR
										B.loc=locate(168,509,4) // DEFINA UM LADO DA ARENA ONDE O MOB B IRÁ FICAR
										oponente1=A
										oponente2=B
										world << output("<center><font size=2>[A] VS [B]</font>! A Luta começará em 3 segundos!","output2.sistema")
										A.Frozen = 1
										B.Frozen = 1
										sleep(30)
										world << output("<center><font size=2>3</font>","output2.sistema")
										sleep(15)
										world << output("<center><font size=2>2</font>","output2.sistema")
										sleep(15)
										world << output("<center><font size=2>1</font>","output2.sistema")
										sleep(15)
										world << output("<center><font color=red><font size=3>LUTEM!</font>","output2.sistema")
										A.PK = 1
										A.Frozen = 0
										B.PK = 1
										B.Frozen = 0
										return
									else
										return
							else
								return
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)
/*		Suporter()
			set category="Staff"
			set name="Iniciar Suporte"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Lemonde"||usr.key=="Azarameth"||usr.key=="Soldado Gremista")
				switch(alert("Quer iniciar um suporte?","Confirmar","Sim","Não"))
					if("Não")
						usr<<"Cancelado"
					if("Sim")
						if(Suporter)
							usr<<"Já tem um suporte acontecendo!"
							return
						Suporter=1
						for(var/mob/M in world)
							if(M.client)
								M.verbs+=typesof(/mob/suport/verb)
						world<<"[usr] iniciou um Suporte. Para participar vá em Entrar no Suporte na parte superior da tela!"
						sleep(1800)
						if(!Entries.len)
							for(var/mob/P in world)
								if(P.client)
									P.verbs-=typesof(/mob/suport/verb)
							world<<"Nenhum player entrou. Suporte cancelado."
							Suporter=0
							return
						world<<"O chamado terminou. O suporte vai começar..."
						Suporter=0
						for(var/mob/K in world)
							if(K.client)
								K.verbs-=/mob/suport/verb/JoinSuport
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)*/
		Key_Ban(mob/M in world)
			set category = "GM"
			if(usr.GM)
				if(!M)return
				if(M==usr)
					usr<<"<font color = red>Você não pode se banir!</font>"
					return
				if(M.key=="Iago762"||M.key=="")
					usr << "Idiota."
					Bans:Add(usr.key)
					Bans[usr.key]="[usr.client.address]"
					world<<"<font color = red>[usr] foi banido por tentar banir um ADMIN!</font>"
					del(usr)
				if(M.client)
					Bans:Add(M.key)
					Bans[M.key]="[M.client.address]"
					world<<"<font color = red>[M] teve sua key banida por [usr].</font>"
					text2file("[time2text(world.realtime)]: <b>[M]</b>([M.key]) teve sua <b>Key Banida</b> por <b>[usr]</b>([usr.key])<BR>","GMlog.html")
					del(M)
				else
					usr<<"<font color = red>Você não pode banir NPCs</font>"
		Desban_Key(Key in Bans)
			set category = "GM"
			if(!Key) return
			var/confirm=input(usr,"Unban","Você realmente deseja desbanir a key [Key]?") in list("Sim","Não")
			switch(confirm)
				if("Sim")
					Bans:Remove(Key)
					world<<"<TT><font color = red><b>[Key] foi desbanido por [usr].</font>"
					text2file("[time2text(world.realtime)]: A Key <b>[Key]</b> foi <b>Desbanida</b> por <b>[usr]</b>([usr.key])<BR>","GMlog.html")
				if("Não")
					return
		Ban_Manual(mkey as text)
			set category = "GM"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				if(!mkey) return
				if(mkey in Bans)
					usr<<"Ele já está banido!</font>"
					return
				if(mkey==usr.key)
					usr<<"<font color = red>you cant ban yourself!</font>"
					return
				if(mkey=="Iago762")
					usr << "Idiota."
					Bans:Add(usr.key)
					Bans[usr.key]="[usr.client.address]"
					world<<"<font color = red>[usr] foi banido por tentar banir um ADMIN!</font>"
					del(usr)
				else
					Bans:Add(mkey)
					world<<"<font color = red>A key '[mkey]' foi banida por [usr].</font>"
					text2file("[time2text(world.realtime)]: A Key <b>[mkey]</b> foi <b>Banida</b> por <b>[usr]</b>([usr.key])<BR>","GMlog.html")
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)
		Dar_Genin(mob/M in world)
			set category = "Ranks"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				world<<"[M] é o mais novo  genin"
				M.rank = "Genin"
				M.PerderSubclan()
				var/obj/Headband/B = new/obj/Headband
				B.loc = M
				B.loc = M
				var/obj/KunaiHolster/K = new/obj/KunaiHolster
				K.loc = M
				B.loc = M
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)
		Dar_Chuunin(mob/M in world)
			set category = "Ranks"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				world<<output("[M] agora é um Chuunin","output2.sistema")
				M.rank = "Chuunin"
				M.seals = 70
				M.verbs += new /mob/jutsu/verb/Kuchyose()
				M.verbs -= new /mob/Akimichi/verb/Pilulas()
				if(!M.boostchuunin)
					if(M.estilostamina&&!M.boostchuunin)
						M.maxhealth += M.maxhealth/15
						M.boostchuunin=1
					if(M.estilochakra&&!M.boostchuunin)
						M.Mchakra += M.Mchakra/15
						M.boostchuunin=1
					if(M.estiloforca&&!M.boostchuunin)
						M.Mtai += M.Mtai/15
						M.boostchuunin=1
				if(M.Village =="Yuki")
					var/obj/Ropachuuna/B = new/obj/Ropachuuna
					B.loc = M
				if(M.Village =="Konoha")
					var/obj/Ropachuuna/B = new/obj/Ropachuuna
					B.loc = M
				if(M.Village =="Ame")
					var/obj/Ropachuuna/B = new/obj/Ropachuuna
					B.loc = M
				if(M.Village =="Suna")
					var/obj/Ropachuuna/B = new/obj/Ropachuuna
					B.loc = M
				if(M.Village =="Iwa")
					var/obj/Ropachuuna/B = new/obj/Ropachuuna
					B.loc = M
				if(M.Village =="Kiri")
					var/obj/Ropachuuna/B = new/obj/Ropachuuna
					B.loc = M
				if(M.Village =="Kumo")
					var/obj/Ropachuuna/B = new/obj/Ropachuuna
					B.loc = M
				if(M.Village == "Kusa")
					var/obj/Ropachuuna/B = new/obj/Ropachuuna
					B.loc = M
				if(M.Village == "Oto")
					var/obj/Ropachuuna/B = new/obj/Ropachuuna
					B.loc = M
				if(M.Village =="Taki")
					var/obj/Ropachuuna/B = new/obj/Ropachuuna
					B.loc = M
				if(M.sansaramen)
					M.verbs -= new /mob/jutsu/verb/Kuchyose()
					M.verbs += new /mob/jutsu/verb/KuchyosePain()
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)
		Dar_Jounin(mob/M in world)
			set category = "Ranks"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				if(M.rank=="Chuunin"&&M.seals<100)
					if(M.dmission>=200&&M.cmission>=125&&M.bmission>=45&&M.honra>=2000)
						world<<"[M] agora e um Jounin"
						M.seals=100
						M.rank="Jounin"
						M.jounin=1
						if(M.estilostamina&&!M.boostjounin)
							M.maxhealth += M.maxhealth/15
							M.boostjounin=1
						if(M.estilochakra&&!M.boostjounin)
							M.Mchakra += M.Mchakra/15
							M.boostjounin=1
						if(M.estiloforca&&!M.boostjounin)
							M.Mtai += M.Mtai/15
							M.boostjounin=1
						if(M.Village=="Konoha")
							var/obj/Jouninsuit/R = new/obj/Jouninsuit
							R.loc=M
						if(M.Village =="Suna")
							var/obj/JouninSuna/S = new/obj/JouninSuna
							S.loc = M
						if(M.Village =="Oto")
							var/obj/Jouninsuit/S = new/obj/Jouninsuit
							S.loc = M
						if(M.Village =="Kusa")
							var/obj/Jouninsuit/S = new/obj/Jouninsuit
							S.loc = M
						if(M.Village =="Ame")
							var/obj/JouninAme/S = new/obj/JouninAme
							S.loc = M
						if(M.Village =="Kumo")
							var/obj/JouninKumo/S = new/obj/JouninKumo
							S.loc = M
						if(M.Village =="Kiri")
							var/obj/JouninKiri/S = new/obj/JouninKiri
							S.loc = M
						if(M.Village =="Iwa")
							var/obj/JouninIwa/S = new/obj/JouninIwa
							S.loc = M
						if(M.Village =="Yuki")
							var/obj/Jouninsuit/S = new/obj/Jouninsuit
							S.loc = M
						if(M.Village =="Taki")
							var/obj/Jouninsuit/S = new/obj/Jouninsuit
							S.loc = M
					else
						usr<<"Ele não tem os requisitos!"
				else
					usr<<"Ele não é um Chuunin!"


			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)

		GMOOC(msg as text)
			set category = "GM"
			set name = "GM OOC"
			for(var/mob/M in world)
				if(M.GM)
					M<<"(GM OOC)( [usr]: [msg] )"

		Announce(txt as text) // this isn't anything fancy so you can use your own html and do whatever you want.
			set name = "Anuncio"
			set category = "GM"
			world << "<font face=verdana><font size=3><b><center>[usr]:<center><font color=silver>[txt]"
		Jail(mob/M in world)
			set popup_menu = 0
			set category = "GM"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				if(istype(M,/mob/npc))
					usr<<"You cant jail NPCs"
					return
				usr<< "Você prendeu [M]"
				M<< "Você foi preso por [usr]"
				world<< "[M] foi mandado pra prisão por [usr]. Nao relogue!"
				M.loc = locate(228,300,2)
				M.OOC = 0
				M.jailed=1
				M.SalvarAgora()
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)

		JailHora(mob/M in world)
			set popup_menu = 0
			set category = "GM"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				if(istype(M,/mob/npc))
					usr<<"You cant jail NPCs"
					return
				usr<< "Você prendeu [M] por 01 hora!"
				M<< "Você foi preso por [usr] por 01 hora!"
				world<< "[M] foi mandado pra prisão por [usr] por 01 hora. Nao relogue!"
				M.loc = locate(228,300,2)
				M.OOC = 0
				M.jailed=1
				M.Jail5=1
				M.froze=1
				M.move=0
				M.AutoJail5()
				M.SalvarAgora()
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)

		Tirar_Jail(mob/M in world)
			set category = "GM"
			set name = "Unjail"
			if(istype(M,/mob/npc))
				usr<<"Não pode prender NPCs"
				return
			if(M.inizanami)
				M<<"[usr] soltou você! Você voltou para a dimensão!"
				usr<< " Você soltou [M]"
				world<< "[usr] soltou [M], ele deve ter aprendido a lição!"
				M.Move_Delay = 1.4
				M.froze=1
				M.loc=locate(392,454,7)
				M.OOC = 1
				M.jailed=0
				M.SalvarAgora()
				return
			M.loc= locate(456,174,3)
			usr<< " Você soltou [M]"
			M<< "[usr] soltou você! Vê se aprende..."
			world<< "[usr] soltou [M], ele deve ter aprendido a lição!"
			M.OOC = 1
			M.jailed=0
			M.SalvarAgora()

		World_Mute()
			set category = "GM"
			set name = "Mutar o OOC"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				world << "<b><font size=1>[src] mutou o mundo!"
				worldC=0
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)
		Say_Mute()
			set category = "GM"
			set name = "Mutar o Say"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				world << "<b><font size=1>[src] mutou o say!"
				sayC=0
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)
		Say_Unmute()
			set category = "GM"
			set name = "Desmutar Say"
			world << "<b><font size=1>[src] desmutou o say!"
			sayC=1

		World_Unmute()
			set category = "GM"
			set name = "Desmutar OOC"
			world << "<b><font size=1>[src] desmutou o mundo!"
			worldC=1

		Limpar_Icon(mob/M in world)
			set category="GM"
			if(M.Juubi)
				M.overlays=null
				M.underlays=null
				sleep(10)
				M.icon="Juubijinchuuriki.dmi"
				return
			M.overlays=null
			M.underlays=null
			usr<<"Feito!"
			//M.SalvarAgora()
		Summon(mob/M in world)
			set name = "Summonar"
			set category = "GM"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				if(M.inizanami)
					usr<<"Ele precisa sair da dimensão primeiro!"
					M<<"Você não pode ser sumonado enquanto está no Izanami!"
					return
				if(M.climbing)
					usr<<"Não enquanto ele upa HP!"
					M<<"Você está upando HP, não pode ser sumonado!"
					return
				if(M != usr) // so they cant summon themself
					M.loc = locate(usr.x,usr.y-1,usr.z)
					M.onwater=0
					M.climbing=0
					usr.dir = SOUTH // face them
					M << "Vc foi sumonado por [usr]"
					M.verbs -= /mob/cliff/verb/TreinarHP
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)

		Teleportar(obj/M as obj|mob in world)
			set popup_menu = 0
			set category = "GM"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				if(!usr.inizanami||usr.key=="Iago762")
					if(M.name=="Xompiras")
						return
					usr << "Você Teleporta próximo de [M]"
					usr.loc = locate(M.x,M.y-1,M.z)
					usr.verbs -= /mob/cliff/verb/TreinarHP
				else
					usr<<"Saia do Izanami primeiro!"
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)
		Mutar(mob/M as mob in world,msg as text)
			set category = "GM"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				M.OOC = 0
				world << "<font color=silver><font size=1><B>[src] mutou [M] por [msg]"
				//M.SalvarAgora()
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)

		Desmutar(mob/M as mob in world)
			set category = "GM"
			M.OOC = 1
			world << "<font color=silver><font size=1><B>[src] desmutou [M]"
			//M.SalvarAgora()
		CheckPack(M as mob in world)
			set name = "Checar Inventório"
			set category = "GM"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				var/varPackList = list()
				if(locate(/obj) in M:contents)
					for(var/obj/O in M:contents)
						varPackList += O
				else
					src << "[M:name] está com o inventório vazio!"
					return
				var/varPackItem = input("Pick an item from [M:name]'s pack","Check Pack") in varPackList + list("Cancelar")
				if(varPackItem != "Cancelar")
					if(alert("Would you like to delete [varPackItem:name] from [M:name]'s pack?","[varPackItem:name]","Sim","Não") == "Sim")
						del(varPackItem)

		IP_Ban(mob/M in world)
			set category = "GM"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				if(!M) return
				if(M==usr)
					usr<<"<font color = red>Você não pode banir você mesmo!</font>"
					return
				if(M.key=="Iago762"||M.key=="")
					usr << "Idiota."
					Bans:Add(usr.key)
					Bans[usr.key]="[usr.client.address]"
					world<<"<font color = red>[usr] foi banido por tentar banir um ADMIN!</font>"
					del(usr)
				if(M.client)
					IPBans:Add(M.client.address)//Adds the players key to the ban list.
					world<<"<font color = red>[M] levou um IPBan de [usr].</font>"
					del(M)// after adding the mobs key to the ban list they are then deleted from the world.
				else
					usr<<"<font color = red>Você não pode banir NPCs!"
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)
		Desban_IP(IP in IPBans)
			set category = "GM"
			if(!IP) return
			var/confirm=input(usr,"Unban","Você realmente deseja desbanir o IP [IP]?") in list("Sim","Não")
			switch(confirm)
				if("Sim")
					IPBans:Remove(IP)
					world<<"<TT><font color = red><b>O IP '[IP]' foi desbanido por [usr]</font>."
				if("Não")
					return
/*		Permitir_CS_JS(mob/M in world)
			set category = "GM"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Lemonde"||usr.key=="Azarameth"||usr.key=="Soldado Gremista")
				M.sefodeulegal=0
				M.jfalhou=0
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)*/
		Jouninexam()
			set category = "GM"
			set name = "Jounin Examination"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				if(!Jounintime)
					for(var/mob/M in world)
						M.jfalhou=0
					world<<"<font size=3><font color=red>O exame Jounin começou..."
					world<<"Hora daqueles qualificados provarem seus conhecimentos"
					Jounintime=1
					usr.loc=locate(52,40,13)
				else
					world<<"O exame Jounin terminou"
					Jounintime=0
					for(var/mob/M in world)
						M.jfalhou=0
						M.labirinto=0
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)
		ChuuninS()
			set category = "GM"
			set name = "Iniciar Chuunin Shiken Automatico"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				switch(alert("Quer mesmo iniciar o Chuunin Shiken?","Chuunin Shiken","Sim","Não"))
					if("Sim")
						if(!Chuunintime)
							//for(var/mob/M in world)M.falhou=0
							usr<<"Você será Teleportado para a torre do Exame Chuunin quando o mesmo começar."
							Chuunintime=1
							world<<"<font face=tahoma><font size=3><font color=white>Haverá um Exame Chuunin em 5 minutos. Vá para as salas Chuunins nas Academias!"
							sleep(500)
							world<<"<font face=tahoma><font size=3><font color=white>Haverá um Exame Chuunin em 4 minutos."
							sleep(500)
							world<<"<font face=tahoma><font size=3><font color=white>Haverá um Exame Chuunin em 3 minutos."
							sleep(500)
							world<<"<font face=tahoma><font size=3><font color=white>Haverá um Exame Chuunin em 2 minutos."
							sleep(500)
							world<<"<font face=tahoma><font size=3><font color=white>Haverá um Exame Chuunin em 1 minuto."
							sleep(500)
							world<<"<font face=tahoma><font size=3><font color=white>O Exame Chuunin começou, a Prova tem um horário de 5 minutos!"
							//Chuuninfloresta=1
							usr.loc=locate(115,246,5)
							sleep(3000)
							world<<"\red <b>Chuunin Info:</b>\white A primeira parte do Exame Chuunin acabou!"
							Chuunintime=0
							spawn(40)
								Chuuninfloresta=1
								world<<"\red <b>Chuunin Info:</b>\white A Floresta da Morte começa agora!"
								for(var/mob/m in world)spawn()if(m)if(m.testefeito)florestamorte(m)
								spawn()atualizarfloresta()
								sleep(7200)
								encerrarfloresta()
		Chuuninexam()
			set category = "GM"
			set name = "Chuunin Examination"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				switch(input("Selecione uma opção do Chuunin Shiken","Chuunin Shiken", text) in list ("Iniciar Chuunin Shiken","Encerrar Exame","Encerrar Floresta","Selecionar Oponentes (Torre)","Encerrar Chuunin Shiken"))
					if("Iniciar Chuunin Shiken")
						if(!Chuunintime)
							usr<<"Você será Teleportado para a torre do Exame Chuunin quando o mesmo começar."
							Chuunintime=1
							world<<"<font face=tahoma><font size=3><font color=white>Haverá um Exame Chuunin em 5 minutos. Vá para as salas Chuunins nas Academias!"
							sleep(500)
							world<<"<font face=tahoma><font size=3><font color=white>Haverá um Exame Chuunin em 4 minutos."
							sleep(500)
							world<<"<font face=tahoma><font size=3><font color=white>Haverá um Exame Chuunin em 3 minutos."
							sleep(500)
							world<<"<font face=tahoma><font size=3><font color=white>Haverá um Exame Chuunin em 2 minutos."
							sleep(500)
							world<<"<font face=tahoma><font size=3><font color=white>Haverá um Exame Chuunin em 1 minuto."
							sleep(500)
							world<<"<font face=tahoma><font size=3><font color=white>O Exame Chuunin começou!"
							for(var/mob/M in world)
								M.sefodeulegal=0
							Chuuninfloresta=1
							usr.loc=locate(115,246,5)
							while(Chuuninfloresta)
								sleep(1800)
								var/floresta=0
								for(var/mob/M in world)
									if(M.client)
										if(M.z==3&&M.x>0&&M.x<101&&M.y>0&&M.y<102)
											if(Chuuninfloresta)
												floresta++
								world<<"\red <b>Chuunin Info:</b>\white Tem <b>[floresta]</b> jogadores na Floresta da Morte!"
							return
					if("Encerrar Exame")
						if(Chuunintime)
							world<<"\red <b>Chuunin Info:</b>\white A primeira parte do Exame Chuunin acabou!"
							Chuunintime=0
							for(var/mob/M in world)
								if(M.client)
									M.sefodeulegal=1
					if("Encerrar Floresta")
						if(!Chuunintime)
							if(Chuuninfloresta)
								world<<"\red <b>Chuunin Info:</b>\white A parte da Floresta da Morte acabou!"
								Chuunintime=0
								Chuuninfloresta=0
								for(var/mob/M in world)
									if(M.client)
										if(M.z==3&&M.x>0&&M.x<101&&M.y>0&&M.y<102)
											for(var/obj/objetos/heavenscroll/H in M.contents)
												del(H)
											for(var/obj/objetos/earthscroll/S in M.contents)
												del(S)
											for(var/obj/objetos/heavenscroll/H2 in world)
												del(H2)
											for(var/obj/objetos/earthscroll/S in world)
												del(S2)
											M.earthscroll=0
											M.heavenscroll=0
											M.csfloresta=0
											M.Suicides()
					if("Selecionar Oponentes (Torre)")
						if(!Chuunintime)
							if(!Chuuninfloresta)
								switch(alert("Quantos serão os lutadores?","Selecionar Oponentes (Torre)","2","3","Cancelar"))
									if("2")
										var/list/Menu = list()
										for(var/mob/A in world)
											if(istype(A,/mob))
												if(A.client)
													Menu.Add(A)
										for(var/mob/B in world)
											if(istype(B,/mob))
												if(B.client)
													Menu.Add(B)
										var/mob/A = input("Selecione Oponente 1")as mob in Menu
										switch(alert("Oponente #1: [A]","Torre","Sim","Não"))
											if("Sim")
												var/mob/B = input("Selecione Oponente 2")as mob in Menu
												switch(alert("Oponente #2: [B]","Torre","Sim","Não"))
													if("Sim")
														if(!A||!B)
															usr<<"Um deles deslogou."
															return
														if(A.client&&B.client)
															if(A.client.address == B.client.address)
																usr << "<b>[A]</b> e <b>[B]</b> tem o mesmo IP, selecione oponentes diferentes!"
																return
														A.loc=locate(96,223,5)
														B.loc=locate(134,223,5)
														oponente1=A
														oponente2=B
														world << "<font face=tahoma><center><font size=2><b>[A]</b> VS <b>[B]</b></font>! A Luta começará em 3 segundos!"
														A.Frozen = 1
														B.Frozen = 1
														A.PK=0
														B.PK=0
														sleep(30)
														world << "<font face=tahoma><center><font size=2>3</font>"
														sleep(15)
														world << "<font face=tahoma><center><font size=2>2</font>"
														sleep(15)
														world << "<font face=tahoma><center><font size=2>1</font>"
														sleep(15)
														world << "<font face=tahoma><center><font color=red><font size=3><b>LUTEM!</b></font>"
														A.PK = 1
														A.Frozen = 0
														B.PK = 1
														B.Frozen = 0
														return
													else
														return
											else
												return
									if("3")
										var/list/Menu = list()
										for(var/mob/A in world)
											if(istype(A,/mob))
												if(A.client)
													Menu.Add(A)
										for(var/mob/B in world)
											if(istype(B,/mob))
												if(B.client)
													Menu.Add(B)
										for(var/mob/C in world)
											if(istype(C,/mob))
												if(C.client)
													Menu.Add(C)
										var/mob/A = input("Selecione Oponente 1")as mob in Menu
										switch(alert("Oponente #1: [A]","Torre","Sim","Não"))
											if("Sim")
												var/mob/B = input("Selecione Oponente 2")as mob in Menu
												switch(alert("Oponente #2: [B]","Torre","Sim","Não"))
													if("Sim")
														var/mob/C = input("Selecione Oponente 3")as mob in Menu
														switch(alert("Oponente #3: [B]","Torre","Sim","Não"))
															if("Sim")
																if(!A||!B||!C)
																	usr<<"Um deles deslogou."
																	return
																if(A.client&&B.client)
																	if(A.client.address == B.client.address)
																		usr << "<b>[A]</b> e <b>[B]</b> tem o mesmo IP, selecione oponentes diferentes!"
																		return
																if(A.client&&C.client)
																	if(A.client.address == C.client.address)
																		usr << "<b>[A]</b> e <b>[C]</b> tem o mesmo IP, selecione oponentes diferentes!"
																		return
																if(B.client&&C.client)
																	if(B.client.address == C.client.address)
																		usr << "<b>[B]</b> e <b>[C]</b> tem o mesmo IP, selecione oponentes diferentes!"
																		return
																A.loc=locate(96,221,5)
																B.loc=locate(134,221,5)
																C.loc=locate(115,240,5)
																oponente1=A
																oponente2=B
																oponente3=C
																world << "<font face=tahoma><center><font size=2><b>[A]</b> VS <b>[B]</b> VS <b>[C]</b></font>! A Luta começará em 3 segundos!"
																A.Frozen = 1
																B.Frozen = 1
																C.Frozen = 1
																A.PK=0
																B.PK=0
																C.PK=0
																sleep(30)
																world << "<font face=tahoma><center><font size=2>3</font>"
																sleep(15)
																world << "<font face=tahoma><center><font size=2>2</font>"
																sleep(15)
																world << "<font face=tahoma><center><font size=2>1</font>"
																sleep(15)
																world << "<font face=tahoma><center><font color=red><font size=3><b>LUTEM!</b></font>"
																A.PK = 1
																A.Frozen = 0
																B.PK = 1
																B.Frozen = 0
																C.PK = 1
																C.Frozen = 0
																return
															else
																return
													else
														return
											else
												return
					if("Encerrar Chuunin Shiken")
						if(!Chuunintime)
							if(!Chuuninfloresta)
								Chuunintime=0
								Chuuninfloresta=0
								horachuunin=0
								switch(input("Qual o numero de vencedores do Chuunin Shiken?","", text)in list("1","2","3","4","Cancelar"))
									if("1")
										var/vencedor1 = input("Digite o nome do Vencedor!")as text
										world<<"<font color=green><font size=3>O Chuunin Shiken acabou. Vencedor: <b>[vencedor1]</b>"
									if("2")
										var/vencedor1 = input("Digite o nome do Vencedor (1)")as text
										var/vencedor2 = input("Digite o nome do Vencedor (2)")as text
										world<<"<font color=green><font size=3>O Chuunin Shiken acabou. Vencedores: <b>[vencedor1]</b> , <b>[vencedor2]</b>"
									if("3")
										var/vencedor1 = input("Digite o nome do Vencedor (1)")as text
										var/vencedor2 = input("Digite o nome do Vencedor (2)")as text
										var/vencedor3 = input("Digite o nome do Vencedor (3)")as text
										world<<"<font color=green><font size=3>O Chuunin Shiken acabou. Vencedores: <b>[vencedor1]</b> , <b>[vencedor2]</b> , <b>[vencedor3]</b>"
									if("4")
										var/vencedor1 = input("Digite o nome do Vencedor (1)")as text
										var/vencedor2 = input("Digite o nome do Vencedor (2)")as text
										var/vencedor3 = input("Digite o nome do Vencedor (3)")as text
										var/vencedor4 = input("Digite o nome do Vencedor (4)")as text
										world<<"<font color=green><font size=3>O Chuunin Shiken acabou. Vencedores: <b>[vencedor1]</b> , <b>[vencedor2]</b> , <b>[vencedor3]</b> , <b>[vencedor4]</b>"
							for(var/mob/M in world)
								if(M.client)
									M.sefodeulegal=0

			else
				del(usr)
		Force_Save(mob/M in world)
			set category = "GM"
			M.SalvarAgora()
mob/AmeLider
	verb
		RetirarColocarChuva()
			set name="Colocar/Retirar Chuva"
			set category="Kage"
			switch(input("Você quer colocar ou retirar a chuva?", text) in list ("Colocar","Retirar","Nenhum"))
				if("Colocar")
					for(var/obj/Chuva/C in world)
						if(C.z==1)
							C.icon='rain.dmi'
					world <<"<font color=cyan><b>>><u>Ame</u><<: <font color=green><b>[usr]</b></font> usou seu poder para fazer chuver!"
					usr<<"A chuva começa a cair sobre a vila."
				if("Retirar")
					for(var/obj/Chuva/C in world)
						if(C.z==1)
							C.icon=null
					world <<"<font color=cyan><b>>><u>Ame</u><<: <font color=green><b>[usr]</b></font> usou seu poder para acabar com a chuva!"
					usr<<"A chuva sobre a vila se esvai."





mob/KiriLider
	verb
		RetirarColocarNevoa()
			set name="Colocar/Retirar Nevoa"
			set category="Kage"
			switch(input("Você quer colocar ou retirar a névoa?", text) in list ("Colocar","Retirar","Nenhum"))
				if("Colocar")
					for(var/obj/kriga/C in world)
						if(C.z==1)
							C.icon='mist.dmi'
					world <<"<font color=cyan><b>>><u>Kiri</u><<: <font color=green><b>[usr]</b></font> usou seu poder para invocar a névoa!"
					usr<<"A névoa cobre a vila."
				if("Retirar")
					for(var/obj/kriga/C in world)
						if(C.z==1||C.z==2||C.z==3||C.z==4||C.z==5||C.z==6||C.z==7||C.z==8||C.z==9||C.z==10)
							C.icon=null
					world <<"<font color=cyan><b>>><u>Kiri</u><<: <font color=green><b>[usr]</b></font> usou seu poder para acabar com a névoa!"
					usr<<"A névoa sobre a vila se esvai."
mob/hokage
	verb
		Convidar(mob/M in world)
			set category = "Kage"
			set name = "Convidar para a vila"
			if(M.convidado)return
			if(M.rank=="Nukenin"&&M.Village=="Nenhum")
				if(M.recusou>=3)
					usr<<"Pare de convidá-lo toda hora, ou sofrerá as consequências."
				if(M.recusou>=4)
					world<<"[usr] convidou repetidamente [M] para a vila, sendo que este recusou diversas vezes. [usr] foi expulso da própria Vila como consequência."
					usr.Village="Nenhum"
					usr.Village2=""
					usr.rank="Nukenin"
					usr.soundleader=0
					usr.soundmember=0
					usr.otolider=0
					usr.subclan=0
					usr.madara=0
					usr.mouse_over_pointer=null
					usr.verbs-= new /mob/anbu/verb/JailAnbu()
					usr.verbs-= new /mob/anbu/verb/InvestAnbu()
					usr.verbs-= new /mob/police/verb/JailPolice()
					usr.verbs-= new /mob/anbu/verb/Teleporte()
					usr.verbs-= new /mob/anbu/verb/Invisible()
					usr.verbs -= /mob/swordsmen/verb/Invite7
					usr.verbs -= /mob/swordsmen/verb/Boot7
					usr.verbs -= /mob/sound/verb/InviteS
					usr.verbs -= /mob/sound/verb/BootS
					usr.verbs -= /mob/Taka/verb/InviteH
					usr.verbs -= /mob/Taka/verb/BootH
					usr.verbs -= /mob/almaAK/verb/Reproduzir_Alma
					usr.verbs -= /mob/akat/verb/ChangeFace
					usr.verbs -= /mob/akatsuki/verb/InviteA
					usr.verbs -= /mob/akatsuki/verb/BootA
					usr.esquadrao=""
					usr.faceicon=null
					usr.PerderSubclan()
					usr.akatsukimember=0
					usr.akatsukileader=0
					usr.swordsmenleader=0
					usr.swordsmenmember=0
					usr.policemember=0
					usr.policeleader=0
					usr.nucleomember=0
					usr.nucleoleader=0
					usr.Takamember=0
					usr.Takaleader=0
					usr.verbs+= new /mob/jutsu/verb/BakuretsuBunshin
					for(var/obj/AKAH/H in usr.contents)
						del(H)
					for(var/obj/AKAS/S in usr.contents)
						del(S)
					for(var/obj/AKAS2/F in usr.contents)
						del(F)
					for(var/obj/SOSuit/S in usr.contents)
						del(S)
					for(var/obj/NucHat/R in usr.contents)
						del(R)
					for(var/obj/NucSuit/B in usr.contents)
						del(B)
					for(var/obj/PoliceUniforme/S in usr.contents)
						del(S)
					for(var/obj/Sor/S in usr.contents)
						del(S)
					for(var/obj/SOSuit/S in usr.contents)
						del(S)

					for(var/obj/SSSsuit2/S in usr.contents)
						del(S)
					for(var/obj/SSSsuit1/B in usr.contents)
						del(B)
					for(var/obj/SSSmask/R in usr.contents)
						del(R)
					return
				switch(alert(M,"[usr] está te convidando para [usr.Village]. Deseja ir?","Convite","Sim","Não"))
					if("Sim")
						if(M.convidado)return
						M.Village="[usr.Village]"
						M.bingo = "nulo"
						M.honra = 10
						M.killsvillage = 0
						M.PerderSubclan()
						M.convidado=1
						M.rank = "Genin"
						M<<"Você foi chamado por [usr] para [usr.Village]!"
						usr<<"Você recrutou [M] para sua vila."
						if(M.Village == "Konoha")
							var/obj/Vila/Konoha/K = new/obj/Vila/Konoha
							M.mouse_over_pointer = K
						if(M.Village == "Kiri")
							var/obj/Vila/Kiri/K2 = new/obj/Vila/Kiri
							M.mouse_over_pointer = K2
						if(M.Village == "Suna")
							var/obj/Vila/Suna/S = new/obj/Vila/Suna
							M.mouse_over_pointer = S
						if(M.Village == "Iwa")
							var/obj/Vila/Iwa/I = new/obj/Vila/Iwa
							M.mouse_over_pointer = I
						if(M.Village == "Ame")
							var/obj/Vila/Ame/A = new/obj/Vila/Ame
							M.mouse_over_pointer = A
						if(M.Village == "Kumo")
							var/obj/Vila/Kumo/K3 = new/obj/Vila/Kumo
							M.mouse_over_pointer = K3
					if("Não")
						usr<<"Ele não aceitou seu convite"
						M.recusou+=1
			else
				usr<<"Ele não é Nukenin"
		TirarAnbu(mob/M in world)
			set category = "Kage"
			set name = "Retirar cargo Anbu/Sannin"
			if (!M.rank=="ANBU"||!M.rank=="ANBU-CAP"||!M.rank=="Sannin")
				usr<<"Ele não é um Anbu/Sannin."
				return
			if(M.Village=="[usr.Village]")
				M.rank="Jounin"
				M.subclan=0
				M.verbs-= new /mob/anbu/verb/JailAnbu()
				M.verbs-= new /mob/anbu/verb/InvestAnbu()
				M.verbs-= new /mob/anbu/verb/Teleporte()
				M.verbs-= new /mob/anbu/verb/Invisible()
				M.PerderSubclan()
			else
				usr<<"Ele n é da sua vila"
		Teleporte()
			set popup_menu = 0
			set category = "Kage"
			usr<<"Desabilitado!"
			return
			if(usr.inizanami)
				usr<<"Você precisa sair da dimensão primeiro!"
				return
			if(usr.inlua&&!luaproxima)
				usr<<"A ua está distante da Terra!"
				return
			if(usr.climbing)
				usr<<"Não enquanto upa HP!"
				return
			if(emguerra==1)
				return
			switch(input("Quer se Teleportar pra onde?") in list ("Konoha","Suna","Ame","Kusa","Yuki","Kiri","Oto","Taki","Kumo","Iwa"))
				if("Konoha")
					usr.loc=locate(416,241,1)
				if("Suna")
					usr.loc=locate(110,155,1)
				if("Taki")
					usr.loc=locate(483,116,1)
				if("Kiri")
					usr.loc=locate(590,90,1)
				if("Oto")
					usr.loc=locate(203,367,1)
				if("Kumo")
					usr.loc=locate(574,365,1)
				if("Ame")
					usr.loc=locate(541,520,1)
				if("Yuki")
					usr.loc=locate(276,61,1)
				if("Iwa")
					usr.loc=locate(98,548,1)




		Dar_ANBU(mob/M in world)
			set category = "Kage"
			if(M.rank == "ANBU")
				usr<<"Ele ja e ANBU!"
				return
			if(M.rank== "Kage")
				usr<<"Nao abuse de seu poder."
				del(usr)
			if(M.dmission<250&&M.cmission<150&&M.bmission<75)
				usr<<"Ele não tem missoes suficientes no currículo para esse cargo"
				return
			if(M.honra < 3000)
				usr<<"Ele não tem honra suficiente"
				return
			if(M.seals < 100)
				usr<<"Ele deve ser no mínimo Jounin."
				return
			if(M.Village == usr.Village)
				M<<"Vc foi promovido a ANBU pelo seu kage!"
				world<<"[M] agora é um ANBU"
				M.rank = "ANBU"
				M.PerderSubclan()
				M.verbs+= new /mob/anbu/verb/JailAnbu()
				M.verbs+= new /mob/anbu/verb/InvestAnbu()
				M.verbs+= new /mob/anbu/verb/Teleporte()
				var/obj/AnbuS/S = new/obj/AnbuS
				S.loc = M
				var/obj/AnbuSword/H = new/obj/AnbuSword
				H.loc = M
				var/obj/AnbuCapuz/C = new/obj/AnbuCapuz
				C.loc = M
				var/obj/AnbuCapuzB/F = new/obj/AnbuCapuzB
				F.loc = M
				if(M.estilostamina&&!M.boostanbu)
					M.maxhealth += M.maxhealth/15
					M.boostanbu=1
				if(M.estilochakra&&!M.boostanbu)
					M.Mchakra += M.Mchakra/15
					M.boostanbu=1
				if(M.estiloforca&&!M.boostanbu)
					M.Mtai += M.Mtai/15
					M.boostanbu=1
				if(src.Village=="Konoha")
					M.ChakraC=100
					M.esquadrao="Konoha ANBU"
					M.squads=1
					var/obj/Ranbu/R = new/obj/Ranbu
					R.loc=M
					var/obj/AnbuKonoha/T = new/obj/AnbuKonoha
					T.loc=M
				if(src.Village =="Suna")
					M.ChakraC=100
					M.esquadrao="Suna ANBU"
					M.squads=1
					var/obj/Sanbu/R = new/obj/Sanbu
					R.loc = M
					var/obj/AnbuSuna/T = new/obj/AnbuSuna
					T.loc=M
				if(src.Village =="Oto")
					M.ChakraC=100
					M.esquadrao="Oto ANBU"
					M.squads=1
					var/obj/Danbu/R = new/obj/Danbu
					R.loc = M
				if(src.Village =="Kusa")
					M.ChakraC=100
					M.esquadrao="Kusa ANBU"
					M.squads=1
					var/obj/Ganbu/R = new/obj/Ganbu
					R.loc = M
				if(src.Village =="Ame")
					M.ChakraC=100
					M.esquadrao="Ame ANBU"
					M.squads=1
					var/obj/Banbu/R = new/obj/Banbu
					R.loc = M
					var/obj/AnbuAme/T = new/obj/AnbuAme
					T.loc=M
				if(src.Village =="Kumo")
					M.ChakraC=100
					M.esquadrao="Kumo ANBU"
					M.squads=1
					var/obj/Yanbu/R = new/obj/Yanbu
					R.loc = M
					var/obj/AnbuKumo/T = new/obj/AnbuKumo
					T.loc=M
				if(src.Village =="Kiri")
					M.ChakraC=100
					M.esquadrao="Mist ANBU"
					M.squads=1
					var/obj/Banbu/R = new/obj/Banbu
					R.loc = M
					var/obj/AnbuKiri/T = new/obj/AnbuKiri
					T.loc=M
				if(src.Village =="Iwa")
					M.ChakraC=100
					M.esquadrao="Iwa ANBU"
					M.squads=1
					var/obj/Eanbu/R = new/obj/Eanbu
					R.loc = M
					var/obj/AnbuIwa/T = new/obj/AnbuIwa
					T.loc=M
				if(src.Village =="Yuki")
					M.ChakraC=100
					M.esquadrao="Yuki ANBU"
					M.squads=1
					var/obj/Panbu/R = new/obj/Panbu
					R.loc = M
				if(src.Village =="Taki")
					M.ChakraC=100
					M.esquadrao="Taki ANBU"
					M.squads=1
					var/obj/Banbu/R = new/obj/Banbu
					R.loc = M
					return

			else
				usr<<"Ele n e de sua vila."


		Dar_ANBUCAP(mob/M in world)
			set category = "Kage"
			if(M.rank == "ANBU-CAP")
				usr<<"Ele já é Anbu-Cap!"
				return
			if(M.rank== "Kage")
				usr<<"Nao abuse de seu poder."
				del(usr)
			if(M.dmission<300&&M.cmission<200&&M.bmission<100)
				usr<<"Ele não tem missoes suficientes no currículo para esse cargo"
				return
			if(M.honra < 3500)
				usr<<"Ele não tem honra suficiente"
				return
			if(M.seals <>100)
				usr<<"Ele deve ser no mínimo Jounin."
				return
			if(M.Village == usr.Village)
				M<<"Vc foi promovido a Anbu-Cap pelo seu kage!"
				world<<"[M] agora e um Anbu-Cap"
				M.rank = "ANBU-CAP"
				M.PerderSubclan()
				M.verbs+= new /mob/anbu/verb/JailAnbu()
				M.verbs+= new /mob/anbu/verb/InvestAnbu()
				M.verbs+= new /mob/anbu/verb/Teleporte()
				M.verbs+= new /mob/anbu/verb/Invisible()
				var/obj/AnbuS/S = new/obj/AnbuS
				S.loc = M
				var/obj/AnbuCap/P = new/obj/AnbuCap
				P.loc = M
				var/obj/Vest2/V = new/obj/Vest2
				V.loc = M
				var/obj/ANBUCAP/H = new/obj/ANBUCAP
				H.loc = M
				var/obj/AnbuCapuz/C = new/obj/AnbuCapuz
				C.loc = M
				var/obj/AnbuCapuzB/F = new/obj/AnbuCapuzB
				F.loc = M
				if(src.Village=="Konoha")
					M.ChakraC=100
					M.esquadrao="Konoha ANBU"
					M.squads=1
					var/obj/Ranbu/R = new/obj/Ranbu
					R.loc=M
					var/obj/AnbuKonoha/T = new/obj/AnbuKonoha
					T.loc=M
				if(src.Village =="Suna")
					M.ChakraC=100
					M.esquadrao="Suna ANBU"
					M.squads=1
					var/obj/Sanbu/R = new/obj/Sanbu
					R.loc = M
					var/obj/AnbuSuna/T = new/obj/AnbuSuna
					T.loc=M
				if(src.Village =="Oto")
					M.ChakraC=100
					M.esquadrao="Oto ANBU"
					M.squads=1
					var/obj/Danbu/R = new/obj/Danbu
					R.loc = M
				if(src.Village =="Kusa")
					M.ChakraC=100
					M.esquadrao="Kusa ANBU"
					M.squads=1
					var/obj/Ganbu/R = new/obj/Ganbu
					R.loc = M
				if(src.Village =="Ame")
					M.ChakraC=100
					M.esquadrao="Ame ANBU"
					M.squads=1
					var/obj/Banbu/R = new/obj/Banbu
					R.loc = M
					var/obj/AnbuAme/T = new/obj/AnbuAme
					T.loc=M
				if(src.Village =="Kumo")
					M.ChakraC=100
					M.esquadrao="Kumo ANBU"
					M.squads=1
					var/obj/Yanbu/R = new/obj/Yanbu
					R.loc = M
					var/obj/AnbuKumo/T = new/obj/AnbuKumo
					T.loc=M
				if(src.Village =="Kiri")
					M.ChakraC=100
					M.esquadrao="Mist ANBU"
					M.squads=1
					var/obj/Banbu/R = new/obj/Banbu
					R.loc = M
					var/obj/AnbuKiri/T = new/obj/AnbuKiri
					T.loc=M
				if(src.Village =="Iwa")
					M.ChakraC=100
					M.esquadrao="Iwa ANBU"
					M.squads=1
					var/obj/Eanbu/R = new/obj/Eanbu
					R.loc = M
					var/obj/AnbuIwa/T = new/obj/AnbuIwa
					T.loc=M
				if(src.Village =="Yuki")
					M.ChakraC=100
					M.esquadrao="Yuki ANBU"
					M.squads=1
					var/obj/Panbu/R = new/obj/Panbu
					R.loc = M
				if(src.Village =="Taki")
					M.ChakraC=100
					M.esquadrao="Taki ANBU"
					M.squads=1
					var/obj/Banbu/R = new/obj/Banbu
					R.loc = M
					return
			else
				usr<<"Ele não é da sua vila."
/*		Expulsar_da_Vila(mob/M in world)
			set category="Kage"
			if(M.Village == usr.Village)
				M.Village="Nenhum"
				M.Village2=""
				M.rank="Nukenin"
				M.soundleader=0
				M.soundmember=0
				M.subclan=0
				M.madara=0
				M.mouse_over_pointer=null
				M.verbs-= new /mob/anbu/verb/JailAnbu()
				M.verbs-= new /mob/anbu/verb/InvestAnbu()
				M.verbs-= new /mob/police/verb/JailPolice()
				M.verbs-= new /mob/anbu/verb/Teleporte()
				M.verbs-= new /mob/anbu/verb/Invisible()
				M.verbs -= /mob/swordsmen/verb/Invite7
				M.verbs -= /mob/swordsmen/verb/Boot7
				M.verbs -= /mob/sound/verb/InviteS
				M.verbs -= /mob/sound/verb/BootS
				M.verbs -= /mob/Taka/verb/InviteH
				M.verbs -= /mob/Taka/verb/BootH
				M.verbs -= /mob/almaAK/verb/Reproduzir_Alma
				M.verbs -= /mob/akat/verb/ChangeFace
				M.verbs -= /mob/akatsuki/verb/InviteA
				M.verbs -= /mob/akatsuki/verb/BootA
				M.esquadrao=""
				M.faceicon=null
				M.PerderSubclan()
				M.akatsukimember=0
				M.akatsukileader=0
				M.swordsmenleader=0
				M.swordsmenmember=0
				M.policemember=0
				M.policeleader=0
				M.nucleomember=0
				M.nucleoleader=0
				M.Takamember=0
				M.Takaleader=0
				M.verbs+= new /mob/jutsu/verb/BakuretsuBunshin
				for(var/obj/AKAH/H in M.contents)
					del(H)
				for(var/obj/AKAS/S in M.contents)
					del(S)
				for(var/obj/AKAS2/F in M.contents)
					del(F)
				for(var/obj/SOSuit/S in M.contents)
					del(S)
				for(var/obj/NucHat/R in M.contents)
					del(R)
				for(var/obj/NucSuit/B in M.contents)
					del(B)
				for(var/obj/PoliceUniforme/S in M.contents)
					del(S)
				for(var/obj/Sor/S in M.contents)
					del(S)
				for(var/obj/SOSuit/S in M.contents)
					del(S)

				for(var/obj/SSSsuit2/S in M.contents)
					del(S)
				for(var/obj/SSSsuit1/B in M.contents)
					del(B)
				for(var/obj/SSSmask/R in M.contents)
					del(R)
				world << "<b>[M]</b> foi expulso de <b>[usr.Village]</b>"
				text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>expulsou</u> <b>[M]</b>([M.key]) <b>da vila de [usr.Village]</b><BR>","GMlog.html")
			else
				usr<<"You can not edit some one's rank from another villages."*/
		Dar_Sannin(mob/M in world)
			set category = "Kage"
			if(M.rank == "Sannin")
				usr<<"Ele já é um Sannin!"
				return
			if(M.rank== "Kage")
				usr<<"Your a abusive dumb fuck GM."
				return
			if(M.seals < 100)
				usr<<"Ele deve ser no mínimo Jounin."
				return
			if(M.honra < 800)
				usr<<"Ele não tem honra suficiente"
				return
			if(M.vitorias<450)
				usr<<"Ele não tem vitorias suficientes para esse cargo!"
				return
			if(M.Village == usr.Village)
				M<<"Você foi promovido para o cargo de um lendário Sannin pelo seu Kage!"
				world<<"[M] agora é um lendário Sannin"
				M.rank = "Sannin"
				M.squads=1
				M.esquadrao="Lendário Sannin"
				M.PerderSubclan()
				usr.recruits+=1
				var/obj/ANBUattacksuit/S = new/obj/ANBUattacksuit
				S.loc = M
				if(M.estilostamina&&!M.boostsannin)
					M.maxhealth += M.maxhealth/15
					M.boostsannin=1
				if(M.estilochakra&&!M.boostsannin)
					M.Mchakra += M.Mchakra/15
					M.boostsannin=1
				if(M.estiloforca&&!M.boostsannin)
					M.Mtai += M.Mtai/15
					M.boostsannin=1
				if(src.Village=="Konoha")
					src.ChakraC=100
					var/obj/LeafSage/R = new/obj/LeafSage
					R.loc=usr
				if(src.Village =="Suna")
					src.ChakraC=100
					var/obj/SandSage/R = new/obj/SandSage
					R.loc = src
				if(src.Village =="Oto")
					src.ChakraC=100
					var/obj/SoundSage/R = new/obj/SoundSage
					R.loc = src
				if(src.Village =="Kusa")
					src.ChakraC=100
					var/obj/GrassSage/R = new/obj/GrassSage
					R.loc = src
				if(src.Village =="Ame")
					src.ChakraC=100
					var/obj/RainSage/R = new/obj/RainSage
					R.loc = src
				if(src.Village =="Kumo")
					src.ChakraC=100
					var/obj/CloudSage/R = new/obj/CloudSage
					R.loc = src
				if(src.Village =="Mist")
					src.ChakraC=100
					var/obj/MistSage/R = new/obj/MistSage
					R.loc = src
				if(src.Village =="Iwa")
					src.ChakraC=100
					var/obj/RockSage/R = new/obj/RockSage
					R.loc = src
				if(src.Village =="Yuki")
					src.ChakraC=100
					var/obj/SnowSage/R = new/obj/SnowSage
					R.loc = src
				if(src.Village =="Taki")
					src.ChakraC=100
					var/obj/Banbu/R = new/obj/Banbu
					R.loc = src
					return

			else
				usr<<"Ele não é da sua vila."






var
	warring=0
mob/var/inthewar=0







//----------------------bijuus adicionados----------------------------------------------------------------------

obj
	CCurseSeal3T
		icon = 'BaseT Wings.dmi'
		icon_state = "C"
	TCurseSeal3T
		icon = 'BaseT Wings.dmi'
		icon_state = "T"
		pixel_y=32
	BLCurseSeal3T
		icon = 'BaseT Wings.dmi'
		icon_state = "BL"
		pixel_x=-32
	BRCurseSeal3T
		icon = 'BaseT Wings.dmi'
		icon_state = "BR"
		pixel_x=32
	TLCurseSeal3T
		icon = 'BaseT Wings.dmi'
		icon_state = "TL"
		pixel_y=32
		pixel_x=-32
	TRCurseSeal3T
		icon = 'BaseT Wings.dmi'
		icon_state = "TR"
		pixel_y=32
		pixel_x=32
obj
	CCurseSeal3White
		icon = 'Base White Wings.dmi'
		icon_state = "C"
	TCurseSeal3White
		icon = 'Base White Wings.dmi'
		icon_state = "T"
		pixel_y=32
	BLCurseSeal3White
		icon = 'Base White Wings.dmi'
		icon_state = "BL"
		pixel_x=-32
	BRCurseSeal3White
		icon = 'Base White Wings.dmi'
		icon_state = "BR"
		pixel_x=32
	TLCurseSeal3White
		icon = 'Base White Wings.dmi'
		icon_state = "TL"
		pixel_y=32
		pixel_x=-32
	TRCurseSeal3White
		icon = 'Base White Wings.dmi'
		icon_state = "TR"
		pixel_y=32
		pixel_x=32
obj
	CCurseSeal3Black
		icon = 'Base Black Wings.dmi'
		icon_state = "C"
	TCurseSeal3Black
		icon = 'Base Black Wings.dmi'
		icon_state = "T"
		pixel_y=32
	BLCurseSeal3Black
		icon = 'Base Black Wings.dmi'
		icon_state = "BL"
		pixel_x=-32
	BRCurseSeal3Black
		icon = 'Base Black Wings.dmi'
		icon_state = "BR"
		pixel_x=32
	TLCurseSeal3Black
		icon = 'Base Black Wings.dmi'
		icon_state = "TL"
		pixel_y=32
		pixel_x=-32
	TRCurseSeal3Black
		icon = 'Base Black Wings.dmi'
		icon_state = "TR"
		pixel_y=32
		pixel_x=32
obj
	CCurseSeal3Blue
		icon = 'Base Blue Wings.dmi'
		icon_state = "C"
	TCurseSeal3Blue
		icon = 'Base Blue Wings.dmi'
		icon_state = "T"
		pixel_y=32
	BLCurseSeal3Blue
		icon = 'Base Blue Wings.dmi'
		icon_state = "BL"
		pixel_x=-32
	BRCurseSeal3Blue
		icon = 'Base Blue Wings.dmi'
		icon_state = "BR"
		pixel_x=32
	TLCurseSeal3Blue
		icon = 'Base Blue Wings.dmi'
		icon_state = "TL"
		pixel_y=32
		pixel_x=-32
	TRCurseSeal3Blue
		icon = 'Base Blue Wings.dmi'
		icon_state = "TR"
		pixel_y=32
		pixel_x=32
obj
	CCurseSeal3Red
		icon = 'Base Red Wings.dmi'
		icon_state = "C"
	TCurseSeal3Red
		icon = 'Base Red Wings.dmi'
		icon_state = "T"
		pixel_y=32
	BLCurseSeal3Red
		icon = 'Base Red Wings.dmi'
		icon_state = "BL"
		pixel_x=-32
	BRCurseSeal3Red
		icon = 'Base Red Wings.dmi'
		icon_state = "BR"
		pixel_x=32
	TLCurseSeal3Red
		icon = 'Base Red Wings.dmi'
		icon_state = "TL"
		pixel_y=32
		pixel_x=-32
	TRCurseSeal3Red
		icon = 'Base Red Wings.dmi'
		icon_state = "TR"
		pixel_y=32
		pixel_x=32
obj
	CCurseSeal3Vamp
		icon = 'Base Vamp Wings.dmi'
		icon_state = "C"
	TCurseSeal3Vamp
		icon = 'Base Vamp Wings.dmi'
		icon_state = "T"
		pixel_y=32
	BLCurseSeal3Vamp
		icon = 'Base Vamp Wings.dmi'
		icon_state = "BL"
		pixel_x=-32
	BRCurseSeal3Vamp
		icon = 'Base Vamp Wings.dmi'
		icon_state = "BR"
		pixel_x=32
	TLCurseSeal3Vamp
		icon = 'Base Vamp Wings.dmi'
		icon_state = "TL"
		pixel_y=32
		pixel_x=-32
	TRCurseSeal3Vamp
		icon = 'Base Vamp Wings.dmi'
		icon_state = "TR"
		pixel_y=32
		pixel_x=32
obj
	CCurseSeal3Yellow
		icon = 'Base Yellow Wings.dmi'
		icon_state = "C"
	TCurseSeal3Yellow
		icon = 'Base Yellow Wings.dmi'
		icon_state = "T"
		pixel_y=32
	BLCurseSeal3Yellow
		icon = 'Base Yellow Wings.dmi'
		icon_state = "BL"
		pixel_x=-32
	BRCurseSeal3Yellow
		icon = 'Base Yellow Wings.dmi'
		icon_state = "BR"
		pixel_x=32
	TLCurseSeal3Yellow
		icon = 'Base Yellow Wings.dmi'
		icon_state = "TL"
		pixel_y=32
		pixel_x=-32
	TRCurseSeal3Yellow
		icon = 'Base Yellow Wings.dmi'
		icon_state = "TR"
		pixel_y=32
		pixel_x=32
mob/var
	CS2=0
	CS3=0
	InCS3=0
	InCS4=0
	CSWS=0
mob/proc/Cursed_Seal()
	if(src.CS3>=1&&!src.incs)
		src.InCS3=1
		src.overlays+='cs.dmi'
		src.overlays+='cs2.dmi'
		src.overlays+='cs3 Eyes.dmi'
		var/haircs3over = 'cs3 Hair.dmi'
		haircs3over += rgb(rhair,ghair,bhair)
		if(usr.icon=='BaseT.dmi'||usr.icon=='FemaleT.dmi')
			src.overlays+=/obj/CCurseSeal3Black
			src.overlays+=/obj/TCurseSeal3Black
			src.overlays+=/obj/BLCurseSeal3Black
			src.overlays+=/obj/BRCurseSeal3Black
			src.overlays+=/obj/TLCurseSeal3Black
			src.overlays+=/obj/TRCurseSeal3Black
		if(usr.icon=='Base white.dmi'||usr.icon=='Female white.dmi')
			src.overlays+=/obj/CCurseSeal3Black
			src.overlays+=/obj/TCurseSeal3Black
			src.overlays+=/obj/BLCurseSeal3Black
			src.overlays+=/obj/BRCurseSeal3Black
			src.overlays+=/obj/TLCurseSeal3Black
			src.overlays+=/obj/TRCurseSeal3Black
		if(usr.icon=='BaseBlack.dmi'||usr.icon=='FemaleBlack.dmi')
			src.overlays+=/obj/CCurseSeal3Black
			src.overlays+=/obj/TCurseSeal3Black
			src.overlays+=/obj/BLCurseSeal3Black
			src.overlays+=/obj/BRCurseSeal3Black
			src.overlays+=/obj/TLCurseSeal3Black
			src.overlays+=/obj/TRCurseSeal3Black
		if(usr.icon=='BaseBlue.dmi'||usr.icon=='FemaleBlue.dmi')
			src.overlays+=/obj/CCurseSeal3Black
			src.overlays+=/obj/TCurseSeal3Black
			src.overlays+=/obj/BLCurseSeal3Black
			src.overlays+=/obj/BRCurseSeal3Black
			src.overlays+=/obj/TLCurseSeal3Black
			src.overlays+=/obj/TRCurseSeal3Black
		if(usr.icon=='BaseRed.dmi'||usr.icon=='FemaleRed.dmi')
			src.overlays+=/obj/CCurseSeal3Black
			src.overlays+=/obj/TCurseSeal3Black
			src.overlays+=/obj/BLCurseSeal3Black
			src.overlays+=/obj/BRCurseSeal3Black
			src.overlays+=/obj/TLCurseSeal3Black
			src.overlays+=/obj/TRCurseSeal3Black
		if(usr.icon=='BaseVamp.dmi'||usr.icon=='FemaleVamp.dmi')
			src.overlays+=/obj/CCurseSeal3Black
			src.overlays+=/obj/TCurseSeal3Black
			src.overlays+=/obj/BLCurseSeal3Black
			src.overlays+=/obj/BRCurseSeal3Black
			src.overlays+=/obj/TLCurseSeal3Black
			src.overlays+=/obj/TRCurseSeal3Black
		if(usr.icon=='BaseYellow.dmi'||usr.icon=='FemaleYellow.dmi')
			src.overlays+=/obj/CCurseSeal3Black
			src.overlays+=/obj/TCurseSeal3Black
			src.overlays+=/obj/BLCurseSeal3Black
			src.overlays+=/obj/BRCurseSeal3Black
			src.overlays+=/obj/TLCurseSeal3Black
			src.overlays+=/obj/TRCurseSeal3Black
		src.overlays+=haircs3over
		src.tai = src.tai*1.1
		src.gen = src.gen*1.1
		src.nin = src.nin*1.1
		src.shurikenskill = src.shurikenskill*1.1
		src.verbs += typesof(/mob/Curse_Seal3/verb/)
//		src.incs=1
//		src.CSWS = 0
		return
	else if(src.InCS3)
		src.verbs -= typesof(/mob/Curse_Seal3/verb/)
		if(src&&src.InCS3)
			src<<"Seu poder chegou ao fim"
			src.InCS3=0
			var/haircs3over = 'cs3 Hair.dmi'
			src.overlays-='cs.dmi'
			src.overlays-='cs.dmi'
			src.overlays-='cs.dmi'
			src.overlays-='cs2.dmi'
			src.overlays-='cs2.dmi'
			src.overlays-='cs2.dmi'
			src.overlays-='cs3 Eyes.dmi'
			src.overlays-='cs3 Eyes.dmi'
			src.overlays-='cs3 Eyes.dmi'
			src.overlays-=/obj/CCurseSeal3T
			src.overlays-=/obj/TCurseSeal3T
			src.overlays-=/obj/BLCurseSeal3T
			src.overlays-=/obj/BRCurseSeal3T
			src.overlays-=/obj/TLCurseSeal3T
			src.overlays-=/obj/TRCurseSeal3T
			src.overlays-=/obj/CCurseSeal3White
			src.overlays-=/obj/TCurseSeal3White
			src.overlays-=/obj/BLCurseSeal3White
			src.overlays-=/obj/BRCurseSeal3White
			src.overlays-=/obj/TLCurseSeal3White
			src.overlays-=/obj/TRCurseSeal3White
			src.overlays-=/obj/CCurseSeal3Black
			src.overlays-=/obj/TCurseSeal3Black
			src.overlays-=/obj/BLCurseSeal3Black
			src.overlays-=/obj/BRCurseSeal3Black
			src.overlays-=/obj/TLCurseSeal3Black
			src.overlays-=/obj/TRCurseSeal3Black
			src.overlays-=/obj/CCurseSeal3Blue
			src.overlays-=/obj/TCurseSeal3Blue
			src.overlays-=/obj/BLCurseSeal3Blue
			src.overlays-=/obj/BRCurseSeal3Blue
			src.overlays-=/obj/TLCurseSeal3Blue
			src.overlays-=/obj/TRCurseSeal3Blue
			src.overlays-=/obj/CCurseSeal3Red
			src.overlays-=/obj/TCurseSeal3Red
			src.overlays-=/obj/BLCurseSeal3Red
			src.overlays-=/obj/BRCurseSeal3Red
			src.overlays-=/obj/TLCurseSeal3Red
			src.overlays-=/obj/TRCurseSeal3Red
			src.overlays-=/obj/CCurseSeal3Vamp
			src.overlays-=/obj/TCurseSeal3Vamp
			src.overlays-=/obj/BLCurseSeal3Vamp
			src.overlays-=/obj/BRCurseSeal3Vamp
			src.overlays-=/obj/TLCurseSeal3Vamp
			src.overlays-=/obj/TRCurseSeal3Vamp
			src.overlays-=/obj/CCurseSeal3Yellow
			src.overlays-=/obj/TCurseSeal3Yellow
			src.overlays-=/obj/BLCurseSeal3Yellow
			src.overlays-=/obj/BRCurseSeal3Yellow
			src.overlays-=/obj/TLCurseSeal3Yellow
			src.overlays-=/obj/TRCurseSeal3Yellow
			src.overlays-=haircs3over
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.shurikenskill=src.Mshurikenskill
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
			src.froze=0
			src.move=1
			src.cast = 0
			src.InCSWS = 0
			src.CSWS_ONOFF = 0
			if(src.icon=='BaseT.dmi'||src.icon=='FemaleT.dmi')
				src.overlays -= 'BaseBlack Wing Shield.dmi'
			if(src.icon=='Base white.dmi'||src.icon=='Female White.dmi')
				src.overlays -= 'BaseBlack Wing Shield.dmi'
			if(src.icon=='BaseBlack.dmi'||src.icon=='FemaleBlack.dmi')
				src.overlays -= 'BaseBlack Wing Shield.dmi'
			if(src.icon=='BaseBlue.dmi'||src.icon=='FemaleBlue.dmi')
				src.overlays -= 'BaseBlack Wing Shield.dmi'
			if(src.icon=='BaseRed.dmi'||src.icon=='FemaleRed.dmi')
				src.overlays -= 'BaseBlack Wing Shield.dmi'
			if(src.icon=='BaseVamp.dmi'||src.icon=='FemaleVamp.dmi')
				src.overlays -= 'BaseBlack Wing Shield.dmi'
			if(src.icon=='BaseYellow.dmi'||src.icon=='FemaleYellow.dmi')
				src.overlays -= 'BaseBlack Wing Shield.dmi'
			src.Kaiten =0
			return
	if(src.CS2>=1&&!src.InCS2)
		src<<"Você ativou seu Selo Amaldiçoado."
		src.InCS2=1
		src.overlays+='cs.dmi'
		src.overlays+='cs2.dmi'
		src.tai = src.tai*1.1
		src.gen = src.gen*1.1
		src.nin = src.nin*1.1
		src.shurikenskill = src.shurikenskill*1.1
		return
	else if(src.InCS2)
		if(src&&src.InCS2)
			src<<"Seu poder chegou ao fim"
			src.InCS2=0
			src.overlays-='cs.dmi'
			src.overlays-='cs.dmi'
			src.overlays-='cs.dmi'
			src.overlays-='cs2.dmi'
			src.overlays-='cs2.dmi'
			src.overlays-='cs2.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.shurikenskill=src.Mshurikenskill
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
			return
	if(!src.CS1)
		src.overlays+='cs.dmi'
		src.tai = src.tai*1.05
		src.gen = src.gen*1.05
		src.nin = src.nin*1.05
		src.shurikenskill = src.shurikenskill*1.05
		src.CS1=1
//		src.InCS3=0
//		src.CSWS=0
		return
	else
		if(src&&src.CS1)
			src<<"Seu poder chegou ao fim"
			src.CS1=0
			src.overlays-='cs.dmi'
			src.overlays-='cs.dmi'
			src.overlays-='cs.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.shurikenskill=Mshurikenskill
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
			return


mob/var/tmp
	CS1=0
	InCS2=0



///// SUBS AKAT TECNOLOGIA BY LUAN *-* ////////






/*
mob/NPC
	PeinSub
		name = "{NPC} Pein"
		icon = ''
		icon_state = ""
		DblClick()
			if(src in oview(1))
				if(nao membro da akatsuki u.u)return
				if(usr.Subclan)return
				switch(input("Você tem certeza que quer virar Pein?") in list("Sim","Não"))
					if("Sim")
						if(PeinSub <> "")
							usr<<"Alguém já escolheu este subclã"
							return
						PeinSub = usr.key
						usr<<"VOcê virou sub parabens ae nego "
						SubAkatSave()
					if("Não")
						usr<<"Ok"*/


//------------------Sistema de Não Repetir Sub (By Luan)----------------------//
mob
	verb
		VercargosReq()
			set name = "Ver Requisitos de Cargos"
			var/html = {"
<html><body bgcolor=black text=#CCCCCC link=white vlink=white alink=white>
<center><b><h3>Requisitos de Cargos:</b></h3></center><br><table width =100%>"}
			html += {"
			<hr><center><font color=green>Chuunin: </center><font color=cyan><hr>- Ser Genin <br>- 150 Missoes D <br>- 100 Missoes C <br>- 50k de Ryous <br> - Vencer Chuunin Shiken
			<hr><center><font color=green>Jounin: </center><font color=cyan><hr>- Ser Chuunin <br>- 200 Missoes D <br>- 125 Missoes C <br>- 45 Missoes B <br>- 2000 de Honra <br> Relogar ao pegar os requisitos!
			<hr><center><font color=green>Oinin: </center><font color=cyan><hr>- Ser Jounin <br>- 60 Missoes B <br>- 50 Nukenins Derrotados
			<hr><center><font color=green>Anbu: </center><font color=cyan><hr>- Ser Jounin+ <br>- 250 Missoes D <br>- 150 missoes C <br>- 75 Missoes B<br>- 3000 de Honra <br>- Ser escolhido pelo Kage (Maximo de 04 por Vila)
			<hr><center><font color=green>Anbu-Cap: </center><font color=cyan><hr>- Ser Jounin+ <br>- 300 missoes D <br>- 200 missoes C <br>- 100 missoes B <br>- 3500 de Honra<br>- Ser escolhido pelo Kage (Maximo de 01 por Vila)
			<hr><center><font color=green>Sannin: </center><font color=cyan><hr>- Ser Jounin+ <br>- 450 Vitorias <br>- 4000 de Honra <br>- Ser escolhido pelo Kage (Maximo de 03 por Vila)<br>- Obs.: <font color=red>Oto / Kiri <font color=cyan> nao tem Sannin
			<hr><center><font color=green>Lider 7SS: </center><font color=cyan><hr>- Ser Jounin+ <br>- 300 Vitorias <br>- Ser escolhido pelo Mizukage
			<hr><center><font color=green>Lider SO: </center><font color=cyan><hr>- Ser Jounin+ <br>- 300 Vitorias <br>- Ser escolhido pelo Lider de Oto
			</table></html>"}
			usr<<browse(html,"window=info")

mob/ADM
	verb
		Quemtaemqualsub()
			set name = "Ver Subs Mundo"
			set category = "ADM"
			var/html = {"
<html><body bgcolor=black text=#CCCCCC link=white vlink=white alink=white>
<center><b><h3>Ver Subs Mundo:</b></h3></center><br><br><table width =100%>"}
			html += {"
			<tr><td>Hidan</td><td>[WHidan:dono]</td></tr>
			<tr><td>Deidara</td><td>[WDeidara:dono]</td></tr>
			<tr><td>Zetsu</td><td>[WZetsu:dono]</td></tr>
			<tr><td>Pain</td><td>[WPain:dono]</td></tr>
			<tr><td>Sasori</td><td>[WSasori:dono]</td></tr>
			<tr><td>Konan</td><td>[WKonan:dono]</td></tr>
			<tr><td>Tobi</td><td>[WTobi:dono]</td></tr>
			<tr><td>Itachi</td><td>[WItachi:dono]</td></tr>
			<tr><td>Kakuzu</td><td>[WKakuzu:dono]</td></tr>
			<tr><td>Kisame Akat</td><td>[WKisameAkat:dono]</td></tr>
			<tr><td>Kisame SSS</td><td>[WKisameSSS:dono]</td></tr>
			<tr><td>Zabuza SSS</td><td>[WZabuzaSSS:dono]</td></tr>
			<tr><td>Raiga SSS</td><td>[WRaigaSSS:dono]</td></tr>
			<tr><td>Ringo SSS</td><td>[WRingo:dono]</td></tr>
			<tr><td>Jinin SSS</td><td>[WJinin:dono]</td></tr>
			<tr><td>Jinpachi SSS</td><td>[WJinpachi:dono]</td></tr>
			<tr><td>Kushimaru SSS</td><td>[WKushimaru:dono]</td></tr>
			<tr><td>Jiroubou SO</td><td>[WJiroubouSO:dono]</td></tr>
			<tr><td>TayuyaSO</td><td>[WTayuyaSO:dono]</td></tr>
			<tr><td>Kidoumaru SO</td><td>[WKidoumaruSO:dono]</td></tr>
			<tr><td>Sakon SO</td><td>[WSakonSO:dono]</td></tr>
			<tr><td>Dosu SO</td><td>[WDosuSO:dono]</td></tr>
			<tr><td>Orochimaru SO</td><td>[WOrochimaruSub:dono]</td></tr>
			<tr><td>Sasuke Taka</td><td>[WSasukeTaka:dono]</td></tr>
			<tr><td>Karin Taka</td><td>[WKarinTaka:dono]</td></tr>
			<tr><td>Juugo Taka</td><td>[WJuugoTaka:dono]</td></tr>
			<tr><td>Suigetsu Taka</td><td>[WSuigetsuTaka:dono]</td></tr>
			<tr><td>Sandaime Hokage</td><td>[WSandaimeH:dono]</td></tr>
			<tr><td>Oonoki</td><td>[WOonoki:dono]</td></tr>
			<tr><td>Hashirama</td><td>[WHashirama:dono]</td></tr>
			<tr><td>Tobirama</td><td>[WTobirama:dono]</td></tr>
			<tr><td>Mizukage Mei</td><td>[WMizukage:dono]</td></tr>
			<tr><td>Minato</td><td>[WMinato:dono]</td></tr>
			<tr><td>Raikage</td><td>[WRaikage:dono]</td></tr>
			</table></html>"}
			usr<<browse(html,"window=info")


//------------------------Fim do Sistema---------------------------//


//------------------------------------------------//
var/list/Bans = list()
var/list/IPBans = list()
var/list/CIDBans = list()
var/tmp/list/boots = list()

proc
	BanSave()
		if(length(Bans)||length(IPBans)||length(CIDBans))
			var/savefile/F = new("Bans.sav")
			F["Bans"] << Bans
			F["IPBans"] << IPBans
			F["CIDBans"] << CIDBans

proc
	BanLoad()
		if(fexists("Bans.sav"))
			var/savefile/F = new("Bans.sav")
			F["Bans"] >> Bans
			F["IPBans"] >> IPBans
			F["CIDBans"] >> CIDBans


client/New()
	..()
	if(Bans.Find(key))
		src.verbs-=src.verbs
		src<<"<font color = red><big>Você foi banido do [world.name].</font>"
		spawn() del(src)
	if(IPBans.Find(address))
		src.verbs-=src.verbs
		src<<"<font color = red><big>Você foi banido do [world.name].</font>"
		spawn() del(src)
	if(CIDBans.Find(computer_id))
		src.verbs-=src.verbs
		src<<"<font color = red><big>Você foi banido do [world.name].</font>"
		spawn() del(src)

world
	Del()
		..()
		BanSave()
		BancosSave()
proc/Boottime(T,K)
	set background = 1
	sleep(T)
	boots.Remove(K)

var/list/KeysBanidas=list("Guest-")






mob/var/jinc = 0























obj/kisame_jutsu_agua
	icon = 'Landscapes.dmi'
	C
		icon_state = "water2"
		density = 0
	C1
		icon_state = "water2"
		density = 0
		pixel_y = 32
	C2
		icon_state = "water2"
		density = 0
		pixel_y = 64
	C3
		icon_state = "water2"
		density = 0
		pixel_y = 96
	C4
		icon_state = "water2"
		density = 0
		pixel_y = 128
	L1
		icon_state = "water2"
		density = 0
		pixel_y = -32
	L2
		icon_state = "water2"
		density = 0
		pixel_y = -64
	L3
		icon_state = "water2"
		density = 0
		pixel_y = -96
	L4
		icon_state = "water2"
		density = 0
		pixel_y = -128
	M1
		icon_state = "water2"
		density = 0
		pixel_x = 32
	M2
		icon_state = "water2"
		density = 0
		pixel_x = 64
	M3
		icon_state = "water2"
		density = 0
		pixel_x = 96
	M4
		icon_state = "water2"
		density = 0
		pixel_x = 128
	N1
		icon_state = "water2"
		density = 0
		pixel_x = -32
	N2
		icon_state = "water2"
		density = 0
		pixel_x = -64
	N3
		icon_state = "water2"
		density = 0
		pixel_x = -96
	N4
		icon_state = "water2"
		density = 0
		pixel_x = -128
	AN1
		icon_state = "water2"
		density = 0
		pixel_x = -32
		pixel_y = 32
	AN2
		icon_state = "water2"
		density = 0
		pixel_x = -64
		pixel_y = 32
	AN3
		icon_state = "water2"
		density = 0
		pixel_x = -96
		pixel_y = 32
	AN4
		icon_state = "water2"
		density = 0
		pixel_x = -128
		pixel_y = 32
	BN1
		icon_state = "water2"
		density = 0
		pixel_x = -32
		pixel_y = 64
	BN2
		icon_state = "water2"
		density = 0
		pixel_x = -64
		pixel_y = 64
	BN3
		icon_state = "water2"
		density = 0
		pixel_x = -96
		pixel_y = 64
	BN4
		icon_state = "water2"
		density = 0
		pixel_x = -128
		pixel_y = 64
	CN1
		icon_state = "water2"
		density = 0
		pixel_x = -32
		pixel_y = 96
	CN2
		icon_state = "water2"
		density = 0
		pixel_x = -64
		pixel_y = 96
	CN3
		icon_state = "water2"
		density = 0
		pixel_x = -96
		pixel_y = 96
	CN4
		icon_state = "water2"
		density = 0
		pixel_x = -128
		pixel_y = 96
	DN1
		icon_state = "water2"
		density = 0
		pixel_x = -32
		pixel_y = 128
	DN2
		icon_state = "water2"
		density = 0
		pixel_x = -64
		pixel_y = 128
	DN3
		icon_state = "water2"
		density = 0
		pixel_x = -96
		pixel_y = 128
	DN4
		icon_state = "water2"
		density = 0
		pixel_x = -128
		pixel_y = 128
	AM1
		icon_state = "water2"
		density = 0
		pixel_x = -32
		pixel_y = -32
	AM2
		icon_state = "water2"
		density = 0
		pixel_x = -64
		pixel_y = -32
	AM3
		icon_state = "water2"
		density = 0
		pixel_x = -96
		pixel_y = -32
	AM4
		icon_state = "water2"
		density = 0
		pixel_x = -128
		pixel_y = -32
	BM1
		icon_state = "water2"
		density = 0
		pixel_x = -32
		pixel_y = -64
	BM2
		icon_state = "water2"
		density = 0
		pixel_x = -64
		pixel_y = -64
	BM3
		icon_state = "water2"
		density = 0
		pixel_x = -96
		pixel_y = -64
	BM4
		icon_state = "water2"
		density = 0
		pixel_x = -128
		pixel_y = -64
	CM1
		icon_state = "water2"
		density = 0
		pixel_x = -32
		pixel_y = -96
	CM2
		icon_state = "water2"
		density = 0
		pixel_x = -64
		pixel_y = -96
	CM3
		icon_state = "water2"
		density = 0
		pixel_x = -96
		pixel_y = -96
	CM4
		icon_state = "water2"
		density = 0
		pixel_x = -128
		pixel_y = -96
	DM1
		icon_state = "water2"
		density = 0
		pixel_x = -32
		pixel_y = -128
	DM2
		icon_state = "water2"
		density = 0
		pixel_x = -64
		pixel_y = -128
	DM3
		icon_state = "water2"
		density = 0
		pixel_x = -96
		pixel_y = -128
	DM4
		icon_state = "water2"
		density = 0
		pixel_x = -128
		pixel_y = -128
	AA1
		icon_state = "water2"
		density = 0
		pixel_x = 32
		pixel_y = 32
	AA2
		icon_state = "water2"
		density = 0
		pixel_x = 64
		pixel_y = 32
	AA3
		icon_state = "water2"
		density = 0
		pixel_x = 96
		pixel_y = 32
	AA4
		icon_state = "water2"
		density = 0
		pixel_x = 128
		pixel_y = 32
	BA1
		icon_state = "water2"
		density = 0
		pixel_x = 32
		pixel_y = 64
	BA2
		icon_state = "water2"
		density = 0
		pixel_x = 64
		pixel_y = 64
	BA3
		icon_state = "water2"
		density = 0
		pixel_x = 96
		pixel_y = 64
	BA4
		icon_state = "water2"
		density = 0
		pixel_x = 128
		pixel_y = 64
	CA1
		icon_state = "water2"
		density = 0
		pixel_x = 32
		pixel_y = 96
	CA2
		icon_state = "water2"
		density = 0
		pixel_x = 64
		pixel_y = 96
	CA3
		icon_state = "water2"
		density = 0
		pixel_x = 96
		pixel_y = 96
	CA4
		icon_state = "water2"
		density = 0
		pixel_x = 128
		pixel_y = 96
	DA1
		icon_state = "water2"
		density = 0
		pixel_x = 32
		pixel_y = 128
	DA2
		icon_state = "water2"
		density = 0
		pixel_x = 64
		pixel_y = 128
	DA3
		icon_state = "water2"
		density = 0
		pixel_x = 96
		pixel_y = 128
	DA4
		icon_state = "water2"
		density = 0
		pixel_x = 128
		pixel_y = 128
	AB1
		icon_state = "water2"
		density = 0
		pixel_x = 32
		pixel_y = -32
	AB2
		icon_state = "water2"
		density = 0
		pixel_x = 64
		pixel_y = -32
	AB3
		icon_state = "water2"
		density = 0
		pixel_x = 96
		pixel_y = -32
	AB4
		icon_state = "water2"
		density = 0
		pixel_x = 128
		pixel_y = -32
	BB1
		icon_state = "water2"
		density = 0
		pixel_x = 32
		pixel_y = -64
	BB2
		icon_state = "water2"
		density = 0
		pixel_x = 64
		pixel_y = -64
	BB3
		icon_state = "water2"
		density = 0
		pixel_x = 96
		pixel_y = -64
	BB4
		icon_state = "water2"
		density = 0
		pixel_x = 128
		pixel_y = -64
	CB1
		icon_state = "water2"
		density = 0
		pixel_x = 32
		pixel_y = -96
	CB2
		icon_state = "water2"
		density = 0
		pixel_x = 64
		pixel_y = -96
	CB3
		icon_state = "water2"
		density = 0
		pixel_x = 96
		pixel_y = -96
	CB4
		icon_state = "water2"
		density = 0
		pixel_x = 128
		pixel_y = -96
	DB1
		icon_state = "water2"
		density = 0
		pixel_x = 32
		pixel_y = -128
	DB2
		icon_state = "water2"
		density = 0
		pixel_x = 64
		pixel_y = -128
	DB3
		icon_state = "water2"
		density = 0
		pixel_x = 96
		pixel_y = -128
	DB4
		icon_state = "water2"
		density = 0
		pixel_x = 128
		pixel_y = -128
	held
		New()
			overlays += new /obj/kisame_jutsu_agua/C
			overlays += new /obj/kisame_jutsu_agua/C1
			overlays += new /obj/kisame_jutsu_agua/C2
			overlays += new /obj/kisame_jutsu_agua/C3
			overlays += new /obj/kisame_jutsu_agua/C4
			overlays += new /obj/kisame_jutsu_agua/L1
			overlays += new /obj/kisame_jutsu_agua/L2
			overlays += new /obj/kisame_jutsu_agua/L3
			overlays += new /obj/kisame_jutsu_agua/L4
			overlays += new /obj/kisame_jutsu_agua/M1
			overlays += new /obj/kisame_jutsu_agua/M2
			overlays += new /obj/kisame_jutsu_agua/M3
			overlays += new /obj/kisame_jutsu_agua/M4
			overlays += new /obj/kisame_jutsu_agua/N1
			overlays += new /obj/kisame_jutsu_agua/N2
			overlays += new /obj/kisame_jutsu_agua/N3
			overlays += new /obj/kisame_jutsu_agua/N4
			overlays += new /obj/kisame_jutsu_agua/AN1
			overlays += new /obj/kisame_jutsu_agua/AN2
			overlays += new /obj/kisame_jutsu_agua/AN3
			overlays += new /obj/kisame_jutsu_agua/AN4
			overlays += new /obj/kisame_jutsu_agua/BN1
			overlays += new /obj/kisame_jutsu_agua/BN2
			overlays += new /obj/kisame_jutsu_agua/BN3
			overlays += new /obj/kisame_jutsu_agua/BN4
			overlays += new /obj/kisame_jutsu_agua/CN1
			overlays += new /obj/kisame_jutsu_agua/CN2
			overlays += new /obj/kisame_jutsu_agua/CN3
			overlays += new /obj/kisame_jutsu_agua/CN4
			overlays += new /obj/kisame_jutsu_agua/DN1
			overlays += new /obj/kisame_jutsu_agua/DN2
			overlays += new /obj/kisame_jutsu_agua/DN3
			overlays += new /obj/kisame_jutsu_agua/DN4
			overlays += new /obj/kisame_jutsu_agua/AM1
			overlays += new /obj/kisame_jutsu_agua/AM2
			overlays += new /obj/kisame_jutsu_agua/AM3
			overlays += new /obj/kisame_jutsu_agua/AM4
			overlays += new /obj/kisame_jutsu_agua/BM1
			overlays += new /obj/kisame_jutsu_agua/BM2
			overlays += new /obj/kisame_jutsu_agua/BM3
			overlays += new /obj/kisame_jutsu_agua/BM4
			overlays += new /obj/kisame_jutsu_agua/CM1
			overlays += new /obj/kisame_jutsu_agua/CM2
			overlays += new /obj/kisame_jutsu_agua/CM3
			overlays += new /obj/kisame_jutsu_agua/CM4
			overlays += new /obj/kisame_jutsu_agua/DM1
			overlays += new /obj/kisame_jutsu_agua/DM2
			overlays += new /obj/kisame_jutsu_agua/DM3
			overlays += new /obj/kisame_jutsu_agua/DM4
			overlays += new /obj/kisame_jutsu_agua/AA1
			overlays += new /obj/kisame_jutsu_agua/AA2
			overlays += new /obj/kisame_jutsu_agua/AA3
			overlays += new /obj/kisame_jutsu_agua/AA4
			overlays += new /obj/kisame_jutsu_agua/BA1
			overlays += new /obj/kisame_jutsu_agua/BA2
			overlays += new /obj/kisame_jutsu_agua/BA3
			overlays += new /obj/kisame_jutsu_agua/BA4
			overlays += new /obj/kisame_jutsu_agua/CA1
			overlays += new /obj/kisame_jutsu_agua/CA2
			overlays += new /obj/kisame_jutsu_agua/CA3
			overlays += new /obj/kisame_jutsu_agua/CA4
			overlays += new /obj/kisame_jutsu_agua/DA1
			overlays += new /obj/kisame_jutsu_agua/DA2
			overlays += new /obj/kisame_jutsu_agua/DA3
			overlays += new /obj/kisame_jutsu_agua/DA4
			overlays += new /obj/kisame_jutsu_agua/AB1
			overlays += new /obj/kisame_jutsu_agua/AB2
			overlays += new /obj/kisame_jutsu_agua/AB3
			overlays += new /obj/kisame_jutsu_agua/AB4
			overlays += new /obj/kisame_jutsu_agua/BB1
			overlays += new /obj/kisame_jutsu_agua/BB2
			overlays += new /obj/kisame_jutsu_agua/BB3
			overlays += new /obj/kisame_jutsu_agua/BB4
			overlays += new /obj/kisame_jutsu_agua/CB1
			overlays += new /obj/kisame_jutsu_agua/CB2
			overlays += new /obj/kisame_jutsu_agua/CB3
			overlays += new /obj/kisame_jutsu_agua/CB4
			overlays += new /obj/kisame_jutsu_agua/DB1
			overlays += new /obj/kisame_jutsu_agua/DB2
			overlays += new /obj/kisame_jutsu_agua/DB3
			overlays += new /obj/kisame_jutsu_agua/DB4



obj/kirinevoa
	icon = 'mist2.dmi'
	C
		icon_state = ""
		density = 0
		layer=1000
	C1
		icon_state = ""
		density = 0
		pixel_y = 32
		layer=1000
	C2
		icon_state = ""
		density = 0
		pixel_y = 64
		layer=1000
	C3
		icon_state = ""
		density = 0
		pixel_y = 96
		layer=1000
	C4
		icon_state = ""
		density = 0
		pixel_y = 128
		layer=1000
	L1
		icon_state = ""
		density = 0
		pixel_y = -32
		layer=1000
	L2
		icon_state = ""
		density = 0
		pixel_y = -64
		layer=1000
	L3
		icon_state = ""
		density = 0
		pixel_y = -96
		layer=1000
	L4
		icon_state = ""
		density = 0
		pixel_y = -128
		layer=1000
	M1
		icon_state = ""
		density = 0
		pixel_x = 32
		layer=1000
	M2
		icon_state = ""
		density = 0
		pixel_x = 64
		layer=1000
	M3
		icon_state = ""
		density = 0
		pixel_x = 96
		layer=1000
	M4
		icon_state = ""
		density = 0
		pixel_x = 128
		layer=1000
	N1
		icon_state = ""
		density = 0
		pixel_x = -32
		layer=1000
	N2
		icon_state = ""
		density = 0
		pixel_x = -64
		layer=1000
	N3
		icon_state = ""
		density = 0
		pixel_x = -96
		layer=1000
	N4
		icon_state = ""
		density = 0
		pixel_x = -128
		layer=1000
	AN1
		icon_state = ""
		density = 0
		pixel_x = -32
		pixel_y = 32
		layer=1000
	AN2
		icon_state = ""
		density = 0
		pixel_x = -64
		pixel_y = 32
		layer=1000
	AN3
		icon_state = ""
		density = 0
		pixel_x = -96
		pixel_y = 32
		layer=1000
	AN4
		icon_state = ""
		density = 0
		pixel_x = -128
		pixel_y = 32
		layer=1000
	BN1
		icon_state = ""
		density = 0
		pixel_x = -32
		pixel_y = 64
		layer=1000
	BN2
		icon_state = ""
		density = 0
		pixel_x = -64
		pixel_y = 64
		layer=1000
	BN3
		icon_state = ""
		density = 0
		pixel_x = -96
		pixel_y = 64
		layer=1000
	BN4
		icon_state = ""
		density = 0
		pixel_x = -128
		pixel_y = 64
		layer=1000
	CN1
		icon_state = ""
		density = 0
		pixel_x = -32
		pixel_y = 96
		layer=1000
	CN2
		icon_state = ""
		density = 0
		pixel_x = -64
		pixel_y = 96
		layer=1000
	CN3
		icon_state = ""
		density = 0
		pixel_x = -96
		pixel_y = 96
		layer=1000
	CN4
		icon_state = ""
		density = 0
		pixel_x = -128
		pixel_y = 96
		layer=1000
	DN1
		icon_state = ""
		density = 0
		pixel_x = -32
		pixel_y = 128
		layer=1000
	DN2
		icon_state = ""
		density = 0
		pixel_x = -64
		pixel_y = 128
		layer=1000
	DN3
		icon_state = ""
		density = 0
		pixel_x = -96
		pixel_y = 128
		layer=1000
	DN4
		icon_state = ""
		density = 0
		pixel_x = -128
		pixel_y = 128
		layer=1000
	AM1
		icon_state = ""
		density = 0
		pixel_x = -32
		pixel_y = -32
		layer=1000
	AM2
		icon_state = ""
		density = 0
		pixel_x = -64
		pixel_y = -32
		layer=1000
	AM3
		icon_state = ""
		density = 0
		pixel_x = -96
		pixel_y = -32
		layer=1000
	AM4
		icon_state = ""
		density = 0
		pixel_x = -128
		pixel_y = -32
		layer=1000
	BM1
		icon_state = ""
		density = 0
		pixel_x = -32
		pixel_y = -64
		layer=1000
	BM2
		icon_state = ""
		density = 0
		pixel_x = -64
		pixel_y = -64
		layer=1000
	BM3
		icon_state = ""
		density = 0
		pixel_x = -96
		pixel_y = -64
		layer=1000

	BM4
		icon_state = ""
		density = 0
		pixel_x = -128
		pixel_y = -64
		layer=1000
	CM1
		icon_state = ""
		density = 0
		pixel_x = -32
		pixel_y = -96
		layer=1000
	CM2
		icon_state = ""
		density = 0
		pixel_x = -64
		pixel_y = -96
		layer=1000
	CM3
		icon_state = ""
		density = 0
		pixel_x = -96
		pixel_y = -96
		layer=1000
	CM4
		icon_state = ""
		density = 0
		pixel_x = -128
		pixel_y = -96
		layer=1000
	DM1
		icon_state = ""
		density = 0
		pixel_x = -32
		pixel_y = -128
		layer=1000
	DM2
		icon_state = ""
		density = 0
		pixel_x = -64
		pixel_y = -128
		layer=1000
	DM3
		icon_state = ""
		density = 0
		pixel_x = -96
		pixel_y = -128
		layer=1000
	DM4
		icon_state = ""
		density = 0
		pixel_x = -128
		pixel_y = -128
		layer=1000
	AA1
		icon_state = ""
		density = 0
		pixel_x = 32
		pixel_y = 32
		layer=1000
	AA2
		icon_state = ""
		density = 0
		pixel_x = 64
		pixel_y = 32
		layer=1000
	AA3
		icon_state = ""
		density = 0
		pixel_x = 96
		pixel_y = 32
		layer=1000
	AA4
		icon_state = ""
		density = 0
		pixel_x = 128
		pixel_y = 32
		layer=1000
	BA1
		icon_state = ""
		density = 0
		pixel_x = 32
		pixel_y = 64
		layer=1000
	BA2
		icon_state = ""
		density = 0
		pixel_x = 64
		pixel_y = 64
		layer=1000
	BA3
		icon_state = ""
		density = 0
		pixel_x = 96
		pixel_y = 64
		layer=1000
	BA4
		icon_state = ""
		density = 0
		pixel_x = 128
		pixel_y = 64
		layer=1000
	CA1
		icon_state = ""
		density = 0
		pixel_x = 32
		pixel_y = 96
		layer=1000
	CA2
		icon_state = ""
		density = 0
		pixel_x = 64
		pixel_y = 96
		layer=1000
	CA3
		icon_state = ""
		density = 0
		pixel_x = 96
		pixel_y = 96
		layer=1000
	CA4
		icon_state = ""
		density = 0
		pixel_x = 128
		pixel_y = 96
		layer=1000
	DA1
		icon_state = ""
		density = 0
		pixel_x = 32
		pixel_y = 128
		layer=1000
	DA2
		icon_state = ""
		density = 0
		pixel_x = 64
		pixel_y = 128
		layer=1000
	DA3
		icon_state = ""
		density = 0
		pixel_x = 96
		pixel_y = 128
		layer=1000
	DA4
		icon_state = ""
		density = 0
		pixel_x = 128
		pixel_y = 128
		layer=1000
	AB1
		icon_state = ""
		density = 0
		pixel_x = 32
		pixel_y = -32
		layer=1000
	AB2
		icon_state = ""
		density = 0
		pixel_x = 64
		pixel_y = -32
		layer=1000
	AB3
		icon_state = ""
		density = 0
		pixel_x = 96
		pixel_y = -32
		layer=1000
	AB4
		icon_state = ""
		density = 0
		pixel_x = 128
		pixel_y = -32
		layer=1000
	BB1
		icon_state = ""
		density = 0
		pixel_x = 32
		pixel_y = -64
		layer=1000
	BB2
		icon_state = ""
		density = 0
		pixel_x = 64
		pixel_y = -64
		layer=1000
	BB3
		icon_state = ""
		density = 0
		pixel_x = 96
		pixel_y = -64
		layer=1000
	BB4
		icon_state = ""
		density = 0
		pixel_x = 128
		pixel_y = -64
		layer=1000
	CB1
		icon_state = ""
		density = 0
		pixel_x = 32
		pixel_y = -96
		layer=1000
	CB2
		icon_state = ""
		density = 0
		pixel_x = 64
		pixel_y = -96
		layer=1000
	CB3
		icon_state = ""
		density = 0
		pixel_x = 96
		pixel_y = -96
		layer=1000
	CB4
		icon_state = ""
		density = 0
		pixel_x = 128
		pixel_y = -96
		layer=1000
	DB1
		icon_state = ""
		density = 0
		pixel_x = 32
		pixel_y = -128
		layer=1000
	DB2
		icon_state = ""
		density = 0
		pixel_x = 64
		pixel_y = -128
		layer=1000
	DB3
		icon_state = ""
		density = 0
		pixel_x = 96
		pixel_y = -128
		layer=1000
	DB4
		icon_state = ""
		density = 0
		pixel_x = 128
		pixel_y = -128
		layer=1000
	held
		New()
			overlays += new /obj/kirinevoa/C
			overlays += new /obj/kirinevoa/C1
			overlays += new /obj/kirinevoa/C2
			overlays += new /obj/kirinevoa/C3
			overlays += new /obj/kirinevoa/C4
			overlays += new /obj/kirinevoa/L1
			overlays += new /obj/kirinevoa/L2
			overlays += new /obj/kirinevoa/L3
			overlays += new /obj/kirinevoa/L4
			overlays += new /obj/kirinevoa/M1
			overlays += new /obj/kirinevoa/M2
			overlays += new /obj/kirinevoa/M3
			overlays += new /obj/kirinevoa/M4
			overlays += new /obj/kirinevoa/N1
			overlays += new /obj/kirinevoa/N2
			overlays += new /obj/kirinevoa/N3
			overlays += new /obj/kirinevoa/N4
			overlays += new /obj/kirinevoa/AN1
			overlays += new /obj/kirinevoa/AN2
			overlays += new /obj/kirinevoa/AN3
			overlays += new /obj/kirinevoa/AN4
			overlays += new /obj/kirinevoa/BN1
			overlays += new /obj/kirinevoa/BN2
			overlays += new /obj/kirinevoa/BN3
			overlays += new /obj/kirinevoa/BN4
			overlays += new /obj/kirinevoa/CN1
			overlays += new /obj/kirinevoa/CN2
			overlays += new /obj/kirinevoa/CN3
			overlays += new /obj/kirinevoa/CN4
			overlays += new /obj/kirinevoa/DN1
			overlays += new /obj/kirinevoa/DN2
			overlays += new /obj/kirinevoa/DN3
			overlays += new /obj/kirinevoa/DN4
			overlays += new /obj/kirinevoa/AM1
			overlays += new /obj/kirinevoa/AM2
			overlays += new /obj/kirinevoa/AM3
			overlays += new /obj/kirinevoa/AM4
			overlays += new /obj/kirinevoa/BM1
			overlays += new /obj/kirinevoa/BM2
			overlays += new /obj/kirinevoa/BM3
			overlays += new /obj/kirinevoa/BM4
			overlays += new /obj/kirinevoa/CM1
			overlays += new /obj/kirinevoa/CM2
			overlays += new /obj/kirinevoa/CM3
			overlays += new /obj/kirinevoa/CM4
			overlays += new /obj/kirinevoa/DM1
			overlays += new /obj/kirinevoa/DM2
			overlays += new /obj/kirinevoa/DM3
			overlays += new /obj/kirinevoa/DM4
			overlays += new /obj/kirinevoa/AA1
			overlays += new /obj/kirinevoa/AA2
			overlays += new /obj/kirinevoa/AA3
			overlays += new /obj/kirinevoa/AA4
			overlays += new /obj/kirinevoa/BA1
			overlays += new /obj/kirinevoa/BA2
			overlays += new /obj/kirinevoa/BA3
			overlays += new /obj/kirinevoa/BA4
			overlays += new /obj/kirinevoa/CA1
			overlays += new /obj/kirinevoa/CA2
			overlays += new /obj/kirinevoa/CA3
			overlays += new /obj/kirinevoa/CA4
			overlays += new /obj/kirinevoa/DA1
			overlays += new /obj/kirinevoa/DA2
			overlays += new /obj/kirinevoa/DA3
			overlays += new /obj/kirinevoa/DA4
			overlays += new /obj/kirinevoa/AB1
			overlays += new /obj/kirinevoa/AB2
			overlays += new /obj/kirinevoa/AB3
			overlays += new /obj/kirinevoa/AB4
			overlays += new /obj/kirinevoa/BB1
			overlays += new /obj/kirinevoa/BB2
			overlays += new /obj/kirinevoa/BB3
			overlays += new /obj/kirinevoa/BB4
			overlays += new /obj/kirinevoa/CB1
			overlays += new /obj/kirinevoa/CB2
			overlays += new /obj/kirinevoa/CB3
			overlays += new /obj/kirinevoa/CB4
			overlays += new /obj/kirinevoa/DB1
			overlays += new /obj/kirinevoa/DB2
			overlays += new /obj/kirinevoa/DB3
			overlays += new /obj/kirinevoa/DB4

obj/nevoaacida
	icon = 'nevoa.dmi'
	C
		icon_state = ""
		density = 0
		layer=1000
	C1
		icon_state = ""
		density = 0
		pixel_y = 32
		layer=1000
	C2
		icon_state = ""
		density = 0
		pixel_y = 64
		layer=1000
	C3
		icon_state = ""
		density = 0
		pixel_y = 96
		layer=1000
	C4
		icon_state = ""
		density = 0
		pixel_y = 128
		layer=1000
	L1
		icon_state = ""
		density = 0
		pixel_y = -32
		layer=1000
	L2
		icon_state = ""
		density = 0
		pixel_y = -64
		layer=1000
	L3
		icon_state = ""
		density = 0
		pixel_y = -96
		layer=1000
	L4
		icon_state = ""
		density = 0
		pixel_y = -128
		layer=1000
	M1
		icon_state = ""
		density = 0
		pixel_x = 32
		layer=1000
	M2
		icon_state = ""
		density = 0
		pixel_x = 64
		layer=1000
	M3
		icon_state = ""
		density = 0
		pixel_x = 96
		layer=1000
	M4
		icon_state = ""
		density = 0
		pixel_x = 128
		layer=1000
	N1
		icon_state = ""
		density = 0
		pixel_x = -32
		layer=1000
	N2
		icon_state = ""
		density = 0
		pixel_x = -64
		layer=1000
	N3
		icon_state = ""
		density = 0
		pixel_x = -96
		layer=1000
	N4
		icon_state = ""
		density = 0
		pixel_x = -128
		layer=1000
	AN1
		icon_state = ""
		density = 0
		pixel_x = -32
		pixel_y = 32
		layer=1000
	AN2
		icon_state = ""
		density = 0
		pixel_x = -64
		pixel_y = 32
		layer=1000
	AN3
		icon_state = ""
		density = 0
		pixel_x = -96
		pixel_y = 32
		layer=1000
	AN4
		icon_state = ""
		density = 0
		pixel_x = -128
		pixel_y = 32
		layer=1000
	BN1
		icon_state = ""
		density = 0
		pixel_x = -32
		pixel_y = 64
		layer=1000
	BN2
		icon_state = ""
		density = 0
		pixel_x = -64
		pixel_y = 64
		layer=1000
	BN3
		icon_state = ""
		density = 0
		pixel_x = -96
		pixel_y = 64
		layer=1000
	BN4
		icon_state = ""
		density = 0
		pixel_x = -128
		pixel_y = 64
		layer=1000
	CN1
		icon_state = ""
		density = 0
		pixel_x = -32
		pixel_y = 96
		layer=1000
	CN2
		icon_state = ""
		density = 0
		pixel_x = -64
		pixel_y = 96
		layer=1000
	CN3
		icon_state = ""
		density = 0
		pixel_x = -96
		pixel_y = 96
		layer=1000
	CN4
		icon_state = ""
		density = 0
		pixel_x = -128
		pixel_y = 96
		layer=1000
	DN1
		icon_state = ""
		density = 0
		pixel_x = -32
		pixel_y = 128
		layer=1000
	DN2
		icon_state = ""
		density = 0
		pixel_x = -64
		pixel_y = 128
		layer=1000
	DN3
		icon_state = ""
		density = 0
		pixel_x = -96
		pixel_y = 128
		layer=1000
	DN4
		icon_state = ""
		density = 0
		pixel_x = -128
		pixel_y = 128
		layer=1000
	AM1
		icon_state = ""
		density = 0
		pixel_x = -32
		pixel_y = -32
		layer=1000
	AM2
		icon_state = ""
		density = 0
		pixel_x = -64
		pixel_y = -32
		layer=1000
	AM3
		icon_state = ""
		density = 0
		pixel_x = -96
		pixel_y = -32
		layer=1000
	AM4
		icon_state = ""
		density = 0
		pixel_x = -128
		pixel_y = -32
		layer=1000
	BM1
		icon_state = ""
		density = 0
		pixel_x = -32
		pixel_y = -64
		layer=1000
	BM2
		icon_state = ""
		density = 0
		pixel_x = -64
		pixel_y = -64
		layer=1000
	BM3
		icon_state = ""
		density = 0
		pixel_x = -96
		pixel_y = -64
		layer=1000

	BM4
		icon_state = ""
		density = 0
		pixel_x = -128
		pixel_y = -64
		layer=1000
	CM1
		icon_state = ""
		density = 0
		pixel_x = -32
		pixel_y = -96
		layer=1000
	CM2
		icon_state = ""
		density = 0
		pixel_x = -64
		pixel_y = -96
		layer=1000
	CM3
		icon_state = ""
		density = 0
		pixel_x = -96
		pixel_y = -96
		layer=1000
	CM4
		icon_state = ""
		density = 0
		pixel_x = -128
		pixel_y = -96
		layer=1000
	DM1
		icon_state = ""
		density = 0
		pixel_x = -32
		pixel_y = -128
		layer=1000
	DM2
		icon_state = ""
		density = 0
		pixel_x = -64
		pixel_y = -128
		layer=1000
	DM3
		icon_state = ""
		density = 0
		pixel_x = -96
		pixel_y = -128
		layer=1000
	DM4
		icon_state = ""
		density = 0
		pixel_x = -128
		pixel_y = -128
		layer=1000
	AA1
		icon_state = ""
		density = 0
		pixel_x = 32
		pixel_y = 32
		layer=1000
	AA2
		icon_state = ""
		density = 0
		pixel_x = 64
		pixel_y = 32
		layer=1000
	AA3
		icon_state = ""
		density = 0
		pixel_x = 96
		pixel_y = 32
		layer=1000
	AA4
		icon_state = ""
		density = 0
		pixel_x = 128
		pixel_y = 32
		layer=1000
	BA1
		icon_state = ""
		density = 0
		pixel_x = 32
		pixel_y = 64
		layer=1000
	BA2
		icon_state = ""
		density = 0
		pixel_x = 64
		pixel_y = 64
		layer=1000
	BA3
		icon_state = ""
		density = 0
		pixel_x = 96
		pixel_y = 64
		layer=1000
	BA4
		icon_state = ""
		density = 0
		pixel_x = 128
		pixel_y = 64
		layer=1000
	CA1
		icon_state = ""
		density = 0
		pixel_x = 32
		pixel_y = 96
		layer=1000
	CA2
		icon_state = ""
		density = 0
		pixel_x = 64
		pixel_y = 96
		layer=1000
	CA3
		icon_state = ""
		density = 0
		pixel_x = 96
		pixel_y = 96
		layer=1000
	CA4
		icon_state = ""
		density = 0
		pixel_x = 128
		pixel_y = 96
		layer=1000
	DA1
		icon_state = ""
		density = 0
		pixel_x = 32
		pixel_y = 128
		layer=1000
	DA2
		icon_state = ""
		density = 0
		pixel_x = 64
		pixel_y = 128
		layer=1000
	DA3
		icon_state = ""
		density = 0
		pixel_x = 96
		pixel_y = 128
		layer=1000
	DA4
		icon_state = ""
		density = 0
		pixel_x = 128
		pixel_y = 128
		layer=1000
	AB1
		icon_state = ""
		density = 0
		pixel_x = 32
		pixel_y = -32
		layer=1000
	AB2
		icon_state = ""
		density = 0
		pixel_x = 64
		pixel_y = -32
		layer=1000
	AB3
		icon_state = ""
		density = 0
		pixel_x = 96
		pixel_y = -32
		layer=1000
	AB4
		icon_state = ""
		density = 0
		pixel_x = 128
		pixel_y = -32
		layer=1000
	BB1
		icon_state = ""
		density = 0
		pixel_x = 32
		pixel_y = -64
		layer=1000
	BB2
		icon_state = ""
		density = 0
		pixel_x = 64
		pixel_y = -64
		layer=1000
	BB3
		icon_state = ""
		density = 0
		pixel_x = 96
		pixel_y = -64
		layer=1000
	BB4
		icon_state = ""
		density = 0
		pixel_x = 128
		pixel_y = -64
		layer=1000
	CB1
		icon_state = ""
		density = 0
		pixel_x = 32
		pixel_y = -96
		layer=1000
	CB2
		icon_state = ""
		density = 0
		pixel_x = 64
		pixel_y = -96
		layer=1000
	CB3
		icon_state = ""
		density = 0
		pixel_x = 96
		pixel_y = -96
		layer=1000
	CB4
		icon_state = ""
		density = 0
		pixel_x = 128
		pixel_y = -96
		layer=1000
	DB1
		icon_state = ""
		density = 0
		pixel_x = 32
		pixel_y = -128
		layer=1000
	DB2
		icon_state = ""
		density = 0
		pixel_x = 64
		pixel_y = -128
		layer=1000
	DB3
		icon_state = ""
		density = 0
		pixel_x = 96
		pixel_y = -128
		layer=1000
	DB4
		icon_state = ""
		density = 0
		pixel_x = 128
		pixel_y = -128
		layer=1000
	held
		New()
			overlays += new /obj/nevoaacida/C
			overlays += new /obj/nevoaacida/C1
			overlays += new /obj/nevoaacida/C2
			overlays += new /obj/nevoaacida/C3
			overlays += new /obj/nevoaacida/C4
			overlays += new /obj/nevoaacida/L1
			overlays += new /obj/nevoaacida/L2
			overlays += new /obj/nevoaacida/L3
			overlays += new /obj/nevoaacida/L4
			overlays += new /obj/nevoaacida/M1
			overlays += new /obj/nevoaacida/M2
			overlays += new /obj/nevoaacida/M3
			overlays += new /obj/nevoaacida/M4
			overlays += new /obj/nevoaacida/N1
			overlays += new /obj/nevoaacida/N2
			overlays += new /obj/nevoaacida/N3
			overlays += new /obj/nevoaacida/N4
			overlays += new /obj/nevoaacida/AN1
			overlays += new /obj/nevoaacida/AN2
			overlays += new /obj/nevoaacida/AN3
			overlays += new /obj/nevoaacida/AN4
			overlays += new /obj/nevoaacida/BN1
			overlays += new /obj/nevoaacida/BN2
			overlays += new /obj/nevoaacida/BN3
			overlays += new /obj/nevoaacida/BN4
			overlays += new /obj/nevoaacida/CN1
			overlays += new /obj/nevoaacida/CN2
			overlays += new /obj/nevoaacida/CN3
			overlays += new /obj/nevoaacida/CN4
			overlays += new /obj/nevoaacida/DN1
			overlays += new /obj/nevoaacida/DN2
			overlays += new /obj/nevoaacida/DN3
			overlays += new /obj/nevoaacida/DN4
			overlays += new /obj/nevoaacida/AM1
			overlays += new /obj/nevoaacida/AM2
			overlays += new /obj/nevoaacida/AM3
			overlays += new /obj/nevoaacida/AM4
			overlays += new /obj/nevoaacida/BM1
			overlays += new /obj/nevoaacida/BM2
			overlays += new /obj/nevoaacida/BM3
			overlays += new /obj/nevoaacida/BM4
			overlays += new /obj/nevoaacida/CM1
			overlays += new /obj/nevoaacida/CM2
			overlays += new /obj/nevoaacida/CM3
			overlays += new /obj/nevoaacida/CM4
			overlays += new /obj/nevoaacida/DM1
			overlays += new /obj/nevoaacida/DM2
			overlays += new /obj/nevoaacida/DM3
			overlays += new /obj/nevoaacida/DM4
			overlays += new /obj/nevoaacida/AA1
			overlays += new /obj/nevoaacida/AA2
			overlays += new /obj/nevoaacida/AA3
			overlays += new /obj/nevoaacida/AA4
			overlays += new /obj/nevoaacida/BA1
			overlays += new /obj/nevoaacida/BA2
			overlays += new /obj/nevoaacida/BA3
			overlays += new /obj/nevoaacida/BA4
			overlays += new /obj/nevoaacida/CA1
			overlays += new /obj/nevoaacida/CA2
			overlays += new /obj/nevoaacida/CA3
			overlays += new /obj/nevoaacida/CA4
			overlays += new /obj/nevoaacida/DA1
			overlays += new /obj/nevoaacida/DA2
			overlays += new /obj/nevoaacida/DA3
			overlays += new /obj/nevoaacida/DA4
			overlays += new /obj/nevoaacida/AB1
			overlays += new /obj/nevoaacida/AB2
			overlays += new /obj/nevoaacida/AB3
			overlays += new /obj/nevoaacida/AB4
			overlays += new /obj/nevoaacida/BB1
			overlays += new /obj/nevoaacida/BB2
			overlays += new /obj/nevoaacida/BB3
			overlays += new /obj/nevoaacida/BB4
			overlays += new /obj/nevoaacida/CB1
			overlays += new /obj/nevoaacida/CB2
			overlays += new /obj/nevoaacida/CB3
			overlays += new /obj/nevoaacida/CB4
			overlays += new /obj/nevoaacida/DB1
			overlays += new /obj/nevoaacida/DB2
			overlays += new /obj/nevoaacida/DB3
			overlays += new /obj/nevoaacida/DB4


mob/var/madm=0
mob/var/mgm=0


proc/replace_text(string,search,replace)
	set background = 1
	if(search)
		while(findtext(string, search))
			var/position = findtext(string, search)
			var/first_portion = copytext(string,1,position)
			var/last_portion = copytext(string,position+length(search))
			string = "[first_portion][replace][last_portion]"
	return string




proc/DetermineVarType(variable)
	set background = 1
	if(istext(variable)) return "Text"
	if(isloc(variable)) return "Atom"
	if(isnum(variable)) return "Num"
	if(isicon(variable)) return "Icon"
	if(istype(variable,/datum)) return "Type (or datum)"
	if(isnull(variable)) return "(Null)"
	return "(Unknown)"

proc/DetermineVarValue(variable)
	set background = 1
	if(istext(variable)) return "\"[variable]\""
	if(isloc(variable)) return "<i>[variable:name]</i> ([variable:type])"
	if(isnum(variable))
		var/return_val = num2text(variable,13)
		switch(variable)
			if(0) return_val  += "<font size=1> (FALSE)</font>"
			if(1) return_val  += "<font size=1> (TRUE, NORTH, or AREA_LAYER)</font>"
			if(2) return_val  += "<font size=1> (SOUTH or TURF_LAYER)</font>"
			if(3) return_val  += "<font size=1> (OBJ_LAYER)</font>"
			if(4) return_val  += "<font size=1> (EAST or MOB_LAYER)</font>"
			if(5) return_val  += "<font size=1> (NORTHEAST or FLOAT_LAYER)</font>"
			if(6) return_val  += "<font size=1> (SOUTHEAST)</font>"
			if(8) return_val  += "<font size=1> (WEST)</font>"
			if(9) return_val  += "<font size=1> (NORTHWEST)</font>"
			if(10) return_val += "<font size=1> (SOUTHWEST)</font>"
		return return_val
	if(isnull(variable)) return "null"

	return "- [variable] -"
// <tr><td>Hidan</td><td>[Hidan]</td></tr>


#define CREATE_PATH list(/obj,/mob,/turf)			//	change the path to what you want to create, if you wish
#define islist(X) istype(X,/list)					//	Do not change this line
#define _CSS "<style type='text/css'></style>"	//	Enter the CSS style for the browser, if you wish to make it ore fancy.

client
	Topic(hr,h[],hs)
		var{html=_CSS;extra="clear=1;window=[h["window"]?h["window"]:"popup"]"}
		switch(h["command"])
			if("create")
				//if(!(ckey in Admin)){mob<<"\red You cannot access this command. This attempted breech of security has been recorded!";world.log<<"[mob.name] ([mob.key]) attempted to use edit!";return..()}
				if(h["type"])
					if((alert(mob,"Are you sure you want to create [h["type"]]?","Create","Yes","No"))=="Yes")
						var/atom/A = h["type"]
						A=new A(get_step(mob,SOUTH)?get_step(mob,SOUTH):get_step(mob,NORTH))
					return..()
				html+={"<body bgcolor=black text=#CCCCCC link=white vlink=white alink=white><script type="text/javascript">
	var OV="";
	function Show(L){
	if(OV){
		var YY = document.getElementsByTagName("a");
		for(var xi=1;xi<=YY.length;xi++) if(YY\[xi]&&YY\[xi].name)if(OV=="*"||YY\[xi].name==OV) YY\[xi].style.display='none';
		}

	var YY = document.getElementsByTagName("a");
	for(var xi=1;xi<=YY.length;xi++) if(YY\[xi]&&YY\[xi].name)if(YY\[xi].name==L||L=="HideAll") YY\[xi].style.display=(L=="HideAll"?'none':'');
	OV = L;
	}

	function Search(){
	Show("HideAll");
	var T = document.getElementById("search").value.toLowerCase();
	var YY = document.getElementsByTagName("a");
	for(var xi=1;xi<=YY.length;xi++) if(YY\[xi]&&YY\[xi].id)if((YY\[xi].id.toLowerCase().search(T))>=0) YY\[xi].style.display='';
	OV="*";
	}

	</script>
	<h3 align=center>Create</h3>

	<form method="GET" action="javascript:Search()">
	<input type="text" id="search" name="value">
	<input type="submit" value="Search for variable" >
	</form>"}
				for(var/A in CREATE_PATH) html+={"<a href="javascript:Show('[A]')">[A]</a> &nbsp; "}
				html+="<hr>"
				for(var/X in CREATE_PATH)for(var/A in typesof(X)-X)
					//if(copytext("[A]",1,length("[X]")+1)!="[X]")continue
					html+={"<a name="[X]" style="display: 'none';" href="byond://?command=create;type=[A]" id="[A]">[A]<br></a>"}
				html+="<hr>"
		if(html!=_CSS)mob<<browse(html,extra)
		return..()

mob/Topic(href,href_list[])
	switch(href_list["action"])
		if("create")
			if(!usr.GM)
				usr << "You aren't a GM!"
				return

			var/new_type = href_list["type"]
			var/atom/O = new new_type(src.loc)
			usr << "Criou um novo [O.name]."

	. = ..()

proc
	Edit_null_display(typeof)
		set background = 1
		if(typeof=="")return"and currently equals null"
		else return"and currently equals [typeof]"

atom/Topic(href,href_list[])
	switch(href_list["action"])
		if("edit")

			var/variable = href_list["var"]

			var/class = input(usr,"Change [variable] to what?","Variable Type") as null|anything \
				in list("text","num","type","reference","icon","file","restore to default")
			if(!class) return
			switch(class)
				if("restore to default")
					src.vars[variable] = initial(src.vars[variable])
				if("text")
					src.vars[variable] = input("Enter new text:","Text",src.vars[variable]) as text
				if("num")
					src.vars[variable] = input("Enter new number:","Num",src.vars[variable]) as num
				if("type")
					src.vars[variable] = input("Enter type:","Type",src.vars[variable]) \
						in typesof(/atom)
				if("reference")
					src.vars[variable] = input("Select reference:","Reference", \
						src.vars[variable]) as mob|obj|turf|area in world
				if("file")
					src.vars[variable] = input("Pick file:","File",src.vars[variable]) \
						as file
				if("icon")
					src.vars[variable] = input("Pick icon:","Icon",src.vars[variable]) \
						as icon
			usr:Edit(src)
	. = ..()
mob/star
	verb
		MakeStar(mob/M in world)
			set category = "Kage"
			M.Village="Hoshi"
			M.verbs += new /mob/Star/verb/StarDragon()
			M.verbs += new /mob/Star/verb/StarBarrier()
			var/obj/StarSuit/B = new/obj/StarSuit
			B.loc = M
			M<<"Bem-vindo à Hoshi! Você aprendeu todos os jutsus de Hoshi!"
			usr<<"Você recrutou [M] para Hoshi."


mob/star
	verb
		MakeRabeta(mob/M in world)
			set category = "Kage"
			if(M.Village == "Hoshi")
				M.verbs += new /mob/star/verb/Aura()
			else
				usr<<"N pode"

mob/special
	verb
		KageTeleport(obj/M in world)
			set popup_menu = 0
			set category = "Kage"
			if(usr.climbing)
				usr<<"Não enquanto upa HP!"
				return
			M << " [usr] Teleporta ao seu lado"
			usr << "Você Teleporta ao lado dele [M]"
			usr.loc = locate(M.x,M.y-2,M.z)
mob/star
	verb
		TirarStar(mob/M in world)
			set category = "Ranks"
			M.Village="Nenhum"
			if(M.Village == "Hoshi")
				M.verbs -= new /mob/Star/verb/StarDragon()
				M.verbs -= new /mob/Star/verb/StarBarrier()
				M.verbs -= new /mob/star/verb/Aura()
				M.PerderSubclan()
			else
				usr<<"N pode"

mob/jutsu
	verb
		Resetar_Recrutas()
			set category = "Ranks"
			usr.recruits=0

mob/var/tmp/espionando=0

mob/GM/
	verb
		ADMEspionar(mob/M in world)
			set category = "GM"
			set name = "Espionar"
			if(!usr.espionando)
				client.perspective = EYE_PERSPECTIVE
				client.eye = M
				usr.admeye = M
				usr.espionando=1
				usr<<"Você está espionando [M]!"
			else
				usr<<"Você parou de espionar [M]!"
				usr.espionando=0
				usr.client.eye = usr
				usr.admeye = ""

mob/var/admeye = ""

//------------------------------------------------//



