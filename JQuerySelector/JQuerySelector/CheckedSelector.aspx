<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckedSelector.aspx.cs"
    Inherits="JQuerySelector.CheckedSelector" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.4.1.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {

            $('#btnSubmit').click(function () {
                var result = $('input[type="radio"]:checked');

                if (result.length > 0) {
                    $('#divResult').html(result.val() + " is selected");
                }
                else {
                    $('#divResult').html("Nothing is selected");
                }
            });

            $('#Submit1').click(function () {
                var result1 = $('input[type="checkbox"]:checked');

                if (result1.length > 0) {

                    var resultstring = result1.length + " check box(s) selected </br>";
                    result1.each(function () {

                        resultstring += $(this).val() + "</br>";
                    });

                    $('#div1').html(resultstring);
                }
                else {
                    $('#div1').html("Nothing is selected");
                }
            });

        });
    </script>
</head>
<body style="font-family: Arial">
    Gender :
    <input type="radio" name="gender" value="Male">Male
    <input type="radio" name="gender" value="Female">Female
    <br />
    <br />
    <input id="btnSubmit" type="submit" value="submit" />
    <br />
    <br />
    <div id="divResult">
    </div>
    <br />
    <br />
    <br />
    <br />
    Skills :
    <input type="checkbox" name="skills" value="JavaScript" />JavaScript
    <input type="checkbox" name="skills" value="jQuery" />jQuery
    <input type="checkbox" name="skills" value="C#" />C#
    <input type="checkbox" name="skills" value="VB" />VB
    <br />
    <br />
    <input id="Submit1" type="submit" value="submit" />
    <br />
    <br />
    <div id="div1">
    </div>
</body>
</html>
