<%@ Page Language="C#" MasterPageFile="~/MasterUserPage.master" AutoEventWireup="true" CodeFile="Dangnhap.aspx.cs" Inherits="Dangnhap" Title="Đăng nhập" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="ja-moduletable moduletable  clearfix" id="Mod79">
    <h3>Đăng nhập</h3>
    <div class="ja-box-ct clearfix">
    <div id="register">
        <div id="notice">
            <asp:Label ID="FailureText" runat="server" Text="Nhập username và password để mua hàng"></asp:Label>
        </div>
        <p><label>Username  </label><asp:TextBox ID="username" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="username" 
                ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="* Username không được để trống"></asp:RequiredFieldValidator>
        </p> 
        <p><label>Password  </label><asp:TextBox TextMode="Password" ID="password" runat="server"></asp:TextBox>
        
            <asp:RequiredFieldValidator ControlToValidate="password" ID="RequiredFieldValidator5" runat="server" 
                ErrorMessage="* Mật khẩu không được để trống"></asp:RequiredFieldValidator>
        </p> 
        <asp:SqlDataSource ID="SqlDangnhap" runat="server">
        </asp:SqlDataSource>
        <p style="padding-left: 220px;">
            <asp:Button ID="login" runat="server" CssClass="btnregis" Text="Đăng nhập" onclick="login_Click" 
                 />
            <input type="reset" class="btnregis" value="Làm Lại" />
        </p>
        </div>
        
    </div>
</div>
</asp:Content>

