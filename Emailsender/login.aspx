<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Emailsender.login" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/7526d84ed2.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="css/style.css"  />
    <title>Login</title>
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
        <form id="login" runat="server">
    
            <section class="login-container">
                
                <div class="login-form">
                     
                    <center class="imgcontainer">
                        <img class="avatar" src="img/img_avatar2.png" alt="avatar img"  />
                        <br />
                    <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </center>
                    <p>
                    <label><b>Username : </b></label>
                        <asp:TextBox ID="txtUsername" runat="server" Width="302px" Height="21px"></asp:TextBox>
                    </p>
                     <p>
                    <label><b>Password : </b></label>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="303px" Height="16px"></asp:TextBox>
                    </p>
                    <p>
                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                    </p>
                    <a href="register.aspx">Forget Password</a>&nbsp; |&nbsp; <a href="register.aspx">Create your Account</a>
                </div>

            </section>
        </form>
    </main>
    
</body>
</html>