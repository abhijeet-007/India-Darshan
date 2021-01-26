using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            if (FileUpload2.HasFile)
            {
                string fileextention = System.IO.Path.GetExtension(FileUpload2.FileName);
                if (fileextention.ToLower() != ".jpg" && fileextention.ToLower() != ".jpeg")
                {
                    Label8.Text = "Please select jpeg";
                    Label8.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    int filesize = FileUpload2.PostedFile.ContentLength;
                    if (filesize > 2097152)
                    {
                        Label8.Text = "select file size with 2 mb";
                        Label8.ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        /*FileUpload1.SaveAs(Server.MapPath("~/Uploads/" +FileUpload1.FileName));
                        Label8.Text = "file uploaded";
                        Label8.ForeColor = System.Drawing.Color.Green;*/
                        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);

                        FileUpload2.SaveAs(Server.MapPath("~/Uploads/Places/") + Path.GetFileName(FileUpload2.FileName));
                        String link = "Uploads/Places/" + Path.GetFileName(FileUpload2.FileName);
                        //link = "<Source src=" + link + "/>";
                        // String query = "Insert into videodata(name,authorname,videolink) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + link + "')";
                        string query = "insert into PlaceData (PName,PImage,PDescription,SName) values (@place, @image, @description ,@state)";

                        //SqlCommand cmd = new SqlCommand(query, conn);
                        SqlCommand cmd = new SqlCommand(query, conn);
                        //com.Parameters.AddWithValue("@ID", newGUID.ToString());
                        cmd.Parameters.AddWithValue("@place", TextBox4.Text);
                        //cmd.Parameters.AddWithValue("@city", TextBoxCT.Text);
                        cmd.Parameters.AddWithValue("@image", link);
                        //cmd.Parameters.AddWithValue("@package1", TextBoxP1.Text);
                        //cmd.Parameters.AddWithValue("@package2", TextBoxP2.Text);
                        // cmd.Parameters.AddWithValue("@package3", TextBoxP3.Text);
                        cmd.Parameters.AddWithValue("@description", TextBox6.Text);
                        cmd.Parameters.AddWithValue("@state", TextBox7.Text);
                        conn.Open(); ;
                        cmd.ExecuteNonQuery();
                        conn.Close();
                        //Label2.Text = "Video Data Has Been Uploaded and Saved Successfully";
                        //TextBox1.Text = "";
                        //TextBox2.Text = "";

                        /*string content = " window.onload=function(){ alert('";
                        content += ");";
                        content += "window.location='";
                        content += Request.Url.AbsoluteUri;
                        content += "';}";
                        ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", content, true);*/
                    }
                }
            }
            else
            {
                Label8.Text = "Please select file to upload";
                Label8.ForeColor = System.Drawing.Color.Red;
            }
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }
}