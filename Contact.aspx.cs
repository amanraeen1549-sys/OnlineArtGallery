using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Home_Contact : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=OnlineArt;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnContact_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into Query values ('" + txtConcname.Text + "','" + txtContemail.Text + "','" + txtContmessage.Text +  "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        txtConcname.Text = "";
        txtContemail.Text = "";
       txtContmessage.Text = "";
       
        Server.Transfer("/Reply.aspx");
        
    }
}