<%@ Page Language="C#" MasterPageFile="~/Admin/PageAdmin.master" AutoEventWireup="true" CodeFile="ChangeInfor.aspx.cs" Inherits="Admin_ChangeInfor" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="content-box-header">			
	<h3>Cập nhật thông tin người dùng</h3>		
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
					<label>Tên người dùng</label>
					<asp:TextBox ID="ten" runat="server" class="text-input small-input" 
                        Text=""></asp:TextBox>
				    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="ten" ErrorMessage="* Họ tên không được để trống"></asp:RequiredFieldValidator>
				</p>
				<p>
					<label>Tên đăng nhập</label>
                    <asp:TextBox ID="username" class="text-input small-input"  runat="server" 
                        ReadOnly="True"></asp:TextBox>
				</p>
				<p>
					<label>Ngày sinh</label>
                    <asp:TextBox ID="bith" class="text-input small-input"  runat="server"></asp:TextBox>
				    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="bith" ErrorMessage="* Ngày sinh không được để trống"></asp:RequiredFieldValidator>
				</p>
				<p>
					<label>Điện thoại</label>
                    <asp:TextBox ID="phone" class="text-input small-input" runat="server"></asp:TextBox>
				    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="phone" ErrorMessage="* Điện thoại không được để trống"></asp:RequiredFieldValidator>
				</p>
				<p>
					<label>Email</label>
                    <asp:TextBox ID="email" class="text-input small-input" runat="server"></asp:TextBox>
				    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="email" ErrorMessage="* Email không đúng định dạng" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ValidationGroup="emal"></asp:RegularExpressionValidator>
				</p>
				<p>
					<label>Địa chỉ</label>
                    <asp:TextBox ID="add" TextMode="MultiLine" Rows=5 class="text-input small-input" runat="server"></asp:TextBox>
				    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="add" ErrorMessage="* Địa chỉ không được để trống"></asp:RequiredFieldValidator>
				</p>
				<p>
					<asp:Button ID="btn_update" runat="server" class="button" Text="Cập nhật" 
                        onclick="btn_update_Click"/>
				</p>
			</fieldset>
			<div class="clear">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:TNTCOMPUTERConnectionString %>" 
                    SelectCommand="SELECT NhanVien.* FROM NhanVien" 
                    UpdateCommand="A_Edit_User" UpdateCommandType="StoredProcedure">
                    <UpdateParameters>
                        <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
                        <asp:ControlParameter ControlID="ten" Name="HotenNV" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="email" Name="Email" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="add" Name="DiaChi" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="phone" Name="Phone" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="bith" DbType="DateTime" Name="Ngaysinh" 
                            PropertyName="Text" />
                    </UpdateParameters>
                </asp:SqlDataSource>
        </div><!-- End .clear -->
		
	</div>
</div>
</asp:Content>

