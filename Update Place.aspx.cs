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

public partial class Update_Place : System.Web.UI.Page
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
         if (SqlDataSource1 != null)
        {
            FormView1.Visible = true;
            Label6.Text = "Place Name Found Successfully";
        }
        else
        {
            Label6.Text = "Place Name Not Found ";
            FormView1.Visible = false;
        }

        Label6.Text = "";

        

    }

    protected void FormView1_ItemUpdating(object sender, FormViewUpdatedEventArgs e)
    {
        Label6.Text = "Data Updated Successfully";
        FormView1.Visible = false;
    }


    protected void UpdateButton_Click(object sender, EventArgs e)
    {
        FileUpload FileUpload1 = (FileUpload)FormView1.FindControl("PImageTextBox");
        Label Label4 = (Label)FormView1.FindControl("Label4");
        Label PNameLabel = (Label)FormView1.FindControl("PNameLabel1");
        string SL = Convert.ToString(PNameLabel.Text);

        if (FileUpload1.HasFile)
        {



            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);

            FileUpload1.SaveAs(Server.MapPath("~/Uploads/Places/") + Path.GetFileName(FileUpload1.FileName));
            String link = "Uploads/Places/" + Path.GetFileName(FileUpload1.FileName);

            string query = "update PlaceData set PImage = ('" + link + "') where PName = ('" + SL + "')";
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
