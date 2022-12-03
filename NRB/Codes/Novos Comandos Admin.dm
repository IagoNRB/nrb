mob/ADM/verb/Ticket10()
	set category = "Tickets"
	set name = "Dar TicketLog10"
	var/list/jogadores = list()
	for(var/mob/m in world)if(m.client)if(m)jogadores.Add(m)
	var/mob/m = input("Quem você quer dar TicketLog10?","TicketLog10") as mob in jogadores
	if(!m||!m.client)return
	var/premiacao=input("Quantos TicketLog10","TicketLog10")as num
	if(premiacao<=0)premiacao=0
	switch(alert("Tem certeza que quer dar [premiacao] TicketLog10 para [m]?","TicketLog10","Sim","Não"))
		if("Sim")
			m.ticketlog10+=premiacao
			m << "Você ganhou [premiacao] Tickets Log10!"
			usr<< "Prontinho!"


mob/ADM/verb/CriarTicketRename()
	set category = "ADM"
	set name = "Criar Ticket Rename"
	switch(alert("Você tem certeza que deseja criar um Ticket Rename?", "Ticket Rename", "Sim", "Não"))
		if("Sim")
			var/obj/Tesouro/TicketRename/B = new /obj/Tesouro/TicketRename
			B.loc = locate(usr.x,usr.y-1,usr.z)
			text2file("[time2text(world.realtime)]: <b>[usr]</b>([usr.key]) <u>Criou um Ticket Rename!<BR>","TesouroLog.html")
		if("Não")
			usr<<"Ok"

mob/ADM/verb/Ticket11()
	set category = "Tickets"
	set name = "Dar TicketLog11"
	var/list/jogadores = list()
	for(var/mob/m in world)if(m.client)if(m)jogadores.Add(m)
	var/mob/m = input("Quem você quer dar TicketLog11?","TicketLog11") as mob in jogadores
	if(!m||!m.client)return
	var/premiacao=input("Quantos TicketLog11","TicketLog10")as num
	if(premiacao<=0)premiacao=0
	switch(alert("Tem certeza que quer dar [premiacao] TicketLog11 para [m]?","TicketLog10","Sim","Não"))
		if("Sim")
			m.ticketlog11+=premiacao
			m << "Você ganhou [premiacao] Tickets Log11!"
			usr<< "Prontinho!"

mob/ADM/verb/Ticket100()
	set category = "Tickets"
	set name = "Dar TicketLog100"
	var/list/jogadores = list()
	for(var/mob/m in world)if(m.client)if(m)jogadores.Add(m)
	var/mob/m = input("Quem você quer dar TicketLog100?","TicketLog100") as mob in jogadores
	if(!m||!m.client)return
	var/premiacao=input("Quantos TicketLog100","TicketLog100")as num
	if(premiacao<=0)premiacao=0
	switch(alert("Tem certeza que quer dar [premiacao] TicketLog100 para [m]?","TicketLog100","Sim","Não"))
		if("Sim")
			m.ticketlog100+=premiacao
			m << "Você ganhou [premiacao] Tickets Log100!"
			usr<< "Prontinho!"

mob/ADM/verb/Ticket4()
	set category = "Tickets"
	set name = "Dar TicketLog4"
	var/list/jogadores = list()
	for(var/mob/m in world)if(m.client)if(m)jogadores.Add(m)
	var/mob/m = input("Quem você quer dar TicketLog4?","TicketLog4") as mob in jogadores
	if(!m||!m.client)return
	var/premiacao=input("Quantos TicketLog4","TicketLog4")as num
	if(premiacao<=0)premiacao=0
	switch(alert("Tem certeza que quer dar [premiacao] TicketLog4 para [m]?","TicketLog4","Sim","Não"))
		if("Sim")
			m.ticketlog4+=premiacao
			m << "Você ganhou [premiacao] Tickets Log4!"
			usr<< "Prontinho!"

mob/ADM/verb/Ticket5()
	set category = "Tickets"
	set name = "Dar TicketLog5"
	var/list/jogadores = list()
	for(var/mob/m in world)if(m.client)if(m)jogadores.Add(m)
	var/mob/m = input("Quem você quer dar TicketLog5?","TicketLog5") as mob in jogadores
	if(!m||!m.client)return
	var/premiacao=input("Quantos TicketLog5","TicketLog5")as num
	if(premiacao<=0)premiacao=0
	switch(alert("Tem certeza que quer dar [premiacao] TicketLog5 para [m]?","TicketLog5","Sim","Não"))
		if("Sim")
			m.ticketlog5+=premiacao
			m << "Você ganhou [premiacao] Tickets Log5!"
			usr<< "Prontinho!"

mob/ADM/verb/ZTicket()
	set category = "Tickets"
	set name = "Zerar TicketLog"
	var/list/jogadores = list()
	for(var/mob/m in world)if(m.client)if(m)jogadores.Add(m)
	var/mob/m = input("Quem você quer zerar os TicketLog5?","TicketLog5") as mob in jogadores
	if(!m||!m.client)return
	switch(alert("Tem certeza que quer zerar os Ticketlogs de [m]?","TicketLog5","Sim","Não"))
		if("Sim")
			m.ticketlog10=0
			m.ticketlog11=0
			m.ticketlog100=0
			m.ticketlog4=0
			m.ticketlog5=0
			m<<"Seus TicketLogs foram zerados por [usr]!"
			usr<< "Prontinho!"

//======================================Editar Stats=====================================//
mob/ADM/verb/EditHP()
	set category = "Editar Stats"
	set name = "Editar HP"
	for(var/mob/m in oview(1))
		if(!m.client)return
		var/premiacao=input("Quanto de HP","Editar HP")as num
		if(premiacao<=0)premiacao=0
		switch(alert("Tem certeza que quer editar [premiacao] de HP [m]?","Editar HP","Sim","Não"))
			if("Sim")
				m.maxhealth=premiacao
				m << "Prontinho!"
				usr<< "Prontinho!"

