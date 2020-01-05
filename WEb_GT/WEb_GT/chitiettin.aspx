<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Trangchu.master" CodeFile="chitiettin.aspx.cs" Inherits="chitiettin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="CSS/cssanh.css" rel="stylesheet" />
    <link href="CSS/menuchinh.css" rel="stylesheet" />
    <link href="CSS/StyleSheet.css" rel="stylesheet" />
    
    <div style="width:602px; padding-left:5px;margin-left:17px;padding-bottom:10px">
         <table>
              <tr>
                <td >
                 <div style="color:Blue; font-size:20px; text-align:center"><asp:Label ID="lbtieudechinh" runat="server"></asp:Label></div>
                </td>
              </tr>
              <tr>
               <td><div style="text-align:center"><asp:Image ID="img" runat="server" Height="250px" Width="350px"></asp:Image></div></td>
              </tr>
              <tr>
                  
                  <td>
                  <div style="color:Black; font-size:18px"><asp:Label ID="lbsoluoc" runat="server"></asp:Label></div>
                  <div><asp:Label ID="lbmota" runat="server"></asp:Label></div>
                  </td>
              </tr>    
              <tr>
                <td ><div style="text-align:right"><asp:Label ID="lbngaygui" runat="server"></asp:Label></div></td> 
              </tr>
         </table>
    </div>
</asp:Content>
