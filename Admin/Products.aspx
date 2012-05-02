<%@ Page Language="C#" MasterPageFile="~/Admin/PageAdmin.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Admin_ManagerPage" Title="Danh sách sản phẩm" %>
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
                                    DataSourceID="SanPham_DanhSach_Admin" onitemcommand="ListView1_ItemCommand">
                                    <ItemTemplate>
                                        <tr>
                                            <td><%# Eval("stt") %></td>
	                                        <td><%# Eval("TenSP") %></td>
	                                        <td>$<%# Eval("DonGia") %></td>
	                                        <td><%# Eval("TenNSP") %></td>
	                                          <td align="center">
	                                            <asp:HyperLink rel="modal" ID="edit" NavigateUrl='<%# Eval("MaSP","ProductDetail.aspx?id={0}") %>' runat="server" ToolTip="Xem chi tiết sản phẩm"><img src="../Images/admin/icons/views.png" alt="Xem chi tiết sản phẩm" /></asp:HyperLink>&nbsp;
                                                 <a href="SanphamEdit.aspx?id=<%# Eval("MaSP") %>" title="Sửa"><img src="../Images/admin/icons/pencil.png" alt="Sửa" /></a>&nbsp;
		                                         <asp:LinkButton CommandName="DeleteProducts" ID="Delete" runat="server"><img src="../Images/admin/icons/cross.png" alt="Xóa" /></asp:LinkButton>
                                          </td>
	                                    </tr>
                                    </ItemTemplate>
                                   
                                    <EmptyDataTemplate>
                                        <tr><td colspan=5><span>Không có bản ghi nào</span></td></tr>
                       
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
                            SelectCommand="A_Sanpham_DanhSach" SelectCommandType="StoredProcedure" 
                            DeleteCommandType="StoredProcedure" DeleteCommand="A_SanPham_Xoa">
                            <DeleteParameters>
                               <asp:ControlParameter ControlID="ListView1" DefaultValue="" Name="id" 
                                   PropertyName="SelectedValue" Type="Int32" />
                               <asp:Parameter Direction="ReturnValue" Name="RETURN_VALUE" Type="Int32" />
                           </DeleteParameters>
                        </asp:SqlDataSource>
                    </div>
                    
                </div> <!-- End .content-box-content -->
</asp:Content>

