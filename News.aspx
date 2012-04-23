<%@ Page Language="C#" MasterPageFile="~/MasterUserPage.master" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="Users_News" Title="Tin tức" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="ja-moduletable moduletable  clearfix" id="Mod88">
    <h3>Tin tức</h3>
        <div class="left-content">
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="MaTin" 
                DataSourceID="DanhSach_TinTuc">
            <ItemTemplate>
               <div class="newsblock">
	                <div class="title-news">
		                <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# Eval("MaTin","NewsDetail.aspx?id={0}") %>' runat="server" ToolTip='B?m d? xem chi ti?t'><%# Eval("TieuDe") %></asp:HyperLink>
                		
	                </div>
	                <div class="dates-news">Ngày đăng : <%# Eval("Ngaydang") %> </div>
	                <div class="image-news">
		                <asp:HyperLink ID="HyperLink3" NavigateUrl='<%# Eval("MaTin","NewsDetail.aspx?id={0}") %>' runat="server" ToolTip='B?m d? xem chi ti?t'>
			                <img src="Images/News/<%# Eval("Anh")%>" alt="" title=""/>
		                </asp:HyperLink>
	                </div>
	                <p><%# Eval("Tomtat") %></p>
	                <div class="clr"></div>
                </div>
            </ItemTemplate>
             
            <EmptyDataTemplate>
                <span>Không có bản ghi nào !</span>
            </EmptyDataTemplate>
            
            <LayoutTemplate>
                <div ID="itemPlaceholderContainer" runat="server" style="">
                    <span ID="itemPlaceholder" runat="server" />
                </div>
                <div class="pagenation">
                    <asp:DataPager ID="DataPager1" runat="server" PageSize="6">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="True" 
                                ShowNextPageButton="False" ShowPreviousPageButton="True" FirstPageText="Đầu" PreviousPageText="Trước" />
                            <asp:NumericPagerField />
                            <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="True" 
                                ShowNextPageButton="True" ShowPreviousPageButton="False" NextPageText="Tiếp" LastPageText="Cuối" />
                        </Fields>
                    </asp:DataPager>
                </div>
            </LayoutTemplate>
             
        </asp:ListView>
        <asp:SqlDataSource ID="DanhSach_TinTuc" runat="server" 
            ConnectionString="<%$ ConnectionStrings:TNTCOMPUTERConnectionString %>" 
            SelectCommand="TinTuc_DanhSach" SelectCommandType="StoredProcedure">
        </asp:SqlDataSource>
        </div>
        <div class="navigation">
        <h4 style="text-align:center;">Random Products</h4>
            <asp:DataList ID="DataList5" runat="server" DataKeyField="MaSP" 
                DataSourceID="SanPham_Rand" SelectedIndex="0" CellPadding="0" Width="100%">
                <ItemTemplate>
                    <asp:HyperLink class="item-products" ID="HyperLink2" NavigateUrl='<%# Eval("MaSP","ProductDetail.aspx?id={0}") %>' ToolTip='<%# Eval("TenSP") %>' runat="server"> 
                    <img src="Images/Products/<%# Eval("AnhSP") %>" width="100" height="100" border=0 />
                     <span><%# Eval("TenSP") %></span>
                    </asp:HyperLink>
                 
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" />
            </asp:DataList>
            <asp:SqlDataSource ID="SanPham_Rand" runat="server" 
                ConnectionString="<%$ ConnectionStrings:TNTCOMPUTERConnectionString %>" 
                SelectCommand="SanPham_Rand" SelectCommandType="StoredProcedure">
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

