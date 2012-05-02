<%@ Page Language="C#" MasterPageFile="~/Admin/PageAdmin.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Admin_Contact" Title="Danh sách liên hệ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="content-box-header">			
	<h3>Danh sách liên hệ</h3>		
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
				    <th align="center">STT</th>
				    <th align="center">Tên người liên hệ</th>
				    <th align="center">Điện thoại</th>
				    <th align="center">Email</th>
				    <th align="center">Trạng thái</th>
				    <th style="width: 100px;text-align: center;" align="center">Quản trị</th>
				</tr>
			</thead>
			<tbody>
			
              <asp:ListView ID="ListView1" runat="server" DataKeyNames="Contactid"  
                    DataSourceID="DanhsachLienhe" onitemcommand="ListView1_ItemCommand">
                   <ItemTemplate>
                         <tr>
			                <td style="width: 50px;text-align: center;"> <%# Eval("stt") %> </td>
			                <td><%# Eval("Names")%></td>
			                <td><%# Eval("Phone")%></td>
			                <td>
                                <asp:HyperLink ID="lik_email" NavigateUrl='<%# Eval("Email","mailto:{0}")%>' runat="server"><%# Eval("Email")%></asp:HyperLink></td>
			                <td><%# Convert.ToInt32(Eval("Status")) == 1 ? "Đã xem" : "Chưa xem"%></td>
			                <td style="width: 100px;text-align: center;" align="center">
							    <!-- Icons -->
 
                                 <asp:HyperLink ID="edit" rel="modal" NavigateUrl='<%# Eval("Contactid","ContactDetail.aspx?id={0}") %>' runat="server" ToolTip="Xem liên hệ"><img src="../Images/admin/icons/views.png" alt="Xem" /></asp:HyperLink>
                                 <%--<asp:LinkButton  CommandName="EditNSP" ID="LinkButton1" OnClick="EditItem_Click" runat="server"><img src="../Images/admin/icons/pencil.png" alt="Sửa" /></asp:LinkButton>--%>
                                 <asp:LinkButton CommandName="DeleteLH" ID="Delete" runat="server"><img src="../Images/admin/icons/cross.png" alt="Xóa" /></asp:LinkButton>
						    </td>
		                </tr>
                  </ItemTemplate>
                   
                   <EmptyDataTemplate>
                   <tr><td colspan=6><span>Không có bản ghi nào</span></td></tr>
                       
                   </EmptyDataTemplate>
                   <LayoutTemplate> 
                        <span ID="itemPlaceholder" runat="server"></span>
                        <tr style="background: #FFFFFF; border-top: 1px dotted #cccccc;">
	                        <td colspan="6">
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
                   <asp:SqlDataSource ID="DanhsachLienhe" runat="server" 
                       ConnectionString="<%$ ConnectionStrings:TNTCOMPUTERConnectionString %>" 
                       SelectCommand="A_DanhSach_Lienhe" 
                    SelectCommandType="StoredProcedure" DeleteCommand="A_Delete_LH" 
                    DeleteCommandType="StoredProcedure">
                        
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

