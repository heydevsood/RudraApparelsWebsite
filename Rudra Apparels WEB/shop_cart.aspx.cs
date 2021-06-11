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
    public partial class shop_cart : System.Web.UI.Page
    {
        string q;
        protected void Page_Load(object sender, EventArgs e)
        {
             q = Request.QueryString.ToString();
            if (q.StartsWith("delete"))
            {

                int no = Convert.ToInt32(q.Substring(6));

                try
                {
                    SqlConnection con = new SqlConnection();
                    string query = String.Format("delete from cart where artno = {0}",no);
                    // con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Coding\DOT NET PROJECTS\Rudra Apparels Web project\Rudra Apparels WEB\Rudra Apparels WEB\App_Data\rudra apparels.mdf;Integrated Security=True";
                    con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                    SqlCommand cmd = new SqlCommand(query, con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("shop_cart.aspx?"+no);


                }

                catch (Exception ex)
                {

                }

            }

            else
            {

                int artno = Convert.ToInt32(q);
                try
                {
                    SqlConnection con = new SqlConnection();
                    string query = String.Format("select * from products where artno = {0}", artno);
                    // con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Coding\DOT NET PROJECTS\Rudra Apparels Web project\Rudra Apparels WEB\Rudra Apparels WEB\App_Data\rudra apparels.mdf;Integrated Security=True";
                    con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                    SqlCommand cmd = new SqlCommand(query, con);
                    con.Open();
                    SqlDataReader r = cmd.ExecuteReader();
                    while (r.Read())
                    {
                        Label12.Text = r[0].ToString();
                        Label13.Text = r[1].ToString();
                        Label14.Text = r[4].ToString();
                        Label15.Text = r[3].ToString();
                        Label16.Text = r[5].ToString();
                        Image3.ImageUrl = r[6].ToString();

                    }

                    con.Close();

                }

                catch (Exception ex)
                {

                }

            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                int no = Convert.ToInt32(Label12.Text);
                string name = Label13.Text;
                string colour = Label14.Text;
                string size = Label15.Text;
                string orderdate = DateTime.Now.ToShortDateString();
                
                int quant = Convert.ToInt32(TextBox1.Text);
                double price = (Convert.ToDouble(Label16.Text))* quant;
                SqlConnection con = new SqlConnection();
                string query = String.Format("insert into cart values({0},'{1}','{2}','{3}','{4}',{5},{6})",no,name,colour,size,orderdate,price,quant);
                // con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Coding\DOT NET PROJECTS\Rudra Apparels Web project\Rudra Apparels WEB\Rudra Apparels WEB\App_Data\rudra apparels.mdf;Integrated Security=True";
                con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("shop_cart.aspx?" + no);
                

            }

            catch (Exception ex)
            {

            }

        }

      

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("catalogue.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                truncatecart();
                Response.Redirect("user_login.aspx?");
                
            }
            else
            {
                Response.Redirect("final_order.aspx");
            }
        }

        public void truncatecart()
        {
            try
            {
                SqlConnection conx = new SqlConnection();
                string queryx = String.Format("truncate table cart");
                //   conx.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Coding\DOT NET PROJECTS\Rudra Apparels Web project\Rudra Apparels WEB\Rudra Apparels WEB\App_Data\rudra apparels.mdf;Integrated Security=True";
                conx.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlCommand cmdx = new SqlCommand(queryx, conx);
                conx.Open();
                cmdx.ExecuteNonQuery();
                conx.Close();





            }

            catch (Exception ex)
            {
                throw ex;
            }

        }
    }
}