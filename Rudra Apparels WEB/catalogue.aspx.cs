using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Rudra_Apparels_WEB
{
    public partial class catalogue : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { 

        }

        protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("catalogue_view_summer.aspx?summer");
        }

        protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("catalogue_view_winter.aspx?winter");
        }
    }
}