var
	luaproxima


mob/var/
		lualider=0
		luamember=0

mob/ADM
	verb
		Dar_OotsutsukiLeader(mob/M in world)
			set category="Ranks"
			set name = "Dar Lider Lua"
			if(usr.key=="Iago762")
				if(M.Hyuuga&&M.seals>=100)
					var/obj/RoupaOotsutsukiL/S = new()
					S.loc=M
					var/obj/RoupaOotsutsuki/L = new()
					L.loc=M
					world<<"<font size = 2><font color = cyan><center>[M] é o novo Lider Ootsutsuki"
					M.rank="Hamura"
					M.Village="Ootsutsuki-Lua"
					M.lualider=1
					M.luamember=1
					M.squads=1
					if(M.hyuugahinata)
						M.esquadrao="Família Principal"
					if(M.hyuuganeji)
						M.esquadrao="Família Secundária"
					M.verbs += /mob/Lua/verb/InviteL
					M.verbs += /mob/Lua/verb/BootL
					M.verbs += /mob/Lua/verb/LuaVerb
					M.PerderSubclan()
				else
					usr<<"Ele não é Hyuuga ou não é Jounin+."
					return


mob/ADM
	verb
		Tirar_OotsutsukiLeader(mob/M in world)
			set category="Ranks"
			set name = "Tirar Lider Lua"
			if(usr.key=="Iago762")
				if(M.Village=="Ootsutsuki-Lua"&&M.lualider)
					for(var/obj/RoupaOotsutsukiL/S in M) del S
					for(var/obj/RoupaOotsutsuki/L in M) del L
					world<<"<font size = 2><font color = cyan><center>[M] não é mais o Lider Ootsutsuki"
					M.rank="Nukenin"
					M.Village="Nenhum"
					M.lualider=0
					M.luamember=0
					M.esquadrao=""
					M.squads=0
					M.verbs -= /mob/Lua/verb/InviteL
					M.verbs -= /mob/Lua/verb/BootL
					M.verbs -= /mob/Lua/verb/LuaVerb
				else
					usr<<"Ele não é Hyuuga ou não é Jounin+."
					return


mob/Lua
	verb
		InviteL(mob/M in world)
			set category="Ootsutsuki"
			set name="Chamar para a Organização"
			if(src.recruits<7)
				if(M.seals>=100&&M.Hyuuga&&!M.luamember)
					M.Village="Ootsutsuki-Lua"
					M.Village2=""
					var/obj/RoupaOotsutsuki/L = new()
					L.loc=M
					M.luamember=1
					M.squads=1
					M.rank="Membro"
					if(M.hyuugahinata)
						M.esquadrao="Família Principal"
					if(M.hyuuganeji)
						M.esquadrao="Família Secundária"
					src.recruits+=1
					M.PerderSubclan()
				else
					usr<<"Não pode ser feito. Ou ele é mais fraco que um Jounnin ou não é Hyuuga"
			else
				usr<<"Já tem gente demais na Organização!"

mob/Lua
	verb
		BootL(mob/M in world)
			set category="Ootsutsuki"
			set name="Retirar da Organização"
			if(M.Village=="Ootsutsuki-Lua"&&M.luamember)
				M.Village="Nenhum"
				M.rank = "Nukenin"
				M.Village2=""
				M.esquadrao=""
				for(var/obj/RoupaOotsutsuki/L in M) del L
				M.luamember=0
				M.squads=0
				src.recruits-=1
			else
				usr<<"Não pode ser feito. Ele não está na Ootsutsuki"


//=======================Comandos Lua========================================//

mob/var/luadelay=0
mob/Lua
	verb
		LuaVerb()
			set category = "Lua"
			set name = "Aproximar Lua / Afastar Lua"
			if(usr.lualider||usr.key=="Iago762")
				if(!usr.temtenseigan)
					usr<<"Você não tem o Doujutsu Divino da Lua!"
					return
				if(usr.temtenseigan&&!usr.tenseiganon)
					usr<<"Ative o Tenseigan primeiro!"
					return
				if(usr.luadelay)
					usr<<"Aguarde para usar novamente!"
					return
				switch(input("Oque deseja fazer com a Lua?", text) in list ("Aproximar Lua","Afastar Lua"))
					if("Aproximar Lua")
						if(!luaproxima)
							usr<<"Você Aproximou a Lua da Terra!"
							world<<"<center><font color=green>A Lua está mais próxima da Terra! Algo está para acontecer..."
							luaproxima=1
						else
							usr<<"A Lua já está próxima da Terra!"
					if("Afastar Lua")
						if(luaproxima)
							usr<<"Você afastou a Lua da Terra!"
							world<<"<center><font color=green>A Lua se afasta da Terra novamente!"
							luaproxima=0
						else
							usr<<"A Lua não está próxima da Terra!"

//===========================Vestes Lua======================================//
obj
	RoupaOotsutsuki
		name = "Roupa Ootsutsuki"
		icon = 'Roupa do Grande Mestre do Taijutsu.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Roupa do Grande Mestre do Taijutsu.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Roupa do Grande Mestre do Taijutsu.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"Roupa Ootsutsuki."
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"


obj
	RoupaOotsutsukiL
		name = "Roupa Líder Ootsutsuki"
		icon = 'Kouga Icon Pro Paulo.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Kouga Icon Pro Paulo.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Kouga Icon Pro Paulo.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"Roupa Ootsutsuki Líder."
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um(a) [src]"