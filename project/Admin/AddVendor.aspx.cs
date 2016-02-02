using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;


public partial class Admin_AddVendor : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    public void clear()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\vedant\Desktop\project\App_data\store.mdf;Integrated Security=True;User Instance=True");
        con.Open();
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        cmd = new SqlCommand("insert into Vendor values('" + TextBox1.Text + "','" + TextBox2.Text + "'," + TextBox3.Text + ")", con);
        cmd.ExecuteNonQuery();
        Label5.Text = "Inserted Successfully.....";
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        clear();
    }
   
}