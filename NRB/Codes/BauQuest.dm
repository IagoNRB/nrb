//--------------------------------COMANDO DE CRIAR BAU (STAFF)------------------------------------------------------------



//----------------------------------------------OBJ BAU------------------------------------------------------------------

obj/Tesouro
	BauQuest
		name = "Bau de Quest"
		icon = 'baú.dmi'
		icon_state = "1"
		density = 1
		verb
			Usar()
				if(src.abriu)
					usr<<"Este bau já foi aberto"
					return
				if(!src.abriu)
					src.abriu = 1
					usr<<"você utilizou o bau de quest"
					switch(input("Escolha uma das seguintes opções para saber sobre suas respectivas Quests:", text) in list ("Clans", "Elementais", "Outros"))
						if("Clans")
							switch(input("Escolha sobre qual Clan você deseja saber", text) in list ( "Uzumaki", "Uchiha", "Iryonin", "Temari", "Gaara", "Usuário de Marionetes", "Usuário de Taijutsu", "Hyuuga", "Usuário de Armas", "Inuzuka", "Usuário de Genjutsu", "Aburame", "Akimichi", "Yamanaka", "Senju", "Kaguya", "Koori"))
								if("Uzumaki")
									usr<<"Ganhou direito a escolher uma dica do clan Uzumaki!"
									switch(input("Escolha sobre qual Quest do Clan Uzumaki você deseja saber", text) in list ("FRS", "Oodama Rasengan", "Kage FRS", "Senjutsu Uzumaki"))
										if("FRS")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Você precisa treinar sua habilidade com o Fuuton para juntá-lo ao Rasengan</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>Você precisa treinar seu controle para segurar o FRS</font>"
										if("Oodama Rasengan")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Treine seu controle para dominar esta técnica</font>"
										if("Kage FRS")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Treino seu controle para dominar esta técnica</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>Ninjas fracos como gennins não podem aprendem-lá</font>"
										if("Senjutsu Uzumaki")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3", "Dica 4", "Dica 5"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Treine bastante seu controle para conseguir segurar o chakra da natureza</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>Treine bastante sua arte do Ninjutsu para que seus ataques causem muito dano</font>"
												if("Dica 3")
													usr<<"<font size=3><font color=red>Todo ninja precisa ter um pouco de habilidade com Taijutsu</font>"
												if("Dica 4")
													usr<<"<font size=3><font color=red>Esta técnica a ensinada a ninjas forte. Ninjas fracos como gennins não podem aprendem-lá</font>"
												if("Dica 5")
													usr<<"<font size=3><font color=red>Procure pelo Fukasaku dentro do bairro antigo de konoha</font>"
								if("Uchiha")
									usr<<"Ganhou direito a escolher uma dica do clan Uchiha!<br><font size=3><font color=red>OBS: As dicas a seguir servem para qualquer estilo de sharingan escolhido</font>"
									switch(input("Escolha sobre qual Quest do Clan Uchiha você deseja saber", text) in list ("Despertar Sharingan", "Sharingan lvl 2", "Sharingan lvl 3", "MS", "Amaterasu", "Kamui", "Susanoo", "FMS", "Rinnegan"))
										if("Despertar Sharingan")
											usr<<"Ganhou direito a uma dica da quest de Despertar o Sharingan!"
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Treine um pouco seu level</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>Vença alguns ninjas</font>"
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
													usr<<"<font size=3><font color=red>Treine seu ninjutsu e genjutsu além do nível 2</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>Utilize seu sharingan além do nível 2</font>"
										if("MS")
											usr<<"Ganhou direito a uma dica da quest do Mangekyou Sharingan!"
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>O Mangekyou Sharingan só é obtido por aqueles que não possuem amor a seus companheiros de clãs e sim, uma forte vontade de mata-lós diversas vezes</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>O Mangekyou Sharingan pede um treino avançado em genjutsu e ninjutsu</font>"
												if("Dica 3")
													usr<<"<font size=3><font color=red>O Mangekyou Sharingan não é dado para ninjas fracos como meros estudantes ou gennins, apenas ninjas fortes o possuem</font>"
										if("Amaterasu")
											usr<<"Ganhou direito a uma dica da quest do Amaterasu!"
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>O Amaterasu só é obtido por aqueles que possuem uma boa quantidade de chakra</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>O Amaterasu só é obtido por aqueles que possuem o ninjutsu bem treinado</font>"
												if("Dica 3")
													usr<<"<font size=3><font color=red>Procure pelo Ancião no antigo bairro de konoha</font>"
										if("Kamui")
											usr<<"Ganhou direito a uma dica da quest do Kamui!"
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>O Kamui só é obtido por aqueles que possuem uma boa quantidade de chakra</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>O Kamui só é obtido por aqueles que possuem o ninjutsu bem treinado</font>"
												if("Dica 3")
													usr<<"<font size=3><font color=red>Procure pelo Kakashi perto da casa dos uchihas</font>"
										if("Susanoo")
											usr<<"Ganhou direito a uma dica da quest do Susano'o!"
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>O Susano'o só é obtido por aqueles que já mataram muitos membros de seu clã</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>O Susano'o só é obtido por aqueles que treinaram muito bem seu ninjutsu e genjutsu</font>"
												if("Dica 3")
													usr<<"<font size=3><font color=red>Procure pelo madara nos arredores do bairro nukenin</font>"
										if("FMS")
											usr<<"Ganhou direito a uma dica da quest do Fummetsu Mangekyou Sharingan!"
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3", "Dica 4"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>O Fummetsu Mangekyou Sharingan pede muitos assassinatos dos membros do seu próprio clan</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>O Fummetsu Mangekyou Sharingan é obtido por aqueles que não possuem clemência e roubam a visão de seus companheiros de clan durante a guerra ninja</font>"
												if("Dica 3")
													usr<<"<font size=3><font color=red>O Fummetsu Mangekyou Sharingan exige que você esteja em um grau avançado de cegueira</font>"
												if("Dica 4")
													usr<<"<font size=3><font color=red>Procure pelo Obito escondido dentro da aldeia da folha</font>"
										if("Rinnegan")
											usr<<"Ganhou direito a uma dica da quest do Rinnegan!"
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3", "Dica 4"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>O Rinnegan pede muitos assassinatos dos membros do seu clan rival</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>O Rinnegan exige que você possua o DNA Senju no seu corpo</font>"
												if("Dica 3")
													usr<<"<font size=3><font color=red>O Rinnegan só é obtido após o FMS</font>"
												if("Dica 4")
													usr<<"<font size=3><font color=red>Procure pelo Nagato nas árvores para obter o seu poder</font>"
								if("Iryonin")
									usr<<"Ganhou direito a escolher uma dica do clan Iryonin!"
									switch(input("Escolha sobre qual Quest do Clan Iryonin você deseja saber", text) in list ("Antídotos e Venenos", "Oukashou e Super Soco", "Mestre dos Venenos"))
										if("Antídotos e Venenos")
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
													usr<<"<font size=3><font color=red>Ninjas fracos como gennins não conseguem esse poder</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>Tenha um controla de chakra Perfeito</font>"
												if("Dica 3")
													usr<<"<font size=3><font color=red>Utilize seu veneno muitas vezes</font>"
												if("Dica 4")
													usr<<"<font size=3><font color=red>Procure pelo homem escondido entre as areias</font>"
								if("Temari")
									usr<<"Ganhou direito a escolher uma dica do clan Temari!"
									switch(input("Escolha sobre qual Quest do Clan Temari você deseja saber", text) in list ("Fuuton Okakeami", "Kiri Kiri Mai"))
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
													usr<<"<font size=3><font color=red>Ninjas fracos como gennins não conseguem este jutsu</font>"
												if("Dica 3")
													usr<<"<font size=3><font color=red>Treine sua pericia com o Elemento Fuuton</font>"
								if("Gaara")
									usr<<"Ganhou direito a escolher uma dica do clan Sabaku!"
									switch(input("Escolha sobre qual Quest do Clan Sabaku você deseja saber", text) in list ("Sabaku Sotaiso/Suna Bunshin"))
										if("Sabaku Sotaiso/Suna Bunshin")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Ninjas fracos como Gennins não conseguem estes jutsus</font>"
								if("Usuário de Marionetes")
									usr<<"Ganhou direito a escolher uma dica do clan Usuário de Marionetes!"
									switch(input("Escolha sobre qual Quest do Clan Usuário de Marionetes você deseja saber", text) in list ("Sanshuou", "Jutsus Supremos"))
										if("Sanshuou")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Tenha um pouco de habilidade com o ninjutsu</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>Treine seu controle de chakra</font>"
										if("Jutsus Supremos")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Ninjas fracos como Gennins não conseguem estes jutsus</font>"
								if("Usuário de Taijutsu")
									usr<<"Ganhou direito a escolher uma dica do clan Usuário de Taijutsu!"
									switch(input("Escolha sobre qual Quest do Clan Usuário de Taijutsu você deseja saber", text) in list ("Portões", "Ura Renge", "Jutsus Avançados", "Jutsus Supremos"))
										if("Portões")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Seja rápido para conseguir aprende-lo</font>"
										if("Ura Renge")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Seja muito rápido para conseguir aprende-lo</font>"
										if("Jutsus Avançados")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Tenha uma velocidade absurda</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>Treine bastante seu Taijutsu</font>"
												if("Dica 3")
													usr<<"<font size=3><font color=red>Ninjas fracos como Gennins não conseguem estes jutsus</font>"
										if("Jutsus Supremos")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3", "Dica 4"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Ninjas fracos como Gennins não conseguem estes jutsus</font>"
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
											switch(input("Escolha sobre qual Quest do Clan Hyuuga você deseja saber", text) in list ("Byakugan lvl 2", "Jutsus Avançados", "Tenseigan"))
												if("Byakugan lvl 2")
													switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3"))
														if("Dica 1")
															usr<<"<font size=3><font color=red>Treine muito o seu Taijutsu</font>"
														if("Dica 2")
															usr<<"<font size=3><font color=red>Ninjas fracos como Gennins não conseguem estes jutsus</font>"
														if("Dica 3")
															usr<<"<font size=3><font color=red>Todo ninja precisa ter um pouco de Ninjutsu</font>"
												if("Jutsus Avançados")
													switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
														if("Dica 1")
															usr<<"<font size=3><font color=red>Ninjas fracos como Gennins não conseguem estes jutsus</font>"
												if("Tenseigan")
													switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3", "Dica 4", "Dica 5"))
														if("Dica 1")
															usr<<"<font size=3><font color=red>Utilize bastante vezes o seu Byakugan</font>"
														if("Dica 2")
															usr<<"<font size=3><font color=red>Lute bastante e vença sempre que puder</font>"
														if("Dica 3")
															usr<<"<font size=3><font color=red>Não tenha amor por aqueles que possuem a linhagem mais pura, mate todos!</font>"
														if("Dica 4")
															usr<<"<font size=3><font color=red>Derrote todo mundo que possui os olhos igual ao teu!</font>"
														if("Dica 5")
															usr<<"<font size=3><font color=red>Procure pelo Toneri dentro da Lua</font>"
										if("Hinata")
											usr<<"Ganhou direito a escolher uma dica do clan Hyuuga Estilo Hinata!"
											switch(input("Escolha sobre qual Quest do Clan Hyuuga você deseja saber", text) in list ("Byakugan lvl 2", "Jutsus Avançados", "Tenseigan"))
												if("Byakugan lvl 2")
													switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3"))
														if("Dica 1")
															usr<<"<font size=3><font color=red>Ninjas fracos como Gennins não conseguem estes jutsus</font>"
														if("Dica 2")
															usr<<"<font size=3><font color=red>Todo ninja precisa ter um pouco de Ninjutsu</font>"
														if("Dica 3")
															usr<<"<font size=3><font color=red>Treine muito o seu Taijutsu</font>"
												if("Jutsus Avançados")
													switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
														if("Dica 1")
															usr<<"<font size=3><font color=red>Ninjas fracos como Gennins não conseguem estes jutsus</font>"
												if("Tenseigan")
													switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3", "Dica 4", "Dica 5"))
														if("Dica 1")
															usr<<"<font size=3><font color=red>Utilize bastante vezes o seu Byakugan</font>"
														if("Dica 2")
															usr<<"<font size=3><font color=red>Lute bastante e vença sempre que puder</font>"
														if("Dica 3")
															usr<<"<font size=3><font color=red>Não tenha amor por aqueles que possuem a linhagem secundária, mate todos!</font>"
														if("Dica 4")
															usr<<"<font size=3><font color=red>Derrote todo mundo que possui os olhos igual ao teu!</font>"
														if("Dica 5")
															usr<<"<font size=3><font color=red>Procure pelo Toneri dentro da Lua</font>"
								if("Usuário de Armas")
									usr<<"Ganhou direito a escolher uma dica do clan Usuário de Armas!"
									switch(input("Escolha sobre qual Quest do Clan Usuário de Armas você deseja saber", text) in list ("Jutsu Avançado"))
										if("Jutsu Avançado")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Ninjas fracos como Gennins não conseguem este jutsu</font>"
								if("Inuzuka")
									usr<<"Ganhou direito a escolher uma dica do clan Inuzuka!"
									switch(input("Escolha sobre qual Quest do Clan Inuzuka você deseja saber", text) in list ("Jutsu Avançado", "Jutsu Supremo"))
										if("Jutsu Avançado")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Treine seu controle de chakra para obter estes jutsus</font>"
										if("Jutsu Supremo")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Ninjas fracos como Gennins não conseguem este jutsu</font>"
								if("Usuário de Genjutsu")
									usr<<"Ganhou direito a escolher uma dica do clan Usuário de Genjutsu!"
									switch(input("Escolha sobre qual Quest do Clan Usuário de Genjutsu você deseja saber", text) in list ("Jutsu Avançado"))
										if("Jutsu Avançado")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Treine seu level para obter estes jutsus</font>"
								if("Aburame")
									usr<<"Ganhou direito a escolher uma dica do clan Aburame!"
									switch(input("Escolha sobre qual Quest do Clan Aburame você deseja saber", text) in list ("Envenenar"))
										if("Envenenar")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Treine seu level para obter esta jutsu</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>Ninjas fracos como Gennins não conseguem este jutsu</font>"
												if("Dica 3")
													usr<<"<font size=3><font color=red>Treine bastante seu Ninjutsu</font>"
								if("Akimichi")
									usr<<"Ganhou direito a escolher uma dica do clan Akimichi!"
									switch(input("Escolha sobre qual Quest do Clan Akimichi você deseja saber", text) in list ("Modo Borboleta sem pílula"))
										if("Modo Borboleta sem pílula")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Ninjas fracos como Gennins não conseguem este jutsu</font>"
								if("Yamanaka")
									usr<<"Ganhou direito a escolher uma dica do clan Yamanaka!"
									switch(input("Escolha sobre qual Quest do Clan Yamanaka você deseja saber", text) in list ("Jutsus Avançados", "Jutsus Supremos", "Super Soco", "Hit Kill"))
										if("Jutsus Avançados")
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
													usr<<"<font size=3><font color=red>Ninjas fracos como Gennins não conseguem este jutsu</font>"
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
									switch(input("Escolha sobre qual Quest do Clan Senju você deseja saber", text) in list ("Moku Bunshin", "Senjutsu Senju", "Golem e Dragão"))
										if("Moku Bunshin")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Ninjas fracos como Gennins não conseguem este jutsu</font>"
										if("Senjutsu Senju")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3", "Dica 4"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Ninjas fracos como Gennins não conseguem este jutsu</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>Treine o seu level</font>"
												if("Dica 3")
													usr<<"<font size=3><font color=red>Treine bastante seu controle de chakra</font>"
												if("Dica 4")
													usr<<"<font size=3><font color=red>Treine ao extremo seu Ninjutsu</font>"
										if("Golem e Dragão")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3", "Dica 4", "Dica 5", "Dica 6"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Ninjas fracos como Gennins não conseguem este jutsu</font>"
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
									switch(input("Escolha sobre qual Quest do Clan Kaguya você deseja saber", text) in list ("Jutsus Avançados", "Jutsus Supremos"))
										if("Jutsus Avançados")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Treine sua velocidade</font>"
										if("Jutsus Supremos")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Ninjas fracos como Gennins não conseguem este jutsu</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>Treine bastante seu level</font>"
								if("Koori")
									usr<<"Ganhou direito a escolher uma dica do clan Koori!"
									switch(input("Escolha sobre qual Quest do Clan Koori você deseja saber", text) in list ("Teleporte","Jutsus Avançados", "Jutsus Supremos"))
										if("Teleporte")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Treine sua velocidade</font>"
										if("Jutsus Avançados")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Treine bastante a sua velocidade</font>"
										if("Jutsus Supremos")
											switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2"))
												if("Dica 1")
													usr<<"<font size=3><font color=red>Ninjas fracos como Gennins não conseguem este jutsu</font>"
												if("Dica 2")
													usr<<"<font size=3><font color=red>Treine bastante seu level</font>"
						if("Elementais")
							switch(input("Escolha sobre qual Quest Elemental você deseja saber", text) in list ( "Avançado Katon", "Avançado Suiton", "Avançado Doton", "Avançado Raiton", "Avançado Fuuton", "Segundo Elemento", "Terceiro Elemento", "Nível Elemento"))
								if("Avançado Katon")
									usr<<"Ganhou direito a escolher uma dica da Quest Avançado Katon!"
									switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
										if("Dica 1")
											usr<<"<font size=3><font color=red>Treine muito a sua pericia até atingir um novo nível</font>"
								if("Avançado Suiton")
									usr<<"Ganhou direito a escolher uma dica da Quest Avançado Suiton!"
									switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
										if("Dica 1")
											usr<<"<font size=3><font color=red>Treine muito a sua pericia até atingir um novo nível</font>"
								if("Avançado Doton")
									usr<<"Ganhou direito a escolher uma dica da Quest Avançado Doton!"
									switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2"))
										if("Dica 1")
											usr<<"<font size=3><font color=red>Treine muito a sua pericia até atingir um novo nível</font>"
										if("Dica 2")
											usr<<"<font size=3><font color=red>Procure pelo NPC Alastar dentro da Vila do Som</font>"
								if("Avançado Raiton")
									usr<<"Ganhou direito a escolher uma dica da Quest Avançado Raiton!"
									switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
										if("Dica 1")
											usr<<"<font size=3><font color=red>Treine muito a sua pericia até atingir um novo nível</font>"
								if("Avançado Fuuton")
									usr<<"Ganhou direito a escolher uma dica da Quest Avançado Fuuton!"
									switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1","Dica 2"))
										if("Dica 1")
											usr<<"<font size=3><font color=red>Treine muito a sua pericia até atingir um novo nível</font>"
										if("Dica 2")
											usr<<"<font size=3><font color=red>A Pedra Do Vento é encontrada nos arredores da Vila da Chuva</font>"
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
											usr<<"<font size=3><font color=red>Ninjas fracos como Jounnins não conseguem este jutsu</font>"
										if("Dica 4")
											usr<<"<font size=3><font color=red>Procure pelo NPC Terceiro Elemento escondido nos arredores da Vila da Chuva</font>"
								if("Nível Elemento")
									usr<<"Ganhou direito a escolher uma dica do Nível Elemento!"
									switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1"))
										if("Dica 1")
											usr<<"<font size=3><font color=red>Quanto mais perícia você treina, mais forte você se torna!</font>"
						if("Outros")
							switch(input("Escolha sobre qual Quest você deseja saber", text) in list ("Selos", "Extração DNA/Doujutsu", "Extração de Bijuu", "Implantar Doujutsu", "Saquear", "Quest Chakra", "Quest Stamina"))
								if("Selos")
									usr<<"Ganhou direito a escolher uma dica da Quest Selos!"
									switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3", "Dica 4", "Dica 5"))
										if("Dica 1")
											usr<<"<font size=3><font color=red>Seja rápido</font>"
										if("Dica 2")
											usr<<"<font size=3><font color=red>Saiba controlar bem o seu chakra</font>"
										if("Dica 3")
											usr<<"<font size=3><font color=red>Os ninjas mais fortem utilizam seus jutsus básicos muitas vezes até aprenderem a controlá-los</font>"
										if("Dica 4")
											usr<<"<font size=3><font color=red>Saiba até quanto de precisão um Gennin consegue evoluir seus Selos</font>"
										if("Dica 5")
											usr<<"<font size=3><font color=red>Treine bastante seu level</font>"
								if("Extração DNA/Doujutsu")
									usr<<"Ganhou direito a escolher uma dica da Quest Extração DNA/Doujutsu!"
									switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3", "Dica 4", "Dica 5"))
										if("Dica 1")
											usr<<"<font size=3><font color=red>Disseram que o NPC se perdeu enquanto passeava por uma montanha e acabou entrando em um labirinto</font>"
										if("Dica 2")
											usr<<"<font size=3><font color=red>Ninjas fracos como Gennins não conseguem esta habilidade</font>"
										if("Dica 3")
											usr<<"<font size=3><font color=red>Tenha um Controle perfeito do seu Chakra</font>"
										if("Dica 4")
											usr<<"<font size=3><font color=red>Treine muito o seu Level</font>"
										if("Dica 5")
											usr<<"<font size=3><font color=red>Tenha a sua Stamina no mais alto nível</font>"
								if("Extração Bijuu")
									usr<<"Ganhou direito a escolher uma dica da Quest Extração Bijuu!"
									switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3", "Dica 4", "Dica 5", "Dica 6"))
										if("Dica 1")
											usr<<"<font size=3><font color=red>Disseram que o NPC se perdeu dentro do labirinto da bijuu e viu, certa vez, o número 6 na parede</font>"
										if("Dica 2")
											usr<<"<font size=3><font color=red>Ninjas fracos como Gennins não conseguem esta habilidade</font>"
										if("Dica 3")
											usr<<"<font size=3><font color=red>Tenha um Controle perfeito do seu Chakra</font>"
										if("Dica 4")
											usr<<"<font size=3><font color=red>Treine muito o seu Level</font>"
										if("Dica 5")
											usr<<"<font size=3><font color=red>Saiba dominar o seu Chakra além do limite</font>"
										if("Dica 6")
											usr<<"<font size=3><font color=red>Tenha a sua Stamina no mais alto nível</font>"
								if("Implantar Doujutsu")
									usr<<"Ganhou direito a escolher uma dica da Quest Implantar Doujutsu!"
									switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2", "Dica 3"))
										if("Dica 1")
											usr<<"<font size=3><font color=red>Disseram que o NPC se perdeu perto de casa em uma Vila branca</font>"
										if("Dica 2")
											usr<<"<font size=3><font color=red>Ninjas fracos como Gennins não conseguem este feito</font>"
										if("Dica 3")
											usr<<"<font size=3><font color=red>Tenho ódio por todos e arranque, durante a guerra, aquilo que você mais deseja possuir</font>"
								if("Saquear")
									usr<<"Ganhou direito a escolher uma dica da Quest Saquear!"
									switch(input("Escolha uma das dicas abaixo", text) in list ("Dica 1", "Dica 2"))
										if("Dica 1")
											usr<<"<font size=3><font color=red>Disseram que o NPC se perdeu na Vila dos sem honra</font>"
										if("Dica 2")
											usr<<"<font size=3><font color=red>Quando sua penalidade aumentar, não pense que acabou!</font>"
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
											usr<<"<font size=3><font color=red>Procure pelos pergaminhos nos locais aonde você passou quando era mais fraco</font>"
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
											usr<<"<font size=3><font color=red>Procure pelos pergaminhos nos locais aonde você passou quando era mais fraco</font>"
				del(src)
			Olhar()
				usr<<"Um Raro Bau de Quest"
				src.loc=locate(usr.x,usr.y-1,usr.z)
				usr.AutoSave()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
			Destruir()
				usr<<"Você destruiu o [src]"
				del(src)