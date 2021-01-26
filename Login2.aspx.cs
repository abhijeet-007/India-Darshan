using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            //TextBox1.Text = "Welcome" + Session["New"].ToString();
            Response.Redirect("AllAttractions.aspx");
        }
         if (Session["New1"] != null)
         {
             //TextBox1.Text = "Welcome" + Session["New1"].ToString();
             Response.Redirect("AdminHome.aspx");
         }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        string checkuser = "Select count(*) from UserData where UserName= '" + TextBox1.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            conn.Open();
            string checkPasswordQuery = "select password from UserData where UserName= '" + TextBox1.Text + "'";
            SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
            string password = passComm.ExecuteScalar().ToString().Replace(" ", "");
            if (password == TextBox2.Text)
            {
                Session["New"] = TextBox1.Text;
                Session.Timeout = 5;
                //Response.Write("Password is correct");
                Response.Redirect("AllAttractions.aspx");
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Welcome')</script>");
            }
            else
            {
                //Response.Write("Password is incorrect");
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Password Is Incorrect')</script>");
            }
        }
        else
        {
            //Response.Write("UserName is not correct");
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Username Is Not Correct')</script>");
        }
    }
    
}