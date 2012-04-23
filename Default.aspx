<%@ Page Language="C#" MasterPageFile="~/MasterUserPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Users_HomePage" Title="Trang chủ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="ja-moduletable moduletable  clearfix" id="Mod88">
	    <h3>Sản phẩm bán chạy</h3>
	    <div class="ja-box-ct clearfix">
	        <script type="text/javascript" src="js/ja_003.js"></script>
            <script type="text/javascript">
                var jsslider88 = null;
		    </script>
	                                                                                                                                                                                                                                                                                                                    <script type="text/javascript">
	        //<!--[CDATA[
	                                      
	        function sliderInit88() {
	            var ja_options = {
	                w: 165,
	                h: 165,
	                num_elem: 4,
	                mode: 'horizontal', //horizontal or virtical
	                direction: 'left', //horizontal: left or right; virtical: up or down
	                total: 10,
	                url: '',
	                wrapper: 'ja-slider-center' + 88,
	                duration: 2000,
	                interval: 3000,
	                running: false,
	                auto: 1
	            };

	            jsslider88 = new JS_Slider(ja_options);

	            elems = $('ja-slider-center' + 88).getElementsByClassName('vm_element');
	            for (i = 0; i < elems.length; i++) {
	                jsslider88.update(elems[i].innerHTML, i);
	            }
	            jsslider88.setPos(null);
	            if (jsslider88.options.auto) {
	                jsslider88.nextRun();
	            }
	        }

	        jaAddEvent(window, 'load', sliderInit88);

	        function setDirection88(direction, ret) {
	            jsslider88.options.direction = direction;
	            if (jsslider88.options.auto) {
	                if (ret) {
	                    if (direction == 'right') {
	                        $('ja-slide-left-img' + 88).src = 'Images/re-left.gif';
	                    } else {
	                        $('ja-slide-right-img' + 88).src = 'Images/re-right.gif';
	                    }
	                    jsslider88.options.interval = 3000;
	                    jsslider88.options.duration = 2000;
	                }
	                else {
	                    if (direction == 'right') {
	                        $('ja-slide-left-img' + 88).src = 'Images/re-left-hover.gif';
	                    } else {
	                        $('ja-slide-right-img' + 88).src = 'Images/re-right-hover.gif';
	                    }
	                    jsslider88.options.interval = 800;
	                    jsslider88.options.duration = 500;
	                    jsslider88.nextRun();
	                }
	            }
	            else {
	                if (ret) {
	                    if (direction == 'right') {
	                        $('ja-slide-left-img' + 88).src = 'Images/re-left.gif';
	                    } else {
	                        $('ja-slide-right-img' + 88).src = 'Images/re-right.gif';
	                    }
	                    jsslider88.options.auto = 1;
	                }
	                else {
	                    if (direction == 'right') {
	                        $('ja-slide-left-img' + 88).src = 'Images/re-left-hover.gif';
	                    } else {
	                        $('ja-slide-right-img' + 88).src = 'Images/re-right-hover.gif';
	                    }
	                    jsslider88.options.interval = 500;
	                    jsslider88.options.duration = 500;
	                    jsslider88.options.auto = 1;
	                    jsslider88.nextRun();
	                }
	            }
	        }
	        //]]-->
	    </script>

	        <div id="ja-slider">
		        <div id="ja-slider-left" style="height: 165px; line-height: 165px;">
			        <img class="ja-slide-left-img" id="ja-slide-left-img88" src="Images/Products/re-left.gif" alt="Left direction" onmouseover="javascript: setDirection88('right',0);" onmouseout="javascript: setDirection88('right',1);" title="Left direction" />
		        </div>
		        <div style="position: relative; overflow: hidden; width: 660px; height: 165px;" class="ja-slider-center" id="ja-slider-center88">
                    <asp:DataList ID="DataList1" runat="server" DataKeyField="MaSP" 
                        DataSourceID="SanPhamBanchay" RepeatLayout="Flow" RepeatDirection="Horizontal">
                         <ItemTemplate>
                            <div class="vm_element"> 
                                <asp:HyperLink ID="HyperLink2" runat="server" ToolTip='<%# Eval("TenSP") %>' NavigateUrl='<%# Eval("MaSP","ProductDetail.aspx?id={0}") %>'> 
                                <span style="font-weight:bold;"><%# Eval("TenSP") %></span>
                                </asp:HyperLink>
                                <br>
                                <asp:HyperLink ID="HyperLink1" runat="server" ToolTip='<%# Eval("TenSP") %>' NavigateUrl='<%# Eval("MaSP","ProductDetail.aspx?id={0}") %>'>
	                                <img src="Images/Products/<%# Eval("AnhSP") %>" alt="<%# Eval("TenSP") %>" border="0" height="120" width="120">
                                 </asp:HyperLink><br>
	                            <span class="productPrice">$ <%# Eval("DonGia") %></span>
                             </div>
                         </ItemTemplate>
                      </asp:DataList>
                     
	                <asp:SqlDataSource ID="SanPhamBanchay" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:TNTCOMPUTERConnectionString %>" 
                        SelectCommand="SanPham_Top" SelectCommandType="StoredProcedure">
                    </asp:SqlDataSource>
	            
	            </div>
		        <div id="ja-slider-right" style="height: 165px;">
			        <img class="ja-slide-right-img" id="ja-slide-right-img88" src="Images/Products/re-right.gif" alt="Right direction" onmouseover="javascript: setDirection88('left',0);" onmouseout="javascript: setDirection88('left',1);" title="Right direction" />
		        </div>
	        </div>
        </div>
    </div>     
     <% //lít san pham %>
     <div class="ja-moduletable moduletable  clearfix" id="Mod79">
	    <h3>Sản phẩm mới </h3><div class="ja-box-ct clearfix">
	        <asp:DataList ID="DataList3" runat="server" DataKeyField="MaSP" 
                DataSourceID="SanPhammoi" RepeatLayout="Flow" RepeatDirection="Horizontal" 
                >
               <ItemTemplate>
                  <div style="width:25%;height: 205px; padding: 10px 0; float: left; text-align: center;border-bottom: 1px dotted #ccc;border-right: 0px dotted #ccc; margin:0 auto;">
                     <asp:HyperLink ID="HyperLink3" runat="server" ToolTip='<%# Eval("TenSP") %>' NavigateUrl='<%# Eval("MaSP","ProductDetail.aspx?id={0}") %>'> 
                     <span style="font-weight:bold;"> <%# Eval("TenSP") %> </span></asp:HyperLink>
					    <br>
                        
					    <asp:HyperLink ID="HyperLink1" runat="server" ToolTip='<%# Eval("TenSP") %>' NavigateUrl='<%# Eval("MaSP","ProductDetail.aspx?id={0}") %>'> 
						    <img src="Images/Products/<%# Eval("AnhSP") %>" alt="<%# Eval("TenSP") %>" border="0" height="120" width="120">
					    </asp:HyperLink>
					    <br>
					    <span class="productPrice">$ <%# Eval("Dongia") %></span>
					    <br>
                            <asp:LinkButton ID="btn_AddToCart" OnCommand="btn_AddToCart_Click" CommandArgument='<%# Eval("MaSP") %>' class="addtocart_button_module" ToolTip="Add to Cart" runat="server">Add 
                      to Cart</asp:LinkButton>
					         
					    <br>
                  
                    </div>
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SanPhammoi" runat="server" 
                ConnectionString="<%$ ConnectionStrings:TNTCOMPUTERConnectionString %>" 
                SelectCommand="Sanpham_Moi" SelectCommandType="StoredProcedure">
            </asp:SqlDataSource>
            </div>
	    </div>
</asp:Content>