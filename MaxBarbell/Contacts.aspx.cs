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

            SmtpClient smtpClient = new SmtpClient();
            smtpClient.EnableSsl = true;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            System.Net.NetworkCredential credentials =
                new System.Net.NetworkCredential("c05027lcb@gmail.com", "P@55word1");
            
            smtpClient.Credentials = credentials; 

            MailMessage msg = new MailMessage("c05027lcb@gmail.com", textEmail.Text);
            msg.Subject = "Name: " + textName.Text + "Messaege:" + textSubject.Text;
            msg.Body = textMessage.Text;
            smtpClient.Send(msg);

            try
            {
                smtpClient.Send(msg);
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