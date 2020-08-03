using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;


public partial class userdashbord : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        //    try
        //    {
        //        if (Session["Username"].ToString() == null || Session["Type"].ToString() != "Admin")
        //        {
        //            Response.Redirect("Home.aspx");
        //        }
        //    }
        //    catch (NullReferenceException)
        //    {
        //        Response.Redirect("Home.aspx");
        //    }
        //}
        //if (Page.IsPostBack == false)
        //{
        //    filldataset();
        //}
    }

    //protected void filldataset()
    //{
    //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conStr"].ConnectionString);
    //    SqlCommand cmd = new SqlCommand();
    //    SqlDataAdapter da = new SqlDataAdapter();
    //    DataTable dt = new DataTable();
    //    try
    //    {
    //        con.Open();
    //        //string g = Session["gender"].ToString();
    //        if ("Female" == "Female")
    //        {
    //            cmd = new SqlCommand("SELECT top 5 [FirstName], [MiddleName], [LastName] ,[Gender] FROM [UserData] where Gender='Male' ORDER BY Id DESC", con);
    //        }
    //        else
    //        {
    //            cmd = new SqlCommand("SELECT top 5 [FirstName], [MiddleName], [LastName] ,[Gender] FROM [UserData] where Gender='Female' ORDER BY Id DESC", con);
    //        }

    //        da.SelectCommand = cmd;
    //        da.Fill(dt);
    //        DataList1.DataSource = dt;
    //        DataList1.DataBind();
    //    }
    //    catch (Exception ex)
    //    {
    //        Response.Write(ex.Message);
    //    }
    //    finally
    //    {
    //        con.Close();
    //        cmd.Dispose();
    //        da.Dispose();
    //        dt.Dispose();
    //    }

    //}
}