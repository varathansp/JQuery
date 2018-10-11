<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileUpload.aspx.cs" Inherits="FileUploadWithProgressbar.FileUpload" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
   
    <script src="jquery-3.3.1.js" type="text/javascript"></script>
  
    <script src="jquery-ui.js" type="text/javascript"></script>
    <link href="jquery-ui.css" rel="stylesheet" type="text/css" />
    
    <script type="text/javascript">
        $(document).ready(function () {
            $("#btnUpload").click(function (event) {
                var files = $("#FileUpload1")[0].files;
                if (files.length > 0) {
                    var formData = new FormData();
                    for (var i = 0; i < files.length; i++) {
                        formData.append(files[i].name, files[i]);
                    }

                    var progressbarLabel = $('#progressBar-label');
                    var progressbarDiv = $('#progressbar');

                    $.ajax({
                        url: 'UploadHandler.ashx',
                        method: 'post',
                        data: formData,
                        contentType: false,
                        processData: false,
                        success: function () {
                            progressbarLabel.text('Complete');
                            progressbarDiv.fadeOut(2000);
                        },
                        error: function (err) {
                            alert(err.statusText);
                        }
                    });

                    progressbarLabel.text('Uploading...');
                    progressbarDiv.progressbar({
                        value: false
                    }).fadeIn(500);
                }
            });
        });
    </script>
</head>
<body style="font-family: Arial">
    <form id="form1" runat="server">
        Select Files :
        <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="true" />
        <br /><br />
        <input type="button" id="btnUpload" value="Upload Files" />
        <br /><br />
        <div style="width: 300px">
            <div id="progressbar" style="position: relative; display: none">
                <span style="position: absolute; left: 35%; top: 20%" id="progressBar-label">
                    Uploading...
                </span>
            </div>
        </div>
    </form>
</body>
</html>