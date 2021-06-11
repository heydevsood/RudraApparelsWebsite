using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Rudra_Apparels_WEB
{
    public partial class admin_wishlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string admin = Session["admin"].ToString();
            if (admin == "on")
            {

            }
            else
            {
                Response.Redirect("admin_invalid");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_home.aspx");
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}