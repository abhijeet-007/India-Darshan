<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Packages.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <span style="font-size: x-large">Packages</span><br />



    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
        BorderColor="#FF3300" OnItemCommand="DataList1_ItemCommand"
        RepeatDirection="Horizontal" CssClass="align-items-center" onselectedindexchanged="DataList1_SelectedIndexChanged" 
       >
        
        <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" 
            Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" 
            VerticalAlign="Middle" />
        
        <ItemTemplate>
            
            <table style="width: 100%" align="center" bgcolor="#CCFF99">
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("PgName") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                         <asp:Label ID="Label3" runat="server" Text='<%# Eval("PgPrice") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                         <asp:Label ID="Label4" runat="server" Text='<%# Eval("PgDescription") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("PName") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left; height: 21px;">
                        <asp:Label ID="Label6" runat="server" Text="Add Number of People"></asp:Label>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: left">
                        <asp:DropDownList ID="DropDownList1" BorderStyle="Solid" BorderColor="Black" runat="server" 
                            ForeColor="#000066" Height="35px" Width="202px">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left">
                        <asp:Button ID="Button3" CssClass="btn" runat="server" CommandName="Details" CommandArgument='<%#Eval("ID") %>' Text="View Details"  />
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
        SelectCommand="SELECT * FROM [PackageData] WHERE ([PName] = @PName)">
        
        <SelectParameters>
            <asp:QueryStringParameter Name="PName" QueryStringField="PName" Type="String" />
        </SelectParameters>
        
        </asp:SqlDataSource>
    <br />



</asp:Content>

