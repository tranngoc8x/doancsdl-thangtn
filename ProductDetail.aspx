<%@ Page Language="C#" MasterPageFile="~/MasterUserPage.master" AutoEventWireup="true" CodeFile="ProductDetail.aspx.cs" Inherits="Users_ProductDetail" Title="Chi tiết sản phẩm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="ja-moduletable moduletable  clearfix" id="Mod88">
    <h3>Chi tiết sản phẩm   </h3>
        <asp:DataList ID="DataList5" runat="server" DataKeyField="MaSP" 
            DataSourceID="SanphamChitiet">
            <ItemTemplate>
               <table border="0" style="width: 100%;">
                  <tbody>
	                <tr>
	                  <td width="33%" valign="top" class="vm-product-img" rowspan="3">
	                    
	  	                <a rel="lightbox[1]" title="<%# Eval("TenSP") %>" href="">
	  	                <img width="120" height="120" border="0" alt="Microsoft SideWinder" src="Images/Products/<%# Eval("AnhSP") %>"><br>
                          Xem ảnh lớn</a>
                           <br />
		                        <asp:LinkButton ID="btn_AddToCart" OnCommand="btn_AddToCart_Click" CommandArgument='<%# Eval("MaSP") %>' class="addtocart_button_module" ToolTip="Add to Cart" runat="server">Add 
                      to Cart</asp:LinkButton>
                          </td>
	                  <td colspan="2" rowspan="1">
	                  <h1><%# Eval("TenSP") %></h1>
	                  </td>
	                </tr>
	                <tr>
		                <td align="left" width="33%" valign="top">
		                <strong>Giá bán :</strong>      	
		                <span class="productPrice">$ <%# Eval("DonGia") %></span> . <span class="productPrice"> Trạng thái :</span>  <%#Convert.ToInt32(Eval("Soluong")) > 0 ? "<font color='green'>Còn hàng</font>" : "<font color='red'>Hết hàng</font>" %>
		                <br>
		                <font color="red" size="3"><strong>Giảm giá : $ <%# Eval("Giamgia") %></strong></font>
		                </td>
		                <td valign="top"><br></td>
	                </tr>
	                <tr>
	                  <td colspan="2" rowspan="1"><hr>
	  	                <p>
	  	                <%# Eval("MoTaSP") %>
	  	                </p><br>
	  	                <span style="font-style: italic;"></span>
	                  </td>
	                </tr>
	               <tr><td colspan=3>
	               <%# Eval("Chitiet") %>
	               </td></tr>
                </tbody>
                </table>
                
            </ItemTemplate>
        </asp:DataList>
  
        <asp:SqlDataSource ID="SanphamChitiet" runat="server" 
            ConnectionString="<%$ ConnectionStrings:TNTCOMPUTERConnectionString %>" 
            SelectCommand="Sanpham_Chitiet" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="1" Name="MaSP" QueryStringField="id" 
                    Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    
     <br />
     <h3>Sản phẩm cùng loại   </h3>
     <asp:DataList ID="DataList6" runat="server" DataKeyField="MaSP" 
         DataSourceID="SanphamKhac" RepeatColumns="4" RepeatDirection="Horizontal" 
         CellPadding="0" Width="100%">
         <ItemTemplate>            
             <div style=" padding:0; float: left; text-align: center;border-bottom: 1px dotted #ccc;border-right: 0px dotted #ccc; margin:0 auto;">
                 <span style="font-weight:bold;"><%# Eval("TenSP") %></span>
					    <br>
					    <a title=" <%# Eval("TenSP") %>" href="ProductDetail.aspx?id=<%# Eval("MaSP") %>">
						    <img src="Images/Products/<%# Eval("AnhSP") %>" alt="<%# Eval("TenSP") %>" border="0" height="120" width="120">
					    </a>
					  
                  
                    &nbsp;&nbsp;</div>
         </ItemTemplate>
     </asp:DataList>
     <asp:SqlDataSource ID="SanphamKhac" runat="server" 
         ConnectionString="<%$ ConnectionStrings:TNTCOMPUTERConnectionString %>" 
         SelectCommand="SanphamKhac" SelectCommandType="StoredProcedure">
         <SelectParameters>
             <asp:QueryStringParameter DefaultValue="0" Name="id" QueryStringField="id" 
                 Type="Int32" />
         </SelectParameters>
     </asp:SqlDataSource>
    
    </div>
</asp:Content>

