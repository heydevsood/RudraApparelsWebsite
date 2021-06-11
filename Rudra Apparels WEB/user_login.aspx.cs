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
    public partial class user_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
           
        }

        protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                string username = TextBox1.Text;
                string password = TextBox2.Text;
                string userid = "";
                string name = "";
                SqlConnection con = new SqlConnection();
                string query = String.Format("select userid,name from usertable where username = '{0}' and password = '{1}'",username,password);
                // con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Coding\DOT NET PROJECTS\Rudra Apparels Web project\Rudra Apparels WEB\Rudra Apparels WEB\App_Data\rudra apparels.mdf;Integrated Security=True";
                con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                SqlDataReader r = cmd.ExecuteReader();
                while(r.Read())
                {
                    userid = r[0].ToString();
                    name = r[1].ToString();
                }
                con.Close();

                if (userid != null)

                {
                    Session["user"] = userid;
                    Session["name"] = name;
                    Response.Redirect("user_home.aspx?" + name);

                }

                else
                {
                    Response.Redirect("user_login.aspx");
                }
            }

            catch (Exception ex)
            {

            }

           
        }

        protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
        {

            try
            {
                string name = TextBox3.Text;
                string username = TextBox4.Text;
                string gender = "";
                if(RadioButton1.Checked == true)
                {
                    gender = "MALE";
                }
               else if(RadioButton2.Checked == true)
                {
                    gender = "FEMALE";
                }

                
                string contact = TextBox5.Text;
                string password = TextBox6.Text;
                string question = DropDownList1.SelectedItem.ToString();
                string answer = TextBox8.Text;
                SqlConnection con = new SqlConnection();
                string query = String.Format("insert into usertable(name,username,password,gender,contact,question,answer) values('{0}','{1}','{2}','{3}','{4}','{5}','{6}')",name,username,password,gender,contact,question,answer);
                //  con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Coding\DOT NET PROJECTS\Rudra Apparels Web project\Rudra Apparels WEB\Rudra Apparels WEB\App_Data\rudra apparels.mdf;Integrated Security=True";
                con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("user_login.aspx");


            }

            catch (Exception ex)
            {

            }
        }
    }
}