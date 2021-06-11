using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.IO;
using System.Configuration;

namespace Rudra_Apparels_WEB
{
    public partial class admin_offers : System.Web.UI.Page
    {
        public List<string> email()
        {
            SqlConnection con = new SqlConnection();
            // con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Coding\DOT NET PROJECTS\Rudra Apparels Web project\Rudra Apparels WEB\Rudra Apparels WEB\App_Data\rudra apparels.mdf;Integrated Security=True;Connect Timeout=30";
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlCommand cmd = new SqlCommand("select username from usertable", con);
            con.Open();
            List<string> emails = new List<string>();
            SqlDataReader r = cmd.ExecuteReader();
            while(r.Read())
            {
                string s = r[0].ToString();
                emails.Add(s);
            }


            con.Close();
            return emails;
        }
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

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Label10.Text = Calendar1.SelectedDate.ToShortDateString();
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            Label11.Text = Calendar2.SelectedDate.ToShortDateString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string offer = TextBox1.Text;
                string offerdet = TextBox2.Text;
                string sdate = Label10.Text;
                string edate = Label11.Text;


                SqlConnection con = new SqlConnection();
                // con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Coding\DOT NET PROJECTS\Rudra Apparels Web project\Rudra Apparels WEB\Rudra Apparels WEB\App_Data\rudra apparels.mdf;Integrated Security=True;Connect Timeout=30";
                con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlCommand cmd = new SqlCommand("insert into offer(offername,startdate,enddate,offerdetails) values('"+offer+"','"+sdate+"','"+edate+"','"+offerdet+"')", con);
                con.Open();

                cmd.ExecuteNonQuery();
               

                con.Close();

                List<string> mails = new List<string>();
                mails = email();


                foreach (string s in mails)
                {


                    string from = "rudraapparelswebsite@gmail.com";
                    string to = s;


                    MailMessage message = new MailMessage(from, to);
                    StreamReader reader = new StreamReader(Server.MapPath("~/offer_html.html"));
                    string readhtml = reader.ReadToEnd();

                    string mailbody = readhtml;
                    mailbody = mailbody.Replace("$$offer$$", offer);
                    mailbody = mailbody.Replace("$$start$$", sdate);
                    mailbody = mailbody.Replace("$$end$$", edate);
                    mailbody = mailbody.Replace("$$detail$$", offerdet);


                    message.Subject = "New Offer From RUDRA APPARELS";
                    message.Body = mailbody;
                    message.IsBodyHtml = true;
                    SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                    NetworkCredential basic = new NetworkCredential("rudraapparelswebsite@gmail.com", "rudrafactory");
                    client.EnableSsl = true;
                    client.UseDefaultCredentials = false;
                    client.Credentials = basic;
                    try
                    {
                        client.Send(message);
                    }
                    catch (Exception ex)
                    {
                        throw ex;
                    }
                    reader.Dispose();


                }


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