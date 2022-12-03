//---Proc-------------------------


proc/DuasCasas(mob/a)
	if(WCasa01:donokey==a.key) return 1;if(WCasa02:donokey==a.key) return 1
	if(WCasa03:donokey==a.key) return 1;if(WCasa04:donokey==a.key) return 1
	if(WCasa05:donokey==a.key) return 1;if(WCasa06:donokey==a.key) return 1
	if(WCasa07:donokey==a.key) return 1;if(WCasa08:donokey==a.key) return 1
	if(WCasa09:donokey==a.key) return 1;if(WCasa10:donokey==a.key) return 1
	if(WCasa11:donokey==a.key) return 1;if(WCasa12:donokey==a.key) return 1
	if(WCasa13:donokey==a.key) return 1;if(WCasa14:donokey==a.key) return 1
	if(WCasa15:donokey==a.key) return 1;if(WCasa16:donokey==a.key) return 1
	if(WCasa17:donokey==a.key) return 1;if(WCasa18:donokey==a.key) return 1
	if(WCasa19:donokey==a.key) return 1;if(WCasa20:donokey==a.key) return 1
	if(WCasa21:donokey==a.key) return 1;if(WCasa22:donokey==a.key) return 1
	if(WCasa23:donokey==a.key) return 1;if(WCasa24:donokey==a.key) return 1
	if(WCasa25:donokey==a.key) return 1;if(WCasa26:donokey==a.key) return 1
	if(WCasa27:donokey==a.key) return 1

//---Vars And Load/Save--------------------


world/New()
	LoadCasas()
	..()
world/Del()
	SaveCasas()
	..()

var/WCasa01;var/WCasa02;var/WCasa03
var/WCasa04;var/WCasa05;var/WCasa06
var/WCasa07;var/WCasa08;var/WCasa09
var/WCasa10;var/WCasa11;var/WCasa12
var/WCasa13;var/WCasa14;var/WCasa15
var/WCasa16;var/WCasa17;var/WCasa18
var/WCasa19;var/WCasa20;var/WCasa21
var/WCasa22;var/WCasa23;var/WCasa24
var/WCasa25;var/WCasa26;var/WCasa27


proc
	SaveCasas()//Salva as casas dentro das variaveis
		var/savefile/F = new("Casas.sav")
		F["WCasa01"]<<WCasa01;F["WCasa02"]<<WCasa02
		F["WCasa03"]<<WCasa03;F["WCasa04"]<<WCasa04
		F["WCasa05"]<<WCasa05;F["WCasa06"]<<WCasa06
		F["WCasa07"]<<WCasa07;F["WCasa08"]<<WCasa08
		F["WCasa09"]<<WCasa09;F["WCasa10"]<<WCasa10
		F["WCasa11"]<<WCasa11;F["WCasa12"]<<WCasa12
		F["WCasa13"]<<WCasa13;F["WCasa14"]<<WCasa14
		F["WCasa15"]<<WCasa15;F["WCasa16"]<<WCasa16
		F["WCasa17"]<<WCasa17;F["WCasa18"]<<WCasa18
		F["WCasa19"]<<WCasa19;F["WCasa20"]<<WCasa20
		F["WCasa21"]<<WCasa21;F["WCasa22"]<<WCasa22
		F["WCasa23"]<<WCasa23;F["WCasa24"]<<WCasa24
		F["WCasa25"]<<WCasa25;F["WCasa26"]<<WCasa26
		F["WCasa27"]<<WCasa27
	LoadCasas()//Carrega as casas pra dentro das variaveis
		if(fexists("Casas.sav"))
			var/savefile/F = new("Casas.sav")
			F["WCasa01"]>>WCasa01;F["WCasa02"]>>WCasa02
			F["WCasa03"]>>WCasa03;F["WCasa04"]>>WCasa04
			F["WCasa05"]>>WCasa05;F["WCasa06"]>>WCasa06
			F["WCasa07"]>>WCasa07;F["WCasa08"]>>WCasa08
			F["WCasa09"]>>WCasa09;F["WCasa10"]>>WCasa10
			F["WCasa11"]>>WCasa11;F["WCasa12"]>>WCasa12
			F["WCasa13"]>>WCasa13;F["WCasa14"]>>WCasa14
			F["WCasa15"]>>WCasa15;F["WCasa16"]>>WCasa16
			F["WCasa17"]>>WCasa17;F["WCasa18"]>>WCasa18
			F["WCasa19"]>>WCasa19;F["WCasa20"]>>WCasa20
			F["WCasa21"]>>WCasa21;F["WCasa22"]>>WCasa22
			F["WCasa23"]>>WCasa23;F["WCasa24"]>>WCasa24
			F["WCasa25"]>>WCasa25;F["WCasa26"]>>WCasa26
			F["WCasa27"]>>WCasa27
			//Caso n exista nada dentro das variaveis ou na .sav, crie.
		if(!WCasa01) WCasa01=new/Casa
		if(!WCasa02) WCasa02=new/Casa
		if(!WCasa03) WCasa03=new/Casa
		if(!WCasa04) WCasa04=new/Casa
		if(!WCasa05) WCasa05=new/Casa
		if(!WCasa06) WCasa06=new/Casa
		if(!WCasa07) WCasa07=new/Casa
		if(!WCasa08) WCasa08=new/Casa
		if(!WCasa09) WCasa09=new/Casa
		if(!WCasa10) WCasa10=new/Casa
		if(!WCasa11) WCasa11=new/Casa
		if(!WCasa12) WCasa12=new/Casa
		if(!WCasa13) WCasa13=new/Casa
		if(!WCasa14) WCasa14=new/Casa
		if(!WCasa15) WCasa15=new/Casa
		if(!WCasa16) WCasa16=new/Casa
		if(!WCasa17) WCasa17=new/Casa
		if(!WCasa18) WCasa18=new/Casa
		if(!WCasa19) WCasa19=new/Casa
		if(!WCasa20) WCasa20=new/Casa
		if(!WCasa21) WCasa21=new/Casa
		if(!WCasa22) WCasa22=new/Casa
		if(!WCasa23) WCasa23=new/Casa
		if(!WCasa24) WCasa24=new/Casa
		if(!WCasa25) WCasa25=new/Casa
		if(!WCasa26) WCasa26=new/Casa
		if(!WCasa27) WCasa27=new/Casa

//---1 house--------------------


turf/Entrada_Casa_1
	icon=""
	Enter(mob/M)
		if(M.client)
			if(WCasa01:donokey==M.key) M.loc=locate(/turf/Saida_Casa_1)
			else if(M.key in WCasa01:convidados) M.loc=locate(/turf/Saida_Casa_1)
			else  alert("Você não é um convidado. Esta casa é propriedade de [WCasa01:dono]")
	verb
		Comprar_Casa()
//			//set category = "Casa"
			set src in oview(2)
			if(DuasCasas(usr)==1) {alert("Você ja tem uma casa !");return}
			if(WCasa01:donokey=="Sem")
				if(usr.Yen>=2000000)
					usr.Yen-=2000000
					WCasa01:dono=usr.name
					WCasa01:donokey=usr.key
					usr.donocasa01=1
					usr<<"Você comprou a casa!"
				else
					alert("Você não tem 2.000.000 Yens")
			else
				usr<<"Não pode comprar essa casa, ela pertence a [WCasa01:dono]"

	verb
		Convidar_Alguem()
			set src in oview(2)
//			//set category = "Casa"
			if(WCasa01:donokey==usr.key)

				var/list/a=new/list
				for(var/mob/M) if(M.client) a+=M
				var/mob/B=input("Quem vai ter acesso a sua casa ?") in a +list("Cancelar")

				if(!B||B=="Cancelar") return
				else
					WCasa01:convidados+=B.key
					usr<<"Você convidou o responsavel pela key [B]!"
					B<<"Você foi convidado por [usr]"
			else
				usr<<"Você não é o dono dessa casa"
	verb
		Expulsar_Alguem()
