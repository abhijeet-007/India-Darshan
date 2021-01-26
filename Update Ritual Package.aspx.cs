using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Update_Ritual_Package : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Registration.mdf;Integrated Security=True;User Instance=True");
            SqlCommand cmd = new SqlCommand("select * from RPackageData", con);
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
            Label6.Text = "Package Name Found Successfully";
        }
        else
        {
            Label6.Text = "Package Name Not Found ";
            FormView1.Visible = false;
        }

        Label6.Text = "";



    }

    protected void FormView1_ItemUpdating(object sender, FormViewUpdatedEventArgs e)
    {
        Label6.Text = "Data Updated Successfully";
        FormView1.Visible = false;
    }
   
}