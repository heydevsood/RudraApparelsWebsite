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
    public partial class admin_catalogue : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
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
            catch
            {

            }
            Label6.Visible = false;
            Label7.Visible = false;
            Label8.Visible = false;
            Label9.Visible = false;
            Label10.Visible = false;
            Label11.Visible = false;
            Label12.Visible = false;
            Label13.Visible = false;
            Label14.Visible = false;
            DropDownList1.Visible = false;
            DropDownList2.Visible = false;
            DropDownList3.Visible = false;
            DropDownList4.Visible = false;
            FileUpload1.Visible = false;
            Button1.Visible = false;
            Button2.Visible = false;
            
            TextBox1.Visible = false;
            TextBox2.Visible = false;
            TextBox3.Visible = false;

           




        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if(RadioButton1.Checked == true)
            {
                Label6.Visible = false;
                Label7.Visible = true;
                Label8.Visible = true;
                Label9.Visible = true;
                Label10.Visible = true;
                Label11.Visible = true;
                Label12.Visible = true;
                Label13.Visible = true;
                Label14.Visible = true;
                DropDownList1.Visible = false;
                DropDownList2.Visible = true;
                DropDownList3.Visible = true;
                DropDownList4.Visible = true;
                FileUpload1.Visible = true;
                Button1.Visible = true;
                
                Button2.Visible = false;
                TextBox1.Visible = true;
                TextBox2.Visible = true;
                TextBox3.Visible = true;
            }
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {

            if(RadioButton2.Checked == true)
            {
                Label6.Visible = true;
                Label7.Visible = true;
                Label8.Visible = true;
                Label9.Visible = true;
                Label10.Visible = true;
                Label11.Visible = true;
                Label12.Visible = true;
                Label13.Visible = true;
                Label14.Visible = false;
                DropDownList1.Visible = true;
                DropDownList2.Visible = true;
                DropDownList3.Visible = true;
                DropDownList4.Visible = true;
                FileUpload1.Visible = true;
                Button1.Visible = false;
                Button2.Visible = true;
                
                TextBox1.Visible = true;
                TextBox2.Visible = true;
                TextBox3.Visible = true;

                Label6.Text = "Select to Edit:";
                Button2.Text = "Edit";

            



            }
        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton3.Checked == true)
            {
                Label6.Visible = true;
                Label7.Visible = false;
                Label8.Visible = false;
                Label9.Visible = false;
                Label10.Visible = false;
                Label11.Visible = false;
                Label12.Visible = false;
                Label13.Visible = false;
                Label14.Visible = false;
                DropDownList1.Visible = true;
                DropDownList2.Visible = false;
                DropDownList3.Visible = false;
                DropDownList4.Visible = false;
                FileUpload1.Visible = false;
                Button1.Visible = false;
                Button2.Visible = true;
                
                TextBox1.Visible = false;
                TextBox2.Visible = false;
                TextBox3.Visible = false;


                Label6.Text = "Select to Delete:";
                Button2.Text = "Delete";

               
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            { 
            string artname = TextBox1.Text;
            string season = DropDownList2.SelectedItem.ToString();
            string artsize = DropDownList3.SelectedItem.ToString();
            string colour = DropDownList4.SelectedItem.ToString();
            double price = Convert.ToDouble(TextBox2.Text);
            if (FileUpload1.HasFile == true)
            {
                FileUpload1.SaveAs(@"D:\Coding\DOT NET PROJECTS\Rudra Apparels Web project\Rudra Apparels WEB\Rudra Apparels WEB\catalogue\product_img\" + FileUpload1.FileName);
            }

            string path = @"catalogue\product_img\" + FileUpload1.FileName;
            string descript = TextBox3.Text;


          
                SqlConnection con = new SqlConnection();
                //  con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Coding\DOT NET PROJECTS\Rudra Apparels Web project\Rudra Apparels WEB\Rudra Apparels WEB\App_Data\rudra apparels.mdf;Integrated Security=True;Connect Timeout=30";
                con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlCommand cmd = new SqlCommand("insert into products(artname,season,artsize,colour,price,img,description) values('"+artname+"','"+season+"','"+artsize+"','"+colour+"',"+price+",'"+path+"','"+descript+"')", con);
                con.Open();

                cmd.ExecuteNonQuery();
                Label15.Text = "Product added";

                con.Close();
                

            }
            catch (Exception ex)
            {
                Label15.Text = ex.Message;
            }



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if(RadioButton2.Checked==true)
            {
                try
                {
                    string name = DropDownList1.SelectedItem.ToString();
                    string artname = TextBox1.Text;
                    string season = DropDownList2.SelectedItem.ToString();
                    string artsize = DropDownList3.SelectedItem.ToString();
                    string colour = DropDownList4.SelectedItem.ToString();
                    double price = Convert.ToDouble(TextBox2.Text);
                    if (FileUpload1.HasFile == true)
                    {
                        FileUpload1.SaveAs(@"D:\Coding\DOT NET PROJECTS\Rudra Apparels Web project\Rudra Apparels WEB\Rudra Apparels WEB\catalogue\product_img\" + FileUpload1.FileName);
                    }

                    string path = @"catalogue\product_img\" + FileUpload1.FileName;
                    string descript = TextBox3.Text;

                

                    SqlConnection con = new SqlConnection();
                    //  con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Coding\DOT NET PROJECTS\Rudra Apparels Web project\Rudra Apparels WEB\Rudra Apparels WEB\App_Data\rudra apparels.mdf;Integrated Security=True;Connect Timeout=30";
                    con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                    SqlCommand cmd = new SqlCommand("update products set artname = '"+artname+"',season = '"+season+"' , artsize = '"+artsize+"' , colour = '"+colour+"', price = "+price+", img = '"+path+"', description = '"+descript+"' where artname = '"+name+"' ", con);
                    con.Open();

                    cmd.ExecuteNonQuery();
                    Label15.Text = "Product updated";

                    con.Close();
                   

                }
                catch (Exception ex)
                {
                    Label15.Text = ex.Message;
                }

            }

            if(RadioButton3.Checked == true)
            {
                try
                {
                    string name = DropDownList1.SelectedItem.ToString();
                   
                    SqlConnection con = new SqlConnection();
                    // con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Coding\DOT NET PROJECTS\Rudra Apparels Web project\Rudra Apparels WEB\Rudra Apparels WEB\App_Data\rudra apparels.mdf;Integrated Security=True;Connect Timeout=30";
                    con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                    SqlCommand cmd = new SqlCommand("delete from products where artname = '"+name+"'", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Label15.Text = "Product deleted";

                    con.Close();
                    

                }
                catch (Exception ex)
                {
                    Label15.Text = ex.Message;
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {

                Label6.Visible = true;
                Label7.Visible = true;
                Label8.Visible = true;
                Label9.Visible = true;
                Label10.Visible = true;
                Label11.Visible = true;
                Label12.Visible = true;
                Label13.Visible = true;
                Label14.Visible = false;
                DropDownList1.Visible = true;
                DropDownList2.Visible = true;
                DropDownList3.Visible = true;
                DropDownList4.Visible = true;
                FileUpload1.Visible = true;
                Button1.Visible = false;
                Button2.Visible = true;
               
                TextBox1.Visible = true;
                TextBox2.Visible = true;
                TextBox3.Visible = true;

                Label6.Text = "Select to Edit:";
                Button2.Text = "Edit";


                string name = DropDownList1.SelectedItem.ToString();

                SqlConnection con = new SqlConnection();
                string query = String.Format("select * from products where artname = '{0}'", name);
                // con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Coding\DOT NET PROJECTS\Rudra Apparels Web project\Rudra Apparels WEB\Rudra Apparels WEB\App_Data\rudra apparels.mdf;Integrated Security=True;Connect Timeout=30";
                con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();

                SqlDataReader r = cmd.ExecuteReader();
                while (r.Read())
                {
                    TextBox1.Text = r[1].ToString();
                    DropDownList2.Text = r[2].ToString();
                    DropDownList3.Text = r[3].ToString();
                    DropDownList4.Text = r[4].ToString();
                    TextBox2.Text = r[5].ToString();
                    TextBox3.Text = r[7].ToString();

                }


                con.Close();
                //RadioButton2.Checked = true;


            }
            catch (Exception ex)
            {
                Label15.Text = ex.Message;
            }
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Response.Redirect("admin_home.aspx");
        }
    }
}