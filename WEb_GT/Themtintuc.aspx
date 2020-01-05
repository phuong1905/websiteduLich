<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/admin/Quanly.master" CodeFile="Themtintuc.aspx.cs" Inherits="admin_Themtintuc" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" ID="Content1" runat="server">
    <div style="border: 1px solid #FF0000; font-weight:bold; font-size:18px; text-align:center; color: #FF0000; height: 20px; width: 826px;">THÊM TIN TỨC</div>
    <div style="border: 1px solid #C0C0C0; text-align: center; width: 828px;">
    <table>
          
          <tr>
             <td class="style4">Tiêu đề :</td>
             <td class="style2"><asp:TextBox ID="txttieude" runat="server" Height="38px" 
                     Width="378px"></asp:TextBox></td>
          </tr>
          <tr>
          <td>Ảnh:</td>
             <td class="style3"><asp:TextBox ID="txtanh" runat="server" Width="380px"></asp:TextBox></td>
          </tr>
          <tr>
             <td>Sơ lược:</td>
             <td class="style3"><asp:TextBox ID="txtsoluoc" runat="server" Height="193px" 
                     Width="466px"></asp:TextBox></td>
          </tr>
          <tr>
             <td>Mô tả:</td>
             <td class="style3"><asp:TextBox ID="txtmota" runat="server"></asp:TextBox></td>
          </tr>
          <tr>
          <td>Ngày gửi:</td>
             <td class="style3"><asp:Calendar ID="txtngaygui" runat="server"></asp:Calendar></td>
          </tr>
          <tr>
             <td colspan="2"><asp:Button ID="btnhap" runat="server" Text="Nhập" 
                     onclick="btnhap_Click"></asp:Button></td>
          </tr>
    </table>
    </div>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style1
        {
            height: 26px;
        }
        .style2
        {
            height: 63px;
            width: 368px;
        }
        .style3
        {
            width: 368px;
        }
        .style4
        {
            height: 63px;
        }
    </style>

</asp:Content>
