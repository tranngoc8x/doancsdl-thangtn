<%@ Page Language="C#" MasterPageFile="~/MasterUserPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" Title="Liên hệ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="ja-moduletable moduletable  clearfix" id="Mod88">
 <h3>Liên hệ</h3>
<form id="contactf" class="styleform" >
 <table cellpadding="10" cellspacing="10" id="FormLienKe" align="center">
      
        <tr>
            <td style="width: 30%" colspan="2">
            Nếu bạn có bất cứ thắc mắc, ý kiến đóng góp hoặc câu hỏi gì liên quan đến website, 
            hãy liên lạc với tôi bằng form dưới đây. Chúng tôi sẽ hồi âm bạn sớm nhất có thể. 
            Chúng tôi luôn cố gắng trả lời tất cả những email gửi tới.
               </td>
        </tr>
        <tr>
            <td style="width: 30%">
                Họ và tên:<span class="style1"> *</span></td>
            <td style="width: 70%">
                <asp:TextBox ID="txtHoTen" runat="server" Width="300px"  />&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtHoTen" ErrorMessage="* Vui lòng điền tên bạn" 
                    Display="Dynamic" />
            </td>
        </tr>
        <tr>
            <td style="width: 30%">
                Địa chỉ&nbsp;</td>
            <td style="width: 70%">
                <asp:TextBox ID="txtDiaChi" runat="server" Width="300px"   />
            </td>
        </tr>
        <tr>
            <td style="width: 30%">
                Điện Thoại:</td>
            <td style="width: 70%">
                <asp:TextBox ID="txtDienThoai" runat="server" Width="300px"   />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationExpression="\w+([0-9]\w+)" ControlToValidate="txtDienThoai" runat="server" ErrorMessage="* Điện thoại không đúng định dạng "></asp:RegularExpressionValidator>
            </td>
            
        </tr>
        <tr>
            <td style="width: 30%">
                Email:<span class="style1"> *</span></td>
            <td style="width: 70%">
                <asp:TextBox ID="txtEmail" runat="server" Width="300px"   />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="* Vui lòng nhập Email" 
                    Display="Dynamic" />
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  runat="server" 
                    ErrorMessage="* Email không hợp lệ" ControlToValidate="txtEmail" 
                    Display="Dynamic"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 30%" valign="top">
                Nội dung:<span> *</span></td>
            <td >
                <asp:TextBox ID="txtNoiDung" class="text-input textarea wysiwyg" 
                TextMode="MultiLine" Rows="10" runat="server" Width="500px" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtNoiDung" ErrorMessage="* Nội dung không được để trống !" 
                    Display="Dynamic" />
            </td>
        </tr>
        <tr><td>&nbsp;</td>
            <td valign="top" align="left" id="LinkOfList">
                <asp:Button ID="btnSend" runat="server" Text="Gửi liên hệ" 
                    onclick="btnSend_Click"  class="buttonf"/>
                </td>
        </tr>
        <tr>
            <td valign="top" colspan="2" align="center" id="LinkOfList">
                <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
        </tr>
        </table>
 
       </div>
</asp:Content>

