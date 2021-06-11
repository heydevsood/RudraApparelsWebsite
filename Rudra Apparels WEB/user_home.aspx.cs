using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Rudra_Apparels_WEB
{
    public partial class user_home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label6.Text = Request.QueryString.ToString();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Response.Redirect("user_login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("catalogue.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("user_orderview.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("edit_user.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("wishlist_user.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("offers_user.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("feedback_user.aspx");
        }
    }
}