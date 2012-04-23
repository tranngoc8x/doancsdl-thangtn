<%@ Page Title="" Language="C#" MasterPageFile="~/MasterUserPage.master" AutoEventWireup="true" CodeFile="ProductTypes.aspx.cs" Inherits="ProductTypes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="ja-moduletable moduletable  clearfix" id="Mod88">
    <h3>
         
        <asp:DataList ID="DataList5" runat="server" DataSourceID="Tieude_NhomSP">
            <ItemTemplate>
                Danh mục :
                <asp:Label ID="TenNSPLabel" runat="server" Text='<%# Eval("TenNSP") %>' />
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="Tieude_NhomSP" runat="server" 
            ConnectionString="<%$ ConnectionStrings:TNTCOMPUTERConnectionString %>" 
            SelectCommand="SanPham_Title_NhomSP" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="MaNSP" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
         
      </h3>
      <div id="vmMainPage">
       <asp:DataList ID="DataList3" runat="server" DataKeyField="MaSP" 
          DataSourceID="Product_Types" RepeatLayout="Flow" 
              SelectedIndex="0" ViewStateMode="Enabled">
           <ItemTemplate>
               <div style="margin-right: 5px; width:98%; float:left;">
	                <div class="browseProductContainer">
			              <h3 class="browseProductTitle">
                              <asp:HyperLink ID="HyperLink1" runat="server" 
                                  NavigateUrl='<%# Eval("MaSP","ProductDetail.aspx?id={0}") %>'><%# Eval("TenSP")%></asp:HyperLink>
                          </h3>
			                <div class="browsePriceContainer">
				                <span class="productPrice">$ <%# Eval("DonGia") %></span>
			                </div>
			                <div class="browseRatingContainer">
				                <span class="contentpagetitle"> Số lượt xem <br /> <%# Eval("Soluot") %></span>
				                <br>
				                
			                </div>
			                <div class="browsePriceContainer">
				                <span class="productPrice">
				                <%#Convert.ToInt32(Eval("Soluong")) > 0 ? "Còn hàng" : "Hết hàng" %>
				                </span>
			                </div>
			                <div class="browseProductImageContainer">
                            <img align="middle" border="0" alt="0 stars" src="Images/Products/<%# Eval("AnhSP") %>">&nbsp;
				             
                            </div>
			                <div class="browseProductDescription">
			                  <div style="margin: 15px 0 5px;"><%# Eval("MoTaSP") %>&nbsp;</div>
			                 <asp:HyperLink ID="HyperLink2" Text="Chi tiết ..." class="readon" NavigateUrl='<%# Eval("MaSP","ProductDetail.aspx?id={0}") %>' runat="server">Chi 
                                tiết ...</asp:HyperLink>
			                </div>
			                <br>
			                <div class="browseAddToCartContainer">
				             <asp:LinkButton ID="btn_AddToCart" OnCommand="btn_AddToCart_Click" CommandArgument='<%# Eval("MaSP") %>' class="addtocart_button_module" ToolTip="Add to Cart" runat="server">Add 
                      to Cart</asp:LinkButton>
			                </div>
	                </div>
                 </div>
           </ItemTemplate>
        </asp:DataList>
        </div>
      <asp:SqlDataSource ID="Product_Types" runat="server" 
          ConnectionString="<%$ ConnectionStrings:TNTCOMPUTERConnectionString %>" 
          SelectCommand="SanPham_DanhSach_NhomSP" 
          SelectCommandType="StoredProcedure">
          <SelectParameters>
              <asp:QueryStringParameter DefaultValue="1" Name="MaNSP" QueryStringField="id" 
                  Type="Int32" />
          </SelectParameters>
      </asp:SqlDataSource>
    </div>
</asp:Content>

