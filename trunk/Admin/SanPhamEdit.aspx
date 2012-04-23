<%@ Page Language="C#" MasterPageFile="~/Admin/PageAdmin.master" AutoEventWireup="true" CodeFile="SanPhamEdit.aspx.cs" Inherits="Admin_SanPhamEdit" Title="Cập nhật sản phẩm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="content-box-header">			
	<h3>Thêm sản phẩm</h3>		
	<ul class="content-box-tabs">
		<li><a href="#tab1" class="default-tab">Thêm mới</a></li> <!-- href must be unique and match the id of target div -->
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
		<label>Tên sản phẩm</label>
		<asp:TextBox ID="txtten" runat="server" class="text-input small-input"  ></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate="txtten" ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Tiêu đề không được để trống"></asp:RequiredFieldValidator>
	</p>
	<p>
		<label>Mô tả sản phẩm</label>
		<asp:TextBox ID="mota" TextMode="MultiLine" Rows="6" runat="server" 
            class="text-input textarea small-input"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate="mota" 
            ID="RequiredFieldValidator6" runat="server" 
            ErrorMessage="* Mô tả không được để trống"></asp:RequiredFieldValidator>
	</p>
	<p>
		<label>Đơn giá</label>
		<asp:TextBox ID="giaban"  runat="server" class="text-input small-input" ></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate="giaban" ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Đơn giá không hợp lệ"></asp:RequiredFieldValidator>
	</p>
	 
	<p>
		<label>Giảm giá</label>
		<asp:TextBox ID="giamgia"  runat="server" class="text-input small-input" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="giamgia" runat="server" ErrorMessage="* Giá không hợp lệ"></asp:RequiredFieldValidator>
	</p>
	 
	<p>
		<label>Số lượng</label>
		
		<asp:TextBox ID="soluong"  runat="server" class="text-input small-input" ></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate="soluong" ID="RequiredFieldValidator4" runat="server" ErrorMessage="* Số lượng không hợp lệ"></asp:RequiredFieldValidator>
	</p>
	<p>
		<label>Nhóm sản phẩm 
        </label>       
        <select name="nhomsp" id="Nhomsp">
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="nsp">
                 <ItemTemplate>
                   <option value="<%# Eval("MaNSP") %>"><%# Eval("TenNSP") %></option>
                </ItemTemplate>
                </asp:Repeater>  
         </select>
        
        <asp:SqlDataSource ID="nsp" runat="server" 
            ConnectionString="<%$ ConnectionStrings:TNTCOMPUTERConnectionString %>" 
            SelectCommand="NhomSP_DanhSach" SelectCommandType="StoredProcedure">
        </asp:SqlDataSource>
        &nbsp;</p> 
    
	<p>
		<label>Trạng thái</label>              
        <asp:DropDownList ID="txttrangthai" runat="server" class="small-input">
            <asp:ListItem Selected="True" Value="1">Hiển thị</asp:ListItem>
            <asp:ListItem Value="0">Ẩn</asp:ListItem>
        </asp:DropDownList>
		 
	</p>
	<p>
		<label>Nổi bật</label>              
        <asp:DropDownList ID="noibat" runat="server" class="small-input">
            <asp:ListItem Selected="True" Value="1">Có</asp:ListItem>
            <asp:ListItem Value="0">Không</asp:ListItem>
        </asp:DropDownList>
		 
	</p>
	<p>
		<label>Ảnh sản phẩm</label>
		<asp:FileUpload ID="file" runat="server" />
		 
	    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="file" ErrorMessage="* Bạn chưa nhập ảnh sản phẩm"></asp:RequiredFieldValidator>
		 
	</p>
	<p>
		<label>Chi tiết</label>
		<asp:TextBox TextMode="multiline" class="text-input textarea wysiwyg" 
            id="Chitiet" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate="Chitiet" 
            ID="RequiredFieldValidator5" runat="server" 
            ErrorMessage="* Chi tiết sản phẩm không được để trống"></asp:RequiredFieldValidator> 
	</p>
	<p>
		<asp:Button ID="btn_update" runat="server" class="button" Text="Cập nhật" 
            onclick="btn_ins_Click" />
	</p>
    </label>
</fieldset>
        <div class="clear">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:TNTCOMPUTERConnectionString %>" 
                SelectCommand="SELECT SanPham.* FROM SanPham" UpdateCommand="A_SanPham_Edit" 
                UpdateCommandType="StoredProcedure">
                <UpdateParameters>
                    <asp:QueryStringParameter DefaultValue="0" Name="id" QueryStringField="id" 
                        Type="Int32" />
                    <asp:ControlParameter ControlID="txtten" Name="TenSP" PropertyName="Text" 
                        Type="String" />
                    <asp:ControlParameter ControlID="file" Name="AnhSP" PropertyName="FileName" 
                        Type="String" />
                    <asp:ControlParameter ControlID="mota" Name="MoTaSP" PropertyName="Text" 
                        Type="String" />
                    <asp:ControlParameter ControlID="giaban" Name="DonGia" PropertyName="Text" 
                        Type="Decimal" />
                    <asp:FormParameter FormField="nhomsp" Name="MaNSP" Type="Int32" />
                    <asp:ControlParameter ControlID="noibat" Name="Feature" 
                        PropertyName="SelectedValue" Type="Byte" />
                    <asp:ControlParameter ControlID="txttrangthai" Name="Trangthai" 
                        PropertyName="SelectedValue" Type="Int32" />
                    <asp:ControlParameter ControlID="soluong" Name="Soluong" PropertyName="Text" 
                        Type="Int32" />
                    <asp:ControlParameter ControlID="giamgia" Name="Giamgia" PropertyName="Text" 
                        Type="Decimal" />
                    <asp:ControlParameter ControlID="Chitiet" Name="Chitiet" PropertyName="Text" 
                        Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
 	</div>
</div>
</div>
</asp:Content>