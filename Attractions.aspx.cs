using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] == null)
        {
            Response.Redirect("Login2.aspx");
        }
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();

        conn.Close();
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Attractionss")
        {
            Response.Redirect("Packages.aspx?PName=" + e.CommandArgument.ToString());
        }
    }
    protected void ImageButton1_Command(object sender, CommandEventArgs e)
    {
        if (e.CommandName == "Images")
        {
            Response.Redirect("PlaceImages.aspx?PName=" + e.CommandArgument.ToString());
        }
    }
}