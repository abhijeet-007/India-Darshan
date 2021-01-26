<%@ Page Language="C#" AutoEventWireup="true" CodeFile="not applied msp but style is diff.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    <br />
    <asp:Label ID="Label4" runat="server" Text="Place Name" ></asp:Label>
    <br />
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Text="Image of Place" ></asp:Label>
    <br />
    <asp:FileUpload ID="FileUpload2" runat="server" />
    <br />
    <br />
    <asp:Label ID="Label6" runat="server" Text="Description of the place" 
        ></asp:Label>
    <br />
    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label7" runat="server" Text="State of the place" 
        ></asp:Label>
    <br />
    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label8" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" Text="submit" onclick="Button2_Click" 
            EnableTheming="False" />
    </div>
    </form>
</body>
</html>
