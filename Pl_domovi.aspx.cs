using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class Pl_domovi : System.Web.UI.Page
{
    string connString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["BazaConnectionString"].ConnectionString;
    
    protected void Page_Load(object sender, EventArgs e)
    {
       
        string sGrupa;

        sGrupa = Request.QueryString["id"];

        if (sGrupa == null || sGrupa == "")
        {
            sGrupa = "1";
        }

        if (getGrupaNaziv(sGrupa) == "greska")
        {
            fix();
        }

        lblNazivGrupe.Text = getGrupaNaziv(sGrupa);

        RepeaterSadrzaj.DataSource = getSadrzaj(sGrupa);
        RepeaterSadrzaj.DataBind();

     }

    public static DataTable getSadrzaj(string grupa)
    {
        string connString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["BazaConnectionString"].ConnectionString;

        SqlConnection myConnection = new SqlConnection(connString);
        myConnection.Open();
        SqlCommand myCommand = new SqlCommand();
        myCommand.Connection = myConnection;
        myCommand.CommandType = System.Data.CommandType.Text;

        myCommand.CommandText = "SELECT * FROM Sadrzaji WHERE id_grupa=@id_grupa;";
        
        SqlParameter prmId_grupa = myCommand.Parameters.Add("@id_grupa", SqlDbType.Int);
        prmId_grupa.Value = grupa;

        DataTable myDataTable = new DataTable();
        SqlDataAdapter myAdapter = new SqlDataAdapter();
        myAdapter.SelectCommand = myCommand;
        myAdapter.Fill(myDataTable);
        myConnection.Close();

        return myDataTable;
    }

    public static string getGrupaNaziv(string grupa)
    {
        string connString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["BazaConnectionString"].ConnectionString;
        string naziv;
        
        SqlConnection myConnection = new SqlConnection(connString);
        myConnection.Open();
        SqlCommand myCommand = new SqlCommand();
        myCommand.Connection = myConnection;
        myCommand.CommandType = System.Data.CommandType.Text;

        myCommand.CommandText = "SELECT ImeGrupe FROM Grupe WHERE ID_grupa=@id_grupa;";

        SqlParameter prmId_grupa = myCommand.Parameters.Add("@id_grupa", SqlDbType.Int);
        prmId_grupa.Value = grupa;

        

        try
        {
            naziv = myCommand.ExecuteScalar().ToString();

            myConnection.Close();

            return naziv;
            
            
        }
        catch (Exception e)
        {
            return "greska";
                       
        }

    }

    public void fix()
    {
        Response.Redirect("Default.aspx");
    }


}