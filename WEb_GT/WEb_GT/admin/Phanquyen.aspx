<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/admin/Quanly.master" CodeFile="Phanquyen.aspx.cs" Inherits="admin_Phanquyen" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server" ID="Content1">
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="MaTK" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="MaTK" HeaderText="MaTK" InsertVisible="False" 
            ReadOnly="True" SortExpression="MaTK" />
        <asp:BoundField DataField="TenTK" HeaderText="TenTK" SortExpression="TenTK" />
        <asp:BoundField DataField="MatKhau" HeaderText="MatKhau" 
            SortExpression="MatKhau" />
        <asp:BoundField DataField="NhapLai" HeaderText="NhapLai" 
            SortExpression="NhapLai" />
        <asp:BoundField DataField="TenHienThi" HeaderText="TenHienThi" 
            SortExpression="TenHienThi" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="CauHoi" HeaderText="CauHoi" 
            SortExpression="CauHoi" />
        <asp:BoundField DataField="CauTraLoi" HeaderText="CauTraLoi" 
            SortExpression="CauTraLoi" />
        <asp:BoundField DataField="MaNhom" HeaderText="MaNhom" 
            SortExpression="MaNhom" />
    </Columns>
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [TaiKhoan] WHERE [MaTK] = @MaTK" 
        InsertCommand="INSERT INTO [TaiKhoan] ([TenTK], [MatKhau], [NhapLai], [TenHienThi], [Email], [CauHoi], [CauTraLoi], [MaNhom]) VALUES (@TenTK, @MatKhau, @NhapLai, @TenHienThi, @Email, @CauHoi, @CauTraLoi, @MaNhom)" 
        SelectCommand="SELECT [MaTK], [TenTK], [MatKhau], [NhapLai], [TenHienThi], [Email], [CauHoi], [CauTraLoi], [MaNhom] FROM [TaiKhoan]" 
        UpdateCommand="UPDATE [TaiKhoan] SET [TenTK] = @TenTK, [MatKhau] = @MatKhau, [NhapLai] = @NhapLai, [TenHienThi] = @TenHienThi, [Email] = @Email, [CauHoi] = @CauHoi, [CauTraLoi] = @CauTraLoi, [MaNhom] = @MaNhom WHERE [MaTK] = @MaTK">
        <DeleteParameters>
            <asp:Parameter Name="MaTK" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenTK" Type="String" />
            <asp:Parameter Name="MatKhau" Type="String" />
            <asp:Parameter Name="NhapLai" Type="String" />
            <asp:Parameter Name="TenHienThi" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="CauHoi" Type="String" />
            <asp:Parameter Name="CauTraLoi" Type="String" />
            <asp:Parameter Name="MaNhom" Type="String" />
            <asp:Parameter Name="MaTK" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="TenTK" Type="String" />
            <asp:Parameter Name="MatKhau" Type="String" />
            <asp:Parameter Name="NhapLai" Type="String" />
            <asp:Parameter Name="TenHienThi" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="CauHoi" Type="String" />
            <asp:Parameter Name="CauTraLoi" Type="String" />
            <asp:Parameter Name="MaNhom" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
 </asp:Content>
