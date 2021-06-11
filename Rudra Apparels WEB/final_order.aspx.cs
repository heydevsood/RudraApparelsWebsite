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
    public partial class final_order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            string query = String.Format("select sum(quantity),sum(price) from cart");
            // con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Coding\DOT NET PROJECTS\Rudra Apparels Web project\Rudra Apparels WEB\Rudra Apparels WEB\App_Data\rudra apparels.mdf;Integrated Security=True";
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader r = cmd.ExecuteReader();
            while(r.Read())
            {
                Label12.Text = r[0].ToString();
                Label14.Text = r[1].ToString();
            }
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("catalogue.aspx");
        }

       

        protected void Button2_Click(object sender, EventArgs e)
        {
            int userid = Convert.ToInt32(Session["user"].ToString());
            string houseno = TextBox1.Text;
            string area = TextBox2.Text;
            string city = TextBox3.Text;
            string state = TextBox4.Text;
            string pincode = TextBox5.Text;
            SqlConnection con = new SqlConnection();
            string query = String.Format("insert into shipment(userid,houseno,area,city,state,pincode) values({0},'{1}','{2}','{3}','{4}','{5}')",userid,houseno,area,city,state,pincode);
            //con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Coding\DOT NET PROJECTS\Rudra Apparels Web project\Rudra Apparels WEB\Rudra Apparels WEB\App_Data\rudra apparels.mdf;Integrated Security=True";
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Session["totalquant"] = Label12.Text;
            Session["totalcost"] = Label14.Text;
            Response.Redirect("payment.aspx");


           

        }
    }
}