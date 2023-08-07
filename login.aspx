<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Emailsender.login" %>

<!DOCTYPE html>
<html>
<head>
    <title>Login Form</title>
    <link rel="stylesheet" type="text/css" href="css/style.css"  />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <center><h2>Login Form</h2></center>
            <p>
                <label>Username:</label>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </p>
            <p>
                <label>Password:</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </p>
            
            <p>
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            </p>
            <a href="register.aspx">Forget Password</a> | 
            <a href="register.aspx">Create your Account</a>
            <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Red"></asp:Label>

        </div>
    </form>
</body>
</html>
