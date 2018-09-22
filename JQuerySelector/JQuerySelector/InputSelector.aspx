<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InputSelector.aspx.cs" Inherits="JQuerySelector.InputSelector" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.4.1.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#btnsubmit').click(function () {

                $('input').each(function () {
                    alert($(this).val());
                });

                //                $(':input').each(function () {
                //                    alert($(this).val())
                //                });


                $('input[type="text"]').each(function () {

                    alert($(this).val());
                });
            });

        });
    </script>
</head>
<body style="font-family:Arial">
    First Name : <input type="text"  />
    <br /><br />
    Last Name : <input type="text"  />
    <br /><br />
    Gender :
    <input type="radio" name="gender" value="Male"/>Male
    <input type="radio" name="gender" value="Female"/>Female
    <br /><br />
    Skills :
    <input type="checkbox" name="skills" 
           value="JavaScript" />JavaScript
    <input type="checkbox" name="skills" 
           value="jQuery" />jQuery
    <input type="checkbox" name="skills" value="C#" />C#
    <br /><br />
    Country:
    <select>
        <option  value="USA">USA</option>
        <option value="India">India</option>
        <option value="UK">UK</option>
    </select>
    <br /><br />
    Summary :
    <br />
    <textarea rows="3" cols="5">
       
    </textarea>
    <br /><br />
    <input type="submit" id="btnsubmit" value="submit" />
</body>
</html>
