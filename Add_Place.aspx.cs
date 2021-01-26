using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Data;

public partial class Add_Place : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Registration.mdf;Integrated Security=True;User Instance=True");
            SqlCommand cmd = new SqlCommand("select * from StateData", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            DropDownList1.DataSource = dt;
            DropDownList1.DataBind();

        }

        if (Session["New1"] == null)
        {
            Response.Redirect("Admin Login.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            if (FileUpload2.HasFile || FileUpload3.HasFile || FileUpload4.HasFile)
            {
                string fileextention = System.IO.Path.GetExtension(FileUpload2.FileName);
                string fileextention2 = System.IO.Path.GetExtension(FileUpload3.FileName);
                string fileextention3 = System.IO.Path.GetExtension(FileUpload4.FileName);
                if (fileextention.ToLower() != ".jpg" && fileextention.ToLower() != ".jpeg" && fileextention2.ToLower() != ".jpg" && fileextention2.ToLower() != ".jpeg" && fileextention3.ToLower() != ".jpg" && fileextention3.ToLower() != ".jpeg")
                {
                    Label11.Text = "Please select jpeg";
                    Label11.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    int filesize = FileUpload2.PostedFile.ContentLength;
                    int filesize2 = FileUpload3.PostedFile.ContentLength;
                    int filesize3 = FileUpload4.PostedFile.ContentLength;

                    if (filesize > 2097152 && filesize2 > 2097152 && filesize3 > 2097152)
                    {
                        Label11.Text = "select file size with 2 mb";
                        Label11.ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {

                        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);

                        FileUpload2.SaveAs(Server.MapPath("~/Uploads/Places/") + Path.GetFileName(FileUpload2.FileName));
                        FileUpload3.SaveAs(Server.MapPath("~/Uploads/Places/") + Path.GetFileName(FileUpload3.FileName));
                        FileUpload4.SaveAs(Server.MapPath("~/Uploads/Places/") + Path.GetFileName(FileUpload4.FileName));
                        String link = "Uploads/Places/" + Path.GetFileName(FileUpload2.FileName);
                        String link1 = "Uploads/Places/" + Path.GetFileName(FileUpload3.FileName);
                        String link2 = "Uploads/Places/" + Path.GetFileName(FileUpload4.FileName);
                        string query = "insert into PlaceData (PName,PImage,PDescription,PImage1,PImage2,SName) values (@state, @image, @description, @image1, @image2, @Sname)";


                        SqlCommand cmd = new SqlCommand(query, conn);

                        cmd.Parameters.AddWithValue("@state", TextBox4.Text);
                        cmd.Parameters.AddWithValue("@image", link);
                        cmd.Parameters.AddWithValue("@description", TextBox6.Text);
                        cmd.Parameters.AddWithValue("@image1", link1);
                        cmd.Parameters.AddWithValue("@image2", link2);
                        cmd.Parameters.AddWithValue("@Sname", DropDownList1.SelectedValue.ToString());
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        conn.Close();


                        /*FileUpload1.SaveAs(Server.MapPath("~/Uploads/" +FileUpload1.FileName));
                        Label8.Text = "file uploaded";
                        Label8.ForeColor = System.Drawing.Color.Green;*/
                        //SqlCommand cmd = new SqlCommand(query, conn);
                        //com.Parameters.AddWithValue("@ID", newGUID.ToString());
                        //cmd.Parameters.AddWithValue("@city", TextBoxCT.Text);
                        //cmd.Parameters.AddWithValue("@package1", TextBoxP1.Text);
                        //cmd.Parameters.AddWithValue("@package2", TextBoxP2.Text);
                        // cmd.Parameters.AddWithValue("@package3", TextBoxP3.Text);

                        //Label2.Text = "Video Data Has Been Uploaded and Saved Successfully";
                        //TextBox1.Text = "";
                        //TextBox2.Text = "";

                        /*string content = " window.onload=function(){ alert('";
                        content += ");";
                        content += "window.location='";
                        content += Request.Url.AbsoluteUri;
                        content += "';}";
                        ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", content, true);  */

                        TextBox4.Text = null;
                        TextBox6.Text = null;
                        
                    }
                }
            }
            else
            {
                Label11.Text = "Please select file to upload";
                Label11.ForeColor = System.Drawing.Color.Red;
            }
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }


    }

}