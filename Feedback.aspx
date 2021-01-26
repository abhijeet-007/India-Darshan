<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="width: 100%" align="center">
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" BorderStyle="Solid" 
                        Height="30px" Width="202px" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Feedback"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" BorderStyle="Solid" 
                        Height="30px" Width="202px" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button CssClass="btn" ID="Button2" runat="server" Text="Submit" 
                    onclick="Button2_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>

