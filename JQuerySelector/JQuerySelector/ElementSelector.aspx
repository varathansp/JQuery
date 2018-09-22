<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ElementSelector.aspx.cs" Inherits="JQueryPracticeApp.ElementSelector" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.4.1.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {

            alert('Count of the td element is '+ $('td').length);

//$('tr').css('background-color', 'yellow');

//            alert($('div').length);

            $('table tr').each(function () {
                alert($(this).html());
            });

            $('div a').css('background-color', 'yellow')

            $('tr:even').css('background-color', 'yellow');
            $('tr:odd').css('background-color', 'grey');
            $('#table1 tr:odd').css('background-color', 'grey'); 
        });
    </script>
</head>
<body>
    <table id="table1" style="border:1px solid black; border-collapse:collapse">
        <tr>
            <td>C#</td>
            <td>ASP.NET</td>
            <td>SQL Server</td>
        </tr>
        <tr>
            <td>ADO.NET</td>
            <td>jQuery</td>
            <td>JavaScript</td>
        </tr>
        <tr>
            <td>AJAX</td>
            <td>CSS</td>
            <td>HTML</td>
        </tr>
        <tr>
            <td>VB</td>
            <td>Dot NET</td>
            <td>Visual C++</td>
        </tr>
        <tr>
            <td>Oracle</td>
            <td>Java</td>
            <td>J2EE</td>
        </tr>
    </table>
    <br /><br />
    <div>
        DIV 1
        <br />
        <a href="http://yahoo.com">yahoo</a>
    </div>
    <br /><br />
    <a href="http://google.com">Google</a>
    <br /><br />
    <div>DIV 2</div>
    <br /><br />
    <span>SPAN 1</span>
    <br /><br />
    <div>DIV 3</div>
</body>

</html>
