using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Forgot : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        txtPassword.Visible = false;
        btnPassword.Visible = false;
    }

    protected void btnCheck_Click(object sender, EventArgs e)
    {
        string sended_OTP = Session["otp"].ToString();
        string entered_OTP = txtOTP.Text;
        if (sended_OTP == entered_OTP)
        {
            txtOTP.Visible = false;
            btnCheck.Visible = false;
            txtPassword.Visible = true;
            btnPassword.Visible = true;
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "key", "OTP_Error();", true);
        }
    }

    protected void btnPassword_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);
        SqlCommand cmd1 = new SqlCommand("SP_UserData", con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.AddWithValue("@Option", "Update");
        cmd1.Parameters.AddWithValue("@Email", Session["new"].ToString());
        cmd1.Parameters.AddWithValue("@Password", txtPassword.Text);
        con.Open();
        cmd1.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, GetType(), "key", "OTP_Success();", true);
    }
}