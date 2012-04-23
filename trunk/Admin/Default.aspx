<%@ Page Language="C#" MasterPageFile="~/Admin/PageAdmin.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_ManagerPage" Title="::ManagerPage::" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content-box-header">			
					<h3>Sản phẩm</h3>		
					<ul class="content-box-tabs">
						<li><a href="#tab1" class="default-tab">Danh sách</a></li> <!-- href must be unique and match the id of target div -->
					</ul>				
					<div class="clear"></div>				
				</div> <!-- End .content-box-header -->	
				<div class="content-box-content">
					<div class="tab-content default-tab"> <!-- This is the target div. id must match the href of this div's tab -->
                        <table width="100%">
                           <thead>
								<tr>
								   <th>STT</th>
								   <th>Tên sản phẩm</th>
								   <th>Giá bán</th>
								   <th>Loại sản phẩm</th>
								   <th>Quản trị</th>
								</tr>
								
							</thead><tbody>
                                <asp:ListView ID="ListView1" runat="server" DataKeyNames="MaSP" 
                                    DataSourceID="SanPham_DanhSach_Admin">
                                    <ItemTemplate>
                                        <tr>
                                            <td><%# Eval("stt") %></td>
	                                        <td><%# Eval("TenSP") %></td>
	                                        <td>$<%# Eval("DonGia") %></td>
	                                        <td><%# Eval("TenNSP") %></td>
	                                        <td>&nbsp;</td>
	                                    </tr>
                                    </ItemTemplate>
                                   
                                    <EmptyDataTemplate>
                                        <span>No data was returned.</span>
                                    </EmptyDataTemplate>
                                    
                                    <LayoutTemplate>
                                        <div ID="itemPlaceholderContainer" runat="server" style="">
                                            <span ID="itemPlaceholder" runat="server" />
                                        </div>
                                        
                                        <tr><td colspan="5"> <div class="pagination">
                                            <asp:DataPager ID="DataPager1" PageSize="15" runat="server">
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
                                             </div> </td>
	                                    </tr>
                                      
                                    </LayoutTemplate>
                                     
                                </asp:ListView>
                            </tbody>
                        </table>
                        <asp:SqlDataSource ID="SanPham_DanhSach_Admin" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:TNTCOMPUTERConnectionString %>" 
                            SelectCommand="A_Sanpham_DanhSach" SelectCommandType="StoredProcedure">
                        </asp:SqlDataSource>
                    </div>
                    
                </div> <!-- End .content-box-content -->
</asp:Content>

