<%@ Page Language="C#" MasterPageFile="~/Admin/PageAdmin.master" AutoEventWireup="true" CodeFile="Customer.aspx.cs" Inherits="Admin_Customer" Title="Danh sách khách hàng" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="content-box-header">			
	<h3>Khách hàng</h3>		
	<ul class="content-box-tabs">
		<li><a href="#tab1" class="default-tab">Danh sách</a></li> <!-- href must be unique and match the id of target div -->
	</ul>				
	<div class="clear"></div>				
</div> <!-- End .content-box-header -->	
<div class="content-box-content">
	<div class="tab-content default-tab"> <!-- This is the target div. id must match the href of this div's tab -->
        <table width="100%">
         
           <thead>
                <tr><td colspan=3>
			        <asp:TextBox ID="name" name="name" runat="server" class="text-input small-input"></asp:TextBox>
			        <asp:Button ID="timkiem" runat="server" Text="Tìm kiếm" class="button"></asp:Button>
                </td></tr>
				<tr>
				    <th align="center">STT</th>
				    <th align="center">Tên khách hàng</th>
				    <th align="center">Điện thoại</th>
				    <th align="center">Email</th>
				    <th style="width: 100px;text-align: center;" align="center">Quản trị</th>
				</tr>
			</thead>
			<tbody>
			
              <asp:ListView ID="ListView1" runat="server" DataKeyNames="CustomerID"  
                    DataSourceID="Customer" onitemcommand="ListView1_ItemCommand">
                   <ItemTemplate>
                         <tr>
			                <td style="width: 50px;text-align: center;"> <%# Eval("stt") %> </td>
			                <td><%# Eval("Fullname")%></td>
			                <td><%# Eval("Phone")%></td>
			                <td><asp:HyperLink ID="mailto" NavigateUrl='<%# Eval("Email", "mailto:{0}")%>' runat="server"><%# Eval("Email")%></asp:HyperLink></td>
			                <td style="width: 100px;text-align: center;" align="center">
							    <!-- Icons -->
                                    
                                 <asp:HyperLink rel="modal" ID="edit" NavigateUrl='<%# Eval("CustomerID","CusDetail.aspx?id={0}") %>' runat="server" ToolTip="Xem thông tin khách hàng"><img src="../Images/admin/icons/views.png" alt="Xem thông tin khách hàng" /></asp:HyperLink>
                                 <%--<asp:LinkButton  CommandName="EditNSP" ID="LinkButton1" OnClick="EditItem_Click" runat="server"><img src="../Images/admin/icons/pencil.png" alt="Sửa" /></asp:LinkButton>--%>
                                <%-- <asp:LinkButton CommandName="DeleteCus" ID="Delete" runat="server"><img src="../Images/admin/icons/cross.png" alt="Xóa" /></asp:LinkButton>--%>
						    </td>
		                </tr>
                  </ItemTemplate>
                   
                   <EmptyDataTemplate>
                       <span>Không có bản ghi nào</span>
                   </EmptyDataTemplate>
                   <LayoutTemplate> 
                        <span ID="itemPlaceholder" runat="server"></span>
                        <tr style="background: #FFFFFF; border-top: 1px dotted #cccccc;">
	                        <td colspan="5">
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
                   <asp:SqlDataSource ID="Customer" runat="server" 
                       ConnectionString="<%$ ConnectionStrings:TNTCOMPUTERConnectionString %>" 
                       SelectCommand="A_DanhsachCus" 
                    SelectCommandType="StoredProcedure" DeleteCommand="A_CustomerDel" 
                    DeleteCommandType="StoredProcedure">
                       <SelectParameters>
                           <asp:FormParameter DefaultValue="  " FormField="ctl00$ContentPlaceHolder1$name" 
                               Name="name" Type="String" />
                       </SelectParameters>
                       <DeleteParameters>
                           <asp:Parameter Direction="ReturnValue" Name="RETURN_VALUE" Type="Int32" />
                           <asp:ControlParameter ControlID="ListView1" DefaultValue="" Name="id" 
                               PropertyName="SelectedValue" Type="Int32" />
                       </DeleteParameters>
                   </asp:SqlDataSource>
                   </td>
               </tr>
            </tbody>
        </table>
    </div>
    
</div> <!-- End .content-box-content -->
</asp:Content>

