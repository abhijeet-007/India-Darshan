using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New1"] != null)
        {
            //TextBoxAdminName.Text = "Welcome" + Session["New1"].ToString();
            Response.Redirect("AdminHome.aspx");
        }
        if (Session["New"] != null)
        {

            Response.Redirect("Indian Tourism.aspx");
        }
    }

    protected void Button_AdminLogin_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        string checkuser = "Select count(*) from AdminData where admin_name= '" + TextBoxAdminName.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            conn.Open();
            string checkPasswordQuery = "select admin_password from AdminData where admin_name= '" + TextBoxAdminName.Text + "'";
            SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
            string password = passComm.ExecuteScalar().ToString().Replace(" ", "");
            if (password == TextBoxAdminPassword.Text)
            {
                Session["New1"] = TextBoxAdminName.Text;
                Session.Timeout = 5;
                Response.Write("Password is correct");
                Response.Redirect("AdminHome.aspx");
            }
            else
            {
                Response.Write("Password is incorrect");
            }
        }
        else
        {
            Response.Write("Admin Name is not correct");
        }
    }
}