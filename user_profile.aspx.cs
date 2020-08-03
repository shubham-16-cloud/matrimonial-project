using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

using System.Data.SqlClient;

using System.Configuration;


public partial class user_profile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conStr"].ConnectionString);

    SqlCommand cmd = new SqlCommand();

    SqlCommand cmd1 = new SqlCommand();
    SqlCommand cmd2 = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)

    {

        string blak = "nul";

        con.Open();

        cmd.Connection = con;

        cmd.CommandType = CommandType.Text;

        //  string sename = Session["Username"].ToString();
        cmd.CommandText = "Select * from usprofile where Email_id = '" + Session["Username"].ToString() + "'";

        int i = Convert.ToInt32(cmd.ExecuteScalar());

        if (i == 0)

        {

            cmd1.Connection = con;

            cmd1.CommandType = CommandType.Text;

            cmd1.CommandText = "insert into usprofile (Email_Id) values('" + Session["Username"].ToString() + "')";

            cmd1.ExecuteNonQuery();

            cmd1.Dispose();

            Response.Redirect("Upadte_profile.aspx", true);

        }

        else
        {
            getprofileimg();

            SqlDataReader dr = cmd.ExecuteReader();
            

            dr.Read();

            txtCreatedfor.Text = dr["createdfor"].ToString();

            txtage.Text = dr["age"].ToString();

            txtannualincome.Text = dr["annual_income"].ToString();

            txtbirthdate.Text = dr["bdate"].ToString();

            txtbirthdate1.Text = dr["bdate1"].ToString();

            txtbirthplace.Text = dr["bplace"].ToString();

            txtbirthplace1.Text = dr["bplace1"].ToString();

            txtbirthtime.Text = dr["btime"].ToString();

            txtdrinking.Text = dr["drinking"].ToString();

            txteatinghabits.Text = dr["eating"].ToString();

            txtemailid.Text = dr["email_id2"].ToString();

            txtemployed.Text = dr["emp_as"].ToString();

            txtfield.Text = dr["field"].ToString();

            txtheight.Text = dr["height"].ToString();

            txtmaritalstatus.Text = dr["marital"].ToString();

            txtmobileno.Text = dr["mobile_no"].ToString();

            txtnakshatra.Text = dr["nakshatra"].ToString();

            //txtname.Text = dr["name"].ToString();

            txtparentno.Text = dr["parent_no"].ToString();

            txtphysicalstatus.Text = dr["physical"].ToString();

            txtqualification.Text = dr["qualification"].ToString();

            txtsmoking.Text = dr["smokig"].ToString();

            txtweight.Text = dr["weight"].ToString();

            txtzodiac.Text = dr["zodiac"].ToString();

            address.Text = dr["address"].ToString();
            dr.Close();
        }



        con.Close();
        cmd.Dispose();
        

        txtCreatedfor.Enabled = false;

        txtage.Enabled = false;

        txtannualincome.Enabled = false;

        txtbirthdate.Enabled = false;

        txtbirthdate1.Enabled = false;

        txtbirthplace.Enabled = false;

        txtbirthplace1.Enabled = false;

        txtbirthtime.Enabled = false;

        txtdrinking.Enabled = false;

        txteatinghabits.Enabled = false;

        txtemailid.Enabled = false;

        txtemployed.Enabled = false;

        txtfield.Enabled = false;

        txtheight.Enabled = false;

        txtmaritalstatus.Enabled = false;

        txtmobileno.Enabled = false;

        txtnakshatra.Enabled = false;

        txtname.Enabled = false;

        txtparentno.Enabled = false;

        txtphysicalstatus.Enabled = false;

        txtqualification.Enabled = false;

        txtsmoking.Enabled = false;

        txtweight.Enabled = false;

        txtzodiac.Enabled = false;

        address.Enabled = false;

    }

    protected void getprofileimg()
    {
        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["conStr"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr = null;

        con1.Open();
        cmd = new SqlCommand("SELECT CreatedBy,FirstName,profileimg from UserData where Email='" + Session["Username"].ToString() + "'", con);
        dr = cmd.ExecuteReader();
        dr.Read();
        if (dr.HasRows == true)
        {
            txtCreatedfor.Text = dr["CreatedBy"].ToString();
            txtname.Text = dr["FirstName"].ToString();
            imgprofileimage.ImageUrl = dr["profileimg"].ToString();
        }
        con1.Close();
        cmd.Dispose();
        dr.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Upadte_profile.aspx", true);
    }
}