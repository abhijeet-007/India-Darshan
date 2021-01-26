<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="View Details.aspx.cs" Inherits="View_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <table style="width: 100%">
                <tr>
                    <td style="width: 110px">
                        <asp:Label ID="Label2" runat="server" Text="Place"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("PName") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 110px">
                        <asp:Label ID="Label3" runat="server" Text="Package"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("PgName") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                        <asp:Label ID="Label4" runat="server" Text="Details"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("PgDetails") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 110px; height: 21px">
                        <asp:Label ID="Label5" runat="server" Text="Price"></asp:Label>
                    </td>
                    <td style="height: 21px">
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("PgPrice") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 110px">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
        SelectCommand="SELECT [PgName], [PgPrice], [PgDetails], [PName] FROM [PackageData] WHERE ([ID] = @ID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ID" QueryStringField="ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

