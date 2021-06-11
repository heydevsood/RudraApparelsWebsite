using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Rudra_Apparels_WEB
{
    public partial class admin_home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string admin = Session["admin"].ToString();
            if(admin == "on")
            {

            }
            else
            {
                Response.Redirect("admin_invalid");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_catalogue.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_orders.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_wishlist.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_feedback.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_customers.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_offers.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_notifications.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session["admin"] = "off";
            Response.Redirect("Home.aspx");
            
        }
    }
}