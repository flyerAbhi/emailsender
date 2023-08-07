<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="emaileditor.aspx.cs" Inherits="Emailsender.emaileditor" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Email Editor</title>
    <style type="text/css">
        #inner {
            height: 364px;
            width: 634px;
        }
    </style>
</head>
<body>
    <br />
    <br />

    <center>
        <div id="outer" class="outer">
        <div id="inner" class="inner">
            <form id="form1" runat="server">
        <div>
            <textarea id="editor" runat="server" style="height: 300px;"></textarea>
            <asp:Button ID="btnSend" runat="server" Text="Send Email" onClick="btnSend_Click" />
        </div>
    </form>
    <script src="https://cdn.ckeditor.com/4.16.2/standard/ckeditor.js"></script>
    <script>
        // Initialize CKEditor
        CKEDITOR.replace('editor');
    </script>
        </div>
    </div>
    </center>
</body>
</html>
