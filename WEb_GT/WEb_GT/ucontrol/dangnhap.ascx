<%@ Control Language="C#" AutoEventWireup="true" CodeFile="dangnhap.ascx.cs" Inherits="ucontrol_dangnhap" %>
<link href="../CSS/cssanh.css" rel="stylesheet" />
<link href="../CSS/menuchinh.css" rel="stylesheet" />
<link href="../CSS/StyleSheet.css" rel="stylesheet" />
<table>
      <tr>
         <td colspan="2" 
              style="text-align:center; font-size: 18px; font-weight: bold; color: #0000FF;">ĐĂNG NHẬP</td>
      </tr>
      <tr>
         <td>Tên đăng nhập:</td>
         <td><asp:TextBox ID="txttendangnhap" runat="server" Width="159px"></asp:TextBox></td>
      </tr>
      <tr>
         <td>Mật khẩu:</td>
         <td><asp:TextBox ID="txtmatkhau" runat="server" Width="155px"></asp:TextBox></td>
      </tr>
      <tr><td colspan="2">
          <asp:CheckBox ID="ch1" runat="server" Text="Ghi nhớ" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#6699FF" NavigateUrl="~/Quydinhwebsite.aspx">Đăng ký</asp:HyperLink>
          </td></tr>
      <tr>
          <td colspan="2" 
              style="text-align: center; color: #000000; font-weight: bold; font-size: 16px">
          <asp:Button ID="Button1" runat="server" Text="Đăng nhập" Width="100px" ValidationGroup="Login1"></asp:Button>
          <asp:Button ID="Button2" runat="server" Text="Hủy bỏ" Width="100px"></asp:Button>
          </td>
      </tr>
</table>