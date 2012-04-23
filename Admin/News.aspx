<%@ Page Language="C#" MasterPageFile="~/Admin/PageAdmin.master" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="Admin_Default2" Title="Tin tức" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="content-box-header">			
					<h3>Bài viết</h3>		
					<ul class="content-box-tabs">
						<li><a href="#tab1" class="default-tab">Danh sách</a></li> <!-- href must be unique and match the id of target div -->
					</ul>				
					<div class="clear"></div>				
				</div> <!-- End .content-box-header -->	
				<div class="content-box-content">
				<%--<div class="notification attention png_bg" style=" " id="notification">
                    <asp:Label ID="Notification" runat="server" Text=""></asp:Label>
			        <a href="#" class="close"><img src="../Images/admin/icons/cross_grey_small.png" title="Close this notification" alt="close" /></a>
			        <div id="notice-name">
        				 aew
			        </div>
		        </div> --%>
					<div class="tab-content default-tab"> <!-- This is the target div. id must match the href of this div's tab -->
                        <table width="100%">
                           <thead>
                                <tr><td colspan=4>
			                        <asp:TextBox ID="name" name="name" runat="server" class="text-input small-input"></asp:TextBox>
			                        <asp:Button ID="timkiem" runat="server" Text="Tìm kiếm" class="button"></asp:Button>
                                </td></tr>
								<tr align="center">
								   <th align="center">Mã tin</th>
								   <th align="center">Tên bài viết</th>
								   <th align="center">Ngày đăng</th>
								   <th align="center">Trạng thái</th>
								   <th align="center">Quản trị</th>
								</tr>
							</thead><tbody>
                                <asp:ListView ID="ListView1" runat="server" DataKeyNames="Matin" 
                                    DataSourceID="DanhSachBaiVet" onitemcommand="ListView1_ItemCommand">
                                    <ItemTemplate>
                                     <tr>
                                          <td><%# Eval("Matin") %></td>
                                          <td><%# Eval("Tieude") %></td>
                                          <td align="center"><%# Eval("Ngaydang") %></td>
                                          <td align="center"><%# Convert.ToInt32(Eval("Trangthai"))==1?"Hiển thị":"Ẩn" %></td>
                                          <td align="center">
                                                 <a href="NewsEdit.aspx?id=<%# Eval("MaTin") %>" title="Sửa"><img src="../Images/admin/icons/pencil.png" alt="Sửa" /></a>&nbsp;
		                                         <asp:LinkButton CommandName="DeleteNews" ID="Delete" runat="server"><img src="../Images/admin/icons/cross.png" alt="Xóa" /></asp:LinkButton>
                                          </td>
                                        </tr>
                                    </ItemTemplate>
                                     
                                    <EmptyDataTemplate>
                                        <tr>
                                          <td colspan=5>Không có bản ghi nào !</td>
                                          </tr>
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
                                       <asp:SqlDataSource ID="DanhSachBaiVet" runat="server" 
                                           ConnectionString="<%$ ConnectionStrings:TNTCOMPUTERConnectionString %>" 
                                           SelectCommand="A_DanhSach_BaiViet" SelectCommandType="StoredProcedure"
                                           DeleteCommand="A_News_Delete" 
                                            DeleteCommandType="StoredProcedure">
                                           <SelectParameters>
                                               <asp:FormParameter DefaultValue=" " FormField="ctl00$ContentPlaceHolder1$name" Name="name" 
                                                   Type="String" />
                                           </SelectParameters>
                                           <DeleteParameters>
                                               <asp:ControlParameter ControlID="ListView1" DefaultValue="" Name="id" 
                                                   PropertyName="SelectedValue" Type="Int32" />
                                               <asp:Parameter Direction="ReturnValue" Name="RETURN_VALUE" Type="Int32" />
                                           </DeleteParameters>
                                       </asp:SqlDataSource>
                            </tbody>
                        </table>
                    </div>
                    
                </div> <!-- End .content-box-content -->
</asp:Content>

