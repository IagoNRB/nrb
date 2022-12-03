mob/var/Jail1=0
mob/var/Jail2=0
mob/var/Jail3=0
mob/var/Jail4=0
mob/var/Jail5=0



mob/proc
	AutoJail1()
		set background=1
		src<< "<font size=+1><font color=white>Você deslogou enquanto estava preso, agora vai ter que esperar 5min de novo!</a>"
		src.OOC = 0
		src.jailed=1
		src.Jail1=1
		src.move=0
		src.froze=1
		src.loc = locate(228,300,2)
		spawn(3000)
			world<<"<font color = blue>[src] foi solto!</font>"
			src<<"Você foi solto, espero que tenha aprendido a lição"
			src.loc= locate(456,174,3)
			src.OOC = 1
			src.jailed=0
			src.Jail1=0
			src.move=1
			src.froze=0
			src.SalvarAgora()

mob/proc
	AutoJail2()
		set background=1
		src<< "<font size=+1><font color=white>Você deslogou enquanto estava preso, agora vai ter que esperar 10min de novo!</a>"
		src.OOC = 0
		src.jailed=1
		src.Jail2=1
		src.move=0
		src.froze=1
		src.loc = locate(228,300,2)
		spawn(6000)
			world<<"<font color = blue>[src] foi solto!</font>"
			src<<"Você foi solto, espero que tenha aprendido a lição"
			src.loc= locate(456,174,3)
			src.OOC = 1
			src.jailed=0
			src.Jail2=0
			src.move=1
			src.froze=0
			src.SalvarAgora()
mob/proc
	AutoJail3()
		set background=1
		src<< "<font size=+1><font color=white>Você deslogou enquanto estava preso, agora vai ter que esperar 30min de novo!</a>"
		src.OOC = 0
		src.jailed=1
		src.Jail3=1
		src.move=0
		src.froze=1
		src.loc = locate(228,300,2)
		spawn(18000)
			world<<"<font color = blue>[src] foi solto!</font>"
			src<<"Você foi solto, espero que tenha aprendido a lição"
			src.loc= locate(456,174,3)
			src.OOC = 1
			src.jailed=0
			src.Jail3=0
			src.move=1
			src.froze=0
			src.SalvarAgora()
mob/proc
	AutoJail4()
		set background=1
		src<< "<font size=+1><font color=white>Você deslogou enquanto estava preso, agora vai ter que esperar 45min de novo!</a>"
		src.OOC = 0
		src.jailed=1
		src.Jail4=1
		src.move=0
		src.froze=1
		src.loc = locate(228,300,2)
		spawn(27000)
			world<<"<font color = blue>[src] foi solto!</font>"
			src<<"Você foi solto, espero que tenha aprendido a lição"
			src.loc= locate(456,174,3)
			src.OOC = 1
			src.jailed=0
			src.Jail4=0
			src.move=1
			src.froze=0
			src.SalvarAgora()

mob/proc
	AutoJail5()
		set background=1
		src<< "<font size=+1><font color=white>Você deslogou enquanto estava preso, agora vai ter que esperar 1hr de novo!</a>"
		src.OOC = 0
		src.jailed=1
		src.Jail5=1
		src.move=0
		src.froze=1
		src.loc = locate(228,300,2)
		spawn(36000)
			world<<"<font color = blue>[src] foi solto!</font>"
			src<<"Você foi solto, espero que tenha aprendido a lição"
			src.loc= locate(456,174,3)
			src.OOC = 1
			src.jailed=0
			src.Jail5=0
			src.move=1
			src.froze=0
			src.SalvarAgora()
