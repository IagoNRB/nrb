

obj/Tesouro
	TicketRename
		name = "Ticket Renomear"
		icon = 'ts.dmi'
		icon_state="Tred"
		worn = 0
		price = 9999999999999999999999
		verb
			Olhar()
				usr<<"Este é um Ticket de Renomear seu personagem. Ao utilizar este ticket você poderá escolher outro nome!"
			Descartar()
				if(src:worn == 1)
					usr << "Não enquanto você o usa."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.AutoSave()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"
			Destruir()
				usr<<"Você destruiu o [src]"
				del(src)
			Usar()
				usr.nomeantigo = usr.name
				var/nome=null
				var/list/L
				L = list("font size","big","small")
				var/list/C
				C = list("font color")
				var/config = "065-090&097-122&095&032"
				while(!asciifilter(nome,config)||nome == null)nome = input("Escolha seu novo nome","Ticket Rename") as text
				if(!nome)
					alert("Seu nome não pode ficar em branco!")
					return
				if(usr.treinotaiafk||usr.treinogenafk||usr.treinoninafk||usr.treinoarmafk)
					usr<<"Não pode renomear enquanto treina AFK!"
					return
				if(nome==usr.key)
					alert("Seu nome não pode ser igual a seu Key do BYOND")
					return
				for(var/X in L)
					if(findtext(nome,X))
						alert("Você não pode alterar o tamanho do nome!")
						return
				for(var/X in C)
					if(findtext(nome,X))
						alert("Você não pode colorir o nome!")
						return
				if(length(nome) <= 2)
					alert("Seu nome não pode ser menor que 2 caracteres")
					return
				if(length(nome) >= 15)
					alert("Seu nome não pode ser maior que 15 caracteres")
					return
				switch(input("Você deseja carregar o nome do seu clã?") in list ("Sim", "Não", "Mudar o nome"))
					if("Sim")
						if(usr.Uchiha)
							usr.name = "Uchiha [nome]"
						if(usr.Uzumaki)
							usr.name="Uzumaki [nome]"
						if(usr.Haku)
							usr.name="Koori [nome]"
						if(usr.Gaaraclan)
							usr.name="Sabaku no [nome]"
						if(usr.Shodaime)
							usr.name="Senju [nome]"
						if(usr.Aburame)
							usr.name="Aburame [nome]"
						if(usr.Nara)
							usr.name="Nara [nome]"
						if(usr.Kaguya)
							usr.name="Kaguya [nome]"
						if(usr.Yamanaka)
							usr.name="Yamanaka [nome]"
						if(usr.Inuzuka)
							usr.name="Inuzuka [nome]"
						if(usr.Hyuuga)
							usr.name="Hyuuga [nome]"
						if(usr.Akimichi)
							usr.name="Akimichi [nome]"
					if("Não")
						usr<<"Esconda bem as suas habilidades. Sua vida pode depender disso"
						usr.name = nome
					if("Mudar o nome")
						usr<<"Escolha outro nome"
						return
				usr<<"Você mudou seu nome de [usr.nomeantigo] para [usr.name]"
				text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) trocou seu nome de <b>[usr.nomeantigo]</b> para <b>[usr.name]</b> <BR>","NameLog.html")
				del(src)