using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace MaxBarbell.Pages
{
    public partial class Contacts : System.Web.UI.Page
    {

        protected void Page_load(object sender, EventArgs e)
        {
            
        }

        protected void sendMessageClick(object sender, EventArgs e)
        {
            MailMessage cstmsg = new MailMessage(txtEmail.Text, "maxbarbellbn@gmail.com");
            cstmsg.Subject = txtSubject.Text;
            cstmsg.Body = "Name: " + txtName.Text + "<br /><br />Email: " + txtEmail.Text + "<br />" + txtMsg.Text;
         
            cstmsg.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();
            NetworkCred.UserName = "maxbarbellbn@gmail.com";
            NetworkCred.Password = "p@55w0rd";
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;

            try
            {
                smtp.Send(cstmsg);
                litResult.Text =
                    "<p> Mail successfully through SMTP with a secure connection and credentials </p>";
            }
            catch (Exception ex)
            {
                litResult.Text =
                    "<p> Send Failed:" + ex.Message + ":" + ex.InnerException + "</p>";

            }

        }

    }
}