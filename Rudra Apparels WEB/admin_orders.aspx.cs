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
    public partial class admin_orders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string admin = Session["admin"].ToString();
            if (admin == "on")
            {

            }
            else
            {
                Response.Redirect("admin_invalid");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int orderno = Convert.ToInt32(Label6.Text);
                string status = DropDownList1.SelectedItem.ToString();
                SqlConnection con = new SqlConnection();
                // con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Coding\DOT NET PROJECTS\Rudra Apparels Web project\Rudra Apparels WEB\Rudra Apparels WEB\App_Data\rudra apparels.mdf;Integrated Security=True";
                con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                string query = String.Format("update orders set status = '{0}' where orderno = {1} ", status, orderno);
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("admin_orders.aspx");
            }
            catch(Exception ex)
            {

            }
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string orderno = GridView1.SelectedRow.Cells[1].Text;
            Label6.Text = orderno;
            string orderid = GridView1.SelectedRow.Cells[2].Text;

            try
            {
                
                SqlConnection con = new SqlConnection();
                //  con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Coding\DOT NET PROJECTS\Rudra Apparels Web project\Rudra Apparels WEB\Rudra Apparels WEB\App_Data\rudra apparels.mdf;Integrated Security=True";
                con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                string query = String.Format("select houseno,area,city,state,pincode from shipment where orderid = {0}",orderid);
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                SqlDataReader r = cmd.ExecuteReader();
                while(r.Read())
                {
                    Label12.Text = r[0].ToString();
                    Label13.Text = r[1].ToString();
                    Label14.Text = r[2].ToString();
                    Label15.Text = r[3].ToString();
                    Label16.Text = r[4].ToString();

                }
                cmd.ExecuteNonQuery();
               
            }
            catch (Exception ex)
            {

            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_home.aspx");
        }
    }
}