mob/ADM/verb/EditCH()
	set category = "Editar Stats"
	set name = "Editar Chakra"
	for(var/mob/m in oview(1))
		if(!m.client)return
		var/premiacao=input("Quanto de Chakra","Editar Stats")as num
		if(premiacao<=0)premiacao=0
		switch(alert("Tem certeza que quer editar [premiacao] de Chakra [m]?","Editar Stats","Sim","Não"))
			if("Sim")
				m.Mchakra=premiacao
				m << "Prontinho!"
				usr<< "Prontinho!"

mob/ADM/verb/EditST()
	set category = "Editar Stats"
	set name = "Editar Stamina"
	for(var/mob/m in oview(1))
		if(!m.client)return
		var/premiacao=input("Quanto de Stamina","Editar Stats")as num
		if(premiacao<=0)premiacao=0
		switch(alert("Tem certeza que quer editar [premiacao] de Stamina [m]?","Editar Stats","Sim","Não"))
			if("Sim")
				m.Mstamina=premiacao
				m << "Prontinho!"
				usr<< "Prontinho!"

mob/ADM/verb/EditVel()
	set category = "Editar Stats"
	set name = "Editar Velocidade"
	for(var/mob/m in oview(1))
		if(!m.client)return
		var/premiacao=input("Quanto de Velocidade","Editar Stats")as num
		if(premiacao<=0)premiacao=0
		switch(alert("Tem certeza que quer editar [premiacao] de Velocidade [m]?","Editar Stats","Sim","Não"))
			if("Sim")
				m.veloN=premiacao
				m << "Prontinho!"
				usr<< "Prontinho!"

mob/ADM/verb/EditTai()
	set category = "Editar Stats"
	set name = "Editar Tai"
	for(var/mob/m in oview(1))
		if(!m.client)return
		var/premiacao=input("Quanto de Tai","Editar Stats")as num
		if(premiacao<=0)premiacao=0
		switch(alert("Tem certeza que quer editar [premiacao] de Tai [m]?","Editar Stats","Sim","Não"))
			if("Sim")
				m.Mtai=premiacao
				m << "Prontinho!"
				usr<< "Prontinho!"

mob/ADM/verb/EditNin()
	set category = "Editar Stats"
	set name = "Editar Nin"
	for(var/mob/m in oview(1))
		if(!m.client)return
		var/premiacao=input("Quanto de Nin","Editar Stats")as num
		if(premiacao<=0)premiacao=0
		switch(alert("Tem certeza que quer editar [premiacao] de Nin [m]?","Editar Stats","Sim","Não"))
			if("Sim")
				m.Mnin=premiacao
				m << "Prontinho!"
				usr<< "Prontinho!"

mob/ADM/verb/EditGen()
	set category = "Editar Stats"
	set name = "Editar Gen"
	for(var/mob/m in oview(1))
		if(!m.client)return
		var/premiacao=input("Quanto de Gen","Editar Stats")as num
		if(premiacao<=0)premiacao=0
		switch(alert("Tem certeza que quer editar [premiacao] de Gen [m]?","Editar Stats","Sim","Não"))
			if("Sim")
				m.Mgen=premiacao
				m << "Prontinho!"
				usr<< "Prontinho!"

mob/ADM/verb/EditArm()
	set category = "Editar Stats"
	set name = "Editar Armas"
	for(var/mob/m in oview(1))
		if(!m.client)return
		var/premiacao=input("Quanto de Armas","Editar Stats")as num
		if(premiacao<=0)premiacao=0
		switch(alert("Tem certeza que quer editar [premiacao] de Armas [m]?","Editar Stats","Sim","Não"))
			if("Sim")
				m.Mshurikenskill=premiacao
				m << "Prontinho!"
				usr<< "Prontinho!"

mob/ADM/verb/EditHonra()
	set category = "Editar Stats"
	set name = "Editar Honra"
	for(var/mob/m in oview(1))
		if(!m.client)return
		var/premiacao=input("Quanto de Honra","Editar HP")as num
		if(premiacao<=0)premiacao=0
		switch(alert("Tem certeza que quer editar [premiacao] de Honra [m]?","Editar HP","Sim","Não"))
			if("Sim")
				m.honra=premiacao
				m << "Prontinho!"
				usr<< "Prontinho!"

mob/ADM/verb/EditCC()
	set category = "Editar Stats"
	set name = "Editar CC"
	for(var/mob/m in oview(1))
		if(!m.client)return
		var/premiacao=input("Quanto de CC","Editar HP")as num
		if(premiacao<=0)premiacao=0
		switch(alert("Tem certeza que quer editar [premiacao] de Honra [m]?","Editar CC","Sim","Não"))
			if("Sim")
				m.chakraN=premiacao
				m << "Prontinho!"
				usr<< "Prontinho!"
//===============================Perícias Elementais=================//

mob/ADM/verb/EditKaton()
	set category = "Editar Stats"
	set name = "Editar Katon"
	for(var/mob/m in oview(1))
		if(!m.client)return
		var/premiacao=input("Quanto de Katon","Editar Stats")as num
		if(premiacao<=0)premiacao=0
		switch(alert("Tem certeza que quer editar [premiacao] de Katon [m]?","Editar Stats","Sim","Não"))
			if("Sim")
				m.fogoN=premiacao
				m << "Prontinho!"
				usr<< "Prontinho!"

mob/ADM/verb/EditSuiton()
	set category = "Editar Stats"
	set name = "Editar Suiton"
	for(var/mob/m in oview(1))
		if(!m.client)return
		var/premiacao=input("Quanto de Suiton","Editar Stats")as num
		if(premiacao<=0)premiacao=0
		switch(alert("Tem certeza que quer editar [premiacao] de Suiton [m]?","Editar Stats","Sim","Não"))
			if("Sim")
				m.aguaN=premiacao
				m << "Prontinho!"
				usr<< "Prontinho!"

