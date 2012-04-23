<%@ Page Language="C#" MasterPageFile="~/Admin/PageAdmin.master" AutoEventWireup="true" CodeFile="NewsEdit.aspx.cs" Inherits="Admin_NewsAdd" Title="Chỉnh sửa nội dung bài viết" %>
<% @Import Namespace="System.IO" %>
<% @Import Namespace="System.Text" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content-box-header">			
	<h3>Sửa bài viết</h3>		
	<ul class="content-box-tabs">
		<li><a href="#tab1" class="default-tab">Cập nhật</a></li> <!-- href must be unique and match the id of target div -->
	</ul>				
        
	<div class="clear"></div>				
</div> <!-- End .content-box-header -->	
<div class="content-box-content">
	<div class="tab-content default-tab"> <!-- This is the target div. id must match the href of this div's tab -->
	<div class="notification attention png_bg" style="display:none;" id="notification">
			<a href="#" class="close"><img src="../Images/admin/icons/cross_grey_small.png" title="Close this notification" alt="close" /></a>
			<div id="notice-name">
				 
			</div>
		</div>     
 
<fieldset> <!-- Set class to "column-left" or "column-right" on fieldsets to divide the form into columns -->
	<p>
		<label>Tiêu đề tin tức</label>
		<asp:TextBox ID="tieude" runat="server" class="text-input small-input"  ></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate="tieude" ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Tiêu đề không được để trống"></asp:RequiredFieldValidator>
	</p>
	<p>
		<label>Tóm tắt</label>
		<asp:TextBox ID="tomtat" TextMode="MultiLine" Rows="6" runat="server" class="text-input textarea small-input"></asp:TextBox>
	</p>
	<%--<p>
		<label>Ngày đăng</label>
		<asp:TextBox ID="datepicker"  runat="server" class="text-input small-input datepicker" ></asp:TextBox>
	</p>--%>
	 
	<p>
		<label>Trạng thái</label>              
        <asp:DropDownList ID="trangthai" runat="server" class="small-input">
            <asp:ListItem Selected="True" Value="1">Hiển thị</asp:ListItem>
            <asp:ListItem Value="0">Ẩn</asp:ListItem>
        </asp:DropDownList>
		 
	</p>
	<p>
		<label>Tin nổi bật</label>              
        <asp:DropDownList ID="noibat" runat="server" class="small-input">
            <asp:ListItem Value="1">Có</asp:ListItem>
            <asp:ListItem  Selected="True" Value="0">Không</asp:ListItem>
        </asp:DropDownList>
		 
	</p>
	<p>
		<label>Ảnh bài viết</label>
		<asp:FileUpload ID="file" runat="server" />
        
	</p>
	<p>
		<label>Nội dung</label>
		<asp:TextBox TextMode="multiline" class="text-input textarea wysiwyg" id="noidung" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="noidung" runat="server" ErrorMessage="* Nội dung không được để trống !"></asp:RequiredFieldValidator>
	</p>
	<p>
		<asp:Button ID="btn_update" runat="server" class="button" Text="Thêm mới" onclick="btn_update_Click" />
	</p>
</fieldset>

<div class="clear">
    
    <asp:SqlDataSource ID="SqlEditNews" runat="server" 
        ConnectionString="<%$ ConnectionStrings:TNTCOMPUTERConnectionString %>" 
        SelectCommand="SELECT TinTuc.* FROM TinTuc" 
        UpdateCommand="A_TinTuc_Sua" UpdateCommandType="StoredProcedure">
        <UpdateParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="id" QueryStringField="id" 
                Type="Int32" />
            <asp:ControlParameter ControlID="tieude" Name="tieude" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="tomtat" Name="tomtat" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="noidung" Name="noidung" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="file" Name="anh" PropertyName="FileName" 
                Type="String" />
            <asp:ControlParameter ControlID="noibat" Name="noibat" 
                PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="trangthai" Name="trangthai" 
                PropertyName="SelectedValue" Type="Int32" />
        </UpdateParameters>
        
        
        
    </asp:SqlDataSource>
     
    
 
   
 
        </div>
 	</div>
</div>
</div>
</asp:Content>
