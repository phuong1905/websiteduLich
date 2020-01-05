<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Trangchu.master" CodeFile="Quydinhwebsite.aspx.cs" Inherits="Quydinhwebsite" %>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1" ID="Content1">
    <link href="CSS/cssanh.css" rel="stylesheet" />
    <link href="CSS/menuchinh.css" rel="stylesheet" />
    <link href="CSS/StyleSheet.css" rel="stylesheet" />
     <table style="width: 580px; margin-left:40px"  >
     <tr>
        <td>&nbsp &nbsp &nbsp</td>
     </tr>
         <tr>
            <td style="font-size: 18px; font-weight: bold; color: #0000FF; text-align: center">QUY ĐỊNH THÀNH VIÊN</td>
         </tr>
         <tr>
            <td>
            1. Bạn phải cung cấp đầy đủ, đúng và trung thực các thông tin yêu cầu trong phần đăng ký thành viên.
<br />
2 Thông tin bạn đăng rao (mua, bán, thuê,...) phải đúng danh mục, phải trung thực, không mang tính chất phá hoại hay làm ảnh hưởng xấu đến người khác hay doanh nghiệp khác.
<br />
3. Nội dung thông tin bạn đăng không được đăng lặp lại hơn 1 lần, không được dùng toàn chữ HOA.
            </td>
         </tr>
         <tr>
            <td align="left" style="color: #000000; font-size: 16px; font-weight: bold;">
            
                <asp:CheckBox ID="ch1" runat="server" 
                    Text="Tôi đã đọc và đồng ý với nội quy của trang web" />
            
            </td>
            </tr>
            <tr>
               <td style="text-align: center">
                 
                   <asp:Button ID="btdongy" runat="server" Text="Đồng ý" onclick="btdongy_Click" />
                   <asp:Button ID="bthuy" runat="server" Text="Hủy bỏ" onclick="bthuy_Click" />
                 
               </td>
            </tr>
         <tr>
            <td style="color:Red"><asp:Label ID="lbtinnhan" runat="server"></asp:Label></td>
         </tr>
     </table>
</asp:Content>

