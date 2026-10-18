using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Artist_ArtistProfile : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["artist"]==null)
        {
            Response.Redirect("ArtistLogin.aspx");
        }
        if (!IsPostBack)
        {
            con.ConnectionString = "Data Source=.;Initial Catalog=OnlineArt;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Artist_Info where Art_nickname='" + Session["artist"].ToString() + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                txtARfullname.Text = dr["Full_Name"].ToString();
                txtARphno.Text = dr["Phone_Number"].ToString();
                txtARemail.Text = dr["Email_Address"].ToString();
                txtARadress.Text = dr["Address"].ToString();
                txtARpincode.Text = dr["Pin_Code"].ToString();
                txtARartnick.Text = dr["Art_nickname"].ToString();
                txtbankinfo.Text = dr["Bank_Info"].ToString();
            }
            con.Close();
        }
        }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        if (btnupdate.Text == "Update")
        {
            con.ConnectionString = "Data Source=.;Initial Catalog=OnlineArt;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand("update Artist_Info set Full_Name='" + txtARfullname.Text + "',Phone_Number=" + txtARphno.Text + ",Email_Address='" + txtARemail.Text + "',Address='" + txtARadress.Text + "',Pin_Code=" + txtARpincode.Text + ",Bank_info='" + txtbankinfo.Text + "' where Art_nickname='" + Session["artist"].ToString() + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            //lbl.Visible = true;
            //lbl.Text = "Data Changed";
            Response.Redirect("/Artist/ArtistHome.aspx");
        }
        else
        {
            txtARfullname.Enabled = true;
            txtARphno.Enabled = true;
            txtARemail.Enabled = true;
            txtARadress.Enabled = true;
            txtARpincode.Enabled = true;
            txtbankinfo.Enabled = true;
            txtARartnick.Enabled = false;
            btnupdate.Text = "Update";
        }
    }
}