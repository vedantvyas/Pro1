using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;

public partial class main : System.Web.UI.MasterPage
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\USERS\VEDANT\DESKTOP\PROJECT\APP_DATA\STORE.MDF;Integrated Security=True;User Instance=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataReader reader;
    protected void Page_Load(object sender, EventArgs e)
    {
       }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count(*) from login where id='" + username.Text + "' and pass='" + pass.Text + "'";
        cmd.Connection = cn;
        int count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 1)
        {
            FormsAuthentication.RedirectFromLoginPage(username.Text, false);
            Session["id"] = username.Text;
            Response.Redirect("Admin/Invoice.aspx");
        }
        else
           Label1.Text= "Email or password not match";
    }
}
