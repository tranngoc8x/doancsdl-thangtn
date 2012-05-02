<%@ Page Language="C#" MasterPageFile="~/Admin/PageAdmin.master" AutoEventWireup="true" CodeFile="Reports.aspx.cs" Inherits="Admin_Reportaspx" Title="Thống kê" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="content-box-header">			
	<h3>Thống kê</h3>		
	<ul class="content-box-tabs">
		<li><a href="#tab1" class="default-tab">Thống kê</a></li> <!-- href must be unique and match the id of target div -->
	</ul>				
        
	<div class="clear"></div>				
</div> <!-- End .content-box-header -->	
 
<div class="content-box-content">
	 
	 <div class="content-box column-left"><!-- Start Content Box -->
				
				<div class="content-box-header">
					
					<h3>Các sản phẩm còn tồn kho</h3>
					
				</div> <!-- End .content-box-header -->
				
				<div class="content-box-content">
					
					<div class="tab-content default-tab">
                       
						<table width="100%">
						 <thead>
                                 
								<tr align="center">
								   <th align="center">Tên SP</th>
								   <th align="center">Giá bán</th>
								   <th align="center">Nhóm SP</th>
								   <th align="center">Số lượng tồn</th>
								  
								</tr>
							</thead>
						
						<tbody>
					    <asp:ListView ID="ListView1" runat="server" DataKeyNames="MaSP" 
                            DataSourceID="Tonkho">
                            <ItemTemplate>
                            <tr>
                                <td><asp:HyperLink rel="modal" ID="edit" NavigateUrl='<%# Eval("MaSP","ProductDetail.aspx?id={0}") %>' runat="server" ToolTip="Xem chi tiết sản phẩm"><%# Eval("TenSP") %></asp:HyperLink></td>
                                <td style="text-align: center;">$ <%# Eval("DonGia") %></td>
                                 <td style="text-align: center;"><%# Eval("TenNSP") %></td>
                                 <td style="text-align: center;"><%# Eval("Soluong") %></td>
                            </tr>
                            </ItemTemplate>
                             
                            <EmptyDataTemplate>
                                  <tr><td colspan=4><span>Không có sản phẩm nào</span></td></tr> 
                            </EmptyDataTemplate>
                             
                                    <LayoutTemplate>
                                        <div ID="itemPlaceholderContainer" runat="server" style="">
                                            <span ID="itemPlaceholder" runat="server" />
                                        </div>
                                        <tr style="background: #FFFFFF; border-top: 1px dotted #cccccc;">
	                                        <td colspan="5">
	                                          <div class="pagination">
                                            <asp:DataPager ID="DataPager1" runat="server">
                                               <Fields>
                                                   <asp:NextPreviousPagerField FirstPageText="Đầu" LastPageText="Cuối" 
                                                        NextPageText="Tiếp" PreviousPageText="Trước" ShowFirstPageButton="True" 
                                                        ShowNextPageButton="False" ShowPreviousPageButton="True" />
                                                    <asp:NumericPagerField  CurrentPageLabelCssClass="number current" NumericButtonCssClass="number" />
                                                    <asp:NextPreviousPagerField FirstPageText="Đầu" LastPageText="Cuối" 
                                                        NextPageText="Tiếp" PreviousPageText="Trước" ShowLastPageButton="True" 
                                                        ShowNextPageButton="True" ShowPreviousPageButton="False" />
                                                </Fields>
                                            </asp:DataPager>
                                        </div>
                                        </td></tr>
                                    </LayoutTemplate>
                             
                        </asp:ListView>
                        <asp:SqlDataSource ID="Tonkho" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:TNTCOMPUTERConnectionString %>" 
                            SelectCommand="A_SanPhamTonKho" SelectCommandType="StoredProcedure">
                        </asp:SqlDataSource>
                       
						</tbody></table>
					</div> <!-- End #tab3 -->        
					
				</div> <!-- End .content-box-content -->
				
			</div> <!-- End .content-box -->
			
			<div class="content-box column-right"><!-- Start Content Box -->
				
				<div class="content-box-header">
					
					<h3>Các sản phẩm đã bán hết</h3>
					
				</div> <!-- End .content-box-header -->
				
				<div class="content-box-content">
					
					<div class="tab-content default-tab">
					
					  
					 
						
					    <table width="100%">
						 <thead>
                                 
								<tr align="center">
								   <th align="center">Tên SP</th>
								   <th align="center">Giá bán</th>
								   <th align="center">Nhóm SP</th>
								   <th align="center">Số lượng tồn</th>
								  
								</tr>
							</thead>
						
						<tbody>
					    <asp:ListView ID="ListView2" runat="server" DataKeyNames="MaSP" 
                            DataSourceID="Banhet">
                            <ItemTemplate>
                            <tr>
                                <td><asp:HyperLink rel="modal" ID="edit" NavigateUrl='<%# Eval("MaSP","ProductDetail.aspx?id={0}") %>' runat="server" ToolTip="Xem chi tiết sản phẩm"><%# Eval("TenSP") %></asp:HyperLink></td>
                                <td style="text-align: center;">$ <%# Eval("DonGia") %></td>
                                 <td style="text-align: center;"><%# Eval("TenNSP") %></td>
                                 <td style="text-align: center;"><%# Eval("Soluong") %></td>
                            </tr>
                            </ItemTemplate>
                             
                            <EmptyDataTemplate>
                               <tr><td colspan=4><span>Không có sản phẩm nào</span></td></tr> 
                            </EmptyDataTemplate>
                             
                                    <LayoutTemplate>
                                        <div ID="itemPlaceholderContainer" runat="server" style="">
                                            <span ID="itemPlaceholder" runat="server" />
                                        </div>
                                        <tr style="background: #FFFFFF; border-top: 1px dotted #cccccc;">
	                                        <td colspan="5">
	                                          <div class="pagination">
                                            <asp:DataPager ID="DataPager1" runat="server">
                                               <Fields>
                                                   <asp:NextPreviousPagerField FirstPageText="Đầu" LastPageText="Cuối" 
                                                        NextPageText="Tiếp" PreviousPageText="Trước" ShowFirstPageButton="True" 
                                                        ShowNextPageButton="False" ShowPreviousPageButton="True" />
                                                    <asp:NumericPagerField  CurrentPageLabelCssClass="number current" NumericButtonCssClass="number" />
                                                    <asp:NextPreviousPagerField FirstPageText="Đầu" LastPageText="Cuối" 
                                                        NextPageText="Tiếp" PreviousPageText="Trước" ShowLastPageButton="True" 
                                                        ShowNextPageButton="True" ShowPreviousPageButton="False" />
                                                </Fields>
                                            </asp:DataPager>
                                        </div>
                                        </td></tr>
                                    </LayoutTemplate>
                             
                        </asp:ListView>
                        </tbody></table>
                        <asp:SqlDataSource ID="Banhet" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:TNTCOMPUTERConnectionString %>" 
                            SelectCommand="A_Sanpham_Banhet" SelectCommandType="StoredProcedure">
                        </asp:SqlDataSource>
					
					  
					 
						
					</div> <!-- End #tab3 -->        
					
				</div> <!-- End .content-box-content -->
				
			</div> <!-- End .content-box -->
			<div class="clear"></div>
			
	</div>

</asp:Content>

