var
	eventokill




mob/GM
	verb
		OpcoesKill()
			set category = "GM"
			set name = "Evento Kill"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				switch(input("O que voc� quer fazer?","Evento")in list("Abrir Evento","Encerrar Evento","Cancelar"))
					if("Cancelar")
						return
					if("Abrir Evento")
						if(!eventokill)
							eventokill=1
							world<<output("<font color=red>Evento: \white [usr] Come�ou o Evento de KILLS. Matan�a total est� autorizada!","output2.sistema")
							for(var/mob/M in world)
								if(M.client)
									M.PK=1
						else
							usr<<"J� tem um evento desse ativo!"
					if("Encerrar Evento")
						if(eventokill)
							eventokill=0
							/*for(var/mob/M in world)
								if(M.client)
									if(!(M.z==8&&M.x>0&&M.x<91&&M.y>0&&M.y<54))
										M.Suicides()*/
							world << output("<font color=red>Evento: \white [usr] encerrou o Evento Kill!","output2.sistema")
						else
							usr<<"N�o tem evento desse ocorrendo no momento!"
			else
				world << "[usr] errou a senha UHDSAUHD que noob!"
				del(usr)