mob/ADM/verb/EditRaiton()
	set category = "Editar Stats"
	set name = "Editar Raiton"
	for(var/mob/m in oview(1))
		if(!m.client)return
		var/premiacao=input("Quanto de Raiton","Editar Stats")as num
		if(premiacao<=0)premiacao=0
		switch(alert("Tem certeza que quer editar [premiacao] de Raiton [m]?","Editar Stats","Sim","Não"))
			if("Sim")
				m.trovaoN=premiacao
				m << "Prontinho!"
				usr<< "Prontinho!"

mob/ADM/verb/EditFuuton()
	set category = "Editar Stats"
	set name = "Editar Fuuton"
	for(var/mob/m in oview(1))
		if(!m.client)return
		var/premiacao=input("Quanto de Fuuton","Editar Stats")as num
		if(premiacao<=0)premiacao=0
		switch(alert("Tem certeza que quer editar [premiacao] de Fuuton [m]?","Editar Stats","Sim","Não"))
			if("Sim")
				m.ventoN=premiacao
				m << "Prontinho!"
				usr<< "Prontinho!"

mob/ADM/verb/EditDoton()
	set category = "Editar Stats"
	set name = "Editar Doton"
	for(var/mob/m in oview(1))
		if(!m.client)return
		var/premiacao=input("Quanto de Doton","Editar Stats")as num
		if(premiacao<=0)premiacao=0
		switch(alert("Tem certeza que quer editar [premiacao] de Doton [m]?","Editar Stats","Sim","Não"))
			if("Sim")
				m.terraN=premiacao
				m << "Prontinho!"
				usr<< "Prontinho!"


//=================================Stats Secundários==================//


mob/ADM/verb/Editwins()
	set category = "Editar Kills"
	set name = "Editar Vitorias"
	for(var/mob/m in oview(1))
		if(!m.client)return
		var/premiacao=input("Quanto de Vitorias","Editar Stats")as num
		if(premiacao<=0)premiacao=0
		switch(alert("Tem certeza que quer editar [premiacao] de Vitorias [m]?","Editar Stats","Sim","Não"))
			if("Sim")
				m.vitorias=premiacao
				m << "Prontinho!"
				usr<< "Prontinho!"

mob/ADM/verb/EditNK()
	set category = "Editar Kills"
	set name = "Editar NukeKills"
	for(var/mob/m in oview(1))
		if(!m.client)return
		var/premiacao=input("Quanto de NukeKills","Editar Stats")as num
		if(premiacao<=0)premiacao=0
		switch(alert("Tem certeza que quer editar [premiacao] de NukeKills [m]?","Editar Stats","Sim","Não"))
			if("Sim")
				m.missingkills=premiacao
				m << "Prontinho!"
				usr<< "Prontinho!"

mob/ADM/verb/EditUK()
	set category = "Editar Kills"
	set name = "Editar Uchiha Kills"
	for(var/mob/m in oview(1))
		if(!m.client)return
		var/premiacao=input("Quanto de Uchiha Kills","Editar Stats")as num
		if(premiacao<=0)premiacao=0
		switch(alert("Tem certeza que quer editar [premiacao] de Uchiha Kills [m]?","Editar Stats","Sim","Não"))
			if("Sim")
				m.uchikills=premiacao
				m << "Prontinho!"
				usr<< "Prontinho!"

mob/ADM/verb/EditSK()
	set category = "Editar Kills"
	set name = "Editar Senju Kills"
	for(var/mob/m in oview(1))
		if(!m.client)return
		var/premiacao=input("Quanto de Senju Kills","Editar Stats")as num
		if(premiacao<=0)premiacao=0
		switch(alert("Tem certeza que quer editar [premiacao] de Senju Kills [m]?","Editar Stats","Sim","Não"))
			if("Sim")
				m.senjukills=premiacao
				m << "Prontinho!"
				usr<< "Prontinho!"

mob/ADM/verb/EditHK()
	set category = "Editar Kills"
	set name = "Editar Hyuuga Kills"
	for(var/mob/m in oview(1))
		if(!m.client)return
		var/premiacao=input("Quanto de Hyuuga Kills","Editar Stats")as num
		if(premiacao<=0)premiacao=0
		switch(alert("Tem certeza que quer editar [premiacao] de Hyuuga Kills [m]?","Editar Stats","Sim","Não"))
			if("Sim")
				m.hyuugakills=premiacao
				m << "Prontinho!"
				usr<< "Prontinho!"

mob/ADM/verb/EditHKH()
	set category = "Editar Kills"
	set name = "Editar Primeira Linhagem Derrotados"
	for(var/mob/m in oview(1))
		if(!m.client)return
		var/premiacao=input("Quanto de Primeira Linhagem Derrotados","Editar Stats")as num
		if(premiacao<=0)premiacao=0
		switch(alert("Tem certeza que quer editar [premiacao] de Primeira Linhagem Derrotados [m]?","Editar Stats","Sim","Não"))
			if("Sim")
				m.hyuugaHkills=premiacao
				m << "Prontinho!"
				usr<< "Prontinho!"

mob/ADM/verb/EditHKN()
	set category = "Editar Kills"
	set name = "Editar Segunda Linhagem Derrotados"
	for(var/mob/m in oview(1))
		if(!m.client)return
		var/premiacao=input("Quanto de Segunda Linhagem Derrotados","Editar Stats")as num
		if(premiacao<=0)premiacao=0
		switch(alert("Tem certeza que quer editar [premiacao] de Segunda Linhagem Derrotados [m]?","Editar Stats","Sim","Não"))
			if("Sim")
				m.hyuugaNkills=premiacao
				m << "Prontinho!"
				usr<< "Prontinho!"


//=================================Edit de Uses============================//
mob/ADM/verb/EditSU()
	set category = "Editar Uses"
	set name = "Editar Sharingan Uses"
	for(var/mob/m in oview(1))
		if(!m.client)return
		var/premiacao=input("Quanto de Sharingan Uses","Editar Stats")as num
		if(premiacao<=0)premiacao=0
		switch(alert("Tem certeza que quer editar [premiacao] de Sharingan Uses [m]?","Editar Stats","Sim","Não"))
			if("Sim")
				m.Suses=premiacao
				m << "Prontinho!"
				usr<< "Prontinho!"

