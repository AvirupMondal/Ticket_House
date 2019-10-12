using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class search : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Ticket_House.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();

        SqlCommand com = new SqlCommand("select * from Movie where Movie_Name like @search + '%' ", con);

        com.Parameters.AddWithValue("@search", Session["search_item"].ToString());

        SqlDataAdapter da = new SqlDataAdapter(com);
        DataSet ds = new DataSet();
        da.Fill(ds, "t1");

        con.Close();

        DataList1.DataSource = ds.Tables[0].DefaultView;
        DataList1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("User_Login.aspx");
    }
}