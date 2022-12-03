obj/ZZZZZZZClock
	invisibility=1
	layer=1000
	OpacityGeral
		icon = 'mansions.dmi'
		icon_state = "kagedoor"
		opacity = 1
	Xtelha1
		icon = 'telhas.dmi'
		icon_state = "1"
		density = 0
	Xtelha2
		icon = 'telhas.dmi'
		icon_state = "2"
		density = 0
	Xtelha3
		icon = 'telhas.dmi'
		icon_state = "3"
		density = 0
	Xtelha4
		icon = 'telhas.dmi'
		icon_state = "4"
		density = 0
	Xtelha5
		icon = 'telhas.dmi'
		icon_state = "5"
		density = 0
	Xtelha6
		icon = 'telhas.dmi'
		icon_state = "6"
		density = 0
	Xtelha7
		icon = 'telhas.dmi'
		icon_state = "7"
		density = 0
	Xtelha8
		icon = 'telhas.dmi'
		icon_state = "8"
		density = 0
	Xtelha9
		icon = 'telhas.dmi'
		icon_state = "9"
		density = 0
	XtelhaX
		icon = 'telhas.dmi'
		icon_state = "1"
		density = 0
	indoorX
		icon = 'indoor.dmi'
		icon_state = "4"
		density = 0
	znffarenaTelha1
		icon = 'SoundGate.dmi'
		icon_state = "Roof1"
		density = 0
	znffarenaTelha2
		icon = 'SoundGate.dmi'
		icon_state = "Roof2"
		density = 0
	znffarenaTelha3
		icon = 'SoundGate.dmi'
		icon_state = "Roof3"
		density = 0
	znffarenaTelha4
		icon = 'SoundGate.dmi'
		icon_state = "Roof4"
		density = 0
	znffarenaTelha5
		icon = 'SoundGate.dmi'
		icon_state = "Roof5"
		density = 0
	znffarenaTelha6
		icon = 'SoundGate.dmi'
		icon_state = "Roof6"
		density = 0
	znffarenaTelha7
		icon = 'SoundGate.dmi'
		icon_state = "Roof7"
	znffarenaTelha8
		icon = 'SoundGate.dmi'
		icon_state = "Roof8"
		density = 0
	znffarenaTelha9
		icon = 'SoundGate.dmi'
		icon_state = "Roof9"
		density = 0


area
    lojas
        Entered(mob/player/M)
            if(ismob(M))
                M.see_invisible = 0
        Exited(mob/player/M)
            if(ismob(M))
                M.see_invisible = 1