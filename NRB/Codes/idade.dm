
mob/var/MinutosDeVida=0
mob/var/SegundosDeVida=0
mob/var/IdadeM=0
mob/var/Idade=0

mob/proc
	ContadorIdade()
		set background=1
		spawn(1)
			while(1)
				sleep(10)
				SegundosDeVida+=1
				if(SegundosDeVida%60==0)//acada 60 segundos
					MinutosDeVida+=1
					if(MinutosDeVida%360==0)//acada 360 min ou 6 horas
						IdadeM+=1
						if(IdadeM%12==0)//acada 12 meses
							IdadeM=0
							Idade+=1


//Colocar no Finalizar, na criação do char
	//usr.Idade = rand(5,8) //Colocar a varição de idade que qer que começe, no caso de 5 a 8 anos

//Colocar no Stat()
	//	stat("[Idade] Anos, [IdadeM] Meses")

//Colocar no DblCLick()
	//usr<<"<font size=3><font color=red>Idade:<font color=orange> [Idade] Anos, [IdadeM] Meses"


mob/proc
	ContadorTreinoTai()