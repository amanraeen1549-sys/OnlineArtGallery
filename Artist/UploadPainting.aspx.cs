using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;


public partial class Artist_UploadPainting : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=OnlineArt;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnup_Click(object sender, EventArgs e)
    {
        if (FileUploadAuthor.HasFile)
        {
            string strname = FileUploadAuthor.FileName;

            String imagepath = "~//ArtistImages//" + strname.ToString();
            FileUploadAuthor.PostedFile.SaveAs(Server.MapPath(imagepath));

            con.Open();
            lbl.Visible = false;
            SqlCommand cmd = new SqlCommand("insert into Uploading_Info (Painting_Name,Market_Price,Description,Date,Author_Name,Imagepath) values('"
                  + txtuppainname.Text + "', '" + txtupMp.Text + "', '" + txtupdesc.Text +

                "', '" + txtupdate.Text + "', '" + txtupauthor.Text +
                "', '" + imagepath + "')", con);


            cmd.ExecuteNonQuery();
            con.Close();
            lbl.Visible = true;
            lbl.Text = "Image Uploaded successfully";
            txtuppainname.Text = "";
            txtupMp.Text = "";
            txtupdesc.Text = "";
            txtupdate.Text = "";
            txtupauthor.Text = "";

            strname = "";
        
        }

        }
    }