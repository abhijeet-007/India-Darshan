using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Success_Payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Thanks.Text = "Transaction ID :" + Request.Form["txnid"] + " has been successfully Completed";
    }
}