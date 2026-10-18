using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Admin_AdminLogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=OnlineArt;Integrated Security=True");
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl.Visible = false;
    }

    protected void btnAL_Click(object sender, EventArgs e)
    {
        con.Open();
      
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from Admin_Login_Info where Username='" + txtALname.Text + "' and Password = '" + txtALpass.Text + "'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        i = Convert.ToInt32(dt.Rows.Count.ToString());

        if(i==1)
        {
            Response.Redirect("/Admin/AdminHome.aspx");
        }
        else
        {
            lbl.Visible = true;
            lbl.Text = "Check Again Your Username and Password";
        }
    }
}