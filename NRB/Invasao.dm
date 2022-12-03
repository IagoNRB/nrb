var/tmp/invasorLeaf=0
var/tmp/invasorSuna=0
var/tmp/invasorOto=0
var/tmp/invasorKumo=0
var/tmp/invasorKiri=0
var/tmp/invasorAme=0
var/tmp/invasorIwa=0

var/tmp/list/ListainvasorLeaf=new/list
var/tmp/list/ListainvasorSuna=new/list
var/tmp/list/ListainvasorOto=new/list
var/tmp/list/ListainvasorKumo=new/list
var/tmp/list/ListainvasorKiri=new/list
var/tmp/list/ListainvasorAme=new/list
var/tmp/list/ListainvasorIwa=new/list



world/proc
	INVASAOL()
		set background=1
		for(var/mob/M2 in world)
			if(M2.client)
				if(!(M2.Village == "Konoha"))
					if(M2.z==1&&M2.x>269&&M2.x<478&&M2.y>229&&M2.y<339)
						for(var/mob/M in world)
							if(M.client)
								if(M.Village == "Konoha")
									M << output("<font size=1><font color=red><font face=tahoma>ALERTA: <font color=white> [M2.name] ([M2.rank]) <font color=red> está invadindo a vila!","output2.sistema")
									if(!(M2.name in ListainvasorLeaf))
										ListainvasorLeaf+=M2.name
								/*invasorLeaf=1
								spawn(100) invasorLeaf=0*/
					else
						if(M2.name in ListainvasorLeaf)
							for(var/mob/M in world)
								if(M.client)
									if(M.Village == "Konoha")
										M << output("<font size=1><font color=red><font face=tahoma>ALERTA: <font color=white> [M2.name] ([M2.rank]) <font color=red> não está mais na vila!","output2.sistema")
										ListainvasorLeaf -= M2.name
		spawn(150)
			world.INVASAOL()








mob/verb/VerInvad()
{
	set name = "Ver Invasores"
	set hidden = 1
	usr<<"Em construção!"
}



world/proc
	INVASAOSUNA()
		set background=1
		for(var/mob/M2 in world)
			if(M2.client)
				if(!(M2.Village == "Suna"))
					if(M2.z==1&&M2.x>69&&M2.x<168&&M2.y>35&&M2.y<152)
						for(var/mob/M in world)
							if(M.client)
								if(M.Village == "Suna")
									M << output("<font size=1><font color=red><font face=tahoma>ALERTA: <font color=white> [M2.name] ([M2.rank]) <font color=red> está invadindo a vila!","output2.sistema")
									if(!(M2.name in ListainvasorSuna))
										ListainvasorSuna+=M2.name
								/*invasorLeaf=1
								spawn(100) invasorLeaf=0*/
					else
						if(M2.name in ListainvasorSuna)
							for(var/mob/M in world)
								if(M.client)
									if(M.Village == "Suna")
										M << output("<font size=1><font color=red><font face=tahoma>ALERTA: <font color=white> [M2.name] ([M2.rank]) <font color=red> não está mais na vila!","output2.sistema")
										ListainvasorSuna -= M2.name
		spawn(150)
			world.INVASAOSUNA()




world/proc
	INVASAOOTO()
		set background=1
		for(var/mob/M2 in world)
			if(M2.client)
				if(!(M2.Village == "Oto"))
					if(M2.z==1&&M2.x>149&&M2.x<270&&M2.y>349&&M2.y<466)
						for(var/mob/M in world)
							if(M.client)
								if(M.Village == "Oto")
									M << output("<font size=1><font color=red><font face=tahoma>ALERTA: <font color=white> [M2.name] ([M2.rank]) <font color=red> está invadindo a vila!","output2.sistema")
									if(!(M2.name in ListainvasorOto))
										ListainvasorOto+=M2.name
								/*invasorLeaf=1
								spawn(100) invasorLeaf=0*/
					else
						if(M2.name in ListainvasorOto)
							for(var/mob/M in world)
								if(M.client)
									if(M.Village == "Oto")
										M << output("<font size=1><font color=red><font face=tahoma>ALERTA: <font color=white> [M2.name] ([M2.rank]) <font color=red> não está mais na vila!","output2.sistema")
										ListainvasorOto -= M2.name
		spawn(150)
			world.INVASAOOTO()



