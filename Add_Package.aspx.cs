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



public partial class Add_Package : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Registration.mdf;Integrated Security=True;User Instance=True");
            SqlCommand cmd = new SqlCommand("select * from PlaceData", con);
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
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {

            
            
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            /*FileUpload1.SaveAs(Server.MapPath("~/Uploads/" +FileUpload1.FileName));
                        Label8.Text = "file uploaded";
                        Label8.ForeColor = System.Drawing.Color.Green;*/
            //FileUpload1.SaveAs(Server.MapPath("~/Uploads/Places/") + Path.GetFileName(FileUpload2.FileName));
            //String link = "Uploads/Places/" + Path.GetFileName(FileUpload2.FileName);
            //link = "<Source src=" + link + "/>";
            // String query = "Insert into videodata(name,authorname,videolink) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + link + "')";
            string query = "insert into PackageData (PgName,PgPrice,PgDescription,PName,PgDetails) values (@PgName, @PgPrice, @PgDescription ,@PName ,@PgDetails)";

            
            SqlCommand cmd = new SqlCommand(query, conn);
            
            cmd.Parameters.AddWithValue("@PgName", TextBox8.Text);
            
            cmd.Parameters.AddWithValue("@PgPrice", TextBox9.Text);
            cmd.Parameters.AddWithValue("@PgDescription", TextBox11.Text);
            cmd.Parameters.AddWithValue("@PName", DropDownList1.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@PgDetails", TextBox10.Text);
            conn.Open(); ;
            cmd.ExecuteNonQuery();
            conn.Close();
            //SqlCommand cmd = new SqlCommand(query, conn);
            //com.Parameters.AddWithValue("@ID", newGUID.ToString());
            //cmd.Parameters.AddWithValue("@city", TextBoxCT.Text);
            //cmd.Parameters.AddWithValue("@image", link);
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
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", content, true);*/

            TextBox8.Text = null;
            TextBox9.Text = null;
            TextBox10.Text = null;
            TextBox11.Text = null;
           


        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }
}