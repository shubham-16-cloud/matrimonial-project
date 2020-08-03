using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Home : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Page.IsPostBack == false)
        {

        }
    }

    protected void btnSignIn_Click(object sender, EventArgs e)
    {
        #region SignIn
        SqlConnection con = new SqlConnection(str);
        SqlCommand cmd1 = new SqlCommand("SP_UserData", con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.AddWithValue("@Option", "Check");
        cmd1.Parameters.AddWithValue("@Email", txtusername.Text);
        con.Open();
        int count = (int)cmd1.ExecuteScalar();
        con.Close();
        if (count >= 1)
        {
            String checkpassword = "select Password from UserData where Email='" + txtusername.Text + "'";
            con.Open();
            SqlCommand passcom = new SqlCommand(checkpassword, con);
            string password = passcom.ExecuteScalar().ToString().Replace(" ", "");
            con.Close();
            if (password == txtpasswordS.Text)
            {
                String type_check = "select Type from UserData where Email='" + txtusername.Text + "'";
                con.Open();
                SqlCommand tc = new SqlCommand(type_check, con);
                string type = tc.ExecuteScalar().ToString();
                con.Close();
                if (type == "Admin")
                {
                    Session["Type"] = "Admin";
                    Session["Username"] = txtusername.Text;
                    Response.Redirect("AdminDashboard.aspx");
                }
                else
                {
                    Session["Type"] = "NonAdmin";
                    Session["Username"] = txtusername.Text;
                    SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["conStr"].ConnectionString);
                    SqlCommand cmd = new SqlCommand();
                    SqlDataReader dr = null;

                    con.Open();
                    cmd = new SqlCommand("SELECT gender,FirstName from UserData where Email='" + txtusername.Text + "'", con);
                    dr = cmd.ExecuteReader();
                    dr.Read();
                    if (dr.HasRows == true)
                    {
                        string gg = dr["Gender"].ToString();
                        Session["gender"] = gg;
                        Session["fn"] = dr["FirstName"].ToString();
                    }
                    con1.Close();
                    Response.Redirect("userdashbord.aspx");
                }

            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "key", "showmessage();", true);
            }
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "key", "showmessage();", true);
            Response.Redirect("Home.aspx");
        }
        #endregion
    }

    protected void BtnSignUp_Click(object sender, EventArgs e)
    {
        #region SignUp
        SqlConnection con = new SqlConnection(str);
        SqlCommand cmd1 = new SqlCommand("SP_UserData", con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.AddWithValue("@Option", "Check");
        cmd1.Parameters.AddWithValue("@Email", txtemail.Text);
        con.Open();
        int count = (int)cmd1.ExecuteScalar();
        con.Close();

        if (count > 0)
        {
            Response.Write("<script>alert('User already exist');</script>");
            txtemail.Text = "";
            txtemail.Focus();

        }
        else
        {
            SqlCommand cmd = new SqlCommand("SP_UserData", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Option", "insert");
            cmd.Parameters.AddWithValue("@CreatedBy", ddlcreateby.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@FirstName", txtfirstname.Text);
            cmd.Parameters.AddWithValue("@MiddleName", txtmiddlename.Text);
            cmd.Parameters.AddWithValue("@LastName", txtsurname.Text);
            cmd.Parameters.AddWithValue("@Gender", rblgender.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@Email", txtemail.Text);
            cmd.Parameters.AddWithValue("@ContactNumber1", txtmobile1.Text);
            cmd.Parameters.AddWithValue("@ContactNumber2", txtmobile2.Text);
            cmd.Parameters.AddWithValue("@BirthDate", txtDate.Text);
            cmd.Parameters.AddWithValue("@Password", txtpassword.Text);
            cmd.Parameters.AddWithValue("@Type", "nonadmin");
            cmd.Parameters.AddWithValue("@profileimg", uploadprofileimg());
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Home.aspx", true);
        }
        #endregion
    }

    private string GenerateRandomOTP(int iOTPLength, string[] saAllowedCharacters)
    {

        string sOTP = String.Empty;

        string sTempChars = String.Empty;

        Random rand = new Random();

        for (int i = 0; i < iOTPLength; i++)
        {

            int p = rand.Next(0, saAllowedCharacters.Length);

            sTempChars = saAllowedCharacters[rand.Next(0, saAllowedCharacters.Length)];

            sOTP += sTempChars;

        }

        return sOTP;

    }

    protected void btnSendOTP_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);
        con.Open();
        String checkuser = "select count(*) from UserData where Email='" + txtUsernameF.Text + "'";
        SqlCommand cmd = new SqlCommand(checkuser, con);
        int count = (int)cmd.ExecuteScalar();
        if (count < 1)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "key", "showmessageF();", true);
        }
        else
        {

            try
            {
                string[] saAllowedCharacters = { "1", "2", "A", "4", "5", "r", "7", "8" };

                string otp = GenerateRandomOTP(8, saAllowedCharacters);
                Session["otp"] = otp;
                Session["new"] = txtUsernameF.Text;
                MailMessage mm = new MailMessage("pmitu2808@gmail.com", txtUsernameF.Text);
                mm.Subject = "Your OTP Code";
                mm.Body = "OTP = " + otp;
                mm.IsBodyHtml = false;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential networkcred = new NetworkCredential("pmitu2808@gmail.com", "pmik1010");
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = networkcred;
                smtp.Port = 587;
                smtp.Send(mm);
            }
            catch
            {
                Response.Redirect("Forgotpassword.aspx");
            }
            finally
            {
                txtUsernameF.Visible = false;
                btnSendOTP.Visible = false;
                txtOTP.Visible = true;
                btnVerify.Visible = true;
                Response.Redirect("Forgot.aspx");
            }
        }
    }

    protected string uploadprofileimg()
    {
        string path = "~/image/userimg/";
        string[] extaion = { ".jpg", ".jpeg", ".png", ".bmp", ".svg" };
        string fullpath = commanfunction.imgupload(fuprofileimg, path, extaion);

        return fullpath;
    }
}