//			//set category = "Casa"
			set src in oview(2)
			if(WCasa01:donokey==usr.key)

				var/B=input("Quem vai perder o acesso a sua casa ?") in WCasa01:convidados +list("Cancelar")

				if(!B||B=="Cancelar") return
				WCasa01:convidados-=B

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
			set src in oview(2)
			//set category = "Casa"
			if(WCasa01:donokey==usr.key||usr.ADM==1)
				WCasa01:dono="Sem"
				WCasa01:donokey="Sem"
				usr.Yen+=500000
				WCasa01=new/Casa
				usr.donocasa01=0
				usr<<"Você vendeu a casa!"
			else
				usr<<"Você não é o dono dessa casa"

turf/Saida_Casa_1
	icon=""
	Enter(mob/M)
		if(M.client) M.loc=locate(/turf/Entrada_Casa_1)


//---2 house--------------------


turf/Entrada_Casa_2
	icon=""
	Enter(mob/M)
		if(M.client)
			if(WCasa02:donokey==M.key) M.loc=locate(/turf/Saida_Casa_2)
			else if(M.key in WCasa02:convidados) M.loc=locate(/turf/Saida_Casa_2)
			else  alert("Você não é um convidado. Esta casa é propriedade de [WCasa02:dono]")
	verb
		Comprar_Casa()
			//set category = "Casa"
			set src in oview(2)
			if(DuasCasas(usr)==1) {alert("Você ja tem uma casa !");return}
			if(WCasa02:donokey=="Sem")
				if(usr.Yen>=2000000)
					usr.Yen-=2000000
					WCasa02:dono=usr.name
					WCasa02:donokey=usr.key
					usr.donocasa02=1
					usr<<"Você comprou a casa!"
				else
					alert("Você não tem 2.000.000 Yens")
	verb
		Convidar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa02:donokey==usr.key)

				var/list/a=new/list
				for(var/mob/M) if(M.client) a+=M
				var/mob/B=input("Quem vai ter acesso a sua casa ?") in a +list("Cancelar")

				if(!B||B=="Cancelar") return
				else
					WCasa02:convidados+=B.key
					usr<<"Você convidou o responsavel pela key [B]!"
					B<<"Você foi convidado por [usr]"
			else
				usr<<"Não pode comprar essa casa, ela pertence a [WCasa02:dono]"

	verb
		Expulsar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa02:donokey==usr.key)

				var/B=input("Quem vai perder o acesso a sua casa ?") in WCasa02:convidados +list("Cancelar")

				if(!B||B=="Cancelar") return
				WCasa02:convidados-=B

				var/mob/S
				for(var/mob/Z) if(Z.client&&Z.key==B) S=Z
				if(S)
					usr<<"Você expulsou o [S]"
					S<<"Você foi expulso por [usr]"
				else
					usr<<"Você expulsou o dono da Key: [B]!"
			else
				usr<<"Você não é o dono dessa casa"

		Vender_Casa()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa02:donokey==usr.key||usr.ADM==1)
				WCasa02:dono="Sem"
				WCasa02:donokey="Sem"
				usr.Yen+=500000
				WCasa02=new/Casa
				usr.donocasa02=0
				usr<<"Você vendeu a casa!"



turf/Saida_Casa_2
	icon=""
	Enter(mob/M)
		if(M.client) M.loc=locate(/turf/Entrada_Casa_2)

//---3 house--------------------


turf/Entrada_Casa_3
	icon=""
	Enter(mob/M)
		if(M.client)
			if(WCasa03:donokey==M.key) M.loc=locate(/turf/Saida_Casa_3)
			else if(M.key in WCasa03:convidados) M.loc=locate(/turf/Saida_Casa_3)
			else  alert("Você não é um convidado. Esta casa é propriedade de [WCasa03:dono]")
	verb
		Comprar_Casa()
			//set category = "Casa"
			set src in oview(2)
			if(DuasCasas(usr)==1) {alert("Você ja tem uma casa !");return}
			if(WCasa03:donokey=="Sem")
				if(usr.Yen>=2000000)
					usr.Yen-=2000000
					WCasa03:dono=usr.name
					WCasa03:donokey=usr.key
					usr.donocasa03=1
					usr<<"Você comprou a casa!"
				else
					alert("Você não tem 2.000.000 Yens")
			else
				usr<<"Não pode comprar essa casa, ela pertence a [WCasa03:dono]"

	verb
		Convidar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa03:donokey==usr.key)

				var/list/a=new/list
				for(var/mob/M) if(M.client) a+=M
				var/mob/B=input("Quem vai ter acesso a sua casa ?") in a +list("Cancelar")

				if(!B||B=="Cancelar") return
				else
					WCasa03:convidados+=B.key
					usr<<"Você convidou o responsavel pela key [B]!"
					B<<"Você foi convidado por [usr]"
			else
				usr<<"Você não é o dono dessa casa"
	verb
		Expulsar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa03:donokey==usr.key)

				var/B=input("Quem vai perder o acesso a sua casa ?") in WCasa03:convidados +list("Cancelar")

				if(!B||B=="Cancelar") return
				WCasa03:convidados-=B

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
			if(WCasa03:donokey==usr.key||usr.ADM==1)
				WCasa03:dono="Sem"
				WCasa03:donokey="Sem"
				usr.Yen+=500000
				WCasa03=new/Casa
				usr.donocasa03=0
				usr<<"Você vendeu a casa!"



turf/Saida_Casa_3
	icon=""
	Enter(mob/M)
		if(M.client) M.loc=locate(/turf/Entrada_Casa_3)

//---4 house--------------------


turf/Entrada_Casa_4
	icon=""
	Enter(mob/M)
		if(M.client)
			if(WCasa04:donokey==M.key) M.loc=locate(/turf/Saida_Casa_4)
			else if(M.key in WCasa04:convidados) M.loc=locate(/turf/Saida_Casa_4)
			else  alert("Você não é um convidado. Esta casa é propriedade de [WCasa04:dono]")
	verb
		Comprar_Casa()
			//set category = "Casa"
			set src in oview(2)
			if(DuasCasas(usr)==1) {alert("Você ja tem uma casa !");return}
			if(WCasa04:donokey=="Sem")
				if(usr.Yen>=2000000)
					usr.Yen-=2000000
					WCasa04:dono=usr.name
					WCasa04:donokey=usr.key
					usr.donocasa04=1
					usr<<"Você comprou a casa!"
				else
					alert("Você não tem 2.000.000 Yens")
			else
				usr<<"Não pode comprar essa casa, ela pertence a [WCasa04:dono]"

	verb
		Convidar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa04:donokey==usr.key)

				var/list/a=new/list
				for(var/mob/M) if(M.client) a+=M
				var/mob/B=input("Quem vai ter acesso a sua casa ?") in a +list("Cancelar")

				if(!B||B=="Cancelar") return
				else
					WCasa04:convidados+=B.key
					usr<<"Você convidou o responsavel pela key [B]!"
					B<<"Você foi convidado por [usr]"
			else
				usr<<"Você não é o dono dessa casa"
	verb
		Expulsar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa04:donokey==usr.key)

				var/B=input("Quem vai perder o acesso a sua casa ?") in WCasa04:convidados +list("Cancelar")

				if(!B||B=="Cancelar") return
				WCasa04:convidados-=B

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
			if(WCasa04:donokey==usr.key||usr.ADM==1)
				WCasa04:dono="Sem"
				WCasa04:donokey="Sem"
				usr.Yen+=500000
				WCasa04=new/Casa
				usr.donocasa04=0
				usr<<"Você vendeu a casa!"
			else
				usr<<"Você não é o dono dessa casa"



