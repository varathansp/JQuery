﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StringToArray.aspx.cs" Inherits="JSON.StringToObject" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <script src="Scripts/jquery-1.4.1.js" type="text/javascript"></script>
    <script type="text/javascript">

        $(document).ready(function () {

            JSONstring = '[{ "firstname": "varathan", "lastname": "suyambu", "salary": 5000 }, { "firstname": "Paul", "lastname": "Pogba", "salary": 5000}]';

            //            var result = "";
            //            result += "First Name : " + employeeJSON.firstname + "</br>";
            //            result += "Last Name : " + employeeJSON.lastname + "</br>";
            //            result += "Salary : " + employeeJSON.salary;

            //$('#divResult').html(result);
            //$('#divResult').html(employeesJSON[0].firstname);
            //$('#divResult').html(employeesJSON[1].lastname);
            var result = "";
            var employeesJson = JSON.parse(JSONstring);
            $.each(employeesJson, function (i, item) {
                result += "Element = " + i + "</br>";
                result += "First Name = " + item.firstname + "</br>";
                result += "Last Name = " + item.lastname + "</br>";
                result += "Salary = " + item.salary + "</br></br></br>";


            });

            $('#divResult').html(result);
        });
       
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="divResult">
    
    </div>
    </form>
</body>
</html>
