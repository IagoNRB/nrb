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
					world<<"<font size = 2><font color = cyan><center>[M] � o novo Lider Ootsutsuki"
					M.rank="Hamura"
					M.Village="Ootsutsuki-Lua"
					M.lualider=1
					M.luamember=1
					M.squads=1
					if(M.hyuugahinata)
						M.esquadrao="Fam�lia Principal"
					if(M.hyuuganeji)
						M.esquadrao="Fam�lia Secund�ria"
					M.verbs += /mob/Lua/verb/InviteL
					M.verbs += /mob/Lua/verb/BootL
					M.verbs += /mob/Lua/verb/LuaVerb
					M.PerderSubclan()
				else
					usr<<"Ele n�o � Hyuuga ou n�o � Jounin+."
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
					world<<"<font size = 2><font color = cyan><center>[M] n�o � mais o Lider Ootsutsuki"
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
					usr<<"Ele n�o � Hyuuga ou n�o � Jounin+."
					return


mob/Lua
	verb
		InviteL(mob/M in world)
			set category="Ootsutsuki"
			set name="Chamar para a Organiza��o"
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
						M.esquadrao="Fam�lia Principal"
					if(M.hyuuganeji)
						M.esquadrao="Fam�lia Secund�ria"
					src.recruits+=1
					M.PerderSubclan()
				else
					usr<<"N�o pode ser feito. Ou ele � mais fraco que um Jounnin ou n�o � Hyuuga"
			else
				usr<<"J� tem gente demais na Organiza��o!"

mob/Lua
	verb
		BootL(mob/M in world)
			set category="Ootsutsuki"
			set name="Retirar da Organiza��o"
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
				usr<<"N�o pode ser feito. Ele n�o est� na Ootsutsuki"


//=======================Comandos Lua========================================//

mob/var/luadelay=0
mob/Lua
	verb
		LuaVerb()
			set category = "Lua"
			set name = "Aproximar Lua / Afastar Lua"
			if(usr.lualider||usr.key=="Iago762")
				if(!usr.temtenseigan)
					usr<<"Voc� n�o tem o Doujutsu Divino da Lua!"
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
							usr<<"Voc� Aproximou a Lua da Terra!"
							world<<"<center><font color=green>A Lua est� mais pr�xima da Terra! Algo est� para acontecer..."
							luaproxima=1
						else
							usr<<"A Lua j� est� pr�xima da Terra!"
					if("Afastar Lua")
						if(luaproxima)
							usr<<"Voc� afastou a Lua da Terra!"
							world<<"<center><font color=green>A Lua se afasta da Terra novamente!"
							luaproxima=0
						else
							usr<<"A Lua n�o est� pr�xima da Terra!"

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
					usr << "Voc� removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Roupa do Grande Mestre do Taijutsu.dmi'
					usr << "Voc� coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"Roupa Ootsutsuki."
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Voc� pegou um(a) [src]"


obj
	RoupaOotsutsukiL
		name = "Roupa L�der Ootsutsuki"
		icon = 'Kouga Icon Pro Paulo.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Kouga Icon Pro Paulo.dmi'//temp icon
					usr << "Voc� removeu o(a) [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Kouga Icon Pro Paulo.dmi'
					usr << "Voc� coloca o(a) [src.name]."
					src.suffix = "Equipado"
			Olhar()

				usr<<"Roupa Ootsutsuki L�der."
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Voc� pegou um(a) [src]"