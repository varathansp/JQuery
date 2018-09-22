<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelectedSelector.aspx.cs" Inherits="JQuerySelector.SelectedSelector" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.4.1.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {

            $('#selectCountries').change(function () {

                var selectedOption = $('#selectCountries option:selected');
                $('#divResult').html('Value = ' + selectedOption.val() + ', Text = ' + selectedOption.text());
            });

            $('#selectCountries2').change(function () {

                var selectedOptions = $('#selectCountries2 option:selected');

                if (selectedOptions.length > 0) {
                    var resultstring = "";
                    selectedOptions.each(function () {

                        resultstring += 'Value = ' + $(this).val() + ', Text = ' + $(this).text() + '</br>';
                    });
                    $('#divResult2').html(resultstring);
                }
                else {
                    $('#divResult2').html('Nothing selected');
                }

            });
        });
    
    </script>
</head>
<body style="font-family:Arial">
    Country:
    <select id="selectCountries">
        <option selected="selected" value="USA">United States</option>
        <option value="IND">India</option>
        <option value="UK">United Kingdom</option>
        <option value="CA">Canada</option>
        <option value="AU">Australia</option>
    </select>
    <br /><br />
    <div id="divResult"></div>

     Country:
    <select id="selectCountries2" multiple="multiple">
        <option  value="USA">United States</option>
        <option value="IND">India</option>
        <option value="UK">United Kingdom</option>
        <option value="CA">Canada</option>
        <option value="AU">Australia</option>
    </select>
    <br /><br />
    <div id="divResult2"></div>
</body>
</html>
