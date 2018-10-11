<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="JQuery_Datepicker.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script src="jquery-3.3.1.js" type="text/javascript"></script>
    <script src="jquery-ui.js" type="text/javascript"></script>
    <link href="jquery-ui.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        $(document).ready(function () {
            $('#TextBox1').datepicker({
            appendText:'dd/mm/yyyy',
            showOn:'both',
            buttonText:'Calendar',
            dateFormat:'dd/mm/yy',
            numberOfMonths: 2,
            changeMonth: true,
            changeYear:true,
            minDate:new Date(2010,1,1),
            maxDate: new Date(2020, 1, 1)

            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Date of Birth: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </div>
    </form>
</body>
</html>
