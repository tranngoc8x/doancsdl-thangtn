<%@ Page Language="C#" MasterPageFile="~/MasterUserPage.master" AutoEventWireup="true" CodeFile="YourCart.aspx.cs" Inherits="YourCart" Title="Giỏ hàng của bạn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="ja-moduletable moduletable  clearfix" id="Mod79">
	    <h3>Giỏ hàng của bạn</h3><div class="ja-box-ct clearfix">
			
			<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns=False CssClass="CartItems"  Width='100%'>
                <Columns>
                  <asp:TemplateField HeaderText="Mã sản phẩm"  Visible="false">
                        <ItemTemplate>
                            <asp:TextBox ID="txtmasp" runat="server" Text='<%# Eval("masp") %>'></asp:TextBox>
						</ItemTemplate>
					    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
					</asp:TemplateField>
                    <asp:ImageField DataImageUrlField="AnhSP" DataImageUrlFormatString="Images/Products/{0}"  HeaderText="Ảnh sản phẩm" ItemStyle-Width="100px" >
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle Width="100px" VerticalAlign="Middle" HorizontalAlign="Center" CssClass="imageCart"></ItemStyle>
					</asp:ImageField>
                    <asp:BoundField DataField="TenSP" HeaderText="Sản phẩm">
                        <HeaderStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="Số lượng">
                        <ItemTemplate>
                            <asp:TextBox ID="txtsoluong" runat="server" Text='<%# Eval("soluong") %>'></asp:TextBox>
						</ItemTemplate>
					    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
					</asp:TemplateField>
                    
                     <asp:TemplateField HeaderText="Giảm giá">
                        <ItemTemplate>
                           <%# Eval("giamgia") %> $
						</ItemTemplate>
					    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
					</asp:TemplateField>
                   <asp:TemplateField HeaderText="Giá bán">
                        <ItemTemplate>
                           <%# Eval("Gia") %> $
						</ItemTemplate>
					    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
					</asp:TemplateField>
					<asp:TemplateField HeaderText="Thành tiền">
                        <ItemTemplate>
                           <%# Eval("TongGia") %> $
						</ItemTemplate>
					    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
					</asp:TemplateField>
                    <asp:TemplateField HeaderText="Xóa">
                        <ItemTemplate>
                            <asp:LinkButton ID="DelItem" runat="server" BackColor=AliceBlue CommandArgument='<%# Eval("TenSP") %>' OnCommand="deleteitem" CssClass="delItem">Xóa</asp:LinkButton>    
						</ItemTemplate>
					    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
					</asp:TemplateField>
				</Columns>
			</asp:GridView>
            <asp:LinkButton ID="ContBuy" runat="server" Text="Back" onclick="ContBuy_Click" class="addtocart_button_module actioncart" ToolTip="Tiếp tục mua hàng">Mua 
            thêm</asp:LinkButton>
             
            <asp:LinkButton ID="Update" runat="server" Text="Cập nhật" class="addtocart_button_module actioncart actioncart-update" ToolTip="Cập nhật giỏ hàng" onclick="Update_Click">Cập 
            nhật</asp:LinkButton>
             
            <asp:HyperLink class="addtocart_button_module actioncart actioncart-checkout"  NavigateUrl="Checkout.aspx" ID="checkout" runat="server">Tiếp 
            tục</asp:HyperLink>
		    <div class="clear"><br /></div>
		</div>
	</div>
</asp:Content>

