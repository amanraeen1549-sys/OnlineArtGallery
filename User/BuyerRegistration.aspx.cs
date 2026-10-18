using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class User_BuyerRegistration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=OnlineArt;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        

    }

    protected void btnBRsubmit_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into User_Info values ('" + txtBRname.Text + "','" + txtBRfullname.Text + "','" + txtBRpass.Text + "','" + txtBRCpass.Text + "','" + txtBRphno.Text + "','" + txtBRemail.Text + "','" + txtBRaddress.Text + "','" + txtBRpincode.Text +  "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        txtBRname.Text = "";
        txtBRfullname.Text = "";
        txtBRpass.Text = "";
        txtBRCpass.Text = "";
        txtBRphno.Text = "";
        txtBRemail.Text = "";
        txtBRaddress.Text = "";
        txtBRpincode.Text = "";
        Response.Redirect("/User/UserHome.aspx");

    }
}