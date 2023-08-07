<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="email.aspx.cs" Inherits="Emailsender.email" %>


<!DOCTYPE html>
<html>
<head>
    <title>Send Email</title>
    <link rel="stylesheet" type="text/css" href="css/style.css"  />
</head>
<body>
    <center>
        <form runat="server">
        <div>
            <label for="txtTo">To:</label>
            <asp:TextBox ID="txtTo" runat="server"></asp:TextBox>
        </div>
        <div>
            <label for="txtSubject">Subject:</label>
            <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
        </div>
        <div>
            <label for="txtBody">Body:</label>
            <asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine" Rows="5"></asp:TextBox>
        </div>

            <div class="float-btn">

                <div class="float-child">
                  <a href="login.aspx">Back</a>
                </div>
                <div class="float-child">
                  <asp:Button ID="btnSend" runat="server" Text="Send Email" OnClick="btnSend_Click" />
                </div>
  
           </div>

    </form>
    </center>
</body>
</html>
