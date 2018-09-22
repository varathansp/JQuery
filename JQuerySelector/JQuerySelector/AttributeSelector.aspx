﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AttributeSelector.aspx.cs" Inherits="JQueryPracticeApp.AttributeSelector" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="Scripts/jquery-1.4.1.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            //$('[title]').css('border', '5px solid red');
            //$('div[title]').css('border', '5px solid red');
            //$('[title="div1Title"]').css('border', '5px solid red');
            //$('div[title="div1Title"]').css('border', '5px solid red');

            //$('div[title][style]').css('border', '5px solid black');
            //$('div[title],[style]').css('border', '5px solid black');
            $('div[title="divTitle"][style="background-color:red"]').css('border', '5px solid black');
        });
    </script>
</head>
<body>
     <div title="div1Title">
        DIV 1
    </div>
    <br />
    <div title="div2Title">
        DIV 2
    </div>
    <p title="pTitle">
        This is a paragraph
    </p>
    <span title="div1Title">
        SAPN 1
    </span>
    <br /><br />
    <span>
        SPAN 2
    </span>

    --------------------------------------------------------------------------------

    <div title="divTitle" style="background-color:red">
        Red DIV
    </div>
    <br />
    <div title="divTitle" style="background-color:green">
        Green DIV
    </div>
    <br />
    <div title="divTitle">
        Normal Div
    </div>
    <br />
    <div>
        Normal Div without any attributes
    </div>
</body>
</html>
