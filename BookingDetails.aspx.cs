using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Text;
using System.Net.Mail;
using System.Security.Cryptography;

public partial class BookingDetails : System.Web.UI.Page
{
    int price;
    int quantity1;
    int totalprice;
    string pgname1;
    string pname1;
    int pid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] == null)
        {
            Response.Redirect("Login2.aspx");
        }
        Label16.Text = Session["New"].ToString();
        pid = Convert.ToInt32(Request.QueryString["ID"]);
        TextBox7_CalendarExtender.StartDate = DateTime.Today.AddDays(5);
        
        if (!IsPostBack)
        {
            
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("pgname");
            dt.Columns.Add("pgprice");
            dt.Columns.Add("pgdescription");
            dt.Columns.Add("pname");
            dt.Columns.Add("quantity");
            dt.Columns.Add("totalprice");


            if (Request.QueryString["ID"] != null)
            {
                if (Session["buyitems"] == null)
                {

                    dr = dt.NewRow();

                    SqlConnection scon = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                    String myquery = "select * from PackageData where ID=" + Request.QueryString["id"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = scon;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = 1;
                    dr["pgname"] = ds.Tables[0].Rows[0]["pgname"].ToString();
                    dr["pgprice"] = ds.Tables[0].Rows[0]["pgprice"].ToString();
                    dr["pgdescription"] = ds.Tables[0].Rows[0]["pgdescription"].ToString();
                    dr["quantity"] = Request.QueryString["quantity"];
                    dr["pname"] = ds.Tables[0].Rows[0]["pname"].ToString();
                    price = Convert.ToInt16(ds.Tables[0].Rows[0]["pgprice"].ToString());
                    quantity1 = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                    totalprice = price * quantity1;
                    dr["totalprice"] = totalprice;
                    pgname1 = (ds.Tables[0].Rows[0]["pgname"].ToString());
                    pname1 = (ds.Tables[0].Rows[0]["pname"].ToString());
                    Label1.Text = totalprice.ToString();
                    Label2.Text = price.ToString();
                    Label3.Text = quantity1.ToString();
                    Label4.Text = pgname1;
                    Label5.Text = pname1;

                    dt.Rows.Add(dr);
                   // GridView1.DataSource = dt;
                   // GridView1.DataBind();

                    //trans id

                    Label6.Text = totalprice.ToString();
                    Random random = new Random();
                    txnid.Value = (Convert.ToString(random.Next(10000, 20000)));
                    txnid.Value = "India Darshan" + txnid.Value.ToString();
                    //Response.Write(txnid.Value.ToString());
                    Label14.Text = txnid.Value.ToString();
                    //ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Your Transaction ID is '"+Label14.Text+"' ')</script>");

                    //Session["buyitems"] = dt;
                    //GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    //GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();


                }

            }
            //else
            //{
            //    dt = (DataTable)Session["buyitems"];
            //    GridView1.DataSource = dt;
            //    GridView1.DataBind();
            //    if (GridView1.Rows.Count > 0)
            //    {
            //        GridView1.FooterRow.Cells[5].Text = "Total Amount";
            //        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();

            //    }


            //}
            //Label2.Text = GridView1.Rows.Count.ToString();

        }
    }

    
    protected void Button1_Click(object sender, EventArgs e)
    {
        SendEmail();



        Double amount = Convert.ToDouble(Label6.Text);

        String text = key.Value.ToString() + "|" + txnid.Value.ToString() + "|" + amount + "|" + "Package" + "|" + TextBox8.Text + "|" + TextBox9.Text + "|" + "1" + "|" + "1" + "|" + "1" + "|" + "1" + "|" + "1" + "||||||" + salt.Value.ToString();
        //Response.Write(text);
        byte[] message = Encoding.UTF8.GetBytes(text);

        UnicodeEncoding UE = new UnicodeEncoding();
        byte[] hashValue;
        SHA512Managed hashString = new SHA512Managed();
        string hex = "";
        hashValue = hashString.ComputeHash(message);
        foreach (byte x in hashValue)
        {
            hex += String.Format("{0:x2}", x);
        }
        hash.Value = hex;

        System.Collections.Hashtable data = new System.Collections.Hashtable(); // adding values in gash table for data post
        data.Add("hash", hex.ToString());
        data.Add("txnid", txnid.Value);
        data.Add("key", key.Value);
        // string AmountForm = ;// eliminating trailing zeros

        data.Add("amount", amount);
        data.Add("firstname", TextBox8.Text.Trim());
        data.Add("email", TextBox9.Text.Trim());
        data.Add("phone", TextBox11.Text.Trim());
        data.Add("productinfo", "Package");
        data.Add("udf1", "1");
        data.Add("udf2", "1");
        data.Add("udf3", "1");
        data.Add("udf4", "1");
        data.Add("udf5", "1");

        data.Add("surl", "http://localhost:52746/India%20Darshan/invoice.aspx");
        data.Add("furl", "http://localhost:52746/India%20Darshan/FailurePayment.aspx");

        data.Add("service_provider", "");


        string strForm = PreparePOSTForm("https://test.payu.in/_payment", data);
        Page.Controls.Add(new LiteralControl(strForm));



        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into BookingData (Name,Email,Address,start_date,Mode,PeopleCount,PackageName,PlaceName,TotalPrice,Price,MobileNo,TransactionID,User_name) values ('" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox7.Text + "','" + DropDownList1.SelectedItem.ToString() + "','" + Label3.Text + "','" + Label4.Text + "','" + Label5.Text + "','" + Label1.Text + "','" + Label2.Text + "','" + TextBox11.Text + "','"+Label14.Text+"','"+Label16.Text+"')";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            //com.Parameters.AddWithValue("@Name", TextBox1.Text);
            //com.Parameters.AddWithValue("@email", TextBox2.Text);
            //com.Parameters.AddWithValue("@address", TextBox3.Text);
            //com.Parameters.AddWithValue("@Package", DataList1.ToString());
            ////com.Parameters.AddWithValue("@PerName", Panel1.ToString());
            ////com.Parameters.AddWithValue("@PerAge", Panel2.ToString());
            ////com.Parameters.AddWithValue("@PerGender", Panel3.ToString());
            //com.Parameters.AddWithValue("@start_date", TextBox7.Text);
            //com.Parameters.AddWithValue("@mode", DropDownList1.SelectedItem.ToString());
            com.ExecuteNonQuery();
            conn.Close();

        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }

    private string PreparePOSTForm(string url, System.Collections.Hashtable data)      // post form
    {
        //Set a name for the form
        string formID = "PostForm";
        //Build the form using the specified data to be posted.
        StringBuilder strForm = new StringBuilder();
        strForm.Append("<form id=\"" + formID + "\" name=\"" +
                       formID + "\" action=\"" + url +
                       "\" method=\"POST\">");

        foreach (System.Collections.DictionaryEntry key in data)
        {

            strForm.Append("<input type=\"hidden\" name=\"" + key.Key +
                           "\" value=\"" + key.Value + "\">");
        }


        strForm.Append("</form>");
        //Build the JavaScript which will do the Posting operation.
        StringBuilder strScript = new StringBuilder();
        strScript.Append("<script language='javascript'>");
        strScript.Append("var v" + formID + " = document." +
                         formID + ";");
        strScript.Append("v" + formID + ".submit();");
        strScript.Append("</script>");
        //Return the form and the script concatenated.
        //(The order is important, Form then JavaScript)
        return strForm.ToString() + strScript.ToString();
    }

    private void SendEmail()
    {
        try
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("Dear Customer,<br/> Your Transaction id is<br/>'"+Label14.Text+"'");
            sb.Append("<a href=http://localhost:52746/India%20Darshan/View%20Details.aspx?ID=" + pid.ToString());
            sb.Append("&email=" + TextBox9.Text + ">Click here to View trip details</a><br/>");
            sb.Append("Regards,<br/>");
            sb.Append("Team India Darshan");

            MailMessage message = new System.Net.Mail.MailMessage("aryansinghyadav7@gmail.com", TextBox9.Text.Trim(), "India Darshan", sb.ToString());

            SmtpClient smtp = new SmtpClient();

            smtp.Host = "smtp.gmail.com";

            smtp.Port = 587;

            smtp.Credentials = new System.Net.NetworkCredential("aryansinghyadav7@gmail.com", "msdhoni7781");

            smtp.EnableSsl = true;

            message.IsBodyHtml = true;

            smtp.Send(message);

        }

        catch (Exception ex)
        {

        }
    }

    //private string GetUserEmail(string Email)
    //{

    //    //Label17.Text = Convert.(pid);
    //}

    
}

