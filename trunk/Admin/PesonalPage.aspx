<%@ Page Language="C#" MasterPageFile="~/Admin/PageAdmin.master" AutoEventWireup="true" CodeFile="PesonalPage.aspx.cs" Inherits="Admin_PesonalPage" Title="Thông tin người dùng" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="content-box-header">			
	<h3>Thông tin người dùng</h3>		
	<ul class="content-box-tabs">
		<li><a href="#tab1" class="default-tab">Chi tiết</a></li> <!-- href must be unique and match the id of target div -->
	</ul>				
        
	<div class="clear"></div>				
</div> <!-- End .content-box-header -->	
<div class="content-box-content">
	<div class="tab-content default-tab"> <!-- This is the target div. id must match the href of this div's tab -->
    
 
<fieldset> <!-- Set class to "column-left" or "column-right" on fieldsets to divide the form into columns -->
	  <asp:DataList ID="DataList1" runat="server" DataKeyField="MaNV" 
            DataSourceID="Personal" RepeatDirection="Horizontal" RepeatLayout="Flow">
            <ItemTemplate>
                
               <p><strong>Họ tên : </strong><%# Eval("HotenNV") %></p>
               <p><strong>Ngày sinh : </strong><%# Eval("Ngaysinh") %></p>
               <p><strong>Điện thoại : </strong><%# Eval("Phone") %></p>
               <p><strong>Email : </strong>
                   <asp:HyperLink ID="mailto" NavigateUrl='<%# Eval("Email", "mailto:{0}")%>' runat="server"><%# Eval("Email")%></asp:HyperLink></p>
               <p><strong>Tên đăng nhập : </strong><%# Eval("Tendangnhap") %></p>
               <p><strong>Địa chỉ : </strong><%# Eval("Diachi") %></p>
               <p><asp:HyperLink ID="changinfor" CssClass="button" NavigateUrl='<%# Eval("MaNV","ChangeInfor.aspx?id={0}")%>' runat="server">Thay đổi thông tin</asp:HyperLink></p>
            </ItemTemplate>
        </asp:DataList>
        
  
        <asp:SqlDataSource ID="Personal" runat="server" 
            ConnectionString="<%$ ConnectionStrings:TNTCOMPUTERConnectionString %>" 
            SelectCommand="A_PersonalInfor" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="1" Name="id" QueryStringField="id" 
                    Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
 
</fieldset>

<div class="clear"></div>

 	</div>
</div>
</div>
</asp:Content>

