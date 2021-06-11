using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

namespace Rudra_Apparels_WEB
{
    public partial class ordersuccess : System.Web.UI.Page
    {
        public string username()
        {
            try
            {
               int userid = Convert.ToInt32(Session["user"]);
                SqlConnection conx = new SqlConnection();
                string queryx = String.Format("select username from usertable where userid = {0} ",userid);
                //  conx.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Coding\DOT NET PROJECTS\Rudra Apparels Web project\Rudra Apparels WEB\Rudra Apparels WEB\App_Data\rudra apparels.mdf;Integrated Security=True";
                conx.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlCommand cmdx = new SqlCommand(queryx, conx);
                conx.Open();
                SqlDataReader r = cmdx.ExecuteReader();
                string user = "";
                while(r.Read())
                {
                    user = r[0].ToString();
                }
                conx.Close();


                return user;


            }

            catch (Exception ex)
            {
                throw ex;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["success"]!=null)
            {


                string from ="rudraapparelswebsite@gmail.com";
                string to = username();
                string name = Session["name"].ToString();
                string quant = Session["totalquant"].ToString();
                string cost = Session["totalcost"].ToString();
                string orderid = Session["orderid"].ToString();
                
                MailMessage message = new MailMessage(from, to);
                StreamReader reader = new StreamReader(Server.MapPath("~/order_success.html"));
                string readhtml = reader.ReadToEnd();
                
                string mailbody = readhtml;
                mailbody = mailbody.Replace("$$Name$$", name);
                mailbody = mailbody.Replace("$$Quantity$$", quant);
                mailbody = mailbody.Replace("$$Cost$$", cost);
                mailbody = mailbody.Replace("$$ID$$", orderid);


                message.Subject = "Mail From RUDRA APPARELS";
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = Session["name"].ToString();
            Response.Redirect("user_home.aspx?" + name);
        }
    }
}