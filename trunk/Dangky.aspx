<%@ Page Language="C#" MasterPageFile="~/MasterUserPage.master" AutoEventWireup="true" CodeFile="Dangky.aspx.cs" Inherits="Dangky" Title="Đăng ký" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="ja-moduletable moduletable  clearfix" id="Mod79">
    <h3>Đăng ký tài khoản</h3>
    <div class="ja-box-ct clearfix">
    <div id="register">
       <p><label>Họ tên</label><asp:TextBox ID="fullname" runat="server"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
               ControlToValidate="fullname" runat="server" 
               ErrorMessage="* Họ tên không được để trống"></asp:RequiredFieldValidator>
       </p> 
        <p><label>Username  </label><asp:TextBox ID="username" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="username" 
                ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="* Username không được để trống"></asp:RequiredFieldValidator>
        </p> 
        <p><label>Password  </label><asp:TextBox TextMode="Password" ID="pass" runat="server"></asp:TextBox>
        
            <asp:RequiredFieldValidator ControlToValidate="pass" ID="RequiredFieldValidator5" runat="server" 
                ErrorMessage="* Mật khẩu không được để trống"></asp:RequiredFieldValidator>
        
        </p> 
        <p><label>ReType password  </label><asp:TextBox ID="repass" TextMode="Password" runat="server"></asp:TextBox>
        
            <asp:RequiredFieldValidator ControlToValidate="repass" 
                ID="RequiredFieldValidator8" runat="server" 
                ErrorMessage="* Nhắc lại mật khẩu" Display="Dynamic"></asp:RequiredFieldValidator>
        
            <asp:CompareValidator ID="CompareValidator1" ControlToValidate="repass" 
                ControlToCompare="pass" runat="server" 
                ErrorMessage="* Mật khẩu không trùng nhau" Display="Dynamic"></asp:CompareValidator>
        </p> 
        <p><label>Email</label><asp:TextBox ID="email" runat="server"></asp:TextBox>
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="email" Display="Dynamic" 
                ErrorMessage="* Email không được để trống"></asp:RequiredFieldValidator>
            
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="email" ErrorMessage="* Email không đúng định dạng" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                Display="Dynamic"></asp:RegularExpressionValidator>
            
        
        </p> 
              
        <p><label>Điện thoại</label><asp:TextBox ID="phone" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                ControlToValidate="phone" runat="server" 
                ErrorMessage="* Điện thoại không được để trống"></asp:RequiredFieldValidator>
        </p> 
        <p><label>Địa chỉ </label><asp:TextBox ID="add" runat="server" TextMode="MultiLine" Columns="50" Rows="8"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                ControlToValidate="add" runat="server" 
                ErrorMessage="* Địa chỉ không được để trống"></asp:RequiredFieldValidator>
            
        </p> <asp:SqlDataSource ID="SqlDangky" runat="server" 
            ConnectionString="<%$ ConnectionStrings:TNTCOMPUTERConnectionString %>" 
            InsertCommand="Resgister" InsertCommandType="StoredProcedure" 
            SelectCommand="SELECT Customers.* FROM Customers">
            <InsertParameters>
                <asp:ControlParameter ControlID="fullname" Name="name" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="add" Name="add" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="phone" Name="phone" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="email" Name="email" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="username" Name="username" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="pass" Name="pass" PropertyName="Text" 
                    Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        <p style="padding-left: 220px;">
            <asp:Button ID="register" runat="server" CssClass="btnregis" Text="Đăng ký" 
                onclick="register_Click" />
            <input type="reset" class="btnregis" value="Làm Lại" />
        </p>
        </div>
        
    </div>
</div>
</asp:Content>

