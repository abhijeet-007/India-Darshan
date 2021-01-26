using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.IO;


public partial class dinvoice : System.Web.UI.Page
{
    string qa;
    decimal grandTotal = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        qa = Request.QueryString["in"];
        Panel1.Visible = true;
        Label4.Text = qa;
        Label5.Text = DateTime.Now.ToShortDateString();
        string constr = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
       
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.CommandText = "Select * from BookingData where TransactionID='" + qa + "'";
        SqlDataReader rdr = cmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
        rdr.Read();
        string email = rdr[1].ToString();
        string Add = rdr[2].ToString();
        string tprice = rdr[8].ToString();
        rdr.Close();
        con.Close();
        Label10.Text = email;
        Label7.Text = Add;
        Label9.Text = tprice;
        //-------------------------------------------------------------------------------------------------------------------
        con.Open();
        SqlCommand cmd1 = con.CreateCommand();
        cmd1.CommandType = System.Data.CommandType.Text;
        cmd1.CommandText = "Select * from BookingData where Email='" + Label10.Text + "'";
        SqlDataReader rdrr = cmd1.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
        rdrr.Read();
        string name = rdrr[0].ToString();
        string pmobile = rdrr[10].ToString();
        rdrr.Close();
        con.Close();
        Label11.Text = name;
        Label12.Text = pmobile;
        //-------------------------------------------------------------------------------------------------------------------
        con.Open();
        SqlCommand cmd2 = con.CreateCommand();
        cmd2.CommandType = System.Data.CommandType.Text;
        cmd2.CommandText = "Select * from BookingData where TransactionID='" + qa + "'";
        SqlDataAdapter sda = new SqlDataAdapter(cmd2);

        DataTable dt = new DataTable();
        sda.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        



    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;filename=Invoice.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        StringWriter sw = new StringWriter();
        HtmlTextWriter hw = new HtmlTextWriter(sw);
        Panel1.RenderControl(hw);
        StringReader sr = new StringReader(sw.ToString());
        Document pdfDoc = new Document(PageSize.A4, 10, 10, 0, 0);
        HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
        PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
        pdfDoc.Open();
        htmlparser.Parse(sr);
        pdfDoc.Close();
        Response.Write(pdfDoc);
        Response.End();
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */
    }
}