turf/Saida_Casa_4
	icon=""
	Enter(mob/M)
		if(M.client) M.loc=locate(/turf/Entrada_Casa_4)

//---5 house--------------------


turf/Entrada_Casa_5
	icon=""
	Enter(mob/M)
		if(M.client)
			if(WCasa05:donokey==M.key) M.loc=locate(/turf/Saida_Casa_5)
			else if(M.key in WCasa05:convidados) M.loc=locate(/turf/Saida_Casa_5)
			else  alert("Você não é um convidado. Esta casa é propriedade de [WCasa05:dono]")
	verb
		Comprar_Casa()
			//set category = "Casa"
			set src in oview(2)
			if(DuasCasas(usr)==1) {alert("Você ja tem uma casa !");return}
			if(WCasa05:donokey=="Sem")
				if(usr.Yen>=2000000)
					usr.Yen-=2000000
					WCasa05:dono=usr.name
					WCasa05:donokey=usr.key
					usr.donocasa05=1
					usr<<"Você comprou a casa!"
				else
					alert("Você não tem 2.000.000 Yens")
			else
				usr<<"Não pode comprar essa casa, ela pertence a [WCasa05:dono]"
	verb
		Convidar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa05:donokey==usr.key)

				var/list/a=new/list
				for(var/mob/M) if(M.client) a+=M
				var/mob/B=input("Quem vai ter acesso a sua casa ?") in a +list("Cancelar")

				if(!B||B=="Cancelar") return
				else
					WCasa05:convidados+=B.key
					usr<<"Você convidou o responsavel pela key [B]!"
					B<<"Você foi convidado por [usr]"
			else
				usr<<"Você não é o dono dessa casa"
	verb
		Expulsar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa05:donokey==usr.key)

				var/B=input("Quem vai perder o acesso a sua casa ?") in WCasa05:convidados +list("Cancelar")

				if(!B||B=="Cancelar") return
				WCasa05:convidados-=B

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
			if(WCasa05:donokey==usr.key||usr.ADM==1)
				WCasa05:dono="Sem"
				WCasa05:donokey="Sem"
				usr.Yen+=500000
				WCasa05=new/Casa
				usr.donocasa05=0
				usr<<"Você vendeu a casa!"
			else
				usr<<"Você não é o dono dessa casa"



turf/Saida_Casa_5
	icon=""
	Enter(mob/M)
		if(M.client) M.loc=locate(/turf/Entrada_Casa_5)

//---6 house--------------------


turf/Entrada_Casa_6
	icon=""
	Enter(mob/M)
		if(M.client)
			if(WCasa06:donokey==M.key) M.loc=locate(/turf/Saida_Casa_6)
			else if(M.key in WCasa06:convidados) M.loc=locate(/turf/Saida_Casa_6)
			else  alert("Você não é um convidado. Esta casa é propriedade de [WCasa06:dono]")
	verb
		Comprar_Casa()
			//set category = "Casa"
			set src in oview(2)
			if(DuasCasas(usr)==1) {alert("Você ja tem uma casa !");return}
			if(WCasa06:donokey=="Sem")
				if(usr.Yen>=2000000)
					usr.Yen-=2000000
					WCasa06:dono=usr.name
					WCasa06:donokey=usr.key
					usr.donocasa06=1
					usr<<"Você comprou a casa!"
				else
					alert("Você não tem 2.000.000 Yens")
			else
				usr<<"Não pode comprar essa casa, ela pertence a [WCasa06:dono]"
	verb
		Convidar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa06:donokey==usr.key)

				var/list/a=new/list
				for(var/mob/M) if(M.client) a+=M
				var/mob/B=input("Quem vai ter acesso a sua casa ?") in a +list("Cancelar")

				if(!B||B=="Cancelar") return
				else
					WCasa06:convidados+=B.key
					usr<<"Você convidou o responsavel pela key [B]!"
					B<<"Você foi convidado por [usr]"
			else
				usr<<"Você não é o dono dessa casa"
	verb
		Expulsar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa06:donokey==usr.key)

				var/B=input("Quem vai perder o acesso a sua casa ?") in WCasa06:convidados +list("Cancelar")

				if(!B||B=="Cancelar") return
				WCasa06:convidados-=B

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
			if(WCasa06:donokey==usr.key||usr.ADM==1)
				WCasa06:dono="Sem"
				WCasa06:donokey="Sem"
				usr.Yen+=500000
				WCasa06=new/Casa
				usr.donocasa06=0
				usr<<"Você vendeu a casa!"
			else
				usr<<"Você não é o dono dessa casa"



turf/Saida_Casa_6
	icon=""
	Enter(mob/M)
		if(M.client) M.loc=locate(/turf/Entrada_Casa_6)

//---7 house--------------------


turf/Entrada_Casa_7
	icon=""
	Enter(mob/M)
		if(M.client)
			if(WCasa07:donokey==M.key) M.loc=locate(/turf/Saida_Casa_7)
			else if(M.key in WCasa07:convidados) M.loc=locate(/turf/Saida_Casa_7)
			else  alert("Você não é um convidado. Esta casa é propriedade de [WCasa07:dono]")
	verb
		Comprar_Casa()
			//set category = "Casa"
			set src in oview(2)
			if(DuasCasas(usr)==1) {alert("Você ja tem uma casa !");return}
			if(WCasa07:donokey=="Sem")
				if(usr.Yen>=2000000)
					usr.Yen-=2000000
					WCasa07:dono=usr.name
					WCasa07:donokey=usr.key
					usr.donocasa07=1
					usr<<"Você comprou a casa!"
				else
					alert("Você não tem 2.000.000 Yens")
			else
				usr<<"Não pode comprar essa casa, ela pertence a [WCasa07:dono]"
	verb
		Convidar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa07:donokey==usr.key)

				var/list/a=new/list
				for(var/mob/M) if(M.client) a+=M
				var/mob/B=input("Quem vai ter acesso a sua casa ?") in a +list("Cancelar")

				if(!B||B=="Cancelar") return
				else
					WCasa07:convidados+=B.key
					usr<<"Você convidou o responsavel pela key [B]!"
					B<<"Você foi convidado por [usr]"
			else
				usr<<"Você não é o dono dessa casa"
	verb
		Expulsar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa07:donokey==usr.key)

				var/B=input("Quem vai perder o acesso a sua casa ?") in WCasa07:convidados +list("Cancelar")

				if(!B||B=="Cancelar") return
				WCasa07:convidados-=B

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
			if(WCasa07:donokey==usr.key||usr.ADM==1)
				WCasa07:dono="Sem"
				WCasa07:donokey="Sem"
				usr.Yen+=500000
				WCasa07=new/Casa
				usr.donocasa07=0
				usr<<"Você vendeu a casa!"
			else
				usr<<"Você não é o dono dessa casa"



turf/Saida_Casa_7
	icon=""
	Enter(mob/M)
		if(M.client) M.loc=locate(/turf/Entrada_Casa_7)

//---8 house--------------------


