<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MethodChaining.aspx.cs" Inherits="JQueryFunctions.MethodChaining" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.4.1.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('li').css('color', 'blue');
            $('li').slideUp(1000);
            $('li').slideDown(1000);
            $('li').attr('title', 'MY TITLE');
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
