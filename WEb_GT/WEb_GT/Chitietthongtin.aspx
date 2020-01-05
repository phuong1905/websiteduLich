<%@ Page Language="C#" MasterPageFile="~/Trangchu.master" AutoEventWireup="true" CodeFile="Chitietthongtin.aspx.cs" Inherits="Default2" Title="Untitled Page" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="CSS/cssanh.css" rel="stylesheet" />
    <link href="CSS/menuchinh.css" rel="stylesheet" />
    <link href="CSS/StyleSheet.css" rel="stylesheet" />

     <div style="margin-left:20px">
        <table cellpadding="0" cellspacing="0" width="100%">
             <tr>
                 <td>
                    <div style=" font-size:20px; font-weight:bold"><asp:Label ID="lbtenthongtin" runat="server"></asp:Label></div>
                    <div style="color:#999966"><asp:Label ID="lbngaygui" runat="server"></asp:Label></div>
                     <div style=" text-align:center"><asp:Image ID="img" runat="server" Width="350px" Height="250px"></asp:Image></div>
                    <div style="margin-top:10px"><asp:Label ID="lbsoluoc" runat="server" ></asp:Label></div>
                    <div><asp:Label ID="lbchitiet" runat="server" ></asp:Label></div>
                 </td>
              </tr>
              <tr>
                  <td align="right" style="padding-top:50px">
                  <asp:HyperLink ID="hplPrevious" runat="server" Style="position: relative" NavigateUrl="~/trangchu.aspx"><< Trở về</asp:HyperLink>
                       <div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v5.0"></script>
                  <div class="fb-share-button" data-href="https://developers.facebook.com/docs/plugins/" data-layout="button" data-size="small"><a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&amp;src=sdkpreparse" class="fb-xfbml-parse-ignore">Chia sẻ</a></div>
                  </td>
                
              </tr>
        </table>
     </div>
</asp:Content>

