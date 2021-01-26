using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Gallary : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["New"] == null)
        //{
        //    Response.Redirect("Login2.aspx");
        //}
        if (!IsPostBack)
        {
            GetImage();
        }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Placessg")
        {
            Response.Redirect("Attractions.aspx?SName=" + e.CommandArgument.ToString());
        }
    }
    public void GetImage()
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString))
        {
            SqlCommand cmd = new SqlCommand("select * from ImageSlider where IsActive = 1", con);
            DataTable dt = new DataTable();

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            con.Open();

            da.Fill(dt);
            if (dt.Rows.Count > 0 && dt.Rows[0][0] != string.Empty)
            {
                rpt.DataSource = dt;
                rpt.DataBind();
            }
            else
            {
                rpt.DataSource = null;
                rpt.DataBind();
            }
        }
    }
}