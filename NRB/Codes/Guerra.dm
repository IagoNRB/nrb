
//=============================== Duelos ============================================

mob/var
	NoDuelo = 0
	OEquipe
	BandeiraVermelha = 0
	BandeiraAzul = 0
var
	DueloLigado = 0
	BandeiraPega = 0
	TempoDuelo = 0
	GNoDuelo = 0
mob
	verb
		ComecarDuelo()
			set category = "Arena"
			set hidden = 1
			usr<<"Desabilitado temporariamente!"
			return
			if(usr.jailed==1)
				usr<<"Não se você estiver preso."
				return
			if(usr.inizanami)
				usr<<"Você precisa sair da dimensão primeiro!"
				return
			if(DueloLigado==1&&GNoDuelo==0)
				DueloLigado=0
			if(usr.NoDuelo==1)
				usr<<"Espere acabar este duelo para começar outro."
				return
			else
				switch(input("De qual Equipe você quer ser no Duelo?",) in list("Vermelha","Azul","Cancelar"))
					if("Vermelha")
						if(DueloLigado==0&&GNoDuelo==0)
							usr.NoDuelo=1
							DueloLigado = 1
							usr.OEquipe = usr.Equipe
							world << "<b>Arena:</b>O [usr] começou um Duelo em Equipes, ele está na equipe <font color=red>vermelha</font> se você quiser participar vá em arena e escolha sua equipe!"
							GNoDuelo = 1
							TempoDuelo = 1
							usr.loc = locate(293,21,8)
							sleep(1200)
							if(GNoDuelo>=4)
								TempoDuelo = 2
								world<<"<b>O Duelo Começou!</b>"
								usr.PK = 1
								usr.Equipe = "<font color=red>Vermelha</font>"
								usr.NoDuelo = 1
								var/obj/BandeiraAzul/B = new/obj/BandeiraAzul
								B.loc = locate(100,17,96)
								var/obj/BandeiraVermelha/C = new/obj/BandeiraVermelha
								C.loc = locate(1,21,96)
							else
								usr.loc = locate(456,174,3)
								usr.cast = 0
								usr.Equipe = usr.OEquipe
								usr.NoDuelo = 0
								TempoDuelo = 0
								GNoDuelo=0
								DueloLigado = 0
								world<<"Ninguém entrou no duelo de equipes, é necessário que alguém entre para que ele ocorra!"
						else
							usr<<"Espere o Duelo que está acontecendo acabar!"
							return
					if("Azul")
						if(DueloLigado==0)
							usr.NoDuelo=1
							DueloLigado = 1
							usr.OEquipe = usr.Equipe
							GNoDuelo = 1
							TempoDuelo = 1
							usr.loc = locate(381,17,8)
							world << "<b>Arena:</b>O [usr] começou um Duelo em Equipes, ele está na equipe <font color=blue>azul</font> se você quiser participar vá em arena e escolha sua equipe!"
							sleep(1200)
							if(GNoDuelo>=4)
								TempoDuelo = 2
								world<<"<b>O Duelo Começou!</b>"
								usr.PK = 1
								usr.Equipe = "<font color=blue>Azul</font>"
								usr.NoDuelo = 1
								var/obj/BandeiraAzul/B = new/obj/BandeiraAzul
								B.loc = locate(100,17,96)
								var/obj/BandeiraVermelha/C = new/obj/BandeiraVermelha
								C.loc = locate(1,21,96)
							else
								usr.loc = locate(456,174,3)
								usr.cast = 0
								usr.Equipe = usr.OEquipe
								usr.NoDuelo = 0
								TempoDuelo = 0
								GNoDuelo=0
								DueloLigado = 0
								world<<"Ninguém entrou no duelo de equipes, é necessário que alguém entre para que ele ocorra!"
						else
							usr<<"Espere o Duelo que está acontecendo acabar!"
							return
					if("Cancelar")
						return

		EntrarDuelo()
			set category = "Arena"
			set hidden = 1
			usr<<"Desabilitado temporariamente!"
			return
			if(usr.jailed==1)
				usr<<"Não se você estiver preso."
				return
			if(usr.inizanami)
				usr<<"Você precisa sair da dimensão primeiro!"
				return
			if(DueloLigado==0)
				usr<<"Não tem nenhum duelo ocorrendo no momento."
				return
			if(usr.NoDuelo==1)
				usr<<"Você já está no duelo!"
				return
			if(usr.NoDuelo==2)
				usr<<"Você não pode entrar em um duelo neste momento!"
				return
			if(DueloLigado==1)
				switch(input("De qual Equipe você quer ser no Duelo?",) in list("Vermelha","Azul","Cancelar"))
					if("Vermelha")
						if(TempoDuelo==1)
							usr.NoDuelo = 1
							world << "<b>Arena:</b>O [usr] entrou no Duelo em Equipes, ele está na equipe <font color=red>vermelha</font>!"
							usr.Equipe = "<font color=red>Vermelha</font>"
							GNoDuelo += 1
							usr<<"Aguarde até o começo do duelo."
							usr.loc = locate(293,21,8)
							usr.PK = 1
						if(TempoDuelo==2)
							usr<<"Espere até o duelo que está acontecendo acabar!"
							return
					if("Azul")
						if(TempoDuelo==1)
							usr.NoDuelo = 1
							world << "<b>Arena:</b>O [usr] entrou no Duelo em Equipes, ele está na equipe <font color=blue>azul</font>!"
							usr.Equipe = "<font color=blue>Azul</font>"
							GNoDuelo += 1
							usr<<"Aguarde até o começo do duelo."
							usr.loc = locate(381,17,8)
							usr.PK = 1
						if(TempoDuelo==2)
							usr<<"Espere até o duelo que está acontecendo acabar!"
							return
					if("Cancelar")
						return
		SairDuelo()
			set category = "Arena"
			set hidden = 1
			usr<<"Desabilitado temporariamente!"
			return
			if(usr.NoDuelo==1)
				if(usr.Equipe=="<font color=red>Vermelha</font>")
					world << "<b>Arena:</b>[usr] saiu do duelo entre equipes desfalcando a equipe <font color=red>Vermelha</font>!"
					usr.NoDuelo = 0
					GNoDuelo -= 1
					for(var/obj/BandeiraVermelha/S in src.contents)
						S.loc = usr.loc
						usr.BandeiraVermelha = 0
					for(var/obj/BandeiraAzul/S in src.contents)
						S.loc = usr.loc
						usr.BandeiraAzul = 0
					usr.loc = locate(456,174,3)
					usr.cast = 0
					usr.Equipe = usr.OEquipe
					PararDuelo()
				if(usr.Equipe=="<font color=blue>Azul</font>")
					world << "<b>Arena:</b>[usr] saiu do duelo entre equipes desfalcando a equipe <font color=blue>Azul</font>!"
					usr.NoDuelo = 0
					GNoDuelo -= 1
					for(var/obj/BandeiraVermelha/S in src.contents)
						S.loc = usr.loc
						usr.BandeiraVermelha = 0
					for(var/obj/BandeiraAzul/S in src.contents)
						S.loc = usr.loc
						usr.BandeiraAzul = 0
					usr.loc = locate(456,174,3)
					usr.cast = 0
					usr.Equipe = usr.OEquipe
					PararDuelo()
				else
					world << "<b>Arena:</b>[usr] saiu do duelo entre equipes!"
					usr.NoDuelo = 0
					GNoDuelo -= 1
					for(var/obj/BandeiraVermelha/S in src.contents)
						S.loc = usr.loc
						usr.BandeiraVermelha = 0
					for(var/obj/BandeiraAzul/S in src.contents)
						S.loc = usr.loc
						usr.BandeiraAzul = 0
					usr.loc = locate(456,174,3)
					usr.cast = 0
					usr.Equipe = usr.OEquipe
					PararDuelo()
			else
				usr<<"Você não está em nenhum duelo!"
				return
