<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/admin/Quanly.master"CodeFile="thugopy.aspx.cs" Inherits="admin_thugopy" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" ID="Content1" runat="server">
    <link href="../CSS/cssanh.css" rel="stylesheet" />
    <link href="../CSS/menuchinh.css" rel="stylesheet" />
    <link href="../CSS/StyleSheet.css" rel="stylesheet" />
     <div>
         <div style=" font-family:Times New Roman; font-size:20px; font-weight: bold">DANH MỤC THƯ GÓP Ý</div>
         <div>
             <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                 AutoGenerateColumns="False" DataKeyNames="MaGY" DataSourceID="SqlDataSource1" 
                 Width="804px">
                 <Columns>
                     <asp:BoundField DataField="MaGY" HeaderText="STT" InsertVisible="False" 
                         ReadOnly="True" SortExpression="MaGY" />
                     <asp:BoundField DataField="HoTen" HeaderText="Họ tên" SortExpression="HoTen" />
                     <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                     <asp:BoundField DataField="NoiDung" HeaderText="Nội dung" 
                         SortExpression="NoiDung" />
                 </Columns>
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                 SelectCommand="SELECT [MaGY], [HoTen], [Email], [NoiDung] FROM [GopY]">
             </asp:SqlDataSource>
         </div>
     </div>
</asp:Content>
