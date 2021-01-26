using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Resetlink : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string email = Session["email"].ToString();
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string email = Session["email"].ToString();

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand("Update UserData set password = '" + txtpwd.Text + "'where Email= '" + email + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert ('your password has been successfully updated')</script>");
        txtpwd.Text = "";
        txtcofrmpwd.Text = "";
    }
}