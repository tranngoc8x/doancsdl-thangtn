<%@ Page Language="C#" MasterPageFile="~/Admin/PageAdmin.master" AutoEventWireup="true" CodeFile="NhomSP.aspx.cs" Inherits="Admin_DanhmucSanpham" Title="Danh mục sản phẩm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="content-box-header">			
	<h3>Nhóm sản phẩm</h3>		
	<ul class="content-box-tabs">
		<li><a href="#tab1" class="default-tab">Danh sách</a></li> <!-- href must be unique and match the id of target div -->
	</ul>				
	<div class="clear"></div>				
</div> <!-- End .content-box-header -->	
<div class="content-box-content">
	<div class="tab-content default-tab"> <!-- This is the target div. id must match the href of this div's tab -->
        <table width="100%">
         
           <thead>
                <tr><td colspan=4>
			        <asp:TextBox ID="name" name="name" runat="server" class="text-input small-input"></asp:TextBox>
			        <asp:Button ID="timkiem" runat="server" Text="Tìm kiếm" class="button"></asp:Button>
                </td></tr>
				<tr>
				    <th align="center">STT</th>
				    <th align="center">Tên nhóm sản phẩm</th>
				    <th align="center">Trạng thái</th>
				    <th style="width: 100px;text-align: center;" align="center">Quản trị</th>
				</tr>
			</thead>
			<tbody>
			
              <asp:ListView ID="ListView1" runat="server" DataKeyNames="MaNSP"  
                    DataSourceID="DanhMucSP" onitemcommand="ListView1_ItemCommand">
                   <ItemTemplate>
                         <tr>
			                <td style="width: 50px;text-align: center;"> <%# Eval("stt") %> </td>
			                <td><%# Eval("TenNSP")%></td>
			                <td><%# Convert.ToInt32(Eval("Trangthai")) == 1 ? "Hiển thị" : "Ẩn"%></td>
			                <td style="width: 100px;text-align: center;" align="center">
							    <!-- Icons -->
 
                                 <asp:HyperLink ID="edit" NavigateUrl='<%# Eval("MaNSP","NhomSPedit.aspx?id={0}") %>' runat="server" ToolTip="Sửa"><img src="../Images/admin/icons/pencil.png" alt="Sửa" /></asp:HyperLink>
                                 <%--<asp:LinkButton  CommandName="EditNSP" ID="LinkButton1" OnClick="EditItem_Click" runat="server"><img src="../Images/admin/icons/pencil.png" alt="Sửa" /></asp:LinkButton>--%>
                                 <asp:LinkButton CommandName="DeleteNSP" ID="Delete" runat="server"><img src="../Images/admin/icons/cross.png" alt="Xóa" /></asp:LinkButton>
						    </td>
		                </tr>
                  </ItemTemplate>
                   
                   <EmptyDataTemplate>
                       <span>Không có bản ghi nào</span>
                   </EmptyDataTemplate>
                   <LayoutTemplate> 
                        <span ID="itemPlaceholder" runat="server"></span>
                        <tr style="background: #FFFFFF; border-top: 1px dotted #cccccc;">
	                        <td colspan="4">
	                          <div class="pagination">
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
                                </div>
                             </td>
                        </tr>
                   </LayoutTemplate>
              </asp:ListView>
                   <asp:SqlDataSource ID="DanhMucSP" runat="server" 
                       ConnectionString="<%$ ConnectionStrings:TNTCOMPUTERConnectionString %>" 
                       SelectCommand="A_DanhmucSP_DanhSach" 
                    SelectCommandType="StoredProcedure" DeleteCommand="A_DanhmucSP_Xoa" 
                    DeleteCommandType="StoredProcedure">
                       <SelectParameters>
                           <asp:FormParameter DefaultValue=" " FormField="ctl00$ContentPlaceHolder1$name" Name="name" Type="String" />
                       </SelectParameters>
                       <DeleteParameters>
                           <asp:ControlParameter ControlID="ListView1" DefaultValue="" Name="id" 
                               PropertyName="SelectedValue" Type="Int32" />
                           <asp:Parameter Direction="ReturnValue" Name="RETURN_VALUE" Type="Int32" />
                       </DeleteParameters>
                   </asp:SqlDataSource>
                   </td>
               </tr>
            </tbody>
        </table>
    </div>
    
</div> <!-- End .content-box-content -->
</asp:Content>

