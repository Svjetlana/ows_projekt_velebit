<%@ Page Title="Velebit-Registracija" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Registracija.aspx.cs" Inherits="Registracija" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

   <div id="body-sredina">
	    <div id="body-top">
		    <div id="body-bot">
			    <div id="objekti-box">
                    <h2>Registracija novog korisnika</h2>
                    <p align="center">Molimo Vas da unesete svoje podatke. Sva polja su obvezna !</p>
                   
                    <table align="center">
                        <tr><td>Ime:</td>
                            <td><asp:TextBox ID="boxIme" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr><td>Prezime:</td>
                            <td><asp:TextBox ID="boxPrezime" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr><td>Korisničko ime:</td>
                            <td><asp:TextBox ID="boxUser" runat="server" EnableViewState="False"></asp:TextBox></td>
                        </tr>
                        <tr><td>Lozinka:</td>
                            <td><asp:TextBox ID="boxLoz1" runat="server" TextMode="Password"></asp:TextBox></td>
                        </tr>
                        <tr><td>Ponovite lozinku:</td>
                            <td><asp:TextBox ID="boxLoz2" runat="server" TextMode="Password"></asp:TextBox></td>
                        </tr>
                        <tr><td>Email:</td>
                            <td><asp:TextBox ID="boxEmail" runat="server"></asp:TextBox></td>
                        </tr>
                    </table>
                    <asp:Button ID="btnReg" runat="server" Text="Unesi" onclick="btnReg_Click"/> <br />   
                    <asp:Label ID="lblporuka" runat="server" Text="" Font-Bold="True" ForeColor="Red"></asp:Label>                                
                </div>
            </div>
        </div>
    </div>
</asp:Content>

