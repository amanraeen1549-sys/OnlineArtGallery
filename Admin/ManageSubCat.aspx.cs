using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class Admin_ManageSubCat : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=OnlineArt;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
          
    }

    protected void btnMSC_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into Sub_Category_Info values (" +DropDownListCatg.SelectedValue.ToString() + ",'" +txtSCname.Text + "','"+txtSCdesc.Text+"')", con);
        int i=cmd.ExecuteNonQuery();
        con.Close();
        if (i > 0)
        {
            GridView1.DataBind();
            lbl1.Visible = true;
            lbl1.Text = "Data Entered Succesfully";
            txtSCname.Text = default(string);
            txtSCdesc.Text = default(string);
        }


    }
}