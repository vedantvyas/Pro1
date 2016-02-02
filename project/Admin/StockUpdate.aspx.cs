using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class Admin_OrderUpdate : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["CS"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader reader;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillGrid();
            btnUpdate.Enabled = false;
        }

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "Select * from Product where PID=@PID";
        cmd.Parameters.AddWithValue("@PID", TextBox1.Text);
        cmd.Connection = cn;
        reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            TextBox2.Text = reader["PName"].ToString();
            TextBox3.Text = reader["Price"].ToString();
            TextBox4.Text = reader["Qty_in_stock"].ToString();
            btnUpdate.Enabled = true;
        }
        else
        {
            Response.Write("Product not found");
            btnUpdate.Enabled = false;
        }
        cn.Close();
    }
    public void FillGrid()
    {
        if (cn.State == ConnectionState.Closed)
            cn.Open();
        cmd.CommandText = "Select * from Product";
        cmd.Connection = cn;
        reader = cmd.ExecuteReader();
        GridView1.DataSource = reader;
        GridView1.DataBind();
        cn.Close();

    }
  
  
    
    public void ClearControls()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {

        if (btnSave.Text == "New")
        {

            cn.Open();
            cmd.CommandText = "select max(PID) from Product";
            cmd.Connection = cn;
            string ide = cmd.ExecuteScalar().ToString();
            if (ide == "")
                ide = "1";
            else
            {
                ide = (Convert.ToInt32(ide) + 1).ToString();
            }
            TextBox1.Text = ide;
            TextBox1.ReadOnly = true;
            btnSave.Text = "Save";
        }
        else
        {


            cn.Open();
            // cmd.CommandText = "insert into department values(" + TextBox1.Text + ",'" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
            cmd.CommandText = "insert into Product(PName,Price,Qty_in_stock) values(@PName,@Price,@Qty_in_stock)";
            //cmd.Parameters.AddWithValue("@PID", TextBox1.Text);
            cmd.Parameters.AddWithValue("@PName", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Price", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Qty_in_stock", TextBox4.Text);

            cmd.Connection = cn;
            int Rows_Affected = cmd.ExecuteNonQuery();
            cmd.Parameters.Clear();
            cn.Close();
            if (Rows_Affected == 1)
            {
                Response.Write("Product Inserted Successfully");
                FillGrid();
                ClearControls();
                TextBox1.ReadOnly = false;
                btnSave.Text = "New";
            }
            else
                Response.Write("Not Inserted");




        }


    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "Delete from Product where PID=" + TextBox1.Text;
        cmd.Connection = cn;
        int Rows_Affected = cmd.ExecuteNonQuery();

        cn.Close();
        if (Rows_Affected == 1)
        {
            Response.Write("Records Deleted Successfully");
            FillGrid();
            ClearControls();
        }
        else
            Response.Write("Record Not Found");


    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "Update Product set PName=@PName,Price=@Price,Qty_in_stock=@Qty_in_stock where PID=@PID";
        cmd.Parameters.AddWithValue("@PID", TextBox1.Text);
        cmd.Parameters.AddWithValue("@PName", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Price", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Qty_in_stock", TextBox4.Text);
        cmd.Connection = cn;
        int Rows_Affected = cmd.ExecuteNonQuery();

        cn.Close();
        if (Rows_Affected == 1)
        {
            Response.Write("Records Updated Successfully");
            FillGrid();
            ClearControls();
            btnUpdate.Enabled = false;
        }
        else
            Response.Write("Record Not Found");

    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        ClearControls();
        btnUpdate.Enabled = false;
        TextBox1.ReadOnly = false;
        btnSave.Text = "New";
    }
}