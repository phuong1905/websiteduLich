<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/admin/Quanly.master" CodeFile="gioithieu.aspx.cs" Inherits="admin_gioithieu" %>
<%@ Register assembly="FredCK.FCKeditorV2" namespace="FredCK.FCKeditorV2" tagprefix="FCKeditorV2" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" ID="Content1" runat="server"> 
     <div style="float:left; margin-left:150px">
        <div style=" float:left;">
           Tiêu đề:
        </div>
        <div><div><div></div></div></div><div></div><div></div>
        <div style="float:left">
          <asp:TextBox ID="txttieude" runat="server" Width="504px"></asp:TextBox>
        </div>
        <div></div>
        <div></div><div></div><div></div>
        <div></div><div></div>
        <div style="float:left">
            Nội dung bài giới thiệu:
        </div>
        <div>
         <FCKeditorV2:FCKeditor ID="fcnoidung" runat="server" BasePath="~/FCKeditor/" 
                     ToolbarSet="hmweb" Height="450px" Width="670px">
         </FCKeditorV2:FCKeditor>
        </div>
        <div>
             <asp:Button ID="Button1" runat="server" Text="Thêm" onclick="Button1_Click"></asp:Button>
             <asp:Button ID="Button2" runat="server" Text="Hủy bỏ"></asp:Button>
        </div>
     </div>
</asp:Content>