mob
	proc
		PararDuelo()
			usr<<"Desabilitado temporariamente!"
			return
			if(GNoDuelo==0&&DueloLigado==1)
				DueloLigado = 0
				TempoDuelo = 0
				world << "<b>Arena:</b>O Duelo entre times acabou!"
				usr.cast = 0
				usr.Equipe = usr.OEquipe
				for(var/obj/BandeiraVermelha/S in world)
					del(S)
				for(var/obj/BandeiraAzul/S in world)
					del(S)
				for(var/mob/M in world)
					if(M.Equipe=="<font color=blue>Azul</font>")
						GNoDuelo=0
						M.loc = locate(456,174,3)
						M.Equipe=M.OEquipe
					if(M.Equipe=="<font color=red>Vermelha</font>")
						GNoDuelo=0
						M.loc = locate(456,174,3)
						M.Equipe=M.OEquipe
turf
	BANDEIRAAZUL
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Equipe=="<font color=blue>Azul</font>")
					if(M.BandeiraVermelha==1)
						for(var/obj/BandeiraVermelha/H in M.contents)
							del(H)
						for(var/obj/BandeiraAzul/S in world)
							del(S)
						M.BandeiraAzul=0
						M.BandeiraVermelha=0
						DueloLigado = 0
						TempoDuelo = 0
						M.NoDuelo = 0
						M.loc = locate(456,174,3)
						M.cast = 0
						M.Equipe = locate(456,174,3)
						M.Equipe = M.OEquipe
						world<<"<b><font color=blue>A Equipe Azul Ganhou!</font></b>"
						for(var/mob/E in world)
							if(E.Equipe=="<font color=blue>Azul</font>")
								GNoDuelo=0
								E.loc = locate(456,174,3)
								E.Equipe=E.OEquipe
							if(E.Equipe=="<font color=red>Vermelha</font>")
								GNoDuelo=0
								E.loc = locate(456,174,3)
								E.Equipe=E.OEquipe
					else
						return 1
				if(M.Equipe=="<font color=red>Vermelha</font>")
					usr<<"Pegue a bandeira azul e corra para sua base!"
					return 1
			else
				if(istype(A,/obj/)) del(A)

