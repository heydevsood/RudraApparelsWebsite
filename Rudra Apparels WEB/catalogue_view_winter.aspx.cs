using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Rudra_Apparels_WEB
{
    public partial class catalogue_view_winter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string season = Request.QueryString.ToString();


            if (season.Equals("winter"))
            {
                Label6.Text = "The Chill Cheaters";

            }
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}