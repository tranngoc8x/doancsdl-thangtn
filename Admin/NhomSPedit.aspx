<%@ Page Language="C#" MasterPageFile="~/Admin/PageAdmin.master" AutoEventWireup="true" CodeFile="NhomSPedit.aspx.cs" Inherits="Admin_NhomSPedit" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content-box-header">			
	<h3>Cập nhật nhóm sản phẩm</h3>		
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
					<label>Tên nhóm sản phẩm</label>
					<asp:TextBox ID="txtten" runat="server" class="text-input small-input" 
                        Text=""></asp:TextBox>
				</p>
				<p>
					<label>Trạng thái</label>              
                    <asp:DropDownList ID="trangthai" runat="server" class="small-input">
                        <asp:ListItem Selected="True" Value="1">Hiển thị</asp:ListItem>
                        <asp:ListItem Value="0">Ẩn</asp:ListItem>
                    </asp:DropDownList>
					 
				</p>
				<p>
					<asp:Button ID="btn_update" runat="server" class="button" Text="Cập nhật" 
                        onclick="btn_update_Click"/>
				</p>
			</fieldset>
			<div class="clear">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:TNTCOMPUTERConnectionString %>" 
                    SelectCommand="SELECT NhomSP.* FROM NhomSP" 
                    UpdateCommand="A_NhomSP_Sua" UpdateCommandType="StoredProcedure">
                    <UpdateParameters>
                        <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
                        <asp:ControlParameter ControlID="txtten" Name="name" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="trangthai" Name="trangthai" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
        </div><!-- End .clear -->
		
	</div>
</div>
</asp:Content>

