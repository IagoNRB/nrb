mob/var/npc/naopodehenge=1
mob/var/imortal=0
mob/var/saldo=0
mob/npc/Banker//the new banker!
	name = "{NPC}Banqueiro"
	icon = 'Banker.dmi'
	PK = 0
	human = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999
	verb
		/*Depositar()
			set src in oview(3)
			//set category = "Banco"
			var/heh = input("Você tem [usr.Yen]$. Gostaria de depositar?","Depositar") as num
			if (heh < 0)
				alert("Não tente me enganar!","Banco")
				return()
			if (heh > usr.Yen)
				alert("Você não tem tantos Ryous!", "Deposit")
				return()


			usr<<"Você depositou [heh] de dinheiro."
			usr.Yen -= heh
			usr.goldinbank += heh
			//usr.SalvarAgora()
			return()

		Retirar()
			set src in oview(3)
			//set category = "Banco"
			var/heh = input("Você tem [usr.goldinbank] Ryous no banco. Quanto gostaria de retirar?","Retirar") as num
			if (heh < 0)
				alert("Não pode retirar menos de 1 Yen!","Banco")
				return()
			if (heh > usr.goldinbank)
				alert("Você não tem tantos Ryous no banco!", "Banco")
				return()
			if(usr.Yen>=10000000)
				alert("Você já está carregando Ryous demais.")
				return
			usr<<" Você retirou [heh] de dinheiro."
			usr.Yen += heh
			usr.goldinbank -= heh
			//usr.SalvarAgora()
			return()

		Checar_Conta()
			set src in oview(3)
			//set category = "Banco"
			set name = "Checar conta corrente"
			usr<<"Você possui [usr.goldinbank] na sua conta."*/
		Falar()
			set src in oview(3)
			////set category = "Banco"
			usr << output("","Aviso1")
			usr << output("","Aviso2")
			usr << output("[add_commas(num2text(text2num(usr.Yen),1000000))]","Ryous")
			usr << output("[add_commas(num2text(text2num(usr.saldo),1000000))]","Saldo")
			winshow(usr, "banco_painel", 1)

mob
	verb
		Depositar2(numero as num)
			set hidden = 1
			if(numero>usr.Yen)
				usr << output("Você não tem isso de Ryous","Aviso1")
				usr << output("","Aviso2")
				return
			if(numero<=0)numero=0
			usr.Yen -= round(numero)
			usr.saldo += round(numero)
			usr << output("[add_commas(num2text(text2num(usr.Yen),1000000))]","Ryous")
			usr << output("[add_commas(num2text(text2num(usr.saldo),1000000))]","Saldo")
			usr << output("Depósito Efetuado!","Aviso1")
			usr << output("","Aviso2")

mob
	verb
		Retirar(numero as num)
			set hidden = 1
			if(numero>usr.saldo)
				usr << output("Você não tem isso de Saldo","Aviso2")
				usr << output("","Aviso1")
				return
			if(numero==usr.saldo)
				usr << output("Você não pode retirar tudo","Aviso2")
				usr << output("","Aviso1")
				return
			if(numero<=0)numero=0
			usr.saldo -= round(numero)
			usr.Yen += round(numero)
			usr << output("[add_commas(num2text(text2num(usr.Yen),1000000))]","Ryous")
			usr << output("[add_commas(num2text(text2num(usr.saldo),1000000))]","Saldo")
			usr << output("Retirada Efetuada!","Aviso2")
			usr << output("","Aviso1")


mob
	var/tmp
		Bijuu = 0
		NPC = 0
		original
		moving=0
		getingready=0
		bowner
		hairPrefix
		enemy
		statePrefix
		lowner
		sowner
		wowner



mob
	npcs
		GenjBunshin
			human = 1
			NPC = 1
			health = 10
			New()
				spawn(400) del src
				..()
		SenninBunshin
			human = 1
			NPC = 1
			New()
				spawn(350) del src
				..()
		EleBunshin
			human = 1
			NPC = 1
			health = 10
		Sanshouo
			human = 1
			NPC = 1
		SanshouoX
			icon = 'Sanshouo.dmi'
			icon_state = "Sanshouo"
			human = 1
			NPC = 1
			waterwalk = 1
			New()
				spawn(600) del src
				..()
			proc/Die()
				flick("smoke2",src)
				del(src)
			Bump(atom/M)
				if(istype(M,/mob/))
					var/mob/OwNeR=src.original
					var/mob/P=M

					if( !OwNeR ) del src
					if(P == bowner||P == OwNeR||P.name==OwNeR.name||P.party&&P.partysensei==OwNeR.partysensei) return
					src.cast=1;spawn(15) src.cast=0
					var/Damage = src.tai - P.Resistencia/2
					if(Damage<=0)Damage=0
					src.cast=1
					if(P.Kaiten)
						del(src)
					if(P.drunk&&P.NonClan)
						view()<<"[M] desvia do ataque de [src]"
						sleep(13)
						src.cast=0
						return
					P.health -= Damage
					F_damage(P, Damage, "#ff0000")
					view() << "A Sanshouo de [original] atacou [M] tirando um dano de [Damage]!"
					src.cast=1
					if(P.health<=0)
						P.Death(original)
					sleep(15)
					src.cast=0

		KBunshin
			human = 1
			NPC = 1
			waterwalk = 1
			New()
				spawn(3000) del src
				..()
			proc/Die()
				flick("smoke2",src)
				del(src)
			Bump(atom/M)
				if(istype(M,/mob/))
					var/mob/OwNeR=src.original
					var/mob/P=M
					if(src.cast)
						return
					if( !OwNeR ) del src
					if(P == bowner||P == OwNeR||P.name==OwNeR.name||P.party&&P.partysensei==OwNeR.partysensei) return
					else
						var/Damage = src.tai - P.Resistencia/2
						if(Damage<=0)Damage=0
						src.cast=1
						if(P.Kaiten)
							del(src)
						if(P.drunk&&P.NonClan)
							view()<<"[M] desvia do ataque de [src]"
							sleep(13)
							src.cast=0
							return
						if(P.bijuunpc)
							view() <<"Os clones explodiram com o chakra da Bijuu!"
							src.Die()
							return
						P.health -= Damage
						F_damage(P, Damage, "#ff0000")
						view() << "O Clone de [OwNeR] atacou [M] tirando um dano de [Damage]!"
						src.cast=1
						if(P.health<=0)
							P.Death(OwNeR)
						sleep(15)
						src.cast=0
/*		KKBunshin
			human = 1
			NPC = 1*/

		OBunshin
			human = 1
			NPC = 1
			waterwalk = 1
			New()
				spawn(300) del src
				..()
			proc/Die()
				flick("smoke2",src)
			Bump(atom/M)
				if(istype(M,/mob/))
					var/mob/OwNeR=src.original
					var/mob/P=M
					if( !OwNeR ) del src
					if(P == bowner||P == OwNeR||P.name==OwNeR.name||P.party&&P.partysensei==OwNeR.partysensei) return
					src.cast=1;spawn(15) src.cast=0
					var/Damage = src.nin/4 + src.tai/4 - P.Resistencia/2
					if(Damage<=0)Damage=0
					src.cast=1
					if(P.Kaiten)
						del(src)
					if(P.drunk&&P.NonClan)
						view()<<"[M] desvia do ataque de [src]"
						sleep(13)
						src.cast=0
						return
					if(P.bijuunpc)
						view() <<"Os clones explodiram com o chakra da Bijuu!"
						src.Die()
						return
					P.health -= Damage
					F_damage(P, Damage, "#ff0000")
					view() << "O Clone de [OwNeR] atacou [M] tirando um dano de [Damage]!"
					src.cast=1
					if(P.health<=0)
						P.Death(OwNeR)
					sleep(15)
					src.cast=0

		Satetsu
			human = 1
			NPC = 1
			New()
				spawn(1200) del src
				..()
			proc/Die()
				flick("smoke2",src)
				del(src)
			Bump(atom/M)
				if(istype(M,/mob/))
					var/mob/OwNeR=src.original
					var/mob/P=M
					if( !OwNeR ) del src
					if(P == bowner||P == OwNeR||P.name==OwNeR.name||P.party&&P.partysensei==OwNeR.partysensei) return
					src.cast=1;spawn(15) src.cast=0
					var/Damage = src.tai - P.Resistencia/2
					if(Damage<=0)Damage=0
					src.cast=1
					if(P.Kaiten)
						del(src)
					if(P.drunk&&P.NonClan)
						view()<<"[M] desvia do ataque de [src]"
						sleep(13)
						src.cast=0
						return
					if(P.bijuunpc)
						view() <<"Os clones explodiram com o chakra da Bijuu!"
						src.Die()
						return
					P.health -= Damage
					F_damage(P, Damage, "#ff0000")
					view() << "O Clone de [OwNeR] atacou [M] tirando um dano de [Damage]!"
					src.cast=1
					if(P.health<=0)
						P.Death(OwNeR)
					sleep(15)
					src.cast=0



		TerceiroKaze
			human = 1
			NPC = 1
			New()
				spawn(900) del src
				..()
			proc/Die()
				flick("smoke2",src)
				del(src)
			Bump(atom/M)
				if(istype(M,/mob/))
					var/mob/OwNeR=src.original
					var/mob/P=M
					if( !OwNeR ) del src
					if(P == bowner||P == OwNeR||P.name==OwNeR.name||P.party&&P.partysensei==OwNeR.partysensei) return
					src.cast=1;spawn(15) src.cast=0
					var/Damage = src.tai - P.Resistencia/2
					if(Damage<=0)Damage=0
					src.cast=1
					if(P.Kaiten)
						del(src)
					if(P.drunk&&P.NonClan)
						view()<<"[M] desvia do ataque de [src]"
						sleep(13)
						src.cast=0
						return
					if(P.bijuunpc)
						view() <<"Os clones explodiram com o chakra da Bijuu!"
						src.Die()
						return
					P.health -= Damage
					F_damage(P, Damage, "#ff0000")
					view() << "O Clone do Terceiro Kazekage de [OwNeR] atacou [M] tirando um dano de [Damage]!"
					src.cast=1
					if(P.health<=0)
						P.Death(OwNeR)
					sleep(15)
					src.cast=0




		Bunshin
			human = 1
			NPC = 1
			proc/Die()
				flick("smoke2",src)
				del(src)

		Ksatetsu
			human = 1
			NPC = 1

			proc/Die()
				flick("smoke2",src)
				del(src)
			Bump(atom/M)
				if(istype(M,/mob/))
					var/mob/OwNeR=src.original
					var/mob/P=M
					if(P == bowner||P == OwNeR||P.name==OwNeR.name)
						return
					else
						if(src.cast)
							return
						var/Damage = src.shurikenskill/4 - P.Resistencia/2
						if(Damage<=0)Damage=0
						src.cast=1
						if(P.drunk&&P.NonClan)
							view()<<"[M] desvia do ataque de [src]"
							sleep(13)
							src.cast=0
							return
						P.health -= Damage
						view() << "O [src] atacou com [M] tirando um dano de [Damage]!"
						src.cast=1
						P.Death(src)
						sleep(15)
						src.cast=0
		satetsu
			human = 1
			NPC = 1

			proc/Die()
				flick("smoke2",src)
				del(src)

proc/Name2Mob(var/mName as text)
	for(var/mob/i in world)
		if("[lowertext(i.name)]" == "[lowertext(mName)]")
			return i

obj
	var/tmp
		price

mob/npc
	Merchant2
		name = "{NPC}Vendedor de armas"
		icon = 'IconsNovos.dmi'
		icon_state="Saler"
		human = 0
		PK = 0
		imortal = 1
		health = 9999999999999999999999999999999999999999999999
		verb/Comprar()
			set src in oview(3)
			switch(input("O que você gostaria de comprar??")in list("Bombas de Fumaça - 1000","Makibishi - 50","Shuriken - 20","Kunai - 40","Tarja Explosiva - 3000","Shuriken Demoniaca - 50000","Trikunai - 50000","Nada"))
				if("Shuriken - 20")
					var/give = input("Quantas Shurikens você deseja comprar?")as num
					if(usr.Shurcounter<=99)
						if(usr.Yen >= give*20&&give>0)
							usr.Yen -= give*20
							for(var/obj/Shuriken/O in usr.contents)
								usr.Shurcounter+=give
							if(Shurcounter<=0)
								var/obj/Shuriken/B = new/obj/Shuriken
								B.loc = usr
								B.ammount+=give
								B.name= "[B.name] ([B.ammount])"
							else
								for(var/obj/Shuriken/O in usr.contents)
									O.ammount+=give
									O.name= "[O.name] ([O.ammount])"
						else
							usr<<"Você não tem dinheiro suficiente!"
					else
						usr<<"Você apenas pode carregar 100 por vez."
				if("Kunai - 40")
					var/give = input("Quantas Kunais você deseja comprar?")as num
					if(usr.Kucounter<=99)
						if(usr.Yen >= give*40&&give>0)
							usr.Yen -= give*40
							for(var/obj/Kunai/O in usr.contents)
								usr.Kucounter+=give
							if(Kucounter<=0)
								var/obj/Kunai/B = new/obj/Kunai
								B.loc = usr
								B.ammount+=give
								B.name= "[B.name] ([B.ammount])"
							else
								for(var/obj/Kunai/O in usr.contents)
									O.ammount+=give
									O.name= "[O.name] ([O.ammount])"
						else
							usr<<"Você não tem dinheiro suficiente!"
					else
						usr<<"Você apenas pode carregar 100 por vez."
				if("Tarja Explosiva - 3000")
					var/give = input("Quantas Tarjas Explosivas você deseja comprar?")as num
					if(Tagcounter<=9)
						if(usr.Yen >= give*3000&&give>0)
							usr.Yen -= give*3000
							for(var/obj/ExplodingTag/O in usr.contents)
								usr.Tagcounter+=give
							if(Tagcounter<=0)
								var/obj/ExplodingTag/B = new/obj/ExplodingTag
								B.loc = usr
								B.ammount+=give
								B.name= "[B.name] ([B.ammount])"
							else
								for(var/obj/ExplodingTag/O in usr.contents)
									O.ammount+=give
									O.name= "[O.name] ([O.ammount])"
						else
							usr<<"Você não tem dinheiro suficiente!"
					else
						usr<<"Você apenas pode carregar 10 por vez."
				if("Shuriken Demoniaca - 50000")
					if(usr.windmills<1)
						if(usr.Yen >= 50000)
							usr.Yen -= 50000
							usr.windmills+=1
							var/obj/Windmill/R = new/obj/Windmill
							R.loc = usr
						else
							usr<<"Você não tem dinheiro suficiente!"
					else
						usr<<"Você apenas pode carregar 1 por vez."
				if("Trikunai - 50000")
					if(usr.trikunai<1)
						if(usr.Yen >= 50000)
							usr.Yen -= 50000
							usr.trikunai+=1
							var/obj/Trikunai/R = new/obj/Trikunai
							R.loc = usr
						else
							usr<<"Você não tem dinheiro suficiente!"
					else
						usr<<"Você apenas pode carregar 1 por vez."
				if("Makibishi - 50")
					if(usr.makis<5)
						if(usr.Yen >= 50)
							usr.Yen -= 50
							usr.makis+=1
							var/obj/Makibishi/R = new/obj/Makibishi
							R.loc = usr
						else
							usr<<"Você não tem dinheiro suficiente!"
					else
						usr<<"Você apenas pode carregar 5 por vez."
				if("Bombas de Fumaça - 1000")
					if(usr.bombas<3)
						if(usr.Yen >= 1000)
							usr.Yen -= 1000
							usr.bombas+=1
							var/obj/Bombas/R = new/obj/Bombas
							R.loc = usr
						else
							usr<<"Você não tem dinheiro suficiente!"
					else
						usr<<"Você apenas pode carregar 3 por vez."
				if("Nada")
					return
mob/npc
	Food_Vender
		name = "{NPC}Chef"
		icon = 'waterwots.dmi'
		icon_state = "chef"
		human = 0
		PK = 0
		imortal = 1
		health = 9999999999999999999999999999999999999999999999
		verb
			Comprar()
				set src in oview(4)
				switch(input("O que você gostaria de comprar hoje?")in list("Ramen - 20k","Sopa - 20k","Sake - 15k","Salgadinho - 2k","Quero te ajudar"))
					if("Ramen - 20k")
						if(usr.Akimichi)
							if(usr.Yen >= 20000)
								usr.Yen -= 20000
								var/obj/Ramen/R = new/obj/Ramen
								R.loc = usr
							else
								usr<<"Você não tem dinheiro suficiente!"
						else
							usr<<"Apenas Akimichis podem comprar"
					if("Sopa - 20k")
						if(usr.Yen >= 20000)
							usr.Yen -= 20000
							var/obj/Soup/S = new/obj/Soup
							S.loc = usr
						else
							usr<<"Você não tem dinheiro suficiente!"
					if("Sake - 15k")
						if(usr.Yen >= 15000)
							usr.Yen -= 15000
							var/obj/Sake/L = new/obj/Sake
							L.loc = usr
						else
							usr<<"Você não tem dinheiro suficiente!"
					if("Salgadinho - 2k")
						if(usr.Yen >=2000)
							usr.Yen -=2000
							var/obj/Salgadinho/C = new/obj/Salgadinho
							C.loc = usr
						else
							usr<<"Você não tem dinheiro suficiente!"
					if("Quero te ajudar")
						if(usr.ajudar&&usr.peixe==0)
							usr<<"Ok, vá a algum rio e me traga um peixe"
							return
						if(locate(/obj/peixe) in usr.contents) if(usr.inmissionD3)
							usr<<"Grande trabalho, pegue essa carta de agradecimento e leve ao seu designador de missões"
							usr.ajudar=0
							usr.ajudante=1
							for(var/obj/peixe/W in usr.contents)
								del(W)
						else
							usr<<"N preciso de ajuda"
							return

mob/npc
	Merchant
		name = "{NPC}Vendedor de Vestimentas"
		icon = 'salesperson3.dmi'
		human = 0
		PK = 0
		imortal = 1
		health = 9999999999999999999999999999999999999999999999
		verb/Comprar()
			set src in oview(3)
			switch(input("O que vc gostaria de comprar??")in list("Mascara Branca - 5k","Roupa Sinistra - 100k","Roupa Veterano - 15k","Capa de Missao - 30k","Pesos - 10k","Armadura Andromeda - 750k","Ropao Prata - 25k","Jiraya Suit - 25k","Kenshin Suit - 10k","Naruto Sage - 50k","Sasuke Kid Suit - 10k","Gaara Kid Suit - 10k","User de Arma Suit - 10k","Konoha Kapa - 15k","Pergaminho - 50000","Neiji Shippuuden - 10k","Gaara Shippuuden - 20k","Sasuke Shippuuden - 20k","Naruto Shippuuden - 20k","Naruto Kid Suit - 10k","Chapéu Grande - 5k","Shino Suit - 15k","Roupa do Yondaime - 30k","Roupa do Kankuoru - 20k","Roupa do Choji - 15k","Roupa do Rock Lee - 15k","Raikage Calça - 15k","Nada"))
				if("Mascara Branca - 5k")
					if(usr.Yen >= 5000)
						usr.Yen -= 5000
						var/obj/MascaraBranca/B = new/obj/MascaraBranca
						B.loc = usr
					else
						usr<<"Você não tem dinheiro suficiente!"
				if("Roupa Sinistra - 100k")
					if(usr.Yen >= 100000)
						usr.Yen -= 100000
						var/obj/RoupaKyuubi/B = new/obj/RoupaKyuubi
						B.loc = usr
					else
						usr<<"Você não tem dinheiro suficiente!"
				if("Capa de Missao - 30k")
					if(usr.Yen >= 30000)
						usr.Yen -= 30000
						var/obj/CapaMissao/B = new/obj/CapaMissao
						B.loc = usr
					else
						usr<<"Você não tem dinheiro suficiente!"
				if("Roupa Veterano - 15k")
					if(usr.Yen >= 15000)
						usr.Yen -= 15000
						var/obj/RoupaVeterano/B = new/obj/RoupaVeterano
						B.loc = usr
					else
						usr<<"Você não tem dinheiro suficiente!"
				if("Armadura Andromeda - 750k")
					if(usr.Yen >= 750000)
						usr.Yen -= 750000
						var/obj/ArmaduraAndromeda/B = new/obj/ArmaduraAndromeda
						B.loc = usr
					else
						usr<<"Você não tem dinheiro suficiente!"
				if("User de Arma Suit - 10k")
					if(usr.Yen >= 10000)
						usr.Yen -= 10000
						var/obj/UserArmaSuit/B = new/obj/UserArmaSuit
						B.loc = usr
					else
						usr<<"Você não tem dinheiro suficiente!"
				if("Jiraya Suit - 25k")
					if(usr.Yen >= 25000)
						usr.Yen -= 25000
						var/obj/Jirayasuit/B = new/obj/Jirayasuit
						B.loc = usr
					else
						usr<<"Você não tem dinheiro suficiente!"
				if("Kenshin Suit - 10k")
					if(usr.Yen >= 10000)
						usr.Yen -= 10000
						var/obj/Kenshinsuit/B = new/obj/Kenshinsuit
						B.loc = usr
					else
						usr<<"Você não tem dinheiro suficiente!"
				if("Ropao Prata - 25k")
					if(usr.Yen >= 25000)
						usr.Yen -= 25000
						var/obj/Ropaoprata/B = new/obj/Ropaoprata
						B.loc = usr
					else
						usr<<"Você não tem dinheiro suficiente!"
				if("Naruto Sage - 50k")
					if(usr.Yen >= 50000)
						usr.Yen -= 50000
						var/obj/Narutosannin/B = new/obj/Narutosannin
						B.loc = usr
					else
						usr<<"Você não tem dinheiro suficiente!"
				if("Chapéu Grande - 5k")
					if(usr.Yen >= 5000)
						usr.Yen -= 5000
						var/obj/BigHat/B = new/obj/BigHat
						B.loc = usr
					else
						usr<<"Você não tem dinheiro suficiente!"
				if("Sasuke Kid Suit - 10k")
					if(usr.Yen >= 10000)
						usr.Yen -= 10000
						var/obj/SasukeKidSuit/B = new/obj/SasukeKidSuit
						B.loc = usr
					else
						usr<<"Você não tem dinheiro suficiente!"
				if("Gaara Kid Suit - 10k")
					if(usr.Yen >= 10000)
						usr.Yen -= 10000
						var/obj/Gsp/B = new/obj/Gsp
						B.loc = usr
					else
						usr<<"Você não tem dinheiro suficiente!"
				if("Konoha Capa - 15k")
					if(usr.Yen >= 15000)
						usr.Yen -= 15000
						var/obj/KonohaCapa/B = new/obj/KonohaCapa
						B.loc = usr
					else
						usr<<"Você não tem dinheiro suficiente!"
				if("Pergaminho - 50000")
					if(usr.Yen >= 50000)
						usr.Yen -= 50000
						var/obj/Perg/B = new/obj/Perg
						B.loc = usr
					else
						usr<<"Você não tem dinheiro suficiente!"
				if("Neiji Shippuuden - 10k")
					if(usr.Yen >= 10000)
						usr.Yen -= 10000
						var/obj/NejIwapp/B = new/obj/NejIwapp
						B.loc = usr
					else
						usr<<"Você não tem dinheiro suficiente!"
				if("Gaara Shippuuden - 20k")
					if(usr.Yen >= 20000)
						usr.Yen -= 20000
						var/obj/Gs/B = new/obj/Gs
						B.loc = usr
					else
						usr<<"Você não tem dinheiro suficiente!"
				if("Sasuke Shippuuden - 20k")
					if(usr.Yen >= 20000)
						usr.Yen -= 20000
						var/obj/Sass/B = new/obj/Sass
						B.loc = usr
					else
						usr<<"Você não tem dinheiro suficiente!"
				if("Naruto Kid Suit - 10k")
					if(usr.Yen >= 10000)
						usr.Yen -= 10000
						var/obj/Narutoyond/B = new/obj/Narutoyond
						B.loc = usr
					else
						usr<<"Você não tem dinheiro suficiente!"
				if("Naruto Shippuuden - 20k")
					if(usr.Yen >= 20000)
						usr.Yen -= 20000
						var/obj/Narutoshipp/B = new/obj/Narutoshipp
						B.loc = usr
					else
						usr<<"Você não tem dinheiro suficiente!"
				if("Pesos - 10k")
					if(usr.Yen >= 10000)
						usr.Yen -= 10000
						var/obj/Weights/B = new/obj/Weights
						B.loc = usr
					else
						usr<<"Você não tem dinheiro suficiente!"
				if("Roupa do Yondaime - 30k")
					if(usr.Yen >= 30000)
						usr.Yen -= 30000
						var/obj/Yondsuit/B = new/obj/Yondsuit
						B.loc = usr
					else
						usr<<"Você não tem dinheiro suficiente!"
				if("Roupa do Kankuoru - 20k")
					if(usr.Yen >= 20000)
						usr.Yen -= 20000
						var/obj/Kankuorusuit/B = new/obj/Kankuorusuit
						B.loc = usr
					else
				if("Roupa do Choji - 15k")
					if(usr.Yen >= 15000)
						usr.Yen -= 15000
						var/obj/ChojiS/B = new/obj/ChojiS
						B.loc = usr
					else
						usr<<"Você não tem dinheiro suficiente!"
				if("Roupa do Rock Lee - 15k")
					if(usr.Yen >= 15000)
						usr.Yen -= 15000
						var/obj/RockLeesuit/B = new/obj/RockLeesuit
						B.loc = usr
					else
						usr<<"Você não tem dinheiro suficiente!"
				if("Shino Suit - 15k")
					if(usr.Yen >= 15000)
						usr.Yen -= 15000
						var/obj/ShinoS/B = new/obj/ShinoS
						B.loc = usr
					else
						usr<<"Você não tem dinheiro suficiente!"
				if("Nada")
					return
				if("Raikage Calça - 15k")
					if(usr.Yen >= 15000)
						usr.Yen -= 15000
						var/obj/RoupaRaikageCalca/B = new/obj/RoupaRaikageCalca
						B.loc = usr
					else
						usr<<"Você não tem dinheiro suficiente!"
				if("Nada")
					return
mob/npc
	Merchant3
		name = "{NPC}Vendedor de espadas"
		icon = 'salesmen.dmi'
		NPC = 1
		PK = 0
		imortal = 1
		health = 9999999999999999999999999999999999999999999999
		verb/Comprar()
			set src in oview(3)
			switch(input("O que você gostaria de comprar?")in list("Katana - 100000",/*"Zambatou - 500000",*/"Faca Kunai - 1000","Nada"))
/*				if("Zambatou - 500000")
					if(usr.Yen >= 500000)
						usr.Yen -= 500000
						var/obj/Mondaisword/B = new/obj/Mondaisword
						B.loc = usr
					else
						usr<<"Você não tem dinheiro suficiente!"*/
				if("Katana - 100000")
					if(usr.Yen >= 100000)
						usr.Yen -= 100000
						var/obj/Katana/B = new/obj/Katana
						B.loc = usr
					else
						usr<<"Você não tem dinheiro suficiente!"
				if("Faca Kunai - 1000")
					if(usr.Yen >= 1000)
						usr.Yen -= 1000
						var/obj/KunaiKnife/B = new/obj/KunaiKnife
						B.loc = usr
					else
						usr<<"Você não tem dinheiro suficiente!"
				if("Nada")
					return


mob/npc
	tailor
		name = "{NPC}Cabelereiro"
		icon = 'waterwots.dmi'
		icon_state="tailor"
		NPC = 1
		PK = 0
		imortal = 1
		health = 9999999999999999999999999999999999999999999999
		verb
			Falar()
				set src in oview(2)
				//set category ="Cabelereiro"
				switch(input("Gostaria de cortar ou colocar uma lente??", text) in list ("Cabelo","Lente","Não"))
					if("Cabelo")
						usr.overlays-=usr.hair
						switch(input("Feminino ou masculino?", text)in list ("Masculino","Feminino"))
							if("Masculino")
								switch(input("Que estilo de cabelo você gostaria?", text) in list ("Naruto","Sasuke Classico","Sasuke Shippuden","Sasori","Juugo","Suigetsu","Gaara","Kakashi","Kabuto","Rock Lee","Itachi","Neiji","Kimimaro","Yondaime","Orochimaru","Jiraiya","Madara","Izuna","Careca"))
									if("Jiraiya")
										usr.hair = "Jiraiya"
										var/cor = input("Qual cor?","Cor") as color
										var/hairover = 'jiraiyaH.dmi'
										hairover += cor
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
									if("Kabuto")
										usr.hair = "Kabuto"
										var/cor = input("Qual cor?","Cor") as color
										var/hairover = 'hair6.dmi'
										hairover += cor
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
									if("Orochimaru")
										usr.hair = "Orochimaru"
										var/cor = input("Qual cor?","Cor") as color
										var/hairover = 'OrochimaruH.dmi'
										hairover += cor
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
									if("Kimimaro")
										usr.hair = "Kimimaro"
										var/cor = input("Qual cor?","Cor") as color
										var/hairover = 'KimimaroH.dmi'
										hairover += cor
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
									if("Yondaime")
										usr.hair = "Yondaime"
										var/cor = input("Qual cor?","Cor") as color
										var/hairover = 'YondaimeH.dmi'
										hairover += cor
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
									if("Careca")
										usr.hair = "Careca"
									if("Naruto")
										usr.hair = "Naruto"
										var/cor = input("Qual cor?","Cor") as color
										var/hairover = 'Hair Naruto.dmi'
										hairover += cor
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
									if("Neiji")
										usr.hair = "Neiji"
										var/cor = input("Qual cor?","Cor") as color
										var/hairover = 'hair5.dmi'
										hairover += cor
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
									if("Itachi")
										usr.hair = "Itachi"
										var/cor = input("Qual cor?","Cor") as color
										var/hairover = 'Hair Itachi.dmi'
										hairover += cor
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
									if("Gaara")
										usr.hair = "Gaara"
										var/cor = input("Qual cor?","Cor") as color
										var/hairover = 'hair20.dmi'
										hairover += cor
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
									if("Kakashi")
										usr.hair = "Kakashi"
										var/cor = input("Qual cor?","Cor") as color
										var/hairover = 'hair11.dmi'
										hairover += cor
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
									if("Sasuke Shippuden")
										usr.hair = "Hair Sasuke Shippuden 2.dmi"
										var/cor = input("Qual cor?","Cor") as color
										var/hairover = 'SasukeH.dmi'
										hairover += cor
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
									if("Rock Lee")
										usr.hair = "Lee Hair"
										var/cor = input("Qual cor?","Cor") as color
										var/hairover = 'hair15.dmi'
										hairover += cor
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
									if("Madara")
										usr.hair = "Madara Hair"
										var/cor = input("Qual cor?","Cor") as color
										var/hairover = 'Hair Madara.dmi'
										hairover += cor
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
									if("Izuna")
										usr.hair = "Izuna Hair"
										var/cor = input("Qual cor?","Cor") as color
										var/hairover = 'HairIzuna.dmi'
										hairover += cor
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
									if("Suigetsu")
										usr.hair = "Izuna Hair"
										var/cor = input("Qual cor?","Cor") as color
										var/hairover = 'Hair Suigetsuu.dmi'
										hairover += cor
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
									if("Sasori")
										usr.hair = "Izuna Hair"
										var/cor = input("Qual cor?","Cor") as color
										var/hairover = 'HAir Sasori (2).dmi'
										hairover += cor
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
									if("Juugo")
										usr.hair = "Izuna Hair"
										var/cor = input("Qual cor?","Cor") as color
										var/hairover = 'Hair Juugo.dmi'
										hairover += cor
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
									if("Sasuke Classico")
										usr.hair = "Izuna Hair"
										var/cor = input("Qual cor?","Cor") as color
										var/hairover = 'Hair Sasuke Classico.dmi'
										hairover += cor
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair

							if("Feminino")
								switch(input("Que estilo de cabelo você gostaria?", text) in list ("Sakura","Hinata","Ino","Temari","Careca"))
									if("Temari")
										usr.hair = "Temari Hair"
										var/cor = input("Qual cor?","Cor") as color
										var/hairover = 'temariH.dmi'
										hairover += cor
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
									if("Sakura")
										usr.hair = "Sakura Hair"
										var/cor = input("Qual cor?","Cor") as color
										var/hairover = 'SakuraH.dmi'
										hairover += cor
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
									if("Ino")
										usr.hair = "Ino"
										var/cor = input("Qual cor?","Cor") as color
										var/hairover = 'inoH.dmi'
										hairover += cor
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
									if("Hinata")
										usr.hair = "Hinata"
										var/cor = input("Qual cor?","Cor") as color
										var/hairover = 'Hinata Hair.dmi'
										hairover += cor
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
									if("Careca")
										usr.hair = "Careca"
					if("Lente")
						switch(input("Escolha a cor da lente", text) in list ("Ok"))
							if("Ok")
								usr.eye = "Eyes"
								var/eyered = input("Quanto vermelho você gostaria no seu olho?") as num
								var/eyeblue = input("Quanto azul você gostaria no seu olho?") as num
								var/eyegreen = input("Quanto verde você gostaria no seu olho?") as num
								var/eyeover = 'eyes.dmi'
								eyeover += rgb(eyered,eyegreen,eyeblue)
								usr.reye = eyered
								usr.geye = eyegreen
								usr.beye = eyeblue
								usr.Oeye = eyeover
								usr.eye = usr.Oeye
								usr.overlays += usr.eye
								usr.eyeselected=1

mob
	proc
		NPCAI() //name of proc
			var/mob/player/M //variable M has to be mob/usr
			while(src) //while src is stil kickin
				if(M in oview(5)) //if M is in oview(5)
					if(M.name in src.killlist) //now if M.name is in src.killlist, this has it only attack if attacked!
						walk_to(src,M,1,4) //src walks to M until 1 block away, moving 4/10ths of a second
						if(M in oview(1)) //if M is in oview(1)
							step_towards(src,M) //src steps toward M
					else //if usr.name isnt in src.killlist
						sleep(15)//pauses for 1 and 1/2 seconds
						step_rand(src) //step randomly on the field
						break //breaks out of the while loop
				else //if M isnt in oview(5)
					for(M in view(src)) //for all Ms in view(src)
						break //breaks out of the while loop
				sleep(5) //pauses 1/2 second before redoing loop
			spawn(2) // pauses 2/10 of second before redoing proc
				NPCAI()

mob
	proc
		MONATTACK(mob/M in get_step(src,src.dir))
			if(M.drunk&&M.NonClan)
				view(M)<<"[M] desvia do ataque de [src]."
				return
			if(src.orochimaru&&src.canattack)
				if(!M.bit)
					var/damage = round(src.tai) - M.Resistencia
					if(damage <= 1)
						damage = 1
						view() << "[src] ataca [M] tirando [damage] de dano!"
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						if(M.health <= 0)
							src.killlist = ""
							M.Death(src)
						if(istype(M,/mob/enemy))
							M.killlist += src.name
					else
						view() << "[src] ataca [M] tirando [damage] de dano!"
						M.health -= damage
						F_damage(M, damage, "#ff0000")
						if(M.health <= 0)
							src.killlist = ""
							M.Death(src)
						if(istype(M,/mob/enemy))
							M.killlist += src.name
				else
					if(M.CS==1&&!src.GOTCS)
						src.canattack=1
						view(src)<<"Orochimaru: You seem like an interesting subject."
						sleep(10)
						view(src)<<"Orochimaru: I will give you the gift of power young one."
						sleep(10)
						view(M)<<"Orochimaru bites the neck of [M]."
						M<<"You begin to feel an extreme amount of pain, Try to survive, your health is constantly draining!"
						M.cast=1
						sleep(40)
						view(M)<<"Orochimaru: I do not have any further business here."
						del(src)
						sleep(40)
						M.inmission=0
						M.loc=locate(456,174,3)
						M<<"You have been brought back to your village."
						M.verbs -= new /mob/mission/verb/Escape()
						M.verbs -= new /mob/mission/verb/Escape()
						M.verbs -= new /mob/mission/verb/Escape()
			else
				if(M.ingat||M.intank||M.NPC)				.
					return
				if(M.Kaiten)
					var/damage = round(usr.tai)
					if(damage <= 1)
						damage = 1
						M <<"Você reflelte os ataques de [src], fazendo com que ele se machuque"
						src.health -= damage
						F_damage(src, damage, "#ff0000")
						if(src.health <= 0)
							src.killlist = ""
							src.Death(M)
						return
					else
						M <<"Você reflelte os ataques de [src], fazendo com que ele se machuque"
						src.health -= damage
						F_damage(src, damage, "#ff0000")
						if(src.health <= 0)
							src.killlist = ""
							src.Death(M)
						return
				if (M.ingat == 1)
					return
				else					//otherwise...
					if(src.Tekken&&src.canattack)
						var/damage = round(src.tai) - M.Resistencia
						if(damage <= 1)
							damage = 1
							view() << "[src] ataca [M] tirando [damage] de dano!"
							M.health -= damage
							F_damage(M, damage, "#ff0000")
							if(M.health <= 0)
								src.killlist = ""
								M.Death(src)
							if(istype(M,/mob/enemy))
								M.killlist += src.name
						else
							view() << "[src] ataca [M] tirando [damage] de dano!"
							M.health -= damage
							F_damage(M, damage, "#ff0000")
							if(M.health <= 0)
								src.killlist = ""
								M.Death(src)
							if(istype(M,/mob/enemy))
								M.killlist += src.name
					else if(src.Jyuken == 1&&src.canattack == 1)
						if(src.chakra >= 2)
							src.canattack =0
							var/damage = round(src.tai/2) - M.Resistencia
							if(damage <= 1)
								damage = 1
								view() << "[src] ataca [M] tirando [damage] de dano!"
								M.health -= damage
								F_damage(M, damage, "#ff0000")
								src.chakra -= 2
								if(M.health <= 0)
									src.killlist = ""
									M.Death(src)
								if(istype(M,/mob/enemy))
									M.killlist += src.name
							else
								view() << "[src] ataca [M] tirando [damage] de dano!"
								M.health -= damage
								F_damage(M, damage, "#ff0000")
								src.chakra -= 2
								if(M.health <= 0)
									src.killlist = ""
									M.Death(src)
								if(istype(M,/mob/enemy))
									M.killlist += src.name
						else
							src.Jyuken = 0
							src.Tekken = 1
							return

mob/proc/GettingCurseSeal()
	XD
		if(src.CS)
			src.health-=150
			if(src.health<=0)
				src.Death(src)
			src.random=rand(1,40)
			if(src.random==3)
				src.GOTCS=1
				src.cast=0
				src<<"Your pain stops."
				return
			else
				sleep(12)
				goto XD
		else
			return
mob/var/waterfallS=0
mob/var
	bit=0
	CS=0
	GOTCS=0
mob/PARTYdude
   icon = 'Spawn.dmi'
   name = "{NPC}PARTY"
   NPC = 1
   PK = 1
   health = 9999999999999999999999999999999999999999999999
   density = 1
mob/AKATSpawndude
	icon = 'Spawn.dmi'
	name = "`{NPC}AKAT - Ajudante de Spawn"
	NPC = 1
	PK = 0
	health = 9999999999999999999999999999999999999999999999
	density = 1
	verb
		Trocar_local_de_origen()
			set src in oview(1)
			if(usr.Village == "Akatsuki" || usr.Village == "Taka")
				usr << "<b> Você agora respawna na base da Akatsuki!"
				usr.akatS = 1
				usr.soS = 0
				usr.starS=0
				usr.leafS = 0
				usr.grassS = 0
				usr.sandS = 0
				usr.snowS = 0
				usr.waterfallS=0
				usr.soundS = 0
				usr.rainS = 0
				usr.earthS = 0
				usr.lightningS = 0
				usr.mistS = 0
/*mob/SOSpawndude
	icon = 'Spawn.dmi'
	name = "SO - Ajudante de Spawn"
	PK = 0
	health = 9999999999999999999999999999999999999999999999
	density = 1
	verb
		Trocar_local_de_origen()
			set src in oview
if(usr.Village == "Sound Organization")
usr << "<b> Você agora respawna na base da SO!"
usr.akatS = 0
usr.soS = 1
usr.leafS = 0
usr.starS=0
usr.grassS = 0
usr.sandS = 0
usr.snowS = 0
usr.waterfallS=0
usr.soundS = 0
usr.rainS = 0
usr.earthS = 0
usr.lightningS = 0
usr.mistS = 0*/

mob
	proc
		WindAtirar()
			src.cast = 1
			var/obj/Shuriken/K = new /obj/Windmill
			if(usr.windmills>=1)
				K.loc = src.loc
				K.tai=src.shurikenskill/6
				K.dir = src.dir
				K.name="[src]"
				K.Gowner=src
				walk(K,usr.dir)
				usr.cast = 0
				sleep(60)
				del(K)
			else
				usr<<"Você não têm windmills, vá comprar mais."



mob
	proc
		TrikAtirar()
			src.cast = 1
			var/obj/Shuriken/K = new /obj/Trikunai
			if(usr.trikunai>=1)
				K.loc = src.loc
				K.tai=src.shurikenskill/6
				K.dir = src.dir
				K.name="[src]"
				K.Gowner=src
				walk(K,usr.dir)
				sleep(60)
				del(K)
			else
				usr<<"Você não têm trikunais, vá comprar mais."




mob
	proc
		ShuriAtirar()
			src.cast = 1
			var/obj/Shuriken/K = new /obj/Shuriken
			if(usr.Shurcounter>=1)
				K.loc = src.loc
				K.tai=src.shurikenskill/7
				K.dir = src.dir
				K.name="[src]"
				K.Gowner=src
				usr.Shurcounter-=1
				walk(K,usr.dir)
				usr.cast = 0
				sleep(30)
				del(K)
			else
				usr<<"Você não têm shurikens, vá comprar mais."



mob
	proc
		KunaAtirar()
			src.cast = 1
			var/obj/Kunai/K = new /obj/Kunai
			if(usr.Kucounter>=1)
				K.loc = src.loc
				K.tai=src.shurikenskill/7
				K.dir = src.dir
				K.name="[src]"
				K.Gowner=src
				walk(K,usr.dir)
				usr.cast = 0
				usr.Kucounter-=1
				sleep(30)
				del(K)
			else
				usr<<"Você não têm kunais, vá comprar mais."



mob
	proc
		EscudoAtirar()
			src.cast = 1
			var/obj/Kunai/K = new /obj/EscudoCapitao
			if(usr.Kucounter>=0)
				K.loc = src.loc
				K.tai=src.shurikenskill/4
				K.dir = src.dir
				K.name="[src]"
				K.Gowner=src
				walk(K,usr.dir)
				usr.cast = 0
				sleep(30)
				del(K)
			else
				usr<<"Você não têm Escudo!."




mob
	proc//core procs for the system


		ai_random_wander()//random wander if no mobs are in range to attack
			if(src.key)//if the source is human
				return//don't call the rest
			if(!src.weaknin&&!src.orochimaru&&!src.kyuubinpc&&!src.guard&&!src.guardp&&!src.bijuunpc&&!src.limbonpc&&!sunabnpc&&!villagesnpc)
				return
			else
				walk_rand(src,7)//walk randomly with 5 lag
				src.ai_run_away()
				spawn(10)//delay for one tick
					ai_random_wander()//wander some more

		ai_run_away()//used for checking to see if it should run or attack
			if(src.client)
				return
			else
				for(var/mob/M in oview(8,src))//loops over all mobs within 8 tiles of the monster
					if(M.client)//if the mob is human
						if(get_dist(src,M) <= 8)//if the player is close
							if(src.weaknin||M.NPC)
								return
							else
								src:random = rand(1,2)
								if(src:random == 2)
									src.jutsu()
									src.ai_run_away()
								else
									src.ai_walk_to()
						else
							src.jutsu()//calls the walk_to (for attacking) proc
					else
						return

		ai_walk_to()
			if(src.client)
				return 0
			else
				for(var/mob/M in oview(8,src))
					if(M.client)
						if(src.guard==1&&NPC==1&&M.Village=="[src.Village]"||M.party&&M.partysensei=="[src.partysensei]")//|| (src.isdog==1 && src.owner)
							src.cast = 0
							return
						if(src.guardp==1&&NPC==1&&M.Village=="[src.Village]"||M.party&&M.partysensei=="[src.partysensei]")//|| (src.isdog==1 && src.owner)
							src.cast = 0
							return
						if(src.limbonpc==1&&NPC==1&&M.Village=="[src.Village]"||M.party&&M.partysensei=="[src.partysensei]")//|| (src.isdog==1 && src.owner)
							src.cast = 0
							return
						if(src.villagesnpc&&M.Village=="[src.Village]"||src.villagesnpc&&M.Village<>"[src.Village]"&&M.seals<100||src.villagesnpc&&M.Village2=="[src.Village]")//|| (src.isdog==1 && src.owner)
							src.cast = 0
							return
						if(M.party&&M.partysensei=="[src.partysensei]")//src.sunabnpc==1&&NPC==1&&M.Village=="[src.Village]"||)|| (src.isdog==1 && src.owner)
							src.cast = 0
							return
						if(src.bijuunpc==1&&NPC==1&&M.Village=="[src.Village]")//|| (src.isdog==1 && src.owner)
							src.cast = 0
							return
						if(src.clonenpc==1&&NPC==1&&M.Village=="[src.Village]")//|| (src.isdog==1 && src.owner)
							src.cast = 0
							return
						if(get_dist(src,M) <= 8)//within 8 tiles
							walk_to(src,M,1,7)//walk to the player
							ai_check_dist(src,M)//checks distance
							break//stops the loopclonenpc
						else
							continue
					else
						continue

		ai_check_dist(mob/attacker,mob/defender)
			for(var/mob/M in oview(10,src))
				if(attacker.client)
					return
				if(src.villagesnpc&&M.Village=="[src.Village]"||src.villagesnpc&&M.Village<>"[src.Village]"&&M.seals<100||src.villagesnpc&&M.Village2=="[src.Village]")//|| (src.isdog==1 && src.owner)
					src.cast = 0
					return
				if(src.guard==1&&NPC==1&&M.Village=="[src.Village]"||M.party&&M.partysensei=="[src.partysensei]")//|| (src.isdog==1 && src.owner)
					src.cast = 0
					return
				if(src.bijuunpc==1&&NPC==1&&M.Village=="[src.Village]")//|| (src.isdog==1 && src.owner)
					src.cast = 0
					return
				if(src.clonenpc==1&&NPC==1&&M.Village=="[src.Village]")//|| (src.isdog==1 && src.owner)
					src.cast = 0
					return
				if(src.limbonpc==1&&NPC==1&&M.Village=="[src.Village]"||M.party&&M.partysensei=="[src.partysensei]")//|| (src.isdog==1 && src.owner)
					src.cast = 0
					return
				if(src.sunabnpc==1&&NPC==1&&M.Village=="[src.Village]"||M.party&&M.partysensei=="[src.partysensei]")//|| (src.isdog==1 && src.owner)
					src.cast = 0
					return
				if(src.guardp==1&&NPC==1&&M.Village=="[src.Village]"||M.party&&M.partysensei=="[src.partysensei]")//|| (src.isdog==1 && src.owner)
					src.cast = 0
					return
				if(get_dist(attacker,defender) <= 1 && defender.NPC==0)//if the monster is one tile away from the player
					return

		jutsu()
			for(var/mob/M in oview(10,src))
				if(src.weaknin&&get_dist(src,M) >= 8)
					src.cast = 1
					var/obj/Shuriken/K = new /obj/Shuriken
					K.loc = src.loc
					K.tai=src.tai
					K.dir = src.dir
					K.name="[src]"
					K.Move_Delay=1
					K.Gowner=src
					walk_towards(K,M)
					src.cast = 0
					sleep(10)
					del(K)
				if(src.orochimaru&&get_dist(src,M) >= 8)
					src.cast = 1
					view(src)<<"Orochimaru: Katon Karyuu Endan!"
					var/obj/katonG/K = new /obj/katonG
					K.loc = src.loc
					K.nin=src.nin*4.75
					K.dir = src.dir
					K.name="[src]"
					K.Move_Delay=0
					K.Gowner=src
					walk_towards(K,M)
					src.cast = 0
					sleep(30)
					del(K)
				if(src.guard==1&&NPC==1&&M.Village=="[src.Village]"||M.party&&M.partysensei=="[src.partysensei]")//|| (src.isdog==1 && src.owner)
					src.cast = 0
					return
				if(src.guard)
					src.cast = 1
					var/obj/WindmillNPC/K = new /obj/WindmillNPC
					K.loc = src.loc
					K.nin=src.shurikenskill
					K.dir = src.dir
					K.name="[src]"
					K.Move_Delay=0.7
					K.Gowner=src
					walk_towards(K,M)
					src.cast = 0
					sleep(30)
					del(K)
				if(src.villagesnpc&&NPC==1&&M.Village=="[src.Village]"||src.villagesnpc&&M.Village<>"[src.Village]"&&M.seals<100||src.villagesnpc&&M.Village2=="[src.Village]")//|| (src.isdog==1 && src.owner)
					src.cast = 0
					return
				if(src.villagesnpc)
					src.cast = 1
					var/obj/VPeins/VP = new /obj/VPeins
					VP.loc = src.loc
					VP.nin=src.shurikenskill
					VP.dir = src.dir
					VP.name="[src]"
					VP.Move_Delay=0.4
					VP.Gowner=src
					walk_towards(VP,M)
					src.cast = 0
					sleep(60)
					del(VP)
				if(src.bijuunpc==1&&NPC==1&&M.Village=="[src.Village]")//|| (src.isdog==1 && src.owner)
					src.cast = 0
					return
				if(src.bijuunpc)
					src.cast = 1
					var/obj/BDama/B = new /obj/BDama
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Diz: <font color=silver> Bijuu Dama"
					B.loc = src.loc
					B.nin=src.shurikenskill
					B.dir = src.dir
					B.name="[src]"
					B.Move_Delay=0
					B.Gowner=src
					walk_towards(B,M)
					src.cast = 0
					sleep(50)
					del(B)
				if(src.guardp==1&&NPC==1&&M.Village=="[src.Village]"||M.party&&M.partysensei=="[src.partysensei]")//|| (src.isdog==1 && src.owner)
					src.cast = 0
					return
				if(src.guardp)
					src.cast = 1
					var/obj/Peins/P = new /obj/Peins
					P.loc = src.loc
					P.nin=src.tai
					P.dir = src.dir
					P.name="[src]"
					P.Move_Delay=0.7
					P.Gowner=src.original
					walk_towards(P,M)
					src.cast = 0
					sleep(30)
					del(P)
				if(src.sunabnpc==1&&NPC==1&&M.Village=="[src.Village]"||M.party&&M.partysensei=="[src.partysensei]")//|| (src.isdog==1 && src.owner)
					src.cast = 0
					return
				if(src.sunabnpc)
					src.cast = 1
					var/obj/SshurikenBunshin/S = new /obj/SshurikenBunshin
					S.loc = src.loc
					S.nin=src.tai
					S.dir = src.dir
					S.name="[src]"
					S.Move_Delay=0.7
					S.Gowner=src.original
					walk_towards(S,M)
					src.cast = 0
					sleep(30)
					del(S)
				if(src.limbonpc==1&&NPC==1&&M.Village=="[src.Village]"||M.party&&M.partysensei=="[src.partysensei]")//|| (src.isdog==1 && src.owner)
					src.cast = 0
					return
				if(src.limbonpc)
					src.cast = 1
					var/obj/WindLimbo/L = new /obj/WindLimbo
					L.loc = src.loc
					L.nin=src.tai
					L.dir = src.dir
					L.name="[src]"
					L.Move_Delay=0.4
					L.Gowner=src.original
					walk_towards(L,M)
					src.cast = 0
					sleep(30)
					del(L)
				if(src.clonenpc==1&&NPC==1&&M.Village=="[src.Village]")//|| (src.isdog==1 && src.owner)
					src.cast = 0
					return
				if(src.clonenpc)
					src.cast = 1
					var/obj/WindmillNPC/K = new /obj/WindmillNPC
					sleep(40)
					view()<<"<font size=1><font face=verdana><b><font color=white>[src]<font color=green> Diz:<font color=blue>Doton  Doryuu Taiga !"
					var/obj/dotont/S = new /obj/dotont/
					sleep(40)
					view()<<"<font size=1><font face=verdana><b><font color=white>[src]<font color=green> Diz: Suiton Suiryuudan no Jutsu"
					var/obj/Suiryedan/J = new /obj/Suiryedan
					src.target=M
					K.loc = src.loc
					K.nin=src.shurikenskill
					S.nin=src.nin
					S.loc = src.loc
					J.nin=src.nin
					J.loc = src.loc
					K.dir = M.dir
					S.dir = M.dir
					J.dir = M.dir
					K.name="[src]"
					K.Move_Delay=0.7
					K.Gowner=src
					walk_towards(K,M)
					src.cast = 1
					sleep(10)
					del(K)


mob
	enemy//..attack
		Clanmember
			name= "Membro do Clan"
			icon = 'clanmember.dmi'
			Village="Clanss"
			guard = 1
			Tekken = 1
			maxhealth=150000
			health = 150000
			stamina = 500000
			tai = 10000
			nin = 10000
			gen = 10000
			shurikenskill=10000
			NPC=1
		Clanmember2
			name= "Membro do Clan"
			icon = 'clanmember.dmi'
			Village="Clanss"
			guardp = 1
			Tekken = 1
			maxhealth=100000
			health = 100000
			stamina = 500000
			tai = 1000
			nin = 1000
			gen = 1000
			shurikenskill=1000
			NPC=1
		Clanmember3
			name= "Membro do Clan"
			icon = 'clanmember.dmi'
			Village="Clanss"
			guardp = 1
			Tekken = 1
			maxhealth=150000
			health = 150000
			stamina = 500000
			tai = 10000
			nin = 10000
			gen = 10000
			shurikenskill=10000
			NPC=1

		Aguard
			name= "{Enemy}Guarda da Akatsuki"
			icon = 'akatgua.dmi'
			Village="Akatsuki"
			Village2="Taka"
			guardp = 1
			Tekken = 1
			waterwalk = 1
			maxhealth=250000
			health = 250000
			stamina = 500000
			tai = 11500
			nin = 20000
			gen = 11500
			shurikenskill=11500
			NPC=1
		Jouninadver
			name= "{Enemy}Gatuno"
			icon = 'npcmissao.dmi'
			icon_state="3"
			Village="Darkfgfd"
			guardp = 1
			Tekken = 1
			waterwalk = 1
			maxhealth=700000
			health = 700000
			stamina = 500000
			tai = 30000
			nin = 30000
			gen = 100000
			shurikenskill=25000
			NPC=1
		Mercenario
			name= "{Enemy}Mercenario"
			icon = 'npckasak.dmi'
			icon_state = "mercenario"
			Village="Mercenr"
			guardp = 1
			Tekken = 1
			waterwalk = 1
			maxhealth=50000
			health = 50000
			stamina = 500000
			tai = 20000
			nin = 10000
			gen = 11000
			shurikenskill=11500
			NPC=1
		Nukenin
			name= "{Enemy}Nukenin"
			icon = 'npckasak.dmi'
			icon_state = "nukenin"
			Village="Nkevila"
			guardp = 1
			Tekken = 1
			waterwalk = 1
			maxhealth=350000
			health = 350000
			stamina = 500000
			tai = 45500
			nin = 50000
			gen = 61500
			shurikenskill=11500
			NPC=1
		ExamChuunin
			name= "{Enemy}Genin Npc"
			icon = 'sandnin.dmi'
			Village="Geninzada"
			guardp = 1
			Tekken = 1
			waterwalk = 1
			maxhealth=60000
			health = 60000
			stamina = 500000
			tai = 11500
			nin = 20000
			gen = 31500
			shurikenskill=7500
			NPC=1
		CvGuard
			name= "{Enemy}Shinobi da Caverna"
			icon = 'cvguard.dmi'
			Village="Sociedade Secreta"
			guard = 1
			Tekken = 1
			waterwalk = 1
			maxhealth=40000
			health = 40000
			stamina = 500000
			tai = 25000
			nin = 25000
			gen = 25000
			shurikenskill=25000
			NPC=1

mob
	enemy
		Corpo
		guardp = 1
		NPC=1
		New()
			spawn(1200) del src
			..()
		Bump(atom/M)
			if(istype(M,/mob/))
				var/mob/OwNeR=src.original
				var/mob/P=M

				if( !OwNeR ) del src
				if( P == bowner||P == OwNeR||P.name==src.name ) return
				src.cast=1;spawn(10) src.cast=0

				var/Damage = src.tai - P.Resistencia/2
				if(Damage<0) Damage=0

				if(P.Kaiten) del(src)
				if(P.drunk&&P.NonClan)
					view()<<"[M] desvia do ataque de [src]"
					sleep(13)
					src.cast=0
					return

				P.health -= Damage
				F_damage(P, Damage, "#ff0000")
				view() << "[src] atacou [M] tirando um dano de [Damage]!"
				P.Death(src)
mob
	enemy
/*		Uchihanpc
			name= "{Enemy}Uchiha Sobrevivente"
			icon = 'uchihanpc.dmi'
			Village="Dark"
			guardp = 1
			Tekken = 1
			waterwalk = 1
			maxhealth=100000
			health = 100000
			stamina = 500000
			tai = 5000
			nin = 10000
			gen = 20000
			shurikenskill=6000
			NPC=1*/

		leader
			name= "Leader(Missing-NiN)"
			icon = 'waternin.dmi'
			weaknin = 1
			Tekken = 1
			maxhealth=20000
			health = 20000
			tai = 700
			nin = 800
			gen = 900
			shurikenskill=100
			NPC=1

mob
	enemy
		Mask1
		guardp = 1
		waterwalk = 1
		NPC=1
		New()
			spawn(1200) del src
			..()
		Bump(atom/M)
			if(istype(M,/mob/))
				var/mob/OwNeR=src.original
				var/mob/P=M

				if( !OwNeR ) del src
				if( P == bowner||P == OwNeR||P.name==src.name ) return
				src.cast=1;spawn(10) src.cast=0

				var/Damage = src.tai - P.Resistencia/2
				if(Damage<0) Damage=0

				if(P.Kaiten) del(src)
				if(P.drunk&&P.NonClan)
					view()<<"[M] desvia do ataque de [src]"
					sleep(13)
					src.cast=0
					return

				P.health -= Damage
				F_damage(P, Damage, "#ff0000")
				view() << "[src] atacou [M] tirando um dano de [Damage]!"
				P.Death(src)


		Mask2
		guardp = 1
		NPC=1
		New()
			spawn(1200) del src
			..()
		Bump(atom/M)
			if(istype(M,/mob/))
				var/mob/OwNeR=src.original
				var/mob/P=M

				if( !OwNeR ) del src
				if( P.original==OwNeR || OwNeR==M || src.cast ) return
				src.cast=1;spawn(10) src.cast=0

				var/Damage = src.tai - P.Resistencia/2
				if(Damage<0) Damage=0

				if(P.Kaiten) del(src)
				if(P.drunk&&P.NonClan)
					view()<<"[M] desvia do ataque de [src]"
					sleep(13)
					src.cast=0
					return

				P.health -= Damage
				F_damage(P, Damage, "#ff0000")
				view() << "[src] atacou [M] tirando um dano de [Damage]!"
				P.Death(src)

		Mask3
		guardp = 1
		NPC=1
		New()
			spawn(1200) del src
			..()
		Bump(atom/M)
			if(istype(M,/mob/))
				var/mob/OwNeR=src.original
				var/mob/P=M

				if( !OwNeR ) del src
				if( P.original==OwNeR || OwNeR==M || src.cast ) return
				src.cast=1;spawn(10) src.cast=0

				var/Damage = src.tai - P.Resistencia/2
				if(Damage<0) Damage=0

				if(P.Kaiten) del(src)
				if(P.drunk&&P.NonClan)
					view()<<"[M] desvia do ataque de [src]"
					sleep(13)
					src.cast=0
					return

				P.health -= Damage
				F_damage(P, Damage, "#ff0000")
				view() << "[src] atacou [M] tirando um dano de [Damage]!"
				P.Death(src)




		Mizu
		guardp = 1
		waterwalk = 1
		NPC=1
		New()
			spawn(1200) del src
			..()
		Bump(atom/M)
			if(istype(M,/mob/))
				var/mob/OwNeR=src.original
				var/mob/P=M
				if(src.cast)
					return
				if( !OwNeR ) del src
				if( P == bowner||P == OwNeR||P.name==src.name ) return
				else
					src.cast=1;spawn(10) src.cast=0

					var/Damage = src.tai - P.Resistencia/2
					if(Damage<0) Damage=0

					if(P.Kaiten) del(src)
					if(P.drunk&&P.NonClan)
						view()<<"[M] desvia do ataque de [src]"
						sleep(13)
						src.cast=0
						return

					P.health -= Damage
					F_damage(P, Damage, "#ff0000")
					view() << "[src] atacou [M] tirando um dano de [Damage]!"
					P.Death(src)

		Mizu2
		guardp = 1
		NPC=1
		New()
			spawn(1200) del src
			..()
		Bump(atom/M)
			if(istype(M,/mob/))
				var/mob/OwNeR=src.original
				var/mob/P=M

				if( !OwNeR ) del src
				if( P == bowner||P == OwNeR||P.name==src.name ) return
				src.cast=1;spawn(10) src.cast=0

				var/Damage = src.tai - P.Resistencia/2
				if(Damage<0) Damage=0

				if(P.Kaiten) del(src)
				if(P.drunk&&P.NonClan)
					view()<<"[M] desvia do ataque de [src]"
					sleep(13)
					src.cast=0
					return

				P.health -= Damage
				F_damage(P, Damage, "#ff0000")
				view() << "[src] atacou [M] tirando um dano de [Damage]!"
				P.Death(src)

		ArgBunshin
		guardp = 1
		waterwalk = 1
		NPC = 1
		New()
			spawn(600) del src
			..()
		proc/Die()
			flick("smoke2",src)
			del(src)
		Bump(atom/M)
			if(istype(M,/mob/))
				var/mob/OwNeR=src.original
				var/mob/P=M

				if( !OwNeR ) del src
				if( P == bowner||P == OwNeR||P.name==src.name ) return
				src.cast=1;spawn(10) src.cast=0

				var/Damage = src.tai - P.Resistencia/2
				if(Damage<0) Damage=0

				if(P.Kaiten) del(src)
				if(P.drunk&&P.NonClan)
					view()<<"[M] desvia do ataque de [src]"
					sleep(13)
					src.cast=0
					return

				P.health -= Damage
				F_damage(P, Damage, "#ff0000")
				view() << "[src] atacou [M] tirando um dano de [Damage]!"
				P.Death(src)

		KamiB
		guardp = 1
		waterwalk = 1
		NPC=1
		New()
			spawn(1200) del src
			..()
		Bump(atom/M)
			if(istype(M,/mob/))
				var/mob/OwNeR=src.original
				var/mob/P=M

				if( !OwNeR ) del src
				if( P == bowner||P == OwNeR||P.name==src.name ) return
				src.cast=1;spawn(10) src.cast=0

				var/Damage = src.tai - P.Resistencia/2
				if(Damage<0) Damage=0

				if(P.Kaiten) del(src)
				if(P.drunk&&P.NonClan)
					view()<<"[M] desvia do ataque de [src]"
					sleep(13)
					src.cast=0
					return

				P.health -= Damage
				F_damage(P, Damage, "#ff0000")
				view() << "[src] atacou [M] tirando um dano de [Damage]!"
				P.Death(src)

		SuitonB
		guardp = 1
		waterwalk = 1
		NPC=1
		New()
			spawn(1200) del src
			..()
		Bump(atom/M)
			if(istype(M,/mob/))
				var/mob/OwNeR=src.original
				var/mob/P=M

				if( !OwNeR ) del src
				if( P.original == OwNeR||P == OwNeR||P.name==src.name ) return
				src.cast=1;spawn(10) src.cast=0

				var/Damage = src.tai - P.Resistencia/2
				if(Damage<0) Damage=0

				if(P.Kaiten) del(src)
				if(P.drunk&&P.NonClan)
					view()<<"[M] desvia do ataque de [src]"
					sleep(13)
					src.cast=0
					return

				P.health -= Damage
				F_damage(P, Damage, "#ff0000")
				view() << "[src] atacou [M] tirando um dano de [Damage]!"
				P.Death(src)

/*		DosuKinuta
			name= "{Enemy}Dosu Kinuta"
			icon = 'Dosu Kinuta.dmi'
			guard = 1
			Tekken = 1
			maxhealth= 250000
			health = 250000
			stamina = 500000
			tai = 100000 //DANO
			nin = 25000
			gen = 25000
			shurikenskill= 25000
			NPC=1*/

mob
	samurais
		Nuke1
			name= "{Enemy}Samurai Slash"
			icon = 'samurai_m1.dmi'
			icon_state=""
			Village="Dark"
			guard = 1
			Tekken = 1
			waterwalk = 1
			maxhealth = 300000 //200000
			health = 300000 //200000
			stamina = 500000
			chakra = 99999999999999 //200000
			tai = 50000
			nin = 50000
			gen = 50000
			shurikenskill=50000
			NPC=1
mob
	samurais
		Nuke2
			name= "{Enemy}Samurai Gant"
			icon = 'warrior_f1.dmi'
			icon_state=""
			Village="Dark"
			guard = 1
			Tekken = 1
			waterwalk = 1
			maxhealth = 300000 //200000
			health = 300000 //200000
			stamina = 500000
			chakra = 99999999999999
			tai = 50000
			nin = 50000
			gen = 50000
			shurikenskill=50000
			NPC=1
mob
	samurais
		Nuke3
			name= "{Enemy}Samurai Gonb"
			icon = 'samurai_m3.dmi'
			icon_state=""
			Village="Dark"
			guard = 1
			Tekken = 1
			waterwalk = 1
			maxhealth = 300000 //200000
			health = 300000 //200000
			stamina = 500000
			chakra = 99999999999999
			tai = 50000
			nin = 50000
			gen = 50000
			shurikenskill=50000
			NPC=1
mob
	samurais
		Nuke4
			name= "{Enemy}Samurai Porll"
			icon = 'warrior_f2.dmi'
			icon_state=""
			Village="Dark"
			guard = 1
			Tekken = 1
			waterwalk = 1
			maxhealth = 300000 //200000
			health = 300000 //200000
			stamina = 500000
			chakra = 99999999999999//300000
			tai = 55500
			nin = 55500
			gen = 55500
			shurikenskill=55500
			NPC=1
mob
	samurais
		Nuke5
			name= "{Enemy}Samurai Silver"
			icon = 'warrior_m1.dmi'
			icon_state=""
			Village="Dark"
			guard = 1
			Tekken = 1
			waterwalk = 1
			maxhealth = 300000 //200000
			health = 300000 //200000
			stamina = 500000
			chakra = 99999999999999
			tai = 55500
			nin = 55500
			gen = 55500
			shurikenskill=55500
			NPC=1
mob
	samurais
		Nuke6
			name= "{Enemy}Samurai Twister"
			icon = 'warrior_m2.dmi'
			icon_state=""
			Village="Dark"
			guard = 1
			Tekken = 1
			waterwalk = 1
			maxhealth = 300000 //200000
			health = 300000 //200000
			stamina = 500000
			chakra = 99999999999999
			tai = 55500
			nin = 55500
			gen = 55500
			shurikenskill=55500
			NPC=1
mob
	samurais
		Nuke7
			name= "{Enemy}Samurai Wind"
			icon = 'warrior_m3.dmi'
			icon_state=""
			Village="Dark"
			guard = 1
			Tekken = 1
			waterwalk = 1
			maxhealth = 300000 //200000
			health = 300000 //200000
			stamina = 500000
			chakra = 99999999999999//400000
			tai = 55500
			nin = 55500
			gen = 55500
			shurikenskill=55500
			NPC=1
mob
	samurais
		Nuke8
			name= "{Enemy}Samurai Meteor"
			icon = 'warrior_m4.dmi'
			icon_state=""
			Village="Dark"
			guard = 1
			Tekken = 1
			waterwalk = 1
			maxhealth = 300000 //200000
			health = 300000 //200000
			stamina = 500000
			chakra = 99999999999999
			tai = 60000
			nin = 60000
			gen = 60000
			shurikenskill=60000
			NPC=1
mob
	samurais
		Nuke9
			name= "{Enemy}Samurai Gold"
			icon = 'warrior_m5.dmi'
			icon_state=""
			Village="Dark"
			guard = 1
			Tekken = 1
			waterwalk = 1
			maxhealth = 300000 //200000
			health = 300000 //200000
			stamina = 500000
			chakra = 99999999999999
			tai = 60000
			nin = 60000
			gen = 60000
			shurikenskill=60000
			NPC=1
mob
	samurais
		Nuke10
			name= "{Enemy}Samurai Platinum"
			icon = 'warrior_m6.dmi'
			icon_state=""
			Village="Dark"
			guard = 1
			Tekken = 1
			waterwalk = 1
			maxhealth = 300000 //200000
			health = 300000 //200000
			stamina = 500000
			chakra = 99999999999999//500000
			tai = 60000
			nin = 60000
			gen = 60000
			shurikenskill=60000
			NPC=1

mob
	samurais
		Nuke11
			name= "{Enemy}Samurai Anciao"
			icon = 'cursed.dmi'
			icon_state=""
			Village="Dark"
			guard = 1
			Tekken = 1
			waterwalk = 1
			maxhealth = 300000 //200000
			health = 300000 //200000
			stamina = 300000
			chakra = 99999999999999
			tai = 60000
			nin = 60000
			gen = 60000
			shurikenskill=60000
			NPC=1

mob
	samurais
		Ladrao
			name= "{Enemy}Ladrão"
			icon = 'LadraoNovo.dmi'
			icon_state="3"
			Village="Dark"
			guard = 1
			Tekken = 1
			waterwalk = 1
			maxhealth=150000
			health = 150000
			stamina = 500000
			chakra = 99999999999999
			tai = 75000
			nin = 75000
			gen = 75000
			shurikenskill=75000
			NPC=1


mob
	samurais
		NinjaAssassino
			name= "{Enemy}Ninja Assassino"
			icon = 'noble_m2.dmi'
			icon_state=""
			Village="Dark"
			guard = 1
			Tekken = 1
			waterwalk = 1
			maxhealth=300000
			health = 300000
			stamina = 500000
			tai = 100000
			nin = 100000
			gen = 100000
			shurikenskill=100000
			NPC=1

mob
	samurais
		DosuKinuta
			name= "{Enemy}Dosu Kinuta"
			icon = 'Dosu Kinuta.dmi'
			guard = 1
			Tekken = 1
			maxhealth= 250000
			health = 250000
			stamina = 500000
			tai = 100000 //DANO
			nin = 25000
			gen = 25000
			shurikenskill= 25000
			NPC=1



mob
	samurais
		Estshi
			name= "{Enemy}Shinobi Estudante"
			icon = 'sandnin.dmi'
			weaknin = 1
			Tekken = 1
			veloN = 1
			maxhealth=10
			health = 10
			tai = 5
			nin = 5
			gen = 5
			NPC=1
			guard = 1

mob
	samurais
		Leafvillageshinobi
			name= "Guardiao de Konoha"
			Village="Konoha"
			icon = 'Guards.dmi'
			icon_state="Guard Leaf/Grass"
			villagesnpc = 1
			Tekken = 1
			maxhealth = 1000000
			chakra = 99999999999999
			//Resistencia = 200000
			health = 1000000
			stamina = 20000000
			tai = 100000
			nin = 100000
			gen = 100000
			shurikenskill=100000
			NPC=1
			waterwalk=1
mob
	samurais
		Mistvillageshinobi
			name= "Guardiao de Kiri"
			icon = 'Guards.dmi'
			icon_state="Guard Snow/Mist/Rain/Water"
			Village="Kiri"
			villagesnpc = 1
			Tekken = 1
			maxhealth = 1000000
			//Resistencia = 200000
			health = 1000000
			stamina = 20000000
			tai = 100000
			nin = 100000
			gen = 100000
			shurikenskill=100000
			NPC=1
			waterwalk=1
mob
	samurais
		Rainvillageshinobi
			name= "Guardiao de Ame"
			icon = 'Guards.dmi'
			icon_state="Guard Snow/Mist/Rain/Water"
			Village="Ame"
			villagesnpc = 1
			Tekken = 1
			maxhealth = 1000000
			//Resistencia = 200000
			health = 1000000
			stamina = 20000000
			tai = 100000
			nin = 100000
			gen = 100000
			shurikenskill=100000
			NPC=1
			waterwalk=1
mob
	samurais
		Cloudvillageshinobi
			name= "Guardiao de Kumo"
			icon = 'Guards.dmi'
			icon_state="Guard Rock/Sand/Cloud"
			Village="Kumo"
			villagesnpc = 1
			Tekken = 1
			maxhealth = 1000000
			//Resistencia = 200000
			health = 1000000
			stamina = 20000000
			tai = 100000
			nin = 100000
			gen = 100000
			shurikenskill=100000
			NPC=1
			waterwalk=1
mob
	samurais
		Rockvillageshinobi
			name= "Guardiao de Iwa"
			icon = 'Guards.dmi'
			icon_state="Guard Rock/Sand/Cloud"
			Village="Iwa"
			villagesnpc = 1
			Tekken = 1
			maxhealth = 1000000
			//Resistencia = 200000
			health = 1000000
			stamina = 20000000
			tai = 100000
			nin = 100000
			gen = 100000
			shurikenskill=100000
			NPC=1
			waterwalk=1
mob
	samurais
		Otovillageshinobi
			name= "Guardiao de Oto"
			icon = 'Guards.dmi'
			icon_state="Guard Rock/Sand/Cloud"
			Village="Oto"
			villagesnpc = 1
			Tekken = 1
			maxhealth = 1000000
			//Resistencia = 200000
			health = 1000000
			stamina = 20000000
			tai = 100000
			nin = 100000
			gen = 100000
			shurikenskill=100000
			NPC=1
			waterwalk=1
mob
	samurais
		Sandvillageshinobi
			name= "Guardiao de Suna"
			icon = 'Guards.dmi'
			icon_state="Guard Rock/Sand/Cloud"
			Village="Suna"
			villagesnpc = 1
			Tekken = 1
			maxhealth = 1000000
			//Resistencia = 200000
			health = 1000000
			stamina = 20000000
			tai = 100000
			nin = 100000
			gen = 100000
			shurikenskill=100000
			NPC=1
			waterwalk=1

mob
	samurais
		NpcuchihaSobre
			name = "{Enemy}Uchiha Sobrevivente"
			icon = 'uchihanpc.dmi'
			icon_state= ""
			Village="Dark"
			guard = 1
			Tekken = 1
			waterwalk = 1
			maxhealth = 1000000 //200000
			health = 1000000 //200000
			stamina = 500000
			chakra = 99999999999999
			tai = 255500
			nin = 255500
			gen = 255500
			shurikenskill=255500
			NPC=1
mob
	samurais
		NpcSenjuSobre
			name = "{Enemy}Senju Sobrevivente"
			icon = 'RoupaFury.dmi'
			icon_state= ""
			Village="Dark"
			guard = 1
			Tekken = 1
			waterwalk = 1
			maxhealth = 1000000 //200000
			health = 1000000 //200000
			stamina = 500000
			chakra = 99999999999999
			tai = 255500
			nin = 255500
			gen = 255500
			shurikenskill=255500
			NPC=1

mob
	samurais
		NpcHyuugaSobre
			name = "{Enemy}Hyuuga Sobrevivente"
			icon = 'Soldado Invernal Icon.dmi'
			icon_state= ""
			Village="Dark"
			guard = 1
			Tekken = 1
			waterwalk = 1
			maxhealth = 1000000 //200000
			health = 1000000 //200000
			stamina = 500000
			chakra = 99999999999999
			tai = 255500
			nin = 255500
			gen = 255500
			shurikenskill=255500
			NPC=1

mob
	samurais
		orochimaru
			name= "{Enemy}Orochimaru"
			icon = 'orochimaru.dmi'
			orochimaru = 1
			Tekken = 1
			maxhealth= 1500000
			health = 1500000
			tai = 300000
			stamina = 500000
			nin = 300000 //DANO
			gen = 300000
			shurikenskill=50000
			NPC=1


mob/var
	kyuubinpc=0
	orochimaru=0
	ag=0
mob
	New()//when a mob is created
		..()
		sleep(20)
		if(isnull(src.client))//if it's not human
			ai_random_wander()//wander
			return..()//continue on with normal New() (create and whatnot)
		else
			return..()
mob/npc
	Summon_Vender
		name = "{NPC}Vendedor de Summon"
		icon = 'IconsNovos.dmi'
		icon_state= "Scroll"
		NPC = 1
		PK = 0
		imortal = 1
		health = 9999999999999999999999999999999999999999999999
mob/var/jatrocoucontrato=0
mob/npc
	VendedorSumon
		name = "{NPC}Vendedor de Contratos"
		icon = 'UltimetiumNPCS.dmi'
		icon_state="Vendedor de Pergaminhos"
		human = 0
		PK = 0
		imortal = 1
		health = 9999999999999999999999999999999999999999999999
		verb/Comprar()
			set src in oview(3)
			switch(input("Olá meu amigo, qual kuchiyose você gostaria de comprar?")in list("Katsuya","Gamabunta","Manda","Cão OP","Desfazer Contrato","Nada"))
				if("Katsuya")
					if(usr.seals>=100||!usr.Uzumaki||!usr.contrato)
						if(usr.Yen >= 5000000)
							usr.Yen -= 5000000
							usr.contrato = 1
							usr.lesmasumon=1
							usr.jatrocoucontrato+=1
						else
							usr<<"O custo é 5kk... pelo visto você é porbre."
					else
						usr<<"Você precisa ser Jounnin+ e não pode ser Uzumaki... e com certeza não pode ter um contrato!"
				if("Gamabunta")
					if(usr.seals>=100||!usr.contrato)
						if(usr.Yen >= 5000000)
							usr.Yen -= 5000000
							usr.contrato = 1
							usr.saposumon=1
							usr.jatrocoucontrato+=1
						else
							usr<<"O custo é 5kk... pelo visto você é porbre."
					else
						usr<<"Você precisa ser Jounnin+ e não ter contrato"
				if("Manda")
					if(usr.seals>=100||!usr.Uzumaki||!usr.contrato)
						if(usr.Yen >= 5000000)
							usr.Yen -= 5000000
							usr.contrato = 1
							usr.cobrasumon=1
							usr.jatrocoucontrato+=1
						else
							usr<<"O custo é 5kk... pelo visto você é porbre."
					else
						usr<<"Você precisa ser Jounnin+ e não pode ser Uzumaki"
				if("Cão OP")
					if(usr.seals>=100||!usr.Uzumaki||!usr.contrato)
						if(usr.Yen >= 5000000)
							usr.Yen -= 5000000
							usr.contrato = 1
							usr.cachorrosumon=1
							usr.jatrocoucontrato+=1
						else
							usr<<"O custo é 5kk... pelo visto você é porbre."
					else
						usr<<"Você precisa ser Jounnin+ e não pode ser Uzumaki"
				if("Nada")
					return
			if("Desfazer Contrato")
				switch(input("Olá meu amigo, Tem certeza que quer desfazer seu contrato?")in list("Sim","Não"))
					if("Sim")
						if(usr.Uzumaki)
							usr<<"Você não pode trocar de Invocação!"
							return
						if(usr.contrato)
							if(alert("Você tem certeza que quer desfazer?","Desfazer Contrato","Sim","Não") == "Sim")
								if(usr.Yen >= 5000000)
									usr.Yen -= 5000000
									usr.contrato = 0
									if(usr.cachorrosumon)
										usr.cachorrosumon = 0
										usr<<"Você desfez o contrato com Cachorros!"
									if(usr.lesmasumon)
										usr.lesmasumon = 0
										usr<<"Você desfez o contrato com Lesmas!"
									if(usr.saposumon)
										usr.saposumon = 0
										usr<<"Você desfez o contrato com Sapos!"
									if(usr.cobrasumon)
										usr.cobrasumon = 0
										usr<<"Você desfez o contrato com Cobras!"
								else
									usr<<"O custo é 5kk... pelo visto você é pobre."
						else
							usr<<"Você não têm nenhum contrato para desfazer!"
					if("Não")
						usr<<" Foi uma boa escolha."
						return
			if("Nada")
				usr<<"Ok"
				return

mob/npc
	Scroll_Vender
		name = "{NPC}Vendedor de pergaminhos"
		icon = 'IconsNovos.dmi'
		icon_state="Scroll"
		NPC = 1
		PK = 0
		imortal = 1
		health = 9999999999999999999999999999999999999999999999
		verb
			Comprar()
				set src in oview(3)
				switch(input("Qual pergaminho você quer comprar??")in list("Pergaminho em branco - 50k","Kage Bunshin - 300k",/*"Sushin no Jutsu - 100k"*/,"Pergaminho de Fuuka Houin - 50k","Nada"))
					if("Kage Bunshin - 300k")
						if(usr.Yen >= 300000)
							usr.Yen -= 300000
							usr.verbs += new /obj/bunshins/KageBunshin/verb/KageBunshin()
						else
							usr<<"Você não tem dinheiro suficiente!"
					if("Pergaminho em branco - 50k")
						if(usr.Yen >= 50000)
							usr.Yen -= 50000
							var/obj/pergaminhos/Semselo/R = new/obj/pergaminhos/Semselo
							R.loc = usr
						else
							usr<<"Você não tem dinheiro suficiente!"
					if("Pergaminho de Fuuka Houin - 50k")
						if(usr.fuukas>=2)
							usr<<"Você só pode carregar dois pergaminhos por vez."
							return
						if(usr.Yen >= 50000)
							usr.fuukas+=1
							usr.Yen -= 50000
							var/obj/pergaminhos/FuukaPerga/R = new/obj/pergaminhos/FuukaPerga
							R.loc = usr
						else
							usr<<"Você não tem dinheiro suficiente!"
					/*if("Sushin no Jutsu - 100k")
						if(usr.Yen >= 100000)
							usr.Yen -= 100000
							usr.verbs += new /mob/jutsu/verb/ShushinNoJutsu
						else
							usr<<"Você não tem dinheiro suficiente!"*/

					if("Nada")
						return
mob/var/talkedto=0
mob/var/itachitalked=0
mob/npc/Naruto
	name = "{NPC}Naruto"
	icon = 'Novos NPC.dmi'
	icon_state = "naruto"
	PK = 0
	NPC = 1
	imortal = 1
	health = 9999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category ="Naruto"
			switch(input("Olá! Garanto que você quer aprender minhas técnicas.") in list ("Eu também sou Uzumaki!","Vaza"))
				if("Eu também sou Uzumaki!")
					if(usr.Uzumaki == 1)
						usr<<"Olá aspirante a hokage^^."
						if(usr.rank == "Estudante")
							return
						if(usr.Uzumaki&&usr.level>=30)
							usr << "<B><font color = blue>Você aprendeu as 05 técnicas de clã uzumaki!!"
							usr.verbs += new /mob/jutsu/verb/Sexy()
							usr.verbs += new /mob/jutsu/verb/Rasengan()
							usr.verbs += new /mob/jutsu/verb/UzumakiRendan()
							usr.verbs += new /obj/bunshins/KageBunshinnojutsu/verb/KageBunshinNoJutsu()
							usr.verbs += new /obj/bunshins/TajuuKageBunshinNoJutsu/verb/TajuuKageBunshinNoJutsu()
							usr.verbs += new /mob/uzumaki/verb/UzumakiKyuu()
						else
							usr<<"Você precisa de level 30 para aprender as 05 técnicas basicas que posso te ensinar."
						if(usr.Uzumaki&&usr.rank == "Chuunin"||usr.seals>=100)
							usr << "<B><font color = blue>Você aprofundou seu conhecimento na técnica avançada do clã!!"
							usr.verbs += new /obj/bunshins/KageBunshinT/verb/KageBunshinT()
						else
							usr<<"Precisa ser pelo menos um Chuunin para aprender a técnica secreta do clã."
						if(usr.Uzumaki&&usr.ventoN>=2000&&usr.chakraN>=20000&&usr.rank == "Chuunin"||usr.ventoN>=2000&&usr.chakraN>=20000&&usr.seals>=100)
							usr <<"<B><font color = blue>Você aprendeu a fundir sua natureza de chakra no Rasengan."
							usr.verbs += new /mob/uzumaki/verb/Fuutonr()
						else
							usr<<"Precisa ser ao menos Chuunin, treinar sua pericia em fuuton e controle de chakra para aprender a fundir o elemento no Rasengan."
						if(usr.Uzumaki&&usr.chakraN>=10000&&usr.rank == "Chuunin"||usr.chakraN>=10000&&usr.seals>=100)
							usr.verbs += new /mob/jutsu/verb/OodamaRasengan()
							usr << "<B><font color = blue>Você aprendeu o Oodama Rasengan."
						else
							usr<<"Precisa ser ao menos Chuunin e treinar controle de chakra para aumentar o tamanho do seu Rasengan."
						if(usr.Uzumaki&&usr.seals>=100&&usr.chakraN>=100000&&usr.level>=275)
							usr.verbs += new /mob/jutsu/verb/KageRaseShuriken()
							usr << "<B><font color = blue>Você aprendeu o Kage Fuuton RasenShuriken."
						else
							usr<<"Você precisa ser ao menos Jounin, ter controle de chakra e mais level para aprender a multiplicar seu Fuuton RasenShuriken!"
					else
						usr<<" Você não é um abençoado pelo Chakra."



mob/npc/Ino
	name = "{NPC}Ino"
	icon = 'Ino.dmi'
	icon_state=""
	PK = 0
	NPC = 1
	imortal = 1
	health = 9999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Ino"
			switch(input("O que você quer gatinho(a)??.",text) in list ("Você pode me curar?","Eu sou um Yamanaka!","Esqueça"))
				if("Eu sou um Yamanaka!")
					if(usr.Yamanaka == 1)
						usr<<"Ok, vamos lá"
						if(usr.Yamanaka&&usr.level>=30)
							usr<< "<B><font color = blue>Você aprendeu as 03 tecnicas de Clã!!"
							usr.verbs += new /mob/Yamanaka/verb/MindTransfer()
							usr.verbs += new /mob/jutsu/verb/Mind1()
							usr.verbs += new /mob/Yamanaka/verb/Getsuei()
						else
							usr<<"Você precisa de level 30 para aprender 03 tecnicas basicas do clã."
						if(usr.Yamanaka&&usr.level>=50&&usr.Mnin>=25000)
							usr << "<B><font color = blue>Você aprendeu a técnica de Ninja Médico!"
							usr.verbs += new /mob/medical/verb/Shousen_Jutsu()
						else
							usr<<"Você precisa de level 50 e ninjutu para aprender a técnica médica."
						if(usr.Yamanaka&&usr.level>=75&&usr.Mnin>=50000)
							usr.verbs += new /mob/medical/verb/Restore_Jutsu()
							usr.verbs += new /mob/jutsu/verb/Desenvenenar()
							usr<< "<B><font color = blue>Você aprofundou seu conhecimento na arte Ninja Médica e aprendeu mais 02 técnicas!"
						else
							usr<<"Você precisa de mais level 75 e mais ninjutsu para se aprofundar em mais 2 técnicas médicas."
						if(usr.Yamanaka&&usr.chakraN>=30000&&usr.Mtai>=15000)
							usr.verbs += new /mob/haruno/verb/Ssoco()
							usr<< "<B><font color = blue>Você é capaz de concentrar seu chakra no punho e com isso aprendeu o Super Soco!"
						else
							usr<<"Treine seu taijutsu e controle de chakra para socar mais forte!"
						if(usr.Yamanaka&&usr.podedestruirmente)
							usr<<"Então Fu lhe concedeu sua confiança para aprender nosso jutsu secreto..."
							sleep(10)
							usr.verbs += new /mob/Yamanaka/verb/MPT()
							usr << "<B><font color = blue>Você é capaz de destruir mentes!"
						else
							usr<<"Encontre Yamanaka Fu e veja se você está preparado para aprender nosso jutsu secreto!"
						if(usr.Yamanaka&&usr.rank == "Chuunin"&&usr.level>=250||usr.seals>=100&&usr.level>=250)
							usr.verbs += new /mob/Yamanaka/verb/Shoshingan()
							usr.verbs += new /mob/Yamanaka/verb/Explosao()
							usr<<"Você aprendeu mais 2 jutsus supremos do clã."
						else
							usr<<"Você nao tem rank ou level suficiente para aprender mais 2 técnicas supremas do clã."
				if("Você pode me curar?")
					if(src in oview(3))
						usr<<"Ok."
						usr.health = usr.maxhealth
						usr.chakra = usr.Mchakra
						usr.stamina = usr.Mstamina
						usr<<"Você esta curado."
				if("Esqueça")
					usr<<"- Volte se precisar de algo."


mob/var/podedestruirmente=0
mob/npc/YFu
	name = "{NPC}Yamanaka Fu"
	icon = 'npcsx.dmi'
	icon_state="YFu"
	PK = 0
	NPC = 1
	imortal = 1
	health = 9999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Fu"
			switch(input("O que você quer?.",text) in list ("Eu sou um Yamanaka!","Esqueça"))
				if("Eu sou um Yamanaka!")
					if(usr.Yamanaka == 1)
						if(usr.Yamanaka&&usr.chakraN>=100000&&usr.Mnin>=120000&&usr.tai>=20000&&usr.rank == "Chuunin"||usr.chakraN>=100000&&usr.Mnin>=120000&&usr.tai>=20000&&usr.seals>=100)
							usr<<"Pelas minhas habiidades eu fui escolhido para ser segurança pessoal do mestre Danzo!"
							sleep(10)
							usr<<"Você parece que quer muito proteger o seu clã assim como eu quero proteger meu mestre!"
							sleep(10)
							usr<<"Diga a Ino que lhe consedi o direito de aprender a técnica secreta de nosso Clã!"
							usr.podedestruirmente=1
						else
							usr<<"Não tenho nada para lhe dizer no momento."
					else
						usr<<"Você não é do meu clã."
				if("Esqueça")
					usr<<"Volte se precisar de algo."

mob/npc/Sakura
	name = "{NPC}Sakura"
	icon = 'npcs.dmi'
	NPC = 1
	icon_state = "Sakura"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Sakura"
			switch(input("Você gostaria de se tornar um Iryonin?", text) in list("Me Ensine os Jutsus","Não, obrigado","Me conte mais sobre Venenos!"))
				if("Não, obrigado")
					usr<<"Fraco..."
				if("Me conte mais sobre Venenos!")
					if(usr.medicmen)
						if(!usr.mestredevenenos)
							if(!usr.comecouquestveneno)
								usr<<"{Sakura}: Muito bem..."
								sleep(10)
								usr<<"{Sakura}: Há muito tempo, ajudei um amigo da vila da Areia a se curar de um veneno muito poderoso..."
								sleep(10)
								usr<<"{Sakura}: Ouvi dizer que o criador deste veneno está por lá escondido pesquisando novos ingredientes.."
								usr.comecouquestveneno=1
							else
								usr<<"{Sakura}: Já te contei tudo que sei!"
						else
							usr<<"{Sakura}: Engraçadinho, você já se tornou um mestre.. agora treine!"
					else
						usr<<"Você não é um Ninja Médico!"
				if("Me Ensine os Jutsus")
					if(!usr.medicmen)
						usr<<"Você não é um aprendiz de médico!"
					else
						usr << "Bem-vindo!"
						if(usr.medicmen&&usr.level>=30)
							usr << "<B><font color = blue>Você aprendeu as 03 tecnicas basicas!"
							usr.verbs += new /mob/medical/verb/Shousen_Jutsu()
							usr.verbs += new /mob/medical/verb/Restore_Jutsu()
							usr.verbs += new /mob/medical/verb/ChakraNoMesu()
						else
							usr<<"Você precisa de level 30 para aprender as 03 tecnicas basicas"
						if(usr.medicmen&&usr.level>=50&&usr.Mnin>=10000)
							usr.verbs += new /mob/jutsu/verb/Curar()
							usr.verbs += new /mob/jutsu/verb/CorpoEletrico()
							usr.verbs += new /mob/haruno/verb/Envenenar()
							usr << "<B><font color = blue>Você avançou na arte medica com 03 tecnicas!"
						else
							usr<<"Treine até o level 50 e seu ninjutsu para 03 tecnicas avançadas!"
						if(usr.medicmen&&usr.level>=75&&usr.Mnin>=20000)
							usr.verbs += new /mob/haruno/verb/Criarant()
							usr.verbs += new /mob/jutsu/verb/Desenvenenar()
							usr.verbs += new /mob/jutsu/verb/Criarven()
							usr.verbs += new /mob/jutsu/verb/Reanima()
							usr << "<B><font color = blue>Você aprofundou seu conhecimento na arte Ninja Médica com mais 04 tecnicas!"
						else
							usr<<"Você precisa subir de nivel e treinar mais nin para mais 4 tecnicas!"
						if(usr.medicmen&&usr.Mtai>=30000&&usr.chakraN>=440000&&usr.rank == "Chuunin"||usr.medicmen&&usr.Mtai>=15000&&usr.chakraN>=30000&&usr.seals>=100)
							usr << "<B><font color = blue>Você é capaz de concentrar seu chakra no punho e com isso aprendeu o Super Soco!"
							usr.verbs += new /mob/haruno/verb/Ssoco()
							usr.verbs += new /mob/jutsu/verb/SuperPunhoT()
						else
							usr<<"Você precisa de mais taijutsu, controle de chakra e subir de rank para aprender um jutsu avançado."
/*						if(usr.medicmen&&usr.Mtai>=30000&&usr.chakraN>=40000&&usr.seals>=100)
							usr<<"<B><font color = green>Você é capaz de concentrar seu chakra no corpo e com isso aprendeu o Oukashou."
							usr.verbs += new /mob/jutsu/verb/SuperPunhoT()
						else
.							usr<<"Treine taijutsu, controle de chakra e rank para aprender a técnica suprema do soco."*/

mob/npc/SasoriQ
	name="{NPC}Sasori"
	icon='npcakat.dmi'
	icon_state="sasori"
	Village = "Akatsuki"
	PK=0
	imortal = 1
	health=99999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Sasori"
			switch(input("Oque vc quer?", text) in list("Me conte mais sobre Venenos!","Nada"))
				if("Nada")
					usr<<"Ok..."
				if("Me conte mais sobre Venenos!")
					if(usr.medicmen)
						if(!usr.mestredevenenos)
							if(usr.comecouquestveneno)
								if(usr.medicmen&&usr.seals>=100&&usr.chakraN>=200000&&usr.level>=250&&usr.venenouses>=500)
									usr<<"{Sasori}: Muito bem..."
									sleep(10)
									usr<<"{Sasori}: Venenos são muitos úteis durante uma batalha..."
									sleep(10)
									usr<<"{Sasori}: Quanto mais você os usa e quanto mais você controla seu chakra, mais potente pode ser.."
									usr<<"Parabéns, você se tornou um mestre dos venenos... agora treine!"
									usr.mestredevenenos=1
								else
									usr<<"{Sasori}: Você é muito fraco para ter minha atenção!"
							else
								usr<<"{Sasori}: Não tenho nada para falar com você!"
						else
							usr<<"{Sasori}: Engraçadinho, você já se tornou um mestre.. agora treine!"
					else
						usr<<"Você não é um Ninja Médico!"

mob/var/sabesharinganja=0
mob/npc/Sasuke
	name = "{NPC}Sasuke"
	icon = 'Novos NPC.dmi'
	NPC = 1
	icon_state = "sasuke"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Sasuke"
			switch(input("Garanto que você também é um justiceiro em busca de vingança",text) in list ("Também sou Uchiha!","Esqueça","Tenho algo pra vc","Oque me diz sobre Itachi?","Conte-me sobre Obito","Me mostre do que o Raiton é capaz!"))
				if("Também sou Uchiha!")
					if(usr.Uchiha == 1&&usr.level>=30&&!usr.Perdeusharingan&&!usr.PerdeuMS)
						usr.verbs += new /mob/uchiha/verb/Sharingan()
						usr<<"Bem vindo companheiro. Treine seu level e seus instintos para evoluir seu sharingan. Treinando genjutsu vc o deixa mais forte"
						usr.sabesharinganja=1
					else
						usr<<"Tenha pelo menos Lv 30 para falar comigo"
				if("Tenho algo pra vc")
					if(usr.inmissionC5&&usr.documentos==1)
						usr<<"Legal...são os documentos que pedi, mto obrigado por sua ajuda"
						usr.docs=1
						usr.documentos=0
					else
						usr<<"Vc não tem nada que me interesse"
						return
				if("Oque me diz sobre Itachi?")
					if(usr.Uchiha&&usr.Mnin >= 10000&&usr.level>=150&&usr.msitachi)
						usr.verbs += new /mob/katon/verb/KatonHousenkaTsumabeni()
						usr<<"Vou lhe mostrar oque meu irmão era capaz!"
					else
						usr<<"Você não merece saber!"
						return
				if("Conte-me sobre Obito")
					if(usr.Uchiha&&usr.msobito)
						if(usr.level>=50)
							usr.verbs += new /mob/obito/verb/Liberarmadeira()
							usr<<"Você aprendeu o jutsu inicial"
						else
							usr<<"Você precisa ser level 50"
						if(usr.rank == "Chuunin"||usr.seals>=100)
							usr.verbs += new /mob/obito/verb/TecnicaRaizes()
							usr<<"Você aprendeu o jutsu avançado de Obito"
						else
							usr<<"Seja Chuunin ou superior"
					else
						usr<<"Você não é Uchiha ou não possui o sharingan Obito!"
						return
				if("Me mostre do que o Raiton é capaz!")
					if(usr.Uchiha&&usr.ChidoriU>=150)
						usr.verbs += new /mob/uchiha/verb/ChidoriN()
						usr.verbs += new /mob/uchiha/verb/ChidoriEiso()
						usr.verbs += new /mob/jutsu/verb/ChidoriNagashi()
					else
						usr<<"Você não merece saber!"
						return

mob/npc/Shisui
	name = "{NPC}Shisui"
	icon = 'npcsx.dmi'
	NPC = 1
	icon_state = "Sai"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Shisui"
			switch(input("Bem vindo, jovem Uchiha",text) in list ("Tenho os seus Olhos!","Preciso do poder lendário do Mangekyou Sharingan!","Esqueça"))
				if("Tenho os seus Olhos!")
					if(usr.Uchiha == 1&&usr.sabesharinganja&&usr.msshisui&&!usr.Perdeusharingan&&!usr.PerdeuMS)
						if(usr.level>=75)
							usr.verbs += new /mob/katanaattack/verb/Atacar_com_Katana2()
							usr<<"Você aprendeu a manipular a Tanto!"
						else
							usr<<"Treine mais para aprender um Kenjutsu!"
						if(usr.level>=150)
							usr.verbs += new /mob/jutsu/verb/ShushinNoJutsu2()
							usr<<"Você aprendeu Shunshin no Jutsu!"
						else
							usr<<"Treine mais para aprender um Jutsu avançado!"
					else
						usr<<"Seja um Uchiha, desperte o Sharingan, depois fale comigo!"
				if("Esqueça")
					usr<<"Tudo bem!"
				if("Preciso do poder lendário dentro do Mangekyou Sharingan!")
					if(usr.seals<100)
						usr<<"Saia daqui seu fraco!"
						return
					if(usr.Uchiha&&usr.seals>=100)
						usr<<"Interessante...."
						if(usr.mangeN>=1&&usr.Mnin>=30000&&usr.Mgen>=80000&&usr.uchikills>=150&&usr.msshisui)
							usr<<"Vc aprendeu o lendário Susanoo"
							usr.verbs += new /mob/jutsu/verb/SusanooShisui()
							usr.SalvarAgora()
							return

mob/npc/MadaraGenin
	name = "{NPC}Madara"
	icon = 'npcsx.dmi'
	NPC = 1
	icon_state = "Madara"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Madara"
			switch(input("Bem vindo, jovem Uchiha",text) in list ("Tenho os seus Olhos!","Esqueça"))
				if("Tenho os seus Olhos!")
					if(usr.Uchiha == 1&&usr.sabesharinganja&&usr.msmadara&&!usr.Perdeusharingan&&!usr.PerdeuMS)
						if(usr.level>=75)
							usr.verbs += new /mob/Jutsu/verb/MadaraSearch()
							usr<<"Você aprendeu uma técnica Sensorial!"
						else
							usr<<"Treine mais para aprender uma técnica básica!"
						if(usr.level>=150)
							usr.verbs += new /mob/Jutsu/verb/KatonRyuuenHoukanoJutsu()
							usr<<"Você aprendeu o Ryuuen Houkano no Jutsu!"
						else
							usr<<"Treine mais para aprender um jutsu avançado!"
						if(usr.level>=175&&usr.fogoN>=500)
							usr.verbs += new /mob/Jutsu/verb/KatonGoukaMekkyaku()
							usr<<"Você aprendeu o Gouka Mekkyaku no Jutsu!"
						else
							usr<<"Treine mais para aprender um jutsu mais avançado! Não se esqueça de treinar seu elemento Fogo!"
						if(usr.level>=200&&usr.fogoN>=3000)
							usr.verbs += new /mob/Jutsu/verb/KatonGoukaMesshitsu()
							usr<<"Você aprendeu o Gouka Messhitsu! Um supremo Katon de Madara!"
						else
							usr<<"Treine mais para aprender um jutsu Supremo de Fogo! Não se esqueça de treinar seu elemento Fogo!"
						if(usr.level>=250&&usr.fogoN>=5000&&usr.rank == "Chuunin"||usr.level>=250&&usr.fogoN>=5000&&usr.seals>=100)
							usr<<"Você aprendeu Uchiha Gaeshi!"
							usr.verbs += new /mob/Jutsu/verb/MadaraRef()
						else
							usr<<"Seja um rank maior para aprender a Defesa Uchiha!"
					else
						usr<<"Seja um Uchiha e tenha o Sharingan despertado!"
				if("Esqueça")
					usr<<"Tudo bem!"

mob/npc/MissionC
	name = "{NPC}Sr.Klaus"
	icon = 'Sr.Klaus.dmi'
	icon_state = ""
	PK = 0
	NPC = 1
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Klaus"
			switch(input("O que deseja meu jovem",text) in list ("Quero informações!","Esqueça"))
				if("Quero informações!")
					if(usr.inmissionC2)
						usr<<"Preste atenção nessas informaçoes"
						usr<<"Você memorizou todos os dados passados por Klaus...volte para a vila para reportar as descobertas"
						usr.information=1
					else
						usr<<"Você não parece confiável"

				if("Esqueça")
					usr<<"Adeus"
					return


mob/npc/Haku
	name = "{NPC}Haku"
	icon = 'Haku.dmi'
	icon_state=""
	PK = 0
	NPC = 1
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Haku"
			switch(input("Olá, você é companheiro de meu clan?",text) in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.Haku == 1)
						usr<<"Ok, vamos lá"
						if(usr.Haku&&usr.level>=30)
							usr << "<B><font color = blue>Você aprendeu as 03 tecnicas basicas do clã!"
							usr.verbs += new /mob/haku/verb/SensatsuSuishou()
							usr.verbs += new /mob/haku/verb/MakyouHyoushou()
							usr.verbs += new /mob/haku/verb/Sensatsu()
						else
							usr<<"Você precisa de level 30 para aprender as tecnicas basicas."
						if(usr.Haku&&usr.level>=50&&usr.veloN>=25000)
							usr.verbs += new /mob/Haku/verb/HakuVelocidade()
							usr<<"Você agora é capaz de teleportar entre espelhos fora do Makyou Hyoushou"
						else
							usr<<"Você precisa de level 50 para aprender mais tecnicas basicas."
						if(usr.Haku&&usr.level>=100&&usr.veloN>=50000&&usr.Mnin>=30000)
							usr.verbs += new /mob/Haku/verb/HakuSunshin()
							usr.verbs += new /mob/jutsu/verb/Espelhoexplosivo()
							usr<<"Você agora aprendeu os 02 jutsus avançados"
						else
							usr<<"Você precisa de level 100 e veocidade para aprender as tecnicas avançadas do seu clã!"
						if(usr.Haku&&usr.level>=275&&usr.rank == "Chuunin"&&usr.Mnin>=75000||usr.level>=275&&usr.seals>=100&&usr.Mnin>=75000)
							usr.verbs += new /mob/jutsu/verb/Haku()
							usr.verbs += new /mob/jutsu/verb/Gelohousenka()
							usr.verbs += new /mob/jutsu/verb/Gelosawa2()
							usr<<"Você agora é capaz de usar os 03 Jutsus Supremos do seu clã!"
						else
							usr<<"Você precisa de mais level e ninjutsu para aprender aa tecnicas supremas do seu clã!"
					else
						usr<<"Saia então"
				if("Esqueça")
					usr<<"Não me incomode mais"

mob/npc/Temari
	name = "{NPC}Temari"
	icon = 'UltimetiumNPCS.dmi'
	icon_state="Temari"
	PK = 0
	NPC = 1
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Temari"
			switch(input("Olá, você é companheiro de meu clan?",text) in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.Temari == 1)
						usr<<"Ok, vamos lá"
						if(usr.Temari&&usr.level>=30)
							usr << "<B><font color = blue>Você aprendeu as 03 tecnicas basicas do clã!"
							usr.verbs += new /mob/jutsu/verb/NinpouKamaitachi()
							usr.verbs += new /mob/jutsu/verb/NinpouDaiKamaitachi()
							usr.verbs += new /mob/jutsu/verb/TemariFly()
						else
							usr<<"Você precisa de level 30 para aprender as 03 tecnicas basicas."
						if(usr.Temari&&usr.level>=100&&usr.chakraN>=25000&&usr.ventoN>=500)
							usr<<"<b><font color=blue> Você aprendeu a tecnica avançada do seu clã!"
							usr.verbs += new /mob/jutsu/verb/FuutonOkakeami()
						else
							usr<<"Você precisa treinar mais para aprender a técnica avançada de seu clã"
						if(usr.Temari&&usr.level>=200&&usr.chakraN>=50000&&usr.ventoN>=5000&&usr.rank == "Chuunin"||usr.level>=200&&usr.chakraN>=50000&&usr.ventoN>=5000&&usr.seals>=100)
							usr<<"<b><font color=blue> Você aprendeu a tecnica suprema do seu clã!"
							usr.verbs += new /mob/jutsu/verb/KiriKiriMai()
						else
							usr<<"Você precisa treinar mais para aprender a técnica suprema de seu clã"
					else
						usr<<"Não tenho nada a lhe ensinar."
				if("Esqueça")
					usr<<"Não me incomode mais"

mob/npc/Kiba
	name = "{NPC}Kiba"
	icon = 'Kiba.dmi'
	icon_state=""
	PK = 0
	NPC = 1
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Kiba"
			switch(input("Olá, você é companheiro de meu clan?",text) in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.Inuzuka == 1)
						usr<<"Ok, vamos lá"
						if(usr.Inuzuka&&usr.level>=30)
							usr << "<B><font color = blue>Você aprendeu as 2 tecnicas basicas do clã!"
							usr.verbs += new /mob/jutsu/verb/InvocarAnimal()
							usr.verbs += new /mob/jutsu/verb/Tsuuga()
						else
							usr<<"Você precisa de level 30 para aprender as tecnicas basicas."
						if(usr.Inuzuka&&usr.level>=50)
							usr.verbs += new /mob/jutsu/verb/ShikyakunoJutsu()
							usr.verbs += new /mob/jutsu/verb/JyuujinBunshinNoJutsu()
							usr<<"<b><font color=blue>Você evoluiu um pouco mais suas técnicas e aprendeu 2 novos jutsus."
						else
							usr<<"Você precisa de level 50 para aprender as tecnicas avançadas."
						if(usr.Inuzuka&&usr.level>=75&&usr.chakraN>=30000)
							usr.verbs += new /mob/jutsu/verb/DynamicMarking()
							usr.verbs += new /mob/jutsu/verb/InuzukaRastreio()
							usr<<"<b><font color=blue>Agora você é capaz de rastreiar seus inimigos através do faro, com 2 novos jutsus."
						else
							usr<<"Você precisa de level 75 e de controle de chakra para aprender a rastreiar seus inimigos através do faro."
						if(usr.Inuzuka&&usr.rank == "Chuunin"&&usr.level>=275&&usr.Mtai>=100000||usr.Inuzuka&&usr.seals>=100&&usr.level>=275&&usr.Mtai>=100000)
							usr.verbs += new /mob/jutsu/verb/InuzukaRyuuJinjuuHenge()
							usr<<"<b><font color=blue> Você aprendeu a tecnica suprema Inuzuka!"
						else
							usr<<"Você precisa ser no mínimo Chuunin para aprender o jutsu supremo!"
					else
						usr<<"Saia então"
				if("Esqueça")
					usr<<"Não me incomode mais"

mob/npc/Nara
	name = "{NPC}Shikamaru"
	icon = 'Nara.dmi'
	icon_state=""
	PK = 0
	NPC = 1
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Shikamaru"
			switch(input("O que você quer? Estou tão cansado...que saco.",text) in list ("Sou um Nara também!","Esqueça"))
				if("Sou um Nara também!")
					if(usr.Nara == 1)
						usr<<"Ok, vamos lá"
						if(usr.Nara&&usr.level>=30)
							usr << "<B><font color = blue>Você aprendeu as 5 tecnicas basicas!"
//							usr.verbs += new /mob/jutsu/verb/SombraHenge()
							usr.verbs += new /mob/jutsu/verb/Naraprisao()
						//	usr.verbs += new /mob/jutsu/verb/EscudoNara()
							usr.verbs += new /mob/nara/verb/kageshibari()
							usr.verbs += new /mob/nara/verb/ExtendShadow()
							usr.verbs += new /mob/nara/verb/RetractShadow()
							usr.verbs += new /mob/nara/verb/KageKubIwabaru()
						else
							usr<<"Você precisa de level 30 para aprender as 5 tecnicas basicas do clã."
						if(usr.Nara&&usr.level>=100)
							usr << "<B><font color = blue>Você aprendeu 02 jutsus supremos.!"
							usr.verbs += new /mob/jutsu/verb/Kagenui()
							usr.verbs += new /mob/jutsu/verb/NaraEsp()
						else
							usr<<"Você precisar se tornar um Jounin para aprender 2 jutsus avançados!"
						if(usr.Nara&&usr.rank == "Chuunin"&&usr.level>=250||usr.seals>=100&&usr.level>=250)
							usr<<"Você aprendeu o jutsu avançado do clã!"
							usr.verbs += new /mob/nara/verb/Kagemanearea()
						else
							usr<<"Você precisa ser mais forte e ter um Rank maior para aprender o jutsu avançado!"
					else
						usr<<"Me deixe tirar uma soneca"
				if("Esqueça")
					usr<<"Então se manda"

mob/npc/Kamizuri
	name = "{NPC}Bee Keeper"
	icon = 'BeeArmor.dmi'
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999


mob/npc/Kabuto
	name = "{NPC}Kabuto"
	icon = 'Kabuto.dmi'
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Kabuto"
			switch(input("Quer ver meus cartões de informações?.",text) in list ("Você pode me curar?","Me dê uma pílula","Esqueça"))
				if("Você pode me curar?")
					if(src in oview(3))
						usr<<"Vou te curar...."
						usr.health=usr.maxhealth
						usr.chakra=usr.Mchakra
						usr.poisoned=0
						usr.stamina = usr.Mstamina
						usr<<"Você foi curado."
				if("Me dê uma pílula")
					switch(input("Vai lhe custar 25000 Ryous.", text) in list("Sim","Não"))
						if("Sim")
							if(usr.Yen >= 25000)
								usr.Yen -= 25000
								var/obj/Pill/P = new/obj/Pill
								P.loc = usr
								usr<<"Pronto."
							else
								usr<<"Você não tem dinheiro suficiente!"
						else
							usr<<"Ok."
				if("Esqueça")
					usr<<"Volte se precisar de algo"
mob/npc/Medico
	name = "{NPC}Médico"
	icon = 'medico.dmi'
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Médico"
			switch(input("Olá meu jovem.",text) in list ("Pode me curar?","Comprar remedio pequeno - 20,000","Comprar remedio grande - 40,000","Cancelar"))
				if("Pode me curar?")
					if(src in oview(usr,3))
						usr<<"Ok."
						usr.health=usr.maxhealth
						usr.chakra=usr.Mchakra
						usr.stamina = usr.Mstamina
						usr.poisoned=0
						usr<<"Pronto. Você esta pronto para a próxima!"
				if("Comprar remedio pequeno - 20,000")
					if(src in oview(usr,3))
						if(usr.Yen >= 20000)
							usr.Yen -= 20000
							var/obj/Hpp/R = new/obj/Hpp
							R.loc = usr
						else
							usr<<"Você não tem dinheiro suficiente!"
				if("Comprar remedio grande - 40,000")
					if(src in oview(usr,3))
						if(usr.Yen >= 40000)
							usr.Yen -= 40000
							var/obj/Hpg/S = new/obj/Hpg
							S.loc = usr
						else
							usr<<"Você não tem dinheiro suficiente!"

mob/npc/Sabia
	name = "{NPC}Sabia dos Antidotos"
	icon = 'Antidoto.dmi'
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Médico"
			switch(input("Olá meu jovem.",text) in list ("Pode me curar?","Comprar antidoto - 35k","Esqueça"))
				if("Pode me curar?")
					usr<<"Ok."
					usr.poisoned=0
					usr<<"Pronto. Você esta pronto para a próxima!"
				if("Comprar antidoto - 35k")
					if(usr.Yen >= 35000)
						usr.Yen -= 35000
						var/obj/Ant/R = new/obj/Ant
						R.loc = usr
					else
						usr<<"Você não tem dinheiro suficiente!"
				if("Esqueça")
					usr<<"Ok então, estarei esperando pelo meu próximo paciente..."

mob/npc/Veneno
	name = "{NPC}Velho dos venenos"
	icon = 'npcmissao.dmi'
	icon_state = "velhinho"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Velho"
			switch(input("Olá meu jovem.",text) in list ("Comprar antidoto - 20k","Comprar veneno - 30k","Esqueça"))
				if("Comprar antidoto - 20k")
					if(usr.Yen >= 20000)
						usr.Yen -= 20000
						var/obj/Ant/R = new/obj/Ant
						R.loc = usr
					else
						usr<<"Você não tem dinheiro suficiente!"
				if("Comprar veneno - 30k")
					if(usr.Yen >= 30000)
						usr.Yen -= 30000
						usr.venN+=15
					else
						usr<<"Você não tem dinheiro suficiente!"
				if("Esqueça")
					usr<<"Ok então, estarei esperando pelo meu próximo paciente..."

mob/npc/Kaguya
	name = "{NPC}Kimimaro"
	icon = 'Kaguya.dmi'
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "???"
			switch(input("Esta é casa do clã Kaguya") in list ("Sou um Kaguya também!","Esqueça"))
				if("Sou um Kaguya também!")
					if(usr.Kaguya == 1)
						usr<<"Ok, vamos lá"
						if(usr.Kaguya&&usr.level>=30)
							usr << "<B><font color = blue>Você aprendeu as 4 tecnicas basicas!"
							usr.verbs += new /mob/kaguyajutsu/verb/YanagiNoMai()
							usr.verbs += new /mob/kaguyajutsu/verb/TsubakiNoMai()
							usr.verbs += new /mob/kaguyajutsu/verb/CreateBoneSword()
							usr.verbs += new /mob/kaguyajutsu/verb/TeshiSendan()
						else
							usr<<"Você precisa de level 30 para aprender as tecnicas basicas do clã"
						if(usr.Kaguya&&usr.level>=75&&usr.veloN>=30000)
							usr.verbs += new /mob/kaguyajutsu/verb/KaramatsuNoMai()
							usr.verbs += new /mob/kaguyajutsu/verb/CreateSpineWhip()
							usr.verbs += new /mob/kaguyajutsu/verb/TessenkaNoMai()
							usr<<"<B><font color = blue>Você evoluiu na arte de manipular ossos, aprendendo 3 novos jutsus."
						else
							usr<<"Você precisa ser ao menos level 75 e ter bastante velocidade para aprender as tecnicas avançadas!"
						if(usr.Kaguya&&usr.level>=275&&usr.Mtai>=120000&&usr.rank == "Chuunin"||usr.level>=275&&usr.seals>=100&&usr.Mtai>=120000)
							usr << "<B><font color = blue>Você aprendeu as 03 tecnicas supremas!"
							usr.verbs += new /mob/kaguyajutsu/verb/Sawarabi()
							usr.verbs += new /mob/jutsu/verb/VenenoKag()
							usr.verbs += new /mob/kaguyajutsu/verb/Hana()
						else
							usr<<"Você ainda está fraco para aprender as técnicas supremas do clã!"
					else
						usr<<"Vc não pertence a esse lugar"
				if("Esqueça")
					usr<<"Ótimo"

mob/npc/Katonteacher
	name = "{NPC}Sabio do Fogo"
	icon = 'Katonteacher.dmi'
	icon_state= ""
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Sabio"
			switch(input("O que você faz aqui?",text) in list ("Sou um usuario do fogo!","Esqueça"))
				if("Sou um usuario do fogo!")
					if(usr.Katon&&usr.fogoN>=50)
						usr.verbs += new /mob/katon/verb/KatonGoukakyuu()
						usr.verbs += new /mob/katon/verb/KatonHousenka()
						usr.verbs += new /mob/katon/verb/KatonRyuukanoJutsu()
						usr.verbs += new /mob/katon/verb/Katonheki()
						usr.kd=1
						usr<<"Vc aprendeu os jutsus Katon"
					else
						usr<<"Vc precisa ser katon e ter pericia minima de 50 para aprender seus jutsus elementais"
				if("Esqueça")
					usr<<"Ok"
					return


mob/npc/Raitonteacher
	name = "{NPC}Sabio do Trovao"
	icon = 'Raitonteacher.dmi'
	icon_state= ""
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Sabio"
			switch(input("O que você faz aqui?",text) in list ("Sou um usuario do trovao!","Esqueça"))
				if("Sou um usuario do trovao!")
					if(usr.Raiton&&usr.trovaoN>=50)
						usr.verbs += new /mob/raiton/verb/Raitonheki()
						usr.verbs += new /mob/rai/verb/Raikyuu()
						usr.verbs += new /mob/rai/verb/Ikazuchi_No_Kiba()
						usr.verbs += new /mob/rai/verb/RairyuuNoTatsumaki()
						usr.rd=1
					else
						usr<<"Vc precisa ser raiton e ter pericia minima 50 para aprender os jutsus elementais"
				if("Esqueça")
					usr<<"Ok"
					return

mob/npc/Dotonteacher
	name = "{NPC}Sabio da terra"
	icon = 'Dotonteacher.dmi'
	icon_state= ""
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Sabio"
			switch(input("O que você faz aqui?",text) in list ("Sou um usuario da terra!","Esqueça"))
				if("Sou um usuario da terra!")
					if(usr.Doton&&usr.terraN>=50)
						usr.verbs += new /mob/doton/verb/Doroudorno()
						usr.verbs += new /mob/doton/verb/DotonDoryoDango()
						usr.verbs += new /mob/doton/verb/DotonDoryuuheki()
						usr.verbs += new /mob/doton/verb/Dotont()
						usr.dd=1
					else
						usr<<"Vc precisa ser Doton e ter pericia minima 50 para aprender os jutsus elementais"
				if("Esqueça")
					usr<<"Ok"
					return

mob/npc/Suitonteacher
	name = "{NPC}Sabio da agua"
	icon = 'Suitonteacher.dmi'
	icon_state= ""
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Sabio"
			switch(input("O que você faz aqui?",text) in list ("Sou um usuario da agua!","Esqueça"))
				if("Sou um usuario da agua!")
					if(usr.Suiton&&usr.aguaN>=50)
						usr.verbs += new /mob/jutsu/verb/SuitonSuiryuudannoJutsu()
						usr.verbs += new /mob/suiton/verb/SuitonDaibakure()
						usr.verbs += new /mob/Suiton/verb/SuitonDaibakufunoJutsu()
						usr.verbs += new /mob/suiton/verb/SuitonDoryuudan()
						usr.sd=1
					else
						usr<<"Vc precisa ser suiton e ter pericia minima de 50 para aprender os jutsus elementais"
				if("Esqueça")
					usr<<"Ok"
					return

mob/npc/Fuutonteacher
	name = "{NPC}Sabio do vento"
	icon = 'Fuutonteacher.dmi'
	icon_state= ""
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Sabio"
			switch(input("O que você faz aqui?",text) in list ("Sou um usuario do vento!","Esqueça"))
				if("Sou um usuario do vento!")
					if(usr.Fuuton&&usr.ventoN>=50)
						usr.verbs += new /mob/fuuton/verb/Fuutonheki()
						usr.verbs += new /mob/fuuton/verb/FuutonS()
						usr.verbs += new /mob/fuuton/verb/FuutonTatsumaki()
						usr.verbs += new /mob/fuuton/verb/FuutonRenkuudan()
						usr.fd=1
					else
						usr<<"Vc precisa ser fuuton e ter pericia minima de 50 para aprender os jutsus elementais"
				if("Esqueça")
					usr<<"Ok"
					return
mob/npc/Lee
	name = "{NPC}Lee"
	icon = 'npcs.dmi'
	icon_state ="Lee"
	PK = 0
	imortal = 1
	health = 99999999999999999999999999999999999999999999999999999999999


mob/npc/Hinata
	name = "{NPC}Hinata"
	icon = 'npcsultimato.dmi'
	icon_state = "Hinata"
	PK = 0
	imortal = 1
	health = 99999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Hinata"
			switch(input("O quê você quer?",text) in list ("Nada","Sou um Hyuuga da primeira linhagem também!"))
				if("Sou um Hyuuga da primeira linhagem também!")
					if(usr.Hyuuga == 1&&usr.hyuugahinata&&!usr.PerdeuByakugan)
						usr<<"Ok, vamos lá"
						if(usr.rank == "Estudante")
							return
						if(usr.level>=30&&!usr.PerdeuByakugan)
							usr<<"Você aprendeu o Byakugan mais 2 jutsus!"
							usr.verbs += new /mob/hyuuga/verb/Jyuken()
							usr.verbs += new /mob/hyuuga/verb/Byakugan()
							usr.verbs += new /mob/hyuuga/verb/Gouken()
						else
							usr<<"Você precisa de level 30 para ativar seu byakugan ou então você teve seu Byakugan roubado."
						if(usr.level>=275&&!usr.PerdeuByakugan&&usr.rank == "Chuunin"||usr.level>=275&&!usr.PerdeuByakugan&&usr.seals>=100)
							usr<<"É hora de aprender o estilo supremo hyuuga"
							usr.verbs += new /mob/jutsu/verb/HyuugaShisa()
							//usr.verbs += new /mob/jutsu/verb/Hyuugapower()
							usr<<"Você aprendeu o jutsu avançado."
						else
							usr<<"Você não é forte o suficiente para o jutsu avançado."
					else
						usr<<"Você não é da minha linhagem!"


mob/npc/Neiji
	name = "{NPC}Neji"
	icon = 'npcs.dmi'
	icon_state = "Neiji"
	PK = 0
	imortal = 1
	health = 99999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Neiji"
			switch(input("O quê você quer?",text) in list ("Nada","Sou um Hyuuga da segunda linhagem também!"))
				if("Sou um Hyuuga da segunda linhagem também!")
					if(usr.Hyuuga == 1&&usr.hyuuganeji&&!usr.PerdeuByakugan)
						usr<<"Ok, vamos lá"
						if(usr.rank == "Estudante")
							return
						if(usr.level>=30&&!usr.PerdeuByakugan)
							usr<<"Você aprendeu o Byakugan e mais 2 jutsus."
							usr.verbs += new /mob/hyuuga/verb/Jyuken()
							usr.verbs += new /mob/hyuuga/verb/Byakugan()
							usr.verbs += new /mob/teste/verb/Haryate()
						else
							usr<<"Você precisa de level 30 para ativar seu byakugan ou então você teve seu Byakugan roubado."
						if(usr.level>=275&&!usr.PerdeuByakugan&&usr.rank == "Chuunin"||usr.level>=275&&!usr.PerdeuByakugan&&usr.seals>=100)
							usr<<"É hora de aprender o estilo supremo hyuuga"
							usr.verbs += new /mob/jutsu/verb/HyuugaShisa()
							usr.verbs += new /mob/jutsu/verb/Hyuugapower()
							usr<<"Você aprendeu 2 jutsus avançados."
						else
							usr<<"Você não é forte o suficiente para os jutsus avançados."
					else
						usr<<"Você não é da minha linhagem ou perdeu os olhos!"

mob/var/chidoriaprendido=0
mob/var/QuestKakashi=0
mob/npc/Kakashi
	name = "{NPC}Kakashi"
	icon = 'Kakashi Anbu.dmi'
	PK = 0
	imortal = 1
	health = 999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Kakashi"
			switch(input("Você sabe onde tem para vender o novo livro da coleção de Jiraya-Sama?",text) in list ("Não","Quero aprender uma de suas técnicas!","Por favor, senhor Kakashi, me treine!","O que é Kamui?"))
				if("Não")
					usr<<"Que pena"
				if("O que é Kamui?")
					if(usr.mangeN>=1&&usr.Mnin>=200000&&usr.Mchakra>=200000)
						usr<<"Com o kamui eu abro uma fissura dimensional e mando o que eu quiser pra outro lugar onde reabro a fissura"
						usr.quaseamat=0
						usr.quasekamui=1
				if("Por favor, senhor Kakashi, me treine!")
					if(usr.rank=="Genin"&&usr.seals==70||usr.rank=="Nukenin"&&usr.seals==100)
						usr<<"Já te ensinei como manipular melhor seus selos."
						return
					if(usr.rank=="Genin"||usr.rank=="Nukenin"&&usr.convidado==1&&usr.seals<>100)
						usr<<"Para evoluir neste treinamento é essencial que você treine duro, requer muita paciência e perseverança. A repetição nos leva a perfeição. Veja o Lee, ele executa os mesmos exercícios todos os dias. Até mesmo para o sasuke, que é um gênio, foi duro chegar ao mesmo nível de velocidade do Lee. a Sakura por exemplo, ao mesmo  tempo que se preocupava com sasuke, treinava muito aquilo que ela havia aprendido, o básico, hoje ela é uma excelente ninja graças a seu treinamento. Já o Naruto... *risos* Quem diria que iria evoluir tão rápido, mal conseguia fazer um bunshin, apesar de que suas habilidades em transformação sempre foram boas *embaraçado*. Desculpe-me por tomar seu tempo com minhas lembranças. Mas não esqueça: Não Existem Caminhos Fáceis, Corajosos E Insistentes Seguem Em Frente, Nunca Desista, Pois Quem Desisti, Não Se Torna Especial e Não Se Torna uma Lenda..."
						switch(input("",text) in list ("Hum!","Tchau"))
							if("Hum!")
								if(!usr.QuestKakashi&&usr.BunshinN>=1000&&usr.hengeN>=1000&&usr.KawaN>=1000&&usr.level>=200&&usr.veloN>=30000&&usr.chakraN>=30000&&usr.seals>=52)
									if(usr.rank=="Nukenin")
										if(usr.convidado)
											usr.seals = 100
										else
											usr.seals = 70
									else if(usr.rank=="Genin")
										usr.seals = 70
									usr<<"Hum Pelo Visto Você Entendeu meu Ponto de Vista, Você Aprendeu a Manipular Melhor Seus Selos"
								else
									usr<<"Tudo Exige um Pouco de Raciocinio"
							if("Tchau")
								usr<<"Larga Daqui"
					else
						usr<<"Você não precisa do meu treinamento."
				if("Quero aprender uma de suas técnicas!")
					if(usr.Uchiha == 1)
						usr<<"Ok, vamos lá"
						if(usr.rank == "Estudante")
							return
						if(usr.mssasuke&&usr.level>=75&&usr.Raiton)
							usr << "<B><font color = blue>Você aprendeu o Chidori!!"
							usr<<"Treine seu chidori para aprender técnicas avançadas"
							usr.verbs += new /mob/jutsu/verb/Chidori()
							usr.chidoriaprendido=1
						else
							usr<<"Você precisa de mais level e ter o tipo raiton para aprender o Chidori."
					else
						usr<<"Lamento mas apenas Uchihas conseguem aprender a técnica q posso ensinar. É suicidio ensinar a alguem que não possui o sharingan"




mob/npc/Gaara
	name = "{NPC}Gaara"
	icon = 'Novos NPC.dmi'
	icon_state = "gaara"
	PK = 0
	imortal = 1
	health = 99999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Gaara"
			switch(input("Veio descobrir o significado de sua existência?.",text) in list ("Sou um Sabaku também.","Nada"))
				if("Sou um Sabaku também.")
					if(usr.Gaaraclan)
						usr<<"Ok, vamos lá"
						if(usr.Gaaraclan&&usr.level>=30)
							usr << "<B><font color = blue>Você aprendeu os 6 jutsus basicos!"
							usr.verbs += new /mob/gaara/verb/SandSphere()
							usr.verbs += new /mob/gaara/verb/SabakuKyuu()
							usr.verbs += new /mob/gaara/verb/SabakuSousou()
							usr.verbs += new /mob/gaara/verb/SunaEye()
							usr.verbs += new /mob/gaara/verb/SunaEyeReturn()
							usr.verbs += new /mob/gaara/verb/SandArmor()
						else
							usr<<"Você precisa de level 30 para aprender os 6 basicos."
						if(usr.Gaaraclan&&usr.level>=75)
							usr << "<B><font color = blue>Você aprendeu os 4 jutsus avançados!!"
							usr.verbs += new /mob/flight/verb/Sandcloud()
							usr.verbs += new /mob/gaara/verb/SabakuTaisou()
							usr.verbs += new /mob/gaara/verb/Sandk()
							usr.verbs += new /mob/gaara/verb/SunaShigure()
						else
							usr<<"Você precisa treinar mais para aprender 4 jutsus avançados!"
						if(usr.Gaaraclan&&usr.level>=150)
							usr <<"<B><font color = cyan>Você aprendeu a Defesa Absoluta e o Suna Shuriken!"
							usr.verbs += new /mob/gaara/verb/SunaNoTate()
							usr.verbs += new /mob/gaara/verb/SunaShuriken()
						else
							usr<<"Você precisa treinar mais para aprender 2 Jutsus mais avançados!"
						if(usr.Gaaraclan&&usr.rank == "Chuunin"&&usr.level>=300||usr.seals>=100&&usr.level>=300)
							usr << "<B><font color = green>Você aprendeu os 2 jutsus finais do seu clã!!"
							usr.verbs += new /obj/bunshins/SunaBunshinnojutsu/verb/SunaBunshinNoJutsu
							usr.verbs += new /mob/gaara/verb/SabakuSotaiso()
						else
							usr<<"Você precisa ser no mínimo um Chuunin e treinar bastante para aprender os 2 jutsus supremos."
					else
						usr<<"Você não é protegido pela areia!"
				if("Nada")
					usr<<"Que pena"

mob/npc/Shino
	name = "{NPC}Shino"
	icon = 'npcs.dmi'
	icon_state = "Shino"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Shino"
			switch(input("...?",text) in list ("Sou um Aburame também", "Nada"))
				if("Sou um Aburame também")
					if(usr.Aburame)
						usr<<"Ok, vamos lá"
						if(usr.Aburame&&usr.level>=30)
							usr << "<B><font color = blue>Você aprendeu seus jutsus basicos!"
							usr.verbs += new /mob/jutsu/verb/Desintoxicar()
							usr.verbs += new /mob/jutsu/verb/Antigen()
							usr.verbs += new /mob/aburame/verb/KonchuuKyuu()
							usr.verbs += new /mob/aburame/verb/KonchuuKyuu2()
							usr.verbs += new /mob/aburame/verb/drenagem()
							usr.verbs += new /mob/aburame/verb/summonkonchuu()
							usr.verbs += new /mob/jutsu/verb/Escudoaburame()
							usr.verbs += new /mob/aburame/verb/BugArmor()
						else
							usr<<"Você precisa de level 30 para aprender os jutsus basicos de seu clã"
						if(usr.Aburame&&usr.level>=75)
							usr<<"<b><font color=blue>Você aprendeu as tecnicas avançadas."
//							usr.verbs += new /mob/Aburame/verb/Mushikame()
							usr.verbs += new /mob/aburame/verb/tsumoji()
						else
							usr<<"Você precisa ser mais forte para aprender o jutsu avançado de seu clã"
						if(usr.Aburame&&usr.podeaveneno&&usr.rank == "Chuunin"||usr.Aburame&&usr.podeaveneno&&usr.seals>=100)
							usr<<"Ok, vamos lá, vou te ensinar a usar os Nano Besouros venenosos"
							sleep(10)
							usr<<"<b><font color=green>Você aprendeu a tecnica Suprema de seu clã!"
							usr.verbs += new /mob/aburame/verb/AburameEnvenenar()
						else
							usr<<"Encontre Torune e ele dirá se você e capaz de aprender a técnica suprema dele!"
					else
						usr<<"Você não é do meu clã, saia daqui!"
				if("Nada")
					usr<<"Tchau..."


mob/npc/Torune
	name = "{NPC}Torune"
	icon = 'npcsx.dmi'
	icon_state = "Capetinha"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
//			set category = "Torune"
			switch(input("...?",text) in list ("Sou um Aburame também", "Nada"))
				if("Sou um Aburame também")
					if(usr.Aburame)

						if(usr.Aburame&&usr.level>=275&&usr.Mnin>=100000&&usr.rank == "Chuunin"||usr.Aburame&&usr.level>=275&&usr.Mnin>=100000&&usr.seals>=100)
							usr<<"Quando criança, fui separado do meu irmão de criação Shino!"
							sleep(10)
							usr<<"Vejo que você tem a mesma bondade e inocência de meu irmão!"
							sleep(10)
							usr<<"Fale com Shino novamente, ele verá que você merece saber do nosso jutsu secreto!"
							usr.podeaveneno=1
						else
							usr<<"Você precisa ser mais forte!"
					else
						usr<<"Você não é do meu clã, saia daqui!"
				if("Nada")
					usr<<"Tchau..."
mob/var/podeaveneno=0

mob/var/sabeizanagi=0
mob/npc/Danzo
	name = "{NPC}Danzo"
	icon = 'UltimetiumNPCS.dmi'
	icon_state = "Danzo"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
		//	set category = "Danzo"
			switch(input("...?",text) in list ("Quero aprender seus segredos!", "Nada"))
				if("Quero aprender seus segredos!")
					if(usr.Uchiha)
						if(usr.mangeN>=10&&usr.vitorias>=200&&usr.uchikills>=200&&usr.level>=350)
							usr<<"Ok, <b><font color=green>você aprendeu o Izanagi!"
							usr.verbs += new /mob/jutsu/verb/NovoIza()
							usr.sabeizanagi=1
					else
						usr<<"Você não tem nada para falar comigo!"
				if("Nada")
					usr<<"Tchau..."


mob/npc/Itachi
	name = "{NPC}Itachi"
	icon = 'npcs.dmi'
	icon_state = "Itachi"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Subclan"
			switch (input("Quer ser do subclan Itachi. Uma vez que escolher não poderá mudar???","Itachi") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.Village=="Akatsuki"&&!usr.subclan)
						if(WItachi:dono == "Ninguem")
							usr<<"<B><font color = blue>Mto bem vc aprendeu os jutsus"
							WItachi:dono = usr.key
							SubAkatSave()
							usr.subclan=1
							usr<<"<B><font color = blue>Muito bem você aprendeu os jutsus do Sub Itachi"
							usr.verbs += typesof(/mob/itachi/verb)
						else
							usr<<"Alguém já escolheu este Sub!"
					else
						usr<<"Você precisa ser da Akatsuki,e não ter subclan"


mob/npc/Squads
	name="{NPC}Formador de Equipes Jounin"
	icon='Spawn.dmi'
	PK = 0
	imortal = 1
	health=999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(3)
			//set category="Esquadrao"
			switch(input("Quer criar um esquadrão para recrutar chuunins e genins?",text) in list ("Sim","Não"))
				if("Sim")
					if(usr.squads==0)
						if(usr.rank=="Estudante"||usr.rank=="Genin"||usr.rank=="Chuunin")
							usr<<"Você não é autorizado à criar um esquadrão."
							return
						else
							alert("Lembre-se! Tira o FONT SIZE do começo, senão corre o risco de ser banido ou punido!")
							var/squad = input("","Esquadrão") as text|null
							usr.squads=1
							usr.esquadrao="[(squad)]"
							usr.verbs += typesof(/mob/Squads/verb)
							usr.verbs += /mob/Squads/verb/Falar_Esquadrao
					else
						usr<<"Você já está em um esquadrão"
				else
					usr<<"Se você acha que ainda não está pronto para isso, então é o melhor a se fazer."



mob/npc/Jutsus
	name="{NPC}Jutsus Basicos"
	icon='Iruka.dmi'
	PK = 0
	imortal = 1
	health=999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(3)
//			set category="Iruka"
			switch(input("Quer aprender jutsus basicos!",text) in list ("N","Sim"))
				if("Sim")
					usr.verbs += new /mob/jutsu/verb/HengeNoJutsu()
					usr.verbs += new /mob/jutsu/verb/Kawarimi()
					usr.verbs += new /mob/jutsu/verb/BunshinNoJutsu()
					usr<<"Pronto"

mob/npc/Gr
	name="{NPC}Genin Reborn"
	icon='caramisterioso.dmi'
	PK = 0
	imortal = 1
	health=999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(3)
//			set category="Iruka"
			switch(input("Quer voltar para o complexo Genin??",text) in list ("N","S"))
				if("S")
					if(usr.rank=="Estudante")
						usr.loc=locate(49,14,53)
						usr<<"Pronto"

mob/npc/name
	name="{NPC}Trocar Nome"
	icon='caramisterioso.dmi'
	PK = 0
	imortal = 1
	health=999999999999999999999999999999999999999999999


mob/npc/namevip
	name="{NPC}Trocar Nome"
	icon='caramisterioso.dmi'
	PK = 0
	imortal = 1
	health=999999999999999999999999999999999999999999999


mob/npc/Genin
	name="{NPC}Iruka"
	icon='Iruka.dmi'
	PK = 0
	imortal = 1
	health=999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(3)
			//set category="Iruka"
			switch(input("Para você se tornar um Genin precisa fazer as missoes indicadas pelos tutores!",text) in list ("Ja fiz","Ok"))
				if("Ja fiz")
					if(usr.rank=="Estudante"&&usr.gskillador&&usr.gsup&&usr.gsjut&&usr.gsprova)
						usr<<" Vc se qualifcou parabéns. Falta apenas mais uma prova. Encontre Kakashi Sensei e pegue o guizo q está com ele!"
						usr.loc = locate(461,51,6)
					else
						usr<<"Você ainda não completou todas as provas"
				else
					usr<<"Ok então."

mob/npc/Tutor1
	name="{NPC}Tutor NRB"
	icon='uchihanpc.dmi'
	PK = 0
	imortal = 1
	health=999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(3)
			//set category="Iruka"
			switch(input("Olá, bem-vindo novato!",text) in list ("Olá","Cancelar"))
				if("Olá")
					usr<<"Fale com todos os tutores para aprender mais sobre o server. Para recuperar vida fale com o Ninja Médico ou use remédios, pilulas de soldado também ajudam. Se vc morrer ou por algum motivo sair daqui sem ter virado Genin fale com o Genin Reborn q fica dentro das casas dos kages"
					usr.Gs1()
				if("Cancelar")
					usr<<"Ok então."

mob/npc/Tutor2
	name="{NPC}Tutor de jutsus"
	icon='npcsnovos.dmi'
	icon_state="malejounin1"
	PK = 0
	imortal = 1
	health=999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category="Iruka"
			switch(input("Olá amigo, eu vou lhe ensinar seus primeiros jutsus. Quando você executá-los ao menos uma vez fale comigo",text) in list ("Me ensine","Já executei"))
				if("Já executei")
					if(usr.hengeN>=1&&usr.KawaN>=1&&usr.BunshinN>=1)
						usr<<"Muito bem, muito bem... você realmente aprendeu os jutsus facilmente! Pode prosseguir, minha parte termina por aqui."
						usr<<"Lembre-se, como esses 3 jutsus são basicos ajudam muito no treino de chakra, por isso se vc quiser fortalecer seu controle de chakra use-os."
						usr.gsjut = 1
					else
						usr<<"Execute os 3 jutsus pelo menos uma vez."
				if("Me ensine")
					usr<<"Preste atenção...vou lhe ensinar o Bunshin no jutsu, Henge no jutsu e o Kawarimi no jutsu, os três jutsus básicos de um ninja, além disso lhe ensinarei o Mizu no Kinobiri(Andar na Água). Se quando for executá-los sua mão escorregar, não se preocupe, isso acontece pois sua precisão com os selos ainda é baixa, e com o tempo sua experiência em fazer jutsus aumentará."
					usr.verbs += new /mob/jutsu/verb/HengeNoJutsu()
					usr.verbs += new /mob/jutsu/verb/Kawarimi()
					usr.verbs += new /mob/jutsu/verb/BunshinNoJutsu()
					usr.verbs += new /mob/jutsu/verb/Waterwalk()

mob/npc/Tutor3
	name="{NPC}Tutor de armas"
	icon='npcsnovos.dmi'
	icon_state="malejounin5"
	PK = 0
	imortal = 1
	health=999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category="Iruka"
			switch(input("Olá, amigo, vou lhe ensinar algo sobre armas ninjas",text) in list ("Me ensine","Não quero aprender"))
				if("Não quero aprender")
					usr<<"A diferença entre um grande ninja e apenas um perdedor pode estar nessa decisão...a escolha é sua."
				if("Me ensine")
					usr<<"Armas sao muito úteis pois não gastam seu chakra. Você as usa clicando na sua aba taijutsu. Para upar suas habilidades com Armas, basta utilizar o Log de treino de armas."
					usr<<"Ha outras armas mto úteis. As bombas de luz podem ser a cartada de mestre ara vencer uma batalha. Elas cegam temporariamente o adversario dando a vc a chance de fugir ou montar uma estratégia de ataque."
					usr<<"Alem delas existe o Makibishi para atrasar o adversario e o Papel-Bomba que tbm é um grande aliado"
					usr.verbs += new /mob/jutsu/verb/AtirarKunai()
					usr.verbs += new /mob/jutsu/verb/AtirarShuriken()
					usr.verbs += new /mob/jutsu/verb/AtirarWind()
					usr.verbs += new /mob/jutsu/verb/AtirarTrik()


mob/npc/Tutor4
	name="{NPC}Tutor de kills"
	icon='npcsnovos.dmi'
	icon_state="malejounin4"
	PK = 0
	imortal = 1
	health=999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category="Iruka"
			switch(input("Olá companheiro ninja. Entre na arena ao lado e derrote pelo menos 3 shinobis e fale comigo novamente",text) in list ("Me dê dicas","Já os derrotei"))
				if("Já os derrotei")
					if(usr.gskill>=3)
						usr<<"Muito, bem você está no caminho certo para se tornar um grande ninja. Meu trabalho com você acaba por aqui, siga em frente para seu próximo desafio!"
						usr.gskillador = 1
				if("Me dê dicas")
					usr<<"A base do servidor é o PVP que é a luta entre players, então você terá que se acostumar com a luta.Um pacifista pode até se tornar forte no servidor mas não conseguirá subir de posto sem lutar. Mas lembre-se, não ataque outros estudantes nessa área, apenas os NPCs"

mob/npc/Tutor5
	name="{NPC}Tutor de up"
	icon='npcsnovos.dmi'
	icon_state="malejounin2"
	PK = 0
	imortal = 1
	health=999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category="Iruka"
			switch(input("Olá amigo, vou lhe ensinar a aumentar seus stats aqui no NRB. Preste atenção!",text) in list ("Me ensine","Já tenho os stats que você me pediu"))
				if("Já tenho os stats que você me pediu")
					if(usr.Mnin>=50&&usr.Mgen>=50&&usr.Mtai>=50&&usr.shurikenskill>=50)
						usr<<"Muito bom, você realmente se superou. Siga em frente para o próximo tutor, minha parte na sua jornada para se tornar um grande ninja termina por aqui! Boa-sorte!"
						usr.gsup = 1
					else
						usr<<"Você ainda não está forte como eu quero"
				if("Me ensine")
					usr<<"Preste atenção...na aba treinamento existem 2 comandos de treino básicos: Liberar chakra, que aumentará seus pontos de Ninjutsu e Concentrar, que aumentará seus pontos em genjutsu. Para treinar seu taijutsu, aproxime-se de um tronco e na aba Treinamento aparecerá a opção 'Treinar no Log', para treinar armas chegue perto dos Alvos nas paredes e aparecerá na aba Treinamento a opção 'Treinar Armas'. Clique uma vez apenas e fique treinando. Quando quiser parar basta clicar de novo.Para treinar sua stamina basta andar com pesos ou subir montanhas e para treinar seu controle de chakra, ande na água. Minha explicação termina por aqui, agora é sua vez: volte até mim quando tiver 50 pontos nos quatro stats básicos (Armas, Ninjutsu, Taijutsu e Genjutsu). Boa sorte!"
					usr<<"Ah mais uma coisa...quando você treina qualquer status base (Tai,Nin, Gen ou Armas) você adquire EXP, HP e aumenta seu Level. Os leveis servem de parametro para ver o quanto você é forte. Através de seu level você se qualifica para provas de promoção de rank e para aprender novas técnicas"

mob/npc/Sensor
	name="{NPC}Sensor Jounin"
	icon='sensor.dmi'
	PK = 0
	imortal = 1
	health=999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(3)
			set category="Sensor"
			switch(input("O que vc quer aqui?",text) in list ("Quero virar Jounin","Nada"))
				if("Quero virar Jounin")
					if(usr.rank=="Chuunin"&&usr.emteste)
						usr<<"Mto bem...vou lhe mandar para um campo de provas onde vc terá que enfrentar um outro jounin...assim saberemos se vc merece a promoção"
						sleep(20)
						usr.loc=locate(90,10,26)
					else
						usr<<"Saia daqui, vc não está pronto"
				if("Nada")
					return



//npcs genin-------------------------------------------------------

mob/var/nomeantigo = ""
mob/npc/NomesVip
	name="{NPC}Troque seu Nome/Vip"
	icon='caramisterioso.dmi'
	PK = 0
	imortal = 1
	health=999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category="Nome"
			var/list/L
			L = list("font size","big","small")
			var/list/C
			C = list("font color")
			if(!usr.EhVip)return
			switch(alert("Você quer trocar seu nome?","Trocando seu Nome","Sim","Não"))
				if("Sim")
					usr.nomeantigo = usr.name
					var/nome=null
					var/config = "065-090&097-122&095&032"
					while(!asciifilter(nome,config)||nome == null)nome = input("Escolha um Nome","Nome",usr.name) as text
					//var/nome = input("Escolha seu nome!")as text
					if(!nome)
						alert("Seu nome não pode ficar em branco!")
						return
					if(nome==usr.key)return
					for(var/X in L)
						if(findtext(nome,X))
							alert("Você não pode alterar o tamanho do nome!")
							return
					for(var/X in C)
						if(findtext(nome,X))
							alert("Você não pode colorir o nome!")
							return
					if(length(nome) > 30)
						alert("Seu nome não pode ser tão grande!")
						return
					usr.name = nome
					text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) trocou seu nome de <b>[usr.nomeantigo]</b> para <b>[usr.name]</b> <BR>","NameLog.html")
				if("Não")
					return

mob/npc/Sakon
	name="{NPC}Sakon"
	icon='npcs.dmi'
	icon_state="Sakon"
	PK=0
	imortal = 1
	health=9999999999999999999999999999999999999999999999999999999999


mob/npc/Kido
	name="{NPC}Kidomaru"
	icon='npcs.dmi'
	icon_state="Kido"
	PK=0
	imortal = 1
	health=999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Kido"
			switch(input("O que você quer??",text) in list ("Sou da SO tbm","Esqueça"))
				if("Sou da SO tbm")
					if(usr.Village=="Sound Organization")
						usr<<"Olá companheiro deixe eu mostrar as minhas técnicas."
						if(usr.Village=="Sound Organization")
							usr << "<B><font color = blue>Você aprendeu CreateBows!"
							usr.verbs += new /mob/Spiderclan/verb/CreateSpiderBow()
						else
							usr<<"Você não pertence à SO."
						if(usr.Village=="Sound Organization")
							usr<<"<b><font color=blue> Você aprendeu Create Arrows!"
							usr.verbs += new /mob/Spiderclan/verb/CreateSpiderArrows()
						else
							usr<<"Você não pertence à SO."

						if(usr.Village=="Sound Organization")
							usr<<"<b><font color=blue> Você aprendeu Web Sousou!"
							usr.verbs += new /mob/Spiderclan/verb/WebSabakuSousou()
						else
							usr<<"Você não pertence à SO."
						if(usr.Village=="Sound Organization")
							usr<<"<b><font color=blue>Você aprendeu Web Kyuu!"
							usr.verbs += new /mob/Spiderclan/verb/WebSabakuKyuu()
						else

							usr<<"Você não pertence à SO."
						if(usr.Village=="Sound Organization")
							usr<<"<b><font color=blue>Você aprendeu Spiders Web!"
							usr.verbs += new /mob/Spiderclan/verb/Spiderweb()
						else
							usr<<"Você não pertence à SO."
						if(usr.Village=="Sound Organization")
							usr<<"<b><font color=blue>Você aprendeu Create Spikes!"
							usr.verbs += new /mob/Spiderclan/verb/CreateSpiderSpikes()
						else
							usr<<"Você não pertence à SO."
						if(usr.Village=="Sound Organization")
							usr<<"<b><font color=blue>Você aprendeu Homing Spikes!"
							usr.verbs += new /mob/Spiderclan/verb/HomingSpikes()
						else
							usr<<"Você não pertence à SO."
					else
						usr<<"Mentiroso! Saia daqui AGORA!"
				if("Esqueça")
					usr<<"Você não é nada a não ser uma marionete."

mob/npc/Tayuya
	name="{NPC}Tayuya"
	icon='npcs.dmi'
	icon_state="Tayuya"
	PK=0
	imortal = 1
	health=99999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Tayuya"
			switch(input("Olá, eu sou a mestra da flauta. Você quer aprender como usar bem uma flauta?",text) in list ("Sim","Não Obrigado"))
				if("Sim")
					if(usr.Village=="Sound Organization"&&!usr.subclan)
						if(WTayuyaSO:dono == "Ninguem")
							usr<<"<B><font color = blue>Mto bem vc aprendeu os jutsus"
							WTayuyaSO:dono = usr.key
							SubAkatSave()
							usr.subclan=1
							usr.verbs += typesof(/mob/Tay/verb)
							var/obj/Flute/F = new/obj/Flute
							F.loc=usr
							usr.faceicon = 'tayuya.bmp'
						else
							usr<<"Alguém já escolheu este subclã!"
					else
						usr<<"Você não é da SO ou já possui um subclan"

mob/npc/Jiroubou
	name="{NPC}Jiroubou"
	icon='npcs.dmi'
	icon_state="Jiroubou"
	PK=0
	imortal = 1
	health=99999999999999999999999999999999999999999999999999999999

mob/npc/Orochimaru2
	name = "{NPC}Orochimaru"
	icon = 'orochimaru2.dmi'
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Orochimaru"
			switch(input("O que você quer, ser uma de minhas cobaias?") in list ("Também sou Orochimaru","Não quero nada"))
				if("Também sou Orochimaru")
					if(usr.Clan=="Orochimaru")
						if(usr.rank=="Estudante")
							usr<<"You must be a Genin or higher."
							return
						usr<<"Hello."

						if(usr.Orochimaru&&usr.Mnin >=2000)
							usr << "<B><font color = blue>Você aprendeu o Kage Teleport No Jutsu!!"
							usr.verbs += new /mob/Orochimaru/verb/Okageteleport()
						else
							usr<<"Você precisa de 2000 Nin para aprender o Kage Teleport No Jutsu."
						if(usr.Orochimaru&&usr.Mnin >=100000&&usr.Mgen >=20000&&usr.vitorias >=100)
							usr << "<B><font color = blue>Você aprendeu Sanjuu Rashoumon!!"
							usr.verbs += new /mob/jutsu/verb/SanjuuRashoumon()
						else
							usr<<"Você precisa de 100000 de Nin, 20000 de gen e 100 kills para aprender o Sanjuu Rashoumon."
						if(usr.Orochimaru&&usr.Mnin >=1000)
							usr << "<B><font color = blue>Você aprendeu o Onslaught Of The Snake!!"
							usr.verbs += new /mob/Orochimaru/verb/Onslaught()
						else
							usr<<"Você precisa de 1000 Nin para aprender onslaught Of The Snake."
						if(usr.Orochimaru&&usr.Mnin >=5000)
							usr<<"<b><font color=blue>Você aprendeu o Kuchiyose No Jutsu."
							usr.verbs += new /mob/Orochimaru/verb/Summon_Snake_Orochimaru()
							usr.contents += new /obj/Big_Snake_Scroll

						else
							usr<<"Você precisa de 5000 Nin para aprender o Kuchiyose No Jutsu."
						if(usr.Orochimaru&&usr.Mnin >=2000)
							usr << "<B><font color = blue>Você aprendeu o Snake Shield!!"
							usr.verbs += new /mob/Orochimaru/verb/SnakeShield()
						else
							usr<<"Você precisa de 2000 Nin para aprender o Snake Shield."
						if(usr.Orochimaru&&usr.Mgen>=8000)
							usr<<"<B><font color = blue> Você aprendeu Shikume no jutsu"
							usr.verbs += new /mob/Orochi/verb/ShikuminoJutsu()
						else
							usr<<"Você precisa de 8k em gen para obter o Shikume no jutsu"
						if(usr.Orochimaru&&usr.Mnin>=80000)
							usr<<"Você aprendeu Snake Kyuu e Snake Sousou"
							usr.verbs += new /mob/Orochi/verb/SnakeKyuu()
							usr.verbs += new /mob/Orochi/verb/SnakeSousou()
						else
							usr<<"Você precisa de 80k de nin para obter Snake Kyuu e Snake Sousou"
						if(usr.Orochimaru&&usr.Mnin>=10000)
							usr<<"<B><font color = blue>Você aprendeu Tajuu Snake no Jutsu"
							usr.verbs += new /mob/Orochimaru/verb/Tajuusnake()
						else
							usr<<"Você precisa de 10k de nin para aprender o Tajuu Snake no Jutsu"

					else
						usr<<"Saia daqui"

				if("Esqueça.")
					usr<<"Thank you Baka."

			if("Não quero nada")
				return

mob/npc/Jailman
	name = "{NPC}Jailman"
	icon = 'Jailman.dmi'
	PK = 0
	imortal = 1
	health = 99999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Talk"
			usr << "Me deixe sair... Eu sou inocente?!"

mob/npc/Zetsu
	name="{NPC}Zetsu"
	icon='Zetsu.dmi'
	icon_state="zetsu"
	PK=0
	imortal = 1
	health=99999999999999999999999999999999999999999999999999999999

mob/npc/Sasori
	name="{NPC}Sasori"
	icon = 'Sasori.dmi'
	icon_state="huj"
	PK = 0
	imortal = 1
	health = 99999999999999999999999999999999999999999999999

mob/npc/Kakuzu
	name="{NPC}Kakuzu"
	icon='Kakuzu.dmi'
	icon_state="kakuzu"
	PK=0
	imortal = 1
	health=99999999999999999999999999999999999999999999999999999999

mob/npc/Kisame
	name="{NPC}Kisame"
	icon='npcakat.dmi'
	icon_state="kisame"
	PK=0
	imortal = 1
	health=99999999999999999999999999999999999999999999999999999999

mob/npc/Zabuza2
	name = "{NPC}Zabuza"
	icon = 'npcakat.dmi'
	icon_state = "zabuza"
	PK = 0
	imortal = 1
	health = 999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Zabuza"
			switch(input("O que você Quer?",text) in list ("Também sou membro da SSS","Nada",))
				if("Também sou membro da SSS")
					if(usr.rank=="7Swordsmen")
						usr<<"Hello."
						if(usr.rank=="7Swordsmen")
							usr << "<B><font color = blue>Você aprendeu o Suiton Armor!!"
						else
							usr<<"Você não é um Swordsmen."
						if(usr.rank=="7Swordsmen")
							usr << "<B><font color = blue>Você aprendeu o Suiton Suiryuudan no Jutsu!!"
						else
							usr<<"Você não é um Swordsmen."
						if(usr.rank=="7Swordsmen")
							usr << "<B><font color = blue>Você aprendeu o Kirigakure No Jutsu!!"
							usr.verbs += new /mob/mist/verb/KirigakurenoJutsu()
						else
							usr<<"Você não é um Swordsmen."
						if(usr.rank=="7Swordsmen")
							usr<<"<b><font color=blue>Você aprendeu o Suiton Suikoudan No Jutsu."
							usr.verbs += new /mob/Suiton/verb/SuitonSuikoudannoJutsu()
						else
							usr<<"Você não é um Swordsmen."
						if(usr.rank=="7Swordsmen")
							usr<<"<b><font color=blue>Você aprendeu o Mist No Jutsu."
							usr.verbs += new /mob/mist/verb/MistArmor()
						else
							usr<<"Você não é um Swordsmen."
						if(usr.rank=="7Swordsmen")
							usr << "<B><font color = blue>Você aprendeu o Suirou No Jutsu!!"
							usr.verbs += new /mob/suiton/verb/SuirouNoJutsu()
						else
							usr<<"Você não é um Swordsmen."
				if("Nada")
					return

mob/npc/Shodaime
	name = "{NPC}Shodaime"
	icon = 'Shodaime.dmi'
	PK = 0
	imortal = 1
	health = 99999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Shodaime"
			switch(input("Olá amigo.",text) in list ("Sou do clã Senju","Esqueça."))
				if("Sou do clã Senju")
					if(usr.Shodaime)
						if(usr.rank=="Estudante")
							usr<<"Vc precisa ser pelo menos Genin."
							return
						usr<<"Bem vamos lá."
						if(usr.Shodaime&&usr.level>=30)
							usr << "<B><font color = blue>Você aprendeu as 5 tecnicas basicas de seu clã!!"
							usr.verbs += new /mob/mokuton/verb/MokutonQ()
							usr.verbs += new /mob/jutsu/verb/MokKyuu()
							usr.verbs += new /mob/jutsu/verb/MokuSousou()
							usr.verbs += new /mob/jutsu/verb/MokuArmor()
							usr.verbs += new /mob/jutsu/verb/Mokutongin()
						else
							usr<<"Você precisa de level 30 para aprender as 5 tecnicas basicas."
						if(usr.Shodaime&&usr.level>=75)
							usr << "<B><font color = blue>Você aprendeu o jutsu avançado!!"
							usr.verbs += new /mob/jutsu/verb/Moksawa()
						else
							usr<<"Precisa de mais level para aprender o jutsu avançado."
						if(usr.Shodaime&&usr.seals>=100)
							usr.verbs += new /obj/bunshins/Mokbunshin/verb/Mokbunshin()
							usr<<"<B><font color = blue>Você aprendeu Mokuton Bunshin no Jutsu!"
						else
							usr<<"Vire um Jounin+ para aprender o Mokuton Bunshin!"
						if(usr.Shodaime&&usr.level>=250&&usr.chakraN>=60000&&usr.Mnin>=80000&&usr.rank == "Chuunin"||usr.level>=250&&usr.chakraN>=60000&&usr.Mnin>=80000&&usr.seals>=100)
							usr.verbs += new /mob/jutsu/verb/ShodBuff()
							usr<<"<B><font color = blue>Você aprendeu o Modo Sennin de Senjuu Hashirama no Jutsu!"
						else
							usr<<"Treine bastante, a força da Natureza pode ficar ao seu favor e você descobrirá um poder incrível!"
						if(usr.Shodaime&&usr.seals>=100&&usr.level>=350&&usr.chakraN>=140000&&usr.Mnin>=200000&&usr.aguaN>=3000&&usr.terraN>=3000&&usr.uchikills>=200)
							usr.verbs += new /mob/mokuton/verb/Mokuryuu()
							usr.verbs += new /mob/mokuton/verb/Budasenjuu()
							usr<<"<B><font color = blue>Você aprendeu o Dragão de Madeira no Jutsu!"
							usr<<"<B><font color = blue>Você aprendeu o Senpou: Mokuton Shinsuusenju!"
						else
							usr<<"Treine bastante, seu Mokuton pode desenvolver uma forma suprema e você descobrirá uns poderes incríveis!"
					else
						usr<<"Não minta para mim!"
				if("Esqueça.")
					usr<<"Thank you Baaka."
mob/npc/Sandaime
	name = "{NPC}Sandaime"
	icon = '3rd Hokaga.dmi'
	PK = 0
	imortal = 1
	health = 99999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Subclan"
			switch (input("Quer ser do subclan Sandaime. Uma vez que escolher não poderá mudar???","Sandaime") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.rank=="Kage"||usr.amelider||usr.otolider&&!usr.subclan)
						usr.subclan=1
						usr.Sandaime=1
						usr<<"Olá."
						if(usr.Sandaime)
							usr << "<B><font color = blue>Você aprendeu o Kage Teleport No Jutsu e despertou a Vontade de Fogo!!"
							//usr.verbs += new /mob/nara/verb/kageteleport()
							usr.verbs += new /mob/jutsu/verb/VontadeFogo()
						else
							usr<<"Você precisa de 2000 Nin para aprender o Kage Teleport No Jutsu."
						if(usr.Sandaime)
							usr << "<B><font color = blue>Você aprendeu o Doton Doryuuheki!!"
							usr.verbs += new /mob/doton/verb/DotonDoryuuheki()
						else
							usr<<"Você precisa de 10000 Nin para aprender o Doton Doryuuheki."
						if(usr.Sandaime)
							usr << "<B><font color = blue>Você aprendeu o Katon Housenka No Jutsu!!"
							usr.verbs += new /mob/katon/verb/KatonHousenka()
						else
							usr<<"Você precisa de 25000 Nin para aprender o Katon Housenka No Jutsu."
						if(usr.Sandaime)
							usr<<"<b><font color=blue>Você aprendeu o Doroudorno."
							usr.verbs += new /mob/doton/verb/Doroudorno()
						else
							usr<<"Você precisa de 25000 Nin para aprender o Doroudorno."
						if(usr.Sandaime)
							usr << "<B><font color = blue>Você aprendeu o Doton Kyuu!!"
							usr.verbs += new /mob/doton/verb/DotonKyuu()
						else
							usr<<"Você precisa de 10000 Nin and 100000 Chakra para aprender o Doton Kyuu."
						if(usr.Sandaime)
							usr << "<B><font color = blue>Você aprendeu o Doton Sousou!!"
							usr.verbs += new /mob/doton/verb/DotonSousou()
							usr.verbs += new /mob/Nidaime/verb/Rastrear()
							usr.verbs += new /mob/jutsu/verb/Selo()
						else
							usr<<"Você precisa de 10000 Nin and 100000 chakra para aprender o Doton Sousou."

					else
						usr<<"Não minta para mim!"
				if("Esqueça.")
					usr<<"Thank you Baka."

mob/npc/Choji
	name= "{NPC}Chouji"
	icon= 'Choji.dmi'
	icon_state= ""
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Choji"
			switch(input("Olá, como posso te ajudar?") in list ("Sou do clã Akimichi!","Deixa pra lá"))
				if("Sou do clã Akimichi!")
					if(usr.Akimichi == 1)
						usr<<"Ok, vamos lá"
						if(usr.rank == "Estudante")
							return
						if(usr.Akimichi&&usr.level>=30)
							usr << "<B><font color = blue>Vc aprendeu os jutsus basicos do clã!!"
							//usr.verbs += new /mob/Akimichi/verb/NikudanSensha()
							usr.verbs += new /mob/Akimichi/verb/BaikaNoJutsu()
							//usr.verbs += new /mob/Akimichi/verb/NikudanHariSensha()
							usr.verbs += new /mob/Akimichi/verb/BabunBaikaNoJutsu()
							usr.verbs += new /mob/Akimichi/verb/ChouBaika()
						else
							usr<<"Você precisa de level 30 para aprender os jutsus basicos."
						if(usr.Akimichi&&usr.level>=75)
							usr.verbs += new /mob/Akimichi/verb/Pilulas()
							usr<<"Você aprendeu mais um jutsu!"
						else
							usr<<"Você precisa de level 75 para aprender o jutsu avançado."
						/*if(usr.Akimichi&&usr.level>=100)
							usr << "<B><font color = blue>Vc aprendeu jutsus avançados!"
							usr.verbs += new /mob/Akimichi/verb/ChoudanBakugenki()
							usr.verbs += new /mob/Akimichi/verb/Choudan2()*/
						if(usr.rank == "Chuunin"&&usr.Mtai>=100000||usr.seals>=100&&usr.Mtai>=100000)
							usr.verbs += new /mob/Akimichi/verb/AkimichiAura()
							usr.verbs += new /mob/Akimichi/verb/AkimichiAura2()
							usr<<"<b><font color=blue>Você aprendeu 02 novos jutsus"
						else
							usr<<"Você precisa ser no minimo Chuunin e mais stats para aprender os ultimos 2 jutsus."
					else
						usr<<"Saia daqui e me deixe comer em paz!"

mob/npc/Guarda
	name= "{NPC}Fiscal"
	icon = 'Spawn.dmi'
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999

mob/npc/Guarda2
	name= "{NPC}Fiscal Chuunin"
	icon = 'Spawn.dmi'
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999

mob/npc/Katonteachers
	name = "{NPC}Sabio do fogo"
	icon = 'Katonteacher.dmi'
	icon_state= ""
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Sabio"
			switch(input("O que você faz aqui?",text) in list ("Sou um usuario do fogo!"))
				if("Sou um usuario do fogo!")
					usr<<"Saia agora!"
					usr.health = 0
					usr.Death(usr)

mob/npc/Suitonteachers
	name = "{NPC}Sabio da Água"
	icon = 'Suitonteacher.dmi'
	icon_state= ""
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Sabio"
			switch(input("O que você faz aqui?",text) in list ("Sou um usuario da agua!"))
				if("Sou um usuario da agua!")
					usr<<"Saia agora!"
					usr.health = 0
					usr.Death(usr)

mob/npc/Raitonteachers
	name = "{NPC}Sabio do trovao"
	icon = 'Raitonteacher.dmi'
	icon_state= ""
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Sabio"
			switch(input("O que você faz aqui?",text) in list ("Sou um usuario do trovao!"))
				if("Sou um usuario do trovao!")
					usr<<"Saia agora!"
					usr.health = 0
					usr.Death(usr)

mob/npc/Dotonteachers
	name = "{NPC}Sabio da Terra"
	icon = 'Dotonteacher.dmi'
	icon_state= ""
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Sabio"
			switch(input("O que você faz aqui?",text) in list ("Sou um usuario da terra!"))
				if("Sou um usuario da terra!")
					usr<<"Saia agora!"
					usr.health = 0
					usr.Death(usr)


mob/npc/Fuutonteachers
	name = "{NPC}Sabio do Vento"
	icon = 'Fuutonteacher.dmi'
	icon_state= ""
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Sabio"
			switch(input("O que você faz aqui?",text) in list ("Sou um usuario do vento!"))
				if("Sou um usuario do vento!")
					usr<<"Saia agora!"
					usr.health = 0
					usr.Death(usr)


mob/npc/Cirurgiao
	name = "{NPC}Cirurgião"
	icon = 'UltimetiumNPCS.dmi'
	icon_state = "Médic"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999
	verb
		Ola()
			set src in oview(2)
			set category = "Velho"
			switch(input("Olá shinobi sofredor.",text) in list ("Recuperar Visão - 10kk","Recuperar Movimentos - 10kk","Recuperar Visão/Movimentos - 30kk","Nada"))
				if("Recuperar Visão - 10kk")
					if(usr.Perdeusharingan==1||usr.PerdeuByakugan==1||usr.PerdeuRinnegan==1||usr.PerdeuMS==1)
						if(usr.Yen >= 10000000)
							usr.Yen -= 10000000
							usr<<"Você passará por uma cirurgia demorada, não deslogue e nem se mova até o término."
							usr.Frozen=1
							spawn(6000)
							usr<<"Você terminou a cirurgia com sucesso! Agora pode enxergar normalmente!"
							usr.Frozen=0
							usr.visaorecuperada=1
							client.view = 8
							usr.view=8
							//usr.SalvarAgora()
						else
							usr<<"Você não tem dinheiro suficiente!"
					else
						usr<<"Você não teve doujutsu roubado!"
				if("Recuperar Movimentos - 10kk")
					if(usr.senjuextraido==1)
						if(usr.Yen >= 10000000)
							usr.Yen -= 10000000
							usr<<"Você passará por uma cirurgia demorada, não deslogue e nem se mova até o término."
							usr.Frozen=1
							spawn(6000)
							usr.Frozen=0
							usr<<"Você terminou a cirurgia com sucesso! Agora pode andar normalmente!"
							usr.movimentorecuperado=1
							//usr.SalvarAgora()
						else
							usr<<"Você não tem dinheiro suficiente!"
					else
						usr<<"Você não teve DNA roubado!"
				if("Recuperar Visão/Movimentos - 15kk")
					if(usr.Yen < 15000000)
						usr<<"Você não tem dinheiro suficiente!"
						return
					if(usr.Shodaime)
						if(usr.movimentorecuperado&&usr.perdeumovimento1<2)
							usr.Yen -= 15000000
							usr<<"Você passará por uma cirurgia demorada, não deslogue e nem se mova até o término."
							usr.Frozen=1
							spawn(6000)
							usr.Frozen=0
							usr<<"Você recuperou seus movimentos!"
							usr.candna=0
							usr.Move_Delay = 0.7
							usr.senjuextraido=0
						else
							usr<<"Você nao recuperou o Movimento antes ou já perdeu o movimento 2x!"
					else if(usr.shari==1)
						if(usr.visaorecuperada&&usr.perdeusharing1<2)
							usr.Yen -= 15000000
							usr<<"Você passará por uma cirurgia demorada, não deslogue e nem se mova até o término."
							usr.Frozen=1
							spawn(6000)
							usr<<"Você terminou a cirurgia com sucesso! Agora pode usr seu Doujutsu novamene!"
							usr.Frozen=0
							usr.verbs += /mob/jutsu/verb/Copy
							usr.verbs += /mob/jutsu/verb/Sharinganilluminate
							usr.verbs += /mob/jutsu/verb/Ilusion1
							usr.verbs += /mob/jutsu/verb/Sharinganfreeze
							usr.verbs += /mob/jutsu/verb/Genjcounter
							usr.verbs += /mob/jutsu/verb/Kaen
							usr.verbs += /mob/jutsu/verb/Shinu
							usr.verbs += /mob/uchiha/verb/Sharingan
							//Kamui
							usr.Perdeusharingan=0
						//usr.SalvarAgora()
								//usr.SalvarAgora()
							usr.visaorecuperada=1
							client.view = 8
							usr.view=8
							usr<<"Você recuperou o Sharingan!"
							usr.cansharinga=0
						else
							usr<<"Você não recuperou sua visão ainda ou já perdeu a visão 2x!"
					else if(usr.shari==2)
						if(usr.visaorecuperada&&usr.perdeusharing1<2)
							usr.Yen -= 15000000
							usr<<"Você passará por uma cirurgia demorada, não deslogue e nem se mova até o término."
							usr.Frozen=1
							spawn(6000)
							usr<<"Você terminou a cirurgia com sucesso! Agora pode usr seu Doujutsu novamene!"
							usr.Frozen=0
							usr.verbs += /mob/jutsu/verb/Copy
							usr.verbs += /mob/jutsu/verb/Sharinganilluminate
							usr.verbs += /mob/jutsu/verb/Ilusion1
							usr.verbs += /mob/jutsu/verb/Sharinganfreeze
							usr.verbs += /mob/jutsu/verb/Genjcounter
							usr.verbs += /mob/jutsu/verb/Kaen
							usr.verbs += /mob/jutsu/verb/Shinu
							usr.verbs += /mob/uchiha/verb/Sharingan
							//Kamui
							usr.Perdeusharingan=0
							usr.visaorecuperada=1
							client.view = 8
							usr.view=8
							usr<<"Você recuperou o Sharingan."
							usr.cansharinga=0
						else
							usr<<"Você não recuperou sua visão ainda ou já perdeu a visão 2x!"
					else if(usr.shari==3)
						if(usr.visaorecuperada&&usr.perdeusharing1<2)
							usr.Yen -= 15000000
							usr<<"Você passará por uma cirurgia demorada, não deslogue e nem se mova até o término."
							usr.Frozen=1
							spawn(6000)
							usr<<"Você terminou a cirurgia com sucesso! Agora pode usr seu Doujutsu novamene!"
							usr.Frozen=0
							usr.verbs += /mob/jutsu/verb/Copy
							usr.verbs += /mob/jutsu/verb/Sharinganilluminate
							usr.verbs += /mob/jutsu/verb/Ilusion1
							usr.verbs += /mob/jutsu/verb/Sharinganfreeze
							usr.verbs += /mob/jutsu/verb/Genjcounter
							usr.verbs += /mob/jutsu/verb/Kaen
							usr.verbs += /mob/jutsu/verb/Shinu
							usr.verbs += /mob/uchiha/verb/Sharingan
							//Kamui
							usr.Perdeusharingan=0
							usr.visaorecuperada=1
							client.view = 8
							usr.view=8
							usr.cansharinga=0
							usr<<"Você recuperou o Sharingan."
						else
							usr<<"Você não recuperou sua visão ainda ou já perdeu a visão 2x!"
					else if(usr.PerdeuByakugan)
						if(usr.visaorecuperada&&usr.perdeubya1<2)
							usr.Yen -= 15000000
							usr.PerdeuByakugan=0
							usr<<"Você passará por uma cirurgia demorada, não deslogue e nem se mova até o término."
							usr.Frozen=1
							spawn(6000)
							usr<<"Você terminou a cirurgia com sucesso! Agora pode usr seu Doujutsu novamene!"
							usr.Frozen=0
							usr.verbs += new /mob/hyuuga/verb/Byakugan()
							//usr.SalvarAgora()
							//usr.SalvarAgora()
							usr<<"Você recuperou o Byakugan!"
						else
							usr<<"Você não recuperou sua visão ainda ou já perdeu a visão 2x!"
					else if(usr.msobito&&usr.PerdeuMS)
						if(usr.visaorecuperada&&usr.perdeusharing1<2)
							usr.Yen -= 15000000
							usr<<"Você passará por uma cirurgia demorada, não deslogue e nem se mova até o término."
							usr.Frozen=1
							spawn(6000)
							usr<<"Você terminou a cirurgia com sucesso! Agora pode usr seu Doujutsu novamene!"
							usr.Frozen=0
							usr.verbs += /mob/jutsu/verb/Copy
							usr.verbs += /mob/jutsu/verb/Sharinganilluminate
							usr.verbs += /mob/jutsu/verb/Ilusion1
							usr.verbs += /mob/jutsu/verb/Sharinganfreeze
							usr.verbs += /mob/jutsu/verb/Genjcounter
							usr.verbs += /mob/jutsu/verb/Kaen
							usr.verbs += /mob/jutsu/verb/Shinu
							usr.verbs += /mob/uchiha/verb/Sharingan
							usr.verbs += /mob/uchiha/verb/MangekyouPrep
							usr.verbs += /mob/jutsu/verb/Fantasma
							usr.verbs += new /mob/jutsu/verb/SusanooObito()
							usr.verbs += new /mob/jutsu/verb/Susaatak()
							usr.verbs += new /mob/jutsu/verb/SusanooShuri()
							//Kamui
							usr.msobito=1
							usr.PerdeuMS=1
							usr.visaorecuperada=1
							client.view = 8
							usr.view=8
							//usr.SalvarAgora()
							//usr.SalvarAgora()
							usr.canmsroubado=0
							usr<<"Você recuperou o Mangekyou Sharingan!"
						else
							usr<<"Você não recuperou sua visão ainda ou já perdeu a visão 2x!"
					else if(usr.mssasuke&&usr.PerdeuMS)
						if(usr.visaorecuperada&&usr.perdeusharing1<2)
							usr.Yen -= 15000000
							usr<<"Você passará por uma cirurgia demorada, não deslogue e nem se mova até o término."
							usr.Frozen=1
							spawn(6000)
							usr<<"Você terminou a cirurgia com sucesso! Agora pode usr seu Doujutsu novamene!"
							usr.Frozen=0
							usr.verbs += /mob/jutsu/verb/Copy
							usr.verbs += /mob/jutsu/verb/Sharinganilluminate
							usr.verbs += /mob/jutsu/verb/Ilusion1
							usr.verbs += /mob/jutsu/verb/Sharinganfreeze
							usr.verbs += /mob/jutsu/verb/Genjcounter
							usr.verbs += /mob/jutsu/verb/Kaen
							usr.verbs += /mob/jutsu/verb/Shinu
							usr.verbs += /mob/uchiha/verb/Sharingan
							usr.verbs += /mob/uchiha/verb/MangekyouPrep
							usr.verbs += /mob/jutsu/verb/Novoamat2
							usr.verbs += new /mob/jutsu/verb/SusanooSasuke()
							usr.verbs += new /mob/jutsu/verb/Susaatak()
							usr.verbs += new /mob/jutsu/verb/SusanooAtk2()
							//Enton
							//Susanoo
							usr.mssasuke=1
							usr.PerdeuMS=0
							usr.visaorecuperada=1
							client.view = 8
							usr.view=8
							usr.canmsroubado=0
							//usr.SalvarAgora()
							//usr.SalvarAgora()
							usr<<"Você recuperou o Mangekyou Sharingan."
						else
							usr<<"Você não recuperou sua visão ainda ou já perdeu a visão 2x!"
					else if(usr.msshisui&&usr.PerdeuMS)
						if(usr.visaorecuperada&&usr.perdeusharing1<2)
							usr.Yen -= 15000000
							usr<<"Você passará por uma cirurgia demorada, não deslogue e nem se mova até o término."
							usr.Frozen=1
							spawn(6000)
							usr<<"Você terminou a cirurgia com sucesso! Agora pode usr seu Doujutsu novamene!"
							usr.Frozen=0
							usr.verbs += /mob/jutsu/verb/Copy
							usr.verbs += /mob/jutsu/verb/Sharinganilluminate
							usr.verbs += /mob/jutsu/verb/Ilusion1
							usr.verbs += /mob/jutsu/verb/Sharinganfreeze
							usr.verbs += /mob/jutsu/verb/Genjcounter
							usr.verbs += /mob/jutsu/verb/Kaen
							usr.verbs += /mob/jutsu/verb/Shinu
							usr.verbs += /mob/uchiha/verb/Sharingan
							usr.verbs += /mob/uchiha/verb/MangekyouPrep
							usr.verbs += /mob/jutsu/verb/Fantasma
							usr.verbs += new/mob/Jutsu/verb/Kotoamatsukami()
							//Kamui
							usr.msshisui=1
							usr.PerdeuMS=1
							usr.visaorecuperada=1
							client.view = 8
							usr.view=8
							//usr.SalvarAgora()
							//usr.SalvarAgora()
							usr.canmsroubado=0
							usr<<"Você recuperou o Mangekyou Sharingan!"
						else
							usr<<"Você não recuperou sua visão ainda ou já perdeu a visão 2x!"
					else if(usr.msmadara&&usr.PerdeuMS)
						if(usr.visaorecuperada&&usr.perdeusharing1<2)
							usr.Yen -= 15000000
							usr<<"Você passará por uma cirurgia demorada, não deslogue e nem se mova até o término."
							usr.Frozen=1
							spawn(6000)
							usr<<"Você terminou a cirurgia com sucesso! Agora pode usr seu Doujutsu novamene!"
							usr.Frozen=0
							usr.verbs += /mob/jutsu/verb/Copy
							usr.verbs += /mob/jutsu/verb/Sharinganilluminate
							usr.verbs += /mob/jutsu/verb/Ilusion1
							usr.verbs += /mob/jutsu/verb/Sharinganfreeze
							usr.verbs += /mob/jutsu/verb/Genjcounter
							usr.verbs += /mob/jutsu/verb/Kaen
							usr.verbs += /mob/jutsu/verb/Shinu
							usr.verbs += /mob/uchiha/verb/Sharingan
							usr.verbs += /mob/uchiha/verb/MangekyouPrep
							usr.verbs += /mob/jutsu/verb/Fantasma
							usr.verbs += new/mob/Jutsu/verb/TengaiShinsei()
							usr.verbs += new/obj/bunshins/Limbobunshin/verb/Limbunshin()
							//Kamui
							usr.msmadara=1
							usr.PerdeuMS=1
							usr.visaorecuperada=1
							client.view = 8
							usr.view=8
							//usr.SalvarAgora()
							//usr.SalvarAgora()
							usr.canmsroubado=0
							usr<<"Você recuperou o Mangekyou Sharingan!"
						else
							usr<<"Você não recuperou sua visão ainda ou já perdeu a visão 2x!"
					else if(usr.msitachi&&usr.PerdeuMS)
						if(usr.visaorecuperada&&usr.perdeusharing1<2)
							usr.Yen -= 15000000
							usr<<"Você passará por uma cirurgia demorada, não deslogue e nem se mova até o término."
							usr.Frozen=1
							spawn(6000)
							usr<<"Você terminou a cirurgia com sucesso! Agora pode usr seu Doujutsu novamene!"
							usr.Frozen=0
							usr.verbs += /mob/jutsu/verb/Copy
							usr.verbs += /mob/jutsu/verb/Sharinganilluminate
							usr.verbs += /mob/jutsu/verb/Ilusion1
							usr.verbs += /mob/jutsu/verb/Sharinganfreeze
							usr.verbs += /mob/jutsu/verb/Genjcounter
							usr.verbs += /mob/jutsu/verb/Kaen
							usr.verbs += /mob/jutsu/verb/Shinu
							usr.verbs += /mob/uchiha/verb/Sharingan
							usr.verbs += /mob/uchiha/verb/MangekyouPrep
							usr.verbs += /mob/jutsu/verb/Novoamat2
							usr.verbs += /mob/uchiha/verb/Tsukiyomi
							usr.verbs += new /mob/jutsu/verb/SusanooItachi()
							usr.verbs += new /mob/jutsu/verb/SusanooTotsukaAtk()
							//Susanoo
							usr.msitachi=1
							usr.PerdeuMS=0
							usr.visaorecuperada=1
							client.view = 8
							usr.view=8
							usr.canmsroubado=0
							//usr.SalvarAgora()
							//usr.SalvarAgora()
							usr<<"Você não recuperou sua visão ainda ou já perdeu a visão 2x!"
						else
							usr<<"Recupere a visão primeiro!"
				if("Nada")
					usr<<"Tudo Bem!"
					return

mob/var
	implantoumsobito=0
	implantoumssasuke=0
	implantoumsitachi=0
	implantoubyahinata=0
	implantoubyaneji=0

mob/var
	rouboumsshisui=0
	rouboumsmadara=0

mob/npc/Implantador
	name = "{NPC}Velho Cientista"
	icon = 'npcmissao.dmi'
	icon_state = "velhinho"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999
	verb
		Oi()
			set src in oview(2)
			//set category = "Velho"
			switch(input("Olá mizerável.",text) in list ("Implantar MS"/*,"Implantar DNA"*/,"Implantar Rinnegan","Implantar Byakugan","Implantar Sharingan","Implantar Sharingans no Corpo","Esqueça"))
				if("Implantar MS")
					if(usr.perdeums||usr.Uchiha)
						usr<<"Você está no lugar errado!"
						return
					if(usr.canmsroubado==1&&usr.implantadoja==0&&usr.seals >= 100)
						usr.verbs += new/mob/uchiha/verb/Sharingan
						usr.verbs += new/mob/uchiha/verb/MangekyouPrep
						usr.implantadoja=1
						usr.implantadojams=1
						usr<<"Você Obeteve os poderes do MS!"
						if(usr.rouboumsobito)
							usr.implantoumsobito=1
						if(usr.rouboumssasuke)
							usr.implantoumssasuke=1
						if(usr.rouboumsitachi)
							usr.implantoumsitachi=1
						if(usr.rouboumsmadara)
							usr.implantoumsmadara=1
						if(usr.rouboumsshisui)
							usr.implantoumsshisui=1
						//usr.SalvarAgora()
					else
						usr<<"Você não me trouxe nada!"
				/*if("Implantar DNA")
					if(usr.candna==1&&usr.implantadoja==0&&usr.seals >= 100)
						usr.implantadoja=1
						usr.implantadojadna=1
						usr<<"Você Obeteve os poderes de regeneração do Senju!"
						//usr.SalvarAgora()
					else
						usr<<"Você não me trouxe nada!"*/
				if("Implantar Rinnegan")
					if(usr.canrinneaganroubado==1&&usr.implantadoja==0&&usr.seals >= 100)
						usr.verbs += new /mob/raiton/verb/Raitonheki()
						usr.verbs += new /mob/doton/verb/Doroudorno()
						usr.verbs += new /mob/doton/verb/DotonDoryuuheki()
						usr.verbs += new /mob/suiton/verb/SuitonDoryuudan()
						usr.verbs += new /mob/fuuton/verb/Fuutonheki()
						usr.verbs += new /mob/katon/verb/KatonHousenka()
						usr.verbs += new /mob/katon/verb/Katonheki()
						usr.verbs += new /mob/Pein/verb/Shinra()
						usr.verbs += new /mob/Pein/verb/Banshou()
						usr.verbs += new /mob/Pein/verb/Rinnegan()
						usr.implantadoja=1
						usr.implantadojarineg=1
						usr.Rinnegan=1
						usr<<"Você Obeteve os poderes do Rinnegan!"
						//usr.SalvarAgora()
					else
						usr<<"Você não me trouxe nada!"
				if("Implantar Byakugan")
					if(usr.PerdeuByakugan||usr.Hyuuga)
						usr<<"Você está no lugar errado!"
						return
					if(usr.canbyakuroubado==1&&usr.implantadoja==0&&usr.seals >= 100)
						usr.verbs += new /mob/hyuuga/verb/ByakuganSearch
						usr.verbs += new /mob/jutsu/verb/Sharinganilluminate
						usr.verbs += new /mob/hyuuga/verb/Byakugan()
						usr.verbs += new /mob/hyuuga/verb/ByakuganSearch()
						usr.implantadoja=1
						usr.implantadojabyaku=1
						if(usr.rouboubyahinata)
							usr.implantoubyahinata=1
						if(usr.rouboubyaneji)
							usr.implantoubyaneji=1
						usr<<"Você Obeteve os poderes do Byakugan!"
						//usr.SalvarAgora()
					else
						usr<<"Você não me trouxe nada!"
				if("Implantar Sharingan")
					if(usr.Perdeusharingan||usr.Uchiha)
						usr<<"Você está no lugar errado!"
						return
					if(usr.cansharinga==1&&usr.implantadoja==0&&usr.seals >= 100)
						usr.verbs += new /mob/uchiha/verb/Sharingan()
						usr.implantadoja=1
						usr.implantadojasharin=1
						if(usr.rouboumsobito)
							usr.implantoumsobito=1
						if(usr.rouboumssasuke)
							usr.implantoumssasuke=1
						if(usr.rouboumsitachi)
							usr.implantoumsitachi=1
						usr<<"Você Obeteve os poderes do Sharingan!"
						//usr.SalvarAgora()
					else
						usr<<"Você não me trouxe nada!"
				if("Implantar Sharingans no Corpo")
					if(usr.sabeizanami||usr.sabeizanagi&&usr.temsharingan>=1&&usr.seals >= 100)
						if(usr.temsharinganiza<=2)
							usr.temsharingan-=1
							usr.temsharinganiza+=1
							for(var/obj/OlhoSharingan/K in usr) del K
							usr<<"Você implanta um sharingan no seu braço!"
							//usr.SalvarAgora()
						else
							usr<<"Você so pode implantar 3 sharingans por vez!"
					else
						usr<<"Você não me trouxe nada!"
				if("Esqueça")
					usr<<"Vá embora e não volta atoa mais!"

mob/var/FMS=0
mob/npc/Madara
	name = "{NPC}Uchiha Madara Npc"
	icon = 'UltimetiumNPCS.dmi'
	icon_state= "Madara Velho"
	PK = 0
	imortal = 1
	health = 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
	verb
		Diga()
			set src in oview(2)
			//set category = "Madara"
			switch(input("O que você faz aqui?",text) in list ("Preciso do poder lendário do Mangekyou Sharingan!","Nada"))
				if("Preciso do poder lendário do Mangekyou Sharingan!")
					if(usr.seals<100)
						return
					if(usr.Uchiha == 1)
						usr<<"Interessante...."
						if(usr.mangeN>=1&&usr.Mnin>=50000&&usr.Mgen>=125000&&usr.uchikills>=150&&usr.msitachi)
							usr<<"Vc aprendeu o lendário Susanoo"
							usr.verbs += new /mob/jutsu/verb/SusanooItachi()
							//usr.SalvarAgora()
							return
						else
							usr<<"Você não e forte o suficiente!"
						if(usr.mangeN>=1&&usr.Mnin>=125000&&usr.Mgen>=50000&&usr.uchikills>=150&&usr.mssasuke)
							usr<<"Vc aprendeu o lendário Susanoo"
							usr.verbs += new /mob/jutsu/verb/SusanooSasuke()
							//usr.SalvarAgora()
							return
						else
							usr<<"Você não e forte o suficiente!"
						if(usr.mangeN>=1&&usr.Mnin>=125000&&usr.Mgen>=50000&&usr.uchikills>=150&&usr.msobito)
							usr<<"Vc aprendeu o lendário Susanoo"
							usr.verbs += new /mob/jutsu/verb/SusanooObito()
							//usr.SalvarAgora()
							return
						else
							usr<<"Você não e forte o suficiente!"
					else
						usr<<"Vc precisa ser jounin ou mais"
				if("Nada")
					usr<<"Saia"


mob/npc/VelhoEstranho
	icon = 'npcmissao.dmi'
	icon_state = "velhinho"
	PK = 0
	imortal = 1
	health = 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Velho Estranho"
			switch(input("O que você faz aqui?",text) in list ("Quero Poder!","Nada"))
				if("Quero Poder!")
					if(usr.seals>=100&&usr.vitorias>=250&&usr.level>300)
						usr<<"Interessante..."
						usr<<"Faça bom proveito e aprenda a ser frio!"
						var/obj/Tesouro/PergaExtrair/B = new/obj/Tesouro/PergaExtrair
						B.loc = usr
						//usr.SalvarAgora()
						del(src)
					else
						usr<<"Vc precisa ser mais forte"
				if("Nada")
					usr<<"Saia"




mob/npc/Madaraobito
	name = "{NPC}Uchiha Obito"
	icon = 'Madara.dmi'
	icon_state= ""
	PK = 0
	imortal = 1
	health = 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
	verb
		Dizer()
			set src in oview(2)
			set category = "Obito"
			switch(input("O que você faz aqui?",text) in list ("Preciso do poder FMS!","Nada"))
				if("Preciso do poder FMS!")
					if(usr.rank=="Genin"||usr.rank=="Chuunin")
						return
					if(usr.Uchiha == 1)
						usr<<"Interessante...."
						if(usr.mangeN>=25&&usr.vitorias>=500&&usr.uchikills>=250&&usr.canmsroubado==1)
							if(usr.mssasuke&&usr.Mgen>=75000&&usr.Mnin>=200000||usr.msobito&&usr.Mgen>=75000&&usr.Mnin>=200000||usr.msmadara&&usr.Mgen>=75000&&usr.Mnin>=200000)
								usr<<"Vc aprendeu o lendário FMS!"
								usr.verbs += new /mob/uchiha/verb/Eternal()
								usr.mangeN=0
								usr.FMS=1
								//usr.SalvarAgora()
							else if(usr.msitachi&&usr.Mgen>=200000&&usr.Mnin>=75000||usr.msshisui&&usr.Mgen>=200000&&usr.Mnin>=75000)
								usr<<"Vc aprendeu o lendário FMS!"
								usr.verbs += new /mob/uchiha/verb/Eternal()
								usr.mangeN=0
								usr.FMS=1
								//usr.SalvarAgora()
							else
								usr<<"Você ainda é muito fraco"
					else
						usr<<"Vc precisa ser jounin ou mais"
				if("Nada")
					usr<<"Saia"




mob/npc/sellcorpos
	name = "{NPC}Mercado Negro"
	icon = 'dumal.dmi'
	icon_state= ""
	PK = 0
	imortal = 1
	health = 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
	verb
		Vender(obj/pravenda/C in usr.contents)
			set src in view(1)
			switch(alert(usr,"Você gostaria de vender [C] por [C.valor] Ryous?"," ","Sim","Não"))
				if("Sim")
					usr.Yen += C.valor
					usr.carregandocorpo=0
					del C
				if("Não")
					usr <<"Ok."
					return



mob
	npcs
		PBunshin
			human = 1
			NPC = 1
			guard = 1
			Village="Akatsuki"

			proc/Die()
				flick("smoke2",src)
				del(src)
			Bump(atom/M)
				if(istype(M,/mob/)) // If they run into the player
					if(M == bowner||M == src.original||M.name==src.name)
						return
					else
						if(src.cast)
							return
						var/mob/P = M
						var/Damage = src.nin - P.Resistencia
						if(Damage<=0)Damage=0
						src.cast=1
						if(P.Kaiten)
							del(src)
						if(P.drunk&&P.NonClan)
							view()<<"[M] desvia do ataque de [src]"
							sleep(13)
							src.cast=0
							return
						P.health -= Damage
						F_damage(P, Damage, "#ff0000")
						view() << "[src] ataca [M] tirando [Damage] de dano!"
						P.Death(bowner)
						sleep(10)
						src.cast=0

mob/npc
	ai_Haku
		name = "Haku"
		icon = 'haku.dmi'
		Tekken = 1
		maxhealth=1000000
		health = 1000000
		Mchakra300000
		chakra=300000
		SS3 = 80
		seals = 100
		sealtime = 5
		tai = 30000
		nin = 80000
		gen = 90000
		veloN = 500000
		waterwalk = 1
		NPC=1
		New()
			walk_rand(src,7)
			intelligence()
		proc/intelligence()
			walk_rand(src,7)
			while(src)
				for(var/mob/M in oview(8))
					if(get_dist(src,M)>=5)
						random = rand(1,3)
						if(random==1)
							walk_to(src,src,1,10)
						if(random==3||random==2)
							random = rand(1,4)
							if(random==1||random==3)
								SensatsuGatling()
							if(random==2)
								if(M)
									src.MakyouSuikoudanProc(M)
							if(random==4)
								if(M)
									SuikoudanGatling(M)
					if(get_dist(src,M)>=3)
						SensatsuGatling()
						if(M)
							world<<"hellou"
						//	src.MakyouHyoushouProc(M)
						SensatsuGatling()
					if(get_dist(src,M)<=1)
						random = rand(1,2)
						if(random==1)
							walk_to(src,M)
							var/damage = round(src.tai*8.6) - M.Resistencia
							if(damage<=0)damage=0
							view() << "[src] atacou [M] inflingindo um dano de [damage]!"
							M.health -= damage
							F_damage(M, damage, "#ff0000")
							if(M.health <= 0)
								M.Death(src)
						if(random==2)
							SensatsuGatling()
							if(M)
								world<<"Helou"
						//		src.MakyouHyoushouProc(M)
							SensatsuGatling()
				sleep(10)
			spawn(5)
				intelligence()
		proc/SensatsuGatling()
			spawn(8)	src.SensatsuSuishouProc()
			spawn(18)	src.SensatsuSuishouProc()
			spawn(28)	src.SensatsuSuishouProc()
			spawn(38)	src.SensatsuSuishouProc()
			spawn(48)	src.SensatsuSuishouProc()
			spawn(58)	src.SensatsuSuishouProc()
			spawn(60)	src.SensatsuSuishouProc()
			spawn(65)	src.SensatsuSuishouProc()
		proc/SuikoudanGatling(var/obj/M)
			spawn(8)	if(M in view(6)) src.MakyouSuikoudanProc(M)
			spawn(18)	if(M in view(6)) src.MakyouSuikoudanProc(M)
			spawn(30)	if(M in view(6)) src.MakyouSuikoudanProc(M)
			spawn(35)	if(M in view(6)) src.MakyouSuikoudanProc(M)
			spawn(48)	if(M in view(6)) src.MakyouSuikoudanProc(M)
			spawn(58)	if(M in view(6)) src.MakyouSuikoudanProc(M)

mob
	proc
		MakyouSuikoudanProc(var/mob/m)
			src.Handseals()
			if(src.cast||src.Kaiten == 1) // If the mob's cast var is one...
				return
			if(src.PK==0)
				src<<"Zona NON-PK!!!"
				return
			if(m.PK==0)
				src<<"Zona NON-PK!!!"
				return
			if(src.froze)
				src<<"Você está paralizado!"
				return
			if(src.resting)
				src<<"Não enquanto descansa!"
				return
			if(src.Frozen)
				src<<"Você está paralizado!"
				return
			if(src.caught)
				src<<"Você foi capturado!"
				return
			if(src.captured)
				src<<"Você foi capturado!"
				return
			if(src.meditating)
				src<<"Não enquanto medita!"
				return
			if(src.chakra <= 15)
				src<<"Você não tem chakra suficiente!!"
				return
			if(!src.handseals&&!src.NPC)
				return
			if(m.counter)
				src<<"Ele copiou e devolveu o ataque!"
				m<<"Você copia e reflete o jutsu devolta."
				src.health -= m.Mnin/5
				Death(src)
				return
			else // If the cast var isn't 1...
				if(src.SS3 >= 52)
					src.chakra -= 15
					src.cast = 1 // Sets the cast var to 1, so he cant fire another beam
					src.SS3 += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[src]<font color=green> Diz: <FONT COLOR=#a1d7ee>Makyou Suikoudan No Jutsu!</FONT>"
					var/obj/MakyouSuikoudan/K = new /obj/MakyouSuikoudan
					src.target=m
					K.loc = src.loc
					K.nin=src.nin
					K.name="[src]"
					src.Chakragain()
					K.Move_Delay=2
					K.Gowner=src
					walk_towards(K,m)
					sleep(8)
					src.cast = 0
					sleep(21)
					del(K)
					if (target == null)
						del(K)
					if(src.Mnin <= src.cap)
						src.random = rand(1,6)
						if(random == 5||random==1)
							src.ninexp += rand(1,10)
							src.ninup()
							var/ccrandom=rand(1,15)
							if(ccrandom==4||ccrandom==10)
								var/ccgain=rand(1,3)
								if(src.ChakraC>=100)
									src.ChakraC=100
									return
								else
									src.ChakraC+=ccgain
									src<<"[src] , você ganhou [ccgain] de controle da chakra"
						else
							return
					else
						src.random = rand(1,20)
						if(random == 5||random==1)
							var/ccrandom=rand(1,15)
							if(ccrandom==4||ccrandom==10)
								var/ccgain=rand(1,3)
								if(src.ChakraC>=100)
									src.ChakraC=100
									return
								else
									src.ChakraC+=ccgain
									src<<"[src] , você ganhou [ccgain] de controle da chakra"
						else
							return
				else
					src.random = rand (1,4)
					if(src.random == 1||src.random == 4)
						src.chakra -= 15
						src.cast = 1 // Sets the cast var to 1, so he cant fire another beam
						src.SS3 += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[src]<font color=green> Diz: <FONT COLOR=#a1d7ee>Makyou Suikoudan No Jutsu!</FONT>"
						var/obj/MakyouSuikoudan/K = new /obj/MakyouSuikoudan
						src.target=m
						K.loc = src.loc
						K.nin=src.nin
						K.Move_Delay=2
						K.name="[src]"
						src.Chakragain()
						K.Gowner=src
						walk_towards(K,m)
						sleep(8)
						src.cast = 0
						sleep(21)
						del(K)
						if (target == null)
							del(K)
						if(src.Mnin <= src.cap)
							src.random = rand(1,6)
							if(random == 5||random==1)
								src.ninexp += rand(1,10)
								src.ninup()
								var/ccrandom=rand(1,15)
								if(ccrandom==4||ccrandom==10)
									var/ccgain=rand(1,3)
									if(src.ChakraC>=100)
										src.ChakraC=100
										return
									else
										src.ChakraC+=ccgain
										src<<"[src] , você ganhou [ccgain] de controle da chakra"
							else
								return
						else
							src.random = rand(1,20)
							if(random == 5||random==1)
								var/ccrandom=rand(1,15)
								if(ccrandom==4||ccrandom==10)
									var/ccgain=rand(1,3)
									if(src.ChakraC>=100)
										src.ChakraC=100
										return
									else
										src.ChakraC+=ccgain
										src<<"[src] , você ganhou [ccgain] de controle da chakra"
							else
								return

mob
	proc
		SensatsuSuishouProc()
			if(src.cast)
				return
			if(src.PK==0)
				src<<"Zona NON-PK!!!"
				return
			if(src.chakra <= 15)
				src<<"Você não tem chakra suficiente!!"
				return
			if(src.froze)
				src<<"Você está paralizado!"
				return
			if(src.resting)
				src<<"Não enquanto descansa!"
				return
			if(src.Frozen)
				src<<"Você está paralizado!"
				return
			if(src.caught)
				src<<"Você foi capturado!"
				return
			if(src.captured)
				src<<"Você foi capturado!"
				return
			if(src.meditating)
				src<<"Não enquanto medita!"
				return
			else // If the cast var isn't 1...
				if(!src.hyoushou)
					src.chakra -= 10
					src.cast = 1 // Sets the cast var to 1, so he cant fire another beam // Disables the mob's movement
					src.SensatsuN += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[src]<font color=green> Diz: <FONT COLOR=#c0c0c0>S</FONT><FONT COLOR=#c4c8c8>e</FONT><FONT COLOR=#c8d0d0>n</FONT><FONT COLOR=#ccd8d8>s</FONT><FONT COLOR=#d1e0e0>a</FONT><FONT COLOR=#d5e8e8>t</FONT><FONT COLOR=#d9f0f0>s</FONT><FONT COLOR=#ddf8f8>u</FONT><FONT COLOR=#e0ffff> </FONT><FONT COLOR=#dbfbfd>S</FONT><FONT COLOR=#d4f6fa>u</FONT><FONT COLOR=#cef1f6>i</FONT><FONT COLOR=#c7ecf3>s</FONT><FONT COLOR=#c1e7f0>h</FONT><FONT COLOR=#bae2ed>o</FONT><FONT COLOR=#b4dde9>u</FONT><FONT COLOR=#add8e6>!</FONT>"
					var/obj/Sensatsu/S1 = new /obj/Sensatsu
					var/obj/Sensatsu/S2 = new /obj/Sensatsu
					var/obj/Sensatsu/S3 = new /obj/Sensatsu
					var/obj/Sensatsu/S4 = new /obj/Sensatsu
					src.Chakragain()
					S1.loc = src.loc
					S1.tai=src.nin
					S1.dir = NORTH
					S1.name="[src]"
					src.Savedspeed = src.Move_Delay
					src.Move_Delay = src.Speed2
					S1.Gowner=src
					walk(S1,NORTH)
					S2.loc = src.loc
					S2.tai=src.nin
					S2.dir = SOUTH
					S2.name="[src]"
					src.Savedspeed = src.Move_Delay
					src.Move_Delay = src.Speed2
					S2.Gowner=src
					walk(S2,SOUTH)
					S3.loc = src.loc
					S3.tai=src.nin
					S3.dir = WEST
					S3.name="[src]"
					src.Savedspeed = src.Move_Delay
					src.Move_Delay = src.Speed2
					S3.Gowner=src
					walk(S3,WEST)
					S4.loc = src.loc
					S4.tai=src.nin
					S4.dir = EAST
					S4.name="[src]"
					src.Savedspeed = src.Move_Delay
					src.Move_Delay = src.Speed2
					S4.Gowner=src
					walk(S4,EAST)
					sleep(10)
					src.cast = 0
					sleep(45)
					del(S1)
					del(S2)
					del(S3)
					del(S4)
					return
				else
					for(var/mob/M in oview(6,src))
						if(M.hyoushou)
							src.chakra -= 20
							src.SensatsuN += 1
							src.cast = 1
							var/obj/Sensatsu/S1 = new /obj/Sensatsu
							var/obj/Sensatsu/S2 = new /obj/Sensatsu
							var/obj/Sensatsu/S3 = new /obj/Sensatsu
							var/obj/Sensatsu/S4 = new /obj/Sensatsu
							S1.loc = src.loc
							S1.tai=src.nin
							S1.name="[src]"
							S1.Gowner=src
							walk_towards(S1,M)
							sleep(5)
							S2.loc = src.loc
							S2.tai=src.nin
							S2.name="[src]"
							S2.Gowner=src
							walk_towards(S2,M)
							sleep(5)
							S3.loc = src.loc
							S3.tai=src.nin
							S3.name="[src]"
							S3.Gowner=src
							walk_towards(S3,M)
							sleep(5)
							S4.loc = src.loc
							S4.tai=src.nin
							S4.name="[src]"
							S4.Gowner=src
							walk_towards(S4,M)
							sleep(10)
							src.cast = 0
							sleep(40)
							del(S1)
							del(S2)
							del(S3)
							del(S4)
							return
/*
mob
	proc
		MakyouHyoushouProc(var/mob/M)
			src.Handseals()
			if(src.cast)
				return
			if(src.PK==0)
				src<<"Zona NON-PK!!!"
				return
			if(src.froze)
				src<<"Você está paralisado"
				return
			if(src.Frozen)
				src<<"Você está paralisado"
				return
			if(src.caught)
				src<<"Você foi capturado"
				return
			if(src.captured)
				src<<"Você foi capturado"
				return
			if(src.resting)
				src<<"Não enquanto descansa"
				return
			if(src.meditating)
				src<<"Não enquanto medita"
				return
			if(M.PK==0)
				src<<"Zona NON-PK!!!"
				return
			if(src.chakra<=9999)
				return
			if(!src.handseals)
				return
			if(!src.hyoushou)
				src<<"Para atirar agulhas, use o
				. Quando você está dentro dos seus espelhos, o Sensatsu Suishou muda para caber em sua necessidade"
				src.hyoushou=1
				src.Chakragain()
				src.chakra-=9999
				src.health=src.maxhealth*2
				M.hyoushou=1
				var/mob/DemonMirror1/A = new /mob/DemonMirror1
				var/mob/DemonMirror2/B = new /mob/DemonMirror2
				var/mob/DemonMirror3/C = new /mob/DemonMirror3
				var/mob/DemonMirror4/D = new /mob/DemonMirror4
				var/mob/DemonMirror5/E = new /mob/DemonMirror5
				var/mob/DemonMirror6/F = new /mob/DemonMirror6
				var/mob/DemonMirror7/G = new /mob/DemonMirror7
				var/mob/DemonMirror8/H = new /mob/DemonMirror8
				var/obj/DenseThing/A1 = new /obj/DenseThing
				var/obj/DenseThing/B2 = new /obj/DenseThing
				var/obj/DenseThing/C3 = new /obj/DenseThing
				var/obj/DenseThing/D4 = new /obj/DenseThing
				var/obj/DenseThing/E5 = new /obj/DenseThing
				var/obj/DenseThing/F6 = new /obj/DenseThing
				var/obj/DenseThing/G7 = new /obj/DenseThing
				var/obj/DenseThing/H8 = new /obj/DenseThing
				var/obj/DenseThing/I9 = new /obj/DenseThing
				var/obj/DenseThing/J10 = new /obj/DenseThing
				var/obj/DenseThing/K11 = new /obj/DenseThing
				var/obj/DenseThing/L12 = new /obj/DenseThing
				var/obj/DenseThing/M13 = new /obj/DenseThing
				var/obj/DenseThing/N14 = new /obj/DenseThing
				var/obj/DenseThing/O15 = new /obj/DenseThing
				var/obj/DenseThing/P16 = new /obj/DenseThing
				var/obj/DenseThing/Q17 = new /obj/DenseThing
				var/obj/DenseThing/R18 = new /obj/DenseThing
				var/obj/DenseThing/S19 = new /obj/DenseThing
				var/obj/DenseThing/T20 = new /obj/DenseThing
				var/obj/DenseThing/U21 = new /obj/DenseThing
				var/obj/DenseThing/V22 = new /obj/DenseThing
				var/obj/DenseThing/W23 = new /obj/DenseThing
				var/obj/DenseThing/X24 = new /obj/DenseThing
				A1.owner=src
				B2.owner=src
				C3.owner=src
				D4.owner=src
				E5.owner=src
				F6.owner=src
				G7.owner=src
				H8.owner=src
				I9.owner=src
				J10.owner=src
				K11.owner=src
				L12.owner=src
				M13.owner=src
				N14.owner=src
				O15.owner=src
				P16.owner=src
				Q17.owner=src
				R18.owner=src
				S19.owner=src
				T20.owner=src
				U21.owner=src
				V22.owner=src
				W23.owner=src
				X24.owner=src
				A1.loc = locate(M.x-3,M.y+4,M.z)//Tops
				B2.loc = locate(M.x-2,M.y+4,M.z)//Tops
				C3.loc = locate(M.x-1,M.y+4,M.z)//Tops
				D4.loc = locate(M.x+1,M.y+4,M.z)//Tops
				E5.loc = locate(M.x+2,M.y+4,M.z)//Tops
				F6.loc = locate(M.x+3,M.y+4,M.z)//Tops
				G7.loc = locate(M.x-3,M.y-4,M.z)//Bottoms
				H8.loc = locate(M.x-2,M.y-4,M.z)//Bottoms
				I9.loc = locate(M.x-1,M.y-4,M.z)//Bottoms
				J10.loc = locate(M.x+1,M.y-4,M.z)//Bottoms
				K11.loc = locate(M.x+2,M.y-4,M.z)//Bottoms
				L12.loc = locate(M.x+3,M.y-4,M.z)//Bottoms
				M13.loc = locate(M.x-4,M.y+1,M.z)//Lefts
				N14.loc = locate(M.x-4,M.y+2,M.z)//Lefts
				O15.loc = locate(M.x-4,M.y+3,M.z)//Lefts
				P16.loc = locate(M.x-4,M.y-1,M.z)//Lefts
				Q17.loc = locate(M.x-4,M.y-2,M.z)//Lefts
				R18.loc = locate(M.x-4,M.y-3,M.z)//Lefts
				S19.loc = locate(M.x+4,M.y+1,M.z)//Rights
				T20.loc = locate(M.x+4,M.y+2,M.z)//Rights
				U21.loc = locate(M.x+4,M.y+3,M.z)//Rights
				V22.loc = locate(M.x+4,M.y-1,M.z)//Rights
				W23.loc = locate(M.x+4,M.y-2,M.z)//Rights
				X24.loc = locate(M.x+4,M.y-3,M.z)//Rights
				A.loc = locate(M.x-4,M.y+4,M.z)
				A.owner=src
				B.loc = locate(M.x,M.y+4,M.z)
				B.owner=src
				C.loc = locate(M.x+4,M.y+4,M.z)
				C.owner=src
				D.loc = locate(M.x-4,M.y,M.z)
				D.owner=src
				E.loc = locate(M.x+4,M.y,M.z)
				E.owner=src
				F.loc = locate(M.x-4,M.y-4,M.z)
				F.owner=src
				G.loc = locate(M.x,M.y-4,M.z)
				G.owner=src
				H.loc = locate(M.x+4,M.y-4,M.z)
				H.owner=src
				Gotcha
					if(src.chakra>=5)
						if(src.hyoushou)
							if(A)
								src.loc = A.loc
								src.chakra-=100
							sleep(13)
							if(B)
								src.loc = B.loc
								src.chakra-=100
							sleep(13)
							if(C)
								src.loc = C.loc
								src.chakra-=100
							sleep(13)
							if(D)
								src.loc = D.loc
								src.chakra-=100
							sleep(13)
							if(E)
								src.loc = E.loc
								src.chakra-=100
							sleep(13)
							if(F)
								src.loc = F.loc
								src.chakra-=100
							sleep(13)
							if(G)
								src.loc = G.loc
								src.chakra-=100
							sleep(13)
							if(H)
								src.loc = H.loc
								src.chakra-=100
					switch(input("Você deseja sair dos espelhos?") in list("Sim","Não"))
						if("Sim")
							del(A)
							del(B)
							del(C)
							del(D)
							del(E)
							del(F)
							del(G)
							del(H)
							del(A1)
							del(B2)
							del(C3)
							del(D4)
							del(E5)
							del(F6)
							del(G7)
							del(H8)
							del(I9)
							del(J10)
							del(K11)
							del(L12)
							del(M13)
							del(N14)
							del(O15)
							del(P16)
							del(Q17)
							del(R18)
							del(S19)
							del(T20)
							del(U21)
							del(V22)
							del(W23)
							del(X24)
							sleep(60)
							src.hyoushou=0
							M.hyoushou=0
						if("Não")
							goto Gotcha*/
mob/var/pain=0
mob/var/Elementos=0
turf/npc/ElementoNpc
	name = "{NPC}Mestre dos Elementos"
	icon = 'npcs.dmi'
	icon_state = "Kakashi"
	density = 1
	verb/Elemento()
		set src in oview(2)
		//set category = "Elemento"
		set desc = "Descubra o seu elemento"
		if(usr.Elementos==0&&usr.pain==0)
			switch(input("Que elemento vc quer?",text) in list ("Suiton","Katon","Raiton","Fuuton","Doton"))
				if("Fuuton")
					if(usr.Elementos)
						usr<<"Você já escolheu seu elemento!"
						return
					usr.Elemento="Fuuton"
					usr.Fuuton=1
					usr.Elementos=1
					usr<<"Seu elemento é Fuuton"
					return
				if("Katon")
					if(usr.Elementos)
						usr<<"Você já escolheu seu elemento!"
						return
					usr.Elemento="Katon"
					usr.Katon=1
					usr.Elementos=1
					usr<<"Seu elemento é Katon"
					return
				if("Suiton")
					if(usr.Elementos)
						usr<<"Você já escolheu seu elemento!"
						return
					usr.Elemento="Suiton"
					usr.Suiton=1
					usr.Elementos=1
					usr<<"Seu elemento é Suiton"
					return
				if("Doton")
					if(usr.Elementos)
						usr<<"Você já escolheu seu elemento!"
						return
					usr.Elemento="Doton"
					usr.Doton=1
					usr.Elementos=1
					usr<<"Seu elemento é Doton"
					return
				if("Raiton")
					if(usr.Elementos)
						usr<<"Você já escolheu seu elemento!"
						return
					usr.Elemento="Raiton"
					usr.Raiton=1
					usr.Elementos=1
					usr<<"Seu elemento é Raiton"
					return
		else
			usr<<"Vc ja sabe seu elemento"

mob/var/Elemento2=""
mob/var/Elementos2=0
mob/var/Elemento3=""
mob/var/Elementos3=0
turf/npc/ElementoNpc2
	name = "{NPC}Segundo Elemento"
	icon = 'npcs.dmi'
	icon_state="Jiraiya"
	density = 1
	verb/Falar()
		set src in oview(2)
		set category = "Elemento"
		switch(input("O que vc quer comigo?",text) in list ("Aprender a dominar outro elemento","Nada"))
			if("Aprender a dominar outro elemento")
				usr<<"Hummm deixe me ver, você precisa mostrar que tem condições de manifestar seu segundo elemento."
				if(usr.seals>=70&&!usr.Elementos2&&usr.chakraN>=40000&&usr.level>=200)
					usr<<"Muito bem, você provou ser capaz de despertar o controle do segundo elemento"
					switch(input("Que elemento você quer?",text) in list ("Katon","Suiton","Fuuton","Raiton","Doton"))
						if("Katon")
							if(usr.Elementos2)
								usr<<"Você já escolheu seu elemento!"
								return
							if(usr.Katon==0)
								usr.Katon=1
								usr.Elemento2="Katon"
								usr.Elementos2=1
							else
								usr<<"Você já tem esse elemento!"
						if("Suiton")
							if(usr.Elementos2)
								usr<<"Você já escolheu seu elemento!"
								return
							if(usr.Suiton==0)
								usr.Suiton=1
								usr.Elemento2="Suiton"
								usr.Elementos2=1
							else
								usr<<"Você já tem esse elemento!"
						if("Doton")
							if(usr.Elementos2)
								usr<<"Você já escolheu seu elemento!"
								return
							if(usr.Doton==0)
								usr.Doton=1
								usr.Elemento2="Doton"
								usr.Elementos2=1
							else
								usr<<"Você já tem esse elemento!"
						if("Raiton")
							if(usr.Elementos2)
								usr<<"Você já escolheu seu elemento!"
								return
							if(usr.Raiton==0)
								usr.Raiton=1
								usr.Elemento2="Raiton"
								usr.Elementos2=1
							else
								usr<<"Você já tem esse elemento!"
						if("Fuuton")
							if(usr.Elementos2)
								usr<<"Você já escolheu seu elemento!"
								return
							if(usr.Fuuton==0)
								usr.Fuuton=1
								usr.Elemento2="Fuuton"
								usr.Elementos2=1
							else
								usr<<"Você já tem esse elemento!"
				else
					usr<<"Você precisa trazer um pergaminho secreto escondido perto de Takigakure e se lembre que você precisa treinar seu controle de chakra e suas habilidades em realizar selos."
			if("Nada")
				usr<<"Saia daqui então"
				return


turf/npc/ElementoNpc3
	name = "{NPC}Terceiro Elemento"
	icon = 'npcs.dmi'
	icon_state="Jiraiya"
	density = 1
	verb/Falar()
		set src in oview(2)
		set category = "Elemento"
		switch(input("O que vc quer comigo?",text) in list ("Aprender a dominar um elemento","Nada"))
			if("Aprender a dominar um elemento")
				usr<<"Vejamos se vc é capaz...."
				if(usr.level>=325&&usr.seals==100&&!usr.Elementos3&&usr.rank=="Kage"||usr.otolider||usr.rank=="Sannin"||usr.Takaleader||usr.akatsukileader||usr.NukesquadLeader||usr.soundleader||usr.swordsmenleader||usr.lualider)
					if(usr.chakraN>=150000)
						usr<<"Mto bem vc provou ser capaz de despertar o controle do terceiro elemento"
						switch(input("Que elemento vc quer?",text) in list ("Katon","Suiton","Fuuton","Raiton","Doton"))
							if("Katon")
								if(usr.Elementos3)
									usr<<"Você já escolheu seu elemento!"
									return
								if(usr.Katon==0)
									usr.Katon=1
									usr.Elemento3="Katon"
									usr.Elementos3=1
								else
									usr<<"Você já tem esse elemento!"
							if("Suiton")
								if(usr.Elementos3)
									usr<<"Você já escolheu seu elemento!"
									return
								if(usr.Suiton==0)
									usr.Suiton=1
									usr.Elemento3="Suiton"
									usr.Elementos3=1
								else
									usr<<"Você já tem esse elemento!"
							if("Doton")
								if(usr.Elementos3)
									usr<<"Você já escolheu seu elemento!"
									return
								if(usr.Doton==0)
									usr.Doton=1
									usr.Elemento3="Doton"
									usr.Elementos3=1
								else
									usr<<"Você já tem esse elemento!"
							if("Raiton")
								if(usr.Elementos3)
									usr<<"Você já escolheu seu elemento!"
									return
								if(usr.Raiton==0)
									usr.Raiton=1
									usr.Elemento3="Raiton"
									usr.Elementos3=1
								else
									usr<<"Você já tem esse elemento!"
							if("Fuuton")
								if(usr.Elementos3)
									usr<<"Você já escolheu seu elemento!"
									return
								if(usr.Fuuton==0)
									usr.Fuuton=1
									usr.Elemento3="Fuuton"
									usr.Elementos3=1
								else
									usr<<"Você já tem esse elemento!"
					else
						usr<<"Vc precisa treinar seu controle de chakra."
				else
					usr<<"Vc é muito fraco!"
					world<<"[usr] tentou aprender um terceiro elemento, mas ele ainda é uma vergonha!"
			if("Nada")
				usr<<"Saia daqui então"
				return


//---------------------------------Npcs Quests---------------------------------------------------------------------------
mob/var
	fq=0
obj
	Flags
		Fuzzy
			icon='boladelava.dmi'
		Red
			icon='boladelava.dmi'
		Blue
			icon = 'boladelava.dmi'
mob/npc/Fuutonteacherquest
	name = "{NPC}Anciao do vento"
	icon = 'Fuutonteacher.dmi'
	icon_state= ""
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Sabio"
			switch(input("O que você faz aqui?",text) in list ("Sou um usuario do vento!","Esqueça"))
				if("Sou um usuario do vento!")
					if(usr.Elemento =="Fuuton"||usr.Elemento2 =="Fuuton"||usr.Elemento3 =="Fuuton")
						usr<<"Vc deseja se aprofundar no estudo do seu elemento....Mto bem"
						if(usr.ventoN >=250)
							usr << "<B><font color = blue>Você aprendeu o Fuuton Dai Tatsumaki!"
							usr.verbs += new /mob/fuuton/verb/FuutonDaiTatsumaki()
							usr.verbs += new /mob/jutsu/verb/FuutonSuna()
						else
							usr<<"Treine mais seu elemento para aprender uma nova técnica"
					else
						usr<<"Vc não é do tipo vento"
				if("Esqueça")
					usr<<"Ótimo"
					return

mob/var
	kq=0
	kqq=0
mob/npc/Katonteacherquest
	name = "{NPC}Anciao do fogo"
	icon = 'Katonteacher.dmi'
	icon_state= ""
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Sabio"
			switch(input("O que você faz aqui?",text) in list ("Sou um usuario do fogo!","Esqueça"))
				if("Sou um usuario do fogo!")
					if(usr.Elemento =="Katon"||usr.Elemento2 =="Katon"||usr.Elemento3 =="Katon")
						usr<<"Vc deseja se aprofundar no estudo do seu elemento....Mto bem"
						if(usr.fogoN >=250)
							usr<<"Vc deseja se aprofundar no estudo do seu elemento. Muito bem, treine mais ainda seu elemento fogo, que lhe ensinarei novos jutsus."
							usr << "<B><font color = blue>Você aprendeu o Goryuuka no jutsu e o Goukakyu!"
							usr.verbs += new /mob/jutsu/verb/KatonGouryuuka()
							usr.verbs += new /mob/katon/verb/KatonKasumiEnbu()
						else
							usr<<"Vc não é forte o suficiente."
					else
						usr<<"Você não é usuário do fogo!"
					if("Esqueça")
						usr<<"Adeus"
						return
mob/var/quaseamat=0
mob/npc/Katonteacherquest2
	name = "{NPC}Anciao"
	icon = 'Katonteacher.dmi'
	icon_state= ""
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
		//	set category = "Sabio"
			switch(input("O que você faz aqui?",text) in list ("Gostaria de saber mais sobre o amaterasu!","Esqueça"))
				if("Gostaria de saber mais sobre o amaterasu!")
					if(usr.kqq)
						usr<<"Olá. Vou te explicar... O amaterasu é uma das técnicas oculares do clã uchiha. São chamas negras que consomem qualquer coisa, inclusive o próprio fogo. Não existe como apagá-las, a não ser que o uchiha as pare ou alguém as sele"
						usr.kq=1
					if(usr.mangeN>=1&&usr.Mnin>=50000&&usr.Mchakra>=80000)
						usr<<"Amaterasu são as chamas que tudo consomem e que perduram por 7 dias e 7 noites"
						usr.quaseamat=1
						usr.quasekamui=0
					else
						usr<<"Não tenho tempo"
				if("Esqueça")
					usr<<"Adeus"
					return

mob/var/quasekamui=0
mob/var/tsukiyomi=0
mob/var/kamui=0
mob/var/amaterasu=0
mob/npc/Npcuchiha
	name = "{NPC}Anciao Uchiha"
	icon = 'uchihanpc.dmi'
	icon_state= ""
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Anciao"
			switch(input("O que você faz aqui?",text) in list ("Gostaria aprender mais sobre meu sharingan!","Esqueça"))
				if("Gostaria aprender mais sobre meu sharingan!")
					if(usr.kamui&&!usr.quasekamui&&usr.quaseamat&&usr.tsukiyomi)
						usr<<"Talvez seja melhor te explicar sobre o amaterasu ja que você pesquisou sobre ele"
						usr.amaterasu=1
						usr.verbs += new /mob/jutsu/verb/Novoamat2()
					if(usr.amaterasu&&!usr.quaseamat&&usr.quasekamui&&usr.tsukiyomi)
						usr<<"Talvez para você seja mais sensato aprender sobre o Kamui"
						usr.kamui=1
						usr.verbs += new /mob/Hatake/verb/Susanoo()
				if("Esqueça")
					usr<<"Adeus"
					return

mob/var
	sq=0
mob/npc/Suitonteacherquest
	name = "{NPC}Anciao da agua"
	icon = 'Suitonteacher.dmi'
	icon_state= ""
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Sabio"
			switch(input("O que você faz aqui?",text) in list ("Sou um usuario da agua!","Esqueça"))
				if("Sou um usuario da agua!")
					if(usr.Elemento =="Suiton"||usr.Elemento2 =="Suiton"||usr.Elemento3 =="Suiton")
						usr<<"Vc deseja se aprofundar no estudo do seu elemento....Mto bem"
						if(usr.aguaN >=250)
							usr<<"Vc deseja se aprofundar no estudo do seu elemento. Muito bem, treine mais ainda seu elemento agua, que lhe ensinarei novos jutsus."
							usr << "<B><font color = blue>Você aprendeu o Mizu Kawa!"
							usr.verbs += new /mob/jutsu/verb/Mizukawa()
							usr.verbs += new /mob/suiton/verb/SuirouNoJutsu()
						else
							usr<<"Vc não é forte o suficiente."
					else
						usr<<"Você não é usuário da agua!"
					if("Esqueça")
						usr<<"Adeus"

mob/var
	dq=0
	dqq=0
	dq2=0

mob/npc/Dotonteacherquest
	name = "{NPC}Anciao da terra"
	icon = 'Dotonteacher.dmi'
	icon_state= ""
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Sabio"
			switch(input("O que você faz aqui?",text) in list ("Sou um usuario da terra!","Esqueça"))
				if("Sou um usuario da terra!")
					if(usr.Elemento =="Doton"||usr.Elemento2 =="Doton"||usr.Elemento3 =="Doton")
						usr<<"Vc deseja se aprofundar no estudo do seu elemento....Mto bem"
						if(usr.terraN >=250)
							usr<<"Vc deseja se aprofundar no estudo do seu elemento. Muito bem, treine mais ainda seu elemento terra, que lhe ensinarei novos jutsus."
							usr<<"<B><font color = blue>Você aprendeu o Doton Gaeshi!"
							usr.verbs += new /mob/doton/verb/DorokuGaeshi()
							usr.verbs += new /mob/jutsu/verb/Soterra()
						else
							usr<<"Vc não é forte o suficiente."
					else
						usr<<"Você não é usuário da terra!"
					if("Esqueça")
						usr<<"Adeus"
						return

mob/npc/Dotonteacherquest2
	name = "{NPC}Alastar"
	icon = 'Dotonteacher.dmi'
	icon_state= ""
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Sabio"
			switch(input("O que você faz aqui?",text) in list ("Gostaria de te passar uma msg!","Esqueça"))
				if("Gostaria de te passar uma msg!")
					if(usr.dqq)
						usr<<"O que?? Aquele velho acha que me superou....HAHAHAHAHA....pois diga à ele q estou desenvolvendo um jutsu novo e diga também que a resposta para AQUILO eh 189356"
						usr.dq=1
					else
						usr<<"Não tenho tempo agora"
				if("Esqueça")
					usr<<"Adeus"
					return

mob/var/rq=0
mob/npc/Raitonteacherquest
	name = "{NPC}Anciao do trovao"
	icon = 'Raitonteacher.dmi'
	icon_state= ""
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Sabio"
			switch(input("O que você faz aqui?",text) in list ("Sou um usuario do trovão!","Esqueça"))
				if("Sou um usuario do trovão!")
					if(usr.Elemento =="Raiton"||usr.Elemento2 =="Raiton"||usr.Elemento3 =="Raiton")
						usr<<"Vc deseja se aprofundar no estudo do seu elemento....Mto bem"
						if(usr.trovaoN>=250)
							usr << "<B><font color = blue>Você aprendeu o Raizou wo Utte!"
							usr.verbs += new /mob/rai/verb/RaizouIkazuchiWoUtte()
							usr.verbs += new /mob/jutsu/verb/EletricBunshin()
						else
							usr<<"Treine seu elemento..."
					else
						usr<<"Vc não é do estilo Raio"
				if("Esqueça")
					usr<<"Adeus"
					return



mob/npc/npcveloz
	name = "{NPC}Sabio da Velocidade"
	icon = 'UltimetiumNPCS.dmi'
	icon_state= "Retribution"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Sabio"
			switch(input("O que você faz aqui?",text) in list ("Quero ser mais rapido!","Esqueça"))
				if("Quero ser mais rapido!")
					if(usr.veloN>=200000)
						usr << "<B><font color = blue>Você aprendeu o Movimento Rápido!"
						usr.verbs += new /mob/jutsu/verb/EstiloVelocidade()
					else
						usr<<"Você ainda é muito lento..."
				if("Esqueça")
					usr<<"Adeus"
					return

mob/var/sabeizanami
mob/npc/Mang
	name = "{NPC}Edo Tensei Itachi"
	icon = 'UltimetiumNPCS.dmi'
	icon_state= "Itachi Edo-Tensei"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Itachi"
			switch(input("...?",text) in list ("Quero aprender um lendário jutsu do Sharingan!", "Nada"))
				if("Quero aprender um lendário jutsu do Sharingan!")
					if(usr.Uchiha)
						if(usr.mangeN>=50&&usr.vitorias>=250&&usr.uchikills>=250&&usr.level>=350)
							usr<<"Ok, <b><font color=green>você aprendeu o Izanami!"
							usr.verbs += new /mob/jutsu/verb/NovoIzanami()
							usr.sabeizanami=1
					else
						usr<<"Você não tem nada para falar comigo!"
				if("Nada")
					usr<<"Tchau..."

mob/var/hq=0



mob/npc/Ancteacherquest
	name = "{NPC}Anciao dos elementos"
	icon = 'npcmissao.dmi'
	icon_state= "branco"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Sabio"
			/*switch(input("O que você faz aqui?",text) in list ("Quero aprender a unir meus elementos!","Esqueça"))
				if("Quero aprender a unir meus elementos!")
					if(usr.rank=="Genin"||usr.rank=="Chuunin")
						return
					if(usr.Suiton&&usr.Fuuton)
						usr<<"Quer aprender a combinar elementos...."
						if(usr.Fuuton2N>=250&&usr.SN>=500)
							usr << "<B><font color = blue>Você aprendeu o Gufuu Suika!"
							usr.verbs += new /mob/fuuton/verb/Gufu()
						else
							usr<<"Treine seu suiton daibakufu e seu fuuton renkudan para aprender o uma nova tecnica"
					else
						usr<<"Seu chakra não possui o poder da agua ou do vento!"
					if(usr.Suiton&&usr.Doton&&usr.terraN>=900&&usr.aguaN>=900)
						usr<<"Olá. Entao vc quer aprender a unir seus dois elementos"
						if(usr.DDD>=1200&&usr.SN>=1000)
							usr << "<B><font color = blue>Você aprendeu o Mokuton Quake e Mokuton Palm!"
							usr.verbs += new /mob/mokuton/verb/MokutonQ()
							usr.verbs += new /mob/jutsu/verb/Mokutongin()
						else
							usr<<"Treine seu Suiton daibakufu e seu Doton Doryuu Taiga alem de suas pericias elementares para aprender o uma nova tecninca"
					else
						usr<<"Seu chakra não possui o poder da agua ou da terra!"
					if(usr.Fuuton&&usr.Doton)
						usr<<"Olá, então vc quer aprender a unir seus dois elementos"
						if(usr.Fuuton2N>=800&&usr.DDD>=900&&usr.terraN>=850&&usr.ventoN>=850)
							usr << "<B><font color = blue>Você aprendeu o Suna shushin e Suna saitachi!"
							usr.verbs += new /mob/gaara/verb/SunaShushinNoJutsu()
							usr.verbs += new /mob/gaara/verb/Sandk()
						else
							usr<<"Treine seu fuuton renkudan e seu Doton Doryuu Taiga alem de suas pericias elementares para aprender o uma nova tecninca"
					else
						usr<<"Seu chakra não possui o poder do vento ou da terra!"
					if(usr.Fuuton&&usr.Katon)
						usr<<"Olá. Então vc quer aprender a unir seus dois elementos"
						if(usr.Fuuton2N>=250&&usr.Katon2N>=300)
							usr << "<B><font color = blue>Você aprendeu o Ninpou Kamikaze!"
							usr.verbs += new /mob/fuuton/verb/Kami()
						else
							usr<<"Treine seu katon housenka e seu fuuton renkudan para aprender o uma nova tecninca"
					else
						usr<<"Seu chakra não possui o poder da agua ou do fogo!"
					if(usr.Fuuton&&usr.Katon&&usr.Doton)
						usr<<"Olá. Então vc quer aprender a unir seus três elementos"
						if(usr.Fuuton2N>=600&&usr.DDD>=500&&usr.Katon2N>=700&&usr.fogoN>=950&&usr.terraN>=950&&usr.ventoN>=1050)
							usr << "<B><font color = blue>Você aprendeu o Futton no Jutsu"
							usr.verbs += new /mob/jutsu/verb/Acido1()
						else
							usr<<"Treine seu Fuuton renkudan, seu Doton Taiga e seu Katon housenka além das pericias de seus elementos para aprender novas técnicas"
					if(usr.Fuuton&&usr.Suiton&&usr.Doton)
						usr<<"Olá. Então vc quer aprender a unir seus três elementos"
						if(usr.Fuuton2N>=700&&usr.DDD>=800&&usr.SN>=800&&usr.aguaN>=950&&usr.terraN>=950&&usr.ventoN>=950)
							usr << "<B><font color = blue>Você aprendeu o Shouton no jutsu!"
							usr.verbs += new /mob/jutsu/verb/Cristal1()
							usr.verbs += new /mob/jutsu/verb/Cristal2()
						else
							usr<<"Treine seu fuuton renkudan, seu Doton Doryuu Taiga e seu Suiton Daibakufu além das pericias elementares dos seus 3 elementos para aprender novas técnicas"
					if(usr.Raiton&&usr.Suiton)
						usr<<"Olá. Então vc quer aprender a unir seus dois elementos"
						if(usr.Rai1N>=600&&usr.SN>=500&&usr.trovaoN>=1000&&usr.aguaN>=900)
							usr << "<B><font color = blue>Você aprendeu o Ranton no Jutsu!"
							usr.verbs += new /mob/jutsu/verb/Tempestade1()
						else
							usr<<"Treine seu raikyuu no jutsu e seu Suiton daibakufu alem de suas pericias para aprender novas técnicas"
					if(usr.Katon&&usr.Doton)
						usr<<"Olá. Então vc quer aprender a unir seus dois elementos"
						if(usr.DDD>=700&&usr.Katon2N>=600&&usr.fogoN>=950&&usr.terraN>=950)
							usr << "<B><font color = blue>Você aprendeu o Youton no Jutsu!"
							usr.verbs += new /mob/jutsu/verb/Lava1()
							usr.verbs += new /mob/jutsu/verb/Lava2()
						else
							usr<<"Treine seu Doton Taiga e seu Katon Housenka além das pericias de seus elementos para aprender novas técnicas"
				if("Esqueça")
					usr<<"Adeus"
					return*/

mob/npc/Kakashigenin
	name = "{NPC}Kakashi Sensei"
	icon = 'npcs.dmi'
	icon_state = "Kakashi"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999999999999999999999999999999999999
	verb
		Pegar()
			set src in oview(2)
			set name = "Pegar Guizo"

			if(usr.rank == "Estudante")
				usr<<output("Parabéns, você conseguiu. Passou no teste","output2.sistema")
				world<<output("[usr] é o mais novo Genin do server. Parabéns e seja bemvindo ao NRB","output2.sistema")
				usr.rank = "Genin"
				usr.gssaida=1
				var/obj/Headband/B = new/obj/Headband
				B.loc = usr
				var/obj/KunaiHolster/K = new/obj/KunaiHolster
				K.loc = usr
				var/obj/Hpg/S = new/obj/Hpg
				S.loc = usr
				var/obj/Hpp/R = new/obj/Hpp
				R.loc = usr
				if(usr.leafS)
					usr.loc=locate(79,271,2)
				if(usr.sandS)
					usr.loc=locate(551,101,2)
				if(usr.soundS)
					usr.loc=locate(78,236,2)
				if(usr.rainS)
					usr.loc=locate(488,123,2)
				if(usr.earthS)
					usr.loc=locate(16,234,2)
				if(usr.lightningS)
					usr.loc=locate(16,273,2)
				if(usr.mistS)
					usr.loc=locate(489,83,2) //Arrumar Coordenada

mob
	Brolly
		name = "{NPC}Brolly"
		icon = 'Brolly.dmi'
		Village = "Parangaricotirimicoare"
		guard = 1
		maxhealth=15000000
		health = 15000000
		tai = 1000000
		nin = 1000000
		gen = 1000000
		shurikenskill=1000000
		NPC = 1
		base
			icon_state = "2"
			density = 1
			New()
				..()
				overlays += /mob/Brolly/h1/
				overlays += /mob/Brolly/h3/
				overlays += /mob/Brolly/h4/
				overlays += /mob/Brolly/h5/
				overlays += /mob/Brolly/h6/

		h1
			icon_state = "1"
			pixel_x = -32
			density=1

		h3
			icon_state = "3"
			pixel_x = 32
			density = 1
		h4
			icon_state = "4"
			pixel_y = -32
			pixel_x = -32
			density=1
		h5
			icon_state = "5"
			pixel_y = -32
			density = 1
		h6
			icon_state = "6"
			pixel_y = -32
			pixel_x = 32
			density=1


mob/var
	genjmen=0
	taijmen=0
	mariomen=0
mob/npc/genjman
	name = "{NPC}Kurenai"
	icon = 'Kurenai.dmi'
	icon_state = "Kurenai"
	PK = 0
	imortal = 1
	health = 99999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(3)
			//set category = "Kurenai"
			switch(input("Em quem posso ser útil?", text) in list("Quero Aprender sobre Genjutsus","Me ensine a Liberar de um Genjutsu"))
				if("Me ensine a Liberar de um Genjutsu")
					if(!usr.QuestKurenai)
						usr<<"Mundo Shinobi não se baseia apenas em Ninjutsus, livrar-se de um Genjutsu é essencial em uma batalha, até os Ninjas mais experientes sofrem em se livrar de um Genjutsu! Para se livrar de um genjutsu existem alguns metódos como se ferir, entre outros outros. O que irei te ensinar é como moldar o seu fluxo de chakra para se libertar do Genjutsu."
						if(!usr.QuestKurenai&&usr.Mgen>=5000&&usr.chakraN>=30000)
							usr<<"Pelo visto você evoluiu o suficiente para aprender o Kai"
							usr.verbs += new /mob/jutsu/verb/Kainonvip()
							usr.QuestKurenai=1
							usr<<"<B><font color = blue>Você aprendeu o Genjutsu no Kai!"
						else
							usr<<"Você ainda não é capaz de aprender o Kai, não desista e Vamos acabar com isso logo."
					else
						usr<<"Você já aprendeu o Kai!"
				if("Quero Aprender sobre Genjutsus")
					if(usr.genjmen)
						usr << "Bem-vindo!"
						if(usr.genjmen&&usr.level>=30)
							usr << "<B><font color = blue>Você aprendeu as 06 tecnicas basicas!"
							usr.verbs += new /mob/genj/verb/Breu()
							usr.verbs += new /mob/genj/verb/Arvore()
							usr.verbs += new /mob/jutsu/verb/Kai()
							usr.verbs += new /mob/jutsu/verb/Liberar()
							usr.verbs += new /mob/jutsu/verb/OboroBunshin()
							usr.verbs += new /mob/jutsu/verb/Shinunogenjutsu()
							usr.pain=0
						else
							usr<<"Você precisa de level 30 para aprender as 06 tecnicas basicas"
						if(usr.genjmen&&usr.level>=75&&usr.Mgen>=50000)
							usr << "<B><font color = blue>Você aprendeu 02 tecnicas avançadas!"
							usr.verbs += new /mob/jutsu/verb/GenjOf()
							usr.verbs += new /mob/jutsu/verb/GKai()
						else
							usr<<"Você precisa treinar para aprender as 02 técnicas avançadas!"
						if(usr.genjmen&&usr.level>=200&&usr.Mgen>=100000&&usr.rank == "Chuunin"||usr.level>=200&&usr.Mgen>=100000&&usr.seals>=100)
							usr.verbs += new /obj/bunshins/OboroTajuuKageBunshinNoJutsu/verb/OboroTajuuKageBunshinNoJutsu()
							usr << "<B><font color = cyan>Você aprendeu tecnica suprema!"
						else
							usr<<"Você precisa ser no mínimo um Chuunin e ser mais forte para aprender a técnica suprema!"

					else
						usr << "Você não tem o que fazer aqui."

mob/npc/mgai
	name = "{NPC}Maito Gai"
	icon = 'UltimetiumNPCS.dmi'
	icon_state = "Gai"
	PK = 0
	imortal = 1
	health = 99999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Gai"
			switch(input("Você gostaria de aprender minha técnica secreta?", text) in list("Sim!","Não, obrigado"))
				if("Sim!")
					if(usr.seals>=100&&usr.taijmen&&usr.Mtai>=150000&&usr.veloN>=200000)
						usr<<"Apesar de ter morrido como Genin, meu pai tinha uma abilidade extraordinária!"
						sleep(10)
						usr<<"Aprendi esta técnica com meu pai e desenvolvi um jutsu formidável!"
						sleep(10)
						usr<<"Fale com o Lee, ele sentirá que a juventude de meu pai está em você e te ensinará as técnicas supremas!"
						usr.podegain=1
					else
						usr<<"Sua Juventude não e tão brilhante para aprender, treine mais!"
				if("Não, obrigado")
					usr<<"Fraco..."

mob/npc/taiman
	name = "{NPC}Lee"
	icon = 'npcs.dmi'
	icon_state = "Lee"
	PK = 0
	imortal = 1
	health = 99999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(3)
			//set category = "Npc"
			if (!usr.genjmen&&!usr.mariomen&&!usr.medicmen&&!usr.sansaramen&&!usr.armamen&&usr.Nc==1)
				switch(input("Você gostaria de se tornar um mestre em taijutsu?", text) in list("Sim!","Não, obrigado"))
					if("Sim!")
						usr<<"Você é agora é mestre em taijutsu!"
						usr.Nc=0
						usr.Clan = "Usuário de Taijutsu"
						usr.taijmen=1
						usr.pain=0
					if("Não, obrigado")
						usr<<"Fraco..."
			else
				if(usr.taijmen)
					usr << "Bem-vindo!"
					if(usr.taijmen&&usr.level>=30)
						usr << "<B><font color = blue>Você aprendeu as 2 técnicas basicas!"
						usr.verbs += new /mob/Lee/verb/KonohaReppu()
						usr.verbs += new /mob/Lee/verb/KonohaSenpuu()
					else
						usr<<"Alcance o level 30 para aprender as 2 técnica basicas."
					if(usr.taijmen&&usr.level>=50&&usr.veloN>10000)
						usr<<"<B><font color = blue>Você aprimorou suas técnicas e aprendeu mais 03."
						usr.verbs += new /mob/Lee/verb/Lotus()
						usr.verbs += new /mob/Lee/verb/OmoteRenge()
						usr.verbs += new /mob/Buyou/verb/Kagebuyou()
					else
						usr<<"Você precisa treinar mais para aprender mais 3 tecnicas"
					if(usr.taijmen&&usr.level>=75&&usr.veloN>=20000)
						usr<<"<B><font color = blue>Agora você é capaz de controlar a Lotus Primária!"
						usr.verbs += new /mob/Lee/verb/UraRenge()
					else
						usr<<"Treine mais para aprender a Lotus Primária!"
					if(usr.rank == "Chuunin"||usr.seals>=100)
						if(usr.taijmen&&usr.veloN>=100000&&usr.Mtai>=100000)
							usr << "<B><font color = blue>Você aprendeu 2 tecnicas avançadas!"
							usr.verbs += new /mob/jutsu/verb/Asakujaku()
							usr.verbs += new /mob/Lee/verb/Hirudora()
						else
							usr<<"Treine mais para aprender as 2 técnicas avançadas!"
					if(usr.seals>=100)
						if(usr.taijmen&&usr.podegain)
							usr.verbs += new /mob/Lee/verb/GaiNoturno()
							usr.verbs += new /mob/Lee/verb/ElefanteA()
							usr << "<B><font color = blue>Você aprendeu as 2 técnicas supremas!"
						else
							usr<<"Para aprender minhas 2 técnicas supremas, encontre Gai Sensei e veja se você merece!"
				else
					usr<<"Você precisa de level 30 para aprender as tecnicas basicas"
mob/var/podegain=0

mob/var/
	armamen=0
	medicmen=0
	sansaramen=0
mob/npc/mariomen
	name = "{NPC}Kankuro"
	icon = 'Kankuro.dmi'
	PK = 0
	imortal = 1
	health = 99999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(3)
			//set category = "Npc"
			if(usr.mariomen<>1)return
			switch(input("Você gostaria de se tornar um mestre no controle de marionetes?", text) in list("Sim!","Não, obrigado"))
				if("Sim!")
					if(usr.mariomen)
						usr << "Bem-vindo!"
						if(usr.mariomen&&usr.level>=30)
							usr << "<B><font color = blue>Você aprendeu as 02 técnicas básicas!"
							usr.verbs += new /mob/Kuroari/verb/Kuroari()
							usr.verbs += new /mob/Karasu/verb/Karasu()
						else
							usr<<"Você precisa de level 30 para aprender os 02 jutsus básico"
						if(usr.mariomen&&usr.level>=75&&usr.chakraN>=20000&&usr.Mnin>=20000)
							usr << "<B><font color = blue>Você aprendeu as 10 técnicas avançadas!"
							usr.verbs += new /mob/mario/verb/Sousou()
							usr.verbs += new /mob/mario/verb/Kyuu()
							usr.verbs += new /mob/haruno/verb/Criarant()
							usr.verbs += new /mob/jutsu/verb/Criarven()
							usr.verbs += new /mob/mario/verb/Poison()
							usr.verbs += new /mob/mario/verb/Sumon()
							usr.verbs += new/mob/puppet/verb/KillPuppets()
							usr.verbs += new/mob/Sanshouo/verb/Sanshouo()
							usr.verbs += new/mob/Kuroari/verb/Kuroariattack()
							usr.verbs += new/mob/Karasu/verb/Karasuattack()
						else
							usr<<"<B><font color = blue>Você não é forte o suficientes para os 10 Avançados!"
						if(usr.mariomen&&usr.level>=250&&usr.rank == "Chuunin"||usr.level>=250&&usr.seals>=100)
							usr.verbs += new/mob/mario/verb/SeloChakra()
							usr.verbs += new/mob/Karasu/verb/Karasuattack2()
							usr.verbs += new/mob/Karasu/verb/Karasuattack3()
							usr <<"<B><font color = blue>Você aprendeu os 03 Jutsus Supremos!"
						else
							usr<<"Precisa ser no mínimo um Chuunin para aprender os 03 Jutsus Supremos!"
					else
						usr<<"Você não tem nada a aprender aqui!"
				if("Não, obrigado")
					usr << "Ok."

mob/npc/armamen
	name = "{NPC}Tenten"
	icon = 'UltimetiumNPCS.dmi'
	icon_state="Tenten"
	PK = 0
	imortal = 1
	health = 99999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(3)
			//set category = "Npc"
			if(!usr.genjmen&&!usr.taijmen&&!usr.medicmen&&!usr.mariomen&&!usr.sansaramen&&usr.Nc==1)
				switch(input("Você gostaria de se tornar um mestre no controle de armas?", text) in list("Sim!","Não, obrigado"))
					if("Sim!")
						usr<<"Você é agora é mestre com armas!"
						usr.Nc=0
						usr.Clan = "Usuário de Armas"
						usr.armamen=1
						usr.pain=0
					if("Não, obrigado")
						usr<<"Fraco..."
			else
				if(usr.armamen)
					usr << "Bem-vindo!"
					if(usr.armamen&&usr.level>=30)
						usr << "<B><font color = blue>Você aprendeu as 04 tecnicas basicas!"
						usr.verbs += new /mob/jutsu/verb/SumonArmas()
						usr.verbs += new /mob/Tenten/verb/HomingKunai()
						usr.verbs += new /mob/jutsu/verb/TentenS()
						usr.verbs += new /mob/Tenten/verb/Focus()
						usr.pain=0
					else
						usr<<"Você precisa de level 30 para aprender os 04 jutsus basicos"
					if(usr.armamen&&usr.level>=75&&usr.Mshurikenskill>=30000)
						usr << "<B><font color = blue>Você aprendeu as 02 tecnicas avançadas!"
						usr.verbs += new /mob/Tenten/verb/HomingShuriken()
						usr.verbs += new /mob/Tenten/verb/HomingWindmill()
					else
						usr<<"Você precisa ser mais forte para aprender as 02 técnicas avançadas de seu clã"
					if(usr.armamen&&usr.rank == "Chuunin"&&usr.Mshurikenskill>=100000||usr.seals>=100&&usr.Mshurikenskill>=100000)
						usr << "<B><font color = blue>Você aprendeu a técnica suprema do seu clã!"
						usr.verbs += new /mob/Tenten/verb/FuracaoWindmill()
					else
						usr<<"Você precisa ser mais forte para aprender a técnica suprema de seu clã"
				else
					usr << "Você não tem o que fazer aqui."

mob/npc/sansara
	name = "{NPC}Andarilho Eremita"
	icon = 'cvguard.dmi'
	PK = 0
	imortal = 1
	health = 99999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(3)
			set category = "Npc"
		/*	if(!usr.genjmen&&!usr.taijmen&&!usr.medicmen&&!usr.mariomen&&!usr.armamen&&usr.Nc==1)
				switch(input("Você gostaria de se tornar um andarilho eremita?", text) in list("Sim!","Não, obrigado"))
					if("Sim!")
						usr<<"Você é agora é um andarilho eremita!"
						usr.Nc=0
						usr.Clan = "Sansara"
						usr.sansaramen=1
						usr.pain=1
					if("Não, obrigado")
						usr<<"Fraco..."*/
mob/var/contrato=0
mob/npc/saponpc
	name = "{NPC}Fukasaku"
	icon = 'sapo.dmi'
	PK = 0
	imortal = 1
	health = 99999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(3)
			//set category = "Npc"
			switch(input("Você gostaria de fazer o que?", text) in list("Contrato!","Aprender o Senjutsu"))
				if("Contrato!")
					if(!usr.contrato||usr.sansaramen==1)
						switch(input("Você gostaria de fazer um contrato com os sapos?", text) in list("Sim!","Não, obrigado"))
							if("Sim!")
								usr<<"Você  agora pode sumonar sapos!"
								usr.contrato=1
								usr.saposumon=1
							if("Não, obrigado")
								usr<<"Fraco..."
				if("Aprender o Senjutsu")
					if(usr.Uzumaki==1)
						switch(input("Você gostaria de aprender o Senjutsu?", text) in list("Sim!","Não, obrigado"))
							if("Sim!")
								if(usr.level>=300&&usr.chakraN>=50000&&usr.Mnin>=120000&&usr.Mtai>=10000&&usr.seals >= 100)
									usr<<"Você  agora pode treinar seu chakra natural!"
									usr.verbs += new /mob/treino/verb/naturalCh()
									var/obj/Narutosen/P = new/obj/Narutosen
									P.loc = usr
									var/obj/Narutosannin/S = new/obj/Narutosannin
									S.loc = usr
									usr.verbs += new /mob/naruto/verb/ModoSannin()
								else
									usr<<"Vc ainda é fraco"
							if("Não, obrigado")
								usr<<"Fraco..."



mob/npc/sansara2
	name = "{NPC}Ancião do Rinnegan"
	icon = 'peincadera.dmi'
	icon_state = "23"
	PK = 0
	imortal = 1
	health = 99999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(3)
			//set category = "Npc"
			if(usr.Uchiha&&usr.senjukills>=300&&usr.dnasenjuu==1&&usr.FMS)
				usr<<"Bem-vindo!"
				usr<<"<B><font color = blue>Você despertou o Rinnegan!"
				usr.verbs += new /mob/Pein/verb/Rinnegan()
				usr.verbs += new /mob/jutsu/verb/SusanooRinnegan()
				usr << "<B><font color = blue>Você agora controla todos os elementos. Você não pode uni-los, mas possui todas as defesas elementais estando imune a maioria dos jutsus de elemento !"
				usr.verbs += new /mob/raiton/verb/Raitonheki()
				usr.verbs += new /mob/doton/verb/Doroudorno()
				usr.verbs += new /mob/doton/verb/DotonDoryuuheki()
				usr.verbs += new /mob/suiton/verb/SuitonDoryuudan()
				usr.verbs += new /mob/fuuton/verb/Fuutonheki()
				usr.verbs += new /mob/katon/verb/KatonHousenka()
				usr.verbs += new /mob/katon/verb/Katonheki()
				usr.verbs += new /mob/Pein/verb/Shinra()
				usr.verbs += new /mob/Pein/verb/Banshou()
				usr.verbs += new /mob/jutsu/verb/ShodBuff()
				usr.verbs += new /mob/jutsu/verb/MokKyuu()
				usr.verbs += new /mob/jutsu/verb/MokuSousou()
				usr.verbs += new /mob/jutsu/verb/Moksawa()
				usr.verbs += new /mob/Shodaime/verb/MokutonHijutsu()
				usr.verbs += new /obj/bunshins/Mokbunshin/verb/Mokbunshin()
				var/obj/EscudoMadara/EM = new()
				EM.loc=usr
				usr.Rinnegan=1
				usr.sd=1
				usr.dd=1
				usr.kd=1
				usr.fd=1
				usr.rd=1
			else
				usr<<"Você não batalhou contra Senjus ou Uchihas o suficiente para obter seus poderes... ou não obteve o seu poder necessário!"


mob/npc/supremo
	name = "{NPC}Mestre dos Jutsus Supremos"
	icon = 'caramisterioso.dmi'
	PK = 0
	imortal = 1
	health = 99999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
		//	set category = "Npc"
			if(usr.EhVip==1)
				switch(input("Você gostaria de aprender o jutsu supremo do seu clan?", text) in list("Sim!","Não, obrigado"))
					if("Sim!")
						return
			else
				usr<<"Você não deveria estar aqui....pode ser banido"



mob
	Deidaraj
		name = "Deidara"
		icon = 'deidaranpc.dmi'
		icon_state="1"
		Tekken = 1
		maxhealth=1000000
		health = 1000000
		Mchakra=300000
		chakra=300000
		SS3 = 80
		veloN=75000
		seals = 100
		sealtime = 5
		tai = 100000
		nin = 100000
		gen = 100000
		waterwalk = 1
		NPC=1
		New()
			overlays += /obj/h1/
			overlays += /obj/h2/
			overlays += /obj/h3/
			walk_rand(src,7)
			intelligenced()
		proc/intelligenced()
			walk_rand(src,7)
			while(src)
				for(var/mob/M in oview(10))
					if(get_dist(src,M)>=4)
						random = rand(1,3)
						if(random==1)
							walk_to(src,src,1,10)
						if(random==3||random==2)
							random = rand(1,4)
							if(random==1||random==3)
								SensatsuGatling()
							if(random==2)
								if(M)
									src.C3proc(M)
							if(random==4)
								if(M)
									SuikoudanGatling(M)
					if(get_dist(src,M)>=3)
						SensatsuGatling()
						if(M)
							src.C3proc(M)
						SensatsuGatling()
					if(get_dist(src,M)<=2)
						random = rand(1,2)
						if(random==1)
							walk_to(src,M)
							var/damage = round(src.tai*8.6) - M.Resistencia
							if(damage<=0)damage=0
							view() << "[src] atacou [M] inflingindo um dano de [damage]!"
							M.health -= damage
							F_damage(M, damage, "#ff0000")
							if(M.health <= 0)
								M.Death(src)
						if(random==2)
							SensatsuGatling()
							if(M)
								src.C3proc(M)
							SensatsuGatling()
				sleep(10)
			spawn(5)
				intelligenced()
		proc/SensatsuGatling()
			spawn(8)	src.C3proc()
			spawn(18)	src.C3proc()
			spawn(28)	src.C3proc()
			spawn(38)	src.C3proc()
		proc/SuikoudanGatling(var/obj/M)
			spawn(8)	if(M in view(6)) src.C3proc(M)
			spawn(18)	if(M in view(6)) src.C3proc(M)
			spawn(30)	if(M in view(6)) src.C3proc(M)
			spawn(35)	if(M in view(6)) src.C3proc(M)

mob
	proc
		C3proc()
			view()<<"[src]<font color=green> Diz: C3!"
			var/obj/c31/K = new /obj/c31/
			K.loc = locate(src.x,src.y-1,src.z)
			Execution(/obj/chib/Darkness,10)
			sleep(70)
			del(K)

obj
	h1
		icon_state = "2"
		pixel_y = -32
		density=1
obj
	h2
		icon_state = "3"
		pixel_x = 32
obj
	h3
		icon_state = "4"
		pixel_x = -32

mob
	proc
		Aranhaexpproc() // Verb used for cast the beam
			if(src.cast||src.Kaiten) // If the mob's cast var is one...
				return
			if(src.caught)
				src<<"Você foi capturado!"
				return
			if(src.chakra <= 5000)
				src<<"Você não tem chakra suficiente!!"
				return
			if(src.Frozen)
				src<<"Você está paralizado!"
				return
			if(src.captured)
				src<<"Você foi capturado!"
				return
			if(src.PK==0)
				src<<"Zona NON-PK!!!"
				return
			if(src.froze)
				src<<"Você está paralizado!"
				return
			if(src.resting)
				src<<"Não enquanto descansa!"
				return
			if(src.meditating)
				src<<"Não enquanto medita!"
				return
			else // If the cast var isn't 1...
				sleep(8)
				var/obj/ap/K = new /obj/ap
				var/obj/ap/L = new /obj/ap
				var/obj/ap/M = new /obj/ap
				var/obj/ap/N = new /obj/ap
				K.loc = locate(src.x+3,src.y,src.z)
				K.nin = src.nin
				K.Gowner = src
				K.burn()
				L.loc = locate(src.x,src.y+3,src.z)
				L.nin = src.nin
				L.Gowner = src
				L.burn()
				M.loc = locate(src.x-3,src.y,src.z)
				M.nin = src.nin
				M.Gowner = src
				M.burn()
				N.loc = locate(src.x,src.y-3,src.z)
				N.nin = src.nin
				N.Gowner = src
				N.burn()
				sleep(600)
				del(K)
				del(L)
				del(M)
				del(N)

mob/npc/Desbug
	name = "{NPC}Desbugador"
	icon = 'caramisterioso.dmi'
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Desbug"
			switch(input("Olá amigo, como posso ajudar",text) in list ("Perdi jutsus elementais","Perdi itens","Minhas abas sumiram","Minha aba vip sumiu","Nada"))
				if("Minhas abas sumiram")
					if(usr.Uchiha==1)
						usr<<"Suas skills foram devolvidas"
						usr.verbs += new /mob/uchiha/verb/Sharingan()
						usr.verbs += new /mob/jutsu/verb/HengeNoJutsu()
						usr.verbs += new /mob/jutsu/verb/Kawariminojutsu()
						usr.verbs += new /mob/jutsu/verb/BunshinNoJutsu()
						usr.verbs += new /mob/jutsu/verb/AtirarKunai()
						usr.verbs += new /mob/jutsu/verb/AtirarShuriken()
					else
						usr<<"Suas skills foram devolvidas"
						usr.verbs += new /mob/jutsu/verb/HengeNoJutsu()
						usr.verbs += new /mob/jutsu/verb/Kawariminojutsu()
						usr.verbs += new /mob/jutsu/verb/BunshinNoJutsu()
						usr.verbs += new /mob/jutsu/verb/AtirarKunai()
						usr.verbs += new /mob/jutsu/verb/AtirarShuriken()
				if("Nada")
					usr<<"Ok"
					return
				if("Perdi itens")
				if("Minha aba vip sumiu")
					if(usr.EhVip==1)
						usr.verbs += new /mob/Vip/verb/Teleporte()
//						usr.verbs += new /mob/Vip/verb/VMeditate()
						usr.verbs += new /mob/Vip/verb/VConcentrar()
						usr.verbs += new /mob/Vip/verb/VLiberarChakra()
//						usr.verbs += new /mob/Vip/verb/TrocarP()
						usr.verbs += new /mob/Star/verb/StarBarrier()
						usr.verbs += new /mob/jutsu/verb/Kai()
						usr.verbs += new /mob/star/verb/Aura()


//==================== Animais ======================================

mob
	pet
		name = "{NPC}Cachorro"
		icon = 'dog.dmi'
		Move_Delay=1
		tai=100
		maxhealth = 1000
		density=1
		health = 1000
		isdog=1
		kyuubinpc=1
		Wfight=0
		Move()
			..()
			//var/mob/O = src.owner
			if(src.Frozen)
				return
			//src.random = rand(1,50)
			//if(src.random==1)
				//src.tai += 1
				//src.maxhealth += rand(2,10)
				//src.health += rand(2,10)
				//O.dogmaxhealth=src.maxhealth
				//O.dogtai=src.tai
		Bump(mob/M)
			..()
			var/mob/P = src
			if(istype(M,/mob/))
				if(M == owner||M.name == src.name||Wfight==0||fighting)
					return
				if(M.PK==0)
					return
				if(src.PK==0)
					return
				else
					var/Damage = P.tai - M.Resistencia
					if(Damage<=0)Damage=0
					M.health -= Damage
					F_damage(M, Damage, "#ff0000")
					M.Death(src)
					view() << "[src] ataca [M] tirando [Damage] de dano!"
					src.fighting = 1
					sleep(5)
					src.fighting = 0

mob
	Pet
		name = ""
		icon = 'dog.dmi'
		Move_Delay=1
		tai=100
		maxhealth = 1000
		density=1
		health = 1000
		isdog=1
		kyuubinpc=1
		Wfight=0
		Move()
			..()
			//var/mob/O = src.owner
			if(src.Frozen)
				return
			//src.random = rand(1,50)
			//if(src.random==1)
				//src.tai += 1
				//src.maxhealth += rand(2,10)
				//src.health += rand(2,10)
				//O.dogmaxhealth=src.maxhealth
				//O.dogtai=src.tai
		Bump(mob/M)
			..()
			var/mob/P = src
			if(istype(M,/mob/))
				if(M == owner||M.name == src.name||Wfight==0||fighting)
					return
				if(M.PK==0)
					return
				if(src.PK==0)
					return
				else
					var/Damage = P.tai - M.Resistencia
					if(Damage<=0)Damage=0
					M.health -= Damage
					F_damage(M, Damage, "#ff0000")
					M.Death(src)
					view() << "[src] ataca [M] tirando [Damage] de dano!"
					src.fighting = 1
					sleep(5)
					src.fighting = 0
	Cat
		icon = 'Cat2.dmi'
		Move_Delay=1
		tai=100
		maxhealth = 1000
		density=1
		health = 1000
		isdog=1
		kyuubinpc=1
		NPC=1
		guard = 1
		Tekken = 1
		Wfight=0
		Move()
			..()
			//var/mob/O = src.owner
			if(src.Frozen)
				return
			//src.random = rand(1,50)
			//if(src.random==1)
				//src.tai += 1
				//src.maxhealth += rand(2,10)
				//src.health += rand(2,10)
				//O.dogmaxhealth=src.maxhealth
				//O.dogtai=src.tai
		Bump(mob/M)
			..()
			var/mob/P = src
			if(istype(M,/mob/))
				if(M == owner||M.name == src.name||Wfight==0||fighting)
					return
				if(M.PK==0)
					return
				if(src.PK==0)
					return
				else
					var/Damage = P.tai - M.Resistencia
					if(Damage<=0)Damage=0
					M.health -= 0
					M.Death(src)
					view() << "[src] ataca [M] tirando [Damage] de dano!"
					src.fighting = 1
					sleep(5)
					src.fighting = 0
mob
	rato
		name = "{NPC}Rato"
		icon = 'plaguerat.dmi'
		icon_state = ""
		Move_Delay=0
		tai=100
		maxhealth = 10
		density=1
		health = 10
		isdog=1
		kyuubinpc=1
		Wfight=0
		Move()
			..()
			//var/mob/O = src.owner
			if(src.Frozen)
				return
			//src.random = rand(1,50)
			//if(src.random==1)
				//src.tai += 1
				//src.maxhealth += rand(2,10)
				//src.health += rand(2,10)
				//O.dogmaxhealth=src.maxhealth
				//O.dogtai=src.tai
		Bump(mob/M)
			..()
			var/mob/P = src
			if(istype(M,/mob/))
				if(M == owner||M.name == src.name||Wfight==0||fighting)
					return
				if(M.PK==0)
					return
				if(src.PK==0)
					return
				else
					var/Damage = P.tai - M.Resistencia
					if(Damage<=0)Damage=0
					M.health -= Damage
					F_damage(M, Damage, "#ff0000")
					M.Death(src)
					view() << "[src] ataca [M] tirando [Damage] de dano!"
					src.fighting = 1
					sleep(5)
					src.fighting = 0

				return

mob/var
	owner
	Wfight = 0
	named = 0
	fighting = 0
	sit = 0
	isdog=0
	dogtai=0

obj/Pet
	icon = 'Dog.dmi'
	density=1
	var
		owned = 1
		named = 0
		fighting = 0
		sit = 0
		dogtai=0
		maxhealth = 1000
		health = 1000
		isdog=1
		kyuubinpc=1
		Wfight=0
	proc
		Tame(var/mob/M)
			loc = M
			owner = M
			tai = M.tai
			maxhealth = M.maxhealth
			health = maxhealth
			M.hasdog=1
			M.dog = src
			named = 1
			name = input("Por favor, dê um nome para seu cachorro.") as text
			M.dogname = name
			M.dogtai = tai
			M.dogmaxhealth = maxhealth
			M.verbs += typesof(/mob/dogstuff/verb)
			//M.SalvarAgora()

		Pegar(var/mob/M)
			loc = M
			owner = M
			owned = 1
			tai = M.tai
			maxhealth = M.maxhealth
			named = 1
			name = M.dogname
			//M.SalvarAgora()

		Dropar(var/mob/M)
			var/mob/pet/P = new /mob/pet/
			P.loc=locate(M.x,M.y-1,M.z)
			P.owner = M
			P.owned = 1
			P.tai = src.tai
			P.maxhealth = src.maxhealth
			P.named = 1
			P.name = name

mob/dogstuff
	verb
		Pickup()
			set category = "{NPC}Cachorro"
			for(var/mob/pet/P in oview(1,P))
				if(P.owner == usr)
					var/obj/Pet/Cao = new /obj/Pet/
					Cao.Pegar(usr)
					del(P)
				else
					usr<<"Esse cachorro não pertence à você."

		Drop()
			set category = "Cachorro"
			for(var/obj/Pet/P in src.contents)
				if(P.health >= 1)
					P.Dropar(usr)
					del(P)
				else
					usr<<"Seu cachorro está machucado e não pode ser dropado..."
					return
		Aggressive()
			set category = "Cachorro"
			for(var/mob/pet/P in oview())
				if(P.owner == usr&&P.Wfight == 0)
					P.Wfight = 1
					usr<<"Seu cachorro agora irá atacar tudo em que relar."
					return
				else if(P.owner == usr&&P.Wfight == 1)
					usr<<"Seu cachorro não atacará mais tudo.."
					P.Wfight = 0
					return
				else
					usr<<"Esse não é seu cachorro!"
					return
		Sit(var/mob/pet/P in oview(1))
			set category = "Cachorro"
			if(P.owner==usr&&P.sit == 0)
				P.Frozen=1
				walk(src,0)
			else if(P.owner==usr&&P.sit == 1)
				P.Frozen=0
				walk(src,0)
			else
				usr<<"Esse não é seu cachorro!"
				return
		Come()
			set category = "Cachorro"
			for(var/mob/pet/P in view())
				if(P.owner==usr)
					P.Frozen=0
					walk_towards(P,src)
		FollowSomeone(mob/M in view())
			set category = "Cachorro"
			for(var/mob/pet/P in oview())
				if(P.owner == usr&&P.Frozen == 0)
					walk_towards(P,M)

//==== NPCS SUBCLANS ===========================================================================

mob/npc/Hidan
	name="{NPC}Hidan"
	icon='Hidan.dmi'
	icon_state="hidan"
	Village = "Akatsuki"
	PK=0
	imortal = 1
	health=99999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Subclan"
			alert("Lembre-se! Certifique-se que esse subclan não pertence ao Líder de sua organização pois nesse caso você não tem direito a pegá-lo e poderá perder seu cargo!")
			if(usr.Village<>"Akatsuki"||usr.subclan)return
			switch (input("Quer ser do subclan Hidan. Uma vez que escolher não poderá mudar???","Hidan") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.Village=="Akatsuki"&&!usr.subclan)
						if(WHidan:dono == "Ninguem")
							usr<<"<B><font color = blue>Mto bem vc aprendeu os jutsus"
							WHidan:dono=usr.key
							SubAkatSave()
							usr.subclan=1
							usr.verbs += new /mob/hidan/verb/BloodSeal()
							usr.verbs += new /mob/hidan/verb/Limpar()
							usr.verbs += new /mob/hidan/verb/TirarSangue()
							usr.contents += new/obj/Akt2
							var/obj/HidanSword/K = new()
							K.loc = usr
						else
							usr<<"Alguém já escolheu este subclã!"
					else
						usr<<"Você não é da Akatsuki ou já possui um subclan"

mob/npc/Deidara
	name="{NPC}Deidara"
	icon='npcakat.dmi'
	icon_state="deidara"
	Village = "Akatsuki"
	PK=0
	imortal = 1
	health=99999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Subclan"
			alert("Lembre-se! Certifique-se que esse subclan não pertence ao Líder de sua organização pois nesse caso você não tem direito a pegá-lo e poderá perder seu cargo!")
			switch (input("Quer ser do subclan Deidara. Uma vez que escolher não poderá mudar???","Deidara") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.Village=="Akatsuki"&&!usr.subclan)
						if(WDeidara:dono == "Ninguem")
							usr<<"<B><font color = blue>Mto bem vc aprendeu os jutsus"
							WDeidara:dono=usr.key
							SubAkatSave()
							usr.subclan=1
							usr.deidarasub=1
							usr.verbs += new /mob/deidara/verb/Criararg()
							usr.verbs += new /mob/deidara/verb/Plantarexplosivo()
							usr.verbs += new /mob/deidara/verb/Explodearg()
							usr.verbs += new /mob/deidara/verb/Argarmor()
							usr.verbs += new /mob/deidara/verb/Argarmor2()
							usr.verbs += new /mob/deidara/verb/Passaro()
							usr.verbs += new /mob/Deidara/verb/C3()
							usr.verbs += new /mob/Deidara/verb/C4()
							usr.verbs += new /mob/Deidara/verb/C5()
							usr.verbs += new /mob/Deidara/verb/CO()
							usr.verbs += new /mob/deidara/verb/DeidaraBunshin()
						else
							usr<<"Alguém já escolheu este subclã!"
					else
						usr<<"Você não é da Akatsuki ou já possui um subclan"


mob/npc/Zetsu
	name="{NPC}Zetsu"
	icon='npcakat.dmi'
	icon_state="zetsu"
	Village = "Akatsuki"
	PK=0
	imortal = 1
	health=99999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Subclan"
			alert("Lembre-se! Certifique-se que esse subclan não pertence ao Líder de sua organização pois nesse caso você não tem direito a pegá-lo e poderá perder seu cargo!")
			switch (input("Quer ser do subclan Zetsu. Uma vez que escolher não poderá mudar???","Zetsu") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.Village=="Akatsuki"&&!usr.subclan)
						if(WZetsu:dono == "Ninguem")
							usr<<"<B><font color = blue>Mto bem vc aprendeu os jutsus"
							WZetsu:dono=usr.key
							SubAkatSave()
							usr.subclan=1
							usr.verbs += new /mob/zetsu2/verb/Kagerou()
							usr.verbs += new /mob/Zetsu/verb/FurusakiNoJutsu()
							usr.verbs += new /mob/zetsu2/verb/RoushinNoJutsu()
							usr.verbs += new /mob/zetsu2/verb/CaradaKuuinNoJutsu()
							usr.verbs += new /mob/zetsu2/verb/ZetsuArmor()
							usr.verbs += new /mob/zetsu2/verb/KagerouSair()
							usr.verbs += new /mob/zetsu2/verb/KagerouVila()
						else
							usr<<"Alguém já escolheu este subclã!"
					else
						usr<<"Você não é da Akatsuki ou já possui um subclan"


mob/npc/Pain
	name="{NPC}Pain"
	icon='npcakat.dmi'
	icon_state="pain"
	Village = "Akatsuki"
	PK=0
	imortal = 1
	health=99999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Subclan"
			alert("Lembre-se! Certifique-se que esse subclan não pertence ao Líder de sua organização pois nesse caso você não tem direito a pegá-lo e poderá perder seu cargo!")
			switch (input("Quer ser do subclan Pain. Uma vez que escolher não poderá mudar???","Pain") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.Village=="Akatsuki"&&usr.Rinnegan)
						if(WPain:dono == "Ninguem")
							usr<<"<B><font color = blue>Mto bem vc aprendeu os jutsus"
							WPain:dono=usr.key
							SubAkatSave()
							usr.subclan=1
							usr.subpain=1
						else
							usr<<"Alguém já escolheu este subclã!"
					else
						usr<<"Você precisa ser da Akat, não ter um subclan e ter o rinnegan"


mob/npc/Sasori
	name="{NPC}Sasori"
	icon='npcakat.dmi'
	icon_state="sasori"
	Village = "Akatsuki"
	PK=0
	imortal = 1
	health=99999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Subclan"
			alert("Lembre-se! Certifique-se que esse subclan não pertence ao Líder de sua organização pois nesse caso você não tem direito a pegá-lo e poderá perder seu cargo!")
			switch (input("Quer ser do subclan Sasori. Uma vez que escolher não poderá mudar???","Sasori") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.Village=="Akatsuki"&&!usr.subclan)
						if(WSasori:dono == "Ninguem")
							WSasori:dono=usr.key
							SubAkatSave()
							usr<<"<B><font color = blue>Mto bem vc aprendeu os jutsus"
							usr.subclan=1
							usr.sasorisub=1
							usr.verbs += new /mob/jutsu/verb/SasoArmor()
							usr.verbs += new /mob/Sasori/verb/SHM()
							usr.verbs += new /mob/jutsu/verb/Criarven()
							usr.verbs += new /mob/jutsu/verb/Envenenar()
							usr.verbs += new /mob/Sasori/verb/MarioneteShield()
						else
							usr<<"Alguém já escolheu este subclã!"
					else
						usr<<"Você não é da Akatsuki ou já possui um subclan"


mob/npc/Konan
	name="{NPC}Konan"
	icon='npcakat.dmi'
	icon_state="konan"
	Village = "Akatsuki"
	PK=0
	imortal = 1
	health=99999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Subclan"
			alert("Lembre-se! Certifique-se que esse subclan não pertence ao Líder de sua organização pois nesse caso você não tem direito a pegá-lo e poderá perder seu cargo!")
			switch (input("Quer ser do subclan Konan. Uma vez que escolher não poderá mudar???","Konan") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.Village=="Akatsuki"&&!usr.subclan)
						if(WKonan:dono == "Ninguem")
							WKonan:dono=usr.key
							SubAkatSave()
							usr<<"<B><font color = blue>Mto bem vc aprendeu os jutsus"
							usr.subclan=1
							usr.verbs += new /mob/Konan/verb/KamiNoMakushi()
							usr.verbs += new /mob/Konan/verb/KamiNoTsubasa()
							usr.verbs += new /mob/Konan/verb/ShikigamiNoMaiNori()
							usr.verbs += new /mob/Konan/verb/ShikigamiNoMai()
							usr.verbs += new /mob/Konan/verb/KagerouSair()
							usr.verbs += new /mob/Konan/verb/KamiNoChissokushi()
							usr.verbs += new /mob/Konan/verb/KamiBunshin()
							usr.verbs += new /mob/Konan/verb/KamiMoku()
						else
							usr<<"Alguém já escolheu este subclã!"
					else
						usr<<"Você não é da Akatsuki ou já possui um subclan"


mob/npc/Tobi
	name="{NPC}Tobi"
	icon='npcakat.dmi'
	icon_state="tobi"
	Village = "Akatsuki"
	PK=0
	imortal = 1
	health=99999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
		//	set category = "Subclan"
			alert("Lembre-se! Certifique-se que esse subclan não pertence ao Líder de sua organização pois nesse caso você não tem direito a pegá-lo e poderá perder seu cargo!")
			switch (input("Quer ser do subclan Uchiha-Akat. Uma vez que escolher não poderá mudar???","Uchiha-Akat") in list ("Sim","Esqueça"))
				if("Sim")
					if(!usr.subclan&&usr.Village=="Akatsuki"&&usr.Uchiha)
						if(WTobi:dono == "Ninguem")
							usr<<"<B><font color = blue>Mto bem vc aprendeu os jutsus"
							WTobi:dono=usr.key
							SubAkatSave()
							usr.subclan=1
							usr.madara=1
							usr.verbs += new /mob/jutsu/verb/Madaradimension()
							usr.verbs += new /mob/jutsu/verb/Madarateleporte()
							usr.verbs += new /mob/jutsu/verb/Madaratele()
							usr.verbs += new /mob/jutsu/verb/KamuiG()
							usr.verbs += new /mob/jutsu/verb/AntiMS()
							usr.verbs += new /mob/jutsu/verb/Tempo()
							usr.verbs += new/mob/jutsu/verb/Fantasma()
							usr.contents += new/obj/Akt3
						else
							usr<<"Alguém já escolheu este subclã!"
					else
						usr<<"Você precisa ser da Akat, não ter subclan e ser uchiha"

mob/npc/Kakuzu
	name="{NPC}Kakuzu"
	icon='npcakat.dmi'
	icon_state="kakuzu"
	Village = "Akatsuki"
	PK=0
	imortal = 1
	health=9999999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Subclan"
			alert("Lembre-se! Certifique-se que esse subclan não pertence ao Líder de sua organização pois nesse caso você não tem direito a pegá-lo e poderá perder seu cargo!")
			switch (input("Quer ser do subclan Kakuzu. Uma vez que escolher não poderá mudar???","Kakuzu") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.Village=="Akatsuki"&&!usr.subclan)
						if(WKakuzu:dono == "Ninguem")
							usr<<"<B><font color = blue>Mto bem vc aprendeu os jutsus"
							WKakuzu:dono=usr.key
							SubAkatSave()
							usr.subclan=1
							usr.kakuzusub=1
							usr.coracao = 5
							usr.verbs += new /mob/jutsu/verb/RouboC()
							usr.verbs += new /mob/jutsu/verb/Linhas()
							usr.verbs += new /mob/jutsu/verb/Ferro()
							usr.verbs += new /mob/jutsu/verb/JionguMojiRetsu()
							usr.verbs += new /mob/jutsu/verb/JionguMoji()
							usr.verbs += new /obj/bunshins/Masks/verb/Masks()
							usr.contents += new/obj/BandanaKakuzu
						else
							usr<<"Alguém já escolheu este subclã!"
					else
						usr<<"Você não é da Akatsuki ou já possui um subclan"


mob/npc/KisameAkat
	name="{NPC}Kisame Akatsuki"
	icon='npcakat.dmi'
	icon_state="kisame"
	Village = "Akatsuki"
	PK=0
	imortal = 1
	health=9999999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Subclan"
			alert("Lembre-se! Certifique-se que esse subclan não pertence ao Líder de sua organização pois nesse caso você não tem direito a pegá-lo e poderá perder seu cargo!")
			switch (input("Quer ser do subclan Kakuzu. Uma vez que escolher não poderá mudar???","Kakuzu") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.Village=="Akatsuki"&&!usr.subclan)
						if(WKisameAkat:dono == "Ninguem")
							usr<<"<B><font color = blue>Mto bem vc aprendeu os jutsus"
							WKisameAkat:dono=usr.key
							SubAkatSave()
							usr.subclan=1
							usr.verbs += new /mob/kisame/verb/kisame_agua()
							usr.verbs += new /mob/suiton_kisame/verb/SuitonArmor_kisame()
							usr.verbs += new /obj/bunshins/Mbz/verb/Mbz()
							usr.verbs += new /mob/jutsu/verb/PrisaoGrande()
							usr.verbs += new /mob/jutsu/verb/DrenoS()
							var/obj/Kisamesword/K = new()
							K.loc = usr
						else
							usr<<"Alguém já escolheu este subclã!"
					else
						usr<<"Você precisa ser da Akatsuki, não possuir subclan!"

mob/var/kisamesub=0
mob/npc/KisameSSS
	name="{NPC}Kisame SSS"
	icon='npcakat.dmi'
	icon_state="kisame"
	PK=0
	imortal = 1
	health=9999999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Subclan"
			alert("Lembre-se! Certifique-se que esse subclan não pertence ao Líder de sua organização pois nesse caso você não tem direito a pegá-lo e poderá perder seu cargo!")
			switch (input("Quer ser do subclan Kisame. Uma vez que escolher não poderá mudar???","Kisame") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.Village=="7Swordsmen"&&!usr.subclan)
						if(WKisameSSS:dono == "Ninguem")
							usr<<"<B><font color = blue>Mto bem vc aprendeu os jutsus"
							WKisameSSS:dono=usr.key
							SubAkatSave()
							usr.subclan=1
							usr.kisamesub=1
							usr.verbs += new /mob/kisame/verb/kisame_agua()
							usr.verbs += new /obj/bunshins/Mbz/verb/Mbz()
							usr.verbs += new /mob/jutsu/verb/DrenoS()
							usr.verbs += new /mob/sss/verb/mortesilenciosa()
							var/obj/SSSs3/SAS = new()
							SAS.loc = usr
						else
							usr<<"Alguém já escolheu este subclã!"
					else
						usr<<"Você não é da 7Swordsmens ou já possui um subclan"



mob/npc/ZabuzaSSS
	name="{NPC}Zabuza SSS"
	icon='npcakat.dmi'
	icon_state="zabuza"
	PK=0
	imortal = 1
	health=9999999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Subclan"
			alert("Lembre-se! Certifique-se que esse subclan não pertence ao Líder de sua organização pois nesse caso você não tem direito a pegá-lo e poderá perder seu cargo!")
			switch (input("Quer ser do subclan Zabuza. Uma vez que escolher não poderá mudar???","Zabuza") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.Village=="7Swordsmen"&&!usr.subclan)
						if(WZabuzaSSS:dono == "Ninguem")
							usr<<"<B><font color = blue>Mto bem vc aprendeu os jutsus"
							WZabuzaSSS:dono=usr.key
							SubAkatSave()
							usr.subclan=1
							usr.verbs += new /mob/jutsu/verb/Prisao()
							usr.verbs += new /mob/jutsu/verb/zabuza_nevoa()
							usr.verbs += new /mob/suiton/verb/SuitonKyuu()
							usr.verbs += new /mob/suiton/verb/SuitonSousou()
							usr.verbs += new /obj/bunshins/Mbz/verb/Mbz()
							usr.verbs += new /mob/sss/verb/mortesilenciosa()
							var/obj/SSSs2/KHZ = new()
							KHZ.loc = usr
						else
							usr<<"Alguém já escolheu este subclã!"
					else
						usr<<"Você não é da 7Swordsmens ou já possui um subclan"


mob/npc/RaigaSSS
	name="{NPC}Raiga SSS"
	icon='npcakat.dmi'
	icon_state="raiga"
	PK=0
	imortal = 1
	health=9999999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Subclan"
			alert("Lembre-se! Certifique-se que esse subclan não pertence ao Líder de sua organização pois nesse caso você não tem direito a pegá-lo e poderá perder seu cargo!")
			switch (input("Quer ser do subclan Raiga. Uma vez que escolher não poderá mudar???","Raiga") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.Village=="7Swordsmen"&&!usr.subclan)
						if(WRaigaSSS:dono == "Ninguem")
							usr<<"<B><font color = blue>Mto bem vc aprendeu os jutsus"
							WRaigaSSS:dono=usr.key
							SubAkatSave()
							usr.subclan=1
							usr.verbs += new /mob/jutsu/verb/Corpoe()
							usr.verbs += new /mob/jutsu/verb/Raiomorte()
							usr.verbs += new /mob/jutsu/verb/Raio()
							usr.verbs += new /mob/jutsu/verb/Prisaoe()
							usr.verbs += new /mob/sss/verb/mortesilenciosa()
						else
							usr<<"Alguém já escolheu este subclã!"
					else
						usr<<"Você não é da 7Swordsmens ou já possui um subclan"

mob/npc/JinpachiSSS
	name="{NPC}Jinpachi SSS"
	icon='UltimetiumNPCS.dmi'
	icon_state="Retribution"
	PK=0
	imortal = 1
	health=9999999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Subclan"
			alert("Lembre-se! Certifique-se que esse subclan não pertence ao Líder de sua organização pois nesse caso você não tem direito a pegá-lo e poderá perder seu cargo!")
			switch (input("Quer ser do subclan Jinpachi. Uma vez que escolher não poderá mudar???","Jinpachi") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.Village=="7Swordsmen"&&!usr.subclan)
						if(WJinpachi:dono == "Ninguem")
							usr<<"<B><font color = blue>Mto bem vc aprendeu os jutsus"
							WJinpachi:dono=usr.key
							SubAkatSave()
							usr.subclan=1
							usr.verbs += new /mob/sssjinpachi/verb/FREIO()
							usr.verbs += new /mob/sss/verb/mortesilenciosa()
							var/obj/EspadaShibuki/ES = new()
							ES.loc = usr
						else
							usr<<"Alguém já escolheu este subclã!"
					else
						usr<<"Você não é da 7Swordsmens ou já possui um subclan"

mob/npc/KushimaruSSS
	name="{NPC}Kushimaru SSS"
	icon='UltimetiumNPCS.dmi'
	icon_state="Cabeleireiro"
	PK=0
	imortal = 1
	health=9999999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Subclan"
			alert("Lembre-se! Certifique-se que esse subclan não pertence ao Líder de sua organização pois nesse caso você não tem direito a pegá-lo e poderá perder seu cargo!")
			switch (input("Quer ser do subclan Kushimaru. Uma vez que escolher não poderá mudar???","Kushimaru") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.Village=="7Swordsmen"&&!usr.subclan)
						if(WKushimaru:dono == "Ninguem")
							usr<<"<B><font color = blue>Mto bem vc aprendeu os jutsus"
							WKushimaru:dono=usr.key
							SubAkatSave()
							usr.subclan=1
							usr.verbs += new /mob/sss/verb/mortesilenciosa()
							usr.verbs += new /mob/ssskushimaru/verb/jigumunui()
						else
							usr<<"Alguém já escolheu este subclã!"
					else
						usr<<"Você não é da 7Swordsmens ou já possui um subclan"


mob/npc/RingoSSS
	name="{NPC}Ringo SSS"
	icon='UltimetiumNPCS.dmi'
	icon_state="Hanzo"
	PK=0
	imortal = 1
	health=9999999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Subclan"
			alert("Lembre-se! Certifique-se que esse subclan não pertence ao Líder de sua organização pois nesse caso você não tem direito a pegá-lo e poderá perder seu cargo!")
			switch (input("Quer ser do subclan Ringo. Uma vez que escolher não poderá mudar???","Ringo") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.Village=="7Swordsmen"&&!usr.subclan)
						if(WRingo:dono == "Ninguem")
							usr<<"<B><font color = blue>Mto bem vc aprendeu os jutsus"
							WRingo:dono=usr.key
							SubAkatSave()
							usr.subclan=1
							usr.verbs += new /mob/sss/verb/mortesilenciosa()
							usr.verbs += new /mob/sssRINGO/verb/rakuray()
							usr.verbs += new /mob/sssRINGO/verb/RRAIGA()
							var/obj/EspadaKiba/EK = new()
							EK.loc = usr
						else
							usr<<"Alguém já escolheu este subclã!"
					else
						usr<<"Você não é da 7Swordsmens ou já possui um subclan"

mob/npc/JininSSS
	name="{NPC}Jinin SSS"
	icon='UltimetiumNPCS.dmi'
	icon_state="Legion Yang"
	PK=0
	imortal = 1
	health=9999999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Subclan"
			alert("Lembre-se! Certifique-se que esse subclan não pertence ao Líder de sua organização pois nesse caso você não tem direito a pegá-lo e poderá perder seu cargo!")
			switch (input("Quer ser do subclan Jinin. Uma vez que escolher não poderá mudar???","Jinin") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.Village=="7Swordsmen"&&!usr.subclan)
						if(WJinin:dono == "Ninguem")
							usr<<"<B><font color = blue>Mto bem vc aprendeu os jutsus"
							WJinin:dono=usr.key
							SubAkatSave()
							usr.subclan=1
							usr.verbs += new /mob/sss/verb/mortesilenciosa()
							usr.verbs += new /mob/sssjinin/verb/MarteloK()
							var/obj/EspadaKabutowari/EKW = new()
							EKW.loc = usr
						else
							usr<<"Alguém já escolheu este subclã!"
					else
						usr<<"Você não é da 7Swordsmens ou já possui um subclan"

mob/npc/JiroubouSO
	name="{NPC}Jiroubou SO"
	icon='npcakat.dmi'
	icon_state="jiroubou"
	PK=0
	imortal = 1
	health=9999999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Subclan"
			alert("Lembre-se! Certifique-se que esse subclan não pertence ao Líder de sua organização pois nesse caso você não tem direito a pegá-lo e poderá perder seu cargo!")
			switch (input("Quer ser do subclan Jiroubou. Uma vez que escolher não poderá mudar???","Jiroubou") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.Village=="Sound Organization"&&!usr.subclan)
						if(WJiroubouSO:dono == "Ninguem")
							usr<<"<B><font color = blue>Mto bem vc aprendeu os jutsus"
							WJiroubouSO:dono=usr.key
							SubAkatSave()
							usr.subclan=1
							usr.verbs += new /mob/jutsu/verb/Jirod()
							usr.verbs += new /mob/jutsu/verb/JiroS()
							usr.verbs += new /mob/Pein/verb/Kuuin()
							usr.verbs += new /mob/jutsu/verb/JiroArmor()
							usr.verbs += new /mob/doton/verb/DorokuGaeshi()
							usr.verbs += new /mob/Pein/verb/Kuuin()
						else
							usr<<"Alguém já escolheu este subclã!"
					else
						usr<<"Você não é da SO ou já possui um subclan"



mob/npc/KidoumaruSO
	name="{NPC}Kidomaru SO"
	icon='npcakat.dmi'
	icon_state="kidoumaru"
	PK=0
	imortal = 1
	health=9999999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Subclan"
			alert("Lembre-se! Certifique-se que esse subclan não pertence ao Líder de sua organização pois nesse caso você não tem direito a pegá-lo e poderá perder seu cargo!")
			switch (input("Quer ser do subclan Kidomaru. Uma vez que escolher não poderá mudar???","Kidomaru") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.Village=="Sound Organization"&&!usr.subclan)
						if(WKidoumaruSO:dono == "Ninguem")
							usr<<"<B><font color = blue>Mto bem vc aprendeu os jutsus"
							WKidoumaruSO:dono=usr.key
							SubAkatSave()
							usr.subclan=1
							usr.verbs += new /mob/Spiderclan/verb/CreateSpiderBow()
							usr.verbs += new /mob/Spiderclan/verb/CreateSpiderArrows()
							usr.verbs += new /mob/Spiderclan/verb/WebSabakuSousou()
							usr.verbs += new /mob/Spiderclan/verb/WebSabakuKyuu()
							usr.verbs += new /mob/Spiderclan/verb/HomingArrows()
							usr.verbs += new /mob/jutsu/verb/Spiderarmor()
							usr.faceicon = 'kidoumaru.bmp'
						else
							usr<<"Alguém já escolheu este subclã!"
					else
						usr<<"Você não é da SO ou já possui um subclan"


mob/npc/SakonSO
	name="{NPC}Sakon SO"
	icon='npcakat.dmi'
	icon_state="sakon"
	PK=0
	imortal = 1
	health=9999999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Subclan"
			alert("Lembre-se! Certifique-se que esse subclan não pertence ao Líder de sua organização pois nesse caso você não tem direito a pegá-lo e poderá perder seu cargo!")
			switch (input("Quer ser do subclan Sakon. Uma vez que escolher não poderá mudar???","Sakon") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.Village=="Sound Organization"&&!usr.subclan)
						if(WSakonSO:dono == "Ninguem")
							usr<<"<B><font color = blue>Mto bem vc aprendeu os jutsus"
							WSakonSO:dono=usr.key
							SubAkatSave()
							usr.subclan=1
							usr.verbs += new /mob/parasite/verb/DescansarMetade()
							usr.verbs += new /mob/parasite/verb/Parasitar()
							usr.verbs += new /mob/parasite/verb/SelfHurt()
							usr.verbs += new /mob/parasite/verb/AtaqueDoIrmao()
							usr.verbs += new /mob/parasite/verb/Imobilizar()
							usr.faceicon = 'sakon.bmp'
						else
							usr<<"Alguém já escolheu este subclã!"
					else
						usr<<"Você não é da SO ou já possui um subclan"



mob/npc/DosuSO
	name="{NPC}Dosu SO"
	icon='npcakat.dmi'
	icon_state="dosu"
	PK=0
	imortal = 1
	health=9999999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Subclan"
			alert("Lembre-se! Certifique-se que esse subclan não pertence ao Líder de sua organização pois nesse caso você não tem direito a pegá-lo e poderá perder seu cargo!")
			switch (input("Quer ser do subclan Dosu. Uma vez que escolher não poderá mudar???","Dosu") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.Village=="Sound Organization"&&!usr.subclan)
						if(WDosuSO:dono == "Ninguem")
							usr<<"<B><font color = blue>Mto bem vc aprendeu os jutsus"
							WDosuSO:dono=usr.key
							SubAkatSave()
							usr.subclan=1
							usr.verbs += new /mob/Kinuta/verb/Rajada()
							usr.verbs += new /mob/Kinuta/verb/areasom()
							usr.verbs += new /mob/Kinuta/verb/somatoardor()
							usr.verbs += new /mob/Kinuta/verb/Impacto()
							usr.verbs += new /mob/Kinuta/verb/sentidos()
							var/obj/aparelho/S = new()
							S.loc=usr
							usr.faceicon = 'dosu.bmp'
						else
							usr<<"Alguém já escolheu este subclã!"
					else
						usr<<"Você não é da SO ou já possui um subclan"


mob/var/orochidono=0
mob/npc/OrochimaruSub
	name="{NPC}Orochimaru Subclan"
	icon='Orochhimaru.dmi'
	icon_state="1"
	PK=0
	imortal = 1
	health=9999999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Subclan"
			alert("Lembre-se! Caso vc for de uma organização certifique-se que esse subclan não pertence ao Líder de sua organização pois nesse caso você não tem direito a pegá-lo e poderá perder seu cargo! Se vc for Sannin ignore esse aviso")
			switch (input("Quer ser do subclan Orochimaru. Uma vez que escolher não poderá mudar???","Orochimaru") in list ("Sim","Esqueça","Libere o demônio dentro de mim"))
				if("Sim")
					if(usr.Village=="Sound Organization"&&!usr.subclan&&usr.soundleader)
						if(WOrochimaruSub:dono == "Ninguem")
							usr<<"<B><font color = blue>Mto bem vc aprendeu os jutsus"
							WOrochimaruSub:dono=usr.key
							SubAkatSave()
							usr.orochidono=1
							usr.subclan=1
							usr.verbs += new /mob/jutsu/verb/Rashoumon()
							usr.verbs += new /mob/Orochimaru/verb/Tajuusnake()
							usr.verbs += new /mob/Orochi/verb/ShikuminoJutsu()
							usr.verbs += new /mob/jutsu/verb/HengeM()
							usr.verbs += new /mob/jutsu/verb/Daja()
							usr.verbs += new /mob/jutsu/verb/Duplo()
							usr.verbs += new /obj/Bunshin/Edo/verb/Ress()
							usr.verbs += new /mob/jutsu/verb/Matar_Edo()
							usr.verbs += new /mob/Orochi/verb/SnakeSousou()
							usr.verbs += new /mob/Orochi/verb/SnakeKyuu()
							usr.verbs += new /mob/Orochi/verb/ShikuminoJutsu()
							usr.verbs += new /mob/Orochimaru/verb/SnakeShield()
							usr.verbs += new /mob/Orochimaru/verb/Onslaught()
							var/obj/KusaganiJ/K = new()
							K.loc = usr
							usr.faceicon = 'orochimaru.bmp'
						else
							usr<<"Alguém já escolheu este subclã!"
					else
						usr<<"Você não é da SO ou já possui um subclan"
				if("Libere o demônio dentro de mim")
					if(usr.bit==1)
						if(usr.CS2>=1)
							if(usr.CS2>=1&&usr.level>=400&&usr.vitorias>=400)
								usr<<"Uau, você se tornou bem mais forte em tão pouco tempo. Ok, relaxe, vou cuidar disso para você"
								usr.CS3=1
								sleep(30)
								usr<<"Pronto, deixei-o mais forte. Fantástico!"
								return
							else
								usr<<"Você ainda não matou o bastante."
								return
						else
							if(usr.bit==1&&usr.level>=300&&usr.vitorias>=300)
								usr<<"Uau, você se tornou bem mais forte em tão pouco tempo. Ok, relaxe, vou cuidar disso para você"
								usr.CS2=1
								sleep(30)
								usr<<"Pronto, parece que você conseguiu aguentar tamanho poder. Fantástico!"
								return
							else
								usr<<"Seu rank é muito baixo."
								return

					else
						usr<<"Você não tem o Selo Amaldiçoado."


mob/npc/OrochimaruSubSannin
	name="{NPC}Orochimaru Sannin Subclan"
	icon='Orochhimaru.dmi'
	icon_state="1"
	PK=0
	imortal = 1
	health=9999999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Subclan"
			switch (input("Quer ser do subclan Orochimaru. Uma vez que escolher não poderá mudar???","Orochumaru") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.rank=="Sannin"&&!usr.subclan)
						usr<<"<B><font color = blue>Muito bem você aprendeu os jutsus do Sub Orochimaru Sannin!"
						usr.subclan=1
						usr.verbs += new /mob/jutsu/verb/Rashoumon()
						usr.verbs += new /mob/Orochimaru/verb/Tajuusnake()
						usr.verbs += new /mob/Orochi/verb/ShikuminoJutsu()
						usr.verbs += new /mob/jutsu/verb/HengeM()
						usr.verbs += new /mob/Orochi/verb/SnakeSousou()
						usr.verbs += new /mob/Orochi/verb/SnakeKyuu()
						usr.verbs += new /mob/Orochi/verb/ShikuminoJutsu()
					else
						usr<<"Você Precisa Ser Sannin e não ter SubCla!"


mob/npc/SasukeTaka
	name="{NPC}Sasuke Taka"
	icon='npcakat.dmi'
	icon_state="sasuke"
	PK=0
	imortal = 1
	health=9999999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Subclan"
			alert("Lembre-se! Certifique-se que esse subclan não pertence ao Líder de sua organização pois nesse caso você não tem direito a pegá-lo e poderá perder seu cargo!")
			switch (input("Quer ser do subclan Sasuke. Uma vez que escolher não poderá mudar???","Sasuke") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.Village=="Taka"&&!usr.subclan)
						if(WSasukeTaka:dono == "Ninguem")
							usr<<"<B><font color = blue>Mto bem vc aprendeu os jutsus"
							WSasukeTaka:dono=usr.key
							SubAkatSave()
							usr.subclan=1
							usr.verbs += new /mob/SasukeTaka/verb/AyatsuitoNoJutsu()
							usr.verbs += new /mob/SasukeTaka/verb/HabatekuChidoriSenbon()
							usr.verbs += new /mob/SasukeTaka/verb/HayabusaOtoshi()
							usr.verbs += new /mob/SasukeTaka/verb/ChidoriKouken()
							usr.verbs += new /mob/SasukeTaka/verb/MagenKouken()
							usr.verbs += new /mob/SasukeTaka/verb/Kagebuyou()
							usr.verbs += new /mob/jutsu/verb/KatonGouryuuka()
							usr.verbs += new /mob/jutsu/verb/HengeM()
							usr.verbs += new /mob/jutsu/verb/Novokirin()
							var/obj/KusaganiChidori/U = new()
							U.loc=usr
						else
							usr<<"Alguém já escolheu este subclã!"
					else
						usr<<"Você não é da Taka ou já possui um subclan"


mob/npc/KarinTaka
	name="{NPC}Karin Taka"
	icon='npcakat.dmi'
	icon_state="karin"
	PK=0
	imortal = 1
	health=9999999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Subclan"
			alert("Lembre-se! Certifique-se que esse subclan não pertence ao Líder de sua organização pois nesse caso você não tem direito a pegá-lo e poderá perder seu cargo!")
			switch (input("Quer ser do subclan Karin. Uma vez que escolher não poderá mudar???","Karin") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.Village=="Taka"&&!usr.subclan)
						if(WKarinTaka:dono == "Ninguem")
							usr<<"<B><font color = blue>Mto bem vc aprendeu os jutsus"
							WKarinTaka:dono=usr.key
							SubAkatSave()
							usr.subclan=1
							usr.verbs += new /mob/jutsu/verb/SuperPunho()
							usr.verbs += new /mob/Karin/verb/Absorver()
							usr.verbs += new /mob/Karin/verb/NS()
							usr.verbs += new /mob/Karin/verb/KaguraShingan()
							var/obj/KarinSuit/K = new()
							K.loc=usr
						else
							usr<<"Alguém já escolheu este subclã!"
					else
						usr<<"Você não é da Taka ou já possui um subclan"


mob/npc/JuugoTaka
	name="{NPC}Juugo Taka"
	icon='npcakat.dmi'
	icon_state="juugo"
	PK=0
	imortal = 1
	health=9999999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Subclan"
			alert("Lembre-se! Certifique-se que esse subclan não pertence ao Líder de sua organização pois nesse caso você não tem direito a pegá-lo e poderá perder seu cargo!")
			switch (input("Quer ser do subclan Juugo. Uma vez que escolher não poderá mudar???","Juugo") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.Village=="Taka"&&!usr.subclan)
						if(WJuugoTaka:dono == "Ninguem")
							usr<<"<B><font color = blue>Mto bem vc aprendeu os jutsus"
							WJuugoTaka:dono=usr.key
							SubAkatSave()
							usr.subclan=1
							usr.verbs += new /mob/Juugo/verb/SpTai()
							usr.verbs += new /mob/Juugo/verb/CS4()
							usr.verbs += new /mob/Juugo/verb/CS3()
							usr.verbs += new /mob/Juugo/verb/PTBLANK()
							usr.verbs += new /mob/Juugo/verb/drenarhp()
							usr.verbs += new/mob/jutsu/verb/Power_up()
							usr.bit=1
							var/obj/JuugoSuit/J = new()
							J.loc=usr
						else
							usr<<"Alguém já escolheu este subclã!"
					else
						usr<<"Você não é da Taka ou já possui um subclan"


mob/npc/SuigetsuTaka
	name="{NPC}Suigetsu Taka"
	icon='npcakat.dmi'
	icon_state="suigetsu"
	PK=0
	imortal = 1
	health=9999999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Subclan"
			alert("Lembre-se! Certifique-se que esse subclan não pertence ao Líder de sua organização pois nesse caso você não tem direito a pegá-lo e poderá perder seu cargo!")
			switch (input("Quer ser do subclan Suigetsu. Uma vez que escolher não poderá mudar???","Suigetsu") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.Village=="Taka"&&!usr.subclan)
						if(WSuigetsuTaka:dono == "Ninguem")
							usr<<"<B><font color = blue>Mto bem vc aprendeu os jutsus"
							WSuigetsuTaka:dono=usr.key
							SubAkatSave()
							usr.subclan=1
							usr.verbs += new /mob/jutsu/verb/Corpoa()
							usr.verbs += new /mob/jutsu/verb/Barreiraa()
							usr.verbs += new /mob/jutsu/verb/Buffa()
							usr.verbs += new /mob/jutsu/verb/Prisao()
							usr.verbs += new /obj/bunshins/Mb/verb/Mb()
						else
							usr<<"Alguém já escolheu este subclã!"
					else
						usr<<"Você não é da Taka ou já possui um subclan"

mob/var/subshoraime=0
mob/npc/ShodaimeSub
	name="{NPC}Hashirama Subclan"
	icon='npcakat.dmi'
	icon_state="shodaime"
	PK=0
	imortal = 1
	health=9999999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Subclan"
			switch (input("Quer ser do subclan Senju. Uma vez que escolher não poderá mudar???","Senju") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.rank=="Kage"||usr.amelider||usr.otolider&&!usr.subclan)
						if(WHashirama:dono == "Ninguem")
							WHashirama:dono=usr.key
							SubAkatSave()
							usr<<"<B><font color = blue>Mto bem vc aprendeu os jutsus"
							usr.subclan=1
							usr.verbs += new /mob/jutsu/verb/Shodaime()
							usr.verbs += new /mob/jutsu/verb/Neutro()
							usr.verbs += new /mob/jutsu/verb/Hokagesb()
							usr.verbs += new /mob/jutsu/verb/MokutonSpecial()
							usr.verbs += new /mob/Shodaime/verb/MokutonHijutsu()
							usr.verbs += new /mob/Shodaime/verb/MokotonKyuu()
							usr.verbs += new /mob/Shodaime/verb/MokotonSousou()
							usr.verbs += new /mob/mokuton/verb/ModoGolemHashirama()
						else
							usr<<"Alguém já escolheu este subclã!"
					else
						usr<<"Você precisa ser Kage, não ter subclan e ser do clan Senju"

mob/var/subnidaime=0
mob/npc/NidaimeSub
	name="{NPC}Tobirama Subclan"
	icon='npcakat.dmi'
	icon_state="nidaime"
	PK=0
	imortal = 1
	health=9999999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Subclan"
			switch (input("Quer ser do subclan Tobirama. Uma vez que escolher não poderá mudar???","Tobirama") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.rank=="Kage"||usr.amelider||usr.otolider&&!usr.subclan)
						if(WTobirama:dono == "Ninguem")
							WTobirama:dono=usr.key
							SubAkatSave()
							usr<<"<B><font color = blue>Mto bem vc aprendeu os jutsus"
							usr.subclan=1
							var/obj/HeadbandN/B = new/obj/HeadbandN
							B.loc = usr
							usr.verbs += new /mob/suiton/verb/RainArmor()
							usr.verbs += new /mob/jutsu/verb/NidaimeP()
							usr.verbs += new /mob/jutsu/verb/Taisounidaime()
							usr.verbs += new /mob/genj/verb/BreuNidaime()
							usr.verbs += new /mob/Nidaime/verb/Rastrear()
							usr.verbs += new /obj/bunshins/Mb/verb/Mb2()
							usr.verbs += new /mob/jutsu/verb/Hitele2()
							usr.verbs += new /mob/jutsu/verb/Hitele()
							usr.verbs += new /mob/jutsu/verb/PlantKunai()
							usr.verbs += new /mob/jutsu/verb/LancarKunai()
						else
							usr<<"Alguém já escolheu este subclã!"
					else
						usr<<"Você precisa ser Kage,e não ter subclan"

mob/var/subminato=0
mob/npc/YondaimeSub
	name="{NPC}Namikaze Subclan"
	icon='npcakat.dmi'
	icon_state="yondaime"
	PK=0
	imortal = 1
	health=9999999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Subclan"
			switch (input("Quer ser do subclan Namikaze. Uma vez que escolher não poderá mudar???","Namikaze") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.rank=="Kage"||usr.amelider||usr.otolider&&!usr.subclan)
						if(WMinato:dono == "Ninguem")
							WMinato:dono=usr.key
							SubAkatSave()
							usr<<"<B><font color = blue>Mto bem vc aprendeu os jutsus"
							usr.subclan=1
							usr.verbs += new /mob/jutsu/verb/Hitele()
							usr.verbs += new /mob/jutsu/verb/PlantKunai()
							usr.verbs += new /mob/jutsu/verb/LancarKunai()
							usr.verbs += new /mob/jutsu/verb/Selo()
							usr.verbs += new /mob/jutsu/verb/Rasengan()
							usr.verbs += new /obj/bunshins/KageBunshinnojutsu/verb/KageBunshinNoJutsu()
							usr.verbs += typesof(/mob/Namikaze/verb)
						else
							usr<<"Alguém já escolheu este subclã!"
					else
						usr<<"Você precisa ser Kage,e não ter subclan"



mob/npc/TsunadeSub
	name="{NPC}Tsunade Subclan"
	icon='npcakat.dmi'
	icon_state="tsunade"
	PK=0
	imortal = 1
	health=9999999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Subclan"
			switch (input("Quer ser do subclan Tsunade. Uma vez que escolher não poderá mudar???","Tsunade") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.rank=="Sannin"&&!usr.subclan)
						usr<<"<B><font color = blue>Muito bem você aprendeu os jutsus do Sub Tsunade!"
						usr.subclan=1
						usr.verbs += typesof(/mob/SubHokage/verb)
						usr.verbs += new /mob/jutsu/verb/Curar()
						usr.verbs += new /mob/jutsu/verb/SuperPunhoT()
						usr.verbs += new /mob/jutsu/verb/Reanima()
					else
						usr<<"Você precisa ser Sannin, não ter subclan e ser de Konoha."

mob/npc/MizukageSub
	name="{NPC}Mizukage Subclan"
	icon='npcsx.dmi'
	icon_state="Mizukage"
	PK=0
	imortal = 1
	health=9999999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Subclan"
			switch (input("Quer ser do subclan Mizukage. Uma vez que escolher não poderá mudar???","Mizukage") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.rank=="Kage"||usr.amelider||usr.otolider&&!usr.subclan)
						if(WMizukage:dono == "Ninguem")
							WMizukage:dono=usr.key
							SubAkatSave()
							usr<<"<B><font color = blue>Muito bem você aprendeu os jutsus do Sub Mizukage"
							usr.subclan=1
							usr.verbs += typesof(/mob/SubMizukage/verb)
						else
							usr<<"Alguém já escolheu este subclã!"
					else
						usr<<"Você precisa ser Kage,e não ter subclan"


mob/npc/TsuchikageSub
	name="{NPC}Tsuchikage Subclan"
	icon='Novos NPC.dmi'
	icon_state="onoki"
	PK=0
	imortal = 1
	health=9999999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Subclan"
			switch (input("Quer ser do subclan Tsuchikage. Uma vez que escolher não poderá mudar???","Tsuchikage") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.rank=="Kage"||usr.amelider||usr.otolider&&!usr.subclan)
						if(WOonoki:dono == "Ninguem")
							WOonoki:dono=usr.key
							SubAkatSave()
							usr<<"<B><font color = blue>Muito bem você aprendeu os jutsus do Sub Tsuchikage!"
							usr.subclan=1
							usr.verbs += typesof(/mob/SubTsuchikage/verb)
						else
							usr<<"Alguém já escolheu este subclã!"
					else
						usr<<"Você precisa ser Kage,e não ter subclan"


mob/npc/RaikageSub
	name="{NPC}Raikage Subclan"
	icon='UltimetiumNPCS.dmi'
	icon_state="Raikage"
	PK=0
	imortal = 1
	health=9999999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Subclan"
			switch (input("Quer ser do subclan Raikage. Uma vez que escolher não poderá mudar???","Raikage") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.rank=="Kage"||usr.amelider||usr.otolider&&!usr.subclan)
						if(WRaikage:dono == "Ninguem")
							WRaikage:dono=usr.key
							SubAkatSave()
							usr<<"<B><font color = blue>Muito bem você aprendeu os jutsus do Sub Raikage!"
							usr.subclan=1
							usr.verbs += typesof(/mob/Raikage/verb)
							usr.verbs += new /mob/jutsu/verb/EletricBunshin()
						else
							usr<<"Alguém já escolheu este subclã!"
					else
						usr<<"Você precisa ser Kage,e não ter subclan"





mob/npc/KakashiSub
	name = "{NPC}Sub Anbu Kakashi"
	icon = 'Kakashi Anbu.dmi'
	PK = 0
	imortal = 1
	health = 999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Subclan"
			switch (input("Quer ser do subclan Anbu Kakashi. Uma vez que escolher não poderá mudar???","Anbu Kakashi") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.rank=="ANBU-CAP"&&!usr.subclan)
						usr<<"<B><font color = blue>Muito bem você aprendeu os jutsus do Sub Anbu Kakashi"
						usr.subclan=1
						usr.verbs += typesof(/mob/Hatake/verb)
					else
						usr<<"Você precisa ser Anbu-Cap,e não ter subclan!"





mob/npc/PerdiBandana
	name = "{NPC}Entregador de Bandana"
	icon = 'npckasak.dmi'
	icon_state = "nukenin"
	human = 0
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			switch(input("Outro Lesado que apagou a Bandana?") in list ("Sim","Esqueça"))
				if ("Sim")
					if(usr.rank=="Genin")
						usr<<"<B><font color = blue>Agora Cuidado seu Lesado."
						var/obj/Headband/B = new/obj/Headband
						B.loc = usr
						var/obj/KunaiHolster/K = new/obj/KunaiHolster
						K.loc = usr
					else
						usr<<"Você não é Genin engraçadinho."
				if ("Esqueça")
					usr<<"<B><font color = blue>Tudo Bem, cuide da sua Bandana."
					return





mob/npc/AnciaodeRanton
	name = "{NPC}Anciao de Ranton"
	icon = 'UltimetiumNPCS.dmi'
	icon_state = "Cabeleireiro"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			//set category = "Subclan"
			switch (input("Quer ser do Cla de Ranton?. Uma vez que escolher não poderá mudar???","Ranton") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.rank=="ANBU"&&!usr.subclan)
						usr<<"<B><font color = blue>Muito bem você aprendeu os jutsus do Sub Ranton!"
						usr.subclan=1
						usr.verbs += new /mob/Ranton/verb/Tempestade1()
						usr.verbs += new /mob/jutsu/verb/RaikageJ()
					else
						usr<<"Você precisa ser ANBU e não ter Sub Clã!"




mob/npc/JirayaSub
	name="{NPC}Jiraya Subclan"
	icon='npcakat.dmi'
	icon_state="jiraya"
	PK=0
	imortal = 1
	health=9999999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Subclan"
			switch (input("Quer ser do subclan Jiraya. Uma vez que escolher não poderá mudar???","Jiraya") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.rank=="Sannin"&&!usr.subclan)
						usr<<"<B><font color = blue>Mto bem vc aprendeu os jutsus"
						usr.subclan=1
						usr.verbs += new /mob/Sun/verb/TaiyouGoukakyuu()
						usr.verbs += new /mob/jiraya/verb/ModoHeremita()
						usr.verbs += new /mob/jiraya/verb/DotonYomi()
						usr.verbs += new /mob/jiraya/verb/Peacock()
						usr.faceicon = 'jiroubou.bmp'
					else
						usr<<"Você precisa ser Sannin,e não ter subclan"


mob/npc/SaiSub
	name="{NPC}Sai Subclan"
	icon='npcakat.dmi'
	icon_state="sai"
	PK=0
	imortal = 1
	health=9999999999999999999999999999999999999999999999999999999999999
	verb
		Falar()
			set src in oview(2)
			set category = "Subclan"
			switch (input("Quer ser do subclan Sai. Uma vez que escolher não poderá mudar???","Sai") in list ("Sim","Esqueça"))
				if("Sim")
					if(usr.rank=="ANBU"&&!usr.subclan)
						usr<<"<B><font color = blue>Muito bem você aprendeu os jutsus do Sub Sai!"
						usr.subclan=1
						usr.verbs += new /mob/Sai/verb/SnakeKyuu()
						usr.verbs += new /mob/Sai/verb/NinpouLion()
						usr.verbs += new /mob/Sai/verb/Ratsilluminate()
						usr.contents += new /obj/Sai_Bird_Summoning_Scroll
					else
						usr<<"Você precisa ser Anbu,e não ter subclan!"



//==== BANCOS ==========================================================================================================


proc
	BancosSave()
		var/savefile/F = new("Bancos.sav")
		F["Konoha"] << konohafundo
		F["Ame"] << amefundo
		F["Suna"] << sunafundo
		F["Iwa"] << iwafundo
		F["Kiri"] << kirifundo
		F["Kumo"] << kumofundo
		F["Akat"] << akatfundo
		F["SSS"] << sssfundo
		F["Oto"] << sofundo
proc
	BancosLoad()
		if(fexists("Bancos.sav"))
			var/savefile/F = new("Bancos.sav")
			F["Konoha"] >> konohafundo
			F["Ame"] >> amefundo
			F["Suna"] >> sunafundo
			F["Iwa"] >> iwafundo
			F["Kiri"] >> kirifundo
			F["Kumo"] >> kumofundo
			F["Akat"] >> akatfundo
			F["SSS"] >> sssfundo
			F["Oto"] >> sofundo


mob/npc/KonohaBanco
	name = "{NPC}Banqueiro de Konoha"
	icon = 'Banker.dmi'
	icon_state="vilas"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999
	verb
		Depositar()
			set src in oview(2)
			////set category = "Banco"
			if(usr.Village=="Konoha")
				var/heh = input("Você tem [usr.Yen]$. Gostaria de depositar?","Depositar") as num
				if (heh < 0)
					alert("Não tente me enganar!","Banco")
					return()
				if (heh > usr.Yen)
					alert("Você não tem tantos Ryous!", "Depositar")
					return()
				usr<<"Você depositou [heh] de dinheiro."
				usr.Yen -= heh
				konohafundo += heh
				return()
		Checar_Conta()
			set src in oview(2)
			//set category = "Banco"
			set name = "Checar conta da vila"
			if(usr.Village=="Konoha"&&usr.rank=="Kage")
				usr<<"Konoha possui [konohafundo] na sua conta."
		Transferir()
			set src in oview(2)
			//set category = "Banco"
			set name = "Transferir Dinheiro"
			if(usr.Village=="Konoha"&&usr.rank=="Kage")
				var/heh = input("Konoha tem [konohafundo]$. Gostaria de tranferir quanto?","Transferir") as num
				if (heh < 0)
					alert("Não tente me enganar!","Banco")
					return()
				if (heh > konohafundo)
					alert("Você não tem tantos Ryous!", "Transferir")
					return()
				switch(input("Quer tranferir para qual vila?","Tranferir")in list("Cancelar","Akat","Oto","Iwa","Kumo","Kiri","Suna","Ame"))
					if("Kiri")
						usr<<"Feito"
						kirifundo+=heh
						konohafundo-=heh
					if("Kumo")
						usr<<"Feito"
						kumofundo+=heh
						konohafundo-=heh
					if("Ame")
						usr<<"Feito"
						amefundo+=heh
						konohafundo-=heh
					if("Suna")
						usr<<"Feito"
						sunafundo+=heh
						konohafundo-=heh
					if("Iwa")
						usr<<"Feito"
						iwafundo+=heh
						konohafundo-=heh
					if("Akat")
						usr<<"Feito"
						akatfundo+=heh
						konohafundo-=heh
					if("Oto")
						usr<<"Feito"
						sofundo+=heh
						konohafundo-=heh
					if("Cancelar")
						return




mob/npc/AmeBanco
	name = "{NPC}Banqueiro de Ame"
	icon = 'Banker.dmi'
	icon_state="vilas"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999
	verb
		Depositar()
			set src in oview(2)
			////set category = "Banco"
			if(usr.Village=="Ame")
				var/heh = input("Você tem [usr.Yen]$. Gostaria de depositar?","Depositar") as num
				if (heh < 0)
					alert("Não tente me enganar!","Banco")
					return()
				if (heh > usr.Yen)
					alert("Você não tem tantos Ryous!", "Depositar")
					return()
				usr<<"Você depositou [heh] de dinheiro."
				usr.Yen -= heh
				amefundo += heh
				return()
		Checar_Conta()
			set src in oview(2)
			//set category = "Banco"
			set name = "Checar conta da vila"
			if(usr.Village=="Ame"&&usr.rank=="Kage")
				usr<<"Ame possui [amefundo] na sua conta."
		Transferir()
			set src in oview(2)
			//set category = "Banco"
			set name = "Transferir Dinheiro"
			if(usr.Village=="Ame"&&usr.rank=="Kage")
				var/heh = input("Ame tem [amefundo]$. Gostaria de tranferir quanto?","Transferir") as num
				if (heh < 0)
					alert("Não tente me enganar!","Banco")
					return()
				if (heh > amefundo)
					alert("Você não tem tantos Ryous!", "Transferir")
					return()
				switch(input("Quer tranferir para qual vila?","Tranferir")in list("Cancelar","Akat","Oto","Iwa","Kumo","Kiri","Suna","Konoha"))
					if("Kiri")
						usr<<"Feito"
						kirifundo+=heh
						amefundo-=heh
					if("Kumo")
						usr<<"Feito"
						kumofundo+=heh
						amefundo-=heh
					if("Konoha")
						usr<<"Feito"
						konohafundo+=heh
						amefundo-=heh
					if("Suna")
						usr<<"Feito"
						sunafundo+=heh
						amefundo-=heh
					if("Iwa")
						usr<<"Feito"
						iwafundo+=heh
						amefundo-=heh
					if("Akat")
						usr<<"Feito"
						akatfundo+=heh
						amefundo-=heh
					if("Oto")
						usr<<"Feito"
						sofundo+=heh
						amefundo-=heh
					if("Cancelar")
						return


mob/npc/SunaBanco
	name = "{NPC}Banqueiro de Suna"
	icon = 'Banker.dmi'
	icon_state="vilas"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999
	verb
		Depositar()
			set src in oview(2)
			////set category = "Banco"
			if(usr.Village=="Suna")
				var/heh = input("Você tem [usr.Yen]$. Gostaria de depositar?","Depositar") as num
				if (heh < 0)
					alert("Não tente me enganar!","Banco")
					return()
				if (heh > usr.Yen)
					alert("Você não tem tantos Ryous!", "Depositar")
					return()
				usr<<"Você depositou [heh] de dinheiro."
				usr.Yen -= heh
				sunafundo += heh
				return()
		Checar_Conta()
			set src in oview(2)
			//set category = "Banco"
			set name = "Checar conta da vila"
			if(usr.Village=="Suna"&&usr.rank=="Kage")
				usr<<"Suna possui [sunafundo] na sua conta."
		Transferir()
			set src in oview(2)
			//set category = "Banco"
			set name = "Transferir Dinheiro"
			if(usr.Village=="Suna"&&usr.rank=="Kage")
				var/heh = input("Suna tem [sunafundo]$. Gostaria de tranferir quanto?","Transferir") as num
				if (heh < 0)
					alert("Não tente me enganar!","Banco")
					return()
				if (heh > sunafundo)
					alert("Você não tem tantos Ryous!", "Transferir")
					return()
				switch(input("Quer tranferir para qual vila?","Tranferir")in list("Cancelar","Akat","Oto","Iwa","Kumo","Kiri","Konoha","Ame"))
					if("Kiri")
						usr<<"Feito"
						kirifundo+=heh
						sunafundo-=heh
					if("Kumo")
						usr<<"Feito"
						kumofundo+=heh
						sunafundo-=heh
					if("Ame")
						usr<<"Feito"
						amefundo+=heh
						sunafundo-=heh
					if("Konoha")
						usr<<"Feito"
						konohafundo+=heh
						sunafundo-=heh
					if("Iwa")
						usr<<"Feito"
						iwafundo+=heh
						sunafundo-=heh
					if("Akat")
						usr<<"Feito"
						akatfundo+=heh
						sunafundo-=heh
					if("Oto")
						usr<<"Feito"
						sofundo+=heh
						sunafundo-=heh
					if("Cancelar")
						return



mob/npc/KiriBanco
	name = "{NPC}Banqueiro de Kiri"
	icon = 'Banker.dmi'
	icon_state="vilas"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999
	verb
		Depositar()
			set src in oview(2)
			////set category = "Banco"
			if(usr.Village=="Kiri")
				var/heh = input("Você tem [usr.Yen]$. Gostaria de depositar?","Depositar") as num
				if (heh < 0)
					alert("Não tente me enganar!","Banco")
					return()
				if (heh > usr.Yen)
					alert("Você não tem tantos Ryous!", "Depositar")
					return()
				usr<<"Você depositou [heh] de dinheiro."
				usr.Yen -= heh
				kirifundo += heh
				return()
		Checar_Conta()
			set src in oview(2)
			//set category = "Banco"
			set name = "Checar conta da vila"
			if(usr.Village=="Kiri"&&usr.rank=="Kage")
				usr<<"Kiri possui [kirifundo] na sua conta."
		Transferir()
			set src in oview(2)
			//set category = "Banco"
			set name = "Transferir Dinheiro"
			if(usr.Village=="Kiri"&&usr.rank=="Kage")
				var/heh = input("Kiri tem [kirifundo]$. Gostaria de tranferir quanto?","Transferir") as num
				if (heh < 0)
					alert("Não tente me enganar!","Banco")
					return()
				if (heh > kirifundo)
					alert("Você não tem tantos Ryous!", "Transferir")
					return()
				switch(input("Quer tranferir para qual vila?","Tranferir")in list("Cancelar","Akat","Oto","Iwa","Kumo","Konoha","Suna","Ame"))
					if("Konoha")
						usr<<"Feito"
						konohafundo+=heh
						kirifundo-=heh
					if("Kumo")
						usr<<"Feito"
						kumofundo+=heh
						kirifundo-=heh
					if("Ame")
						usr<<"Feito"
						amefundo+=heh
						kirifundo-=heh
					if("Suna")
						usr<<"Feito"
						sunafundo+=heh
						kirifundo-=heh
					if("Iwa")
						usr<<"Feito"
						iwafundo+=heh
						kirifundo-=heh
					if("Akat")
						usr<<"Feito"
						akatfundo+=heh
						kirifundo-=heh
					if("Oto")
						usr<<"Feito"
						sofundo+=heh
						kirifundo-=heh
					if("Cancelar")
						return



mob/npc/KumoBanco
	name = "{NPC}Banqueiro de Kumo"
	icon = 'Banker.dmi'
	icon_state="vilas"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999
	verb
		Depositar()
			set src in oview(2)
			////set category = "Banco"
			if(usr.Village=="Kumo")
				var/heh = input("Você tem [usr.Yen]$. Gostaria de depositar?","Depositar") as num
				if (heh < 0)
					alert("Não tente me enganar!","Banco")
					return()
				if (heh > usr.Yen)
					alert("Você não tem tantos Ryous!", "Depositar")
					return()
				usr<<"Você depositou [heh] de dinheiro."
				usr.Yen -= heh
				kumofundo += heh
				return()
		Checar_Conta()
			set src in oview(2)
			//set category = "Banco"
			set name = "Checar conta da vila"
			if(usr.Village=="Kumo"&&usr.rank=="Kage")
				usr<<"Kumo possui [kumofundo] na sua conta."
		Transferir()
			set src in oview(2)
			//set category = "Banco"
			set name = "Transferir Dinheiro"
			if(usr.Village=="Kumo"&&usr.rank=="Kage")
				var/heh = input("Kumo tem [kumofundo]$. Gostaria de tranferir quanto?","Transferir") as num
				if (heh < 0)
					alert("Não tente me enganar!","Banco")
					return()
				if (heh > kumofundo)
					alert("Você não tem tantos Ryous!", "Transferir")
					return()
				switch(input("Quer tranferir para qual vila?","Tranferir")in list("Cancelar","Akat","Oto","Iwa","Konoha","Kiri","Suna","Ame"))
					if("Kiri")
						usr<<"Feito"
						kirifundo+=heh
						kumofundo-=heh
					if("Konoha")
						usr<<"Feito"
						konohafundo+=heh
						kumofundo-=heh
					if("Ame")
						usr<<"Feito"
						amefundo+=heh
						kumofundo-=heh
					if("Suna")
						usr<<"Feito"
						sunafundo+=heh
						kumofundo-=heh
					if("Iwa")
						usr<<"Feito"
						iwafundo+=heh
						kumofundo-=heh
					if("Akat")
						usr<<"Feito"
						akatfundo+=heh
						kumofundo-=heh
					if("Oto")
						usr<<"Feito"
						sofundo+=heh
						kumofundo-=heh
					if("Cancelar")
						return



mob/npc/IwaBanco
	name = "{NPC}Banqueiro de Iwa"
	icon = 'Banker.dmi'
	icon_state="vilas"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999
	verb
		Depositar()
			set src in oview(2)
			////set category = "Banco"
			if(usr.Village=="Iwa")
				var/heh = input("Você tem [usr.Yen]$. Gostaria de depositar?","Depositar") as num
				if (heh < 0)
					alert("Não tente me enganar!","Banco")
					return()
				if (heh > usr.Yen)
					alert("Você não tem tantos Ryous!", "Depositar")
					return()
				usr<<"Você depositou [heh] de dinheiro."
				usr.Yen -= heh
				iwafundo += heh
				return()
		Checar_Conta()
			set src in oview(2)
			//set category = "Banco"
			set name = "Checar conta da vila"
			if(usr.Village=="Iwa"&&usr.rank=="Kage")
				usr<<"Iwa possui [iwafundo] na sua conta."
		Transferir()
			set src in oview(2)
			//set category = "Banco"
			set name = "Transferir Dinheiro"
			if(usr.Village=="Iwa"&&usr.rank=="Kage")
				var/heh = input("Iwa tem [iwafundo]$. Gostaria de tranferir quanto?","Transferir") as num
				if (heh < 0)
					alert("Não tente me enganar!","Banco")
					return()
				if (heh > iwafundo)
					alert("Você não tem tantos Ryous!", "Transferir")
					return()
				switch(input("Quer tranferir para qual vila?","Tranferir")in list("Cancelar","Akat","Oto","Konoha","Kumo","Kiri","Suna","Ame"))
					if("Kiri")
						usr<<"Feito"
						kirifundo+=heh
						iwafundo-=heh
					if("Kumo")
						usr<<"Feito"
						kumofundo+=heh
						iwafundo-=heh
					if("Ame")
						usr<<"Feito"
						amefundo+=heh
						iwafundo-=heh
					if("Suna")
						usr<<"Feito"
						sunafundo+=heh
						iwafundo-=heh
					if("Konoha")
						usr<<"Feito"
						konohafundo+=heh
						iwafundo-=heh
					if("Akat")
						usr<<"Feito"
						akatfundo+=heh
						iwafundo-=heh
					if("Oto")
						usr<<"Feito"
						sofundo+=heh
						iwafundo-=heh
					if("Cancelar")
						return



mob/npc/AkatBanco
	name = "{NPC}Banqueiro da Akat"
	icon = 'Banker.dmi'
	icon_state="vilas"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999
	verb
		Depositar()
			set src in oview(2)
			////set category = "Banco"
			if(usr.Village=="Akatsuki")
				var/heh = input("Você tem [usr.Yen]$. Gostaria de depositar?","Depositar") as num
				if (heh < 0)
					alert("Não tente me enganar!","Banco")
					return()
				if (heh > usr.Yen)
					alert("Você não tem tantos Ryous!", "Depositar")
					return()
				usr<<"Você depositou [heh] de dinheiro."
				usr.Yen -= heh
				akatfundo += heh
				return()
		Checar_Conta()
			set src in oview(2)
			//set category = "Banco"
			set name = "Checar conta da vila"
			if(usr.Village=="Akatsuki"&&usr.akatsukileader==1)
				usr<<"Akatsuki possui [akatfundo] na sua conta."
		Transferir()
			set src in oview(2)
			//set category = "Banco"
			set name = "Transferir Dinheiro"
			if(usr.Village=="Akatsuki"&&usr.akatsukileader==1)
				var/heh = input("Akatsuki tem [akatfundo]$. Gostaria de tranferir quanto?","Transferir") as num
				if (heh < 0)
					alert("Não tente me enganar!","Banco")
					return()
				if (heh > akatfundo)
					alert("Você não tem tantos Ryous!", "Transferir")
					return()
				switch(input("Quer tranferir para qual vila?","Tranferir")in list("Cancelar","Konoha","Oto","Iwa","Kumo","Kiri","Suna","Ame"))
					if("Kiri")
						usr<<"Feito"
						kirifundo+=heh
						akatfundo-=heh
					if("Kumo")
						usr<<"Feito"
						kumofundo+=heh
						akatfundo-=heh
					if("Ame")
						usr<<"Feito"
						amefundo+=heh
						akatfundo-=heh
					if("Suna")
						usr<<"Feito"
						sunafundo+=heh
						akatfundo-=heh
					if("Iwa")
						usr<<"Feito"
						iwafundo+=heh
						akatfundo-=heh
					if("Konoha")
						usr<<"Feito"
						konohafundo+=heh
						akatfundo-=heh
					if("Oto")
						usr<<"Feito"
						sofundo+=heh
						akatfundo-=heh
					if("Cancelar")
						return


mob/npc/SSSBanco
	name = "{NPC}Banqueiro da SSS"
	icon = 'Banker.dmi'
	icon_state="vilas"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999
	verb
		Depositar()
			set src in oview(2)
			////set category = "Banco"
			if(usr.rank=="7Swordsmen")
				var/heh = input("Você tem [usr.Yen]$. Gostaria de depositar?","Depositar") as num
				if (heh < 0)
					alert("Não tente me enganar!","Banco")
					return()
				if (heh > usr.Yen)
					alert("Você não tem tantos Ryous!", "Depositar")
					return()
				usr<<"Você depositou [heh] de dinheiro."
				usr.Yen -= heh
				sssfundo += heh
				return()
		Checar_Conta()
			set src in oview(2)
			//set category = "Banco"
			set name = "Checar conta da vila"
			if(usr.rank=="Kage"&&usr.swordsmenleader==1)
				usr<<"SSS possui [sssfundo] na sua conta."
		Transferir()
			set src in oview(2)
			//set category = "Banco"
			set name = "Transferir Dinheiro"
			if(usr.rank=="Kage"&&usr.swordsmenleader==1)
				var/heh = input("SSS tem [sssfundo]$. Gostaria de tranferir quanto?","Transferir") as num
				if (heh < 0)
					alert("Não tente me enganar!","Banco")
					return()
				if (heh > sssfundo)
					alert("Você não tem tantos Ryous!", "Transferir")
					return()
				switch(input("Quer tranferir para qual vila?","Tranferir")in list("Cancelar","Konoha","Akat","Oto","Iwa","Kumo","Kiri","Suna","Ame"))
					if("Kiri")
						usr<<"Feito"
						kirifundo+=heh
						sssfundo-=heh
					if("Kumo")
						usr<<"Feito"
						kumofundo+=heh
						sssfundo-=heh
					if("Ame")
						usr<<"Feito"
						amefundo+=heh
						sssfundo-=heh
					if("Suna")
						usr<<"Feito"
						sunafundo+=heh
						sssfundo-=heh
					if("Iwa")
						usr<<"Feito"
						iwafundo+=heh
						sssfundo-=heh
					if("Akat")
						usr<<"Feito"
						akatfundo+=heh
						sssfundo-=heh
					if("Konoha")
						usr<<"Feito"
						konohafundo+=heh
						sssfundo-=heh
					if("Oto")
						usr<<"Feito"
						sofundo+=heh
						sssfundo-=heh
					if("Cancelar")
						return



mob/npc/SOBanco
	name = "{NPC}Banqueiro de Oto"
	icon = 'Banker.dmi'
	icon_state="vilas"
	PK = 0
	imortal = 1
	health = 9999999999999999999999999999999999999999999999
	verb
		Depositar()
			set src in oview(2)
			////set category = "Banco"
			if(usr.Village=="Oto")
				var/heh = input("Você tem [usr.Yen]$. Gostaria de depositar?","Depositar") as num
				if (heh < 0)
					alert("Não tente me enganar!","Banco")
					return()
				if (heh > usr.Yen)
					alert("Você não tem tantos Ryous!", "Depositar")
					return()
				usr<<"Você depositou [heh] de dinheiro."
				usr.Yen -= heh
				sofundo += heh
				return()
		Checar_Conta()
			set src in oview(2)
			//set category = "Banco"
			set name = "Checar conta da vila"
			if(usr.Village=="Oto"&&usr.otolider==1)
				usr<<"Oto possui [sofundo] na sua conta."
		Transferir()
			set src in oview(2)
			//set category = "Banco"
			set name = "Transferir Dinheiro"
			if(usr.Village=="Oto"&&usr.otolider)
				var/heh = input("Oto tem [sofundo]$. Gostaria de tranferir quanto?","Transferir") as num
				if (heh < 0)
					alert("Não tente me enganar!","Banco")
					return()
				if (heh > sofundo)
					alert("Você não tem tantos Ryous!", "Transferir")
					return()
				switch(input("Quer tranferir para qual vila?","Tranferir")in list("Cancelar","Akat","Konoha","Iwa","Kumo","Kiri","Suna","Ame"))
					if("Kiri")
						usr<<"Feito"
						kirifundo+=heh
						sofundo-=heh
					if("Kumo")
						usr<<"Feito"
						kumofundo+=heh
						sofundo-=heh
					if("Ame")
						usr<<"Feito"
						amefundo+=heh
						sofundo-=heh
					if("Suna")
						usr<<"Feito"
						sunafundo+=heh
						sofundo-=heh
					if("Iwa")
						usr<<"Feito"
						iwafundo+=heh
						sofundo-=heh
					if("Akat")
						usr<<"Feito"
						akatfundo+=heh
						sofundo-=heh
					if("Konoha")
						usr<<"Feito"
						konohafundo+=heh
						sofundo-=heh
					if("Cancelar")
						return



mob/var/candna=0
mob/var/canbyakuroubado=0
mob/var/cansharinga=0
mob/var/canmsroubado=0
mob/var/canrinneaganroubado=0

mob/var/implantadoja=0
mob/var/implantadojams=0
mob/var/implantadojasharin=0
mob/var/implantadojarineg=0
mob/var/implantadojabyaku=0
mob/var/implantadojadna=0




