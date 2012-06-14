using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class SiteMaster : System.Web.UI.MasterPage
{
    string connString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["BazaConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["LogiraniUser"] != null)
        {
            btnOdjava.Visible = true;
            lblSession.Text = Session["LogiraniUser"].ToString();
        }
    }

    protected void btnOdjava_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Default.aspx");
        btnOdjava.Visible = false;
    }

    protected void linkPrijava_Click(object sender, EventArgs e)
    {
        string salt = Util.saltUser(User.Text).ToString();
        string hashlozinka = Util.SHA256(Pass.Text + salt);

        SqlConnection mojaKonekcija = new SqlConnection(connString);
        mojaKonekcija.Open();

        SqlCommand command = new SqlCommand("SELECT * FROM Korisnici WHERE UserName=@username AND Password=@password", mojaKonekcija);
        command.Parameters.AddWithValue("username", User.Text);
        command.Parameters.AddWithValue("password", hashlozinka);
        SqlDataReader citac = command.ExecuteReader();

        if (citac.Read())
        {
            Session["LogiraniUser"] = "Pozdrav," + " " + citac["Ime"] + " " + "|";
            Session["korisnikID"] = citac["ID_korisnik"];
            Response.Cookies["login_cookie"].Value = "false";
            lblSession.Text = Session["LogiraniUser"].ToString();
            btnOdjava.Visible = true;
            User.Text = "";
        }
        else
        {
            Response.Cookies["login_cookie"].Value = "true";
            lblOprijavi.Text = "<strong>Provjerite vaš unos ili se registrirajte !!!</strong>";
            linkReg.Visible = true;
        }

        citac.Close();
        mojaKonekcija.Close();
    }

    protected void linkReg_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registracija.aspx");
    }
}
