using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage3 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New1"] != null)
        {
            Label1.Text = Session["New1"].ToString();
        }
        if (Session["New1"] == null)
        {
            Response.Redirect("Admin Login.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Remove("New1");
        Response.Redirect("Admin Login.aspx");
    }
}
