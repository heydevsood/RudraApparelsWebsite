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
    public partial class forgotpass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        public void password()
        {
            try
            {
                string username = TextBox1.Text;

                string pass = "";

                SqlConnection con = new SqlConnection();
                string query = String.Format("select password from usertable where username = '{0}'", username);
                //con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Coding\DOT NET PROJECTS\Rudra Apparels Web project\Rudra Apparels WEB\Rudra Apparels WEB\App_Data\rudra apparels.mdf;Integrated Security=True";
                con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                SqlDataReader r = cmd.ExecuteReader();
                while (r.Read())
                {
                    pass = r[0].ToString();



                }
                con.Close();
                TextBox3.Text = pass;
            }
            catch (Exception ex)
            {

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

           
            try
            {
                string username = TextBox1.Text;
                string answer = "";
                
               
                SqlConnection con = new SqlConnection();
                string query = String.Format("select answer from usertable where username = '{0}'", username);
                // con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Coding\DOT NET PROJECTS\Rudra Apparels Web project\Rudra Apparels WEB\Rudra Apparels WEB\App_Data\rudra apparels.mdf;Integrated Security=True";
                con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                SqlDataReader r = cmd.ExecuteReader();
                while (r.Read())
                {
                   
                    answer = r[0].ToString();

                   
                }
                con.Close();
                
                string check = TextBox2.Text;

                if (check.Equals(answer))
                {
                    password();

                    
                }

                
            }

            catch (Exception ex)
            {

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                string username = TextBox1.Text;

                string question = "";

                SqlConnection con = new SqlConnection();
                string query = String.Format("select question from usertable where username = '{0}'", username);
                // con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Coding\DOT NET PROJECTS\Rudra Apparels Web project\Rudra Apparels WEB\Rudra Apparels WEB\App_Data\rudra apparels.mdf;Integrated Security=True";
                con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                SqlDataReader r = cmd.ExecuteReader();
                while (r.Read())
                {
                    question = r[0].ToString();



                }
                con.Close();
                Label11.Text = question;
            }
            catch(Exception ex)
            {

            }


            }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("user_login.aspx");
        }
    }
}