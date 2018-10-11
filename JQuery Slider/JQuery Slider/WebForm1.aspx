<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="JQuery_Slider.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-3.3.1.js" type="text/javascript"></script>
    <script src="jquery-ui.js" type="text/javascript"></script>
    <link href="jquery-ui.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        $(document).ready(function () {
            var outputSpan = $('#spanOutput');
            var sliderDiv = $('#slider');

            sliderDiv.slider({
                range: true,
                min: 18,
                max: 100,
                values: [20, 30],
                slide: function (event, ui) {
                    outputSpan.html(ui.values[0] + ' - ' + ui.values[1] + ' Years');
                },
                stop: function (event, ui) {
                    $('#txtMinAge').val(ui.values[0]);
                    $('#txtMaxAge').val(ui.values[1]);
                }
            });

            outputSpan.html(sliderDiv.slider('values', 0) + ' - '
        + sliderDiv.slider('values', 1) + ' Years');
            $('#txtMinAge').val(sliderDiv.slider('values', 0));
            $('#txtMaxAge').val(sliderDiv.slider('values', 1));
        });</script>
</head>
<body>
    <form id="form1" runat="server">
   Age : <span id="spanOutput"></span>
<br /><br />
<div id="slider"></div>
<br />
<label for="txtMinAge">Minimum Age</label>
<input type="text" id="txtMinAge" />
<br /><br />
<label for="txtMaxAge">Maximum Age</label>
<input type="text" id="txtMaxAge" />

    </form>
</body>
</html>
