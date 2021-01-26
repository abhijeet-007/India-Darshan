using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Registration2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "Select count(*) from UserData where UserName= '" + TextBox8.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                //string message = TextBox8.Text;
                //message += TextBox8.Text + ": \\n";
                //Response.Write("User already exists");
                //ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('User already exists');", true);
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('User already exist')</script>");
            }
        }
        if (Session["New"] != null)
        {
            //TextBox8.Text = "Welcome" + Session["New"].ToString();
            Response.Redirect("Login2.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
           

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into UserData (UserName,Email,Password,Address,MobileNo,Gender) values (@uname, @email, @password, @address, @mobileno, @gender)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
             
            com.Parameters.AddWithValue("@uname", TextBox8.Text);
            com.Parameters.AddWithValue("@email", TextBox4.Text);
            com.Parameters.AddWithValue("@password", TextBox5.Text);
            com.Parameters.AddWithValue("@address", TextBox9.Text);
            com.Parameters.AddWithValue("@mobileno", TextBox7.Text);
            com.Parameters.AddWithValue("@gender", DropDownList1.SelectedItem.ToString());


            com.ExecuteNonQuery();
            //Response.Redirect("Places.aspx");
            // Response.Write("Registration is Successful");



            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
        SqlConnection connn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        connn.Open();
        string checkuser = "Select count(*) from UserData where UserName= '" + TextBox8.Text + "'";
        SqlCommand comm = new SqlCommand(checkuser, connn);
        int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
        connn.Close();
        if (temp == 1)
        {
            connn.Open();
            string checkPasswordQuery = "select password from UserData where UserName= '" + TextBox8.Text + "'";
            SqlCommand passComm = new SqlCommand(checkPasswordQuery, connn);
            string password = passComm.ExecuteScalar().ToString().Replace(" ", "");
            if (password == TextBox5.Text)
            {
                Session["New"] = TextBox8.Text;
                Session.Timeout = 5;
                Response.Write("Password is correct");
                Response.Redirect("AllAttractions.aspx");
            }
        }
    }
    
}