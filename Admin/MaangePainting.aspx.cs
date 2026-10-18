using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;


public partial class Admin_MaangePainting : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=OnlineArt;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnMP_Click(object sender, EventArgs e)
    {
        if (FileUploadMPI.HasFile)
        {
            string strname = FileUploadMPI.FileName;
            
            String imagepath = "~//PaintingImages//" + strname.ToString();
            FileUploadMPI.PostedFile.SaveAs(Server.MapPath(imagepath));

            con.Open();
            Lbl1.Visible = false;
            SqlCommand cmd = new SqlCommand("insert into Painting_Detail (Sub_Cat_Id,Painting_Name,Market_Price,Discount_Price,Description,Date,Author_Name,ImagesPath) values('"
                 + DropDownSSC.SelectedValue.ToString() + "', '" + txtMPPianname.Text + "', '" + txtMPMprice.Text + "', '" + txtMPDprice.Text +
                "', '" + txtMPdesc.Text + "', '" + txtMPdate.Text + "', '" + txtMPAuname.Text +
                "', '" + imagepath +  "')", con);


             cmd.ExecuteNonQuery();
            con.Close();
            Lbl1.Visible = true;
            Lbl1.Text = "Image Uploaded successfully";
            txtMPPianname.Text = "";
            txtMPMprice.Text = "";
            txtMPDprice.Text = "";
            txtMPdesc.Text = "";
            txtMPdate.Text = "";
            txtMPAuname.Text = "";
            strname ="";


        }
        else
        {
            Lbl1.Visible = true;
            Lbl1.Text = "Plz upload the image!!!!";
        }
       
     }

   
}