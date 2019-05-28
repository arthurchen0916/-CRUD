using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Account"] == null)
                Response.Redirect("Login.aspx");
        }

        protected void lbInsert_Click(Object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["ItemName"].DefaultValue =
                 ((TextBox)GridView1.FooterRow.FindControl("TextName")).Text;

            SqlDataSource1.InsertParameters["ItemWeight"].DefaultValue =
                  ((TextBox)GridView1.FooterRow.FindControl("TextWeight")).Text;

           

            SqlDataSource1.Insert();

        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            SqlDataSource1.UpdateParameters["ItemWeight"].DefaultValue =
                 ((TextBox)GridView1.FooterRow.FindControl("TextWeight")).Text;

            SqlDataSource1.Update();
        }

        protected void lkbtnDashboard3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dashboard.aspx");
        }
    }
}