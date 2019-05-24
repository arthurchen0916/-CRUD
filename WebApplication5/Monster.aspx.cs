using System;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void lbInsert_Click(Object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["MonsterName"].DefaultValue =
                 ((TextBox)GridView1.FooterRow.FindControl("TextName")).Text;

            SqlDataSource1.InsertParameters["MonsterHP"].DefaultValue =
                  ((TextBox)GridView1.FooterRow.FindControl("TextHP")).Text;

            SqlDataSource1.InsertParameters["MonsterATK"].DefaultValue =
                 ((TextBox)GridView1.FooterRow.FindControl("TextATK")).Text;

            SqlDataSource1.InsertParameters["MonsterExp"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("TextExp")).Text;

            SqlDataSource1.Insert();

        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            SqlDataSource1.UpdateParameters["MonsterHP"].DefaultValue =
                 ((TextBox)GridView1.FooterRow.FindControl("TextHP")).Text;

            SqlDataSource1.UpdateParameters["MonsterATK"].DefaultValue =
                 ((TextBox)GridView1.FooterRow.FindControl("TextATK")).Text;

            SqlDataSource1.UpdateParameters["MonsterExp"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("TextExp")).Text;

            SqlDataSource1.Update();
        }
    }
}