<%@ Page Language="C#" MasterPageFile="~/MasterUserPage.master" AutoEventWireup="true" CodeFile="ChangeInfor.aspx.cs" Inherits="ChangeInfor" Title="Thay đổi thông tin mua hàng" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="ja-moduletable moduletable  clearfix" id="Mod88">
 <h3>Cập nhật thông tin</h3>
 <div id="register">
       <p><label>Họ tên</label><asp:TextBox ID="fullname" runat="server"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
               ControlToValidate="fullname" runat="server" 
               ErrorMessage="* Họ tên không được để trống"></asp:RequiredFieldValidator>
       </p> 
        <p><label>Username  </label><asp:TextBox ID="username" runat="server" 
                ReadOnly="True"></asp:TextBox>
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
            
        </p>
         <p style="padding-left: 220px;">
            <asp:Button ID="btnchange" runat="server" CssClass="btnregis" Text="Cập nhật" 
                 Height="26px" onclick="btnchange_Click"
                 />
            <input type="reset" class="btnregis" value="Làm Lại" />
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:TNTCOMPUTERConnectionString %>" 
                 SelectCommand="SELECT Customers.* FROM Customers" UpdateCommand="Update_Cus" 
                 UpdateCommandType="StoredProcedure">
                 <UpdateParameters>
                     <asp:SessionParameter Name="id" SessionField="uid" Type="Int32" />
                     <asp:ControlParameter ControlID="fullname" Name="Fullname" PropertyName="Text" 
                         Type="String" />
                     <asp:ControlParameter ControlID="add" Name="Address" PropertyName="Text" 
                         Type="String" />
                     <asp:ControlParameter ControlID="phone" Name="Phone" PropertyName="Text" 
                         Type="String" />
                     <asp:ControlParameter ControlID="email" Name="Email" PropertyName="Text" 
                         Type="String" />
                 </UpdateParameters>
             </asp:SqlDataSource>
        </p>
 </div>
 </div>
</asp:Content>

