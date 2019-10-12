using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Forget_Password : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Ticket_House.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand com = new SqlCommand("select * from User_info where User_Email = @eml", con);

        com.Parameters.AddWithValue("@eml", TextBox1.Text);
        SqlDataAdapter da = new SqlDataAdapter(com);
        DataSet ds = new DataSet();
        da.Fill(ds, "t1");
        con.Close();

        if (ds.Tables["t1"].Rows.Count > 0)
        {
            Label2.Visible = true;
            Label3.Text = ds.Tables["t1"].Rows[0]["User_Password"].ToString();

        }
        else
        {
            Label3.Text = "Email not found";
        }

    }
}