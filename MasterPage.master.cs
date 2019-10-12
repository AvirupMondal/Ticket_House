using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

public partial class MasterPage : System.Web.UI.MasterPage
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Ticket_House.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uname"] != null)
        {
            Label4.Text = Session["uname"].ToString();
        }
        else
        {
            Label4.Text = "User";
        }


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("User_Login.aspx");
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session["med"] = 1;

        Response.Redirect("~/Movies_list.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {

        Session["med"] = 2;

        Response.Redirect("~/Movies_list.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {

        Session["med"] = 3;

        Response.Redirect("~/Movies_list.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["search_item"] = TextBox1.Text;
        Response.Redirect("search.aspx");
    }
}