mob/ADM/verb/EditBU()
	set category = "Editar Uses"
	set name = "Editar Byakugan Uses"
	for(var/mob/m in oview(1))
		if(!m.client)return
		var/premiacao=input("Quanto de Byakugan Uses","Editar Stats")as num
		if(premiacao<=0)premiacao=0
		switch(alert("Tem certeza que quer editar [premiacao] de Byakugan Uses [m]?","Editar Stats","Sim","Não"))
			if("Sim")
				m.byaU=premiacao
				m << "Prontinho!"
				usr<< "Prontinho!"

mob/ADM/verb/EditMSU()
	set category = "Editar Uses"
	set name = "Editar Mangekyou Sharingan Uses"
	for(var/mob/m in oview(1))
		if(!m.client)return
		var/premiacao=input("Quanto de Mangekyou Sharingan Uses","Editar Stats")as num
		if(premiacao<=0)premiacao=0
		switch(alert("Tem certeza que quer editar [premiacao] de Mangekyou Sharingan Uses [m]?","Editar Stats","Sim","Não"))
			if("Sim")
				m.mangeN=premiacao
				m << "Prontinho!"
				usr<< "Prontinho!"

mob/ADM/verb/EditBun()
	set category = "Editar Uses"
	set name = "Editar Bunshin Uses"
	for(var/mob/m in oview(1))
		if(!m.client)return
		var/premiacao=input("Quanto de Bunshin Uses","Editar Stats")as num
		if(premiacao<=0)premiacao=0
		switch(alert("Tem certeza que quer editar [premiacao] de Bunshin Uses [m]?","Editar Stats","Sim","Não"))
			if("Sim")
				m.BunshinN=premiacao
				m << "Prontinho!"
				usr<< "Prontinho!"

mob/ADM/verb/EditKaw()
	set category = "Editar Uses"
	set name = "Editar Kawarimi Uses"
	for(var/mob/m in oview(1))
		if(!m.client)return
		var/premiacao=input("Quanto de Kawarimi Uses","Editar Stats")as num
		if(premiacao<=0)premiacao=0
		switch(alert("Tem certeza que quer editar [premiacao] de Kawarimi Uses [m]?","Editar Stats","Sim","Não"))
			if("Sim")
				m.KawaN=premiacao
				m << "Prontinho!"
				usr<< "Prontinho!"

mob/ADM/verb/EditHen()
	set category = "Editar Uses"
	set name = "Editar Henge Uses"
	for(var/mob/m in oview(1))
		if(!m.client)return
		var/premiacao=input("Quanto de Henge Uses","Editar Stats")as num
		if(premiacao<=0)premiacao=0
		switch(alert("Tem certeza que quer editar [premiacao] de Henge Uses [m]?","Editar Stats","Sim","Não"))
			if("Sim")
				m.hengeN=premiacao
				m << "Prontinho!"
				usr<< "Prontinho!"

//======================Editar Missões====================//
mob/ADM/verb/EditDmi()
	set category = "Editar Missoes"
	set name = "Editar Missoes D"
	for(var/mob/m in oview(1))
		if(!m.client)return
		var/premiacao=input("Quanto de Missoes D","Editar Stats")as num
		if(premiacao<=0)premiacao=0
		switch(alert("Tem certeza que quer editar [premiacao] de Missoes D [m]?","Editar Stats","Sim","Não"))
			if("Sim")
				m.dmission=premiacao
				m << "Prontinho!"
				usr<< "Prontinho!"

mob/ADM/verb/EditCmi()
	set category = "Editar Missoes"
	set name = "Editar Missoes C"
	for(var/mob/m in oview(1))
		if(!m.client)return
		var/premiacao=input("Quanto de Missoes C","Editar Stats")as num
		if(premiacao<=0)premiacao=0
		switch(alert("Tem certeza que quer editar [premiacao] de Missoes C [m]?","Editar Stats","Sim","Não"))
			if("Sim")
				m.cmission=premiacao
				m << "Prontinho!"
				usr<< "Prontinho!"

mob/ADM/verb/EditBmi()
	set category = "Editar Missoes"
	set name = "Editar Missoes B"
	for(var/mob/m in oview(1))
		if(!m.client)return
		var/premiacao=input("Quanto de Missoes B","Editar Stats")as num
		if(premiacao<=0)premiacao=0
		switch(alert("Tem certeza que quer editar [premiacao] de Missoes B [m]?","Editar Stats","Sim","Não"))
			if("Sim")
				m.bmission=premiacao
				m << "Prontinho!"
				usr<< "Prontinho!"

mob/ADM/verb/EditAmi()
	set category = "Editar Missoes"
	set name = "Editar Missoes A"
	for(var/mob/m in oview(1))
		if(!m.client)return
		var/premiacao=input("Quanto de Missoes A","Editar Stats")as num
		if(premiacao<=0)premiacao=0
		switch(alert("Tem certeza que quer editar [premiacao] de Missoes A [m]?","Editar Stats","Sim","Não"))
			if("Sim")
				m.amission=premiacao
				m << "Prontinho!"
				usr<< "Prontinho!"

mob/ADM/verb/EditSmi()
	set category = "Editar Missoes"
	set name = "Editar Missoes S"
	for(var/mob/m in oview(1))
		if(!m.client)return
		var/premiacao=input("Quanto de Missoes S","Editar Stats")as num
		if(premiacao<=0)premiacao=0
		switch(alert("Tem certeza que quer editar [premiacao] de Missoes S [m]?","Editar Stats","Sim","Não"))
			if("Sim")
				m.smission=premiacao
				m << "Prontinho!"
				usr<< "Prontinho!"
//===============Arenas========================//
mob/ADM/verb/desbugA()
	set category = "Desbugar Arenas"
	set name = "Desbugar Arena"
	if(temarena==1)
		temarena=0
		world<<"<font color=green><b><center>[usr] desbugou a Arena!"
		for(var/mob/M in world)
			if(M.client)
				if(M.naare)
					M.naare=0
					usr<<"Você desbugou [M]!"
					M<<"Você foi desbugado por [usr]!"
					M.Suicides()
					world<<"<font color=green><b>[M] estava bugando ela!"
	else
		usr<<"A Arena não está bugada!"

