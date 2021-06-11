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
    public partial class edit_user : System.Web.UI.Page
    {
        string check;
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                int userid = Convert.ToInt32(Session["user"]);
                SqlConnection con = new SqlConnection();
                string query = String.Format("select password from usertable where userid = {0}", userid);

                // con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Coding\DOT NET PROJECTS\Rudra Apparels Web project\Rudra Apparels WEB\Rudra Apparels WEB\App_Data\rudra apparels.mdf;Integrated Security=True";
                con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                SqlDataReader r = cmd.ExecuteReader();
                while (r.Read())
                {
                    check = r[0].ToString();
                }
                con.Close();

                TextBox7.Text = check;
            }
            catch(Exception ex)
            {

            }

            Label6.Visible = false;
            Label7.Visible = false;
            Label8.Visible = false;
            Label9.Visible = false;
            Label10.Visible = false;
            Label11.Visible = false;
            TextBox7.Visible = false;
            TextBox1.Visible = false;
            TextBox2.Visible = false;
            TextBox3.Visible = false;
            TextBox4.Visible = false;
            TextBox5.Visible = false;
            TextBox6.Visible = false;
            Button1.Visible = false;
            Button2.Visible = false;



        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if(RadioButton1.Checked  == true)
            {
                Label6.Visible = true;
                Label7.Visible = true;
                Label8.Visible = true;
                Label9.Visible = false;
                Label10.Visible = false;
                Label11.Visible = false;

                TextBox1.Visible = true;
                TextBox2.Visible = true;
                TextBox3.Visible = true;
                TextBox4.Visible = false;
                TextBox5.Visible = false;
                TextBox6.Visible = false;
                Button1.Visible = false;
                Button2.Visible = true;

                int userid = Convert.ToInt32(Session["user"]);

                try
                {
                    SqlConnection con = new SqlConnection();
                    string query = String.Format("select *  from usertable where userid = {0}",userid);
                    // con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Coding\DOT NET PROJECTS\Rudra Apparels Web project\Rudra Apparels WEB\Rudra Apparels WEB\App_Data\rudra apparels.mdf;Integrated Security=True";
                    con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                    SqlCommand cmd = new SqlCommand(query, con);
                    con.Open();
                    SqlDataReader r = cmd.ExecuteReader();
                    while (r.Read())
                    {
                        TextBox1.Text = r["name"].ToString();
                        TextBox2.Text = r["contact"].ToString();
                        TextBox3.Text = r["username"].ToString();
                    }
                    con.Close();

                }
                catch (Exception ex)
                {

                }



            }
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton2.Checked == true)
            {
                Label6.Visible = false;
                Label7.Visible = false;
                Label8.Visible = false;
                Label9.Visible = true;
                Label10.Visible = true;
                Label11.Visible = true;

                TextBox1.Visible = false;
                TextBox2.Visible = false;
                TextBox3.Visible = false;
                TextBox4.Visible = true;
                TextBox5.Visible =true;
                TextBox6.Visible = true;
                Button1.Visible = true;
                Button2.Visible = false;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int userid = Convert.ToInt32(Session["user"]);

            try
            {
                SqlConnection con = new SqlConnection();
                string query = String.Format("update usertable set name = '{0}' , contact = '{1}', username = '{2}' where userid = {3}",TextBox1.Text,TextBox2.Text,TextBox3.Text,userid );
                // con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Coding\DOT NET PROJECTS\Rudra Apparels Web project\Rudra Apparels WEB\Rudra Apparels WEB\App_Data\rudra apparels.mdf;Integrated Security=True";
                con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

            }
            catch (Exception ex)
            {

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int userid = Convert.ToInt32(Session["user"]);

            string oldpass = TextBox4.Text;
           

            try
            {
                if(oldpass.Equals(check))
                {
                    
                    try
                    {
                        SqlConnection con1 = new SqlConnection();
                        string query1 = String.Format("update usertable set password = '{0}' where userid = {1}", TextBox5.Text, userid);
                        // con1.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Coding\DOT NET PROJECTS\Rudra Apparels Web project\Rudra Apparels WEB\Rudra Apparels WEB\App_Data\rudra apparels.mdf;Integrated Security=True";
                        con1.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                        SqlCommand cmd1 = new SqlCommand(query1, con1);
                        con1.Open();
                        cmd1.ExecuteNonQuery();
                        con1.Close();
                        TextBox4.Text = TextBox5.Text;

                    }
                    catch (Exception ex)
                    {

                    }
                }
                

                       

            }
            catch (Exception ex)
            {

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("user_home.aspx");
        }
    }
}