turf/Entrada_Casa_8
	icon=""
	Enter(mob/M)
		if(M.client)
			if(WCasa08:donokey==M.key) M.loc=locate(/turf/Saida_Casa_8)
			else if(M.key in WCasa08:convidados) M.loc=locate(/turf/Saida_Casa_8)
			else  alert("Você não é um convidado. Esta casa é propriedade de [WCasa08:dono]")
	verb
		Comprar_Casa()
			//set category = "Casa"
			set src in oview(2)
			if(DuasCasas(usr)==1) {alert("Você ja tem uma casa !");return}
			if(WCasa08:donokey=="Sem")
				if(usr.Yen>=2000000)
					usr.Yen-=2000000
					WCasa08:dono=usr.name
					WCasa08:donokey=usr.key
					usr.donocasa08=1
					usr<<"Você comprou a casa!"
				else
					alert("Você não tem 2.000.000 Yens")
			else
				usr<<"Não pode comprar essa casa, ela pertence a [WCasa08:dono]"
	verb
		Convidar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa08:donokey==usr.key)

				var/list/a=new/list
				for(var/mob/M) if(M.client) a+=M
				var/mob/B=input("Quem vai ter acesso a sua casa ?") in a +list("Cancelar")

				if(!B||B=="Cancelar") return
				else
					WCasa08:convidados+=B.key
					usr<<"Você convidou o responsavel pela key [B]!"
					B<<"Você foi convidado por [usr]"
			else
				usr<<"Você não é o dono dessa casa"
	verb
		Expulsar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa08:donokey==usr.key)

				var/B=input("Quem vai perder o acesso a sua casa ?") in WCasa08:convidados +list("Cancelar")

				if(!B||B=="Cancelar") return
				WCasa08:convidados-=B

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
			if(WCasa08:donokey==usr.key||usr.ADM==1)
				WCasa08:dono="Sem"
				WCasa08:donokey="Sem"
				usr.Yen+=500000
				WCasa08=new/Casa
				usr.donocasa08=0
				usr<<"Você vendeu a casa!"
			else
				usr<<"Você não é o dono dessa casa"



turf/Saida_Casa_8
	icon=""
	Enter(mob/M)
		if(M.client) M.loc=locate(/turf/Entrada_Casa_8)

//---9 house--------------------


turf/Entrada_Casa_9
	icon=""
	Enter(mob/M)
		if(M.client)
			if(WCasa09:donokey==M.key) M.loc=locate(/turf/Saida_Casa_9)
			else if(M.key in WCasa09:convidados) M.loc=locate(/turf/Saida_Casa_9)
			else  alert("Você não é um convidado. Esta casa é propriedade de [WCasa09:dono]")
	verb
		Comprar_Casa()
			//set category = "Casa"
			set src in oview(2)
			if(DuasCasas(usr)==1) {alert("Você ja tem uma casa !");return}
			if(WCasa09:donokey=="Sem")
				if(usr.Yen>=1000000)
					usr.Yen-=1000000
					WCasa09:dono=usr.name
					WCasa09:donokey=usr.key
					usr.donocasa09=1
					usr<<"Você comprou a casa!"
				else
					alert("Você não tem 1.000.000 Yens")
			else
				usr<<"Não pode comprar essa casa, ela pertence a [WCasa09:dono]"
	verb
		Convidar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa09:donokey==usr.key)

				var/list/a=new/list
				for(var/mob/M) if(M.client) a+=M
				var/mob/B=input("Quem vai ter acesso a sua casa ?") in a +list("Cancelar")

				if(!B||B=="Cancelar") return
				else
					WCasa09:convidados+=B.key
					usr<<"Você convidou o responsavel pela key [B]!"
					B<<"Você foi convidado por [usr]"
			else
				usr<<"Você não é o dono dessa casa"
	verb
		Expulsar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa09:donokey==usr.key)

				var/B=input("Quem vai perder o acesso a sua casa ?") in WCasa09:convidados +list("Cancelar")

				if(!B||B=="Cancelar") return
				WCasa09:convidados-=B

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
			if(WCasa09:donokey==usr.key||usr.ADM==1)
				WCasa09:dono="Sem"
				WCasa09:donokey="Sem"
				usr.Yen+=250000
				WCasa09=new/Casa
				usr.donocasa09=0
				usr<<"Você vendeu a casa!"
			else
				usr<<"Você não é o dono dessa casa"



turf/Saida_Casa_9
	icon=""
	Enter(mob/M)
		if(M.client) M.loc=locate(/turf/Entrada_Casa_9)

//---10 house--------------------


turf/Entrada_Casa_10
	icon=""
	Enter(mob/M)
		if(M.client)
			if(WCasa10:donokey==M.key) M.loc=locate(/turf/Saida_Casa_10)
			else if(M.key in WCasa10:convidados) M.loc=locate(/turf/Saida_Casa_10)
			else  alert("Você não é um convidado. Esta casa é propriedade de [WCasa10:dono]")
	verb
		Comprar_Casa()
			//set category = "Casa"
			set src in oview(2)
			if(DuasCasas(usr)==1) {alert("Você ja tem uma casa !");return}
			if(WCasa10:donokey=="Sem")
				if(usr.Yen>=1000000)
					usr.Yen-=1000000
					WCasa10:dono=usr.name
					WCasa10:donokey=usr.key
					usr.donocasa10=1
					usr<<"Você comprou a casa!"
				else
					alert("Você não tem 1.000.000 Yens")
			else
				usr<<"Não pode comprar essa casa, ela pertence a [WCasa10:dono]"
	verb
		Convidar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa10:donokey==usr.key)

				var/list/a=new/list
				for(var/mob/M) if(M.client) a+=M
				var/mob/B=input("Quem vai ter acesso a sua casa ?") in a +list("Cancelar")

				if(!B||B=="Cancelar") return
				else
					WCasa10:convidados+=B.key
					usr<<"Você convidou o responsavel pela key [B]!"
					B<<"Você foi convidado por [usr]"
			else
				usr<<"Você não é o dono dessa casa"
	verb
		Expulsar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa10:donokey==usr.key)

				var/B=input("Quem vai perder o acesso a sua casa ?") in WCasa10:convidados +list("Cancelar")

				if(!B||B=="Cancelar") return
				WCasa10:convidados-=B

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
			if(WCasa10:donokey==usr.key||usr.ADM==1)
				WCasa10:dono="Sem"
				WCasa10:donokey="Sem"
				usr.Yen+=250000
				WCasa10=new/Casa
				usr.donocasa10=0
				usr<<"Você vendeu a casa!"
			else
				usr<<"Você não é o dono dessa casa"



turf/Saida_Casa_10
	icon=""
	Enter(mob/M)
		if(M.client) M.loc=locate(/turf/Entrada_Casa_10)

//---11 house--------------------


turf/Entrada_Casa_11
	icon=""
	Enter(mob/M)
		if(M.client)
			if(WCasa11:donokey==M.key) M.loc=locate(/turf/Saida_Casa_11)
			else if(M.key in WCasa11:convidados) M.loc=locate(/turf/Saida_Casa_11)
			else  alert("Você não é um convidado. Esta casa é propriedade de [WCasa11:dono]")
	verb
		Comprar_Casa()
			//set category = "Casa"
			set src in oview(2)
			if(DuasCasas(usr)==1) {alert("Você ja tem uma casa !");return}
			if(WCasa11:donokey=="Sem")
				if(usr.Yen>=1000000)
					usr.Yen-=1000000
					WCasa11:dono=usr.name
					WCasa11:donokey=usr.key
					usr.donocasa11=1
					usr<<"Você comprou a casa!"
				else
					alert("Você não tem 1.000.000 Yens")
			else
				usr<<"Não pode comprar essa casa, ela pertence a [WCasa11:dono]"
	verb
		Convidar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa11:donokey==usr.key)

				var/list/a=new/list
				for(var/mob/M) if(M.client) a+=M
				var/mob/B=input("Quem vai ter acesso a sua casa ?") in a +list("Cancelar")

				if(!B||B=="Cancelar") return
				else
					WCasa11:convidados+=B.key
					usr<<"Você convidou o responsavel pela key [B]!"
					B<<"Você foi convidado por [usr]"
			else
				usr<<"Você não é o dono dessa casa"
	verb
		Expulsar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa11:donokey==usr.key)

				var/B=input("Quem vai perder o acesso a sua casa ?") in WCasa11:convidados +list("Cancelar")

				if(!B||B=="Cancelar") return
				WCasa11:convidados-=B

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
			if(WCasa11:donokey==usr.key||usr.ADM==1)
				WCasa11:dono="Sem"
				WCasa11:donokey="Sem"
				usr.Yen+=250000
				WCasa11=new/Casa
				usr.donocasa11=0
				usr<<"Você vendeu a casa!"
			else
				usr<<"Você não é o dono dessa casa"



