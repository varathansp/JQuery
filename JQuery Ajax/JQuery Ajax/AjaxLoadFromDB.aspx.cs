using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.OleDb;

namespace JQuery_Ajax
{
   

    public partial class AjaxLoadFromDB : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string HelpTextKey = Request["HelpTextKey"];
            divResult.InnerHtml= GetHelpTextByKey(HelpTextKey);
        }

        private string GetHelpTextByKey(string key)
        {
            string result = "";
            try
            {
                string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

                OleDbConnection connection = new OleDbConnection(cs);
                connection.Open();
                OleDbCommand command = new OleDbCommand("select HelpText from tblHelpText where HelpTextKey='"+key+"'", connection);
                OleDbDataReader reader = command.ExecuteReader();
          
                while (reader.Read())
                {
                    result = reader.GetString(0);
                }
                
                //GridView1.DataSource = reader;
                //GridView1.DataBind();
                
                connection.Close();
                return result;
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
            return result;
        }


    }
}