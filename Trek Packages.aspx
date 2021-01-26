<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Trek Packages.aspx.cs" Inherits="Trek_Packages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
        BorderColor="#FF3300" OnItemCommand="DataList1_ItemCommand"
        RepeatDirection="Horizontal" CssClass="align-items-center">
        
        <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" 
            Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" 
            VerticalAlign="Middle" />
        
        <ItemTemplate>
            
            <table style="width: 100%" align="center" bgcolor="#CCFF99">
                <tr>
                    <td style="text-align: left">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("TPgName") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left">
                         <asp:Label ID="Label3" runat="server" Text='<%# Eval("TPgPrice") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left">
                         <asp:Label ID="Label4" runat="server" Text='<%# Eval("TPgDescription") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("TName") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left">
                        <asp:Label ID="Label6" runat="server" Text="Add People"></asp:Label>

                        &nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                        </asp:DropDownList>

                    </td>
                </tr>
                <tr>
                    <td style="text-align: left">
                        <asp:Button ID="Button3" CssClass="btn" runat="server" CommandArgument='<%#Eval("ID") %>' CommandName="Details" Text="View Details"  />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left">
                        <asp:Button ID="Button4" CssClass="btn" runat="server" CommandName="Package" 
                            CommandArgument='<%#Eval("ID") %>' Text="Book"    />
                    </td>
                </tr>
            </table>
            <br />
            <br />
        
        </ItemTemplate>
    
    </asp:DataList>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
        SelectCommand="SELECT * FROM [TPackageData] WHERE ([TName] = @TName)">
        
        <SelectParameters>
            <asp:QueryStringParameter Name="TName" QueryStringField="TName" Type="String" />
        </SelectParameters>
        
        </asp:SqlDataSource>
    </div>
</asp:Content>

