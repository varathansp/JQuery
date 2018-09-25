using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;

namespace JSON
{
    public partial class JSONstringToNETobject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string JSONstring = "[{\"firstName\":\"Wayne\",\"lastName\":\"Rooney\",\"gender\":\"Male\",\"salary\":50000},{\"firstName\":\"Garath\",\"lastName\":\"Bale\",\"gender\":\"Male\",\"salary\":40000}] ";
            JavaScriptSerializer javaScriptSerializer = new JavaScriptSerializer();
           List<Employee> ListEmployee= (List<Employee>)javaScriptSerializer.Deserialize(JSONstring, typeof(List<Employee>));

           foreach (Employee employee in ListEmployee)
           {
               Response.Write("First Name = " + employee.firstName + "</br>");
               Response.Write("Last Name = " + employee.lastName + "</br>");
               Response.Write("Gender = " + employee.gender + "</br>");
               Response.Write("Salary = " + employee.salary + "</br></br>");
           }
        }
    }
}