turf/Saida_Casa_11
	icon=""
	Enter(mob/M)
		if(M.client) M.loc=locate(/turf/Entrada_Casa_11)

//---12 house--------------------


turf/Entrada_Casa_12
	icon=""
	Enter(mob/M)
		if(M.client)
			//set category = "Casa"
			if(WCasa12:donokey==M.key) M.loc=locate(/turf/Saida_Casa_12)
			else if(M.key in WCasa12:convidados) M.loc=locate(/turf/Saida_Casa_12)
			else  alert("Você não é um convidado. Esta casa é propriedade de [WCasa12:dono]")
	verb
		Comprar_Casa()
			//set category = "Casa"
			set src in oview(2)
			if(DuasCasas(usr)==1) {alert("Você ja tem uma casa !");return}
			if(WCasa12:donokey=="Sem")
				if(usr.Yen>=1000000)
					usr.Yen-=1000000
					WCasa12:dono=usr.name
					WCasa12:donokey=usr.key
					usr.donocasa12=1
					usr<<"Você comprou a casa!"
				else
					alert("Você não tem 1.000.000 Yens")
			else
				usr<<"Não pode comprar essa casa, ela pertence a [WCasa12:dono]"
	verb
		Convidar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa12:donokey==usr.key)

				var/list/a=new/list
				for(var/mob/M) if(M.client) a+=M
				var/mob/B=input("Quem vai ter acesso a sua casa ?") in a +list("Cancelar")

				if(!B||B=="Cancelar") return
				else
					WCasa12:convidados+=B.key
					usr<<"Você convidou o responsavel pela key [B]!"
					B<<"Você foi convidado por [usr]"
			else
				usr<<"Você não é o dono dessa casa"
	verb
		Expulsar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa12:donokey==usr.key)

				var/B=input("Quem vai perder o acesso a sua casa ?") in WCasa12:convidados +list("Cancelar")

				if(!B||B=="Cancelar") return
				WCasa12:convidados-=B

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
			if(WCasa12:donokey==usr.key||usr.ADM==1)
				WCasa12:dono="Sem"
				WCasa12:donokey="Sem"
				usr.Yen+=250000
				WCasa12=new/Casa
				usr.donocasa12=0
				usr<<"Você vendeu a casa!"
			else
				usr<<"Você não é o dono dessa casa"



turf/Saida_Casa_12
	icon=""
	Enter(mob/M)
		if(M.client) M.loc=locate(/turf/Entrada_Casa_12)

//---13 house--------------------


turf/Entrada_Casa_13
	icon=""
	Enter(mob/M)
		if(M.client)
			if(WCasa13:donokey==M.key) M.loc=locate(/turf/Saida_Casa_13)
			else if(M.key in WCasa13:convidados) M.loc=locate(/turf/Saida_Casa_13)
			else  alert("Você não é um convidado. Esta casa é propriedade de [WCasa13:dono]")
	verb
		Comprar_Casa()
			//set category = "Casa"
			set src in oview(2)
			if(DuasCasas(usr)==1) {alert("Você ja tem uma casa !");return}
			if(WCasa13:donokey=="Sem")
				if(usr.Yen>=1000000)
					usr.Yen-=1000000
					WCasa13:dono=usr.name
					WCasa13:donokey=usr.key
					usr.donocasa13=1
					usr<<"Você comprou a casa!"
				else
					alert("Você não tem 1.000.000 Yens")
			else
				usr<<"Não pode comprar essa casa, ela pertence a [WCasa13:dono]"
	verb
		Convidar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa13:donokey==usr.key)

				var/list/a=new/list
				for(var/mob/M) if(M.client) a+=M
				var/mob/B=input("Quem vai ter acesso a sua casa ?") in a +list("Cancelar")

				if(!B||B=="Cancelar") return
				else
					WCasa13:convidados+=B.key
					usr<<"Você convidou o responsavel pela key [B]!"
					B<<"Você foi convidado por [usr]"
			else
				usr<<"Você não é o dono dessa casa"
	verb
		Expulsar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa13:donokey==usr.key)

				var/B=input("Quem vai perder o acesso a sua casa ?") in WCasa13:convidados +list("Cancelar")

				if(!B||B=="Cancelar") return
				WCasa13:convidados-=B

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
			if(WCasa13:donokey==usr.key||usr.ADM==1)
				WCasa13:dono="Sem"
				WCasa13:donokey="Sem"
				usr.Yen+=250000
				WCasa13=new/Casa
				usr.donocasa13=0
				usr<<"Você vendeu a casa!"
			else
				usr<<"Você não é o dono dessa casa"



turf/Saida_Casa_13
	icon=""
	Enter(mob/M)
		if(M.client) M.loc=locate(/turf/Entrada_Casa_13)

//---14 house--------------------


turf/Entrada_Casa_14
	icon=""
	Enter(mob/M)
		if(M.client)
			if(WCasa14:donokey==M.key) M.loc=locate(/turf/Saida_Casa_14)
			else if(M.key in WCasa14:convidados) M.loc=locate(/turf/Saida_Casa_14)
			else  alert("Você não é um convidado. Esta casa é propriedade de [WCasa14:dono]")
	verb
		Comprar_Casa()
			//set category = "Casa"
			set src in oview(2)
			if(DuasCasas(usr)==1) {alert("Você ja tem uma casa !");return}
			if(WCasa14:donokey=="Sem")
				if(usr.Yen>=1000000)
					usr.Yen-=1000000
					WCasa14:dono=usr.name
					WCasa14:donokey=usr.key
					usr.donocasa14=1
					usr<<"Você comprou a casa!"
				else
					alert("Você não tem 1.000.000 Yens")
			else
				usr<<"Não pode comprar essa casa, ela pertence a [WCasa14:dono]"
	verb
		Convidar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa14:donokey==usr.key)

				var/list/a=new/list
				for(var/mob/M) if(M.client) a+=M
				var/mob/B=input("Quem vai ter acesso a sua casa ?") in a +list("Cancelar")

				if(!B||B=="Cancelar") return
				else
					WCasa14:convidados+=B.key
					usr<<"Você convidou o responsavel pela key [B]!"
					B<<"Você foi convidado por [usr]"
			else
				usr<<"Você não é o dono dessa casa"
	verb
		Expulsar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa14:donokey==usr.key)

				var/B=input("Quem vai perder o acesso a sua casa ?") in WCasa14:convidados +list("Cancelar")

				if(!B||B=="Cancelar") return
				WCasa14:convidados-=B

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
			if(WCasa14:donokey==usr.key||usr.ADM==1)
				WCasa14:dono="Sem"
				WCasa14:donokey="Sem"
				usr.Yen+=250000
				WCasa14=new/Casa
				usr.donocasa14=0
				usr<<"Você vendeu a casa!"
			else
				usr<<"Você não é o dono dessa casa"



turf/Saida_Casa_14
	icon=""
	Enter(mob/M)
		if(M.client) M.loc=locate(/turf/Entrada_Casa_14)

//---15 house--------------------


