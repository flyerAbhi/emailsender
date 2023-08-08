<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Emailsender.register" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/7526d84ed2.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="css/style.css"  />
    <title>Register</title>
</head>
    <body>
        <header>
            <section class="nav-item">
                <nav>
                    <span>
                        <a href="#"><i class="fa-solid fa-house-chimney-user"></i>Home</a>
                        <a href="#">About</a>
                        <a href="#">Blog</a>
                    </span>
                    <span>
                        <a href="#"><i class="fa-solid fa-arrow-right-from-bracket"></i></a>
                        <a href="#"><i class="fa-regular fa-user"></i></a>
                    </span>
                </nav>
            </section>
        </header>
            <main>
                <form id="register" runat="server">
                    <section class="register-container">
                        <div class="register-form">
                            <table>
                                <tr>
                                    <th colspan="3">
                                        Register Form
                                    </th>
                                </tr>
                                <tr>
                                    <td>
                                        <label>Username</label>
                                    </td>
                                    <td>
                                        :
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtUsername" runat="server" ValidateRequestMode="Enabled" Width="206px" placeholder="Enter Username...."></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>Mobile : </label>
                                    </td>
                                    <td>
                                        :
                                    </td>
                                    <td>
                                        <asp:TextBox ID="contact" runat="server" TextMode="Phone" Width="206px" placeholder="Enter Contact Number...."></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>Password</label>
                                    </td>
                                    <td>
                                        :
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="206px"  placeholder="Enter Password...."></asp:TextBox>
                                         <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>Confirm Password</label>
                                    </td>
                                    <td>
                                        :
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtcpassword" runat="server" TextMode="Password" Width="206px" placeholder="Re-enter Password...."></asp:TextBox>
                                         <asp:Label ID="Label2" runat="server" Text="" ForeColor="Red"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Gender
                                    </td>
                                    <td>
                                        :
                                    </td>
                                    <td>
                                        <asp:RadioButtonList ID="Gender" runat="server" Width="206px">
                                                  <asp:ListItem Value="M">Male</asp:ListItem>
                                                  <asp:ListItem Value="F">Female</asp:ListItem>
                                            </asp:RadioButtonList>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:Button ID="btnLogin" runat="server" Text="Register" OnClick="btnRegister_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        Already have account?..<a href="login.aspx">Sign in</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </section>
                </form>
            </main>
    </body>
</html>
