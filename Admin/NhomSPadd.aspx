<%@ Page Language="C#" MasterPageFile="~/Admin/PageAdmin.master" AutoEventWireup="true" CodeFile="NhomSPadd.aspx.cs" Inherits="Admin_NhomNSPAdd" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content-box-header">			
	<h3>Thêm nhóm sản phẩm</h3>		
	<ul class="content-box-tabs">
		<li><a href="#tab1" class="default-tab">Thêm mới</a></li> <!-- href must be unique and match the id of target div -->
	</ul>				
        
	<div class="clear"></div>				
</div> <!-- End .content-box-header -->	
<div class="content-box-content">
	<div class="tab-content default-tab"> <!-- This is the target div. id must match the href of this div's tab -->
    
 
<fieldset> <!-- Set class to "column-left" or "column-right" on fieldsets to divide the form into columns -->
	<p>
		<label>Tên nhóm sản phẩm</label>
		<asp:TextBox ID="txtten" runat="server" class="text-input small-input" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtten" runat="server" ErrorMessage="* Tên danh mục không được để trống "></asp:RequiredFieldValidator>
	</p>
	<p>
		<label>Trạng thái</label>              
        <asp:DropDownList ID="txttrangthai" runat="server" class="small-input">
            <asp:ListItem Selected="True" Value="1">Hiển thị</asp:ListItem>
            <asp:ListItem Value="0">Ẩn</asp:ListItem>
        </asp:DropDownList>
		 
	</p>
	<p>
		<asp:Button ID="btn_update" runat="server" class="button" Text="Thêm mới" onclick="Button1_Click"  />
	</p>
</fieldset>

<div class="clear"></div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:TNTCOMPUTERConnectionString %>" 
    InsertCommand="A_NhomSP_Them" InsertCommandType="StoredProcedure" 
    SelectCommand="SELECT NhomSP.* FROM NhomSP">
    <InsertParameters>
        <asp:ControlParameter ControlID="txtten" Name="ten" PropertyName="Text" 
            Type="String" />
        <asp:ControlParameter ControlID="txttrangthai" Name="trangthai" PropertyName="Text" 
            Type="Int32" />
    </InsertParameters>
</asp:SqlDataSource>
 	</div>
</div>
</div>
</asp:Content>

