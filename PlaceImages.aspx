﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PlaceImages.aspx.cs" Inherits="PlaceImages" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <table class="style1">
                    <tr>
                        <td style="text-align: center">
                            <asp:Image ID="Image1" runat="server" Height="900px" 
                                ImageUrl='<%# Eval("PImage") %>' Width="1250px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Image ID="Image2" runat="server" Height="900px" Width="1250px" ImageUrl='<%# Eval("PImage1") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Image ID="Image3" runat="server" Height="900px" Width="1250px" ImageUrl='<%# Eval("PImage2") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Button ID="Button1" runat="server" Text="Button" />
                        </td>
                    </tr>
                    <tr>
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
            SelectCommand="SELECT [PImage], [PImage1], [PImage2] FROM [PlaceData] WHERE ([PName] = @PName)">
            <SelectParameters>
                <asp:QueryStringParameter Name="PName" QueryStringField="PName" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    <br />
    <br />
    </div>
    </div>
    </form>
</body>
</html>
