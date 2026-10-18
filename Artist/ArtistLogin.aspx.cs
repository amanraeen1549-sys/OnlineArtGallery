using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class Home_AdminLogin : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();
    SqlDataAdapter sda = new SqlDataAdapter();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        lbl.Visible = false;
        con.ConnectionString = "Data Source=.;Initial Catalog=OnlineArt;Integrated Security=True";
        con.Open();
        

    }

    protected void btnartistlogin_Click(object sender, EventArgs e)
    {
        cmd.CommandText = "select* from Artist_Info  where Art_nickname = '" + Txtartlogname.Text + "' and Password= '" + TxtartlogPass.Text + "'";
        cmd.Connection = con;
        sda.SelectCommand = cmd;
        sda.Fill(ds, "Artist_Info");
        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["artist"] = Txtartlogname.Text;
            Response.Redirect("/Artist/ArtistHome.aspx");

        }
        else
        {
            lbl.Visible = true;
            lbl.Text = "Incorrect Nick Name or Password, Try Again";

        }
    }
}