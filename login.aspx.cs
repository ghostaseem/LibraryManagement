using System;
using System.Data.SqlClient;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
    

{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-NSH33PL\SQLEXPRESS;Initial Catalog=LibraryManagementSystem_GroupWork;Integrated Security=True");
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSignIn_Click(object sender, EventArgs e)
    {
      

    }

    protected void btnSignIn_Click1(object sender, EventArgs e)
    {
        i = 0;
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from tblUsers where userType='" + dropDownListUser.Text + "' and username='" + txtUserName.Text + "' and password COLLATE LATIN1_general_CS_AS='" + txtPassword.Text + "'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        i = Convert.ToInt32(dt.Rows.Count.ToString());

        if (txtUserName.Text == "")
        {
            lblMessage.Text = "Please enter the username";
        }

        else if (txtPassword.Text == "")
        {
            lblMessage.Text = "Please enter the password";
        }

        else if (i == 1 && dropDownListUser.SelectedItem.Text == "Manager")
        {
            Session["username"] = txtUserName.Text;
            Response.Redirect("dashboardManager.aspx");
        }
        else if (i == 1 && dropDownListUser.SelectedItem.Text == "Assistant")
        {
            Response.Redirect("dashboardAssistant.aspx");
        }
        else
        {
            lblMessage.Text = "You have entered invalid username or password";
        }
        con.Close();

    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        Response.Redirect("searchBook.aspx");
    }
}