using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.OleDb;
using System.Web.Script.Serialization;
using System.Xml.Serialization;

namespace JQuery_Ajax
{
    public class HelpText
    {
        public string Key { get; set; }
        public string Text { get; set; }
    }
    public partial class AjaxLoadFromDbJSON : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            Response.ContentType = "text/xml";
            XmlSerializer xmlSerializer = new XmlSerializer(typeof(HelpText));
            xmlSerializer.Serialize(Response.OutputStream,GetHelpTextByKey(Request["HelpTextKey"]));


            //JavaScriptSerializer js = new JavaScriptSerializer();
            //string HelpTextKey = Request["HelpTextKey"];
          
            //string JSONstring = js.Serialize(GetHelpTextByKey(HelpTextKey));
            //Response.Write(JSONstring);
        }

        private HelpText GetHelpTextByKey(string key)
        {
            HelpText helpText = new HelpText();
            try
            {
                string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

                OleDbConnection connection = new OleDbConnection(cs);
                connection.Open();
                OleDbCommand command = new OleDbCommand("select HelpText from tblHelpText where HelpTextKey='" + key + "'", connection);
                OleDbDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    helpText.Text = reader.GetString(0);
                }
                helpText.Key = key;
                //GridView1.DataSource = reader;
                //GridView1.DataBind();

                connection.Close();
                
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
            return helpText;
        }

    }
}