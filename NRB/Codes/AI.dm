mob/monster
	New()
		if(!src.client)

			if(src.name=="{Bijuu}Shukaku"||src.name=="{Bijuu}Matatabi"||src.name=="{Bijuu}Isobu"||src.name=="{Bijuu}Son Goku"||src.name=="{Bijuu}Kokuo"||src.name=="{Bijuu}Saiken"||src.name=="{Bijuu}Choumei"||src.name=="{Bijuu}Gyuki"||src.name=="{Bijuu}Kurama")
				src.AIBijuu()
				return



	proc
		AIBijuu()
			while(1)
				var/mob/A
				while(A==null)
					sleep(10)
					for(var/mob/jogador/B in oview(20,src))
						if(B.statomorto) continue
						if(B.protective) continue
						if(B.NK) continue
						A = B

				while(get_dist(A,src)<=20)
					if(A.statomorto||A.protective||A.NK) break
					else
						if(get_dist(A,src)>=2&&get_dist(A,src)<20)

							step_towards(src,A)
							if(prob(15))
								spawn(-1) flick('shunshin.dmi',src)
								sleep(0.2)
								step_towards(src,A)
								sleep(0.2)
								step_towards(src,A)
								sleep(0.2)
								step_towards(src,A)
								sleep(0.2)
								step_towards(src,A)
							sleep(1.5)

							if(prob(50)) src.GolpesOro()
							if(prob(1)) break

							sleep(1)
						else
							if(get_dist(A,src)==1)
								var/dmg=src.Taijutsu,src.Taijutsu-M.Resistencia/2
								if(dmg<1) dmg=1
								A << output("[src] te ataca com [dmg] dano!","output1")
								A.Health-=dmg
								s_damage(A,dmg)
								A.Morte(src)
							sleep(3)
				sleep(10)