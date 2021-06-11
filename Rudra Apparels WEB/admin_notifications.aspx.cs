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
    public partial class admin_notifications : System.Web.UI.Page
    {
        public List<string> email()
        {
            SqlConnection con = new SqlConnection();
            //con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Coding\DOT NET PROJECTS\Rudra Apparels Web project\Rudra Apparels WEB\Rudra Apparels WEB\App_Data\rudra apparels.mdf;Integrated Security=True;Connect Timeout=30";
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlCommand cmd = new SqlCommand("select username from usertable", con);
            con.Open();
            List<string> emails = new List<string>();
            SqlDataReader r = cmd.ExecuteReader();
            while (r.Read())
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
            Label9.Text = DateTime.Now.ToShortDateString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try {
                string title = TextBox1.Text;
                string notification = TextBox2.Text;
                string date = Label9.Text;
            SqlConnection con = new SqlConnection();
                // con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Coding\DOT NET PROJECTS\Rudra Apparels Web project\Rudra Apparels WEB\Rudra Apparels WEB\App_Data\rudra apparels.mdf;Integrated Security=True;Connect Timeout=30";
                con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlCommand cmd = new SqlCommand("insert into notifications(title,notification,date) values('"+title+"','"+notification+"','"+date+"')", con);
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
                    StreamReader reader = new StreamReader(Server.MapPath("~/notification_html.html"));
                    string readhtml = reader.ReadToEnd();

                    string mailbody = readhtml;
                    mailbody = mailbody.Replace("$$notification$$", title);
                    mailbody = mailbody.Replace("$$detail$$", notification);
                   


                    message.Subject = "New Notification From RUDRA APPARELS";
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