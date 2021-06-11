using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Rudra_Apparels_WEB
{
    public partial class admin_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
        {
            if(TextBox1.Text=="heydev" && TextBox2.Text == "abcd1234")
            {
                Session["admin"] = "on";
                Response.Redirect("admin_home.aspx");
                
            }
            else
            {
                Label9.Text = "Username or Password Incorrect";
            }
        }
    }
}