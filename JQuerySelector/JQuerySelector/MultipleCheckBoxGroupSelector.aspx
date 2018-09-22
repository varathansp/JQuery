<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MultipleCheckBoxGroupSelector.aspx.cs" Inherits="JQuerySelector.MultipleCheckBoxGroupSelector" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.4.1.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            
            $('input[name="skills"]').click(function () {
                getCheckedCheckBoxes('skills');
            });
            $('#btnGetSelectedCities').click(function () {

                getCheckedCheckBoxes('cities');
            });
            var getCheckedCheckBoxes = function (groupName) {

                var result1 = $('input[name="' + groupName + '"]:checked');

                if (result1.length > 0) {

                    var resultstring = result1.length + " check box(s) selected </br>";
                    result1.each(function () {

                        resultstring += $(this).val() + "</br>";//to get the text put the text in alable. and use .text()
                    });

                    $('#div' + groupName).html(resultstring);
                }
                else {
                    $('#div' + groupName).html("Nothing is selected");
                }
            };
        });
    </script>
</head>
<body style="font-family:Arial">
    Skills :
    <input type="checkbox" name="skills" value="JavaScript" />JavaScript
    <input type="checkbox" name="skills" value="jQuery" />jQuery
    <input type="checkbox" name="skills" value="C#" />C#
    <input type="checkbox" name="skills" value="VB" />VB
    <br /><br />
    Preferred Cities :
    <input type="checkbox" name="cities" value="NY" />New York
    <input type="checkbox" name="cities" value="ND" />New Delhi
    <input type="checkbox" name="cities" value="LN" />London
    <br /><br />
    <input id="btnGetSelectedSkills" type="submit" value="Get Selected Skills" />
    <input id="btnGetSelectedCities" type="submit" value="Get Selected Cities" />
    <br /><br />
    <div id="divskills">
    </div>
     <div id="divcities">
    </div>
</html>
