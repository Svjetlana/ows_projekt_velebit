using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Registracija : System.Web.UI.Page
{
    string connString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["BazaConnectionString"].ConnectionString;
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnReg_Click(object sender, EventArgs e)
    {
        if (Provjeri())
        {
            string salt = Util.saltUser(boxUser.Text).ToString();
            string hashlozinka = Util.SHA256(boxLoz1.Text + salt);
            SqlConnection mojaKonekcija = new SqlConnection(connString);
            mojaKonekcija.Open();
            SqlCommand command = new SqlCommand("INSERT INTO Korisnici(Ime, Prezime, UserName, Password, Salt, Email) VALUES (@ime, @prezime, @uname, @loz, @salt, @email)", mojaKonekcija);
            command.Parameters.AddWithValue("ime", boxIme.Text);
            command.Parameters.AddWithValue("prezime", boxPrezime.Text);
            command.Parameters.AddWithValue("uname", boxUser.Text);
            command.Parameters.AddWithValue("loz", hashlozinka);
            command.Parameters.AddWithValue("salt", salt);  
            command.Parameters.AddWithValue("email", boxEmail.Text);
            command.ExecuteNonQuery();
            mojaKonekcija.Close();
           
            Response.Redirect("~/Default.aspx");
        }
        else
            lblporuka.Text = "Provjerite unesene podatke!";
    }

    bool Provjeri()
    {
        return (ProvjeriImePrezimeUser() && ProvjeriEmail() && ProvjriPass());
    }
    bool ProvjeriImePrezimeUser()
    {
        if (boxIme.Text.Length > 0 && boxPrezime.Text.Length > 0 && boxUser.Text.Length > 0)
        {
            return true;
        }
        return false;
    }
    bool ProvjeriEmail()
    {
        if (boxEmail.Text.Length > 0)
        {
            if (boxEmail.Text.IndexOf('@') > 0) return true;
        }
        return false;

    }
    bool ProvjriPass()
    {
        if (boxLoz1.Text.Length > 0 && boxLoz2.Text.Length > 0)
        {
            if (boxLoz1.Text == boxLoz2.Text) return true;
            else { return false; }
        }
        return false;
    }
}