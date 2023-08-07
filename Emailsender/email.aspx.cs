using System;
using System.Net;
using System.Net.Mail;

namespace Emailsender
{
    public partial class email : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
           
        }
        protected void btnSend_Click(object sender, EventArgs e)
        {

            // Get email details from the form
            string toEmail = txtTo.Text;
            string subject = txtSubject.Text;
            string body = txtBody.Text;

            // Send the email
            SendEmailMessage(toEmail, subject, body);
        }


        private void SendEmailMessage(string toEmail, string subject, string body)
        {
            try
            {
                string from = "bio@rishitomar.in";

                MailMessage message = new MailMessage(from, toEmail, subject, body);
                message.IsBodyHtml = true;

                //<---------------------------------------------------------------------------------------------------------------------------------------------------------------------->


                string server = "smtp.hostinger.com";
                SmtpClient client = new SmtpClient(server, 587);
                client.Host = "smtp.hostinger.com";
                client.Port = 587;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.UseDefaultCredentials = true;
                //client.EnableSsl = true;
                client.Credentials = new NetworkCredential("bio@rishitomar.in", "Rishi@1997");
                client.Credentials = CredentialCache.DefaultNetworkCredentials;


                Response.Write("Email sending Initiated.............!");
                client.Send(message);
                Response.Write("Email sent successfully!");
            }
            catch (Exception ex)
            {
                // Handle any exceptions that occur during email sending
                Response.Write("An error occurred while sending the email: " + ex.Message);
            }
        }
        /*public void sendMail(string toList, string fromlist, string ccList, string subject, string body)
        {
            try
            {
                MailMessage message = new MailMessage();
                SmtpClient smtpClient = new SmtpClient();
                MailAddress fromAddress = new MailAddress(fromlist);
                message.From = fromAddress;
                message.To.Add(toList);
                if (ccList != null && ccList != string.Empty)
                {
                    message.CC.Add(ccList);
                }
                message.Subject = subject;
                message.IsBodyHtml = true;
                message.Body = body;
                smtpClient.Host = "127.0.0.1";
                smtpClient.Port = 587;
                smtpClient.EnableSsl = true;
                smtpClient.UseDefaultCredentials = true;
                smtpClient.Credentials = new System.Net.NetworkCredential(txtfromadd.Text, txtpwd.Text);
                smtpClient.Send(message);
            }
            catch (Exception ex)
            {
                lblmail.Visible = true;
                lblmail.Text = ex.Message.ToString();
            }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //string fromadd = txtfromadd.Text;
            string tocc = "suguna@cavintek.com";
            sendMail(txtToAddress.Text, txtfromadd.Text, tocc, txtSubject.Text, txtContent.Text);
        }
        */
    }
}




/*
 *
*/