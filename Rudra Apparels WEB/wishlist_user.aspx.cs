using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace Rudra_Apparels_WEB
{
    public partial class wishlist_user : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int userid = Convert.ToInt32(Session["user"]);
                string link = TextBox1.Text;
                string pname = TextBox2.Text;
                string idea = TextBox3.Text;
               
                if (FileUpload1.HasFile)
                {
                    FileUpload1.SaveAs(@"D:\Coding\DOT NET PROJECTS\Rudra Apparels Web project\Rudra Apparels WEB\Rudra Apparels WEB\wishlist\" + FileUpload1.FileName);
                }
                string path = @"wishlist\" + FileUpload1.FileName;
                
                SqlConnection con = new SqlConnection();
               // con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Coding\DOT NET PROJECTS\Rudra Apparels Web project\Rudra Apparels WEB\Rudra Apparels WEB\App_Data\rudra apparels.mdf;Integrated Security=True";
               con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                string query = string.Format("insert into wishlist(userid,link,product,img,ideas) values({0},'{1}','{2}','{3}','{4}')",userid,link,pname,path,idea);
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("wishlist_user.aspx");
            }
            catch(Exception ex)
            {
                Label10.Text = ex.Message;
            }
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("user_home.aspx");
        }
    }
}