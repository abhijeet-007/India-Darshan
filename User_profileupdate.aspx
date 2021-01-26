<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="User_profileupdate.aspx.cs" Inherits="User_profileupdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
    <table cellspacing="10" class="auto-style1">
            <tr>
                <td style="width: 149px; text-align: center;"><asp:Label ID="Label2" runat="server" 
                        Text="ID" Font-Size="Medium" ForeColor="#000066"></asp:Label>
                </td>
                <td style="width: 360px">
                    <asp:Label ID="ID" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 149px; text-align: center;">
                    <asp:Label ID="Label3" 
                        runat="server" Text="UserName" Font-Size="Medium" ForeColor="#000066"></asp:Label>
                </td>
                <td class="auto-style2" style="width: 360px">
    <asp:Textbox ID="name" runat="server" Text="Label" Enabled="false" BorderStyle="Solid" 
                        Height="30px" Width="202px" 
                        ></asp:Textbox></td>
            </tr>
            
           <tr>
                <td style="width: 149px; text-align: center; height: 34px;">
                    <asp:Label ID="Label4" runat="server" 
                        Text="Email Id" Font-Size="Medium" ForeColor="#000066"></asp:Label>
                </td>
                <td style="height: 34px; width: 360px;">
                    <asp:Textbox ID="email" runat="server" Text="Label" Enabled="false" 
                        BorderStyle="Solid" Height="30px" Width="202px"></asp:Textbox>
                </td>
            </tr>
           <tr>
           <td style="width: 149px; height: 34px; text-align: center;">
               <asp:Label ID="Label5" runat="server" 
                   Text="Phone no" Font-Size="Medium" ForeColor="#000066"></asp:Label>
               </td>
                <td style="height: 34px; width: 360px;">
    <asp:Textbox ID="phno" runat="server" Text="Label" Enabled="false" BorderStyle="Solid" 
                        Height="30px" Width="202px"></asp:Textbox>
                </td>
            </tr>

             <tr>
           <td style="width: 149px; text-align: center;"><asp:Label ID="Label6" runat="server" 
                   Text="Address" Font-Size="Medium" ForeColor="#000066"></asp:Label>
                 </td>
                <td style="width: 360px">
    <asp:Textbox ID="add" runat="server" Text="Label" Enabled="false" BorderStyle="Solid" 
                        Height="30px" Width="202px"></asp:Textbox>
                </td>
            </tr>
         <tr>
             <td style="width: 149px; text-align: center;">
                 <asp:Button CssClass="btn" ID="update" runat="server" OnClick="update_Click" 
                     Text="update" Visible="False" />
             </td>
             <td style="width: 360px; text-align: left">
                 <asp:Button CssClass="btn" ID="done" runat="server" Text="Done" OnClick="done_Click" Visible="false" />
                 
             </td>
         </tr>
        </table>
    </div>
</asp:Content>

