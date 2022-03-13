<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="DocTruyenOnline.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="App_Themes/Theme1/Register.css" />
</head>
<body>
    <form id="form1" runat="server">
        <section class="register">
            <section class="form">
                <h2>Đăng Ký</h2>
                </section>
                    <section class="input-form">
                        <span>Tên Người Dùng</span>
                        <br />
                        <asp:TextBox ID="username" name="username" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" ErrorMessage="Bắt buộc nhập" ForeColor="Red"></asp:RequiredFieldValidator>
                    </section>
                    <section class="input-form">
                        <span>Email</span>
                        <br />
                        <asp:TextBox ID="email" name="email" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" ErrorMessage="Bắt buộc nhập" ForeColor="Red"></asp:RequiredFieldValidator>
                    </section>
                    <section class="input-form">
                        <span>Mật khẩu</span>
                        <br />
                        <asp:TextBox ID="password" name="password" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="password" ErrorMessage="Bắt buộc nhập" ForeColor="Red"></asp:RequiredFieldValidator>
                    </section>
                    <section class="input-form">
                        <span>Xác nhận mật khẩu</span>
                        <br />
                        <asp:TextBox ID="repassword" name="repassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="repassword" ErrorMessage="Bắt buộc nhập" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="repassword" ErrorMessage="Không khớp mật khẩu" ForeColor="Red" Width="183px"></asp:CompareValidator>
                    </section>
                    <section class="input-form">
                        <asp:Button ID="btn_register" runat="server" Text="Đăng Ký" OnClick="btn_register_Click" />
                    </section>
                    <section class="input-form">
                        <p>Bạn Đã Có Tài Khoản? <a href="Login.aspx">Đăng nhập</a></p>
                    </section>
                </form>
            </section>
        </form>
        </section>
    </form>
</body>
</html>
