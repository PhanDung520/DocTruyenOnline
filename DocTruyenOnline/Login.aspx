<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DocTruyenOnline.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="App_Themes/Theme1/Login.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="login">
            <section class="form">
                <h2>Đăng Nhập</h2>
                <form action="">
                    <section class="input-form">
                        <span>Tên Người Dùng</span>
                        <asp:TextBox ID="username" name="username"  runat="server" ></asp:TextBox>                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Bắt buộc nhập" ForeColor="Red" ControlToValidate="username"></asp:RequiredFieldValidator>                    
                    </section>
                    <section class="input-form">
                        <span>Mật Khẩu</span>
                        <asp:TextBox ID="password" name="password"  runat="server" TextMode="Password" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Bắt buộc nhập" ForeColor="Red" ControlToValidate="password"></asp:RequiredFieldValidator>
                    </section>
                    <section class="input-form">
                        <asp:Button ID="btn" runat="server" Text="Đăng Nhập" OnClick="Button1_Click" />
                    </section>
                    <section class="input-form">
                        <p>Bạn Chưa Có Tài Khoản? <a href="Register.aspx">Đăng ký</a></p>
                    </section>
                </form>
            </section>      
        </div>
       </form>
</body>
</html>