mob/ADM/verb/desbugAT()
	set category = "Desbugar Arenas"
	set name = "Desbugar Arena Tradicional"
	if(temarenat==1)
		temarenat=0
		world<<"<font color=green><b><center>[usr] desbugou a Arena Tradicional!"
		for(var/mob/M in world)
			if(M.client)
				if(M.naart)
					M.naart=0
					usr<<"Você desbugou [M]!"
					M<<"Você foi desbugado por [usr]!"
					M.Suicides()
					world<<"<font color=green><b>[M] estava bugando ela!"
	else
		usr<<"A Arena Tradicional não está bugada!"

mob/ADM/verb/desbugAJ()
	set category = "Desbugar Arenas"
	set name = "Desbugar Arena Jaula"
	if(temjaula==1)
		temjaula=0
		world<<"<font color=green><b><center>[usr] desbugou a Arena: Jaula!"
		for(var/mob/M in world)
			if(M.client)
				if(M.najau)
					M.najau=0
					usr<<"Você desbugou [M]!"
					M<<"Você foi desbugado por [usr]!"
					M.Suicides()
					world<<"<font color=green><b>[M] estava bugando ela!"
	else
		usr<<"A Arena: Jaula não está bugada!"


//========================================================================//
mob/ADM/verb/desbugSUB()
	set category = "Desbugar Subs"
	set name = "Desbugar SubCla"
	var/senha=input("Qual a senha?")as text
	if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
		switch(input("Qual Sub você quer desbugar?", text) in list("Hidan","Deidara","Zetsu","Pain","Sasori","Konan","Tobi","Kakuzu","Kisame Akat","Itachi","Kisame 7SS","Zabuza 7SS","Jinin 7SS","Ringo 7SS","Jinpachi 7SS","Kushimaru 7SS","Raiga 7SS","Jiroubou SO","Kidoumaru SO","Sakon SO","Dosu SO","Tayuya SO","Orochimaru SO","Sasuke Taka","Karin Taka","Juugo Taka","Suigetsu Taka","Sandaime Hokage","Oonoki","Hashirama","Tobirama","Mizukage","Minato","Raikage","Cancelar"))
			if("Hidan")
				if(WHidan:dono<>"Ninguem")
					WHidan:dono="Ninguem"
					usr<<"Feito!"
				else
					usr<<"Não há ninguém com esse Sub!"
			if("Deidara")
				if(WDeidara:dono<>"Ninguem")
					WDeidara:dono="Ninguem"
					usr<<"Feito!"
				else
					usr<<"Não há ninguém com esse Sub!"
			if("Zetsu")
				if(WZetsu:dono<>"Ninguem")
					WZetsu:dono="Ninguem"
					usr<<"Feito!"
				else
					usr<<"Não há ninguém com esse Sub!"
			if("Pain")
				if(WPain:dono<>"Ninguem")
					WPain:dono="Ninguem"
					usr<<"Feito!"
				else
					usr<<"Não há ninguém com esse Sub!"
			if("Sasori")
				if(WSasori:dono<>"Ninguem")
					WSasori:dono="Ninguem"
					usr<<"Feito!"
				else
					usr<<"Não há ninguém com esse Sub!"
			if("Konan")
				if(WKonan:dono<>"Ninguem")
					WKonan:dono="Ninguem"
					usr<<"Feito!"
				else
					usr<<"Não há ninguém com esse Sub!"
			if("Tobi")
				if(WTobi:dono<>"Ninguem")
					WTobi:dono="Ninguem"
					usr<<"Feito!"
				else
					usr<<"Não há ninguém com esse Sub!"
			if("Kakuzu")
				if(WKakuzu:dono<>"Ninguem")
					WKakuzu:dono="Ninguem"
					usr<<"Feito!"
				else
					usr<<"Não há ninguém com esse Sub!"
			if("Kisame Akat")
				if(WKisameAkat:dono<>"Ninguem")
					WKisameAkat:dono="Ninguem"
					usr<<"Feito!"
				else
					usr<<"Não há ninguém com esse Sub!"
			if("Itachi")
				if(WItachi:dono<>"Ninguem")
					WItachi:dono="Ninguem"
					usr<<"Feito!"
				else
					usr<<"Não há ninguém com esse Sub!"
			if("Kisame 7SS")
				if(WKisameSSS:dono<>"Ninguem")
					WKisameSSS:dono="Ninguem"
					usr<<"Feito!"
				else
					usr<<"Não há ninguém com esse Sub!"
			if("Zabuza 7SS")
				if(WZabuzaSSS:dono<>"Ninguem")
					WZabuzaSSS:dono="Ninguem"
					usr<<"Feito!"
				else
					usr<<"Não há ninguém com esse Sub!"
			if("Raiga 7SS")
				if(WRaigaSSS:dono<>"Ninguem")
					WRaigaSSS:dono="Ninguem"
					usr<<"Feito!"
				else
					usr<<"Não há ninguém com esse Sub!"
			if("Jiroubou SO")
				if(WJiroubouSO:dono<>"Ninguem")
					WJiroubouSO:dono="Ninguem"
					usr<<"Feito!"
				else
					usr<<"Não há ninguém com esse Sub!"
			if("Kidoumaru SO")
				if(WKidoumaruSO:dono<>"Ninguem")
					WKidoumaruSO:dono="Ninguem"
					usr<<"Feito!"
				else
					usr<<"Não há ninguém com esse Sub!"
			if("Sakon SO")
				if(WSakonSO:dono<>"Ninguem")
					WSakonSO:dono="Ninguem"
					usr<<"Feito!"
				else
					usr<<"Não há ninguém com esse Sub!"
			if("Dosu SO")
				if(WDosuSO:dono<>"Ninguem")
					WDosuSO:dono="Ninguem"
					usr<<"Feito!"
				else
					usr<<"Não há ninguém com esse Sub!"
			if("Tayuya SO")
				if(WTayuyaSO:dono<>"Ninguem")
					WTayuyaSO:dono="Ninguem"
					usr<<"Feito!"
				else
					usr<<"Não há ninguém com esse Sub!"
			if("Orochimaru SO")
				if(WOrochimaruSub:dono<>"Ninguem")
					WOrochimaruSub:dono="Ninguem"
					usr<<"Feito!"
				else
					usr<<"Não há ninguém com esse Sub!"
			if("Sasuke Taka")
				if(WSasukeTaka:dono<>"Ninguem")
					WSasukeTaka:dono="Ninguem"
					usr<<"Feito!"
				else
					usr<<"Não há ninguém com esse Sub!"
			if("Karin Taka")
				if(WKarinTaka:dono<>"Ninguem")
					WKarinTaka:dono="Ninguem"
					usr<<"Feito!"
				else
					usr<<"Não há ninguém com esse Sub!"
			if("Juugo Taka")
				if(WJuugoTaka:dono<>"Ninguem")
					WJuugoTaka:dono="Ninguem"
					usr<<"Feito!"
				else
					usr<<"Não há ninguém com esse Sub!"
			if("Suigetsu Taka")
				if(WSuigetsuTaka:dono<>"Ninguem")
					WSuigetsuTaka:dono="Ninguem"
					usr<<"Feito!"
				else
					usr<<"Não há ninguém com esse Sub!"
			if("Sandaime Hokage")
				if(WSandaimeH:dono<>"Ninguem")
					WSandaimeH:dono="Ninguem"
					usr<<"Feito!"
				else
					usr<<"Não há ninguém com esse Sub!"
			if("Oonoki")
				if(WOonoki:dono<>"Ninguem")
					WOonoki:dono="Ninguem"
					usr<<"Feito!"
				else
					usr<<"Não há ninguém com esse Sub!"
			if("Hashirama")
				if(WHashirama:dono<>"Ninguem")
					WHashirama:dono="Ninguem"
					usr<<"Feito!"
				else
					usr<<"Não há ninguém com esse Sub!"
			if("Tobirama")
				if(WTobirama:dono<>"Ninguem")
					WTobirama:dono="Ninguem"
					usr<<"Feito!"
				else
					usr<<"Não há ninguém com esse Sub!"
			if("Mizukage")
				if(WMizukage:dono<>"Ninguem")
					WMizukage:dono="Ninguem"
					usr<<"Feito!"
				else
					usr<<"Não há ninguém com esse Sub!"
			if("Minato")
				if(WMinato:dono<>"Ninguem")
					WMinato:dono="Ninguem"
					usr<<"Feito!"
				else
					usr<<"Não há ninguém com esse Sub!"
			if("Raikage")
				if(WRaikage:dono<>"Ninguem")
					WRaikage:dono="Ninguem"
					usr<<"Feito!"
				else
					usr<<"Não há ninguém com esse Sub!"
			if("Ringo 7SS")
				if(WRingo:dono==src.key)
					WRingo:dono="Ninguem"
				else
					usr<<"Não há ninguém com esse Sub!"
			if("Jinin 7SS")
				if(WJinin:dono<>src.key)
					WJinin:dono="Ninguem"
				else
					usr<<"Não há ninguém com esse Sub!"
			if("Jinpachi 7SS")
				if(WJinpachi:dono<>src.key)
					WJinpachi:dono="Ninguem"
				else
					usr<<"Não há ninguém com esse Sub!"
			if("Kushimaru 7SS")
				if(WKushimaru:dono<>src.key)
					WKushimaru:dono="Ninguem"
				else
					usr<<"Não há ninguém com esse Sub!"
			if("Cancelar")
				usr<<"OK!"


