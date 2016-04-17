using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Madhav_Classes
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Send_Click(object sender, EventArgs e)
        {

            MailMessage mailmessage = new MailMessage("sender@gmail.com", "receiver@gmail.com");
            mailmessage.Subject = Subject.Text;
            mailmessage.Body = "Name: " + FirstName.Text + "<br /><br />Email: " + Email.Text + "<br />" + Message.Text;
            //if (FileUpload1.HasFile)
            //{
            //    string FileName = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
            //    mailmessage.Attachments.Add(new Attachment(FileUpload1.PostedFile.InputStream, FileName));
            //}
            mailmessage.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();
            NetworkCred.UserName = "sender@gmail.com";
            NetworkCred.Password = "xxxxx";
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.Send(mailmessage);
        }
    }
}