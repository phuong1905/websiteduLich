<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/admin/Quanly.master" CodeFile="ThemDMThongTin.aspx.cs" Inherits="admin_ThemDMThongTin" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" ID="Content1" runat="server">
     <div style="margin-left:100px">
         <table style="width: 485px">
               <tr>
                   <td colspan="2" style="text-align:center; color:Blue; font-size:20px; font-weight:bold">
                       THÊM DANH MỤC THÔNG TIN
                   </td>
               </tr>
              
               <tr>
                    <td style=" font-family:Times New Roman; font-size:15px">Tên thông tin:</td>
                    <td>
                    <asp:TextBox ID="txtten" runat="server" Width="320px"></asp:TextBox>
                    </td>
               </tr>
               <tr>
                    <td style=" font-family:Times New Roman; font-size:15px">Ghi chú:</td>
                    <td>
                    <textarea id="txtghichu" runat="server" rows="2" cols="20" style="width:320px; height:230px"></textarea>
                    <%--<asp:TextBox ID="txtghichu" Rows="20" Columns="20" runat="server" Width="320px" Height="230px"></asp:TextBox>--%>
                    </td>
               </tr>
               <tr>
                    <td colspan="2" align="center">
                     <asp:Button ID="btnhap" runat="server" Text="Nhập" onclick="btnhap_Click" Width="100px" Height="30px"></asp:Button>
                     
                    </td>
               </tr>
         </table>
        <div>
          <asp:GridView ID="dmthongtin" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="MaDMTT" DataSourceID="SqlDataSource1" 
                Height="289px" style="margin-left: 60px" Width="541px">
     <Columns>
         <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
         <asp:BoundField DataField="MaDMTT" HeaderText="MaDMTT" ReadOnly="True" 
             SortExpression="MaDMTT" />
         <asp:BoundField DataField="TenDMTT" HeaderText="TenDMTT" 
             SortExpression="TenDMTT" />
         <asp:BoundField DataField="GhiChu" HeaderText="GhiChu" 
             SortExpression="GhiChu" />
     </Columns>
 </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [DMThongTin] WHERE [MaDMTT] = @MaDMTT" 
        InsertCommand="INSERT INTO [DMThongTin] ([MaDMTT], [TenDMTT], [GhiChu]) VALUES (@MaDMTT, @TenDMTT, @GhiChu)" 
        SelectCommand="SELECT [MaDMTT], [TenDMTT], [GhiChu] FROM [DMThongTin]" 
        UpdateCommand="UPDATE [DMThongTin] SET [TenDMTT] = @TenDMTT, [GhiChu] = @GhiChu WHERE [MaDMTT] = @MaDMTT">
        <DeleteParameters>
            <asp:Parameter Name="MaDMTT" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenDMTT" Type="String" />
            <asp:Parameter Name="GhiChu" Type="String" />
            <asp:Parameter Name="MaDMTT" Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="MaDMTT" Type="String" />
            <asp:Parameter Name="TenDMTT" Type="String" />
            <asp:Parameter Name="GhiChu" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
     </div>
     </div>
     
</asp:Content>
