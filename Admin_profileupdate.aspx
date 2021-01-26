<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Admin_profileupdate.aspx.cs" Inherits="Admin_profileupdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div>
    <table cellspacing="10" class="auto-style1">
            <tr>
                <td>ID:-</td>
                <td>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">UserName:-</td>
                <td class="auto-style2">
    <asp:Textbox ID="name" runat="server" Text="Label" Enabled="false"></asp:Textbox></td>
            </tr>
            
           <tr>
                <td>Email Id:-</td>
                <td>
                    <asp:Textbox ID="email" runat="server" Text="Label" Enabled="false"></asp:Textbox>
                </td>
            </tr>
           <tr>
           <td>Phone no:-</td>
                <td>
    <asp:Textbox ID="phno" runat="server" Text="Label" Enabled="false"></asp:Textbox>
                </td>
            </tr>

             <tr>
           <td>Address:-</td>
                <td>
    <asp:Textbox ID="add" runat="server" Text="Label" Enabled="false"></asp:Textbox>
                </td>
            </tr>
         <tr>
             <td>
                 <asp:Button ID="update" runat="server" OnClick="update_Click" Text="update" />
             </td>
             <td>
                 <asp:Button ID="done" runat="server" Text="Done" OnClick="done_Click" Visible="false" />
                 
             </td>
         </tr>
        </table>
    </div>
</asp:Content>

