<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuPage.aspx.cs" Inherits="JqueryMenuWidget.MenuPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <script src="jquery-3.3.1.js" type="text/javascript"></script>
    <script src="jquery-ui.js" type="text/javascript"></script>
    <link href="jquery-ui.min.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        $(document).ready(function () {
            $('#menu').menu({
                icons: { submenu: 'ui-icon-circle-arrow-e' },
                //disabled: true
                select: function (event, ui) {
                    alert(ui.item.text());
                }
            });
        });
    </script>
    <style type="text/css">
    .ui-menu {
        width: 150px;
    }
</style>
</head>
<body>
   <ul id="menu">
    <li>USA
        <ul>
            <li>Virginia</li>
            <li>Maryland</li>
        </ul>
    </li>
    <li>India
        <ul>
            <li>AP</li>
            <li class="ui-state-disabled">MP</li>
            <li>Karnataka
            <ul>
                <li>Bangalore</li>
                <li>Mangalore</li>
                <li>Mysore</li>
            </ul>
            </li>
        </ul>
    </li>
    <li>UK</li>
    <li>Australia</li>
</ul>
</body>
</html>
