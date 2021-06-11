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
    public partial class feedback_user : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label11.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int userid = Convert.ToInt32(Session["user"]);
                string date = DateTime.Now.ToShortDateString();
                string fname = TextBox2.Text;
                string lname = TextBox3.Text;
                string email = TextBox4.Text;
                string rating = RadioButtonList1.SelectedItem.ToString();
                string details = TextBox1.Text;
                SqlConnection con = new SqlConnection();
                // con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Coding\DOT NET PROJECTS\Rudra Apparels Web project\Rudra Apparels WEB\Rudra Apparels WEB\App_Data\rudra apparels.mdf;Integrated Security=True";
                con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                string query = string.Format("insert into feedback(userid,firstname,lastname,email,details,rating,feeddate) values({0},'{1}','{2}','{3}','{4}','{5}','{6}')", userid, fname, lname, email, details, rating, date);
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Label11.Visible = true;
            }
            catch(Exception ex)
            {
                
            }

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("user_home.aspx");
        }
    }
}