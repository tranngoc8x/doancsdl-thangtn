<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewsDetail.aspx.cs" Inherits="Admin_NewsDetail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>News</title>
</head>
<body>
    <form id="form1" runat="server">
  <div id="messages">
    
       <asp:DataList ID="DataList1" runat="server" DataKeyField="MaTin" 
           DataSourceID="DetailNews" RepeatDirection="Horizontal" RepeatLayout="Flow">
           <ItemTemplate>
              
               <h3><%# Eval("Tieude") %></h3>
               <p style="text-align:justify"><span style="float: left; margin: 0 10px 10px 0;"><img src="../Images/News/<%# Eval("Anh")%>" /></span> <%# Eval("Tomtat")%></p>
               <p style="text-align:justify"><%# Eval("Noidung")%></p>
             
           </ItemTemplate>
       </asp:DataList>
    <asp:SqlDataSource ID="DetailNews" runat="server" 
        ConnectionString="<%$ ConnectionStrings:TNTCOMPUTERConnectionString %>" 
        SelectCommand="TinTuc_Chitiet" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
