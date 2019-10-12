using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class admin1 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Ticket_House.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            get_all();
        }
    }
    public void get_all()
    {
        con.Open();
        SqlCommand q = new SqlCommand("select * from Admin", con);
        SqlDataAdapter da = new SqlDataAdapter(q);
        DataSet ds = new DataSet();
        da.Fill(ds, "t1");
        con.Close();
         DataList1.DataSource = ds;
        DataList1.DataBind();
    }


    protected void delete(object source, DataListCommandEventArgs e)
    {
        int ind = e.Item.ItemIndex;

        int id = Convert.ToInt32(((Label)DataList1.Items[ind].FindControl("Label26")).Text);


        con.Open();
        SqlCommand q = new SqlCommand("delete from Admin where Id = @id", con);
        q.Parameters.AddWithValue("@id", id);
        int ex = q.ExecuteNonQuery();
        con.Close();


        if (ex == 1)
        {
            Response.Write("<script>alert('Your data is successfully deleted')</script>");
            get_all();
        }
    }

    protected void edit(object source, DataListCommandEventArgs e)
    {
        DataList1.EditItemIndex = e.Item.ItemIndex;
        get_all();
    }

    protected void update(object source, DataListCommandEventArgs e)
    {
        int ind = e.Item.ItemIndex;

        int id = Convert.ToInt32(((TextBox)DataList1.Items[ind].FindControl("TextBox12")).Text);
        String City_Name = ((TextBox)DataList1.Items[ind].FindControl("TextBox13")).Text;
        String Theatre_Name = ((TextBox)DataList1.Items[ind].FindControl("TextBox14")).Text;
        String Time_Span = ((TextBox)DataList1.Items[ind].FindControl("TextBox15")).Text;
        String Movie_Name = ((TextBox)DataList1.Items[ind].FindControl("TextBox16")).Text;
        String Image = ((TextBox)DataList1.Items[ind].FindControl("TextBox17")).Text;
        String Medium = ((TextBox)DataList1.Items[ind].FindControl("TextBox18")).Text;
        String IsLiveOrNot = ((TextBox)DataList1.Items[ind].FindControl("TextBox19")).Text;
        String Movie_Description = ((TextBox)DataList1.Items[ind].FindControl("TextBox20")).Text;
        String Date_Starting = ((TextBox)DataList1.Items[ind].FindControl("TextBox21")).Text;
        String Date_Ending = ((TextBox)DataList1.Items[ind].FindControl("TextBox22")).Text;
        String Cost = ((TextBox)DataList1.Items[ind].FindControl("TextBox23")).Text;

        con.Open();
        SqlCommand q = new SqlCommand("update Admin set City_Name = @nm1, Theatre_Name = @nm2, Time_Span = @tsp, Movie_Name = @nm3, Image= @img, Medium = @med, IsLiveOrNot = @live, Movie_Description = @des, Date_Starting = @start, Date_Ending= @end, Cost_Rs = @rs where Id = @id", con);
        q.Parameters.AddWithValue("@id", id);
        q.Parameters.AddWithValue("@nm1", City_Name);
        q.Parameters.AddWithValue("@nm2", Theatre_Name);
        q.Parameters.AddWithValue("@tsp", Time_Span);
        q.Parameters.AddWithValue("@nm3", Movie_Name);
        q.Parameters.AddWithValue("@img", Image);
        q.Parameters.AddWithValue("@med", Medium);
        q.Parameters.AddWithValue("@live", IsLiveOrNot);
        q.Parameters.AddWithValue("@des", Movie_Description);
        q.Parameters.AddWithValue("@start", Date_Starting);
        q.Parameters.AddWithValue("@end", Date_Ending);
        q.Parameters.AddWithValue("@rs", Cost);

        int ex = q.ExecuteNonQuery();
        con.Close();

        if (ex == 1)
        {
            Response.Write("<script>alert('Your data is successfully updated')</script>");
            DataList1.EditItemIndex = -1;
            get_all();
        }
        else
        {
            Response.Write("<script>alert('You can not change the ID')</script>");
        }
    }
    protected void cancel(object source, DataListCommandEventArgs e)
    {
        DataList1.EditItemIndex = -1;
        get_all();
    }
   
}