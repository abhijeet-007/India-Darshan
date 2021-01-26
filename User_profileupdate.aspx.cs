using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_profileupdate : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] == null)
        {
            Response.Redirect("Login2.aspx");
        }

        SqlConnection con = new SqlConnection(constr);
        String Name = Convert.ToString(Session["New"]);

        con.Open();
        string sql = "select * from UserData where UserName='" + Name + "'";
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataReader rdr = cmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
        rdr.Read();

        ID.Text = rdr[0].ToString();
        name.Text = rdr[1].ToString();
        email.Text = rdr[2].ToString();
        phno.Text = rdr[4].ToString();
        add.Text = rdr[6].ToString();
        rdr.Close();
        con.Close();
    }
    protected void update_Click(object sender, EventArgs e)
    {
        name.Enabled = true;
        email.Enabled = true;
        phno.Enabled = true;
        add.Enabled = true;
        done.Visible = true;
        update.Visible = false;
    }
    protected void done_Click(object sender, EventArgs e)
    {
        string names = name.Text.Trim();
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        SqlCommand cmd1 = new SqlCommand("update UserData set Email='" + email.Text.Trim() + "', MobileNo='" + phno.Text.Trim() + "', Address='" + add.Text.Trim() + "', UserName='"+name.Text.Trim()+"' where ID='" + ID.Text.Trim() + "'", con);
        cmd1.ExecuteNonQuery();
        con.Close();
        name.Enabled = false;
        email.Enabled = false;
        phno.Enabled = false;

        add.Enabled = false;
        done.Visible = false;
        update.Visible = true;
        Response.Redirect("User_profileupdate.aspx");
    }
    
}