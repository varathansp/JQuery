﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IdSelector.aspx.cs" Inherits="JQueryPracticeApp.IdSelector" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.4.1.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#button1').click(function () {

                alert($('#button1'))
            });
            $('#button2').click(function () {

                alert($('#button1')[0])
            });

            $('#button3').css('background-color', 'blue');
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <input type="button" id="button1" value="click1" />
    <input type="button" id="button2" value="click2" />
    <input type="button" id="button3" value="click3" />
    <input type="button" id="button3" value="click3" />
    </div>
    </form>
</body>
</html>
