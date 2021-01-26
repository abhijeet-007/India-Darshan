<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Touristplace.aspx.cs" Inherits="Touristplace" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
         <ItemTemplate>
            <table class="style2">
                <tr>
                    <td class="style3">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("PName") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="164px" 
                            ImageUrl='<%# Eval("PImage") %>' Width="347px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("PDescription") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("SName") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button class="button" runat="server" CommandArgument='<%#Eval("SName") %>' CommandName="Placess" Text="Details"/>
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
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [PlaceData] WHERE ([SName] = @SName)">
        <SelectParameters>
            <asp:QueryStringParameter Name="SName" QueryStringField="SName" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

