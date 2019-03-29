using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class dashboardManager : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            lblUsername.Text = Session["username"].ToString();
        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }
}