turf/Entrada_Casa_15
	icon=""
	Enter(mob/M)
		if(M.client)
			if(WCasa15:donokey==M.key) M.loc=locate(/turf/Saida_Casa_15)
			else if(M.key in WCasa15:convidados) M.loc=locate(/turf/Saida_Casa_15)
			else  alert("Você não é um convidado. Esta casa é propriedade de [WCasa15:dono]")
	verb
		Comprar_Casa()
			//set category = "Casa"
			set src in oview(2)
			if(DuasCasas(usr)==1) {alert("Você ja tem uma casa !");return}
			if(WCasa15:donokey=="Sem")
				if(usr.Yen>=1000000)
					usr.Yen-=1000000
					WCasa15:dono=usr.name
					WCasa15:donokey=usr.key
					usr.donocasa15=1
					usr<<"Você comprou a casa!"
				else
					alert("Você não tem 1.000.000 Yens")
			else
				usr<<"Não pode comprar essa casa, ela pertence a [WCasa15:dono]"
	verb
		Convidar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa15:donokey==usr.key)

				var/list/a=new/list
				for(var/mob/M) if(M.client) a+=M
				var/mob/B=input("Quem vai ter acesso a sua casa ?") in a +list("Cancelar")

				if(!B||B=="Cancelar") return
				else
					WCasa15:convidados+=B.key
					usr<<"Você convidou o responsavel pela key [B]!"
					B<<"Você foi convidado por [usr]"
			else
				usr<<"Você não é o dono dessa casa"
	verb
		Expulsar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa15:donokey==usr.key)

				var/B=input("Quem vai perder o acesso a sua casa ?") in WCasa15:convidados +list("Cancelar")

				if(!B||B=="Cancelar") return
				WCasa15:convidados-=B

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
			if(WCasa15:donokey==usr.key||usr.ADM==1)
				WCasa15:dono="Sem"
				WCasa15:donokey="Sem"
				usr.Yen+=250000
				WCasa15=new/Casa
				usr.donocasa15=0
				usr<<"Você vendeu a casa!"
			else
				usr<<"Você não é o dono dessa casa"



turf/Saida_Casa_15
	icon=""
	Enter(mob/M)
		if(M.client) M.loc=locate(/turf/Entrada_Casa_15)

//---16 house--------------------


turf/Entrada_Casa_16
	icon=""
	Enter(mob/M)
		if(M.client)
			if(WCasa16:donokey==M.key) M.loc=locate(/turf/Saida_Casa_16)
			else if(M.key in WCasa16:convidados) M.loc=locate(/turf/Saida_Casa_16)
			else  alert("Você não é um convidado. Esta casa é propriedade de [WCasa16:dono]")
	verb
		Comprar_Casa()
			//set category = "Casa"
			set src in oview(2)
			if(DuasCasas(usr)==1) {alert("Você ja tem uma casa !");return}
			if(WCasa16:donokey=="Sem")
				if(usr.Yen>=1000000)
					usr.Yen-=1000000
					WCasa16:dono=usr.name
					WCasa16:donokey=usr.key
					usr.donocasa16=1
					usr<<"Você comprou a casa!"
				else
					alert("Você não tem 1.000.000 Yens")
			else
				usr<<"Não pode comprar essa casa, ela pertence a [WCasa16:dono]"
	verb
		Convidar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa16:donokey==usr.key)

				var/list/a=new/list
				for(var/mob/M) if(M.client) a+=M
				var/mob/B=input("Quem vai ter acesso a sua casa ?") in a +list("Cancelar")

				if(!B||B=="Cancelar") return
				else
					WCasa16:convidados+=B.key
					usr<<"Você convidou o responsavel pela key [B]!"
					B<<"Você foi convidado por [usr]"
			else
				usr<<"Você não é o dono dessa casa"
	verb
		Expulsar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa16:donokey==usr.key)

				var/B=input("Quem vai perder o acesso a sua casa ?") in WCasa16:convidados +list("Cancelar")

				if(!B||B=="Cancelar") return
				WCasa16:convidados-=B

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
			if(WCasa16:donokey==usr.key||usr.ADM==1)
				WCasa16:dono="Sem"
				WCasa16:donokey="Sem"
				usr.Yen+=250000
				WCasa16=new/Casa
				usr.donocasa16=0
				usr<<"Você vendeu a casa!"
			else
				usr<<"Você não é o dono dessa casa"



turf/Saida_Casa_16
	icon=""
	Enter(mob/M)
		if(M.client) M.loc=locate(/turf/Entrada_Casa_16)

//---17 house--------------------


turf/Entrada_Casa_17
	icon=""
	Enter(mob/M)
		if(M.client)
			if(WCasa17:donokey==M.key) M.loc=locate(/turf/Saida_Casa_17)
			else if(M.key in WCasa17:convidados) M.loc=locate(/turf/Saida_Casa_17)
			else  alert("Você não é um convidado. Esta casa é propriedade de [WCasa17:dono]")
	verb
		Comprar_Casa()
			//set category = "Casa"
			set src in oview(2)
			if(DuasCasas(usr)==1) {alert("Você ja tem uma casa !");return}
			if(WCasa17:donokey=="Sem")
				if(usr.Yen>=1000000)
					usr.Yen-=1000000
					WCasa17:dono=usr.name
					WCasa17:donokey=usr.key
					usr.donocasa17=1
					usr<<"Você comprou a casa!"
				else
					alert("Você não tem 1.000.000 Yens")
			else
				usr<<"Não pode comprar essa casa, ela pertence a [WCasa17:dono]"
	verb
		Convidar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa17:donokey==usr.key)

				var/list/a=new/list
				for(var/mob/M) if(M.client) a+=M
				var/mob/B=input("Quem vai ter acesso a sua casa ?") in a +list("Cancelar")

				if(!B||B=="Cancelar") return
				else
					WCasa17:convidados+=B.key
					usr<<"Você convidou o responsavel pela key [B]!"
					B<<"Você foi convidado por [usr]"
			else
				usr<<"Você não é o dono dessa casa"
	verb
		Expulsar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa17:donokey==usr.key)

				var/B=input("Quem vai perder o acesso a sua casa ?") in WCasa17:convidados +list("Cancelar")

				if(!B||B=="Cancelar") return
				WCasa17:convidados-=B

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
			if(WCasa17:donokey==usr.key||usr.ADM==1)
				WCasa17:dono="Sem"
				WCasa17:donokey="Sem"
				usr.Yen+=250000
				WCasa17=new/Casa
				usr.donocasa17=0
				usr<<"Você vendeu a casa!"
			else
				usr<<"Você não é o dono dessa casa"



turf/Saida_Casa_17
	icon=""
	Enter(mob/M)
		if(M.client) M.loc=locate(/turf/Entrada_Casa_17)

//---18 house--------------------


