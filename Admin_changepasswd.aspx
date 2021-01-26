<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Admin_changepasswd.aspx.cs" Inherits="Admin_changepasswd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Previous password:-</td>
                <td class="auto-style3">
                    <asp:TextBox ID="ppass" runat="server" TextMode="Password" BorderStyle="Solid"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ppass" ErrorMessage="Enter old password*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">New Password:-</td>
                <td class="auto-style3"><asp:TextBox ID="npass" runat="server" TextMode="Password" 
                        BorderStyle="Solid"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="npass" ErrorMessage="Enter New Password*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Confirm Password:-</td>
                <td class="auto-style3"><asp:TextBox ID="cpass" runat="server" TextMode="Password" 
                        BorderStyle="Solid"></asp:TextBox>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="npass" ControlToValidate="cpass" ErrorMessage="Password does not match*" ForeColor="#CC0000"></asp:CompareValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="cpass" ErrorMessage="Enter new Password*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
        <asp:Button ID="Button1" CssClass="btn" runat="server" Text="Confirm" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
        </table>
    
    </div>
</asp:Content>

