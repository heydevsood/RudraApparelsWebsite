using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Rudra_Apparels_WEB
{
    public partial class catalogue_view : System.Web.UI.Page
    {
           
        protected void Page_Load(object sender, EventArgs e)
        {
            string season = Request.QueryString.ToString();
            
           
            if (season.Equals("summer"))
            {
                Label6.Text = "The Summer Sleeves";
              
            }
           
            
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}