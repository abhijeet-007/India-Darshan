<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Add_Place.aspx.cs" Inherits="Add_Place" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="align-content-md-center">
    <table style="width: 100%">
        <tr>
            <td style="text-align: left">
    <asp:Label ID="Label4" runat="server" Text="Enter Place Name" ForeColor="Black"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: left">
    <asp:TextBox ID="TextBox4" runat="server" BorderStyle="Solid" Height="30px" Width="202px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Enter place name" ForeColor="Red" 
                    ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Enter only alphabet" ForeColor="Red" 
                    ValidationExpression="[a-zA-Z]+$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: left">
    <asp:Label ID="Label5" runat="server" Text="Select Image of Place" ForeColor="Black" 
                    CssClass="align-self-lg-start"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: left">
    <asp:FileUpload ID="FileUpload2" runat="server" BorderStyle="Solid" Width="202px" BorderColor="Black" 
                    Height="30px" ForeColor="Black"/>
            </td>
        </tr>
        <tr>
            <td style="text-align: left">
                <asp:Label ID="Label9" runat="server" Text="Select Second Image" 
                    CssClass="align-self-lg-start" ForeColor="Black"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: left">
                <asp:FileUpload ID="FileUpload3" runat="server" BorderStyle="Solid" 
                    Height="30px" Width="202px" BorderColor="Black" ForeColor="Black" />
            </td>
        </tr>
        <tr>
            <td style="text-align: left">
                <asp:Label ID="Label10" runat="server" Text="Select Third Image" 
                    CssClass="align-self-lg-start" ForeColor="Black"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: left">
                <asp:FileUpload ID="FileUpload4" runat="server" BorderStyle="Solid" 
                    Height="30px" Width="202px" BorderColor="Black" ForeColor="Black" />
                <asp:Label ID="Label11" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: left; height: 23px;">
    <asp:Label ID="Label6" runat="server" Text="Enter Description of the place" 
        ForeColor="Black" CssClass="align-self-lg-start"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: left">
    <asp:TextBox ID="TextBox6" runat="server" style="margin-bottom: 0px" BorderStyle="Solid" BorderColor="Black" 
                    Width="487px" TextMode="MultiLine" Height="255px"></asp:TextBox>
                <ajaxToolkit:HtmlEditorExtender ID="TextBox6_HtmlEditorExtender" runat="server" 
                    BehaviorID="TextBox6_HtmlEditorExtender" TargetControlID="TextBox6" EnableSanitization="false">
                </ajaxToolkit:HtmlEditorExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="Enter description" ForeColor="Red" 
                    ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: left">
    <asp:Label ID="Label7" runat="server" Text="Select State of the place" 
        ForeColor="Black" CssClass="align-self-lg-start"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: left; height: 26px;">
                
                <asp:DropDownList ID="DropDownList1" AppendDataBoundItems="True" 
                    DataValueField="SName" DataTextField="SName" runat="server" Height="35px" 
                    BorderStyle="Solid" BorderColor="Black" 
                    Width="202px">
                </asp:DropDownList>
                
            </td>
        </tr>
        <tr>
            <td style="height: 23px; text-align: left;">
    <asp:Label ID="Label8" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: left">
    <asp:Button ID="Button2" CssClass="btn" runat="server" Text="submit" onclick="Button2_Click" />
            &nbsp;
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
    </table>
  
    </div>
</asp:Content>

