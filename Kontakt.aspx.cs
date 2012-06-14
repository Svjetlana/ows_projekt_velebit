using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class Kontakt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnKontakt_Click(object sender, EventArgs e)
    {

	lblMail.Text = Util.SendMail("adresa@mail.com", "xxxxx", "adresa@mail.com", kontaktMail.Text, "adresa@mail.com", "KONTAKT FORM PODACI", kontaktPoruka.Text);

	// ciscenje forme nakon slanja
	kontaktMail.Text = "";
	kontaktPoruka.Text = "";
	kontaktIme.Text = "";
	
    }
}