turf/Entrada_Casa_18
	icon=""
	Enter(mob/M)
		if(M.client)
			if(WCasa18:donokey==M.key) M.loc=locate(/turf/Saida_Casa_18)
			else if(M.key in WCasa18:convidados) M.loc=locate(/turf/Saida_Casa_18)
			else  alert("Você não é um convidado. Esta casa é propriedade de [WCasa18:dono]")
	verb
		Comprar_Casa()
			//set category = "Casa"
			set src in oview(2)
			if(DuasCasas(usr)==1) {alert("Você ja tem uma casa !");return}
			if(WCasa18:donokey=="Sem")
				if(usr.Yen>=1000000)
					usr.Yen-=1000000
					WCasa18:dono=usr.name
					WCasa18:donokey=usr.key
					usr.donocasa18=1
					usr<<"Você comprou a casa!"
				else
					alert("Você não tem 1.000.000 Yens")
			else
				usr<<"Não pode comprar essa casa, ela pertence a [WCasa18:dono]"
	verb
		Convidar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa18:donokey==usr.key)

				var/list/a=new/list
				for(var/mob/M) if(M.client) a+=M
				var/mob/B=input("Quem vai ter acesso a sua casa ?") in a +list("Cancelar")

				if(!B||B=="Cancelar") return
				else
					WCasa18:convidados+=B.key
					usr<<"Você convidou o responsavel pela key [B]!"
					B<<"Você foi convidado por [usr]"
			else
				usr<<"Você não é o dono dessa casa"
	verb
		Expulsar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa18:donokey==usr.key)

				var/B=input("Quem vai perder o acesso a sua casa ?") in WCasa18:convidados +list("Cancelar")

				if(!B||B=="Cancelar") return
				WCasa18:convidados-=B

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
			if(WCasa18:donokey==usr.key||usr.ADM==1)
				WCasa18:dono="Sem"
				WCasa18:donokey="Sem"
				usr.Yen+=250000
				WCasa18=new/Casa
				usr.donocasa18=0
				usr<<"Você vendeu a casa!"
			else
				usr<<"Você não é o dono dessa casa"



turf/Saida_Casa_18
	icon=""
	Enter(mob/M)
		if(M.client) M.loc=locate(/turf/Entrada_Casa_18)

//---19 house--------------------


turf/Entrada_Casa_19
	icon=""
	Enter(mob/M)
		if(M.client)
			if(WCasa19:donokey==M.key) M.loc=locate(/turf/Saida_Casa_19)
			else if(M.key in WCasa19:convidados) M.loc=locate(/turf/Saida_Casa_19)
			else  alert("Você não é um convidado. Esta casa é propriedade de [WCasa19:dono]")
	verb
		Comprar_Casa()
			//set category = "Casa"
			set src in oview(2)
			if(DuasCasas(usr)==1) {alert("Você ja tem uma casa !");return}
			if(WCasa19:donokey=="Sem")
				if(usr.Yen>=1000000)
					usr.Yen-=1000000
					WCasa19:dono=usr.name
					WCasa19:donokey=usr.key
					usr.donocasa19=1
					usr<<"Você comprou a casa!"
				else
					alert("Você não tem 1.000.000 Yens")
			else
				usr<<"Não pode comprar essa casa, ela pertence a [WCasa19:dono]"
	verb
		Convidar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa19:donokey==usr.key)

				var/list/a=new/list
				for(var/mob/M) if(M.client) a+=M
				var/mob/B=input("Quem vai ter acesso a sua casa ?") in a +list("Cancelar")

				if(!B||B=="Cancelar") return
				else
					WCasa19:convidados+=B.key
					usr<<"Você convidou o responsavel pela key [B]!"
					B<<"Você foi convidado por [usr]"
			else
				usr<<"Você não é o dono dessa casa"
	verb
		Expulsar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa19:donokey==usr.key)

				var/B=input("Quem vai perder o acesso a sua casa ?") in WCasa19:convidados +list("Cancelar")

				if(!B||B=="Cancelar") return
				WCasa19:convidados-=B

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
			if(WCasa19:donokey==usr.key||usr.ADM==1)
				WCasa19:dono="Sem"
				WCasa19:donokey="Sem"
				usr.Yen+=250000
				WCasa19=new/Casa
				usr.donocasa19=0
				usr<<"Você vendeu a casa!"
			else
				usr<<"Você não é o dono dessa casa"



turf/Saida_Casa_19
	icon=""
	Enter(mob/M)
		if(M.client) M.loc=locate(/turf/Entrada_Casa_19)

//---20 house--------------------


turf/Entrada_Casa_20
	icon=""
	Enter(mob/M)
		if(M.client)
			if(WCasa20:donokey==M.key) M.loc=locate(/turf/Saida_Casa_20)
			else if(M.key in WCasa20:convidados) M.loc=locate(/turf/Saida_Casa_20)
			else  alert("Você não é um convidado. Esta casa é propriedade de [WCasa20:dono]")
	verb
		Comprar_Casa()
			//set category = "Casa"
			set src in oview(2)
			if(DuasCasas(usr)==1) {alert("Você ja tem uma casa !");return}
			if(WCasa20:donokey=="Sem")
				if(usr.Yen>=1000000)
					usr.Yen-=1000000
					WCasa20:dono=usr.name
					WCasa20:donokey=usr.key
					usr.donocasa20=1
					usr<<"Você comprou a casa!"
				else
					alert("Você não tem 1.000.000 Yens")
			else
				usr<<"Não pode comprar essa casa, ela pertence a [WCasa20:dono]"
	verb
		Convidar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa20:donokey==usr.key)

				var/list/a=new/list
				for(var/mob/M) if(M.client) a+=M
				var/mob/B=input("Quem vai ter acesso a sua casa ?") in a +list("Cancelar")

				if(!B||B=="Cancelar") return
				else
					WCasa20:convidados+=B.key
					usr<<"Você convidou o responsavel pela key [B]!"
					B<<"Você foi convidado por [usr]"
			else
				usr<<"Você não é o dono dessa casa"
	verb
		Expulsar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa20:donokey==usr.key)

				var/B=input("Quem vai perder o acesso a sua casa ?") in WCasa20:convidados +list("Cancelar")

				if(!B||B=="Cancelar") return
				WCasa20:convidados-=B

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
			if(WCasa20:donokey==usr.key||usr.ADM==1)
				WCasa20:dono="Sem"
				WCasa20:donokey="Sem"
				usr.Yen+=250000
				WCasa20=new/Casa
				usr.donocasa20=0
				usr<<"Você vendeu a casa!"
			else
				usr<<"Você não é o dono dessa casa"



turf/Saida_Casa_20
	icon=""
	Enter(mob/M)
		if(M.client) M.loc=locate(/turf/Entrada_Casa_20)

//---21 house--------------------


turf/Entrada_Casa_21
	icon=""
	Enter(mob/M)
		if(M.client)
			if(WCasa21:donokey==M.key) M.loc=locate(/turf/Saida_Casa_21)
			else if(M.key in WCasa21:convidados) M.loc=locate(/turf/Saida_Casa_21)
			else  alert("Você não é um convidado. Esta casa é propriedade de [WCasa21:dono]")
	verb
		Comprar_Casa()
			//set category = "Casa"
			set src in oview(2)
			if(DuasCasas(usr)==1) {alert("Você ja tem uma casa !");return}
			if(WCasa21:donokey=="Sem")
				if(usr.Yen>=1000000)
					usr.Yen-=1000000
					WCasa21:dono=usr.name
					WCasa21:donokey=usr.key
					usr.donocasa21=1
					usr<<"Você comprou a casa!"
				else
					alert("Você não tem 1.000.000 Yens")
			else
				usr<<"Não pode comprar essa casa, ela pertence a [WCasa21:dono]"
	verb
		Convidar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa21:donokey==usr.key)

				var/list/a=new/list
				for(var/mob/M) if(M.client) a+=M
				var/mob/B=input("Quem vai ter acesso a sua casa ?") in a +list("Cancelar")

				if(!B||B=="Cancelar") return
				else
					WCasa21:convidados+=B.key
					usr<<"Você convidou o responsavel pela key [B]!"
					B<<"Você foi convidado por [usr]"
			else
				usr<<"Você não é o dono dessa casa"
	verb
		Expulsar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa21:donokey==usr.key)

				var/B=input("Quem vai perder o acesso a sua casa ?") in WCasa21:convidados +list("Cancelar")

				if(!B||B=="Cancelar") return
				WCasa21:convidados-=B

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
			if(WCasa21:donokey==usr.key||usr.ADM==1)
				WCasa21:dono="Sem"
				WCasa21:donokey="Sem"
				usr.Yen+=250000
				WCasa21=new/Casa
				usr.donocasa21=0
				usr<<"Você vendeu a casa!"
			else
				usr<<"Você não é o dono dessa casa"



