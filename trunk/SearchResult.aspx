<%@ Page Language="C#" MasterPageFile="~/MasterUserPage.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Users_ProductPage" Title="Kết quả tìm kiếm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
    
     
    
     
    
     
 <div class="ja-moduletable moduletable  clearfix" id="Mod88">
    <h3>Tìm kiếm</h3>
   <form></form>
     <div id="search-element">
     <form id="signin_menu" style="display:block;" name="search" method="post">
         <p>
            <label for="username">Từ khóa</label>
            <input id="txtkey" name="txtkey" value="" title="txtkey" tabindex="4" type="text" />
            <label for="sptype">Loại sản phẩm</label>
            <select name="type" id="type">
                <option value="" selected>-Chọn loại sản phẩm-</option>
             <asp:DataList ID="DataList5" runat="server" DataKeyField="MaNSP" 
                 DataSourceID="NhomSP_Selectbox" RepeatDirection="Horizontal" 
                 RepeatLayout="Flow" SelectedIndex="1">
                 <ItemTemplate>
                   <option value='<%# Eval("MaNSP") %>'> <%# Eval("TenNSP") %></option>
                 </ItemTemplate>
             </asp:DataList>
              </select>
             <asp:SqlDataSource ID="NhomSP_Selectbox" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:TNTCOMPUTERConnectionString %>" 
                 SelectCommand="NhomSP_DanhSach" SelectCommandType="StoredProcedure">
             </asp:SqlDataSource>
            
          </p>
          
         <p>
            <label for="price">Giá từ&nbsp;&nbsp;&nbsp;&nbsp;</label>
            <input id="pricefrom" name="pricefrom" value="" title="pricefrom" tabindex="4" type="text" />
             <label for="price"> đến</label>
             <input id="priceto" name="priceto" value="" title="priceto" tabindex="4" type="text" />
         </p>
            <input class="signin_submit" value="Tìm kiếm" tabindex="6" type="submit" />
          </form>
          </div>
         
        <hr />
   <h3>Kết quả tìm kiếm</h3>
     <asp:DataList ID="DataList6" runat="server" DataKeyField="MaSP" 
         DataSourceID="SqlDataSource1" RepeatColumns="4" Width="100%">
         <ItemTemplate>
              <asp:HyperLink ID="HyperLink3" runat="server" ToolTip='<%# Eval("TenSP") %>' NavigateUrl='<%# Eval("MaSP","ProductDetail.aspx?id={0}") %>'> 
             <span style="font-weight:bold;"><%# Eval("TenSP") %></span></asp:HyperLink>
			    <br>
                
			    <asp:HyperLink ID="HyperLink1" runat="server" style="text-align:center;" ToolTip='<%# Eval("TenSP") %>' NavigateUrl='<%# Eval("MaSP","ProductDetail.aspx?id={0}") %>'> 
				    <img src="Images/Products/<%# Eval("AnhSP") %>" alt="<%# Eval("TenSP") %>" border="0" height="120" width="120">
			    </asp:HyperLink>
			     <br>
			    <span class="productPrice">$ <%# Eval("Dongia") %></span>
			    <br>
			     <asp:LinkButton ID="btn_AddToCart" OnCommand="btn_AddToCart_Click" CommandArgument='<%# Eval("MaSP") %>' class="addtocart_button_module" ToolTip="Add to Cart" runat="server">Add to Cart</asp:LinkButton>
			    <br />
         </ItemTemplate>
         <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" />
     </asp:DataList>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
         ConnectionString="<%$ ConnectionStrings:TNTCOMPUTERConnectionString %>" 
         SelectCommand="SearchSP" SelectCommandType="StoredProcedure">
         <SelectParameters>
             <asp:FormParameter DefaultValue=" " FormField="txtkey" Name="txtkey" 
                 Type="String" />
             <asp:FormParameter DefaultValue="0" FormField="type" Name="type" Type="Int32" />
             <asp:FormParameter DefaultValue="0" FormField="pricefrom" Name="pricefrom" 
                 Type="Decimal" />
             <asp:FormParameter DefaultValue="0" FormField="priceto" Name="priceto" 
                 Type="Decimal" />
         </SelectParameters>
     </asp:SqlDataSource>
   
    </div>
    
</asp:Content>

