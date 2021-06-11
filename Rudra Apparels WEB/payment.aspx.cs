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
    public partial class payment : System.Web.UI.Page
    {
        public int userid;
        public int orderid;

        public void truncatecart()
        {
            try
            {
                SqlConnection conx = new SqlConnection();
                string queryx = String.Format("truncate table cart");
                // conx.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Coding\DOT NET PROJECTS\Rudra Apparels Web project\Rudra Apparels WEB\Rudra Apparels WEB\App_Data\rudra apparels.mdf;Integrated Security=True";
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


        public void Addorder(int orderid,int userid,int artno,string artname,string colour,string size,string orderdate,int quantity,double cost)
        {
            try
            {
                SqlConnection conx = new SqlConnection();
                string queryx = String.Format("insert into orders(orderid,userid,artno,artname,colour,size,orderdate,quantity,cost) values({0},{1},{2},'{3}','{4}','{5}','{6}',{7},{8})", orderid, userid, artno, artname, colour, size, orderdate, quantity, cost);
                // conx.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Coding\DOT NET PROJECTS\Rudra Apparels Web project\Rudra Apparels WEB\Rudra Apparels WEB\App_Data\rudra apparels.mdf;Integrated Security=True";
                conx.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlCommand cmdx = new SqlCommand(queryx, conx);
                conx.Open();
                cmdx.ExecuteNonQuery();
                conx.Close();

               
               


            }

            catch(Exception ex)
            {
                throw ex;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Label8.Text = Session["totalquant"].ToString();
            Label9.Text = Session["totalcost"].ToString();
            userid = Convert.ToInt32(Session["user"]);

            SqlConnection con = new SqlConnection();
            string query = String.Format("select max(orderid) from shipment where userid = {0}", userid);
            //con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Coding\DOT NET PROJECTS\Rudra Apparels Web project\Rudra Apparels WEB\Rudra Apparels WEB\App_Data\rudra apparels.mdf;Integrated Security=True";
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader r = cmd.ExecuteReader();
            
            while (r.Read())
            {
                orderid = Convert.ToInt32(r[0]);
            }
            con.Close();
            
            Session["orderid"] = orderid;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                // taking order id
                
                
                SqlConnection con1 = new SqlConnection();
               

                
                int artno;
                string artname;
                string colour;
                string size;
                string orderdate;
                double price;
                int quantity;


                string query1 = String.Format("select *  from cart");
                // con1.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Coding\DOT NET PROJECTS\Rudra Apparels Web project\Rudra Apparels WEB\Rudra Apparels WEB\App_Data\rudra apparels.mdf;Integrated Security=True";
                con1.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlCommand cmd1 = new SqlCommand(query1, con1);
                con1.Open();
                SqlDataReader r1 = cmd1.ExecuteReader();
                while (r1.Read())
                {
                    //Insert into orders from cart
                    artno = Convert.ToInt32(r1[0]);
                    artname = r1[1].ToString();
                    colour = r1[2].ToString();
                    size = r1[3].ToString();
                    orderdate = r1[4].ToString();
                    price = Convert.ToDouble(r1[5]);
                    quantity = Convert.ToInt32(r1[6]);




                    Addorder(orderid, userid, artno, artname, colour, size, orderdate, quantity, price);

                }
                con1.Close();

                Session["success"] = "orderplaced";


                truncatecart();



                Response.Redirect("ordersuccess.aspx");


            }
            catch(Exception ex)
            {
                throw ex;
            }




        }
    }
}