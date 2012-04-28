<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CusDetail.aspx.cs" Inherits="Admin_CusDetail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chi tiết khách hàng</title>
</head>
<body>
    <form id="form1" runat="server">
   <div id="messages">
    
       <asp:DataList ID="DataList1" runat="server" DataKeyField="CustomerID" 
           DataSourceID="DetailCus" RepeatDirection="Horizontal" RepeatLayout="Flow">
           <ItemTemplate>
              
               <h3>Khách hàng : <%# Eval("Fullname") %></h3>
               <p><strong>Tên đăng nhập : </strong><%# Eval("username")%></p>
               <p><strong>Điện thoại : </strong><%# Eval("Phone")%></p>
               <p><strong>Email : </strong> <%# Eval("Email") %></p>
               <p><strong>Địa chỉ : </strong> <%# Eval("Address") %> </p>
           </ItemTemplate>
       </asp:DataList>
    <asp:SqlDataSource ID="DetailCus" runat="server" 
        ConnectionString="<%$ ConnectionStrings:TNTCOMPUTERConnectionString %>" 
        SelectCommand="A_Cus_Detail" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    </div>
</form>
</body>
</html>
