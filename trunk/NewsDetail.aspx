<%@ Page Language="C#" MasterPageFile="~/MasterUserPage.master" AutoEventWireup="true" CodeFile="NewsDetail.aspx.cs" Inherits="NewsDetail" Title="Tin tức" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="ja-moduletable moduletable  clearfix" id="Mod88">
    <h3>Tin tức</h3>
    <div class="left-content">
        <asp:DataList ID="DataList3" runat="server" DataKeyField="Matin" 
            DataSourceID="TinTuc_Chitiet">
            <ItemTemplate>
                 <div class="clearfix" id="ja-content" style="padding-bottom: 20px;border-bottom:0;">			
	                <h2 class="contentheading"><asp:Label ID="TieudeLabel" runat="server" Text='<%# Eval("Tieude") %>' /></h2>
	                <div class="article-toolswrap">
		                <div class="article-tools clearfix">
			                <div class="article-meta">
				                <span class="createdate">Ngày đăng:  <asp:Label ID="NgaydangLabel" runat="server" Text='<%# Eval("Ngaydang") %>' /></span>
			                </div>
		                </div>
	                </div>
	                <div class="article-content">
		                <div class="img_caption left" style="float: left; margin-right: 10px;">
			                <img align="left" class="caption" title="<%# Eval("Tieude") %>" alt="" src="Images/News/<%# Eval("Anh") %>">
		                </div>
		                <div style="display: block;margin-bottom: 5px;"><asp:Label ID="TomtatLabel" runat="server" Text='<%# Eval("Tomtat") %>' Font-Bold="True" /></div>
		                <asp:Label ID="NoidungLabel" runat="server" Text='<%# Eval("Noidung") %>' />
		                 <br />
		                 <br />
	                </div>
                </div>
                <br />
            </ItemTemplate>
        </asp:DataList>
        
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
        <asp:SqlDataSource ID="TinTuc_Chitiet" runat="server" 
            ConnectionString="<%$ ConnectionStrings:TNTCOMPUTERConnectionString %>" 
            SelectCommand="TinTuc_Chitiet" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="0" Name="id" QueryStringField="id" 
                    Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <table border=0 cellpadding=0 cellspacing=0 width=100%>
        <tr>
        
        <td style="padding: 0;">
            <h3> Các tin ngẫu nhiên</h3>
            <br />
            <asp:DataList ID="DataList1" runat="server" DataKeyField="MaTin" 
                DataSourceID="Tintuc_Rand" Width="100%" CellPadding="0" EditItemIndex="0" 
                RepeatColumns="2">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" ToolTip='<%# Eval("Tieude") %>' NavigateUrl='<%# Eval("MaTin","NewsDetail.aspx?id={0}") %> '>&bull;&nbsp;<%# Eval("Tieude") %></asp:HyperLink>
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="Tintuc_Rand" runat="server" 
                ConnectionString="<%$ ConnectionStrings:TNTCOMPUTERConnectionString %>" 
                SelectCommand="Tintuc_Rand" SelectCommandType="StoredProcedure">
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:TNTCOMPUTERConnectionString %>" 
                SelectCommand="TinTuc_Moi" SelectCommandType="StoredProcedure">
            </asp:SqlDataSource>
        </td>
        </tr>
        
        </table>
       
         
       
    </div>
</asp:Content>