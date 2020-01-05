<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/admin/Quanly.master" CodeFile="Dangnhap.aspx.cs" Inherits="Dangnhap" %>
<%--<%@ Register src="ucontrol/dangnhap.ascx" tagname="dangnhap" tagprefix="uc1" %>
--%><asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server" ID="Conten1">
    <link href="../CSS/cssanh.css" rel="stylesheet" />
    <link href="../CSS/menuchinh.css" rel="stylesheet" />
    <link href="../CSS/StyleSheet.css" rel="stylesheet" />

   <div style="margin-left:100px">
     <asp:Login ID="Login1" runat="server" Width="249px" 
           onauthenticate="Login1_Authenticate">
         <LayoutTemplate>
             <table border="0" cellpadding="1" cellspacing="0" 
                 style="border-collapse:collapse;">
                 <tr>
                     <td>
                         <table border="0" cellpadding="0">
                             <tr>
                                 <td align="center" colspan="2">
                                     ĐĂNG NHẬP</td>
                             </tr>
                             <tr>
                                 <td align="right">
                                     <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Tên đăng nhập:</asp:Label>
                                 </td>
                                 <td>
                                     <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                         ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                         ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                 </td>
                             </tr>
                             <tr>
                                 <td align="right">
                                     <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Mật khẩu:</asp:Label>
                                 </td>
                                 <td>
                                     <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                         ControlToValidate="Password" ErrorMessage="Password is required." 
                                         ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                 </td>
                             </tr>
                             <tr>
                                 <td colspan="2">
                                     <asp:CheckBox ID="RememberMe" runat="server" Text="Ghi nhớ lần sau." />
                                 </td>
                             </tr>
                             <tr>
                                 <td align="center" colspan="2" style="color:Red;">
                                     <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                 </td>
                             </tr>
                             <tr>
                                 <td align="center" colspan="2">
                                     <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Đăng nhập" 
                                         ValidationGroup="Login1" />
                                    <asp:Button ID="Button1" runat="server" Text="Thoát" onclick="Button1_Click1"></asp:Button>
                                 </td>
                             </tr>
                         </table>
                     </td>
                 </tr>
             </table>
         </LayoutTemplate>
     </asp:Login>
     </div>
</asp:Content>
