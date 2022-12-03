client/Topic(href,href_list)
	if("Voltar" in href_list) usr << browse(Main,"window=Main;[htmlop]")
	if("Back" in href_list)usr << browse(Principal,"window=Principal;[htmlinfo]")
	if("Close" in href_list) usr << browse(Close,"window=Main;[htmlop]")
	if("vantagens" in href_list) usr << browse(vantagens,"window=Main;[htmlop]")
	if("tabela" in href_list)usr << browse(tabela,"window=Main;[htmlop]")
	if("pagamento" in href_list)usr << browse(pagamento,"window=Main;[htmlop]")
	if("Principal" in href_list)usr << browse(Principal,"window=Principal;[htmlinfo]")
	if("Fechar" in href_list)usr << browse(Fechar,"window=Principal;[htmlinfo]")
	if("Aburame" in href_list)usr << browse(Aburame,"window=Principal;[htmlinfo]")
	if("Iryonin" in href_list)usr << browse(Iryonin,"window=Principal;[htmlinfo]")
	if("Akimichi" in href_list)usr << browse(Akimichi,"window=Principal;[htmlinfo]")
	if("Hyuuga" in href_list)usr << browse(Hyuuga,"window=Principal;[htmlinfo]")
	if("Inuzuka" in href_list)usr << browse(Inuzuka,"window=Principal;[htmlinfo]")
	if("Kaguya" in href_list)usr << browse(Kaguya,"window=Principal;[htmlinfo]")
	if("Koori" in href_list)usr << browse(Koori,"window=Principal;[htmlinfo]")
	if("Senju" in href_list)usr << browse(Senju,"window=Principal;[htmlinfo]")
	if("Nara" in href_list)usr << browse(Nara,"window=Principal;[htmlinfo]")
	if("Sabaku" in href_list)usr << browse(Sabaku,"window=Principal;[htmlinfo]")
	if("Yamanaka" in href_list)usr << browse(Yamanaka,"window=Principal;[htmlinfo]")
	if("Temari" in href_list)usr << browse(Temari,"window=Principal;[htmlinfo]")
	if("Uzumaki" in href_list)usr << browse(Uzumaki,"window=Principal;[htmlinfo]")
	if("Uchiha" in href_list)usr << browse(Uchiha,"window=Principal;[htmlinfo]")
	if("Armas" in href_list)usr << browse(Armas,"window=Principal;[htmlinfo]")
	if("Taijutsu" in href_list)usr << browse(Taijutsu,"window=Principal;[htmlinfo]")
	if("Genjutsu" in href_list)usr << browse(Genjutsu,"window=Principal;[htmlinfo]")
	if("Marionetes" in href_list)usr << browse(Marionetes,"window=Principal;[htmlinfo]")

mob/verb/pagamento()
	set hidden=1
	spawn()src << browse(Main,"window=Main;[htmlop]")

