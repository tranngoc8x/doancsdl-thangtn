<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Đăng nhập hệ thống</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!--                       CSS                       -->
    <!-- Reset Stylesheet -->
    <link rel="stylesheet" href="../css/admin/reset.css" type="text/css" media="screen" />
    <!-- Main Stylesheet -->
    <link rel="stylesheet" href="../css/admin/style.css" type="text/css" media="screen" />
    <!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
    <link rel="stylesheet" href="../css/admin/invalid.css" type="text/css" media="screen" />
    <!-- Internet Explorer Fixes Stylesheet -->
    <!--[if lte IE 7]>
			<link rel="stylesheet" href="resources/css/ie.css" type="text/css" media="screen" />
		<![endif]-->
    <!--                       Javascripts                       -->
    <!-- jQuery -->
    <script type="text/javascript" src="../js/admin/jquery-1.js"></script>
    <!-- jQuery Configuration -->
    <script type="text/javascript" src="../js/admin/simpla.js"></script>
    <!-- Facebox jQuery Plugin -->
    <script type="text/javascript" src="../js/admin/facebox.js"></script>
    <!-- jQuery WYSIWYG Plugin -->
    <script type="text/javascript" src="../js/admin/jquery.js"></script>
    <!-- Internet Explorer .png-fix -->
    <!--[if IE 6]>
			<script type="text/javascript" src="../js/admin/DD_belatedPNG_0.0.7a.js"></script>
			<script type="text/javascript">
				DD_belatedPNG.fix('.png_bg, img, li');
			</script>
		<![endif]-->
</head>
<body id="login">
    <form id="form1" runat="server">
    <div id="login-wrapper" class="png_bg">
        <div id="login-top">
            <h1>
                Simpla Admin</h1>
            <!-- Logo (221px width) -->
            <img id="logo" src="../Images/admin/logo.png" alt="Systems Management" />
        </div>
        <!-- End #logn-top -->
        <div id="login-content">
        
                <LayoutTemplate>
                    <div class="notification information png_bg">
                        <div>
                             <asp:Label ID="FailureText" ForeColor="White" runat="server" Text="Nhập tài khoản và mật khẩu đăng nhập !"></asp:Label>
                        </div>
                    </div>
                    <p>
                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="txtUserName">Tài khoản</asp:Label>
                        <asp:TextBox ID="txtUserName" runat="server" class="text-input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="txtUserName"
                            ErrorMessage="Username is required." ToolTip="Username is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                    </p>
                    <div class="clear">
                    </div>
                    <p>
                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="txtPassword">Mật khẩu</asp:Label>
                        <asp:TextBox ID="txtPassword" class="text-input" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="txtPassword"
                            ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                    </p>
                    <div class="clear">
                    </div>
                    <p id="remember-password">
                        <asp:CheckBox ID="RememberMe" runat="server" Text="" />Ghi nhớ
                    </p>
                    <div class="clear">
                    </div>
                    <p>
                        <asp:Button ID="btnLogin" runat="server" BorderStyle="None" BorderWidth="0" CommandName="Login"
                            CssClass="button" Font-Names="Arial" Font-Overline="False" Text="Đăng nhập" ValidationGroup="Login1"
                            OnClick="btnLogin_Click" />
                    </p>
                </LayoutTemplate>
                <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px"
                    Font-Names="Arial" CssClass="button" Font-Overline="False" />
                <TextBoxStyle Font-Size="0.8em" />
                <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
            
        </div>
        <!-- End #login-content -->
    </div>
    <!-- End #login-wrapper -->
    </form>
</body>
</html>
