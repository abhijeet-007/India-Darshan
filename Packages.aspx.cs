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
        //if (Session["New"] == null)
        //{
        //    Response.Redirect("Login2.aspx");
        //}
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
    }
    
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Details")
        {

            Response.Redirect("View Details Tours.aspx?ID=" + e.CommandArgument.ToString());

        }

        if (Session["New"] == null)
        {
            Response.Redirect("Login2.aspx");
        }
        else
        {
            if (e.CommandName == "Package")
            {
                DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
                Response.Redirect("BookingDetails.aspx?ID=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());

            }
        }

        
           
       
    }

    
}