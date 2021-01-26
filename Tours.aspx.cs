using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Tours : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
        //if (Session["New"] == null)
        //{
        //    Response.Redirect("Login2.aspx");
        //}
        
        
        if (!this.IsPostBack)
        {
            this.SearchState();
        }
        
        
        
    }
    protected void Search(object sender, EventArgs e)
    {
        this.SearchState();
    }


    private void SearchState()
    {

        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand())
            {

                string sql = "SELECT * FROM StateData";
                if (!string.IsNullOrEmpty(searchfield.Text.Trim()))
                {
                    sql += " WHERE SName LIKE @SName + '%'";
                    cmd.Parameters.AddWithValue("@SName", searchfield.Text.Trim());
                }
                cmd.CommandText = sql;
                cmd.Connection = con;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    DataList1.DataSource = dt;
                    DataList1.DataBind();
                }
            }
        }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Placess")
        {
            Response.Redirect("Attractions.aspx?SName=" + e.CommandArgument.ToString());
        }
    }
    /*protected void Unnamed1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        string SName = Request.QueryString["SName"];
        conn.Close();
    }*/


    protected void ImageButton1_Command(object sender, CommandEventArgs e)
    {
        if (e.CommandName == "Images")
        {
            Response.Redirect("StateImages.aspx?SName=" + e.CommandArgument.ToString());
        }
    }
}