using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Seat1 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Ticket_House.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uname"] == null)
        {
            Response.Redirect("User_Sign_up.aspx");
        }

        if (!IsPostBack)
        {
         
            con.Open();
            SqlCommand com = new SqlCommand("select * from Seat_Status where Date = @dt and Theater_Id = @tid and Movie_Id = @mid and Show_Time_Id = @stid", con);
            com.Parameters.AddWithValue("@dt", Session["date"].ToString());
            com.Parameters.AddWithValue("@tid", Session["theater"].ToString());
            com.Parameters.AddWithValue("@mid", Session["movie_id"].ToString());
            com.Parameters.AddWithValue("@stid", Session["tspan"].ToString());
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds, "t1");
            int rows = ds.Tables["t1"].Rows.Count;
            con.Close();


            for (int i = 0; i < rows; i++)
            {
                String status;
                status = ds.Tables["t1"].Rows[i]["Seat_Status"].ToString();
                if (status == "B")
                {
                    if (ds.Tables["t1"].Rows[i]["Seat_No"].ToString() == "A1")
                    {
                        CheckBox1.BackColor = System.Drawing.Color.Red;
                        CheckBox1.Enabled = false;
                    }
                    if (ds.Tables["t1"].Rows[i]["Seat_No"].ToString() == "A2")
                    {
                        CheckBox2.BackColor = System.Drawing.Color.Red;
                        CheckBox2.Enabled = false;
                    }
                    if (ds.Tables["t1"].Rows[i]["Seat_No"].ToString() == "A3")
                    {
                        CheckBox3.BackColor = System.Drawing.Color.Red;
                        CheckBox3.Enabled = false;
                    }
                    if (ds.Tables["t1"].Rows[i]["Seat_No"].ToString() == "B1")
                    {
                        CheckBox4.BackColor = System.Drawing.Color.Red;
                        CheckBox4.Enabled = false;
                    }
                    if (ds.Tables["t1"].Rows[i]["Seat_No"].ToString() == "B2")
                    {
                        CheckBox5.BackColor = System.Drawing.Color.Red;
                        CheckBox5.Enabled = false;
                    }
                    if (ds.Tables["t1"].Rows[i]["Seat_No"].ToString() == "B3")
                    {
                        CheckBox6.BackColor = System.Drawing.Color.Red;
                        CheckBox6.Enabled = false;
                    }
                    if (ds.Tables["t1"].Rows[i]["Seat_No"].ToString() == "A4")
                    {
                        CheckBox7.BackColor = System.Drawing.Color.Red;
                        CheckBox7.Enabled = false;
                    }
                    if (ds.Tables["t1"].Rows[i]["Seat_No"].ToString() == "A5")
                    {
                        CheckBox8.BackColor = System.Drawing.Color.Red;
                        CheckBox8.Enabled = false;
                    }
                    if (ds.Tables["t1"].Rows[i]["Seat_No"].ToString() == "A6")
                    {
                        CheckBox9.BackColor = System.Drawing.Color.Red;
                        CheckBox9.Enabled = false;
                    }
                    if (ds.Tables["t1"].Rows[i]["Seat_No"].ToString() == "B4")
                    {
                        CheckBox10.BackColor = System.Drawing.Color.Red;
                        CheckBox10.Enabled = false;
                    }
                    if (ds.Tables["t1"].Rows[i]["Seat_No"].ToString() == "B5")
                    {
                        CheckBox11.BackColor = System.Drawing.Color.Red;
                        CheckBox11.Enabled = false;
                    }
                    if (ds.Tables["t1"].Rows[i]["Seat_No"].ToString() == "B6")
                    {
                        CheckBox12.BackColor = System.Drawing.Color.Red;
                        CheckBox12.Enabled = false;
                    }
                    if (ds.Tables["t1"].Rows[i]["Seat_No"].ToString() == "A7")
                    {
                        CheckBox13.BackColor = System.Drawing.Color.Red;
                        CheckBox13.Enabled = false;
                    }
                    if (ds.Tables["t1"].Rows[i]["Seat_No"].ToString() == "A8")
                    {
                        CheckBox14.BackColor = System.Drawing.Color.Red;
                        CheckBox14.Enabled = false;

                    }
                    if (ds.Tables["t1"].Rows[i]["Seat_No"].ToString() == "A9")
                    {
                        CheckBox15.BackColor = System.Drawing.Color.Red;
                        CheckBox15.Enabled = false;

                    }
                    if (ds.Tables["t1"].Rows[i]["Seat_No"].ToString() == "B7")
                    {

                        CheckBox16.BackColor = System.Drawing.Color.Red;
                        CheckBox16.Enabled = false;
                    }

                    if (ds.Tables["t1"].Rows[i]["Seat_No"].ToString() == "B8")
                    {

                        CheckBox17.BackColor = System.Drawing.Color.Red;
                        CheckBox17.Enabled = false;
                    }
                    if (ds.Tables["t1"].Rows[i]["Seat_No"].ToString() == "B9")
                    {

                        CheckBox18.BackColor = System.Drawing.Color.Red;
                        CheckBox18.Enabled = false;
                    }
                    if (ds.Tables["t1"].Rows[i]["Seat_No"].ToString() == "C1")
                    {

                        CheckBox19.BackColor = System.Drawing.Color.Red;
                        CheckBox19.Enabled = false;
                    }
                    if (ds.Tables["t1"].Rows[i]["Seat_No"].ToString() == "C2")
                    {

                        CheckBox20.BackColor = System.Drawing.Color.Red;
                        CheckBox20.Enabled = false;
                    }
                    if (ds.Tables["t1"].Rows[i]["Seat_No"].ToString() == "C3")
                    {

                        CheckBox21.BackColor = System.Drawing.Color.Red;
                        CheckBox21.Enabled = false;
                    }
                    if (ds.Tables["t1"].Rows[i]["Seat_No"].ToString() == "C4")
                    {

                        CheckBox22.BackColor = System.Drawing.Color.Red;
                        CheckBox22.Enabled = false;
                    }
                    if (ds.Tables["t1"].Rows[i]["Seat_No"].ToString() == "C5")
                    {

                        CheckBox23.BackColor = System.Drawing.Color.Red;
                        CheckBox23.Enabled = false;
                    }
                    if (ds.Tables["t1"].Rows[i]["Seat_No"].ToString() == "C6")
                    {

                        CheckBox24.BackColor = System.Drawing.Color.Red;
                        CheckBox24.Enabled = false;
                    }
                }
            }
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        int i = 1;
        if (CheckBox1.Checked == true)
        {
            if (i != 0)
            {
                con.Open();
                //insert
                SqlCommand com = new SqlCommand("insert into Seat_Status values( @sn, @ss, @uid, @dt, @tid, @mid, @sid)", con);
                com.Parameters.AddWithValue("@sn", "A1");
                com.Parameters.AddWithValue("@ss", "B");
                com.Parameters.AddWithValue("@uid", Session["uid"].ToString());
                com.Parameters.AddWithValue("@dt", Session["date"].ToString());
                com.Parameters.AddWithValue("@tid", Session["theater"].ToString());
                com.Parameters.AddWithValue("@mid", Session["movie_id"].ToString());
                com.Parameters.AddWithValue("@sid", Session["tspan"].ToString());

                // Label5.Text = "chekbox2";
                i = 0;
                int p = com.ExecuteNonQuery();
               // com.ExecuteNonQuery();
                con.Close();
            }
        }
        else if (CheckBox2.Checked == true)
        {
            if (i != 0)
            { 
                con.Open();
                //insert
                SqlCommand com = new SqlCommand("insert into Seat_Status values( @sn, @ss, @uid, @dt, @tid, @mid, @sid)", con);
                com.Parameters.AddWithValue("@sn","A2");
                com.Parameters.AddWithValue("@ss", "B" );
                com.Parameters.AddWithValue("@uid", Session["uid"].ToString());
                com.Parameters.AddWithValue("@dt", Session["date"].ToString());
                com.Parameters.AddWithValue("@tid", Session["theater"].ToString());
                com.Parameters.AddWithValue("@mid", Session["movie_id"].ToString());
                com.Parameters.AddWithValue("@sid", Session["tspan"].ToString());
               
               // Label5.Text = "chekbox2";
                i = 0;
                int p = com.ExecuteNonQuery();
               // com.ExecuteNonQuery();
                con.Close();
            }
        }

        else if (CheckBox3.Checked == true)
        {
            if (i != 0)
            {
                con.Open();
                //insert
                SqlCommand com = new SqlCommand("insert into Seat_Status values( @sn, @ss, @uid, @dt, @tid, @mid, @sid)", con);
                com.Parameters.AddWithValue("@sn", "A3");
                com.Parameters.AddWithValue("@ss", "B");
                com.Parameters.AddWithValue("@uid", Session["uid"].ToString());
                com.Parameters.AddWithValue("@dt", Session["date"].ToString());
                com.Parameters.AddWithValue("@tid", Session["theater"].ToString());
                com.Parameters.AddWithValue("@mid", Session["movie_id"].ToString());
                com.Parameters.AddWithValue("@sid", Session["tspan"].ToString());

                // Label5.Text = "chekbox2";
                i = 0;
                int p = com.ExecuteNonQuery();
              //  com.ExecuteNonQuery();
                con.Close();
            }
        }

        else if (CheckBox4.Checked == true)
        {
            if (i != 0)
            {
                con.Open();
                //insert
                SqlCommand com = new SqlCommand("insert into Seat_Status values( @sn, @ss, @uid, @dt, @tid, @mid, @sid)", con);
                com.Parameters.AddWithValue("@sn", "B1");
                com.Parameters.AddWithValue("@ss", "B");
                com.Parameters.AddWithValue("@uid", Session["uid"].ToString());
                com.Parameters.AddWithValue("@dt", Session["date"].ToString());
                com.Parameters.AddWithValue("@tid", Session["theater"].ToString());
                com.Parameters.AddWithValue("@mid", Session["movie_id"].ToString());
                com.Parameters.AddWithValue("@sid", Session["tspan"].ToString());

                // Label5.Text = "chekbox2";
                i = 0;
                int p = com.ExecuteNonQuery();
               // com.ExecuteNonQuery();
                con.Close();
            }
        }

        else if (CheckBox5.Checked == true)
        {
            if (i != 0)
            {
                con.Open();
                //insert
                SqlCommand com = new SqlCommand("insert into Seat_Status values( @sn, @ss, @uid, @dt, @tid, @mid, @sid)", con);
                com.Parameters.AddWithValue("@sn", "B2");
                com.Parameters.AddWithValue("@ss", "B");
                com.Parameters.AddWithValue("@uid", Session["uid"].ToString());
                com.Parameters.AddWithValue("@dt", Session["date"].ToString());
                com.Parameters.AddWithValue("@tid", Session["theater"].ToString());
                com.Parameters.AddWithValue("@mid", Session["movie_id"].ToString());
                com.Parameters.AddWithValue("@sid", Session["tspan"].ToString());

                // Label5.Text = "chekbox2";
                i = 0;
                int p = com.ExecuteNonQuery();
               // com.ExecuteNonQuery();
                con.Close();
            }
        }

        else if (CheckBox6.Checked == true)
        {
            if (i != 0)
            {
                con.Open();
                //insert
                SqlCommand com = new SqlCommand("insert into Seat_Status values( @sn, @ss, @uid, @dt, @tid, @mid, @sid)", con);
                com.Parameters.AddWithValue("@sn", "B3");
                com.Parameters.AddWithValue("@ss", "B");
                com.Parameters.AddWithValue("@uid", Session["uid"].ToString());
                com.Parameters.AddWithValue("@dt", Session["date"].ToString());
                com.Parameters.AddWithValue("@tid", Session["theater"].ToString());
                com.Parameters.AddWithValue("@mid", Session["movie_id"].ToString());
                com.Parameters.AddWithValue("@sid", Session["tspan"].ToString());

                // Label5.Text = "chekbox2";
                i = 0;
                int p = com.ExecuteNonQuery();
               // com.ExecuteNonQuery();
                con.Close();
            }
        }

        else if (CheckBox7.Checked == true)
        {
            if (i != 0)
            {
                con.Open();
                //insert
                SqlCommand com = new SqlCommand("insert into Seat_Status values( @sn, @ss, @uid, @dt, @tid, @mid, @sid)", con);
                com.Parameters.AddWithValue("@sn", "A4");
                com.Parameters.AddWithValue("@ss", "B");
                com.Parameters.AddWithValue("@uid", Session["uid"].ToString());
                com.Parameters.AddWithValue("@dt", Session["date"].ToString());
                com.Parameters.AddWithValue("@tid", Session["theater"].ToString());
                com.Parameters.AddWithValue("@mid", Session["movie_id"].ToString());
                com.Parameters.AddWithValue("@sid", Session["tspan"].ToString());

                // Label5.Text = "chekbox2";
                i = 0;
                int p = com.ExecuteNonQuery();
               // com.ExecuteNonQuery();
                con.Close();
            }
        }

        else if (CheckBox8.Checked == true)
        {
            if (i != 0)
            {
                con.Open();
                //insert
                SqlCommand com = new SqlCommand("insert into Seat_Status values( @sn, @ss, @uid, @dt, @tid, @mid, @sid)", con);
                com.Parameters.AddWithValue("@sn", "A5");
                com.Parameters.AddWithValue("@ss", "B");
                com.Parameters.AddWithValue("@uid", Session["uid"].ToString());
                com.Parameters.AddWithValue("@dt", Session["date"].ToString());
                com.Parameters.AddWithValue("@tid", Session["theater"].ToString());
                com.Parameters.AddWithValue("@mid", Session["movie_id"].ToString());
                com.Parameters.AddWithValue("@sid", Session["tspan"].ToString());

                // Label5.Text = "chekbox2";
                i = 0;
                int p = com.ExecuteNonQuery();
               // com.ExecuteNonQuery();
                con.Close();
            }
        }

        else if (CheckBox9.Checked == true)
        {
            if (i != 0)
            {
                con.Open();
                //insert
                SqlCommand com = new SqlCommand("insert into Seat_Status values( @sn, @ss, @uid, @dt, @tid, @mid, @sid)", con);
                com.Parameters.AddWithValue("@sn", "A6");
                com.Parameters.AddWithValue("@ss", "B");
                com.Parameters.AddWithValue("@uid", Session["uid"].ToString());
                com.Parameters.AddWithValue("@dt", Session["date"].ToString());
                com.Parameters.AddWithValue("@tid", Session["theater"].ToString());
                com.Parameters.AddWithValue("@mid", Session["movie_id"].ToString());
                com.Parameters.AddWithValue("@sid", Session["tspan"].ToString());

                // Label5.Text = "chekbox2";
                i = 0;
                int p = com.ExecuteNonQuery();
               // com.ExecuteNonQuery();
                con.Close();
            }
        }

        else if (CheckBox10.Checked == true)
        {
            if (i != 0)
            {
                con.Open();
                //insert
                SqlCommand com = new SqlCommand("insert into Seat_Status values( @sn, @ss, @uid, @dt, @tid, @mid, @sid)", con);
                com.Parameters.AddWithValue("@sn", "B4");
                com.Parameters.AddWithValue("@ss", "B");
                com.Parameters.AddWithValue("@uid", Session["uid"].ToString());
                com.Parameters.AddWithValue("@dt", Session["date"].ToString());
                com.Parameters.AddWithValue("@tid", Session["theater"].ToString());
                com.Parameters.AddWithValue("@mid", Session["movie_id"].ToString());
                com.Parameters.AddWithValue("@sid", Session["tspan"].ToString());

                // Label5.Text = "chekbox2";
                i = 0;
                int p = com.ExecuteNonQuery();
               // com.ExecuteNonQuery();
                con.Close();
            }
        }

        else if (CheckBox11.Checked == true)
        {
            if (i != 0)
            {
                con.Open();
                //insert
                SqlCommand com = new SqlCommand("insert into Seat_Status values( @sn, @ss, @uid, @dt, @tid, @mid, @sid)", con);
                com.Parameters.AddWithValue("@sn", "B5");
                com.Parameters.AddWithValue("@ss", "B");
                com.Parameters.AddWithValue("@uid", Session["uid"].ToString());
                com.Parameters.AddWithValue("@dt", Session["date"].ToString());
                com.Parameters.AddWithValue("@tid", Session["theater"].ToString());
                com.Parameters.AddWithValue("@mid", Session["movie_id"].ToString());
                com.Parameters.AddWithValue("@sid", Session["tspan"].ToString());

                // Label5.Text = "chekbox2";
                i = 0;
                int p = com.ExecuteNonQuery();
               // com.ExecuteNonQuery();
                con.Close();
            }
        }

        else if (CheckBox12.Checked == true)
        {
            if (i != 0)
            {
                con.Open();
                //insert
                SqlCommand com = new SqlCommand("insert into Seat_Status values( @sn, @ss, @uid, @dt, @tid, @mid, @sid)", con);
                com.Parameters.AddWithValue("@sn", "B6");
                com.Parameters.AddWithValue("@ss", "B");
                com.Parameters.AddWithValue("@uid", Session["uid"].ToString());
                com.Parameters.AddWithValue("@dt", Session["date"].ToString());
                com.Parameters.AddWithValue("@tid", Session["theater"].ToString());
                com.Parameters.AddWithValue("@mid", Session["movie_id"].ToString());
                com.Parameters.AddWithValue("@sid", Session["tspan"].ToString());

                // Label5.Text = "chekbox2";
                i = 0;
                int p = com.ExecuteNonQuery();
               // com.ExecuteNonQuery();
                con.Close();
            }
        }

        else if (CheckBox13.Checked == true)
        {
            if (i != 0)
            {
                con.Open();
                //insert
                SqlCommand com = new SqlCommand("insert into Seat_Status values( @sn, @ss, @uid, @dt, @tid, @mid, @sid)", con);
                com.Parameters.AddWithValue("@sn", "A7");
                com.Parameters.AddWithValue("@ss", "B");
                com.Parameters.AddWithValue("@uid", Session["uid"].ToString());
                com.Parameters.AddWithValue("@dt", Session["date"].ToString());
                com.Parameters.AddWithValue("@tid", Session["theater"].ToString());
                com.Parameters.AddWithValue("@mid", Session["movie_id"].ToString());
                com.Parameters.AddWithValue("@sid", Session["tspan"].ToString());

                // Label5.Text = "chekbox2";
                i = 0;
                int p = com.ExecuteNonQuery();
               // com.ExecuteNonQuery();
                con.Close();
            }
        }

        else if (CheckBox14.Checked == true)
        {
            if (i != 0)
            {
                con.Open();
                //insert
                SqlCommand com = new SqlCommand("insert into Seat_Status values( @sn, @ss, @uid, @dt, @tid, @mid, @sid)", con);
                com.Parameters.AddWithValue("@sn", "A8");
                com.Parameters.AddWithValue("@ss", "B");
                com.Parameters.AddWithValue("@uid", Session["uid"].ToString());
                com.Parameters.AddWithValue("@dt", Session["date"].ToString());
                com.Parameters.AddWithValue("@tid", Session["theater"].ToString());
                com.Parameters.AddWithValue("@mid", Session["movie_id"].ToString());
                com.Parameters.AddWithValue("@sid", Session["tspan"].ToString());

                // Label5.Text = "chekbox2";
                i = 0;
                int p = com.ExecuteNonQuery();
               // com.ExecuteNonQuery();
                con.Close();
            }
        }

        else if (CheckBox15.Checked == true)
        {
            if (i != 0)
            {
                con.Open();
                //insert
                SqlCommand com = new SqlCommand("insert into Seat_Status values( @sn, @ss, @uid, @dt, @tid, @mid, @sid)", con);
                com.Parameters.AddWithValue("@sn", "A9");
                com.Parameters.AddWithValue("@ss", "B");
                com.Parameters.AddWithValue("@uid", Session["uid"].ToString());
                com.Parameters.AddWithValue("@dt", Session["date"].ToString());
                com.Parameters.AddWithValue("@tid", Session["theater"].ToString());
                com.Parameters.AddWithValue("@mid", Session["movie_id"].ToString());
                com.Parameters.AddWithValue("@sid", Session["tspan"].ToString());

                // Label5.Text = "chekbox2";
                i = 0;
                int p = com.ExecuteNonQuery();
               // com.ExecuteNonQuery();
                con.Close();
            }
        }

        else if (CheckBox16.Checked == true)
        {
            if (i != 0)
            {
                con.Open();
                //insert
                SqlCommand com = new SqlCommand("insert into Seat_Status values( @sn, @ss, @uid, @dt, @tid, @mid, @sid)", con);
                com.Parameters.AddWithValue("@sn", "B7");
                com.Parameters.AddWithValue("@ss", "B");
                com.Parameters.AddWithValue("@uid", Session["uid"].ToString());
                com.Parameters.AddWithValue("@dt", Session["date"].ToString());
                com.Parameters.AddWithValue("@tid", Session["theater"].ToString());
                com.Parameters.AddWithValue("@mid", Session["movie_id"].ToString());
                com.Parameters.AddWithValue("@sid", Session["tspan"].ToString());

                // Label5.Text = "chekbox2";
                i = 0;
                int p = com.ExecuteNonQuery();
               // com.ExecuteNonQuery();
                con.Close();
            }
        }

        else if (CheckBox17.Checked == true)
        {
            if (i != 0)
            {
                con.Open();
                //insert
                SqlCommand com = new SqlCommand("insert into Seat_Status values( @sn, @ss, @uid, @dt, @tid, @mid, @sid)", con);
                com.Parameters.AddWithValue("@sn", "B8");
                com.Parameters.AddWithValue("@ss", "B");
                com.Parameters.AddWithValue("@uid", Session["uid"].ToString());
                com.Parameters.AddWithValue("@dt", Session["date"].ToString());
                com.Parameters.AddWithValue("@tid", Session["theater"].ToString());
                com.Parameters.AddWithValue("@mid", Session["movie_id"].ToString());
                com.Parameters.AddWithValue("@sid", Session["tspan"].ToString());

                // Label5.Text = "chekbox2";
                i = 0;
                int p = com.ExecuteNonQuery();
               // com.ExecuteNonQuery();
                con.Close();
            }
        }

        else if (CheckBox18.Checked == true)
        {
            if (i != 0)
            {
                con.Open();
                //insert
                SqlCommand com = new SqlCommand("insert into Seat_Status values( @sn, @ss, @uid, @dt, @tid, @mid, @sid)", con);
                com.Parameters.AddWithValue("@sn", "B9");
                com.Parameters.AddWithValue("@ss", "B");
                com.Parameters.AddWithValue("@uid", Session["uid"].ToString());
                com.Parameters.AddWithValue("@dt", Session["date"].ToString());
                com.Parameters.AddWithValue("@tid", Session["theater"].ToString());
                com.Parameters.AddWithValue("@mid", Session["movie_id"].ToString());
                com.Parameters.AddWithValue("@sid", Session["tspan"].ToString());

                // Label5.Text = "chekbox2";
                i = 0;
                int p = com.ExecuteNonQuery();
               // com.ExecuteNonQuery();
                con.Close();
            }
        }

        else if (CheckBox19.Checked == true)
        {
            if (i != 0)
            {
                con.Open();
                //insert
                SqlCommand com = new SqlCommand("insert into Seat_Status values( @sn, @ss, @uid, @dt,@tid, @mid, @sid)", con);
                com.Parameters.AddWithValue("@sn", "C1");
                com.Parameters.AddWithValue("@ss", "B");
                com.Parameters.AddWithValue("@uid", Session["uid"].ToString());
                com.Parameters.AddWithValue("@dt", Session["date"].ToString());
                com.Parameters.AddWithValue("@tid", Session["theater"].ToString());
                com.Parameters.AddWithValue("@mid", Session["movie_id"].ToString());
                com.Parameters.AddWithValue("@sid", Session["tspan"].ToString());

                // Label5.Text = "chekbox2";
                i = 0;
                int p = com.ExecuteNonQuery();
               // com.ExecuteNonQuery();
                con.Close();
            }
        }

        else if (CheckBox20.Checked == true)
        {
            if (i != 0)
            {
                con.Open();
                //insert
                SqlCommand com = new SqlCommand("insert into Seat_Status values( @sn, @ss, @uid, @dt, @tid, @mid, @sid)", con);
                com.Parameters.AddWithValue("@sn", "C2");
                com.Parameters.AddWithValue("@ss", "B");
                com.Parameters.AddWithValue("@uid", Session["uid"].ToString());
                com.Parameters.AddWithValue("@dt", Session["date"].ToString());
                com.Parameters.AddWithValue("@tid", Session["theater"].ToString());
                com.Parameters.AddWithValue("@mid", Session["movie_id"].ToString());
                com.Parameters.AddWithValue("@sid", Session["tspan"].ToString());

                // Label5.Text = "chekbox2";
                i = 0;
                int p = com.ExecuteNonQuery();
                //com.ExecuteNonQuery();
                con.Close();
            }
        }

        else if (CheckBox21.Checked == true)
        {
            if (i != 0)
            {
                con.Open();
                //insert
                SqlCommand com = new SqlCommand("insert into Seat_Status values( @sn, @ss, @uid, @dt, @tid, @mid, @sid)", con);
                com.Parameters.AddWithValue("@sn", "C3");
                com.Parameters.AddWithValue("@ss", "B");
                com.Parameters.AddWithValue("@uid", Session["uid"].ToString());
                com.Parameters.AddWithValue("@dt", Session["date"].ToString());
                com.Parameters.AddWithValue("@tid", Session["theater"].ToString());
                com.Parameters.AddWithValue("@mid", Session["movie_id"].ToString());
                com.Parameters.AddWithValue("@sid", Session["tspan"].ToString());

                // Label5.Text = "chekbox2";
                i = 0;
                int p = com.ExecuteNonQuery();
                //com.ExecuteNonQuery();
                con.Close();
            }
        }

        else if (CheckBox22.Checked == true)
        {
            if (i != 0)
            {
                con.Open();
                //insert
                SqlCommand com = new SqlCommand("insert into Seat_Status values( @sn, @ss, @uid, @dt, @tid, @mid, @sid)", con);
                com.Parameters.AddWithValue("@sn", "C4");
                com.Parameters.AddWithValue("@ss", "B");
                com.Parameters.AddWithValue("@uid", Session["uid"].ToString());
                com.Parameters.AddWithValue("@dt", Session["date"].ToString());
                com.Parameters.AddWithValue("@tid", Session["theater"].ToString());
                com.Parameters.AddWithValue("@mid", Session["movie_id"].ToString());
                com.Parameters.AddWithValue("@sid", Session["tspan"].ToString());

                // Label5.Text = "chekbox2";
                i = 0;
                int p = com.ExecuteNonQuery();
                //com.ExecuteNonQuery();
                con.Close();
            }
        }

        else if (CheckBox23.Checked == true)
        {
            if (i != 0)
            {
                con.Open();
                //insert
                SqlCommand com = new SqlCommand("insert into Seat_Status values( @sn, @ss, @uid, @dt, @tid, @mid, @sid)", con);
                com.Parameters.AddWithValue("@sn", "C5");
                com.Parameters.AddWithValue("@ss", "B");
                com.Parameters.AddWithValue("@uid", Session["uid"].ToString());
                com.Parameters.AddWithValue("@dt", Session["date"].ToString());
                com.Parameters.AddWithValue("@tid", Session["theater"].ToString());
                com.Parameters.AddWithValue("@mid", Session["movie_id"].ToString());
                com.Parameters.AddWithValue("@sid", Session["tspan"].ToString());

                // Label5.Text = "chekbox2";
                i = 0;
                int p = com.ExecuteNonQuery();
               // com.ExecuteNonQuery();
                con.Close();
            }
        }

        else if (CheckBox24.Checked == true)
        {
            if (i != 0)
            {
                con.Open();
                //insert
                SqlCommand com = new SqlCommand("insert into Seat_Status values( @sn, @ss, @uid, @dt, @tid, @mid, @sid)", con);
                com.Parameters.AddWithValue("@sn", "C6");
                com.Parameters.AddWithValue("@ss", "B");
                com.Parameters.AddWithValue("@uid", Session["uid"].ToString());
                com.Parameters.AddWithValue("@dt", Session["date"].ToString());
                com.Parameters.AddWithValue("@tid", Session["theater"].ToString());
                com.Parameters.AddWithValue("@mid", Session["movie_id"].ToString());
                com.Parameters.AddWithValue("@sid", Session["tspan"].ToString());

                // Label5.Text = "chekbox2";
                i = 0;
                int p = com.ExecuteNonQuery();
               // com.ExecuteNonQuery();
                con.Close();
            }
        }

        Response.Redirect("Payment.aspx");
    }
}