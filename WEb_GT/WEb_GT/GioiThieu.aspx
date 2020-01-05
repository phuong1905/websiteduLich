<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Trangchu.master" CodeFile="GioiThieu.aspx.cs" Inherits="GioiThieu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="CSS/cssanh.css" rel="stylesheet" />
    <link href="CSS/menuchinh.css" rel="stylesheet" />
    <link href="CSS/StyleSheet.css" rel="stylesheet" />
<div style="margin-left:20px">
<asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
    <ItemTemplate>
     <div style="font-family:Times New Roman; font-weight:bold; font-size:18px">
        <asp:Label ID="TieuDeLabel" runat="server" Text='<%# Eval("TieuDe") %>'></asp:Label>
     </div>
      <div>
        <asp:Label ID="NoiDungLabel" runat="server" Text='<%# Eval("NoiDung") %>' />
      </div>
    </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [TieuDe], [NoiDung] FROM [GioiThieu]">
    </asp:SqlDataSource>
    </div>
</asp:Content>
