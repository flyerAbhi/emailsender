<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Emailsender.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title></title>
    </head>
    <body>
        <form id="register" runat="server">
            <div>
                <h2>Register Form</h2>
                <p>
                    <label>Username : </label>
                    <asp:TextBox ID="txtUsername" runat="server" ValidateRequestMode="Enabled"></asp:TextBox>
                </p>
                <p>
                    <label>Password : </label>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </p>
                <p>
                    <label>Confirm Password : </label>
                    <asp:TextBox ID="txtcPassword" runat="server" TextMode="Password"></asp:TextBox>
                </p>
                <p>
                    <label>Mobile : </label>
                    <asp:TextBox ID="contact" runat="server" TextMode="Password"></asp:TextBox>
                </p>
                <p>
                    Gender : <asp:RadioButtonList ID="Gender" runat="server">
                                  <asp:ListItem Value="M">Male</asp:ListItem>
                                  <asp:ListItem Value="F">Female</asp:ListItem>
                            </asp:RadioButtonList>
                </p>
            
                <p>
                    <asp:Button ID="btnLogin" runat="server" Text="Register" OnClick="btnRegister_Click" />
                </p>
                <a href="login.aspx">Sign in</a>
                <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
            </div>
        </form>
    </body>
</html>
