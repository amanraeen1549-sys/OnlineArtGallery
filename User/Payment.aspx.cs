using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class User_Payment : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=OnlineArt;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Request.QueryString["amt"] != null)
        {
            Label1.Text = Request.QueryString["amt"].ToString();

        }
    }

    protected void btnpay_Click(object sender, EventArgs e)
    {
        
         con.Open();
        SqlCommand cmd = new SqlCommand("insert into Payment_Info values ('" + txtpaycardno.Text + "','" + txtpaydoe.Text + "','" + txtpaycvv.Text + "','" + txtpaycardholder.Text +  "')", con);

        int ui = cmd.ExecuteNonQuery();
        if (ui > 0)
        {

            cmd.CommandText = Session["userShiping"].ToString();
            cmd.ExecuteNonQuery();
        }
        con.Close();
        lbl.Visible = true;

        lbl.Text = "Sucess";
        txtpaycardno.Text = "";
        txtpaydoe.Text = "";
        txtpaycvv.Text = "";
        txtpaycardholder.Text = "";
        Response.Redirect("/User/UserHome.aspx");
        
       
    }
}