<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="AllAttractions.aspx.cs" Inherits="AllAttractions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="PName" 
                    DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">
                    <ItemTemplate>
                        <table style="width: 100%">
                            <tr>
                                <td style="width: 114px">
                                    &nbsp;</td>
                                <td>
                                <asp:Label ID="Label2" runat="server" Text="Place Name"></asp:Label>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("PName") %>'></asp:Label>
                                    
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 114px">
                                    &nbsp;</td>
                                <td>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("PImage") %>' />
                                    
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 114px">
                                    &nbsp;</td>
                                <td>
                                <asp:Label ID="Label4" runat="server" Text="Description"></asp:Label>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("PDescription") %>'></asp:Label>
                                    
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 114px">
                                    &nbsp;</td>
                                <td>
                                <asp:Label ID="Label5" runat="server" Text="State"></asp:Label>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("SName") %>'></asp:Label>
                                    
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 114px">
                                    &nbsp;</td>
                                <td>
                                    <asp:Button ID="Button3" runat="server" CssClass="btn" CommandArgument='<%# Eval("PName") %>' 
                            CommandName="Attractionss" Text="View Packages" Width="250px" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
                    SelectCommand="SELECT * FROM [PlaceData]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

