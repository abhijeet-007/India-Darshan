﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class User_changepasswd : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] == null)
        {
            Response.Redirect("Login2.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string id = Convert.ToString(Session["New"]);
        SqlConnection con = new SqlConnection(constr);
        con.Open();

        SqlCommand cmd = new SqlCommand("select * from UserData where UserName=@ID and Password=@Password", con);
        cmd.Parameters.AddWithValue("@Id", id);
        cmd.Parameters.AddWithValue("@Password", ppass.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            string sql1 = "Update UserData set Password='" + npass.Text.Trim() + "' where UserName='" + id + "'";
            SqlCommand cmd1 = new SqlCommand(sql1, con);
            cmd1.ExecuteNonQuery();
            con.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('password updated')</script>");

        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('old password doesnot match')</script>");

        }

    }
}