using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class movie_info : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Ticket_House.mdf;Integrated Security=True");

    

    protected void Page_Load(object sender, EventArgs e)
    {
        int idd = Convert.ToInt32(Request.QueryString["id"]);

        con.Open();

        SqlCommand com = new SqlCommand("select * from Movie where Movie_Id = @id", con);

        com.Parameters.AddWithValue("@id", idd);
        SqlDataAdapter da = new SqlDataAdapter(com);
        DataSet ds = new DataSet();
        da.Fill(ds, "t1");

        con.Close();

         if (ds.Tables["t1"].Rows.Count > 0)
           {
            Image3.ImageUrl = ds.Tables["t1"].Rows[0]["Image_link"].ToString();
            Label4.Text = ds.Tables["t1"].Rows[0]["Movie_Name"].ToString();
            Label5.Text = ds.Tables["t1"].Rows[0]["Movie_Description"].ToString();
            }
         if (!IsPostBack)
         {
             DropDownList2.Items.Clear();
             DropDownList2.Items.Add("Choose A Hall Name"); 
             
         }
         
        // DropDownList2.Items.Add("Choose A Hall Name");                                     

                                    
    }

    

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {

        DropDownList2.Items.Clear();
        DropDownList2.Items.Add("Choose A Hall Name"); 

        int idd = Convert.ToInt32(Request.QueryString["id"]);

        var date = Calendar1.SelectedDate;
        var d = date.ToString("dd");
        var m = date.ToString("MM");
        var y = date.ToString("yyyy");

        string dt = d + "/" + m + "/" + y;
        ViewState["my_dt"] = dt;

        con.Open();
        SqlCommand com = new SqlCommand("select Theater.Theater_Name, Theater.Theater_Id from Theater, Theater_Show_time where Theater.Theater_Id = Theater_Show_time.Theater_Id and (Theater_Show_time.Date_Starting = @dt or Theater_Show_time.Date_Ending = @dt) and Theater_Show_time.Movie_Id = @mid", con);
        com.Parameters.AddWithValue("@dt", dt);
        com.Parameters.AddWithValue("@mid", idd);
        SqlDataAdapter da = new SqlDataAdapter(com);
        DataSet ds = new DataSet();
        da.Fill(ds, "t1");
        con.Close();

        for (int i = 0; i < ds.Tables["t1"].Rows.Count; i++)
        {
            DropDownList2.Items.Add(new ListItem(ds.Tables["t1"].Rows[i]["Theater_Name"].ToString(), ds.Tables["t1"].Rows[i]["Theater_Id"].ToString()));
        }

        Session["date"] = dt;
        
    }

    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
       


    }
    protected void DropDownList2_SelectedIndexChanged1(object sender, EventArgs e)
    {
        string tname = DropDownList2.SelectedItem.Text;
        int idd = Convert.ToInt32(Request.QueryString["id"]);

        con.Open();
        SqlCommand com = new SqlCommand("select Time.Time_Span, Time.Show_Time_Id from Time, Theater_Show_time, Theater where Time.Show_Time_Id = Theater_Show_time.Show_Time_Id and Theater_Show_time.Theater_Id = Theater.Theater_Id and (Theater_Show_time.Date_Starting = @dt or Theater_Show_time.Date_Ending = @dt) and Theater_Show_time.Movie_Id = @mid and  Theater.Theater_Name = @tname", con);
        com.Parameters.AddWithValue("@dt", ViewState["my_dt"]);
        com.Parameters.AddWithValue("@mid", idd);
        com.Parameters.AddWithValue("@tname", tname);
        SqlDataAdapter da = new SqlDataAdapter(com);
        DataSet ds = new DataSet();
        da.Fill(ds, "t1");
        con.Close();

        for (int i = 0; i < ds.Tables["t1"].Rows.Count; i++)
        {
            DropDownList3.Items.Add(new ListItem(ds.Tables["t1"].Rows[i]["Time_Span"].ToString(), ds.Tables["t1"].Rows[i]["Show_Time_Id"].ToString()));
        }

        Session["theater"] = DropDownList2.SelectedValue;
       // Label5.Text = DropDownList2.SelectedValue;
    }

    
    protected void DropDownList3_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Session["tspan"] = DropDownList3.SelectedValue;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["movie_id"] = Convert.ToInt32(Request.QueryString["id"]);
        Response.Redirect("Seat1.aspx");
    }
}