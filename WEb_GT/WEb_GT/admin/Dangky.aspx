<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/admin/Quanly.master" CodeFile="Dangky.aspx.cs" Inherits="Dangky" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" ID="Content1" runat="server">
    <link href="../CSS/cssanh.css" rel="stylesheet" />
    <link href="../CSS/menuchinh.css" rel="stylesheet" />
    <link href="../CSS/StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        div#khung{
            color:red;
            font-size:20px;
            height:400px;
        }
        div#khung>fieldset{
            border:Red;
            margin-left:100px;
            height:200px;
            width:700px;
        }
        div#khung>fieldset>fieldset{
            border-bottom:none;
            border-left:none;
            border-right:none;
        }
        div#khung>fieldset>fieldset>legend{
            text-align:center;
            font-size:15px;
            color:Blue;
        }
        div#khung>fieldset>fieldset>a{
            margin-right:72px;
            float:right;
        }
        div#khung>fieldset>fieldset>a:hover{
            color:Blue;
            text-decoration:underline;
        }
        .txt{
            width:75%;
        }
        .nut{
            height: 30px;
            border-radius:7px;
        }
        .cot1 {
            width: 160px;
        }
</style>
    <div id="khung">
    <fieldset>
        <h1>ĐĂNG KÝ</h1>
            <fieldset>
                <legend>Thông tin cá nhân</legend> 
               <table style="width: 564px; margin-left:61px">
                      <tr>
                         <td colspan="2">&nbsp &nbsp &nbsp</td>
                      </tr>
                      <tr>
                          <td colspan="2" style="font-size:22px; font-weight:bold; color:Red; text-align:center">ĐĂNG KÝ THÀNH VIÊN</td>
                      </tr>
                      <tr>
                         <td colspan="2">&nbsp &nbsp</td>
                      </tr>
                      <tr>
                         <td class="cot1">Tên tài khoản:</td>
                         <td><asp:TextBox ID="txttaikhoan" runat="server" Width="222px"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                 ControlToValidate="txttaikhoan" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                          </td>
                      </tr>
                      <tr>
                         <td class="cot1">Mật khẩu:</td>
                         <td><asp:TextBox ID="txtmatkhau" runat="server" Width="222px" TextMode="Password"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                 ControlToValidate="txtmatkhau" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                          </td>
                      </tr>
                      <tr>
                         <td class="style2">Nhập lại mật khẩu:</td>
                         <td class="style3"><asp:TextBox ID="txtnhaplai" runat="server" Width="222px" 
                                 TextMode="Password"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                 ControlToValidate="txtnhaplai" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                             <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                 ControlToCompare="txtmatkhau" ControlToValidate="txtnhaplai" 
                                 ErrorMessage="Phải giống mật khẩu trên"></asp:CompareValidator>
                          </td>
                      </tr>
                      <tr>
                         <td class="cot1">Tên hiển thị:</td>
                         <td><asp:TextBox ID="txttenhienthi" runat="server" Width="222px"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                 ControlToValidate="txttenhienthi" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                          </td>
                      </tr>
           
                      <tr>
                         <td class="cot1">Email:</td>
                         <td><asp:TextBox ID="txtemail" runat="server" Width="222px"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                 ControlToValidate="txtemail" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                 ControlToValidate="txtemail" ErrorMessage="Email phải đúng định dạng" 
                                 ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                          </td>
                      </tr>
                      <tr>
                         <td class="cot1">Câu hỏi bảo mật:</td>
                         <td>
                             <asp:DropDownList ID="txtcauhoi" runat="server" Width="222px">
                                 <asp:ListItem>Tên người yêu bạn là gì?</asp:ListItem>
                                 <asp:ListItem>Tên con vật bạn yêu thích nhất?</asp:ListItem>
                                 <asp:ListItem>Tên món ăn bạn thích nhất?</asp:ListItem>
                                 <asp:ListItem>Tên người giáo viên đầu tên của bạn?</asp:ListItem>
                                 <asp:ListItem>Tên món đồ bạn thích nhất</asp:ListItem>
                             </asp:DropDownList>
                          </td>
                      </tr>
                      <tr>
                         <td class="cot1">Câu trả lời:</td>
                         <td>
                             <asp:TextBox ID="txttraloi" runat="server" 
                                 ontextchanged="txttraloi_TextChanged" Width="222px"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                 ControlToValidate="txttraloi" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                          </td>
                      </tr>
                      <tr>
                         <td colspan="2" style="color:Red"><asp:Label ID="lbtinnhan" runat="server"></asp:Label></td>
                      </tr>
                      <tr>
                         <td colspan="2" align="center">
                          <asp:Button ID="Button1" runat="server" Text="Đăng kí" onclick="Button1_Click"></asp:Button>
                          <asp:Button ID="Button2" runat="server" Text="Hủy bỏ" onclick="Button2_Click"></asp:Button>
                         </td>
                      </tr>
                 </table>
            </fieldset>
        </fieldset>
    </div>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .cot1
        {
            width: 161px;
        }
        .style2
        {
            width: 161px;
            height: 24px;
        }
        .style3
        {
            height: 24px;
        }
    </style>

</asp:Content>


