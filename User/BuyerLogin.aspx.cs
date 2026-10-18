using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Home_BuyerLogin : System.Web.UI.Page
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

    protected void btnuserlogin_Click(object sender, EventArgs e)
    {
       
        cmd.CommandText = "select* from User_Info  where Us_nickname = '" + TxtbuyLogName.Text + "' and Password= '" + TxtbuyLogPass.Text + "'";
        cmd.Connection = con;
        sda.SelectCommand = cmd;
        sda.Fill(ds, "User_Info");
         if(ds.Tables [0].Rows.Count>0)
        {
            Session["buyer"] = TxtbuyLogName.Text;
            Response.Redirect("/User/UserHome.aspx");
            
        }
        else
        {
            lbl.Visible = true;
            lbl.Text = "Try Again";
        }
       
    }
}