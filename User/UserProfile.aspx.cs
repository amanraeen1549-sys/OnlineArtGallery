using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_UserProfile : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            con.ConnectionString = "Data Source=.;Initial Catalog=OnlineArt;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from User_Info where Us_nickname='" + Session["buyer"].ToString() + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            if(dr.HasRows)
            {
                txtUPfullname.Text = dr["Full_Name"].ToString();
                txtUPphno.Text = dr["Phone_Number"].ToString();
                txtUPemail.Text = dr["Email_Address"].ToString();
                txtUPaddr.Text = dr["Address"].ToString();
                txtUPpincode.Text = dr["Pin_Code"].ToString();
                txtUPname.Text = dr["Us_nickname"].ToString();
            }
            con.Close();
            
        }
        
    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        if (btnupdate.Text == "Update")
        {
            con.ConnectionString = "Data Source=.;Initial Catalog=OnlineArt;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand("update User_Info set Full_Name='" + txtUPfullname.Text + "',Phone_Number=" + txtUPphno.Text + ",Email_Address='" + txtUPemail.Text + "',Address='" + txtUPaddr.Text + "',Pin_Code=" + txtUPpincode.Text + " where Us_nickname='" + Session["buyer"].ToString() + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            lblMessage.Visible = true;
            lblMessage.Text = "Data Changed";
            Response.Redirect("UserProfile.aspx");
        }
        else
        {
            txtUPfullname.Enabled=true;
            txtUPphno.Enabled = true;
            txtUPemail.Enabled = true;
            txtUPaddr.Enabled = true;
            txtUPpincode.Enabled = true;
            txtUPname.Enabled = false;
            btnupdate.Text = "Update";
        }
    }
}