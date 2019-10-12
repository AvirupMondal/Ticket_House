using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Ticket_House.mdf;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();

        SqlCommand com = new SqlCommand("Insert into Admin values( @City_Name, @Theatre_Name, @Time_Span, @Movie_Name, @Image, @Medium, @IsLiveOrNot, @Movie_Description, @Date_Starting, @Date_Ending, @Cost(Rs), @Uniq_Id)", con);

        com.Parameters.AddWithValue("@City_Name", TextBox1.Text);
        com.Parameters.AddWithValue("@Theatre_Name", TextBox2.Text);
        com.Parameters.AddWithValue("@Time_Span", TextBox3.Text);
        com.Parameters.AddWithValue("@Movie_Name", TextBox4.Text);
        com.Parameters.AddWithValue("@Image", TextBox5.Text);
        com.Parameters.AddWithValue("@Medium", TextBox6.Text);
        com.Parameters.AddWithValue("@IsLiveOrNot", TextBox7.Text);
        com.Parameters.AddWithValue("@Movie_Description", TextBox8.Text);
        com.Parameters.AddWithValue("@Date_Starting", TextBox9.Text);
        com.Parameters.AddWithValue("@Date_Ending", TextBox10.Text);
        com.Parameters.AddWithValue("@Cost(Rs)", TextBox11.Text);
        com.Parameters.AddWithValue("@Uniq_Id", "1");

        int s = com.ExecuteNonQuery();
        con.Close();

    }
}