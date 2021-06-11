using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Rudra_Apparels_WEB
{
    public partial class user_orderview : System.Web.UI.Page
    {
        int userid;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label6.Text = Session["user"].ToString();
            userid = Convert.ToInt32(Label6.Text);
        }

        protected void HiddenField1_ValueChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("user_home.aspx");
        }
    }
}