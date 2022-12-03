mob/Saquear
	verb
		SaquePack(mob/M in oview(1))
			set name = "Saquear"
			set category = "TaiJutsu"
			if(!M.client)
				usr<<"Não pode se roubar um NPC!"
				return
			if(!emguerra)
				usr<<"Não pode usar isto agora!"
				return
			if(M.move)
				usr<<"Ele precisa estar paralisado!"
				return
			if(M.z==8&&M.x>0&&M.x<91&&M.y>0&&M.y<54)
				world<<output("[usr] foi desconectado por tentar saquear na area VIP!","output2.sistema")
				del(usr)
			var/varPackList = list()
			if(locate(/obj) in M:contents)
				for(var/obj/O in M:contents)
					varPackList += O
			else
				usr << output("[M:name] está com o inventório vazio!","output2.sistema")
				return
			var/varPackItem = input("Escolha um item de [M:name]","Saquear") in varPackList + list("Cancelar")
			if(varPackItem != "Cancelar")
				if(alert("Você deseja saquear [varPackItem:name] de [M:name]?","[varPackItem:name]","Sim","Não") == "Sim")
					usr.random=rand(1,4)
					if(usr.random==1)
						new varPackItem in usr:contents
						del(varPackItem) in M:contents
						usr<<output("Você saqueou [varPackItem:name] de [M:name]!","output2.sistema")
						M<<output("[usr] roubou [varPackItem:name] de você!","output2.sistema")
					else
						usr<<"Você falhou ao tentar saquear [M]!"

//==========================================================================//
mob/var/temsaquear=0


mob/npc/PiveteX
	name = "{NPC}Pivete"
	icon = 'UltimetiumNPCS.dmi'
	icon_state= "Saago"
	PK = 0
	imortal = 1
	health = 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
	verb
		Dizer()
			set src in oview(2)
			set category = "Pivete"
			switch(input("O que você faz aqui?",text) in list ("Quero ser um Ladrão como você","Nada"))
				if("Quero ser um Ladrão como você")
					if(!usr.temsaquear)
						if(usr.pivete >=100)
							usr<<"Interessante...."
							sleep(20)
							usr<<"Você aprendeu a saquear os outros!"
							usr.verbs += new /mob/Saquear/verb/SaquePack()
							usr.temsaquear=1
							//usr.SalvarAgora()
						else
							usr<<"Vc precisa ser um delinquente mais experiente!"
					else
						usr<<"Você já aprendeu a Saquear!"
				if("Nada")
					usr<<"OK!"



//============================Entrada e Saída Quest===============================//

turf
	PiveteE
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(usr.client)
				if(usr.density==0)
					usr<<"Não enquanto voa."
					return
				if(usr.pivete>=10)
					usr.loc = locate(312,212,10)
				else
					usr<<"Uma Armadilha acabou com você. Você precisa ter mais experiencia para entrar!"
					world<<"[usr] foi morto por uma armadilha!"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					//usr.SalvarAgora()