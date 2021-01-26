<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StateImages.aspx.cs" Inherits="StateImages" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="themes/1/js-image-slider.css" rel="stylesheet" type="text/css" />
    <script src="themes/1/js-image-slider.js" type="text/javascript"></script>
    <link href="generic.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <table class="style1">
                    <tr>
                        <td style="text-align: center">
                            <asp:Image ID="Image1" runat="server" Height="900px" 
                                ImageUrl='<%# Eval("SImage") %>' Width="1250px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Image ID="Image2" runat="server" Height="900px" Width="1250px" ImageUrl='<%# Eval("SImage1") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Image ID="Image3" runat="server" Height="900px" Width="1250px" ImageUrl='<%# Eval("SImage2") %>' />
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
            SelectCommand="SELECT [SImage], [SImage1], [SImage2] FROM [StateData] WHERE ([SName] = @SName)">
            <SelectParameters>
                <asp:QueryStringParameter Name="SName" QueryStringField="SName" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    <br />
    <br />
    </div>
    </form>
</body>
</html>
