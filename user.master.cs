using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            //lblusername.Text = Session["fn"].ToString();
        }
    }

    protected void btnSignOff_ServerClick(object sender, EventArgs e)
    {
        Session["Username"] = null;
        Session["Type"] = null;
        Response.Redirect("Home.aspx");
    }
}
