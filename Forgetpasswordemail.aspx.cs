using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.Net.Mail;
using System.Configuration;
using System.Data;

public partial class Forgetpasswordemail : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsend_Click(object sender, EventArgs e)
    {
        try
        {
            Session["email"] = txtemail.Text;
            SqlDataAdapter adp = new SqlDataAdapter("select * from UserData where Email=@email", con);
            con.Open();
            adp.SelectCommand.Parameters.AddWithValue("@email", txtemail.Text);
            adp.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("Update UserData set password_change_status=1 where Email='" + txtemail.Text + "'", con);
                cmd.ExecuteNonQuery();
                SendEmail();
                lbresult.Text = "successfully sent reset link on  your mail ,please check once! Thank you.";
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert(''"+lbresult+"'')</script>");
                con.Close();
                cmd.Dispose();
                txtemail.Text = "";

            }
            else
            {

                lbresult2.Text = "Please enter vaild email ,please check once! Thank you.";
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert(''" + lbresult2 + "'')</script>");

            }

        }

        catch (Exception ex)
        {

        }
    }
    // using this method we sent the mail to reciever

    private void SendEmail()
    {
        try
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("Hi,<br/> Click on below given link to Reset Your Password<br/>");
            sb.Append("<a href=http://localhost:2430/India%20Darshan/Resetlink.aspx?username=" + GetUserEmail(txtemail.Text));
            sb.Append("&email=" + txtemail.Text + ">Click here to change your password</a><br/>");
            sb.Append("Regards,<br/>");
            sb.Append("Team S2N");

            MailMessage message = new System.Net.Mail.MailMessage("aryansinghyadav7@gmail.com", txtemail.Text.Trim(), "Reset Your Password", sb.ToString());

            SmtpClient smtp = new SmtpClient();

            smtp.Host = "smtp.gmail.com";

            smtp.Port = 587;

            smtp.Credentials = new System.Net.NetworkCredential("aryansinghyadav7@gmail.com", "msdhoni7781");

            smtp.EnableSsl = true;

            message.IsBodyHtml = true;

            smtp.Send(message);

        }

        catch (Exception ex)
        {

        }
    }

    private string GetUserEmail(string Email)
    {
        SqlCommand cmd = new SqlCommand("select Email from UserData WHERE Email=@email", con);
        cmd.Parameters.AddWithValue("@email", txtemail.Text);
        string username = cmd.ExecuteScalar().ToString();
        return username;
    }
}