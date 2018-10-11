using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;

namespace FileUploadWithProgressbar
{
    /// <summary>
    /// Summary description for UploadHandler
    /// </summary>
    public class UploadHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            if (context.Request.Files.Count > 0)
            {
                HttpFileCollection selectedFiles = context.Request.Files;
                for (int i = 0; i < selectedFiles.Count; i++)
                {
                    System.Threading.Thread.Sleep(1000);
                    HttpPostedFile PostedFile = selectedFiles[i];
                    string FileName = context.Server.MapPath("~/Uploads/"
                        + Path.GetFileName(PostedFile.FileName));
                    PostedFile.SaveAs(FileName);
                }
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}