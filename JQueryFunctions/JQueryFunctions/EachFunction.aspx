<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EachFunction.aspx.cs" Inherits="JQueryFunctions.EachFunction" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.4.1.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {

            $('li').each(function (index, element) {

                if ($(this).text() == "Canada")
                { return false; }
                alert(index + " = " + $(element).text());

            });
        });
    </script>
</head>
<body style="font-family:Arial">
    <ul>
        <li>US</li>
        <li>India</li>
        <li>UK</li>
        <li>Canada</li>
        <li>Australia</li>
    </ul>
</body>
</html>
