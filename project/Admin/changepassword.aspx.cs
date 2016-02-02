using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_changepassword : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\USERS\VEDANT\DESKTOP\PROJECT\APP_DATA\STORE.MDF;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataReader reader;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonChangePass_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select pass from login where id='" + Session["id"] + "'";
        cmd.Connection = cn;
        string password = cmd.ExecuteScalar().ToString();
        if (password == txtCurrentPassword.Text)
        {
            cmd.CommandText = "update login set pass='" + txtNewPassword.Text + "' where id='" + Session["id"] + "'";
            cmd.ExecuteNonQuery();
            Response.Write("Password changed SuccessfullY");
        }
        else
            Response.Write("Invalid current Password");
        cn.Close();
    }
}