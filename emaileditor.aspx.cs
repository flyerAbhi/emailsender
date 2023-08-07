using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Emailsender
{
    public partial class emaileditor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSend_Click(object sender, EventArgs e)
        {
            string senderEmail = "your_sender_email@example.com";
            string senderPassword = "your_sender_email_password";
            string recipientEmail = "recipient@example.com";
            string subject = "Email from ASP.NET Email Editor";
            string body = editor.Value; // Get the email content from the CKEditor textarea

            try
            {
                using (SmtpClient smtpClient = new SmtpClient("smtp.example.com", 587))
                {
                    smtpClient.EnableSsl = true;
                    smtpClient.Credentials = new NetworkCredential(senderEmail, senderPassword);

                    using (MailMessage mailMessage = new MailMessage(senderEmail, recipientEmail))
                    {
                        mailMessage.Subject = subject;
                        mailMessage.Body = body;
                        mailMessage.IsBodyHtml = true; // Set to true to interpret the email body as HTML

                        smtpClient.Send(mailMessage);
                        Response.Write("Email sent successfully.");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("Failed to send email: " + ex.Message);
            }
        }
    }
}