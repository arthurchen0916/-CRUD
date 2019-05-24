using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbInsert_Click(object sender , EventArgs e)
        {
            SqlDataSource1.InsertParameters["Account"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextAccount")).Text;
            SqlDataSource1.InsertParameters["Password"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextPassword")).Text;

            SqlDataSource1.Insert();
        }
        
        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting1(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}