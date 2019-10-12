using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Sign_up : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Ticket_House.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand com = new SqlCommand("Insert into User_info values( @User_Name, @User_Phone, @User_Email, @User_Password, @Uniq_Id)", con);
        com.Parameters.AddWithValue("@User_Name", TextBox1.Text);
        com.Parameters.AddWithValue("@User_Phone", TextBox2.Text);
        com.Parameters.AddWithValue("@User_Email", TextBox3.Text);
        com.Parameters.AddWithValue("@User_Password", TextBox5.Text);
        com.Parameters.AddWithValue("@Uniq_Id", "0");
        int s = com.ExecuteNonQuery();
        con.Close();
        if (s > 0)
        {
            Response.Redirect("Admin_Login.aspx");
            Label4.Text = "Successfully created account";
        }
        else
        {
            Label4.Text = "not success";
        }
    }
 }
