<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactDetail.aspx.cs" Inherits="Admin_ContactDetail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chi tiết liên hệ</title>
</head>
<body>
    <form id="form1" runat="server">
     <div id="messages">
    
       <asp:DataList ID="DataList1" runat="server" DataKeyField="Contactid" 
           DataSourceID="DetailLH" RepeatDirection="Horizontal" RepeatLayout="Flow">
           <ItemTemplate>
              
               <h3><%# Eval("Names") %></h3>
               <p><strong>Gửi ngày </strong><%# Eval("Ngaygui")%><br />
                <strong>Điện thoại : </strong><%# Eval("Phone")%><br />
                <strong>Email : </strong> <%# Eval("Email") %> <br />
                <strong>Địa chỉ : </strong> <%# Eval("Address") %> <br />
                </p>
                <p><strong>Đã gửi tới website nội dung sau :<br /></strong>
                <%# Eval("Contents") %>
                </p>
           </ItemTemplate>
       </asp:DataList>
    <asp:SqlDataSource ID="DetailLH" runat="server" 
        ConnectionString="<%$ ConnectionStrings:TNTCOMPUTERConnectionString %>" 
        SelectCommand="A_LH_Detail" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
