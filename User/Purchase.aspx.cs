using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class User_Purchase : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=OnlineArt;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        if(Request.QueryString["pid"]!=null)
        {
            string query = "select * from Painting_Detail where Pain_id='" + Request.QueryString["pid"] + "'";
            SqlCommand cmd = new SqlCommand(query,con);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                txtpainname.Text = dr["Painting_Name"].ToString();
                txtpurmarpr.Text = dr["Market_Price"].ToString();
                con.Close();
            }
        }

    }

    protected void btnpurchase_Click(object sender, EventArgs e)
    {
        string query = "insert into Purchasing values('"+ txtpainname.Text+"',"+ txtpurmarpr.Text+",'"+txtpurname.Text+"','"+txtpuraddress.Text+"',"+txtpurphno.Text+")";
        Session["userShiping"] = query;
        Response.Redirect("/User/Payment.aspx?amt="+ txtpurmarpr.Text);
    }
}