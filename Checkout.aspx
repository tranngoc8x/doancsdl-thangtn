<%@ Page Language="C#" MasterPageFile="~/MasterUserPage.master" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="Checkout" Title="Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="ja-moduletable moduletable  clearfix" id="Mod79">
	    <h3>Xác nhận mua hàng</h3><div class="ja-box-ct clearfix">
			<% if (Session["uid"] == null)
      {%>
			<div style="width: 100%;margin: 0 auto;">
                <h2>&nbsp;Bạn cần đăng nhập để tiếp tục</h2>
                <h4>&nbsp;Bấm vào <a href="Dangnhap.aspx"> đây để đăng nhập </a>nếu bạn đã có tài khoản.Hoặc bấm vào  <a href="Dangky.aspx">đây để đăng ký</a> tài khoản mới</h4>
            </div>
        <%}
      else
      {%>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="CustomerID" 
                DataSourceID="DetailNguoimua" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <ItemTemplate>
                      <p>&nbsp;<strong>Họ tên người mua :</strong> <%# Eval("Fullname") %></p>
                      <p>&nbsp;<strong>Số điện thoại :</strong> <%# Eval("Phone") %></p>
                      <p>&nbsp;<strong>Email : </strong><%# Eval("Email") %></p>
                      <p>&nbsp;<strong>Địa chỉ giao hàng : </strong><%# Eval("Address") %> </p>
                </ItemTemplate>
            </asp:DataList>
            <h4>Chi tiết đơn hàng</h4>
			<asp:SqlDataSource ID="DetailNguoimua" runat="server" 
                ConnectionString="<%$ ConnectionStrings:TNTCOMPUTERConnectionString %>" 
                SelectCommand="Chitiet_Nguoimua" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:SessionParameter Name="id" SessionField="uid" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
			<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns=False CssClass="CartItems"  Width=100%>
                <Columns>
                  
                    <asp:ImageField DataImageUrlField="AnhSP" DataImageUrlFormatString="Images/Products/{0}"  HeaderText="Ảnh sản phẩm" ItemStyle-Width="100px" >
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle Width="100px" VerticalAlign="Middle" HorizontalAlign="Center" CssClass="imageCart"></ItemStyle>
					</asp:ImageField>
                    <asp:BoundField DataField="TenSP" HeaderText="Sản phẩm">
                        <HeaderStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                   
                    <asp:TemplateField HeaderText="Số lượng">
                        <ItemTemplate>
                           <%# Eval("SoLuong")%>
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
				</Columns>
			</asp:GridView>
            
            <asp:LinkButton ID="changadd" runat="server" 
                class="addtocart_button_module actioncart actioncart-changeadd" 
                onclick="changadd_Click">Thay đổi địa chỉ mua hàng</asp:LinkButton>
            <asp:HyperLink class="addtocart_button_module actioncart actioncart-checkout"  NavigateUrl="FinishCart.aspx" ID="finishcart" runat="server">Kết thúc</asp:HyperLink>
           <%} %>
		    <div class="clear"><br /></div>
		</div>
	</div>
</asp:Content>


