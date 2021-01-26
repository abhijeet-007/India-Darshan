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

public partial class Update_State : System.Web.UI.Page
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
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (SqlDataSource1 != null)
        {
            FormView1.Visible = true;
            Label6.Text = "State Name Found Successfully";
        }
        else
        {
            Label6.Text = "State Name Not Found ";
            FormView1.Visible = false;
        }

        Label7.Text = "";



        

    }
    protected void FormView1_ItemUpdating(object sender, FormViewUpdateEventArgs e)
    {
        

        Label7.Text = "Data Updated Successfully";
        FormView1.Visible = false;
    }




    protected void UpdateButton_Click(object sender, EventArgs e)
    {
        FileUpload FileUpload1 = (FileUpload)FormView1.FindControl("SImageTextBox");
        FileUpload FileUpload2 = (FileUpload)FormView1.FindControl("SImageTextBox2");
        FileUpload FileUpload3 = (FileUpload)FormView1.FindControl("SImageTextBox3");
        Label Label4 = (Label)FormView1.FindControl("Label8");
        Label SNameLabel = (Label)FormView1.FindControl("SNameLabel1");
        string SL = Convert.ToString(SNameLabel.Text);

        if (FileUpload1.HasFile || FileUpload2.HasFile || FileUpload3.HasFile)
        {



            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);

            FileUpload1.SaveAs(Server.MapPath("~/Uploads/States/") + Path.GetFileName(FileUpload1.FileName));
            FileUpload2.SaveAs(Server.MapPath("~/Uploads/States/") + Path.GetFileName(FileUpload2.FileName));
            FileUpload3.SaveAs(Server.MapPath("~/Uploads/States/") + Path.GetFileName(FileUpload3.FileName));
            String link = "Uploads/States/" + Path.GetFileName(FileUpload1.FileName);
            String link2 = "Uploads/States/" + Path.GetFileName(FileUpload2.FileName);
            String link3 = "Uploads/States/" + Path.GetFileName(FileUpload3.FileName);

            string query = "update StateData set SImage = ('" + link + "'), SImage1 = ('"+link2+"'), SImage2 = ('"+link3+"') where SName = ('" + SL + "')";
            //UPDATE [StateData] SET [SImage] = @SImage, [SDescription] = @SDescription WHERE [SName] = @SName"

            SqlCommand cmd = new SqlCommand(query, conn);

            //cmd.Parameters.AddWithValue("@state", TextBox1.Text);
            //cmd.Parameters.AddWithValue("@image", link);
            //cmd.Parameters.AddWithValue("@description", TextBox2.Text);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();






        }
        else
        {
            Label4.Text = "Please select file to upload";
            Label4.ForeColor = System.Drawing.Color.Red;
        }
    }
}