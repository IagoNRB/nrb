//--------------------------------COMANDO DE CRIAR BAU (STAFF)------------------------------------------------------------



//----------------------------------------------OBJ BAU------------------------------------------------------------------

obj/Tesouro
	BauQuest
		name = "Bau de Quest"
		icon = 'ba�.dmi'
		icon_state = "1"
		density = 1
		verb
			Usar()
				if(src.abriu)
					usr<<"Este bau j� foi aberto"
					return
				if(!src.abriu)
					src.abriu = 1
					usr<<"voc� utilizou o bau de quest"
					switch(input("Escolha uma das seguintes op��es para saber sobre suas respectivas Quests:", text) in list ("Clans", "Elementais", "Outros"))
						if("Clans")
							switch(input("Escolha sobre qual Clan voc� deseja saber", text) in list ( "Uzumaki", "Uchiha", "Iryonin", "Temari", "Gaara", "Usu�rio de Marionetes", "Usu�rio de Taijutsu", "Hyuuga", "Usu�rio de Armas", "Inuzuka", "Usu�rio de Genjutsu", "Aburame", "Akimichi", "Yamanaka", "Senju", "Kaguya", "Koori"))
								if("Uzumaki")
									usr<<"Ganhou direito a escolher uma dica do clan Uzumaki!"
									switch(input("Escolha sobre qual Quest do Clan Uzumaki voc� deseja saber", text) in list ("FRS", "Oodama Rasengan", "Kage FRS", "Senjutsu Uzumaki"))
										if("FRS")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Voc� precisa treinar sua habilidade com o Fuuton para junt�-lo ao Rasengan</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>Voc� precisa treinar seu controle para segurar o FRS</font>"
										if("Oodama Rasengan")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Treine seu controle para dominar esta t�cnica</font>"
										if("Kage FRS")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Treino seu controle para dominar esta t�cnica</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>Ninjas fracos como gennins n�o podem aprendem-l�</font>"
										if("Senjutsu Uzumaki")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3", "Dica 4", "Dica 5"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Treine bastante seu controle para conseguir segurar o chakra da natureza</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>Treine bastante sua arte do Ninjutsu para que seus ataques causem muito dano</font>"
												if("Dica 3")
													usr<<"<font size=3><font color=red>Todo ninja precisa ter um pouco de habilidade com Taijutsu</font>"
												if("Dica 4")
													usr<<"<font size=3><font color=red>Esta t�cnica a ensinada a ninjas forte. Ninjas fracos como gennins n�o podem aprendem-l�</font>"
												if("Dica 5")
													usr<<"<font size=3><font color=red>Procure pelo Fukasaku dentro do bairro antigo de konoha</font>"
								if("Uchiha")
									usr<<"Ganhou direito a escolher uma dica do clan Uchiha!<br><font size=3><font color=red>OBS: As dicas a seguir servem para qualquer estilo de sharingan escolhido</font>"
									switch(input("Escolha sobre qual Quest do Clan Uchiha voc� deseja saber", text) in list ("Despertar Sharingan", "Sharingan lvl 2", "Sharingan lvl 3", "MS", "Amaterasu", "Kamui", "Susanoo", "FMS", "Rinnegan"))
										if("Despertar Sharingan")
											usr<<"Ganhou direito a uma dica da quest de Despertar o Sharingan!"
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Treine um pouco seu level</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>Ven�a alguns ninjas</font>"
										if("Sharingan lvl 2")
											usr<<"Ganhou direito a uma dica da quest do Sharingan lvl 2!"
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Treine um pouco seu ninjutsu e genjutsu</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>Utilize bastante seu sharingan</font>"
										if("Sharingan lvl 3")
											usr<<"Ganhou direito a uma dica da quest do Sharingan lvl 3!"
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Treine seu ninjutsu e genjutsu al�m do n�vel 2</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>Utilize seu sharingan al�m do n�vel 2</font>"
										if("MS")
											usr<<"Ganhou direito a uma dica da quest do Mangekyou Sharingan!"
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>O Mangekyou Sharingan s� � obtido por aqueles que n�o possuem amor a seus companheiros de cl�s e sim, uma forte vontade de mata-l�s diversas vezes</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>O Mangekyou Sharingan pede um treino avan�ado em genjutsu e ninjutsu</font>"
												if("Dica 3")
													usr<<"<font size=3><font color=red>O Mangekyou Sharingan n�o � dado para ninjas fracos como meros estudantes ou gennins, apenas ninjas fortes o possuem</font>"
										if("Amaterasu")
											usr<<"Ganhou direito a uma dica da quest do Amaterasu!"
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>O Amaterasu s� � obtido por aqueles que possuem uma boa quantidade de chakra</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>O Amaterasu s� � obtido por aqueles que possuem o ninjutsu bem treinado</font>"
												if("Dica 3")
													usr<<"<font size=3><font color=red>Procure pelo Anci�o no antigo bairro de konoha</font>"
										if("Kamui")
											usr<<"Ganhou direito a uma dica da quest do Kamui!"
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>O Kamui s� � obtido por aqueles que possuem uma boa quantidade de chakra</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>O Kamui s� � obtido por aqueles que possuem o ninjutsu bem treinado</font>"
												if("Dica 3")
													usr<<"<font size=3><font color=red>Procure pelo Kakashi perto da casa dos uchihas</font>"
										if("Susanoo")
											usr<<"Ganhou direito a uma dica da quest do Susano'o!"
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>O Susano'o s� � obtido por aqueles que j� mataram muitos membros de seu cl�</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>O Susano'o s� � obtido por aqueles que treinaram muito bem seu ninjutsu e genjutsu</font>"
												if("Dica 3")
													usr<<"<font size=3><font color=red>Procure pelo madara nos arredores do bairro nukenin</font>"
										if("FMS")
											usr<<"Ganhou direito a uma dica da quest do Fummetsu Mangekyou Sharingan!"
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3", "Dica 4"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>O Fummetsu Mangekyou Sharingan pede muitos assassinatos dos membros do seu pr�prio clan</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>O Fummetsu Mangekyou Sharingan � obtido por aqueles que n�o possuem clem�ncia e roubam a vis�o de seus companheiros de clan durante a guerra ninja</font>"
												if("Dica 3")
													usr<<"<font size=3><font color=red>O Fummetsu Mangekyou Sharingan exige que voc� esteja em um grau avan�ado de cegueira</font>"
												if("Dica 4")
													usr<<"<font size=3><font color=red>Procure pelo Obito escondido dentro da aldeia da folha</font>"
										if("Rinnegan")
											usr<<"Ganhou direito a uma dica da quest do Rinnegan!"
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3", "Dica 4"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>O Rinnegan pede muitos assassinatos dos membros do seu clan rival</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>O Rinnegan exige que voc� possua o DNA Senju no seu corpo</font>"
												if("Dica 3")
													usr<<"<font size=3><font color=red>O Rinnegan s� � obtido ap�s o FMS</font>"
												if("Dica 4")
													usr<<"<font size=3><font color=red>Procure pelo Nagato nas �rvores para obter o seu poder</font>"
								if("Iryonin")
									usr<<"Ganhou direito a escolher uma dica do clan Iryonin!"
									switch(input("Escolha sobre qual Quest do Clan Iryonin voc� deseja saber", text) in list ("Ant�dotos e Venenos", "Oukashou e Super Soco", "Mestre dos Venenos"))
										if("Ant�dotos e Venenos")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Treine seu level</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>Tenha um pouco de habilidade com ninjutsu</font>"
										if("Oukashou e Super Soco")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Treine bastante seu controle de chakra</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>Tenha habilidade com taijutsu</font>"
										if("Mestre dos Venenos")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3", "Dica 4"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Ninjas fracos como gennins n�o conseguem esse poder</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>Tenha um controla de chakra Perfeito</font>"
												if("Dica 3")
													usr<<"<font size=3><font color=red>Utilize seu veneno muitas vezes</font>"
												if("Dica 4")
													usr<<"<font size=3><font color=red>Procure pelo homem escondido entre as areias</font>"
								if("Temari")
									usr<<"Ganhou direito a escolher uma dica do clan Temari!"
									switch(input("Escolha sobre qual Quest do Clan Temari voc� deseja saber", text) in list ("Fuuton Okakeami", "Kiri Kiri Mai"))
										if("Fuuton Okakeami")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Treine sua pericia com o elemento Fuuton</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>Treine seu controle de chakra</font>"
										if("Kiri Kiri Mai")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Treine bastante seu controle de chakra</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>Ninjas fracos como gennins n�o conseguem este jutsu</font>"
												if("Dica 3")
													usr<<"<font size=3><font color=red>Treine sua pericia com o Elemento Fuuton</font>"
								if("Gaara")
									usr<<"Ganhou direito a escolher uma dica do clan Sabaku!"
									switch(input("Escolha sobre qual Quest do Clan Sabaku voc� deseja saber", text) in list ("Sabaku Sotaiso/Suna Bunshin"))
										if("Sabaku Sotaiso/Suna Bunshin")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Ninjas fracos como Gennins n�o conseguem estes jutsus</font>"
								if("Usu�rio de Marionetes")
									usr<<"Ganhou direito a escolher uma dica do clan Usu�rio de Marionetes!"
									switch(input("Escolha sobre qual Quest do Clan Usu�rio de Marionetes voc� deseja saber", text) in list ("Sanshuou", "Jutsus Supremos"))
										if("Sanshuou")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Tenha um pouco de habilidade com o ninjutsu</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>Treine seu controle de chakra</font>"
										if("Jutsus Supremos")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Ninjas fracos como Gennins n�o conseguem estes jutsus</font>"
								if("Usu�rio de Taijutsu")
									usr<<"Ganhou direito a escolher uma dica do clan Usu�rio de Taijutsu!"
									switch(input("Escolha sobre qual Quest do Clan Usu�rio de Taijutsu voc� deseja saber", text) in list ("Port�es", "Ura Renge", "Jutsus Avan�ados", "Jutsus Supremos"))
										if("Port�es")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Seja r�pido para conseguir aprende-lo</font>"
										if("Ura Renge")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Seja muito r�pido para conseguir aprende-lo</font>"
										if("Jutsus Avan�ados")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Tenha uma velocidade absurda</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>Treine bastante seu Taijutsu</font>"
												if("Dica 3")
													usr<<"<font size=3><font color=red>Ninjas fracos como Gennins n�o conseguem estes jutsus</font>"
										if("Jutsus Supremos")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3", "Dica 4"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Ninjas fracos como Gennins n�o conseguem estes jutsus</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>Tenha uma velocidade Perfeita</font>"
												if("Dica 3")
													usr<<"<font size=3><font color=red>Treine seu Taijutsu ao Extremo</font>"
												if("Dica 4")
													usr<<"<font size=3><font color=red>Ache o Maito Gai dentro da vila da Folha</font>"
								if("Hyuuga")
									usr<<"Escolha o Estilo de Byakugan!"
									switch(input("Qual o seu Byakugan ?", text) in list ("Neji", "Hinata"))
										if("Neji")
											usr<<"Ganhou direito a escolher uma dica do clan Hyuuga Estilo Neji!"
											switch(input("Escolha sobre qual Quest do Clan Hyuuga voc� deseja saber", text) in list ("Byakugan lvl 2", "Jutsus Avan�ados", "Tenseigan"))
												if("Byakugan lvl 2")
													switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3"))
														if("Dica 1")
															usr<<"<font size=3><font color=red>Treine muito o seu Taijutsu</font>"
														if("Dica 2")
															usr<<"<font size=3><font color=red>Ninjas fracos como Gennins n�o conseguem estes jutsus</font>"
														if("Dica 3")
															usr<<"<font size=3><font color=red>Todo ninja precisa ter um pouco de Ninjutsu</font>"
												if("Jutsus Avan�ados")
													switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
														if("Dica 1")
															usr<<"<font size=3><font color=red>Ninjas fracos como Gennins n�o conseguem estes jutsus</font>"
												if("Tenseigan")
													switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3", "Dica 4", "Dica 5"))
														if("Dica 1")
															usr<<"<font size=3><font color=red>Utilize bastante vezes o seu Byakugan</font>"
														if("Dica 2")
															usr<<"<font size=3><font color=red>Lute bastante e ven�a sempre que puder</font>"
														if("Dica 3")
															usr<<"<font size=3><font color=red>N�o tenha amor por aqueles que possuem a linhagem mais pura, mate todos!</font>"
														if("Dica 4")
															usr<<"<font size=3><font color=red>Derrote todo mundo que possui os olhos igual ao teu!</font>"
														if("Dica 5")
															usr<<"<font size=3><font color=red>Procure pelo Toneri dentro da Lua</font>"
										if("Hinata")
											usr<<"Ganhou direito a escolher uma dica do clan Hyuuga Estilo Hinata!"
											switch(input("Escolha sobre qual Quest do Clan Hyuuga voc� deseja saber", text) in list ("Byakugan lvl 2", "Jutsus Avan�ados", "Tenseigan"))
												if("Byakugan lvl 2")
													switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3"))
														if("Dica 1")
															usr<<"<font size=3><font color=red>Ninjas fracos como Gennins n�o conseguem estes jutsus</font>"
														if("Dica 2")
															usr<<"<font size=3><font color=red>Todo ninja precisa ter um pouco de Ninjutsu</font>"
														if("Dica 3")
															usr<<"<font size=3><font color=red>Treine muito o seu Taijutsu</font>"
												if("Jutsus Avan�ados")
													switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
														if("Dica 1")
															usr<<"<font size=3><font color=red>Ninjas fracos como Gennins n�o conseguem estes jutsus</font>"
												if("Tenseigan")
													switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3", "Dica 4", "Dica 5"))
														if("Dica 1")
															usr<<"<font size=3><font color=red>Utilize bastante vezes o seu Byakugan</font>"
														if("Dica 2")
															usr<<"<font size=3><font color=red>Lute bastante e ven�a sempre que puder</font>"
														if("Dica 3")
															usr<<"<font size=3><font color=red>N�o tenha amor por aqueles que possuem a linhagem secund�ria, mate todos!</font>"
														if("Dica 4")
															usr<<"<font size=3><font color=red>Derrote todo mundo que possui os olhos igual ao teu!</font>"
														if("Dica 5")
															usr<<"<font size=3><font color=red>Procure pelo Toneri dentro da Lua</font>"
								if("Usu�rio de Armas")
									usr<<"Ganhou direito a escolher uma dica do clan Usu�rio de Armas!"
									switch(input("Escolha sobre qual Quest do Clan Usu�rio de Armas voc� deseja saber", text) in list ("Jutsu Avan�ado"))
										if("Jutsu Avan�ado")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Ninjas fracos como Gennins n�o conseguem este jutsu</font>"
								if("Inuzuka")
									usr<<"Ganhou direito a escolher uma dica do clan Inuzuka!"
									switch(input("Escolha sobre qual Quest do Clan Inuzuka voc� deseja saber", text) in list ("Jutsu Avan�ado", "Jutsu Supremo"))
										if("Jutsu Avan�ado")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Treine seu controle de chakra para obter estes jutsus</font>"
										if("Jutsu Supremo")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Ninjas fracos como Gennins n�o conseguem este jutsu</font>"
								if("Usu�rio de Genjutsu")
									usr<<"Ganhou direito a escolher uma dica do clan Usu�rio de Genjutsu!"
									switch(input("Escolha sobre qual Quest do Clan Usu�rio de Genjutsu voc� deseja saber", text) in list ("Jutsu Avan�ado"))
										if("Jutsu Avan�ado")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Treine seu level para obter estes jutsus</font>"
								if("Aburame")
									usr<<"Ganhou direito a escolher uma dica do clan Aburame!"
									switch(input("Escolha sobre qual Quest do Clan Aburame voc� deseja saber", text) in list ("Envenenar"))
										if("Envenenar")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Treine seu level para obter esta jutsu</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>Ninjas fracos como Gennins n�o conseguem este jutsu</font>"
												if("Dica 3")
													usr<<"<font size=3><font color=red>Treine bastante seu Ninjutsu</font>"
								if("Akimichi")
									usr<<"Ganhou direito a escolher uma dica do clan Akimichi!"
									switch(input("Escolha sobre qual Quest do Clan Akimichi voc� deseja saber", text) in list ("Modo Borboleta sem p�lula"))
										if("Modo Borboleta sem p�lula")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Ninjas fracos como Gennins n�o conseguem este jutsu</font>"
								if("Yamanaka")
									usr<<"Ganhou direito a escolher uma dica do clan Yamanaka!"
									switch(input("Escolha sobre qual Quest do Clan Yamanaka voc� deseja saber", text) in list ("Jutsus Avan�ados", "Jutsus Supremos", "Super Soco", "Hit Kill"))
										if("Jutsus Avan�ados")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Treine seu Ninjutsu</font>"
										if("Jutsus Supremos")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Treine muito o seu Ninjutsu</font>"
										if("Super Soco")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Treine seu Taijutsu</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>Treine bastante seu controle de chakra</font>"
										if("Hit Kill")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3", "Dica 4", "Dica 5"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Ninjas fracos como Gennins n�o conseguem este jutsu</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>Treine muito o seu controle de chakra</font>"
												if("Dica 3")
													usr<<"<font size=3><font color=red>Treine ao extremo o seu Ninjutsu</font>"
												if("Dica 4")
													usr<<"<font size=3><font color=red>Todo ninja deve possuir um pouco de Genjutsu</font>"
												if("Dica 5")
													usr<<"<font size=3><font color=red>Procuro pelo meu pai dentro da vila da folha</font>"
								if("Senju")
									usr<<"Ganhou direito a escolher uma dica do clan Senju!"
									switch(input("Escolha sobre qual Quest do Clan Senju voc� deseja saber", text) in list ("Moku Bunshin", "Senjutsu Senju", "Golem e Drag�o"))
										if("Moku Bunshin")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Ninjas fracos como Gennins n�o conseguem este jutsu</font>"
										if("Senjutsu Senju")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3", "Dica 4"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Ninjas fracos como Gennins n�o conseguem este jutsu</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>Treine o seu level</font>"
												if("Dica 3")
													usr<<"<font size=3><font color=red>Treine bastante seu controle de chakra</font>"
												if("Dica 4")
													usr<<"<font size=3><font color=red>Treine ao extremo seu Ninjutsu</font>"
										if("Golem e Drag�o")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3", "Dica 4", "Dica 5", "Dica 6"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Ninjas fracos como Gennins n�o conseguem este jutsu</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>Treine muito o seu level</font>"
												if("Dica 3")
													usr<<"<font size=3><font color=red>Treine seu controle de chakra ao extremo</font>"
												if("Dica 4")
													usr<<"<font size=3><font color=red>Treine ao extremo seu Ninjutsu</font>"
												if("Dica 5")
													usr<<"<font size=3><font color=red>Treine bastante suas pericias base do elemento Mokuton</font>"
												if("Dica 6")
													usr<<"<font size=3><font color=red>Mate muitos membros do clan rival</font>"
								if("Kaguya")
									usr<<"Ganhou direito a escolher uma dica do clan Kaguya!"
									switch(input("Escolha sobre qual Quest do Clan Kaguya voc� deseja saber", text) in list ("Jutsus Avan�ados", "Jutsus Supremos"))
										if("Jutsus Avan�ados")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Treine sua velocidade</font>"
										if("Jutsus Supremos")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Ninjas fracos como Gennins n�o conseguem este jutsu</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>Treine bastante seu level</font>"
								if("Koori")
									usr<<"Ganhou direito a escolher uma dica do clan Koori!"
									switch(input("Escolha sobre qual Quest do Clan Koori voc� deseja saber", text) in list ("Teleporte","Jutsus Avan�ados", "Jutsus Supremos"))
										if("Teleporte")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Treine sua velocidade</font>"
										if("Jutsus Avan�ados")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Treine bastante a sua velocidade</font>"
										if("Jutsus Supremos")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Ninjas fracos como Gennins n�o conseguem este jutsu</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>Treine bastante seu level</font>"
						if("Elementais")
							switch(input("Escolha sobre qual Quest Elemental voc� deseja saber", text) in list ( "Avan�ado Katon", "Avan�ado Suiton", "Avan�ado Doton", "Avan�ado Raiton", "Avan�ado Fuuton", "Segundo Elemento", "Terceiro Elemento", "N�vel Elemento"))
								if("Avan�ado Katon")
									usr<<"Ganhou direito a escolher uma dica da Quest Avan�ado Katon!"
									switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
										if("Dica 1")
											usr<<"<font size=3><font color=red>Treine muito a sua pericia at� atingir um novo n�vel</font>"
								if("Avan�ado Suiton")
									usr<<"Ganhou direito a escolher uma dica da Quest Avan�ado Suiton!"
									switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
										if("Dica 1")
											usr<<"<font size=3><font color=red>Treine muito a sua pericia at� atingir um novo n�vel</font>"
								if("Avan�ado Doton")
									usr<<"Ganhou direito a escolher uma dica da Quest Avan�ado Doton!"
									switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2"))
										if("Dica 1")
											usr<<"<font size=3><font color=red>Treine muito a sua pericia at� atingir um novo n�vel</font>"
										if("Dica 2")
											usr<<"<font size=3><font color=red>Procure pelo NPC Alastar dentro da Vila do Som</font>"
								if("Avan�ado Raiton")
									usr<<"Ganhou direito a escolher uma dica da Quest Avan�ado Raiton!"
									switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
										if("Dica 1")
											usr<<"<font size=3><font color=red>Treine muito a sua pericia at� atingir um novo n�vel</font>"
								if("Avan�ado Fuuton")
									usr<<"Ganhou direito a escolher uma dica da Quest Avan�ado Fuuton!"
									switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1","Dica 2"))
										if("Dica 1")
											usr<<"<font size=3><font color=red>Treine muito a sua pericia at� atingir um novo n�vel</font>"
										if("Dica 2")
											usr<<"<font size=3><font color=red>A Pedra Do Vento � encontrada nos arredores da Vila da Chuva</font>"
								if("Segundo Elemento")
									usr<<"Ganhou direito a escolher uma dica da Quest Segundo Elemento!"
									switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1","Dica 2","Dica 3","Dica 4"))
										if("Dica 1")
											usr<<"<font size=3><font color=red>Treine bastante seu controle de Chakra</font>"
										if("Dica 2")
											usr<<"<font size=3><font color=red>Treine o seu level</font>"
										if("Dica 3")
											usr<<"<font size=3><font color=red>Treine seus selos a ponto de ter a mesma porcentagem que um Chunnin</font>"
										if("Dica 4")
											usr<<"<font size=3><font color=red>Procure pelo NPC Segundo Elemento escondido dentro da Vila da Folha</font>"
								if("Terceiro Elemento")
									usr<<"Ganhou direito a escolher uma dica da Quest Terceiro Elemento!"
									switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1","Dica 2","Dica 3","Dica 4"))
										if("Dica 1")
											usr<<"<font size=3><font color=red>Treine muito o seu controle de Chakra</font>"
										if("Dica 2")
											usr<<"<font size=3><font color=red>Treine muito o seu level</font>"
										if("Dica 3")
											usr<<"<font size=3><font color=red>Ninjas fracos como Jounnins n�o conseguem este jutsu</font>"
										if("Dica 4")
											usr<<"<font size=3><font color=red>Procure pelo NPC Terceiro Elemento escondido nos arredores da Vila da Chuva</font>"
								if("N�vel Elemento")
									usr<<"Ganhou direito a escolher uma dica do N�vel Elemento!"
									switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
										if("Dica 1")
											usr<<"<font size=3><font color=red>Quanto mais per�cia voc� treina, mais forte voc� se torna!</font>"
						if("Outros")
							switch(input("Escolha sobre qual Quest voc� deseja saber", text) in list ("Selos", "Extra��o DNA/Doujutsu", "Extra��o de Bijuu", "Implantar Doujutsu", "Saquear", "Quest Chakra", "Quest Stamina"))
								if("Selos")
									usr<<"Ganhou direito a escolher uma dica da Quest Selos!"
									switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3", "Dica 4", "Dica 5"))
										if("Dica 1")
											usr<<"<font size=3><font color=red>Seja r�pido</font>"
										if("Dica 2")
											usr<<"<font size=3><font color=red>Saiba controlar bem o seu chakra</font>"
										if("Dica 3")
											usr<<"<font size=3><font color=red>Os ninjas mais fortem utilizam seus jutsus b�sicos muitas vezes at� aprenderem a control�-los</font>"
										if("Dica 4")
											usr<<"<font size=3><font color=red>Saiba at� quanto de precis�o um Gennin consegue evoluir seus Selos</font>"
										if("Dica 5")
											usr<<"<font size=3><font color=red>Treine bastante seu level</font>"
								if("Extra��o DNA/Doujutsu")
									usr<<"Ganhou direito a escolher uma dica da Quest Extra��o DNA/Doujutsu!"
									switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3", "Dica 4", "Dica 5"))
										if("Dica 1")
											usr<<"<font size=3><font color=red>Disseram que o NPC se perdeu enquanto passeava por uma montanha e acabou entrando em um labirinto</font>"
										if("Dica 2")
											usr<<"<font size=3><font color=red>Ninjas fracos como Gennins n�o conseguem esta habilidade</font>"
										if("Dica 3")
											usr<<"<font size=3><font color=red>Tenha um Controle perfeito do seu Chakra</font>"
										if("Dica 4")
											usr<<"<font size=3><font color=red>Treine muito o seu Level</font>"
										if("Dica 5")
											usr<<"<font size=3><font color=red>Tenha a sua Stamina no mais alto n�vel</font>"
								if("Extra��o Bijuu")
									usr<<"Ganhou direito a escolher uma dica da Quest Extra��o Bijuu!"
									switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3", "Dica 4", "Dica 5", "Dica 6"))
										if("Dica 1")
											usr<<"<font size=3><font color=red>Disseram que o NPC se perdeu dentro do labirinto da bijuu e viu, certa vez, o n�mero 6 na parede</font>"
										if("Dica 2")
											usr<<"<font size=3><font color=red>Ninjas fracos como Gennins n�o conseguem esta habilidade</font>"
										if("Dica 3")
											usr<<"<font size=3><font color=red>Tenha um Controle perfeito do seu Chakra</font>"
										if("Dica 4")
											usr<<"<font size=3><font color=red>Treine muito o seu Level</font>"
										if("Dica 5")
											usr<<"<font size=3><font color=red>Saiba dominar o seu Chakra al�m do limite</font>"
										if("Dica 6")
											usr<<"<font size=3><font color=red>Tenha a sua Stamina no mais alto n�vel</font>"
								if("Implantar Doujutsu")
									usr<<"Ganhou direito a escolher uma dica da Quest Implantar Doujutsu!"
									switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3"))
										if("Dica 1")
											usr<<"<font size=3><font color=red>Disseram que o NPC se perdeu perto de casa em uma Vila branca</font>"
										if("Dica 2")
											usr<<"<font size=3><font color=red>Ninjas fracos como Gennins n�o conseguem este feito</font>"
										if("Dica 3")
											usr<<"<font size=3><font color=red>Tenho �dio por todos e arranque, durante a guerra, aquilo que voc� mais deseja possuir</font>"
								if("Saquear")
									usr<<"Ganhou direito a escolher uma dica da Quest Saquear!"
									switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2"))
										if("Dica 1")
											usr<<"<font size=3><font color=red>Disseram que o NPC se perdeu na Vila dos sem honra</font>"
										if("Dica 2")
											usr<<"<font size=3><font color=red>Quando sua penalidade aumentar, n�o pense que acabou!</font>"
								if("Quest Chakra")
									usr<<"Ganhou direito a escolher uma dica da Quest Chakra!"
									switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3", "Dica 4"))
										if("Dica 1")
											usr<<"<font size=3><font color=red>Disseram que o NPC se perdeu perto de uma cachoeira</font>"
										if("Dica 2")
											usr<<"<font size=3><font color=red>Treine muito o seu Level</font>"
										if("Dica 3")
											usr<<"<font size=3><font color=red>Tenha um Controle perfeito do seu Chakra</font>"
										if("Dica 4")
											usr<<"<font size=3><font color=red>Procure pelos pergaminhos nos locais aonde voc� passou quando era mais fraco</font>"
								if("Quest Stamina")
									usr<<"Ganhou direito a escolher uma dica da Quest Stamina!"
									switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3", "Dica 4"))
										if("Dica 1")
											usr<<"<font size=3><font color=red>Disseram que o NPC se perdeu perto de uma cachoeira</font>"
										if("Dica 2")
											usr<<"<font size=3><font color=red>Treine muito o seu Level</font>"
										if("Dica 3")
											usr<<"<font size=3><font color=red>Tenha uma Velocidade perfeita</font>"
										if("Dica 4")
											usr<<"<font size=3><font color=red>Procure pelos pergaminhos nos locais aonde voc� passou quando era mais fraco</font>"
				del(src)
			Olhar()
				usr<<"Um Raro Bau de Quest"
				src.loc=locate(usr.x,usr.y-1,usr.z)
				usr.AutoSave()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Voc� pegou um [src]"
			Destruir()
				usr<<"Voc� destruiu o [src]"
				del(src)