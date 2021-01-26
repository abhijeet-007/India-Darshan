<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="User_changepasswd.aspx.cs" Inherits="User_changepasswd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="text-align: right; width: 195px;">
                    <asp:Label ID="Label2" runat="server" Text="Previous password:-" 
                        Font-Size="Medium" ForeColor="#000066"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="ppass" runat="server" TextMode="Password" BorderStyle="Solid" 
                        Height="30px" Width="202px" BorderColor="Black"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ppass" ErrorMessage="Enter old password*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right; width: 195px;">
                    <asp:Label ID="Label3" runat="server" Text="New Password:-" Font-Size="Medium" 
                        ForeColor="#000066"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="npass" runat="server" TextMode="Password" 
                        Height="30px" Width="202px" BorderStyle="Solid" BorderColor="Black"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="npass" ErrorMessage="Enter New Password*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right; width: 195px;">
                    <asp:Label ID="Label4" runat="server" Text="Confirm Password:-" 
                        Font-Size="Medium" ForeColor="#000066"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="cpass" runat="server" TextMode="Password" 
                        Height="30px" Width="202px" BorderStyle="Solid" BorderColor="Black"></asp:TextBox>
                    
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="npass" ControlToValidate="cpass" ErrorMessage="Password does not match*" ForeColor="#CC0000"></asp:CompareValidator>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="cpass" ErrorMessage="Enter new Password*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="height: 30px; width: 195px;"></td>
                <td class="auto-style3" style="text-align: left; height: 30px">
        <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Confirm" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 195px">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
        </table>
    
    </div>
</asp:Content>

