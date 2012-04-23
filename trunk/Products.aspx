<%@ Page Language="C#" MasterPageFile="~/MasterUserPage.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Users_ProductPage" Title="Sản phẩm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
 <div class="ja-moduletable moduletable  clearfix" id="Mod88">
    <h3>Sản phẩm 
    <div id="topnav">  
        <a href="#" class="signin" title="Tìm kiếm nâng cao"><span>More</span></a> 
    </div>
    <form></form>
    <form id="searchproduct" name="search" method="post" action="SearchResult.aspx">
        <input type="text" name="txtkey" id="txtkeyn" />
        <input class="signin_submit" value="Tìm kiếm" tabindex="6" type="submit" />
    </form>
    </h3>
    <div id="search-element">
       
        <form id="signin_menu" name="search-adv" method="post" action="SearchResult.aspx">
         <p>Tìm kiếm nâng cao</p>
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
        
         <asp:ListView ID="ListView1" runat="server" DataKeyNames="MaSP" 
         DataSourceID="SanPham_DanhSach" GroupItemCount="4" >
             <EmptyItemTemplate>
                 <td runat="server" />
                 </EmptyItemTemplate>
                 <ItemTemplate>
                     <td runat="server" style="text-align:center;" align="center">
                        <asp:HyperLink ID="HyperLink3" runat="server" ToolTip='<%# Eval("TenSP") %>' NavigateUrl='<%# Eval("MaSP","ProductDetail.aspx?id={0}") %>'> 
                        <span style="font-weight:bold;"><%# Eval("TenSP") %></span></asp:HyperLink>
                        <br>
                        <asp:HyperLink ID="HyperLink1" runat="server" style="text-align:center;" ToolTip='<%# Eval("TenSP") %>' NavigateUrl='<%# Eval("MaSP","ProductDetail.aspx?id={0}") %>'> 
                            <img src="Images/Products/<%# Eval("AnhSP") %>" alt="<%# Eval("TenSP") %>" border="0" height="120" width="120">
                        </asp:HyperLink>
                       <br>
                        <span class="productPrice">$ <%# Eval("Dongia") %></span>
                        <br>
                       <asp:LinkButton ID="btn_AddToCart" OnCommand="btn_AddToCart_Click" CommandArgument='<%# Eval("MaSP") %>' class="addtocart_button_module" ToolTip="Add to Cart" runat="server">Add 
                      to Cart</asp:LinkButton>

                     </td>
                 </ItemTemplate>
                
                 <EmptyDataTemplate>
                     <table runat="server" width="100%" style="width:100%;">
                         <tr>
                             <td>Không có bản ghi nào !</td>
                         </tr>
                     </table>
                 </EmptyDataTemplate>
                 
                 <LayoutTemplate>
                     <table runat="server" width="100%">
                         <tr runat="server">
                             <td runat="server">
                                 <table ID="groupPlaceholderContainer" runat="server" border="0"  style="width:100%;">
                                     <tr ID="groupPlaceholder" runat="server">
                                     </tr>
                                 </table>
                             </td>
                         </tr>
                         <tr runat="server">
                             <td runat="server" style="" class="pagenation">
                                 <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                     <Fields>
                                         <asp:NextPreviousPagerField ShowFirstPageButton="True" 
                                             ShowNextPageButton="false" ShowPreviousPageButton="True" FirstPageText="Đầu" PreviousPageText="Trước" />
                                         <asp:NumericPagerField />
                                         <asp:NextPreviousPagerField ShowLastPageButton="True" 
                                             ShowNextPageButton="True" ShowPreviousPageButton="False" LastPageText="Cuối" NextPageText="Tiếp" />
                                     </Fields>
                                 </asp:DataPager>
                             </td>
                         </tr>
                     </table>
                 </LayoutTemplate>
                 
                 <GroupTemplate>
                     <tr ID="itemPlaceholderContainer" runat="server">
                         <td ID="itemPlaceholder" runat="server">
                         </td>
                     </tr>
                 </GroupTemplate>
               
         </asp:ListView>
        <asp:SqlDataSource ID="SanPham_DanhSach" runat="server" 
            ConnectionString="<%$ ConnectionStrings:TNTCOMPUTERConnectionString %>" 
            SelectCommand="SanPham_DanhSach" SelectCommandType="StoredProcedure">
        </asp:SqlDataSource>
    </div>
   <script type="text/javascript" src="js/jquery-latest.js"></script>
    <script type="text/javascript">
        $("#topnav").click(function () {
         if ($("#signin_menu").is(":hidden")) {
              $("#searchproduct").hide();
              $("#signin_menu").slideDown("slow");
              $(".signin span").html("Hide");
            } else {
              $("#searchproduct").show();
              $("#signin_menu").slideUp("slow");
              $(".signin span").html("More");
            }
          });
    </script>
 
</asp:Content>

