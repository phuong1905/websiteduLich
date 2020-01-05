<%@ Page Language="C#" MasterPageFile="~/Trangchu.master" AutoEventWireup="true" CodeFile="Thongtin.aspx.cs" Inherits="Default2" Title="Untitled Page" %>
<%@ Register TagPrefix="cc1" Namespace="SiteUtils" Assembly="CollectionPager" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="CSS/cssanh.css" rel="stylesheet" />
    <link href="CSS/menuchinh.css" rel="stylesheet" />
    <link href="CSS/StyleSheet.css" rel="stylesheet" />

        <div style=" margin-left:14px">
                     
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="MaTT" 
                DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                        <table width="100%">
                               <tr>
                                 <td style="width:600px;" valign="top">
                                   <asp:Image ID="Image1" runat="server" CssClass="imgHost" ImageUrl='<%#Eval("Anh") %>' Width="150px" Height="150px"></asp:Image>
                                   <div style="color:Black; font-size:18px; font-weight:bold"><asp:Label ID="TenTTLabel" CssClass="txtContentPrimary" runat="server" Text='<%# Eval("TenTT") %>' /></div>
                                   <div><asp:Label ID="NgayGuiLabel" runat="server" Text='<%# Eval("NgayGui") %>' /></div>
                                   <div><asp:Label ID="Label1" runat="server" Text='<%# Eval("SoLuoc") %>' /></div>
                                 </td>
                              </tr>
                              <tr>
                                 <td align="right" style="width: 100%;">
                                    <a href="Chitietthongtin.aspx?MaTT=<%#Eval("MaTT") %>">>>Chi tiết</a>
                                 </td>
                              </tr>
                              <tr><td class="line"></td></tr>
                            </table> 

                    </tr>

                </AlternatingItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table ID="itemPlaceholderContainer" runat="server" border="0" style="">
                                    <tr runat="server" style="">
                                    
                                    </tr>
                                    <tr ID="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="">
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                                Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                Text="Clear" />
                        </td>
                        <table width="100%">
                               <tr>
                                 <td style="width:600px;" valign="top">
                                   <asp:Image ID="Image1" runat="server" CssClass="imgHost" ImageUrl='<%#Eval("Anh") %>' Width="150px" Height="150px"></asp:Image>
                                   <div style="color:Black; font-size:18px; font-weight:bold"><asp:Label ID="TenTTLabel" CssClass="txtContentPrimary" runat="server" Text='<%# Eval("TenTT") %>' /></div>
                                   <div><asp:Label ID="NgayGuiLabel" runat="server" Text='<%# Eval("NgayGui") %>' /></div>
                                   <div><asp:Label ID="Label1" runat="server" Text='<%# Eval("SoLuoc") %>' /></div>
                                 </td>
                              </tr>
                              <tr>
                                 <td align="right" style="width: 100%;">
                                    <a href="Chitietthongtin.aspx?MaTT=<%#Eval("MaTT") %>">>>Chi tiết</a>
                                 </td>
                              </tr>
                              <tr><td class="line"></td></tr>
                            </table> 


                    </tr>
                </InsertItemTemplate>
                <SelectedItemTemplate>
                    <tr style="">
                        <table width="100%">
                               <tr>
                                 <td style="width:600px;" valign="top">
                                   <asp:Image ID="Image1" runat="server" CssClass="imgHost" ImageUrl='<%#Eval("Anh") %>' Width="150px" Height="150px"></asp:Image>
                                   <div style="color:Black; font-size:18px; font-weight:bold"><asp:Label ID="TenTTLabel" CssClass="txtContentPrimary" runat="server" Text='<%# Eval("TenTT") %>' /></div>
                                   <div><asp:Label ID="NgayGuiLabel" runat="server" Text='<%# Eval("NgayGui") %>' /></div>
                                   <div><asp:Label ID="Label1" runat="server" Text='<%# Eval("SoLuoc") %>' /></div>
                                 </td>
                              </tr>
                              <tr>
                                 <td align="right" style="width: 100%;">
                                    <a href="Chitietthongtin.aspx?MaTT=<%#Eval("MaTT") %>">>>Chi tiết</a>
                                 </td>
                              </tr>
                              <tr><td class="line"></td></tr>
                            </table> 


                    </tr>
                </SelectedItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>
                                No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EditItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                                Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                Text="Cancel" />
                        </td>
                        <table width="100%">
                               <tr>
                                 <td style="width:600px;" valign="top">
                                   <asp:Image ID="Image1" runat="server" CssClass="imgHost" ImageUrl='<%#Eval("Anh") %>' Width="150px" Height="150px"></asp:Image>
                                   <div style="color:Black; font-size:18px; font-weight:bold"><asp:Label ID="TenTTLabel" CssClass="txtContentPrimary" runat="server" Text='<%# Eval("TenTT") %>' /></div>
                                   <div><asp:Label ID="NgayGuiLabel" runat="server" Text='<%# Eval("NgayGui") %>' /></div>
                                   <div><asp:Label ID="Label1" runat="server" Text='<%# Eval("SoLuoc") %>' /></div>
                                 </td>
                              </tr>
                              <tr>
                                 <td align="right" style="width: 100%;">
                                    <a href="Chitietthongtin.aspx?MaTT=<%#Eval("MaTT") %>">>>Chi tiết</a>
                                 </td>
                              </tr>
                              <tr><td class="line"></td></tr>
                            </table> 


                    </tr>
                </EditItemTemplate>
                <ItemTemplate>
                    <tr style="">
                        <table width="100%">
                               <tr>
                                 <td style="width:600px;" valign="top">
                                   <asp:Image ID="Image1" runat="server" CssClass="imgHost" ImageUrl='<%#Eval("Anh") %>' Width="150px" Height="150px"></asp:Image>
                                   <div style="color:Black; font-size:18px; font-weight:bold"><asp:Label ID="TenTTLabel" CssClass="txtContentPrimary" runat="server" Text='<%# Eval("TenTT") %>' /></div>
                                   <div><asp:Label ID="NgayGuiLabel" runat="server" Text='<%# Eval("NgayGui") %>' /></div>
                                   <div><asp:Label ID="Label1" runat="server" Text='<%# Eval("SoLuoc") %>' /></div>
                                 </td>
                              </tr>
                              <tr>
                                 <td align="right" style="width: 100%;">
                                    <a href="Chitietthongtin.aspx?MaTT=<%#Eval("MaTT") %>">>>Chi tiết</a>
                                 </td>
                              </tr>
                              <tr><td class="line"></td></tr>
                            </table> 

                    </tr>
                </ItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                
                SelectCommand="SELECT * FROM [ThongTin] WHERE ([MaDMTT]=@MaDMTT) ORDER BY MaTT DESC">
                <SelectParameters>
                    <asp:QueryStringParameter Name="MaDMTT" QueryStringField="MaDMTT" />
                </SelectParameters>
            </asp:SqlDataSource>
           <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1" 
                PageSize="6">
               <Fields>
                   <asp:NumericPagerField />
               </Fields>
            </asp:DataPager>          
      </div>
      
</asp:Content>

