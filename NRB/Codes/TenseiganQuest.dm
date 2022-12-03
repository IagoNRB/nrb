mob/var/rouboubyakugan=0
mob/var/poderoubarbyaku=0
mob/var/temtenseigan=0


mob/npc/Toneri
	name = "{NPC}Toneri"
	icon = 'UltimetiumNPCS.dmi'
	icon_state= "Saago"
	PK = 0
	imortal = 1
	health = 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
	verb
		Dizer()
			set src in oview(2)
			set category = "Toneri"
			switch(input("O que você faz aqui?",text) in list ("Preciso do poder do Tenseigan!","Quero ser como voce!","Nada"))
				if("Preciso do poder do Tenseigan!")
					if(usr.Hyuuga == 1&&usr.luamember)
						usr<<"Interessante...."
						if(usr.rouboubyakugan&&usr.vitorias>=400&&usr.hyuugakills>=250)
							usr<<"Você merece aprender o Doujutsu divino da lua..."
							sleep(20)
							usr<<"Você aprendeu o lendário <font color=cyan> Tenseigan!"
							usr.verbs += new /mob/hyuuga/verb/Tenseigan()
							usr.verbs -= new /mob/hyuuga/verb/Byakugan()
							usr.temtenseigan=1
							usr.verbs -= new /mob/hyuuga/verb/RoubarByakugan()
							usr.poderoubarbyaku=0
							//usr.SalvarAgora()
						else
							usr<<"Vc precisa ser mais forte.. não teve experiências o suficiente!"
					else
						usr<<"Vc precisa ser membro Ootsutsuki!"
				if("Quero ser como voce!")
					if(usr.Hyuuga == 1)
						usr<<"Pois bem..."
						if(usr.hyuuganeji&&usr.byaU>=10000&&!usr.temtenseigan||usr.hyuugahinata&&usr.byaU>=10000&&!usr.temtenseigan)
							usr<<"Você merece aprender o segredo do meu poder..."
							sleep(20)
							usr<<"Você aprendeu a <font color=green> Roubar Byakugan!"
							usr.verbs += new /mob/hyuuga/verb/RoubarByakugan()
							usr.poderoubarbyaku=1
							//usr.SalvarAgora()
						else
							usr<<"Vc precisa ser mais forte.. não teve experiências o suficiente!"
					else
						usr<<"Vc precisa ser membro Ootsutsuki!"
				if("Nada")
					usr<<"Saia"

//===============================Jutsu QUEST===================================//

mob/hyuuga
	verb
		RoubarByakugan(mob/M in oview(1))
			set name = "Extrair Byakugan"
			set category="Jutsus"
			if(M.health>0)
				usr<<"Ele não está desmaiado para extrair."
				return
			if(emguerra==0)
				return
			if(M.seals <= 99)
				usr<<"Ele é muito fraco para essa crueldade..."
				return
			if(M.temtenseigan)
				usr<<"Você não pode roubar este poder!"
				return
			if(usr.temtenseigan)
				usr<<"Você não precisa mais deste poder!"
				return
			else
				if(M.Hyuuga&&!M.PerdeuByakugan||M.implantoubya)
					var/obj/OlhoByakugan/B = new/obj/OlhoByakugan
					B.loc = usr
					M.PerdeuByakugan=1
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
					M.verbs -= /mob/hyuuga/verb/HakkeRokujuuYonshou
					M.verbs -= /mob/hyuuga/verb/ByakuganSearch
					M.verbs -= /mob/hyuuga/verb/HakkeHyakuNijuhaSho
					M.verbs -= /mob/jutsu/verb/Sharinganilluminate
					M.verbs -= /mob/jutsu/verb/Byakai
					M.verbs -= /mob/hyuuga/verb/HakkeKuushou
					M.verbs -= new/mob/teste/verb/Haryate
					M.verbs -= new/mob/hyuuga/verb/HakkeshouKaiten()
					M.verbs -= new /mob/hyuuga/verb/SenbonH()
					M.verbs -= new /mob/hyuuga/verb/Rasenganhyuuga()
					M.perdeubya1+=1
					//M.SalvarAgora()
					usr.rouboubyakugan=1
					//M.SalvarAgora()
					usr<<"Você extraiu o Byakugan de [M]."
					M<<"Você teve seu Byakugan extraído por [usr]."

//============================Entrada e Saída Quest===============================//

turf
	ToneriE
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(usr.client)
				if(usr.density==0)
					usr<<"Não enquanto voa."
					return
				if(usr.Hyuuga)
					usr.loc = locate(365,305,8)
				else
					usr<<"Você precisa fazer parte do clã Hyuuga!"
					world<<"[usr] foi morto pela barreira sagrada de Hamura por tentar invadir o Templo da Lua!"
					usr.health=0
					usr.chakra=0
					usr.Death(usr)
					//usr.SalvarAgora()
