using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

using System.Data.SqlClient;

using System.Configuration;

public partial class Upadte_profile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conStr"].ConnectionString);

    SqlCommand cmd = new SqlCommand();

    SqlCommand cmd1 = new SqlCommand();
    SqlCommand cmd2 = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
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

            }

            else
            {

                SqlDataReader dr = cmd.ExecuteReader();

                dr.Read();

                txtCreatedfor.Text = dr["createdfor"].ToString();

                txtage.Text = dr["age"].ToString();

                txtannualincome.Text = dr["annual_income"].ToString();

                txtbirthdate.Text = dr["bdate"].ToString();

                txtbirthdate.Text = dr["bdate1"].ToString();

                txtbirthplace.Text = dr["bplace"].ToString();

                txtbirthplace1.Text = dr["bplace1"].ToString();

                txtbirthtime.Text = dr["btime"].ToString();

                rbldrink.SelectedValue = dr["drinking"].ToString();

                txteatinghabits.Text = dr["eating"].ToString();

                txtemailid.Text = dr["email_id2"].ToString();

                txtemployed.Text = dr["emp_as"].ToString();

                txtfield.Text = dr["field"].ToString();

                txtheight.Text = dr["height"].ToString();

                txtmaritalstatus.Text = dr["marital"].ToString();

                txtmobileno.Text = dr["mobile_no"].ToString();

                txtnakshatra.Text = dr["nakshatra"].ToString();

                txtname.Text = dr["name"].ToString();

                txtbirthdate2.Text = dr["bdate1"].ToString();

                txtparentno.Text = dr["parent_no"].ToString();

                txtphysicalstatus.Text = dr["physical"].ToString();

                txtqualification.Text = dr["qualification"].ToString();

                rblsoke.SelectedValue = dr["smokig"].ToString();

                txtweight.Text = dr["weight"].ToString();

                DropDownList1.SelectedValue = dr["zodiac"].ToString();

                address.Text = dr["address"].ToString();

            }



            con.Close();
            cmd.Dispose();

        }
    }



    protected void btnupdate_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();

            cmd2.Connection = con;

            cmd2.CommandType = CommandType.Text;

            cmd2.CommandText = "update usprofile set age='" + txtage.Text + "' ,bdate='" + txtbirthdate.Text + "', bplace='" + txtbirthplace.Text + "', drinking='" + rbldrink.SelectedValue + "', height='" + txtheight.Text + "', weight='" + txtweight.Text + "', physical='" + txtphysicalstatus.Text + "', marital='" + txtmaritalstatus.Text + "', eating='" + txteatinghabits.Text + "', smokig='" + rblsoke.SelectedValue + "', mobile_no='" + txtmobileno.Text + "', parent_no='" + txtparentno.Text + "', email_id2='" + txtemailid.Text + "', address='" + address.Text + "', qualification='" + txtqualification.Text + "', emp_as='" + txtemployed.Text + "', field='" + txtfield.Text + "', annual_income='" + txtannualincome.Text + "', bdate1='" + txtbirthdate2.Text + "', bplace1='" + txtbirthplace1.Text + "', btime='" + txtbirthtime.Text + "', zodiac='" + DropDownList1.SelectedValue + "', nakshatra='" + txtnakshatra.Text + "' where Email_id = '" + Session["Username"].ToString() + "'";

            cmd2.ExecuteNonQuery();


        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        finally
        {
            con.Close();
            cmd2.Dispose();
        }

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("user_profile.aspx", true);
    }
}