//============================================================================//
var
	ChuunintimeS
	ChuuninflorestaS
	ChuuninexamS

mob/var/csdeserto=0


mob/GM
	verb
		SChuuninexam()
			set category = "GM"
			set name = "Chuunin Examination Suna"
			var/senha=input("Qual a senha?")as text
			if(senha==""||usr.key=="Iago762"||usr.key==""||usr.key=="")
				switch(input("Selecione uma opção do Chuunin Shiken","Chuunin Shiken", text) in list ("Iniciar Chuunin Shiken","Encerrar Exame","Encerrar Floresta","Selecionar Oponentes (Torre)","Encerrar Chuunin Shiken"))
					if("Iniciar Chuunin Shiken")
						if(!ChuunintimeS)
							usr<<"Você será Teleportado para a torre do Exame Chuunin quando o mesmo começar."
							ChuunintimeS=1
							world<<"<font face=tahoma><font size=3><font color=white>Haverá um Exame Chuunin em 5 minutos. Vá para as salas Chuunins nas Academias!"
							sleep(500)
							world<<"<font face=tahoma><font size=3><font color=white>Haverá um Exame Chuunin em 4 minutos."
							sleep(500)
							world<<"<font face=tahoma><font size=3><font color=white>Haverá um Exame Chuunin em 3 minutos."
							sleep(500)
							world<<"<font face=tahoma><font size=3><font color=white>Haverá um Exame Chuunin em 2 minutos."
							sleep(500)
							world<<"<font face=tahoma><font size=3><font color=white>Haverá um Exame Chuunin em 1 minuto."
							sleep(500)
							world<<"<font face=tahoma><font size=3><font color=white>O Exame Chuunin começou!"
							for(var/mob/M in world)
								M.sefodeulegal=0
							ChuuninflorestaS=1
							usr.loc=locate(60,184,5)
							while(ChuuninflorestaS)
								sleep(1800)
								var/DesertoS=0
								for(var/mob/M in world)
									if(M.client)
										if(M.z==3&&M.x>199&&M.x<300&&M.y>0&&M.y<103)
											if(ChuuninflorestaS)
												DesertoS++
								world<<"\red <b>Chuunin Info:</b>\white Tem <b>[DesertoS]</b> jogadores no Deserto da Morte!"
							return
					if("Encerrar Exame")
						if(ChuunintimeS)
							world<<"\red <b>Chuunin Info:</b>\white A primeira parte do Exame Chuunin acabou!"
							ChuunintimeS=0
							for(var/mob/M in world)
								if(M.client)
									M.sefodeulegal=1
					if("Encerrar Floresta")
						if(!ChuunintimeS)
							if(ChuuninflorestaS)
								world<<"\red <b>Chuunin Info:</b>\white A parte do Deserto da Morte acabou!"
								ChuunintimeS=0
								ChuuninflorestaS=0
								for(var/mob/M in world)
									if(M.client)
										if(M.z==3&&M.x>199&&M.x<300&&M.y>0&&M.y<103)
											for(var/obj/objetos/heavenscroll/H in M.contents)
												del(H)
											for(var/obj/objetos/earthscroll/S in M.contents)
												del(S)
											for(var/obj/objetos/heavenscroll/H2 in world)
												del(H2)
											for(var/obj/objetos/earthscroll/S in world)
												del(S2)
											M.earthscroll=0
											M.heavenscroll=0
											M.csdeserto=0
											M.Suicides()
					if("Selecionar Oponentes (Torre)")
						if(!ChuunintimeS)
							if(!ChuuninflorestaS)
								switch(alert("Quantos serão os lutadores?","Selecionar Oponentes (Torre)","2","3","Cancelar"))
									if("2")
										var/list/Menu = list()
										for(var/mob/A in world)
											if(istype(A,/mob))
												if(A.client)
													Menu.Add(A)
										for(var/mob/B in world)
											if(istype(B,/mob))
												if(B.client)
													Menu.Add(B)
										var/mob/A = input("Selecione Oponente 1")as mob in Menu
										switch(alert("Oponente #1: [A]","Torre","Sim","Não"))
											if("Sim")
												var/mob/B = input("Selecione Oponente 2")as mob in Menu
												switch(alert("Oponente #2: [B]","Torre","Sim","Não"))
													if("Sim")
														if(!A||!B)
															usr<<"Um deles deslogou."
															return
														if(A.client&&B.client)
															if(A.client.address == B.client.address)
																usr << "<b>[A]</b> e <b>[B]</b> tem o mesmo IP, selecione oponentes diferentes!"
																return
														A.loc=locate(39,161,5)
														B.loc=locate(82,161,5)
														oponente1=A
														oponente2=B
														world << "<font face=tahoma><center><font size=2><b>[A]</b> VS <b>[B]</b></font>! A Luta começará em 3 segundos!"
														A.Frozen = 1
														B.Frozen = 1
														A.PK=0
														B.PK=0
														sleep(30)
														world << "<font face=tahoma><center><font size=2>3</font>"
														sleep(15)
														world << "<font face=tahoma><center><font size=2>2</font>"
														sleep(15)
														world << "<font face=tahoma><center><font size=2>1</font>"
														sleep(15)
														world << "<font face=tahoma><center><font color=red><font size=3><b>LUTEM!</b></font>"
														A.PK = 1
														A.Frozen = 0
														B.PK = 1
														B.Frozen = 0
														return
													else
														return
											else
												return
									if("3")
										var/list/Menu = list()
										for(var/mob/A in world)
											if(istype(A,/mob))
												if(A.client)
													Menu.Add(A)
										for(var/mob/B in world)
											if(istype(B,/mob))
												if(B.client)
													Menu.Add(B)
										for(var/mob/C in world)
											if(istype(C,/mob))
												if(C.client)
													Menu.Add(C)
										var/mob/A = input("Selecione Oponente 1")as mob in Menu
										switch(alert("Oponente #1: [A]","Torre","Sim","Não"))
											if("Sim")
												var/mob/B = input("Selecione Oponente 2")as mob in Menu
												switch(alert("Oponente #2: [B]","Torre","Sim","Não"))
													if("Sim")
														var/mob/C = input("Selecione Oponente 3")as mob in Menu
														switch(alert("Oponente #3: [B]","Torre","Sim","Não"))
															if("Sim")
																if(!A||!B||!C)
																	usr<<"Um deles deslogou."
																	return
																if(A.client&&B.client)
																	if(A.client.address == B.client.address)
																		usr << "<b>[A]</b> e <b>[B]</b> tem o mesmo IP, selecione oponentes diferentes!"
																		return
																if(A.client&&C.client)
																	if(A.client.address == C.client.address)
																		usr << "<b>[A]</b> e <b>[C]</b> tem o mesmo IP, selecione oponentes diferentes!"
																		return
																if(B.client&&C.client)
																	if(B.client.address == C.client.address)
																		usr << "<b>[B]</b> e <b>[C]</b> tem o mesmo IP, selecione oponentes diferentes!"
																		return
																A.loc=locate(39,161,5)
																B.loc=locate(82,161,5)
																C.loc=locate(60,179,5)
																oponente1=A
																oponente2=B
																oponente3=C
																world << "<font face=tahoma><center><font size=2><b>[A]</b> VS <b>[B]</b> VS <b>[C]</b></font>! A Luta começará em 3 segundos!"
																A.Frozen = 1
																B.Frozen = 1
																C.Frozen = 1
																A.PK=0
																B.PK=0
																C.PK=0
																sleep(30)
																world << "<font face=tahoma><center><font size=2>3</font>"
																sleep(15)
																world << "<font face=tahoma><center><font size=2>2</font>"
																sleep(15)
																world << "<font face=tahoma><center><font size=2>1</font>"
																sleep(15)
																world << "<font face=tahoma><center><font color=red><font size=3><b>LUTEM!</b></font>"
																A.PK = 1
																A.Frozen = 0
																B.PK = 1
																B.Frozen = 0
																C.PK = 1
																C.Frozen = 0
																return
															else
																return
													else
														return
											else
												return
					if("Encerrar Chuunin Shiken")
						if(!ChuunintimeS)
							if(!ChuuninflorestaS)
								ChuunintimeS=0
								ChuuninflorestaS=0
								horachuunin=0
								switch(input("Qual o numero de vencedores do Chuunin Shiken do Deserto?","", text)in list("1","2","3","4","Cancelar"))
									if("1")
										var/vencedor1 = input("Digite o nome do Vencedor!")as text
										world<<"<font color=green><font size=3>O Chuunin Shiken  do Deserto acabou. Vencedor: <b>[vencedor1]</b>"
									if("2")
										var/vencedor1 = input("Digite o nome do Vencedor (1)")as text
										var/vencedor2 = input("Digite o nome do Vencedor (2)")as text
										world<<"<font color=green><font size=3>O Chuunin Shiken  do Deserto acabou. Vencedores: <b>[vencedor1]</b> , <b>[vencedor2]</b>"
									if("3")
										var/vencedor1 = input("Digite o nome do Vencedor (1)")as text
										var/vencedor2 = input("Digite o nome do Vencedor (2)")as text
										var/vencedor3 = input("Digite o nome do Vencedor (3)")as text
										world<<"<font color=green><font size=3>O Chuunin Shiken  do Deserto acabou. Vencedores: <b>[vencedor1]</b> , <b>[vencedor2]</b> , <b>[vencedor3]</b>"
									if("4")
										var/vencedor1 = input("Digite o nome do Vencedor (1)")as text
										var/vencedor2 = input("Digite o nome do Vencedor (2)")as text
										var/vencedor3 = input("Digite o nome do Vencedor (3)")as text
										var/vencedor4 = input("Digite o nome do Vencedor (4)")as text
										world<<"<font color=green><font size=3>O Chuunin Shiken  do Deserto acabou. Vencedores: <b>[vencedor1]</b> , <b>[vencedor2]</b> , <b>[vencedor3]</b> , <b>[vencedor4]</b>"
							for(var/mob/M in world)
								if(M.client)
									M.sefodeulegal=0