turf/Saida_Casa_21
	icon=""
	Enter(mob/M)
		if(M.client) M.loc=locate(/turf/Entrada_Casa_21)

//---22 house--------------------


turf/Entrada_Casa_22
	icon=""
	Enter(mob/M)
		if(M.client)
			if(WCasa22:donokey==M.key) M.loc=locate(/turf/Saida_Casa_22)
			else if(M.key in WCasa22:convidados) M.loc=locate(/turf/Saida_Casa_22)
			else  alert("Você não é um convidado. Esta casa é propriedade de [WCasa22:dono]")
	verb
		Comprar_Casa()
			//set category = "Casa"
			set src in oview(2)
			if(DuasCasas(usr)==1) {alert("Você ja tem uma casa !");return}
			if(WCasa22:donokey=="Sem")
				if(usr.Yen>=1000000)
					usr.Yen-=1000000
					WCasa22:dono=usr.name
					WCasa22:donokey=usr.key
					usr.donocasa22=1
					usr<<"Você comprou a casa!"
				else
					alert("Você não tem 1.000.000 Yens")
			else
				usr<<"Não pode comprar essa casa, ela pertence a [WCasa22:dono]"
	verb
		Convidar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa22:donokey==usr.key)

				var/list/a=new/list
				for(var/mob/M) if(M.client) a+=M
				var/mob/B=input("Quem vai ter acesso a sua casa ?") in a +list("Cancelar")

				if(!B||B=="Cancelar") return
				else
					WCasa22:convidados+=B.key
					usr<<"Você convidou o responsavel pela key [B]!"
					B<<"Você foi convidado por [usr]"
			else
				usr<<"Você não é o dono dessa casa"
	verb
		Expulsar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa22:donokey==usr.key)

				var/B=input("Quem vai perder o acesso a sua casa ?") in WCasa22:convidados +list("Cancelar")

				if(!B||B=="Cancelar") return
				WCasa22:convidados-=B

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
			if(WCasa22:donokey==usr.key||usr.ADM==1)
				WCasa22:dono="Sem"
				WCasa22:donokey="Sem"
				usr.Yen+=250000
				WCasa22=new/Casa
				usr.donocasa22=0
				usr<<"Você vendeu a casa!"
			else
				usr<<"Você não é o dono dessa casa"



turf/Saida_Casa_22
	icon=""
	Enter(mob/M)
		if(M.client) M.loc=locate(/turf/Entrada_Casa_22)

//---23 house--------------------


turf/Entrada_Casa_23
	icon=""
	Enter(mob/M)
		if(M.client)
			if(WCasa23:donokey==M.key) M.loc=locate(/turf/Saida_Casa_23)
			else if(M.key in WCasa23:convidados) M.loc=locate(/turf/Saida_Casa_23)
			else  alert("Você não é um convidado. Esta casa é propriedade de [WCasa23:dono]")
	verb
		Comprar_Casa()
			//set category = "Casa"
			set src in oview(2)
			if(DuasCasas(usr)==1) {alert("Você ja tem uma casa !");return}
			if(WCasa23:donokey=="Sem")
				if(usr.Yen>=1000000)
					usr.Yen-=1000000
					WCasa23:dono=usr.name
					WCasa23:donokey=usr.key
					usr.donocasa23=1
					usr<<"Você comprou a casa!"
				else
					alert("Você não tem 1.000.000 Yens")
			else
				usr<<"Não pode comprar essa casa, ela pertence a [WCasa23:dono]"
	verb
		Convidar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa23:donokey==usr.key)

				var/list/a=new/list
				for(var/mob/M) if(M.client) a+=M
				var/mob/B=input("Quem vai ter acesso a sua casa ?") in a +list("Cancelar")

				if(!B||B=="Cancelar") return
				else
					WCasa23:convidados+=B.key
					usr<<"Você convidou o responsavel pela key [B]!"
					B<<"Você foi convidado por [usr]"
			else
				usr<<"Você não é o dono dessa casa"
	verb
		Expulsar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa23:donokey==usr.key)

				var/B=input("Quem vai perder o acesso a sua casa ?") in WCasa23:convidados +list("Cancelar")

				if(!B||B=="Cancelar") return
				WCasa23:convidados-=B

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
			if(WCasa23:donokey==usr.key||usr.ADM==1)
				WCasa23:dono="Sem"
				WCasa23:donokey="Sem"
				usr.Yen+=250000
				WCasa23=new/Casa
				usr.donocasa23=0
				usr<<"Você vendeu a casa!"
			else
				usr<<"Você não é o dono dessa casa"



turf/Saida_Casa_23
	icon=""
	Enter(mob/M)
		if(M.client) M.loc=locate(/turf/Entrada_Casa_23)

//---24 house--------------------


turf/Entrada_Casa_24
	icon=""
	Enter(mob/M)
		if(M.client)
			if(WCasa24:donokey==M.key) M.loc=locate(/turf/Saida_Casa_24)
			else if(M.key in WCasa24:convidados) M.loc=locate(/turf/Saida_Casa_24)
			else  alert("Você não é um convidado. Esta casa é propriedade de [WCasa24:dono]")
	verb
		Comprar_Casa()
			//set category = "Casa"
			set src in oview(2)
			if(DuasCasas(usr)==1) {alert("Você ja tem uma casa !");return}
			if(WCasa24:donokey=="Sem")
				if(usr.Yen>=1000000)
					usr.Yen-=1000000
					WCasa24:dono=usr.name
					WCasa24:donokey=usr.key
					usr.donocasa24=1
					usr<<"Você comprou a casa!"
				else
					alert("Você não tem 1.000.000 Yens")
			else
				usr<<"Não pode comprar essa casa, ela pertence a [WCasa24:dono]"
	verb
		Convidar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa24:donokey==usr.key)

				var/list/a=new/list
				for(var/mob/M) if(M.client) a+=M
				var/mob/B=input("Quem vai ter acesso a sua casa ?") in a +list("Cancelar")

				if(!B||B=="Cancelar") return
				else
					WCasa24:convidados+=B.key
					usr<<"Você convidou o responsavel pela key [B]!"
					B<<"Você foi convidado por [usr]"
			else
				usr<<"Você não é o dono dessa casa"
	verb
		Expulsar_Alguem()
			//set category = "Casa"
			set src in oview(2)
			if(WCasa24:donokey==usr.key)

				var/B=input("Quem vai perder o acesso a sua casa ?") in WCasa24:convidados +list("Cancelar")

				if(!B||B=="Cancelar") return
				WCasa24:convidados-=B

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
			if(WCasa24:donokey==usr.key||usr.ADM==1)
				WCasa24:dono="Sem"
				WCasa24:donokey="Sem"
				usr.Yen+=250000
				WCasa24=new/Casa
				usr.donocasa24=0
				usr<<"Você vendeu a casa!"
			else
				usr<<"Você não é o dono dessa casa"



turf/Saida_Casa_24
	icon=""
	Enter(mob/M)
		if(M.client) M.loc=locate(/turf/Entrada_Casa_24)



//---Obj casa--------------------

Casa
	var/dono="Sem"
	var/donokey="Sem"
	var/list/convidados=new/list
	var/list/moveis=new/list


//---Ancestral Mobilhado--------------------


obj/Moveis
	verb/Colocar_aqui()
		src.loc=usr.loc
	verb/Girar_isso()
		src.dir++
	verb/Guardar()
		set src in oview(2)
	verb/Mudar_densidade()
		src.density=1-src.density


//---Moveis aqui--------------------


obj/Moveis
	Cadeira  //icon=''
	Mesa     //icon=''