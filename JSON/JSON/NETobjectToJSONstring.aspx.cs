using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;

namespace JSON
{
	public partial class NETobjectToJSONstring : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            Employee employee1 = new Employee
            {
                firstName = "Wayne",
                lastName = "Rooney",
                gender = "Male",
                salary = 50000
            };

            Employee employee2 = new Employee
            {
                firstName = "Garath",
                lastName = "Bale",
                gender = "Male",
                salary = 40000
            };

            List<Employee> listEmployee = new List<Employee>();
            listEmployee.Add(employee1);
            listEmployee.Add(employee2);

            JavaScriptSerializer javaScriptSerializer = new JavaScriptSerializer();
            string JSONstring= javaScriptSerializer.Serialize(listEmployee);
            Response.Write(JSONstring);
		}
	}
}