turf
	LEAVEDESERT
		icon='Suna.dmi'
		icon_state="Areia21"
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/M = A
				if(M.heavenscroll==1&&M.earthscroll==1&&M.csdeserto==1)
					if(ChuuninflorestaS)
						if(!M.health<=0)
							for(var/obj/objetos/heavenscroll/H in M.contents)
								del(H)
							for(var/obj/objetos/earthscroll/S in M.contents)
								del(S)
							M<<"Parabéns; Boa-sorte na próxima fase, você precisará! Siga as instruções do instrutor do exame e espere até a terceira parte!"
							M.deathforest=0
							M.earthscroll=0
							M.heavenscroll=0

							M.testefeito=0
							M.loc = locate(5,44,10)
							(M) << sound(null)
							world << "\red <b>Chuunin Info:</b>\white <b>[M]</b> entrou na Torre!"
							//M.SalvarAgora()
							return
						else
							return 0
					else
						return 0
				else
					usr<<"Você não tem os dois pergaminhos, ou entao morreu no Deserto e relogou."
					return 0

			else
				if(istype(A,/obj/)) del(A)


turf
	ChuuninarenaenterS
		icon = 'SO.dmi'
		icon_state = "floor"
		density = 0
		Enter(A)
			if(ismob(A))
				if(usr.density==0)
					usr<<"Não enquanto voa."
					return
				var/mob/M = A
				if(M.client)
					M.loc = locate(61,144,5)
			else
				if(istype(A,/obj/)) del(A)