var
	htmlop = "border=1;can_close=1;can_resize=0;can_minimize=0;titlebar=1"
	css={"
<style type="text/css">
body {background-color: black;color: white;font-family: Tahoma;font-size: 8pt;}
.box {height:22px;width:138px;border:1px solid #950000;background-color:#bbbbbb;font-family:Tahoma;font-size:7pt;color:white;}
.button {border:1px solid #950000;background-color:#bbbbbb;font-family:Tahoma;font-size:8pt;color:#4D515F;}
a:link, a:active, a:visited, a:hover {color:#950000;font-size:11px;text-decoration:none;font-family:Tahoma;}
TD {font-family: Tahoma;font-size: 11px;line-height: 13px;color: white;}</style>"}

var/
	Main = {"
	[css]<html>
	<head><title>
	</title></head><body>
	<div align="right"><a href='?Close'>Fechar</A></div>
	<B><center>VIP</b></center>
	<hr>
	<H4><div align="left">
	<a href='?vantagens'><u>Vantagens</u></A><br>
	<a href='?tabela'><u>Precos e Promocoes</u></A><br>
	<a href='?pagamento'><u>Dados para Pagamento</u></A><br>
	<br><br><br><hr>
	<font color=white><b><u><small></b></u><br/><br/><center>Boruto: Naruto Revolucao Brasil
	<br><br><font color=green><center><i> Versao 2012.2</i></center>
	</font>
	</body>
	</html>
	"}

	Close
	vantagens = {"
	[css]<html>
	<head><title>Vantagens</title></head><body>
	<div align="right"><a href = '?Voltar'>Voltar</A></div>
	<B>Vantagens</b>
	<br><br><center><b><font color=red><i>Centro VIP</i></b><br>
	<font color = white>Permite a locomoção direto para as vilas, sem ter que ultrapassar margens. Conta também com um lugar feito pra treinos, onde você pode tirar pouca vantagem sobre o Non-Vip. Além de também de permitir a troca de nome do char e interagir com vários npcs.<br><hr>
	<center><b><font color=red><i>Treinamento VIP</i></b><br>
	<font color = white>Permite que você treine um pouco mais rápido que chars Non-Vip. Além de, é claro, poder fazer outras coisas como, por exemplo, participar de lutas enquanto treina. Assim você se diverte upando.<br><hr>
	<center><b><font color=red><i>Jutsus e Itens VIP</i></b><br>
	<font color = white>Conta com a Barreira de Chakra e Genjutsu no Kai que te protege de alguns Jutsus, A Aura de Chakra que lhe acrescenta um buff significativo em todos os atributos. Itens e Quests exclusivas para Vips, com diversas finalidades.<br><hr>
	<center><b><font color=red><i>Recuperação de HP, Chakra e Stamina</i></b><br>
	<font color = white>Conta com recuperação automática de HP, Chakra e Stamina facilitando o seu dia a dia no jogo.<br><hr>
	</body>
	</html>
	"}

	pagamento = {"
	[css]<html>
	<head><title>Dados para Pagamento</title></head><body>
	<div align="right"><a href = '?Voltar'>Voltar</A></div>
	<b><font color=red><center>Dados para Pagamento</font></b></center>
	<br><br><font color = red><b>Depósito Bancário</b></font>
	<br><font color = white><b>Banco do Brasil</b>
	<br><font color = white>Favorecido: <b>Augusto Valadares Costa</b>
	<br><font color = white>Agência: <b>19-1</b>
	<br><font color = white>Conta Poupança: <b>52267-8</b>
	<br><font color = white>Variação da Poupança: <b>51</b></font></b>
	<br><br><font color = red><b>PagSeguro (Boleto)</b></font>
	<br><font color = white>Favorecido: <b>Augusto Valadares Costa</b>
	<br><font color = white>E-mail: <b>insanity.ogro@hotmail.com</b>
	<br><br><font color = white><i><b>Note:</b> No Pagseguro, você também pode pagar com seu cartão de crédito, gerar Boleto ou adicionar fundos à sua conta Pagseguro e fazer o pagamento através de transferência.</i></font>
	<br><font color = white><i><b>Note²:</b> O e-mail de envio dos comprovantes de pagamento é o mesmo que está descrito no Pagseguro.</i></font>

	<center><form target="pagseguro" action="https://pagseguro.uol.com.br/checkout/v2/payment.html" method="post">
	<input type="hidden" name="code" value="9EFCA5B29090877BB44F0F848D34387B" />
	<input type="image" src="https://p.simg.uol.com.br/out/pagseguro/i/botoes/pagamentos/120x53-pagar.gif" name="submit" alt="Pague com PagSeguro - é rápido, grátis e seguro!" />
	</form>
	<form target="pagseguro" action="https://pagseguro.uol.com.br/checkout/v2/payment.html" method="post">
	<input type="hidden" name="code" value="02C827D38282502554860F8A6FE5F0EB" />
	<input type="image" src="https://p.simg.uol.com.br/out/pagseguro/i/botoes/pagamentos/120x53-pagar-cinza.gif" name="submit" alt="Pague com PagSeguro - é rápido, grátis e seguro!" />
	</form>
	<form target="pagseguro" action="https://pagseguro.uol.com.br/checkout/v2/payment.html" method="post">
	<input type="hidden" name="code" value="38D0AF34A4A4F2A444F61FB16E402C64" />
	<input type="image" src="https://p.simg.uol.com.br/out/pagseguro/i/botoes/pagamentos/120x53-pagar-laranja.gif" name="submit" alt="Pague com PagSeguro - é rápido, grátis e seguro!" />
	</form></center>
	<i><font size="2"><font color=Red><b>Nota:</b> Informe qualquer número de CEP para ser redirecionado à página de confirmação de compra.</i></font>
	<br><br><font size="2"><b>Legenda:</b> <font color=green><b>Verde:</b></font> R$ 11,00 - 1 Mês Vip. || <font size="2"><font color=gray><b>Prata:</b></font> R$ 17,00 - 2 Meses Vip. || <font size="2"><font color=orange><b>Ouro:</b></font>  R$ 22,00 - 3 Meses Vip.
	</form>
	</body>
	</html>
	"}

	tabela = {"
	[css]
	<html>
	<div align="right"><a href = '?Voltar'>Voltar</A></div>

<head>
<meta http-equiv="Content-Type"
content="text/html; charset=iso-8859-1">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<title>Untitled Normal Page</title>
</head>

<body bgcolor="#000000" text="#FFFFFF">
<p align="center"><strong><em style="font-style: normal">
<font face="Tahoma" size="4" color="#00FF00">Tabela de Preços</font><font size="2" face="Tahoma"><br>
  </font></em></strong></p>
<em>
<p><font size="2">&nbsp;</font></p>
<div align="center">
  <table border="2" cellpadding="3">
    <center><font face=tahoma size="3" color="white">Depósito Bancário</center></font>
    <tr>
      <td width="135"><font color="#FFFF00" face="Tahoma" size="2"><strong>
		<center>Preço</strong></font></center></td>
      <td width="167"><strong><font face="Tahoma" color="#FFFF00" size="2">
		<center>Tempo</font></strong></center></td>
    </tr>
    <tr>
      <td><strong><font face="Tahoma" color="#6699FF" size="2"><center>R$ 10,00</center></font></strong></td>
      <td align="right"><font face="Tahoma" size="2"><center>30 Dias</center></font></td>
    </tr>
    <tr>
      <td><strong><font face="Tahoma" color="#6699FF" size="2">
		<center>R$ 15,00</center></font></strong></td>
      <td align="right"><font face="Tahoma" size="2"><center>60 Dias</center></font></td>
    </tr>
    <tr>
      <td><strong><font face="Tahoma" color="#6699FF" size="2"><center>R$ 20,00</center>
		</font></strong></td>
      <td align="right"><font face="Tahoma" size="2"><center>90 Dias</center></font></td>
    </tr>
    <tr>
      <td><strong><font face="Tahoma" color="green" size="2"><center>R$ 15,00 = 2 Contas</center>
		</font></strong></td>
      <td align="right"><font face="Tahoma" size="2"><center>30 Dias pra cada conta</center></font></td>
    </tr>
    <br>
    </table>
  <p>&nbsp;</p>
  <table border="2" cellpadding="3">
    <center><font face=tahoma size="3" color="white">PagSeguro (Boleto)</center></font>
    <tr>
      <td width="135"><font color="#FFFF00" face="Tahoma" size="2"><strong>
		<center>Preço</strong></font></center></td>
      <td width="167"><strong><font face="Tahoma" color="#FFFF00" size="2">
		<center>Tempo</font></strong></center></td>
    </tr>
    <tr>
      <td><strong><font face="Tahoma" color="#6699FF" size="2"><center>R$ 11,00</center></font></strong></td>
      <td align="right"><font face="Tahoma" size="2"><center>30 Dias</center></font></td>
    </tr>
    <tr>
      <td><strong><font face="Tahoma" color="#6699FF" size="2"><center>R$ 17,00</center></font></strong></td>
      <td align="right"><font face="Tahoma" size="2"><center>60 Dias</center></font></td>
    </tr>
    <tr>
      <td><strong><font face="Tahoma" color="#6699FF" size="2"><center>R$ 22,00</center></font></strong></td>
      <td align="right"><font face="Tahoma" size="2"><center>90 Dias</center></font></td>
    </tr>
    <tr>
      <td><strong><font face="Tahoma" color="green" size="2"><center>R$ 17,00 = 2 Contas</center></font></strong></td>
      <td align="right"><font face="Tahoma" size="2"><center>30 Dias pra cada conta</center></font></td>
    </tr>
    <p>&nbsp;</p>
	<p>&nbsp;</div>"}

obj/Info
	density=1
	icon = 'botao.dmi'
	layer = MOB_LAYER+10002
	Click()
		spawn()usr << browse(Principal,"window=Principal;[htmlinfo]")

var
	htmlinfo = "border=1;can_close=1;can_resize=0;can_minimize=0;titlebar=1"
	css2={"
<style type="text/css">
body {background-color: black;color: white;font-family: Tahoma;font-size: 8pt;}
.box {height:22px;width:138px;border:1px solid #950000;background-color:#bbbbbb;font-family:Tahoma;font-size:7pt;color:white;}
.button {border:1px solid #950000;background-color:#bbbbbb;font-family:Tahoma;font-size:8pt;color:#4D515F;}
a:link, a:active, a:visited, a:hover {color:#950000;font-size:11px;text-decoration:none;font-family:Tahoma;}
TD {font-family: Tahoma;font-size: 11px;line-height: 13px;color: white;}</style>"}

var/
	Principal = {"
	[css2]<html>
	<head><title>Cla</title></head><body>
	<div align="right"><a href='?Fechar'>Fechar</A></div>
	<b><center>Cla</b></center>
	<hr>
	<H4><div align="left">
	<a href='?Aburame'><u>Aburame</u></A><br>
	<a href='?Akimichi'><u>Akimichi</u></A><br>
	<a href='?Hyuuga'><u>Hyuuga</u></A><br>
	<a href='?Inuzuka'><u>Inuzuka</u></A><br>
	<a href='?Kaguya'><u>Kaguya</u></A><br>
	<a href='?Koori'><u>Koori</u></A><br>
	<a href='?Senju'><u>Senju</u></A><br>
	<a href='?Iryonin'><u>Iryonin</u></A><br>
	<a href='?Nara'><u>Nara</u></A><br>
	<a href='?Sabaku'><u>Sabaku</u></A><br>
	<a href='?Yamanaka'><u>Yamanaka</u></A><br>
	<a href='?Temari'><u>Temari</u></A><br>
	<a href='?Uchiha'><u>Uchiha</u></A><br>
	<a href='?Uzumaki'><u>Uzumaki</u></A><br>
	<a href='?Armas'><u>Usuario de Armas</u></A><br>
	<a href='?Taijutsu'><u>Usuario de Taijutsu</u></A><br>
	<a href='?Genjutsu'><u>Usuario de Genjutsu</u></A><br>
	<a href='?Marionetes'><u>Usuario de Marionetes</u></A><br>
	<br><br><br><hr>
	<font color=white><b><u><small></b></u><br/><br/><center>Naruto: Boruto Revolucao Brasil
	<br><br><font color=green><center><i> Versao 2022.12</i></center>
	</font>
	</body>
	</html>
	"}

	Fechar
	Aburame = {"
	[css2]<html>
	<head><title>Aburame</title></head><body>
	<div align="right"><a href = '?Back'>Voltar</A></div>
	<b>Informacoes sobre o Cla</b>
	<br><br><center><b><font color=red><i>Aburame</i></b><br>
	<font color = white>Conta com jutsus que aproveitam seu vasto conhecimento e controle sobre insetos, dentre eles podemos destacar o Mushi Kanadzuchi no Jutsu e o Kikaichuu Tsumoji. Todos os seus jutsus sao baseados em ninjutsu e alguns alem de dar dano ainda consome chakra do adversario.<br><hr>
	</body>
	</html>
	"}

	Akimichi = {"
	[css2]<html>
	<head><title>Akimichi</title></head><body>
	<div align="right"><a href = '?Back'>Voltar</A></div>
	<b>Informacoes sobre o Cla</b>
	<br><br><center><b><font color=red><i>Akimichi</i></b><br>
	<font color = white>Conta com jutsus que aproveitam seu poder de aumento de corpo, destaque para Nikudan Hari Sensha e Chou baika no Jutsu alem das pilulas para aumentar seu poder. Todos os jutsus sao baseados em Taijutsu.<br><hr>
	</body>
	</html>
	"}

	Hyuuga = {"
	[css2]<html>
	<head><title>Hyuuga</title></head><body>
	<div align="right"><a href = '?Back'>Voltar</A></div>
	<b>Informacoes sobre o Cla</b>
	<br><br><center><b><font color=red><i>Hyuuga</i></b><br>
	<font color = white>Com seu byakugan, cla especialista em combate a curta distancia, com destaque para seu Hakke hiasangi e Hakke Rokujuuyon Shou. Seus danos são beaseados em taijutsu<br><hr>
	</body>
	</html>
	"}

	Inuzuka = {"
	[css2]<html>
	<head><title>Inuzuka</title></head><body>
	<div align="right"><a href = '?Back'>Voltar</A></div>
	<b>Informacoes sobre o Cla</b>
	<br><br><center><b><font color=red><i>Inuzuka</i></b><br>
	<font color = white>Conhecido como o famoso cla domador de caes, o Cla Inuzuka busca aperfeicoar suas tecnicas junto ao seu companheiro animal, possui um taijutsu (quando combinado com seu companheiro) invejavel, com destaque para os jutsus Garouga e Gatsuuga. Seus danos sao beaseados em taijutsu.<br><hr>
	</body>
	</html>
	"}

	Iryonin = {"
	[css2]<html>
	<head><title>Iryonin</title></head><body>
	<div align="right"><a href = '?Back'>Voltar</A></div>
	<b>Informacoes sobre o Cla</b>
	<br><br><center><b><font color=red><i>Iryonin</i></b><br>
	<font color = white>Conhecidos como os famosos Ninjas medicos, a especialidade em medicina costuma ser um poderoso suporte para uma vila ou organizacao durante toda a historia ninja. Seus especialistas costumam aprender tecnicas para cura e aprendem poderosos metodos de envenenamento, alem de tambem aprenderem um poderoso taijutsu ao se especializarem no controle de chakra nos punhos.<br><hr>
	</body>
	</html>
	"}

	Kaguya = {"
	[css2]<html>
	<head><title>Kaguya</title></head><body>
	<div align="right"><a href = '?Back'>Voltar</A></div>
	<b>Informacoes sobre o Cla</b>
	<br><br><center><b><font color=red><i>Kaguya</i></b><br>
	<font color = white>Com sua habilidade de controlar a vontade seus ossos, o clan kaguya busca matar seus oponentes com jutsus baseados em taijutsu, com destaque para Sawarabi no Mai, Tessenka no Mai e tsubaki no Mai.<br><hr>
	</body>
	</html>
	"}

	Koori = {"
	[css2]<html>
	<head><title>Koori</title></head><body>
	<div align="right"><a href = '?Back'>Voltar</A></div>
	<b>Informacoes sobre o Cla</b>
	<br><br><center><b><font color=red><i>Koori</i></b><br>
	<font color = white>Conta com jutsus baseados no controle de gelo, destaque para o Sensatsu Suishou Yominua, Makyou Hyo Satsu e Makyou hyoushou. Tem duas variáveis, Pericia com Armas para danos com agulhas e ninjutsu para dano com os demais jutsus.<br><hr>
	</body>
	</html>
	"}

	Senju = {"
	[css2]<html>
	<head><title>Senju</title></head><body>
	<div align="right"><a href = '?Back'>Voltar</A></div>
	<b>Informacoes sobre o Cla</b>
	<br><br><center><b><font color=red><i>Senju</i></b><br>
	<font color = white>Conta com jutsus que aproveitam sua habilidade com o elemento Mokuton, destaque para Mokuton Hinoto Yaiba e Moku Inochi. Todos os jutsus baseados em ninjutsu.<br><hr>
	</body>
	</html>
	"}

	Nara = {"
	[css2]<html>
	<head><title>Nara</title></head><body>
	<div align="right"><a href = '?Back'>Voltar</A></div>
	<b>Informacoes sobre o Cla</b>
	<br><br><center><b><font color=red><i>Nara</i></b><br>
	<font color = white>Busca prender seus oponentes com sua sombra, destaca-se o uso do kage kubi Shibari e Kage Mane no jutsu. Seus jutsus sao baseados em Ninjutsu.<br><hr>
	</body>
	</html>
	"}

	Sabaku = {"
	[css2]<html>
	<head><title>Sabaku</title></head><body>
	<div align="right"><a href = '?Back'>Voltar</A></div>
	<b>Informacoes sobre o Cla</b>
	<br><br><center><b><font color=red><i>Sabaku</i></b><br>
	<font color = white>Conta com jutsus baseados no controle da areia, destaque para Ryuusa bakuryuu e sabaku kyuu. Todos os jutsus são baseados em ninjutsu e maioria objetiva paralizar e causar dano ao oponente.<br><hr>
	</body>
	</html>
	"}

	Yamanaka = {"
	[css2]<html>
	<head><title>Yamanaka</title></head><body>
	<div align="right"><a href = '?Back'>Voltar</A></div>
	<b>Informacoes sobre o Cla</b>
	<br><br><center><b><font color=red><i>Yamanaka</i></b><br>
	<font color = white>Busca atacar, controlar e confundir diretamente a mente do oponente, destaca-se o Ninpou Shintenshin no Jutsu e Ninpou Shiranshin no Jutsu. Seus jutsus sao baseados em Ninjutsu. Tambem possui afinidade com Jutsus Médicos basicos e o Super Soco baseado em Taijutsu. Por conta de sua arte no controle mental nao causar danos fisicos, muitos Yamanakas procuram ter o Taijutsu como atributo base.<br><hr>
	</body>
	</html>
	"}

	Temari = {"
	[css2]<html>
	<head><title>Temari</title></head><body>
	<div align="right"><a href = '?Back'>Voltar</A></div>
	<b>Informacoes sobre o Cla</b>
	<br><br><center><b><font color=red><i>Temari</i></b><br>
	<font color = white>Conta com jutsus que utilizam o vento, com a ajuda de seu leque consegue atacar de longas distancias, destaca-se Ninpou Dai Kamaitachi e Kiri Kiri Mai. Seus jutsus sao baseados em Ninjutsu.<br><hr>
	</body>
	</html>
	"}

	Uzumaki = {"
	[css2]<html>
	<head><title>Uzumaki</title></head><body>
	<div align="right"><a href = '?Back'>Voltar</A></div>
	<b>Informacoes sobre o Cla</b>
	<br><br><center><b><font color=red><i>Uzumaki</i></b><br>
	<font color = white>Conta com Jutsus baseado no Rasengan e Kage Bunshin, possui duas variantes: Taijutsu e Ninjutsu. Seu treino baseado em taijutsu tem como foco as habilidades com os kage bunshin e seu treino em Ninjutsu tem como foco suas habilidades com o Rasengan e suas variantes.<br><hr>
	</body>
	</html>
	"}

	Uchiha = {"
	[css2]<html>
	<head><title>Uchiha</title></head><body>
	<div align="right"><a href = '?Back'>Voltar</A></div>
	<b>Informacoes sobre o Cla</b>
	<br><br><center><b><font color=red><i>Uchiha</i></b><br>
	<font color = white>Conta com Jutsus baseado no Sharingan, necessitando de Ninjutsu e Genjutsu para evolui-lo, alem do uso continuo do mesmo. O Cla com mais quests existentes para alcancar o mais alto nivel.<br><hr>
	</body>
	</html>
	"}

	Armas = {"
	[css2]<html>
	<head><title>Usuario de Armas</title></head><body>
	<div align="right"><a href = '?Back'>Voltar</A></div>
	<b>Informacoes sobre o Cla</b>
	<br><br><center><b><font color=red><i>Usuario de Armas</i></b><br>
	<font color = white>Suas tecnicas de lutas resumem no manoseio refinado das armas existente no mundo shinobi, com destaque para Windmill. Seu dano é baseado na pericia com armas. <br><hr>
	</body>
	</html>
	"}

	Taijutsu = {"
	[css2]<html>
	<head><title>Usuario de Taijutsu</title></head><body>
	<div align="right"><a href = '?Back'>Voltar</A></div>
	<b>Informacoes sobre o Cla</b>
	<br><br><center><b><font color=red><i>Usuario de Taijutsu</i></b><br>
	<font color = white>Especializados em técnicas de combate corporal, usam velocidade e força para causar grandes danos aos adversarios, com destaque para Asa Kujaku e Ura Renge. Seus danos sao baseados em taijutsu.<br><hr>
	</body>
	</html>
	"}

	Genjutsu = {"
	[css2]<html>
	<head><title>Usuario de Genjutsu</title></head><body>
	<div align="right"><a href = '?Back'>Voltar</A></div>
	<b>Informacoes sobre o Cla</b>
	<br><br><center><b><font color=red><i>Usuario de Genjutsu</i></b><br>
	<font color = white>Especialistas em Genjutsu o Usuario de Genjutsu procura criar ilusoes para afetar os inimigos, conseguindo uma vantagem consideravel em um combate, com destaque para Kokohi Tatakai e shinu nu genjutsu.Seu dano e baseado em genjutsu.<br><hr>
	</body>
	</html>
	"}

	Marionetes = {"
	[css2]<html>
	<head><title>Usuario de Marionetes</title></head><body>
	<div align="right"><a href = '?Back'>Voltar</A></div>
	<b>Informacoes sobre o Cla</b>
	<br><br><center><b><font color=red><i>Usuario de Marionetes</i></b><br>
	<font color = white>Conta com combinações e habilidade no kugutsu no jutsu ( criar linhas atraves do Chakra para controlar marionetes e bonecos), com destaque para Dokugiri Zuyoku BariBari Shikaku Renpatsu . Seus danos sao baseados em pericia com armas.<br><hr>
	</body>
	</html>
	"}
/*

    ############################################
    ###             SISTEMA VIP              ###
    ############################################
    ###             BY LUAN VIU              ###
    ############################################


*/

var/dia = time2text(world.realtime,"DD")
var/mes = time2text(world.realtime,"MM")
var/ano = time2text(world.realtime,"YYYY")

mob/var
	fimdiavip = 0
	fimmesvip = 0
	EhVip = 0
	fimanovip = 0

mob/ADM
	verb
		Dar_Vip_Dia(mob/M in world)
			set name = "Dar Vip por Dia"
			set category = "Staff VIP"
			if(M.EhVip)
				usr<<"Ele já é vip, quer manter o vip de [M]?"
				switch(input("Quer adicionar mais dias?") in list("Sim", "Não"))
					if("Sim")
						var/tempo = input("Quantos dias", "Dias") as num
						if(tempo >= 30)
							tempo -= 30
							M.fimmesvip += 1
						if(tempo >= 60)
							tempo -= 60
							M.fimmesvip += 2
						if(tempo >= 90)
							tempo -= 90
							M.fimmesvip += 3
						if(tempo >= 120)
							tempo -= 120
							M.fimmesvip += 4
						if(tempo >= 150)
							tempo -= 150
							M.fimmesvip += 5
						if(tempo >= 180)
							tempo -= 180
							M.fimmesvip += 6
						if(tempo >= 210)
							tempo -= 210
							M.fimmesvip += 7
						if(tempo >= 240)
							tempo -= 240
							M.fimmesvip += 8
						if(tempo >= 270)
							tempo -= 270
							M.fimmesvip += 9
						if(tempo >= 300)
							tempo -= 300
							M.fimmesvip += 10
						if(tempo >= 330)
							tempo -= 330
							M.fimmesvip += 11
						M.EhVip = 1
						M.fimdiavip = dia + tempo
						if(M.fimdiavip >= 30)
							M.fimdiavip -= 30
							M.fimmesvip += 1
						if(M.fimdiavip >= 60)
							M.fimdiavip -= 60
							M.fimmesvip += 2
						if(M.fimdiavip >= 90)
							M.fimdiavip -= 90
							M.fimmesvip += 3
						if(M.fimdiavip >= 120)
							M.fimdiavip -= 120
							M.fimmesvip += 4
						if(M.fimdiavip >= 150)
							M.fimdiavip -= 150
							M.fimmesvip += 5
						if(M.fimdiavip >= 180)
							M.fimdiavip -= 180
							M.fimmesvip += 6
						if(M.fimdiavip >= 210)
							M.fimdiavip -= 210
							M.fimmesvip += 7
						if(M.fimdiavip >= 240)
							M.fimdiavip -= 240
							M.fimmesvip += 8
						if(M.fimdiavip >= 270)
							M.fimdiavip -= 270
							M.fimmesvip += 9
						if(M.fimdiavip >= 300)
							M.fimdiavip -= 300
							M.fimmesvip += 10
						if(M.fimdiavip >= 330)
							M.fimdiavip -= 330
							M.fimmesvip += 11
						if(M.fimmesvip > 12)
							M.fimmesvip -= 12
							M.fimanovip = ano +  1
						M<<"Você foi transformado em vip até dia [M.fimdiavip] / [M.fimmesvip] / [M.fimanovip]"
						usr<<"Você transformou [M] em vip até dia [M.fimdiavip] / [M.fimmesvip]/ [M.fimanovip]"
						M.AutoSave()
						text2file("<font color=blue>[time2text(world.realtime)]: <b>[usr]</b>([usr.key])<b>deu VIP para <b>[M]</b>([M.key]) e acaba em [M.fimdiavip]/[M.fimmesvip]/[M.fimanovip]</b></font><BR>","VIPLog.html")
						return
						/*if(M.fimdiavip >= 31)
							M.fimdiavip = M.fimdiavip - 31
							M.fimmesvip = M.fimmesvip + 1
							if(M.fimmesvip >= 12)
								M.fimmesvip = M.fimmesvip - 12
								M.fimanovip = M.fimanovip + 1
							M<<"Você foi transformado em vip até dia [M.fimdiavip] / [M.fimmesvip] / [M.fimanovip]"
							usr<<"Você transformou [M] em vip até dia [M.fimdiavip] / [M.fimmesvip]/ [M.fimanovip]"
							M.AutoSave()
							text2file("<font color=blue>[time2text(world.realtime)]: <b>[usr]</b>([usr.key])<b>deu VIP para <b>[M]</b>([M.key]) e acaba em [M.fimdiavip]/[M.fimmesvip]/[M.fimanovip]</b></font><BR>","VIPLog.html")
							return*/
					if("Não")
						usr<<"Ok"
						return
				return
			else
				usr<<"Ele não é vip, quer transformar [M] em vip?"
				switch(input("Quer dar vip para [M] ?") in list("Sim", "Não"))
					if("Sim")
						M.fimmesvip = mes
						M.fimanovip = ano
						var/quantosdias = input("Quantos Dias?", "Vip") as num
						if(quantosdias >= 30)
							quantosdias -= 30
							M.fimmesvip += 1
						if(quantosdias >= 60)
							quantosdias -= 60
							M.fimmesvip += 2
						if(quantosdias >= 90)
							quantosdias -= 90
							M.fimmesvip += 3
						if(quantosdias >= 120)
							quantosdias -= 120
							M.fimmesvip += 4
						if(quantosdias >= 150)
							quantosdias -= 150
							M.fimmesvip += 5
						if(quantosdias >= 180)
							quantosdias -= 180
							M.fimmesvip += 6
						if(quantosdias >= 210)
							quantosdias -= 210
							M.fimmesvip += 7
						if(quantosdias >= 240)
							quantosdias -= 240
							M.fimmesvip += 8
						if(quantosdias >= 270)
							quantosdias -= 270
							M.fimmesvip += 9
						if(quantosdias >= 300)
							quantosdias -= 300
							M.fimmesvip += 10
						if(quantosdias >= 330)
							quantosdias -= 330
							M.fimmesvip += 11
						/*if(quantosdias >= 360)
							quantosdias -= 360
							M.fimmesvip += 12*/
						M.EhVip = 1
						M.fimdiavip = dia + quantosdias
						if(M.fimdiavip >= 30)
							M.fimdiavip -= 30
							M.fimmesvip += 1
						if(M.fimdiavip >= 60)
							M.fimdiavip -= 60
							M.fimmesvip += 2
						if(M.fimdiavip >= 90)
							M.fimdiavip -= 90
							M.fimmesvip += 3
						if(M.fimdiavip >= 120)
							M.fimdiavip -= 120
							M.fimmesvip += 4
						if(M.fimdiavip >= 150)
							M.fimdiavip -= 150
							M.fimmesvip += 5
						if(M.fimdiavip >= 180)
							M.fimdiavip -= 180
							M.fimmesvip += 6
						if(M.fimdiavip >= 210)
							M.fimdiavip -= 210
							M.fimmesvip += 7
						if(M.fimdiavip >= 240)
							M.fimdiavip -= 240
							M.fimmesvip += 8
						if(M.fimdiavip >= 270)
							M.fimdiavip -= 270
							M.fimmesvip += 9
						if(M.fimdiavip >= 300)
							M.fimdiavip -= 300
							M.fimmesvip += 10
						if(M.fimdiavip >= 330)
							M.fimdiavip -= 330
							M.fimmesvip += 11
						/*if(M.fimdiavip >= 360)
							M.fimdiavip -= 360
							M.fimmesvip += 12*/
						if(M.fimmesvip > 12)
							M.fimmesvip -= 12
							M.fimanovip = ano +  1
						M<<"Você foi transformado em vip até dia [M.fimdiavip] / [M.fimmesvip] / [M.fimanovip]"
						usr<<"Você transformou [M] em vip até dia [M.fimdiavip] / [M.fimmesvip]/ [M.fimanovip]"
						M.verbs += new /mob/Vip/verb/Teleporte()
						M.verbs += new /mob/Vip/verb/VConcentrar()
						M.verbs += new /mob/Vip/verb/VLiberarChakra()
						M.verbs += new /mob/Star/verb/StarBarrier()
						//M.verbs += new /mob/jutsu/verb/Kai()
						M.verbs += new /mob/star/verb/Aura()
						M.AutoSave()
						text2file("<font color=blue>[time2text(world.realtime)]: <b>[usr]</b>([usr.key])<b>deu VIP para <b>[M]</b>([M.key]) e acaba em [M.fimdiavip]/[M.fimmesvip]/[M.fimanovip]</b></font><BR>","VIPLog.html")
						return
						/*if(M.fimdiavip > 31)
							M.fimdiavip = M.fimdiavip - 31
							M.fimmesvip = mes + 1
							M.EhVip = 1
							M<<"Você foi transformado em vip até dia [M.fimdiavip] / [M.fimmesvip] / [M.fimanovip]"
							usr<<"Você transformou [M] em vip até dia [M.fimdiavip] / [M.fimmesvip]/ [M.fimanovip]"
							M.verbs += new /mob/Vip/verb/Teleporte()
							M.verbs += new /mob/Vip/verb/VConcentrar()
							M.verbs += new /mob/Vip/verb/VTreinarArmas()
							M.verbs += new /mob/Vip/verb/VLiberarChakra()
							M.verbs += new /mob/Vip/verb/TaiVip()
							M.verbs += new /mob/Star/verb/StarBarrier()
							//M.verbs += new /mob/jutsu/verb/Kai()
							M.verbs += new /mob/star/verb/Aura()
							M.AutoSave()
							text2file("<font color=blue>[time2text(world.realtime)]: <b>[usr]</b>([usr.key])<b>deu VIP para <b>[M]</b>([M.key]) e acaba em [M.fimdiavip]/[M.fimmesvip]/[M.fimanovip]</b></font><BR>","VIPLog.html")
							return
						if(M.fimdiavip < 30)
							M.fimdiavip = M.fimdiavip
							M.fimmesvip = mes
							M.EhVip = 1
							M<<"Você foi transformado em vip até dia [M.fimdiavip] / [M.fimmesvip] / [M.fimanovip]"
							usr<<"Você transformou [M] em vip até dia [M.fimdiavip] / [M.fimmesvip]/ [M.fimanovip]"
							M.verbs += new /mob/Vip/verb/Teleporte()
							M.verbs += new /mob/Vip/verb/VConcentrar()
							M.verbs += new /mob/Vip/verb/VTreinarArmas()
							M.verbs += new /mob/Vip/verb/TaiVip()
							M.verbs += new /mob/Vip/verb/VLiberarChakra()
							M.verbs += new /mob/Star/verb/StarBarrier()
							//M.verbs += new /mob/jutsu/verb/Kai()
							M.verbs += new /mob/star/verb/Aura()
							M.AutoSave()
							text2file("<font color=blue>[time2text(world.realtime)]: <b>[usr]</b>([usr.key])<b>deu VIP para <b>[M]</b>([M.key]) e acaba em [M.fimdiavip]/[M.fimmesvip]/[M.fimanovip]</b></font><BR>","VIPLog.html")
							return*/
					if("Não")
						usr<<"Ok"
				return

mob/ADM
	verb
		Dar_Vip(mob/M in world)
			set name = "Dar Vip por Mês"
			set category = "Staff VIP"
			if(M.EhVip)
				usr<<"Ele já é vip"
				switch(input("Você quer adicionar mais tempo no vip de [M]?") in list("Sim", "Não"))
					if("Sim")
						var/tempo = input("Quantos meses a mais?", "Vip") as num
						M.fimmesvip += tempo
						M.fimanovip = ano
						if(M.fimmesvip > 12)
							M.fimmesvip -= 12
							M.fimanovip += 1
						M.AutoSave()
						M<<"Você foi transformado em vip até dia [M.fimdiavip] / [M.fimmesvip]/ [M.fimanovip]"
						usr<<"Você transformou [M] em vip até dia [M.fimdiavip] / [M.fimmesvip]/ [M.fimanovip]"
						text2file("<font color=blue>[time2text(world.realtime)]: <b>[usr]</b>([usr.key])<b>deu VIP para <b>[M]</b>([M.key]) e acaba em [M.fimdiavip]/[M.fimmesvip]/[M.fimanovip]</b></font><BR>","VIPLog.html")
						return
					if("Não")
						usr<<"Ok"
				return
			else
				dia = text2num(dia)
				mes = text2num(mes)
				ano = text2num(ano)
				M.fimanovip = ano
				var/quantosmeses = input("Quantos meses?","Vip") as num
				if(quantosmeses > 12)
					quantosmeses -= 12
					M.fimanovip += 1
				M.EhVip = 1
				M.fimmesvip = mes + quantosmeses
				if(M.fimmesvip > 12)
					M.fimmesvip -= 12
					M.fimanovip += 1
				M.fimdiavip = dia
				M<<"Você foi transformado em vip até dia [M.fimdiavip] / [M.fimmesvip]/ [M.fimanovip]"
				usr<<"Você transformou [M] em vip até dia [M.fimdiavip] / [M.fimmesvip]/ [M.fimanovip]"
				M.verbs += new /mob/Vip/verb/Teleporte()
				M.verbs += new /mob/Vip/verb/VConcentrar()
				M.verbs += new /mob/Vip/verb/VLiberarChakra()
				M.verbs += new /mob/Star/verb/StarBarrier()
				//M.verbs += new /mob/jutsu/verb/Kai()
				M.verbs += new /mob/star/verb/Aura()
				M.AutoSave()
				text2file("<font color=blue>[time2text(world.realtime)]: <b>[usr]</b>([usr.key])<b>deu VIP para <b>[M]</b>([M.key]) e acaba em [M.fimdiavip]/[M.fimmesvip]/[M.fimanovip]</b></font><BR>","VIPLog.html")

mob/ADM
	verb
		TirarVip(mob/M in world)
			set name = "Tirar Vip"
			set category = "ADM"
			if(M.EhVip)
				switch(input("Quer mesmo tirar vip de [M]?") in list("Sim", "Não"))
					if("Sim")
						M.verbs -= new /mob/Vip/verb/Teleporte()
						M.verbs -= new /mob/Vip/verb/VConcentrar()
						M.verbs -= new /mob/Vip/verb/VLiberarChakra()
						M.verbs -= new /mob/Star/verb/StarBarrier()
//						M.verbs -= new /mob/jutsu/verb/Kai()
						M.verbs -= new /mob/star/verb/Aura()
						M.EhVip = 0
						//M.SalvarAgora()
						usr<<"Você retirou o vip de [M]"
						M<<"[usr] retirou seu vip"
						text2file("<font color=red>[time2text(world.realtime)]: <b>[usr]</b>([usr.key])<b>teve seu VIP retirado por [usr],  que acabava em [M.fimdiavip]/[M.fimmesvip]</b></font><BR>","VIPLog.html")

mob/ADM
	verb
		EditTeste()
			set name = "Editar Tempo Vip"
			set category = "ADM"
			if(usr.key<>"Augustovaladares")
				usr<<"Você não está autorizado para usar este comando."
				return
			switch(input("Han?") in list("Dia","Mes","Cancelar"))
				if("Dia")
					var/qualdia = input("Dia","Dia") as num
					usr.fimdiavip = qualdia
				if("Mes")
					var/qualmes = input("Mes","Dia") as num
					usr.fimmesvip = qualmes
				if("Cancelar")
					return
proc
	TransformarDia()
		dia = text2num(dia)
		mes = text2num(mes)
		ano = text2num(ano)

mob
	proc
		PerderVip()
			vip
			if(src.EhVip == 1)
				if(dia >= src.fimdiavip&&mes >= src.fimmesvip)
					if(ano < src.fimanovip)
						return
					src<<output("<font color = red><b> Seu Vip Acabou","output2.sistema")
					src.verbs -= new /mob/Vip/verb/Teleporte()
					src.verbs -= new /mob/Vip/verb/VConcentrar()
					src.verbs -= new /mob/Vip/verb/VLiberarChakra()
					src.verbs -= new /mob/Star/verb/StarBarrier()
//					src.verbs -= new /mob/jutsu/verb/Kai()
					src.verbs -= new /mob/star/verb/Aura()
					src.EhVip = 0
					src.fimdiavip=0
					src.fimmesvip = 0
					src<<output("Você agora é um player normal!","output2.sistema")
					text2file("<font color=red>[time2text(world.realtime)]: <b>[usr]</b>([usr.key])<b>perdeu o vip</b></font><BR>","VIPLog.html")
					//src.SalvarAgora()
				if(dia <= src.fimdiavip&&mes >src.fimmesvip)
					if(ano < src.fimanovip)
						return
					src<<output("<font color = blue><b> Seu Vip Acabou","output2.sistema")
					src.verbs -= new /mob/Vip/verb/Teleporte()
					src.verbs -= new /mob/Vip/verb/VConcentrar()
					src.verbs -= new /mob/Vip/verb/VLiberarChakra()
					src.verbs -= new /mob/Star/verb/StarBarrier()
//					src.verbs -= new /mob/jutsu/verb/Kai()
					src.verbs -= new /mob/star/verb/Aura()
					src.EhVip = 0
					src.fimdiavip = 0
					src.fimmesvip= 0
					src<<"Você agora é um player normal!"
					text2file("<font color=red>[time2text(world.realtime)]: <b>[usr]</b>([usr.key])<b> perdeu o vip dia [dia] / [mes] </b></font><BR>","VIPLog.html")
					//src.SalvarAgora()
			if(src.EhVip == 1)
				sleep(600)
				goto vip

//=========================================================Quests VIP=================================================================//
mob/var/acessoriobuff=0
mob/var/armabuff=0
mob/var/roupabuff=0
mob/var/flute = 0
mob/var/colar = 0
mob/var/shurikenequipada=0
mob/var/manopla = 0

obj
	ShurikenQuest
		name = "Shuriken Gigante"
		icon = 'ShurikenGSuit.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()
				if(src.worn)
					src.worn = 0
					usr.overlays -= 'ShurikenGSuit.dmi'//temp icon
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.shurikenequipada = 0
					usr.swordD = 0
					usr.shurikenskill = usr.Mshurikenskill
				else
					if(usr.shurikenequipada)
						usr<<"Você removeu o(a) [src.name]."
						src.suffix = ""
						usr.shurikenequipada = 0
						usr.swordD = 0
						usr.shurikenskill = usr.Mshurikenskill
						src.worn=0
						return
					src.worn = 1
					usr.overlays += 'ShurikenGSuit.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					usr.swordD = 100
					usr.shurikenskill = usr.shurikenskill*1.05
					usr.shurikenequipada = 1
			Olhar()
				usr<<"é uma shuriken pra se usar nas costas."
			Pegar()
				set src in oview(1)
				var/place = src.loc
				usr<<"Você pegou um(a) [src]"
				src.loc = usr
				spawn(600)
					var/obj/ShurikenQuest/H = new/obj/ShurikenQuest
					H.loc = place
			Destroy()
				del(src)
				//usr.SalvarAgora()
obj
	FlautaQuest
		name = "Flauta Antiga"
		icon = 'Flute.dmi'
		worn = 0
		price = 0
		verb
			Usar()
				if(src.worn)
					src.worn = 0
					usr.overlays -= 'Flute.dmi'
					usr << "Você removeu o(a) [src.name]."
					src.suffix = ""
					usr.flute = 0
					usr.swordD = 0
					usr.gen = usr.Mgen
				else
					if(usr.flute)
						usr<<"Você removeu o(a) [src.name]."
						src.suffix = ""
						usr.flute = 0
						usr.swordD = 0
						usr.gen = usr.Mgen
						src.worn=0
						return
					src.worn = 1
					usr.overlays += 'Flute.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					usr.swordD = 100
					usr.gen = usr.gen*1.05
					usr.flute = 1
			Olhar()
				usr<<"Esta é uma flauta comum."
			Pegar()
				set src in oview(1)
				var/place = src.loc
				usr<<"Você pegou um(a) [src]"
				src.loc = usr
				spawn(600)
					var/obj/FlautaQuest/H = new/obj/FlautaQuest
					H.loc = place
			Destruir()
				del(src)
				//usr.SalvarAgora()





obj
	ColarQuest
		name = "Colar Antigo"
		icon = 'colar.dmi'
		worn = 0
		price = 0
		verb
			Usar()
				if(src.worn)
					src.worn = 0
					usr.overlays -= 'colar.dmi'
					usr << "Você remove o [src.name]."
					src.suffix = ""
					usr.colar = 0
					usr.swordD = 0
					usr.nin = usr.Mnin
				else
					if(usr.colar)
						usr<<"Você removeu o(a) [src.name]."
						src.suffix = ""
						usr.colar = 0
						usr.swordD = 0
						usr.nin = usr.Mnin
						src.worn=0
						return
					usr.overlays += 'colar.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					usr.swordD = 100
					usr.nin = usr.nin*1.05
					usr.colar = 1
			Olhar()
				usr<<"Este é um colar antigo, com uma grande jóia brilhante presa nele. Você sente um poder imenso emanando dele."
			Pegar()
				set src in oview(1)
				var/place = src.loc
				usr<<"Você pegou um(a) [src]"
				src.loc = usr
				spawn(600)
					var/obj/ColarQuest/H = new/obj/ColarQuest
					H.loc = place
			Destruir()
				del(src)
				//usr.SalvarAgora()

obj
	ManoplaQuest
		name = "Manopla Antiga"
		icon = 'Manopla.dmi'
		worn = 0
		price = 0
		verb
			Usar()
				if(src.worn)
					src.worn = 0
					usr.overlays -= 'Manopla.dmi'
					usr << "Você remove o [src.name]."
					src.suffix = ""
					usr.manopla = 0
					usr.swordD = 0
					usr.tai = usr.Mtai
				else
					if(usr.manopla)
						usr<<"Você removeu o(a) [src.name]."
						src.suffix = ""
						usr.manopla = 0
						usr.swordD = 0
						usr.tai = usr.Mtai
						src.worn=0
						return
					usr.overlays += 'Manopla.dmi'
					usr << "Você coloca o(a) [src.name]."
					src.suffix = "Equipado"
					usr.swordD = 100
					usr.tai = usr.tai*1.05
					usr.manopla = 1
			Olhar()
				usr<<"Este é uma manopla antiga. Você sente um poder imenso emanando dele."
			Pegar()
				set src in oview(1)
				var/place = src.loc
				usr<<"Você pegou um(a) [src]"
				src.loc = usr
				spawn(600)
					var/obj/ManoplaQuest/H = new/obj/ManoplaQuest
					H.loc = place
			Destruir()
				del(src)
				//usr.SalvarAgora()