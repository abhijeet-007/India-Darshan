<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="AllTrek Points.aspx.cs" Inherits="AllTrek_Points" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="TName" 
        DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
            <table style="width: 100%; height: 129px">
                <tr>
                    <td rowspan="2" style="width: 82px">
                        <asp:Image ID="Image1" runat="server" Height="150px" Width="250px" 
                            ImageUrl='<%# Eval("TImage") %>'  />
                    </td>
                    <td style="height: 5px">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("TName") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="height: 65px">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("TDescription") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 82px">
                        <asp:Button ID="Button3" runat="server" CssClass="btn" CommandArgument='<%# Eval("TName") %>' 
                            CommandName="Trekspackages" Text="View Packages" Width="250px" />
                    </td>
                    <td style="text-align:left">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("SName") %>'></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
        SelectCommand="SELECT * FROM [TrekData]"></asp:SqlDataSource>
        </div>
</asp:Content>

