using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Ticket_House.mdf;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();

        SqlCommand com = new SqlCommand("select * from User_info where User_Phone = @phn and User_Password = @pass", con);
        com.Parameters.AddWithValue("@phn", TextBox1.Text);
        com.Parameters.AddWithValue("@pass", TextBox2.Text);
        SqlDataAdapter da = new SqlDataAdapter(com);
        DataSet ds = new DataSet();
        da.Fill(ds, "t1");

        con.Close();
       
        if (ds.Tables["t1"].Rows.Count > 0)
        {
            Session["uname"] = ds.Tables["t1"].Rows[0]["User_Name"].ToString();
            Session["uid"] = ds.Tables["t1"].Rows[0]["User_Id"].ToString();
            Response.Redirect("Home_master.aspx");
        }
        
        else
        {
            Label4.Text = "not success";
        }
    }
}