using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Admin_Default : System.Web.UI.Page
{
   
    
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\USERS\VEDANT\DESKTOP\PROJECT\APP_DATA\STORE.MDF;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    //SqlDataReader reader;
    SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["id"].ToString();
        if (!IsPostBack)
        {
            FillGrid();
        }

    }

    public void FillGrid()
    {
        if (cn.State == ConnectionState.Closed)
            cn.Open();
        cmd.CommandText = "Select * from Vendor";
        cmd.Connection = cn;
        da.SelectCommand = cmd;
        da.Fill(dt);

        // reader = cmd.ExecuteReader();
        //GridView1.DataSource = reader;
        GridView1.DataSource = dt;
        GridView1.DataBind();
        cn.Close();

    }
   
   
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        FillGrid();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        FillGrid();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        cn.Open();
        cmd.CommandText = "delete from Vendor where VID=@VID";
        cmd.Connection = cn;
        cmd.Parameters.AddWithValue("@VID", GridView1.Rows[e.RowIndex].Cells[0].Text);
        cmd.ExecuteNonQuery();
        cn.Close();
        cmd.Parameters.Clear();
        FillGrid();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = GridView1.Rows[e.RowIndex];

        cn.Open();
        cmd.CommandText = "update Vendor set Name=@Name,Address=@Address,Phone=@Phone where VID=@VID";
        cmd.Connection = cn;
        cmd.Parameters.AddWithValue("@VID", row.Cells[0].Text);
        cmd.Parameters.AddWithValue("@Name", ((TextBox)row.Cells[1].Controls[0]).Text);
        cmd.Parameters.AddWithValue("@Address", ((TextBox)row.Cells[2].Controls[0]).Text);
        cmd.Parameters.AddWithValue("@Phone", ((TextBox)row.Cells[3].Controls[0]).Text);
        cmd.ExecuteNonQuery();
        cn.Close();
        cmd.Parameters.Clear();
        GridView1.EditIndex = -1;
        FillGrid();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        FillGrid();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {


    }
    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 0)
            return;
        GridView1.PageSize = Convert.ToInt32(DropDownList1.SelectedValue);
        FillGrid();
    }
}