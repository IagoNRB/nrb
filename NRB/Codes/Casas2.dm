//---Mansão 1--------------------

turf/Entrada_Casa_25
	icon=""
	Enter(mob/M)
		if(M.client)
			if(WCasa25:donokey==M.key) M.loc=locate(/turf/Saida_Casa_25)
			else if(M.key in WCasa25:convidados) M.loc=locate(/turf/Saida_Casa_25)
			else  alert("Você não é um convidado. Esta casa é propriedade de [WCasa25:dono]")
	verb
		Comprar_Casa()
			//set category = "Casa"
			set src in oview(2)
			if(DuasCasas(usr)==1) {alert("Você ja tem uma casa !");return}
			if(WCasa25:donokey=="Sem")
				if(usr.Yen>=10000000)
					usr.Yen-=10000000
					WCasa25:dono=usr.name
					WCasa25:donokey=usr.key
					usr.donocasa25=1
					world<<"[usr] Comprou a Mansão dos Lords Feudais!"
					usr<<"Você comprou Mansão dos Lords Feudais!"
				else
					alert("Você não tem 10.000.000 Yens")
			else
				usr<<"Não pode comprar essa casa, ela pertence a [WCasa25:dono]"

	verb
		Convidar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa25:donokey==usr.key)

				var/list/a=new/list
				for(var/mob/M) if(M.client) a+=M
				var/mob/B=input("Quem vai ter acesso a sua mansão ?") in a +list("Cancelar")

				if(!B||B=="Cancelar") return
				else
					WCasa25:convidados+=B.key
					usr<<"Você convidou o responsavel pela key [B]!"
					B<<"Você foi convidado por [usr]"
			else
				usr<<"Você não é o dono dessa casa"
	verb
		Expulsar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa25:donokey==usr.key)

				var/B=input("Quem vai perder o acesso a sua casa ?") in WCasa25:convidados +list("Cancelar")

				if(!B||B=="Cancelar") return
				WCasa25:convidados-=B

				var/mob/S
				for(var/mob/Z) if(Z.client&&Z.key==B) S=Z
				if(S)
					usr<<"Você expulsou o [S]"
					S<<"Você foi expulso por [usr]"
				else
					usr<<"Você expulsou o dono da Key: [B]!"
			else
				usr<<"Você não é o dono dessa casa"

	verb
		Vender_Casa()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa25:donokey==usr.key||usr.ADM==1)
				WCasa25:dono="Sem"
				WCasa25:donokey="Sem"
				usr.Yen+=1000000
				WCasa25=new/Casa
				usr.donocasa25=0
				usr<<"Você vendeu a mansão!"
			else
				usr<<"Você não é o dono dessa casa"



turf/Saida_Casa_25
	icon=""
	Enter(mob/M)
		if(M.client) M.loc=locate(/turf/Entrada_Casa_25)


//---Mansão 2--------------------

turf/Entrada_Casa_26
	icon=""
	Enter(mob/M)
		if(M.client)
			if(WCasa26:donokey==M.key) M.loc=locate(/turf/Saida_Casa_26)
			else if(M.key in WCasa26:convidados) M.loc=locate(/turf/Saida_Casa_26)
			else  alert("Você não é um convidado. Esta casa é propriedade de [WCasa26:dono]")
	verb
		Comprar_Casa()
			//set category = "Casa"
			set src in oview(2)
			if(DuasCasas(usr)==1) {alert("Você ja tem uma casa !");return}
			if(WCasa26:donokey=="Sem")
				if(usr.Yen>=10000000)
					usr.Yen-=10000000
					WCasa26:dono=usr.name
					WCasa26:donokey=usr.key
					usr.donocasa26=1
					world<<"[usr] Comprou a Mansão dos Lords Feudais!"
					usr<<"Você comprou Mansão dos Lords Feudais!"
				else
					alert("Você não tem 10.000.000 Yens")
			else
				usr<<"Não pode comprar essa casa, ela pertence a [WCasa26:dono]"

	verb
		Convidar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa26:donokey==usr.key)

				var/list/a=new/list
				for(var/mob/M) if(M.client) a+=M
				var/mob/B=input("Quem vai ter acesso a sua mansão ?") in a +list("Cancelar")

				if(!B||B=="Cancelar") return
				else
					WCasa26:convidados+=B.key
					usr<<"Você convidou o responsavel pela key [B]!"
					B<<"Você foi convidado por [usr]"
			else
				usr<<"Você não é o dono dessa casa"
	verb
		Expulsar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa26:donokey==usr.key)

				var/B=input("Quem vai perder o acesso a sua casa ?") in WCasa26:convidados +list("Cancelar")

				if(!B||B=="Cancelar") return
				WCasa26:convidados-=B

				var/mob/S
				for(var/mob/Z) if(Z.client&&Z.key==B) S=Z
				if(S)
					usr<<"Você expulsou o [S]"
					S<<"Você foi expulso por [usr]"
				else
					usr<<"Você expulsou o dono da Key: [B]!"
			else
				usr<<"Você não é o dono dessa casa"

	verb
		Vender_Casa()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa26:donokey==usr.key||usr.ADM==1)
				WCasa26:dono="Sem"
				WCasa26:donokey="Sem"
				usr.Yen+=1000000
				WCasa26=new/Casa
				usr.donocasa26=0
				usr<<"Você vendeu a mansão!"
			else
				usr<<"Você não é o dono dessa casa"