turf/areiacsm
	areiamovedi
		icon = 'Suna.dmi'
		icon_state = "Areia10"
		layer = 1
		density=0
		Enter(mob/M)
			..()
			if(ismob(M))
				M<<"Você entra na areia movediça e se move lentamente!"
				M.Move_Delay = 10
				return 1
			else if(isobj(M))
				return 1
			else ..()
		Exit(mob/M)
			..()
			if(ismob(M))
				M<<"Você sai da areia movediça!"
				M.Move_Delay = 0.7
				return 1
			else if(isobj(M))
				return 1
			else ..()

turf
	chuvasuna
		tempareia
			icon = 'rainsand.dmi'
			icon_state = ""
			layer = MOB_LAYER+999999999999999


mob/GM
	verb
		Visualizar_Floresta()
			set name = "Ver Floresta da Morte"
			set category = "GM"
			if(usr.Frozen)return
			if(usr.parado)return
			if(usr.kawa)return
			if(usr.Kaiten)return
			if(src.deslogado)
				usr<<"Você não pode usar esse comando sem ter logado no jogo"
				return
			usr.client.perspective = EYE_PERSPECTIVE
			usr<<"Enquanto vc estiver vendo a arena n conseguirá se mover nem executar jutsus"
			client.view=70
			spawn()usr.Cegar()
			usr.cast=1
			//usr.Frozen=1
			usr.parado=1
			usr.arenafreeze=1
			usr.client.eye = locate(50,50,3)

mob/GM
	verb
		Visualizar_Deserto()
			set name = "Ver Deserto da Morte"
			set category = "GM"
			if(usr.Frozen)return
			if(usr.parado)return
			if(usr.kawa)return
			if(usr.Kaiten)return
			if(src.deslogado)
				usr<<"Você não pode usar esse comando sem ter logado no jogo"
				return
			usr.client.perspective = EYE_PERSPECTIVE
			usr<<"Enquanto vc estiver vendo a arena n conseguirá se mover nem executar jutsus"
			client.view=70
			spawn()usr.Cegar()
			usr.cast=1
			//usr.Frozen=1
			usr.parado=1
			usr.arenafreeze=1
			usr.client.eye = locate(250,50,3)


//=================================================//
mob/ADM/verb/DevolvV()
	set category = "ADM"
	set name = "Devolver Visao"
	var/list/jogadores = list()
	for(var/mob/m in world)if(m.client)if(m)jogadores.Add(m)
	var/mob/m = input("Quem você quer dar Visão ou Movimentos de volta?","Visão & Movimento") as mob in jogadores
	if(m.client)
		m.PerdeuMS=0
		m.Perdeusharingan=0
		m.PerdeuByakugan=0
		m.senjuextraido=0
		m<<"Você teve sua visão/movimentos devolvidos por [usr]!"
		usr<<"Pronto!"