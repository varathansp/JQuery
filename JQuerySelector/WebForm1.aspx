<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="JQueryPracticeApp.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.4.1.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {

            $('#button1').click(function () {

                alert("Alert from Jquery function");
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <input type="button" id="button1" value="click" />
    </div>
    </form>
</body>
</html>
