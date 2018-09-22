﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AttributeValueSelector.aspx.cs" Inherits="JQueryPracticeApp.AttributeValueSelector" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.4.1.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            //$('[title="div1Title"]').css('border', '5px solid red');
            //$('div[title!="div1Title"]').css('border', '5px solid red'); $('div:not([title="div1Title"])').css('border', '5px solid red');
            //$('[title*="Title"]').css('border', '5px solid red');
            //$('[title~="mySpan"]').css('border', '5px solid red');
            //$('[title|="myTitle"]').css('border', '5px solid red');
            //$('[title^="div"]').css('border', '5px solid red');
            $('[title$="Heading"]').css('border', '5px solid red');
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
    <p title="myTitle-paragraph">
        This is a paragraph
    </p>
    <p title="myTitleHeading">
        This is a paragraph
    </p>
    <span title="div1Title">
        SAPN 1
    </span>
    <br /><br />
    <span title="mySpan Heading">
        SPAN 2
    </span>
</body>
</html>
