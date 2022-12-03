mob/var
	macroother
	macro1
	macro2
	macro3
	macro4
	macro5
	macro6
	macro7
	macro8
	macro9
	macro0
	macrominus
	macroequal
	macroq
	macrow
	macroe
	macror
	macrot
	macroy
	macrou
	macroi
	macroo
	macrop
	macroleftbracket
	macrorightbracket
	macrobackslash
	macroa
	macros
	macrod
	macrof
	macrog
	macroh
	macroj
	macrok
	macrol
	macrosemicolon
	macroapostrophe
	macroz
	macrox
	macroc
	macrov
	macrob
	macron
	macrom
	macrocomma
	macroperiod
	macroforwardslash
	macrospace
mob/verb
	newmacro(m as text)
		set hidden = 1
		var/command = input(usr, "Enter the command", "Macros") as null|text
		if(command)
			if(findtext(command, ".click"))
				usr << "Você é incapaz de ter. Clique em macros."
				return

			. = m
			if(. == "comma")
				. = "\",\""
			else if(. == "period")
				. = "\".\""
			else if(. == "forwardslash")
				. = "\"/\""
			else if(. == "leftbracket")
				. = "\"\[\""
			else if(. == "rightbracket")
				. = "\"]\""
			else if(. == "minus")
				. = "\"-\""
			else if(. == "semicolon")
				. = "\";\""
			else if(. == "apostrophe")
				. = "\"'\""
			else if(. == "other")
				. = "\"`\""
			else if(. == "equal")
				. = "\"=\""
			usr.vars["macro[m]"] = "parent = macro; name = [.]+REP; command = \"[command]\""
			winset(usr, "macro.my[m]macro", "[usr.vars["macro[m]"]]")
			spawn()
				outputmacros()
mob/verb
	openmacrowindow()
		set hidden = 1
		outputmacros()
		winset(usr, "macrowindow", "is-visible = true")

	closemacrowindow()
		set hidden = 1
		winset(usr, "macrowindow", "is-visible = false")

	clearallmacros()
		set hidden = 1
		macroother = "parent=macro;name=other+REP;command=="
		macro1 = "parent=macro;name=1+REP;command="
		macro2 = "parent=macro;name=2+REP;command="
		macro3 = "parent=macro;name=3+REP;command="
		macro4 = "parent=macro;name=4+REP;command="
		macro5 = "parent=macro;name=5+REP;command="
		macro6 = "parent=macro;name=6+REP;command="
		macro7 = "parent=macro;name=4+REP;command="
		macro8 = "parent=macro;name=3+REP;command="
		macro9 = "parent=macro;name=2+REP;command="
		macro0 = "parent=macro;name=1+REP;command="
		macrominus = "parent=macro;name=minus+REP;command="
		macroequal = "parent=macro;name=equal+REP;command="
		macroq = "parent=macro;name=q+REP;command="
		macrow = "parent=macro;name=w+REP;command="
		macroe = "parent=macro;name=e+REP;command="
		macror = "parent=macro;name=r+REP;command="
		macrot = "parent=macro;name=t+REP;command="
		macroy = "parent=macro;name=y+REP;command="
		macrou = "parent=macro;name=u+REP;command="
		macroi = "parent=macro;name=i+REP;command="
		macroo = "parent=macro;name=o+REP;command="
		macrop = "parent=macro;name=p+REP;command="
		macroleftbracket = "parent=macro;name=leftbracket+REP;command="
		macrorightbracket = "parent=macro;name=rightbracket+REP;command="
		macrobackslash = "parent=macro;name=backslash+REP;command="
		macroa = "parent=macro;name=a+REP;command="
		macros = "parent=macro;name=s+REP;command="
		macrod = "parent=macro;name=d+REP;command="
		macrof = "parent=macro;name=f+REP;command="
		macrog = "parent=macro;name=g+REP;command="
		macroh = "parent=macro;name=h+REP;command="
		macroj = "parent=macro;name=j+REP;command="
		macrok = "parent=macro;name=k+REP;command="
		macrol = "parent=macro;name=l+REP;command="
		macrosemicolon = "parent=macro;name=semicolon+REP;command="
		macroapostrophe = "parent=macro;name=apostrophe+REP;command="
		macroz = "parent=macro;name=z+REP;command="
		macrox = "parent=macro;name=x+REP;command="
		macroc = "parent=macro;name=c+REP;command="
		macrov = "parent=macro;name=v+REP;command="
		macrob = "parent=macro;name=b+REP;command="
		macron = "parent=macro;name=n+REP;command="
		macrom = "parent=macro;name=mQ+REP;command="
		macrocomma = "parent=macro;name=comma+REP;command="
		macroperiod = "parent=macro;name=period+REP;command="
		macroforwardslash = "parent=macro;name=forwardslash+REP;command="
		macrospace = "parent=macro;name=space+REP;command=KAWA"
		outputmacros()
mob/proc
	loadmacros()
		for(var/v in vars)
			if((copytext(v, 1, 6) == "macro"))
				if(!(vars[v]))
					continue
				else
					winset(src, "macro.my[copytext(v, 6)]macro", "[vars[v]]")
	findcommand(var/m)
		if(!m)
			return

		return copytext(m, findtext(m, "command") + 10)

mob
	proc
		outputmacros()
			src << output(null, "macrowindow.macrooutput")
			src << output({"----------------------------------------
(`: [findcommand(macroother)])
(1: [findcommand(macro1)])
(2: [findcommand(macro2)])
(3: [findcommand(macro3)])
(4: [findcommand(macro4)])
(5: [findcommand(macro5)])
(6: [findcommand(macro6)])
(7: [findcommand(macro7)])
(8: [findcommand(macro8)])
(9: [findcommand(macro9)])
(0: [findcommand(macro0)])
(-: [findcommand(macrominus)])
----------------------------------------
(Q: [findcommand(macroq)])
(W: [findcommand(macrow)])
(E: [findcommand(macroe)])
(R: [findcommand(macror)])
(T: [findcommand(macrot)])
(Y: [findcommand(macroy)])
(U: [findcommand(macrou)])
(I: [findcommand(macroi)])
(O: [findcommand(macroo)])
(P: [findcommand(macrop)])
(\[: [findcommand(macroleftbracket)])
(]: [findcommand(macrorightbracket)])
----------------------------------------
(A: [findcommand(macroa)])
(S: [findcommand(macros)])
(D: [findcommand(macrod)])
(F: [findcommand(macrof)])
(G: [findcommand(macrog)])
(H: [findcommand(macroh)])
(J: [findcommand(macroj)])
(K: [findcommand(macrok)])
(L: [findcommand(macrol)])
(;: [findcommand(macrosemicolon)])
(': [findcommand(macroapostrophe)])
----------------------------------------
(Z: [findcommand(macroz)])
(X: [findcommand(macrox)])
(C: [findcommand(macroc)])
(V: [findcommand(macrov)])
(B: [findcommand(macrob)])
(N: [findcommand(macron)])
(M: [findcommand(macrom)])
----------------------------------------
(,: [findcommand(macrocomma)])
(.: [findcommand(macroperiod)])
(/: [findcommand(macroforwardslash)])
(Space: [findcommand(macrospace)])"}, "macrowindow.macrooutput")

















