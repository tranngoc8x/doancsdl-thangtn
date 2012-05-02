<%@ Page Language="C#" MasterPageFile="~/Admin/PageAdmin.master" AutoEventWireup="true" CodeFile="ChangePass.aspx.cs" Inherits="Admin_ChangePass" Title="Đổi mật khẩu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="content-box-header">			
	<h3>Đổi mật khẩu</h3>		
	<ul class="content-box-tabs">
		<li><a href="#tab1" class="default-tab">Cập nhật</a></li> <!-- href must be unique and match the id of target div -->
	</ul>				
        
	<div class="clear"></div>				
</div> <!-- End .content-box-header -->	
<div class="content-box-content">
	<div class="tab-content default-tab"> <!-- This is the target div. id must match the href of this div's tab -->
	<div class="notification attention png_bg" style="display:block;" runat="server" id="notification">
			<a href="#" class="close"><img src="../Images/admin/icons/cross_grey_small.png" title="Close this notification" alt="close" /></a>
			<div id="notice-name">
			    <asp:Label ID="ErrorMessage" runat="server" Text=""></asp:Label>
			</div>
		</div>
					
			<fieldset> <!-- Set class to "column-left" or "column-right" on fieldsets to divide the form into columns -->
				<p>
					<label>Mật khẩu cũ</label>
					<asp:TextBox ID="oldpass" runat="server" class="text-input small-input" 
                        Text="" TextMode="Password"></asp:TextBox>
				    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="oldpass" ErrorMessage="*Mật khẩu không được để trống"></asp:RequiredFieldValidator>
				</p>
				<p>
					<label>Mật khẩu mới</label>
                    <asp:TextBox ID="newpass" class="text-input small-input"  runat="server" 
                        TextMode="Password"></asp:TextBox>
				    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="newpass" 
                        ErrorMessage="*Mật khẩu mới không được để trống"></asp:RequiredFieldValidator>
				</p>
				<p>
					<label>Nhắc lại mật khẩu</label>
                    <asp:TextBox ID="repass" class="text-input small-input"  runat="server" 
                        TextMode="Password"></asp:TextBox>
				    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="newpass" ControlToValidate="repass" 
                        ErrorMessage="* Mật khẩu không giống nhau"></asp:CompareValidator>
				</p>
                <p>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="repass" ErrorMessage="* Nhắc lại mật khẩu"></asp:RequiredFieldValidator>
				</p>
				<p>
					<asp:Button ID="btn_update" runat="server" class="button" Text="Đổi mật khẩu" 
                        onclick="btn_update_Click" />
				</p>
			</fieldset>
			<div class="clear">
              
        </div><!-- End .clear -->
		
	</div>
</div>
</asp:Content>

