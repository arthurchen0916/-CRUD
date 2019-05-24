using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;

namespace WebApplication5
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblErrorMessage.Visible = false;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using(SqlConnection sqlCon = new SqlConnection(@"Data Source=C-PC;initial Catalog=Member;Integrated Security =True;User ID=sa;Password=147147166;"))
            {
                sqlCon.Open();
                string query = "SELECT COUNT(1) FROM Member WHERE Account=@Account AND Password=@Password";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@Account", TxtAccount.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Password", TxtPassword.Text.Trim());
                int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
                if (count == 1)
                {
                    Session["Account"] = TxtAccount.Text.Trim();
                    Response.Redirect("Dasboard.aspx");
                }
                else { lblErrorMessage.Visible = true; }
               
            }
        }
    }
}