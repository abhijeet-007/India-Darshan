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


public partial class Update_Image_Slider : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Registration.mdf;Integrated Security=True;User Instance=True");
            SqlCommand cmd = new SqlCommand("select * from ImageSlider", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            DropDownList1.DataSource = dt;
            DropDownList1.DataBind();

            //SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Registration.mdf;Integrated Security=True;User Instance=True");
            //DropDownList IDropDownList1 = (DropDownList)FormView1.FindControl("IDropDownList2");
            //SqlCommand cmdd = new SqlCommand("select * from ImageSlider", conn);
            //SqlDataAdapter sdaa = new SqlDataAdapter(cmdd);
            //DataTable dtt = new DataTable();
            //sda.Fill(dtt);
            //IDropDownList1.DataSource = dtt;
            //IDropDownList1.DataBind();
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
            Label6.Text = " Name Found Successfully";
        }
        else
        {
            Label6.Text = " Name Not Found ";
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
        FileUpload FileUpload1 = (FileUpload)FormView1.FindControl("IFileUpload1");
        DropDownList IDropDownList1 = (DropDownList)FormView1.FindControl("IDropDownList2");
        string SL = Convert.ToString(DropDownList1.Text);

        if (FileUpload1.HasFile)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);

            FileUpload1.SaveAs(Server.MapPath("~/images/") + Path.GetFileName(FileUpload1.FileName));
            String link = "images/" + Path.GetFileName(FileUpload1.FileName);
            string query = "update ImageSlider set ImageName = ('" + link + "'), IsActive =('"+IDropDownList1.SelectedValue.ToString()+"') where Name = ('" + SL + "')";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}