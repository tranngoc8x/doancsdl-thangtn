<%@ Page Language="C#" MasterPageFile="~/MasterUserPage.master" AutoEventWireup="true" CodeFile="Dangky.aspx.cs" Inherits="Dangky" Title="Đăng ký" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="ja-moduletable moduletable  clearfix" id="Mod79">
    <h3>Giỏ hàng của bạn</h3>
    <div class="ja-box-ct clearfix">
       <p><asp:TextBox ID="username" runat="server"></asp:TextBox></p> 
        <p><asp:TextBox ID="fullname" runat="server"></asp:TextBox></p> 
        <p><asp:TextBox ID="pass" runat="server"></asp:TextBox></p> 
        <p><asp:TextBox ID="email" runat="server"></asp:TextBox></p> 
        <p><asp:TextBox ID="phone" runat="server"></asp:TextBox></p> 
        <p><asp:TextBox ID="add" runat="server"></asp:TextBox></p> 
    </div>
</div>
</asp:Content>

