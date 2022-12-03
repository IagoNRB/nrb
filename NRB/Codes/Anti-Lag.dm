var/tmp/def = 75
var/tmp/lagset = 0
var/tmp/clag = 0
var/tmp/tick_mem = world.tick_lag
world
	proc
		Lag_Guard()
			spawn while(1)
				if(lagset == 0)
					if(world.cpu >= def)
						world.tick_lag += 1
						world.tick_lag = round(world.tick_lag)
					if(world.cpu < def)
						if(world.tick_lag == tick_mem)
							..()
						else
							world.tick_lag -= 1
							world.tick_lag = round(world.tick_lag)
				else
					if(world.cpu >= clag)
						world.tick_lag += 1
						world.tick_lag = round(world.tick_lag)
					if(world.cpu < clag)
						if(world.tick_lag == tick_mem)
							..()
						else
							world.tick_lag -= 1
							world.tick_lag = round(world.tick_lag)
				sleep(50)



client/New()
	spawn(20)
		src << output("<B><FONT SIZE = -1><FONT COLOR = green>Anti-Lag carregado com sucesso (v2.0)!","output2.sistema")

	..()



world/movement_mode = TILE_MOVEMENT_MODE


world
	New()
		..()
		Lag_Guard()


mob/var/podenada=0


world/proc/AutoPreju()
	set background=1
	for(var/mob/M in world)
		if(M.client)
			if(M.Perdeusharingan&&!M.visaorecuperada||M.PerdeuByakugan&&!M.visaorecuperada||M.PerdeuRinnegan&&!M.visaorecuperada||M.PerdeuMS&&!M.visaorecuperada)
				M.cego5()
			if(M.senjuextraido&&!M.movimentorecuperado)
				M.Move_Delay = 10
	spawn(600)
		AutoPreju()


/*mob
	enemy
		Ladrao
			name= "{Enemy}Ladrão"
			icon = 'LadraoNovo.dmi'
			icon_state="3"
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
			NPC=1*/