turf
	BANDEIRAVERMELHA
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Equipe=="<font color=red>Vermelha</font>")
					if(M.BandeiraAzul==1)
						for(var/obj/BandeiraAzul/H in M.contents)
							del(H)
						for(var/obj/BandeiraVermelha/S in world)
							del(S)
						M.BandeiraAzul=0
						M.BandeiraVermelha=0
						DueloLigado = 0
						TempoDuelo = 0
						M.NoDuelo = 0
						M.loc = locate(456,174,3)
						M.cast = 0
						if(M.Equipe=="<font color=red>Vermelha</font>")
							M.Equipe = locate(456,174,3)
						if(M.Equipe=="<font color=blue>Azul</font>")
							M.Equipe = locate(456,174,3)
						M.Equipe = M.OEquipe
						world<<"<b><font color=red>A Equipe Vermelha Ganhou!</font></b>"
						for(var/mob/E in world)
							if(E.Equipe=="<font color=blue>Azul</font>")
								GNoDuelo=0
								E.loc = locate(456,174,3)
								E.Equipe=E.OEquipe
							if(E.Equipe=="<font color=red>Vermelha</font>")
								GNoDuelo=0
								E.loc = locate(456,174,3)
								E.Equipe=E.OEquipe
					else
						return 1
				if(M.Equipe=="<font color=blue>Azul</font>")
					usr<<"Pegue a bandeira vermelha e corra para sua base!"
					return 1
			else
				if(istype(A,/obj/)) del(A)
obj
	BandeiraAzul
		name = "Bandeira Azul"
		icon = 'BandeiraAzul.dmi'
		verb
			Get()
				set src in oview(1)
				if(usr.Equipe=="<font color=red>Vermelha</font>")
					src.loc = usr
					usr.BandeiraAzul=1
					usr<<"Você pegou a Bandeira Azul! Corra para sua base!"
				if(usr.Equipe=="<font color=blue>Azul</font>")
					if(src.loc==locate(100,17,96))
						usr<<"Você não pode pegar sua bandeira dentro da base!"
					else
						src.loc=locate(100,17,96)
						usr<<"Sua bandeira voltou para o lugar de origem!"
obj
	BandeiraVermelha
		name = "Bandeira Vermelha"
		icon = 'BandeiraVermelha.dmi'
		verb
			Get()
				set src in oview(1)
				if(usr.Equipe=="<font color=blue>Azul</font>")
					src.loc = usr
					usr.BandeiraVermelha=1
					usr<<"Você pegou a Bandeira Vermelha! Corra para sua base!"
				if(usr.Equipe=="<font color=red>Vermelha</font>")
					if(src.loc==locate(1,21,96))
						usr<<"Você não pode pegar sua bandeira dentro da base!"
					else
						src.loc=locate(1,21,96)
						usr<<"Sua bandeira voltou para o lugar de origem!"

turf
	BANDEIRAAZULIN
		icon = 'BANDEIRAAZULIN.dmi'
		icon_state = "IN"
		density = 1
		Enter(A)
			if(ismob(A))
				var/mob/M = A
				if(M.client)
					M.loc=locate(97,17,96)
			else
				if(istype(A,/obj/)) del(A)

turf
	BANDEIRAVERMELHAIN
		icon = 'BANDEIRAVERMELHAIN.dmi'
		icon_state = "IN"
		density = 1
		Enter(A)
			if(ismob(A))
				var/mob/M = A
				if(M.client)
					M.loc=locate(4,21,96)
			else
				if(istype(A,/obj/)) del(A)

turf
	BANDEIRAAZULOUT
		icon = 'BANDEIRAAZULIN.dmi'
		icon_state = "OUT"
		density = 1
		Enter(A)
			if(ismob(A))
				var/mob/M = A
				if(M.client)
					if(TempoDuelo==2)
						M.loc=locate(98,48,94)
					if(TempoDuelo==1)
						M<<"A porta só abrirá quando o duelo começar!"
						return
			else
				if(istype(A,/obj/)) del(A)

turf
	BANDEIRAVERMELHAOUT
		icon = 'BANDEIRAVERMELHAIN.dmi'
		icon_state = "OUT"
		density = 1
		Enter(A)
			if(ismob(A))
				var/mob/M = A
				if(M.client)
					if(TempoDuelo==2)
						M.loc=locate(3,52,93)
					if(TempoDuelo==1)
						M<<"A porta só abrirá quando o duelo começar!"
						return
			else
				if(istype(A,/obj/)) del(A)



mob/var
	Equipe=""

mob/var/name2 = ""

mob/Guerra
	Morto
	icon = 'dead.dmi'