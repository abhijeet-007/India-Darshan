using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            Label1.Visible = true;
            Label1.Text = Session["New"].ToString();
            Button1.Visible = true;
            Button2.Visible = false;
        }
        else
        {
            Label1.Visible = false;
            Button2.Visible = true;
            Button1.Visible = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        Session.Remove("New");
        Response.Redirect("Login2.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        //Session.Remove("New");
        Response.Redirect("Login2.aspx");

    }
}