turf/Saida_Casa_26
	icon=""
	Enter(mob/M)
		if(M.client) M.loc=locate(/turf/Entrada_Casa_26)


//---Mansão 3--------------------

turf/Entrada_Casa_27
	icon=""
	Enter(mob/M)
		if(M.client)
			if(WCasa27:donokey==M.key) M.loc=locate(/turf/Saida_Casa_27)
			else if(M.key in WCasa27:convidados) M.loc=locate(/turf/Saida_Casa_27)
			else  alert("Você não é um convidado. Esta casa é propriedade de [WCasa27:dono]")
	verb
		Comprar_Casa()
			//set category = "Casa"
			set src in oview(2)
			if(DuasCasas(usr)==1) {alert("Você ja tem uma casa !");return}
			if(WCasa27:donokey=="Sem")
				if(usr.Yen>=10000000)
					usr.Yen-=10000000
					WCasa27:dono=usr.name
					WCasa27:donokey=usr.key
					usr.donocasa27=1
					world<<"[usr] Comprou a Mansão dos Lords Feudais!"
					usr<<"Você comprou Mansão dos Lords Feudais!"
				else
					alert("Você não tem 10.000.000 Yens")
			else
				usr<<"Não pode comprar essa casa, ela pertence a [WCasa27:dono]"

	verb
		Convidar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa27:donokey==usr.key)

				var/list/a=new/list
				for(var/mob/M) if(M.client) a+=M
				var/mob/B=input("Quem vai ter acesso a sua mansão ?") in a +list("Cancelar")

				if(!B||B=="Cancelar") return
				else
					WCasa27:convidados+=B.key
					usr<<"Você convidou o responsavel pela key [B]!"
					B<<"Você foi convidado por [usr]"
			else
				usr<<"Você não é o dono dessa casa"
	verb
		Expulsar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa27:donokey==usr.key)

				var/B=input("Quem vai perder o acesso a sua casa ?") in WCasa27:convidados +list("Cancelar")

				if(!B||B=="Cancelar") return
				WCasa27:convidados-=B

				var/mob/S
				for(var/mob/Z) if(Z.client&&Z.key==B) S=Z
				if(S)
					usr<<"Você expulsou o [S]"
					S<<"Você foi expulso por [usr]"
				else
					usr<<"Você expulsou o dono da Key: [B]!"
			else
				usr<<"Você não é o dono dessa casa"
	verb
		Vender_Casa()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa27:donokey==usr.key||usr.ADM==1)
				WCasa27:dono="Sem"
				WCasa27:donokey="Sem"
				usr.Yen+=1000000
				WCasa27=new/Casa
				usr.donocasa27=0
				usr<<"Você vendeu a mansão!"
			else
				usr<<"Você não é o dono dessa casa"



turf/Saida_Casa_27
	icon=""
	Enter(mob/M)
		if(M.client) M.loc=locate(/turf/Entrada_Casa_27)