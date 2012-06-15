<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Flora_fauna.aspx.cs" Inherits="Flora_fauna" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Hrvatska, Velebit, planina, nacionalni park, priroda, degenija" />
	<meta name="description" content="Velebit, najljepša hrvatska planina." />
    <title>Velebit - Flora i fauna</title>
    <link rel="stylesheet" href="css/default.css" type="text/css" />
    <link rel="stylesheet" href="css/prijava.css" type="text/css" />
    <link rel="stylesheet" type="text/css" href="slajder/engine2/style.css" />
	<style type="text/css">a#vlb{display:none}</style>
	<script type="text/javascript" src="slajder/engine2/jquery.js"></script>
	<script type="text/javascript" src="slajder/engine2/drugislider.js"></script>
    <script type="text/javascript" src="js/objekti.js"></script>
    <script type="text/javascript" src="js/jquery.cookie.js"></script>
    <link rel="Shortcut Icon" href="slike/favicon.ico" />
</head>
<body>
    <form id="form1" runat="server">     
   	<div id="wrapper">
        <div id="panel" style="display: none;">
              Korisničko ime: <asp:TextBox ID="User" runat="server"></asp:TextBox>
              Lozinka: <asp:TextBox ID="Pass" runat="server" TextMode="Password"></asp:TextBox>
              <asp:LinkButton ID="linkPrijava" runat="server" onclick="linkPrijava_Click">Prijava</asp:LinkButton><br />
              <asp:Label ID="lblOprijavi" runat="server" Text=""></asp:Label>
              <asp:LinkButton ID="linkReg" runat="server" onclick="linkRegistracija_Click">Registracija</asp:LinkButton>
        </div>     
        <p class="slide"><a class="btn-slide active" href="#"></a></p>
         <div id="odjava" align="right">        
            <asp:Label ID="lblSession" runat="server" Text=""></asp:Label>
            <asp:LinkButton ID="btnOdjava" runat="server" Visible="False" onclick="btnOdjava_Click">Odjava</asp:LinkButton>
        </div> 
      <div id="drugislider-container2">
    	<div class="ws_images">
            <span><img src="slajder/data2/images/flo01.jpg" alt="Velebitska degenija" title="Velebitska degenija" id="d0"/></span>
            <span><img src="slajder/data2/images/flo02.jpg" alt="Doručak" title="Doručak" id="d1"/></span>
            <span><img src="slajder/data2/images/flo03.jpg" alt="flo03" title="flo03" id="d2"/></span>
            <span><img src="slajder/data2/images/flo04.jpg" alt="flo04" title="flo04" id="d3"/></span>
            <span><img src="slajder/data2/images/flo05.jpg" alt="Gljiva škriplin" title="Gljiva škriplin" id="d4"/></span>
            <span><img src="slajder/data2/images/flo06.jpg" alt="Doručak" title="Doručak" id="d5"/></span>
            <span><img src="slajder/data2/images/flo07.jpg" alt="Skakavac" title="Skakavac" id="d6"/></span>
            <span><img src="slajder/data2/images/flo08.jpg" alt="Gušter" title="Velebitska gušterica" id="d7"/></span>
            <span><img src="slajder/data2/images/flo09.jpg" alt="Pauk križar" title="Pauk križar" id="d8"/></span>
         </div>
        <div class="ws_bullets"><div>
            <a href="#d0" title="Velebitska degenija"><img src="slajder/data2/tooltips/flo01.jpg" alt="Velebitska degenija"/>1</a>
            <a href="#d1" title="Doručak"><img src="slajder/data2/tooltips/flo02.jpg" alt="Doručak"/>2</a>
            <a href="#d2" title="flo03"><img src="slajder/data2/tooltips/flo03.jpg" alt="flo03"/>3</a>
            <a href="#d3" title="flo04"><img src="slajder/data2/tooltips/flo04.jpg" alt="flo04"/>4</a>
            <a href="#d4" title="Gljiva škriplin"><img src="slajder/data2/tooltips/flo05.jpg" alt="Gljiva škriplin"/>5</a>
            <a href="#d5" title="Doručak"><img src="slajder/data2/tooltips/flo06.jpg" alt="Doručak"/>6</a>
            <a href="#d6" title="Skakavac"><img src="slajder/data2/tooltips/flo07.jpg" alt="Skakavac"/>7</a>
            <a href="#d7" title="Velebitska gušterica"><img src="slajder/data2/tooltips/flo08.jpg" alt="Velebitska gušterica"/>8</a>
            <a href="#d8" title="Pauk križar"><img src="slajder/data2/tooltips/flo09.jpg" alt="Pauk križar"/>9</a>
        </div>
    </div>
	<div class="ws_shadow"></div>
	</div>
	<script type="text/javascript" src="slajder/engine2/script.js"></script>
    <div id="nav">
			<a href="Default.aspx">POČETNA</a>
			<a href="Pl_domovi.aspx?id=1">PLANINARSKI DOMOVI</a>
            <a href="Pl_domovi.aspx?id=2">PLANINARSKA SKLONIŠTA</a>			
			<a href="Flora_fauna.aspx">FLORA I FAUNA</a>
            <a href="#">ISKUSTVA</a>
            <a class="lastchild" href="Kontakt.aspx">KONTAKT</a>			
	 </div>
		<div id="body">
			<div id="body-top">
				<div id="body-bot">
					<div id="lijevo-box">
						<h2>Flora</h2>
						<p>Prema postojećim podacima na Velebitu su zabilježene 1854 biljne svojte, 
                        od kojih je 79 endema. Prevladavaju šumska staništa, a za očuvanje sveukupne 
                        biološke raznolikosti vrlo su važne planinske livade i pašnjaci koji ih presijecaju.
                        Glavne krajobrazne značajke najviših predjela su ogoljele krške formacije koje 
                        se izmjenjuju sa šumskim dolinama i suhim travnjačkim površinama. </p>
				    </div>
                
					<div id="desno-box">
                        <h2>Fauna</h2>
							<p>Na Velebitu obitavaju četiri vrste velikih grabežljivaca - mrki medvjed, ris, vuk te divlja mačka. 
                            Tu je velebitska gušterica, petrofilna vrsta koja obitava na stijenama, liticama i drugim kamenim podlogama.
                            Na Velebitu je registrirano oko 180 vrsta ptica, od kojih njih stotinjak stalno gnijezdi na prostorima velebitskog masiva
                            Jedna od najmnogovrsnijih životinjskih skupina na Velebitu su danji leptiri
                            Od ostalih životinjskih skupina potrebno je spomenuti faunu spilja i jama, najpoznatija je Meštrovljeva hrvatska škrgavica, vrsta pijavice, pronađena u Lukinoj jami.
                            </p>
                    </div>
					<div class="clear"></div>
				</div>
			</div>
		</div>
		<div id="foot">
			<div id="foot-top">
				<div id="foot-bot">
					<div id="dolje-lijevo-box">
						<h3>Zaštićene biljke:</h3>
						<ul>
						    <li>Velebitska degenija</li>
                            <li>Runolist</li>
							<li>Hrvatska gušarka</li>
							<li>Hrvatska sibireja</li>
						    </ul>
					</div> 

					<div id="dolje-desno-box">
						<h3>Zaštićena životinje</h3>                    
						<ul>
							<li>Smeđi medvjed</li>
							<li>Vuk</li>
							<li>Ris</li>
                            <li>Tetrijeb gluhan</li>
                            <li>Vidra</li>
						</ul>						
 					</div>
                        <div class="clear"></div>
				</div>
			</div>
		</div>
		<div id="footer">
			<p>&copy; Svjetlana Čolak, OWS, VsiTe</p>
		</div>
          <div id="leftcontainerBox">
                Izvori:<br />
                     <a href="http://www.hps.hr/"><img id ="hps" src="slike/hps.jpg" 
                             alt="Hrvatski planinarski savez" title="Hrvatski planinarski savez" /></a><br />
                     <a href="http://www.np-sjeverni-velebit.hr/"><img id ="npv" src="slike/npv.jpg" 
                             alt="Nacionalni park Sjeverni Velebit" title="Nacionalni park Sjeverni Velebit" /></a><br />
                     <a href="http://www.pp-velebit.hr/"><img id ="ppv" src="slike/ppv.jpg" 
                             alt="Park prirode Velebit" title="Park prirode Velebit" /></a><br />          
           </div>
        </div>
    </form>
</body>
</html>
