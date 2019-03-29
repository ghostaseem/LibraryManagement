using System;

using System.Data.SqlClient;

using System.Data;

using System.Collections.Generic;

using System.Linq;

using System.Text.RegularExpressions;

using System.Web;

using System.Web.UI;

using System.Web.UI.WebControls;

public partial class addBooks : System.Web.UI.Page

{

    private string SearchString = "";

    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-NSH33PL\SQLEXPRESS;Initial Catalog=LibraryManagementSystem_GroupWork;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)

    {

    }

    public string ReplaceKeyWords(Match m)

    {

        return ("<span>" + m.Value + "</span>");

    }

    protected void btnClear_Click(object sender, EventArgs e)

    {

        txtSearchCopy.Text = "";

        GridView1.DataBind();

    }

    protected void btnSearch_Click(object sender, EventArgs e)

    {

        SearchString = txtSearchCopy.Text;

    }

    protected void btnReturnedBook_Click(object sender, EventArgs e)

    {

        con.Open();

        SqlCommand cmd = con.CreateCommand();

        cmd.CommandType = CommandType.Text;

        cmd.CommandText = "Update tblLoan set returnDate = getdate() where tblCopies_copyID ='" + txtSearchCopy.Text + "'";

        cmd.ExecuteNonQuery();

        DataTable dt = new DataTable();

        SqlDataAdapter da = new SqlDataAdapter(cmd);

        da.Fill(dt);

        con.Close();





    }

}
