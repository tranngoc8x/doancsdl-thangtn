<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Productdetail.aspx.cs" Inherits="Admin_Productdetail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chi tiết sản phẩm</title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="messages">
    
       <asp:DataList ID="DataList1" runat="server" DataKeyField="MaSP" 
           DataSourceID="DetailProduct" RepeatDirection="Horizontal" RepeatLayout="Flow">
           <ItemTemplate>
              
               <h3><%# Eval("TenSP")%></h3>
               <p><strong>Giá bán : </strong> $<%# Eval("DonGia")%></p>
               <p><strong>Giảm giá : </strong> $<%# Eval("Giamgia")%></p>
               <p><strong>Số lượng tồn kho : </strong> <%# Eval("Soluong")%> sản phẩm</p>
               <p style="text-align:justify"><span style="float: left; margin: 0 10px 10px 0;"><img src="../Images/Products/<%# Eval("AnhSP")%>" /></span> <%# Eval("MoTaSP")%></p>
               <p style="text-align:justify"><%# Eval("Chitiet")%></p>
             
           </ItemTemplate>
       </asp:DataList>
    <asp:SqlDataSource ID="DetailProduct" runat="server" 
        ConnectionString="<%$ ConnectionStrings:TNTCOMPUTERConnectionString %>" 
        SelectCommand="Sanpham_Chitiet" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:QueryStringParameter Name="MaSP" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
