using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Home_AdminLogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=OnlineArt;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void btnadminlogin_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into Artist_Info values ('" + txtARname.Text + "','" + txtARfullname.Text + "','" + txtARpass.Text + "','" + txtARCpass.Text + "','" + txtARphone.Text+ "','" + txtARemail.Text + "','" + txtARaddress.Text + "','" + txtARpincode.Text+ "','"+ txtARBI.Text+"')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        txtARname.Text = "";
        txtARfullname.Text = "";
        txtARpass.Text = "";
        txtARCpass.Text = "";
        txtARphone.Text = "";
        txtARemail.Text = "";
        txtARaddress.Text = "";
        txtARpincode.Text = "";
        txtARBI.Text = "";
        Response.Redirect("/Artist/ArtistHome.aspx");
   }
}