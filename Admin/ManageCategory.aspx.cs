using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Admin_ManageCategory : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineArtConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        lbl1.Visible = false;
    }

    protected void btnMCsubmit_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into Category_Infoo values('"+ txtMCname.Text+ "','"+txtMCdesc.Text +"')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        lbl1.Visible = true;
        lbl1.Text = "Data Entered Succesfully";
        txtMCname.Text = "";
        txtMCdesc.Text = "";

    }
}