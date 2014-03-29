using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.IO;

namespace WebApplication2
{
    public partial class _Default : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
                MsgSent.Visible = false;
        }



        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            if (upload.PostedFile != null)
            {
                int contentLength = upload.PostedFile.ContentLength;
                string contentType = upload.PostedFile.ContentType;
                string fileName = upload.PostedFile.FileName;
            }
            Stream fs = upload.PostedFile.InputStream;

            if (fs.Length > 2000000)
                return;
            //upload.PostedFile.SaveAs(@"c:\test.tmp");


            Control c = this.FindControl("TextArea1");
            System.Web.UI.HtmlControls.HtmlTextArea mail = (System.Web.UI.HtmlControls.HtmlTextArea)(this.FindControl("TextArea1"));

            var fromAddress = new MailAddress("sebastien.sprockeels@gmail.com", "Michael");
            var toAddress = new MailAddress("sebastien.sprockeels@gmail.com", "Seb");
            const string fromPassword = "444719444719";
            string subject = this.name.Value;



            string body = "Message from: " + this.email.Value + "\n\n" + this.mail.Text;

            var smtp = new SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                UseDefaultCredentials = false,
                Credentials = new NetworkCredential(fromAddress.Address, fromPassword)
            };
            using (var message = new MailMessage(fromAddress, toAddress)
            {
                Subject = subject,
                Body = body,

            })
            {
                if (!String.IsNullOrEmpty(upload.Value))
                {
                    Attachment attach = new Attachment(fs, Path.GetFileName(upload.PostedFile.FileName));
                    message.Attachments.Add(attach);
                }
                smtp.Send(message);
                MsgSent.Visible = true;
            }
        }
    }
}