<%@ Page Title="Velebit-Kontakt" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Kontakt.aspx.cs" Inherits="Kontakt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
 <div id="body-sredina">
	    <div id="body-top">
		    <div id="body-bot">
			    <div id="objekti-box">
                    <h2>Kontakt</h2>
                        <p>Imate pitanje, prijedlog, savjet ... slobodno nam pišite.</p>
                           Ime:<br />
                           <asp:TextBox ID="kontaktIme" runat="server" Height="20px" Width="200px" ></asp:TextBox><br />
                           Email:<br />
                           <asp:TextBox ID="kontaktMail" runat="server" Height="20px" Width="200px"></asp:TextBox><br />
                           Poruka:<br />
                           <asp:TextBox ID="kontaktPoruka" runat="server" Height="200px" Width="400px" 
                                        TextMode="MultiLine" BorderColor="#849464" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox><br />
                           <asp:Button ID="btnKontakt" runat="server" Text="Pošalji" onclick="btnKontakt_Click" /> <br />
                           <asp:Label ID="lblMail" runat="server" Text=""></asp:Label>                     
                </div>
            </div>
        </div>
    </div>
</asp:Content>