world/proc
	INVASAOKUMO()
		set background=1
		for(var/mob/M2 in world)
			if(M2.client)
				if(!(M2.Village == "Kumo"))
					if(M2.z==1&&M2.x>575&&M2.x<674&&M2.y>325&&M2.y<442)
						for(var/mob/M in world)
							if(M.client)
								if(M.Village == "Kumo")
									M << output("<font size=1><font color=red><font face=tahoma>ALERTA: <font color=white> [M2.name] ([M2.rank]) <font color=red> está invadindo a vila!","output2.sistema")
									if(!(M2.name in ListainvasorKumo))
										ListainvasorKumo+=M2.name
								/*invasorLeaf=1
								spawn(100) invasorLeaf=0*/
					else
						if(M2.name in ListainvasorKumo)
							for(var/mob/M in world)
								if(M.client)
									if(M.Village == "Kumo")
										M << output("<font size=1><font color=red><font face=tahoma>ALERTA: <font color=white> [M2.name] ([M2.rank]) <font color=red> não está mais na vila!","output2.sistema")
										ListainvasorKumo -= M2.name
		spawn(150)
			world.INVASAOKUMO()





world/proc
	INVASAOIWA()
		set background=1
		for(var/mob/M2 in world)
			if(M2.client)
				if(!(M2.Village == "Iwa"))
					if(M2.z==1&&M2.x>39&&M2.x<138&&M2.y>549&&M2.y<653)
						for(var/mob/M in world)
							if(M.client)
								if(M.Village == "Iwa")
									M << output("<font size=1><font color=red><font face=tahoma>ALERTA: <font color=white> [M2.name] ([M2.rank]) <font color=red> está invadindo a vila!","output2.sistema")
									if(!(M2.name in ListainvasorIwa))
										ListainvasorIwa+=M2.name
								/*invasorLeaf=1
								spawn(100) invasorLeaf=0*/
					else
						if(M2.name in ListainvasorIwa)
							for(var/mob/M in world)
								if(M.client)
									if(M.Village == "Iwa")
										M << output("<font size=1><font color=red><font face=tahoma>ALERTA: <font color=white> [M2.name] ([M2.rank]) <font color=red> não está mais na vila!","output2.sistema")
										ListainvasorIwa -= M2.name
		spawn(150)
			world.INVASAOIWA()

world/proc
	INVASAOKIRI()
		set background=1
		for(var/mob/M2 in world)
			if(M2.client)
				if(!(M2.Village == "Kiri"))
					if(M2.z==1&&M2.x>587&&M2.x<671&&M2.y>40&&M2.y<125)
						for(var/mob/M in world)
							if(M.client)
								if(M.Village == "Kiri")
									M << output("<font size=1><font color=red><font face=tahoma>ALERTA: <font color=white> [M2.name] ([M2.rank]) <font color=red> está invadindo a vila!","output2.sistema")
									if(!(M2.name in ListainvasorKiri))
										ListainvasorKiri+=M2.name
								/*invasorLeaf=1
								spawn(100) invasorLeaf=0*/
					else
						if(M2.name in ListainvasorKiri)
							for(var/mob/M in world)
								if(M.client)
									if(M.Village == "Kiri")
										M << output("<font size=1><font color=red><font face=tahoma>ALERTA: <font color=white> [M2.name] ([M2.rank]) <font color=red> não está mais na vila!","output2.sistema")
										ListainvasorKiri -= M2.name
		spawn(150)
			world.INVASAOKIRI()

world/proc
	INVASAOAME()
		set background=1
		for(var/mob/M2 in world)
			if(M2.client)
				if(!(M2.Village == "Ame"))
					if(M2.z==1&&M2.x>505&&M2.x<600&&M2.y>520&&M2.y<618)
						for(var/mob/M in world)
							if(M.client)
								if(M.Village == "Ame")
									M << output("<font size=1><font color=red><font face=tahoma>ALERTA: <font color=white> [M2.name] ([M2.rank]) <font color=red> está invadindo a vila!","output2.sistema")
									if(!(M2.name in ListainvasorAme))
										ListainvasorAme+=M2.name
								/*invasorLeaf=1
								spawn(100) invasorLeaf=0*/
					else
						if(M2.name in ListainvasorAme)
							for(var/mob/M in world)
								if(M.client)
									if(M.Village == "Ame")
										M << output("<font size=1><font color=red><font face=tahoma>ALERTA: <font color=white> [M2.name] ([M2.rank]) <font color=red> não está mais na vila!","output2.sistema")
										ListainvasorAme -= M2.name
		spawn(150)
			world.INVASAOAME()



