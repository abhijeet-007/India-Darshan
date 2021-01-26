<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Add_Ritual_Package.aspx.cs" Inherits="Add_Ritual_Package" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
    <table style="width: 100%">
        <tr>
            <td style="text-align: left">
    <asp:Label ID="Label8" runat="server" Text="Package Name" ForeColor="Black"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
    <asp:TextBox ID="TextBox8" runat="server" BorderStyle="Solid" Height="30px" Width="202px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox8" ErrorMessage="Enter package name" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox8" ErrorMessage="Enter only alphabet" ForeColor="Red" 
                    ValidationExpression="[a-zA-Z]+$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: left">
    <asp:Label ID="Label9" runat="server" Text="Price of Package" ForeColor="Black"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
    <asp:TextBox ID="TextBox9" runat="server" BorderStyle="Solid" Height="30px" Width="202px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox9" ErrorMessage="Enter price" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox9" ErrorMessage="Enter only number" ForeColor="Red" 
                    ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 23px; text-align: left">
                <asp:Label ID="Label12" runat="server" Text="Description of package" 
                    ForeColor="Black"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 34px">
                <asp:TextBox ID="TextBox11" runat="server" BorderColor="Black" 
                    BorderStyle="Solid" Height="30px" Width="202px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox11" ErrorMessage="Enter description" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: left">
    <asp:Label ID="Label10" runat="server" Text="Details of package" ForeColor="Black"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
    <asp:TextBox ID="TextBox10" runat="server" BorderStyle="Solid" BorderColor="Black" 
                    Height="255px" Width="487px"></asp:TextBox>
                <ajaxToolkit:HtmlEditorExtender ID="TextBox10_HtmlEditorExtender" 
                    runat="server" BehaviorID="TextBox10_HtmlEditorExtender" 
                    TargetControlID="TextBox10" EnableSanitization="false">
                </ajaxToolkit:HtmlEditorExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox10" ErrorMessage="Enter details" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: left">
    <asp:Label ID="Label11" runat="server" Text="Place of the package" ForeColor="Black"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
    <%--<asp:TextBox ID="TextBox11" runat="server" BorderStyle="Solid"></asp:TextBox>--%>
                <asp:DropDownList ID="DropDownList1" AppendDataBoundItems="True" BorderStyle="Solid"
                    DataValueField="RName" DataTextField="RName" runat="server" Height="35px" 
                    Width="202px" ForeColor="Black">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="text-align: left">
    <asp:Button ID="Button3" CssClass="btn" runat="server" Text="submit" onclick="Button3_Click" />
            &nbsp;
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
    </table>
  </div>
</asp:Content>

