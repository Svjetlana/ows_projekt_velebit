<%@ Page Title="Velebit-Planinarski objekti" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Pl_domovi.aspx.cs" Inherits="Pl_domovi" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="body-sredina">
	    <div id="body-top">
		    <div id="body-bot">
			    <div id="objekti-box">
                	<h2>
                        <asp:Label ID="lblNazivGrupe" runat="server" Text="Label"></asp:Label>
                    </h2>
                    <asp:Repeater ID="RepeaterSadrzaj" runat="server">
                        <ItemTemplate>
                            <h3><%# DataBinder.Eval(Container.DataItem,"Naslov") %></h3>
                            <span><%# DataBinder.Eval(Container.DataItem,"DatumObjave") %></span>
                            <div class="sadrzaj_container">
                                <img class="sadrzaj_slika" alt="<%# DataBinder.Eval(Container.DataItem,"SlikaURL") %>" src='slike/objekti/<%# DataBinder.Eval(Container.DataItem,"SlikaURL") %>' />
                                <p><%# DataBinder.Eval(Container.DataItem,"OstatakTeksta") %></p>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
			    </div>                
				<div class="clear"></div>			
			</div>
        </div>
    </div>    		
	
    	<div id="foot">
			<div id="foot-top">
				<div id="foot-bot">
					<div id="dolje-lijevo-box">
						<h3>HPS razvrstava domove, kuće i skloništa i prema ponudi, po sljedećim kategorijama:</h3>
						<ul>
						    <li>A – potpuno opskrbljen, s ležajima</li>
							<li>B – djelomično opskrbljen, s ležajima</li>
							<li>C – neopskrbljen, s ležajima</li>
                            <li>D – neopskrbljen, bez ležaja</li>
                            <li>I – izletište (potpuno opskrbljen, bez ležaja)</li>
						    </ul>
					</div>

					<div id="dolje-desno-box">
						<h3>Prema kućnom redu planinari i drugi posjetitelji dužni su:</h3>
                        <ul>
							<li>na vrijeme najaviti noćenje domaćinu i predati mu svoju planinarsku ili osobnu iskaznicu,</li>
							<li>ne remetiti red i mir u kući, a od 22 sata do 5 sati ujutro poštivati potpuni mir,</li>
							<li>održavati red i čistoću u kući i njezinoj okolici, a svoje smeće ponijeti sa sobom,</li>
                            <li>ne ulaziti u spavaonice u planinarskoj obući,</li>
                            <li>ne uvoditi životinje,</li>
                            <li>ne pušiti u blagovaonicama i spavaonicama,</li>
                            <li>štedljivo koristiti ogrjev, vodu i električnu energiju,</li>
                            <li> pridržavati se uputa domaćina.</li>
						</ul>
 					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>
</asp:Content>

