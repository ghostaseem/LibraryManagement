using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addBooks : System.Web.UI.Page
{
    private string SearchString = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string ReplaceKeyWords(Match m)

    {

        return ("<span>" + m.Value + "</span>");

    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtSearchMember.Text = "";
        GridView1.DataBind();
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        SearchString = txtSearchMember.Text;
    }
}