<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Add_State.aspx.cs" Inherits="Add_State" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="bg-dark" >

    <table style="width: 100%" align="center" width="100px">
        <tr>
            <td style="text-align: left">

<asp:Label ID="Label1" runat="server" Text="Enter State Name" ForeColor="Black" 
                    CssClass="align-content-lg-end" Width="128px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
    <asp:TextBox CssClass="btmspace-15" ID="TextBox1" runat="server"  
                    BorderStyle="Solid" Height="30px" Width="202px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter state name" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter only alphabet" ForeColor="Red" 
                    ValidationExpression="[a-zA-Z]+$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: left">
    <asp:Label ID="Label2" runat="server" Text="Enter Description of State" 
        ForeColor="Black" CssClass="align-content-around" Width="228px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 20px">
    <asp:TextBox ID="TextBox2"  runat="server"  BorderStyle="Solid" Height="255px" 
                    Width="487px"></asp:TextBox>
                <ajaxToolkit:HtmlEditorExtender ID="TextBox2_HtmlEditorExtender" runat="server" 
                    BehaviorID="TextBox2_HtmlEditorExtender" TargetControlID="TextBox2" EnableSanitization="false">
                </ajaxToolkit:HtmlEditorExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Enter description" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: left; height: 23px;">
    <asp:Label ID="Label3" runat="server" Text="Enter First Image of State" ForeColor="Black" 
        CssClass="align-self-lg-start" Width="174px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 34px">
    <asp:FileUpload ID="FileUpload1" runat="server"  
         BorderStyle="Solid" Width="202px" Height="30px" BorderColor="Black" 
                    ForeColor="Black" />
            </td>
        </tr>
        <tr>
            <td style="height: 23px; text-align: left;">
                <asp:Label ID="Label5" runat="server" CssClass="align-self-lg-start" 
                    ForeColor="Black" Text="Enter Second Image of State"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 23px">
    <asp:FileUpload ID="FileUpload2" runat="server"  
         BorderStyle="Solid" Width="202px" Height="30px" BorderColor="Black" 
                    ForeColor="Black" />
            </td>
        </tr>
        <tr>
            <td style="height: 23px; text-align: left;">
                <asp:Label ID="Label6" runat="server" CssClass="align-self-lg-start" 
                    ForeColor="Black" Text="Enter Third Image of State"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 23px">
    <asp:FileUpload ID="FileUpload3" runat="server"  
         BorderStyle="Solid" Width="202px" Height="30px" BorderColor="Black" 
                    ForeColor="Black" />
            </td>
        </tr>
        <tr>
            <td style="height: 23px; text-align: left;">
    <asp:Label ID="Label4" runat="server" CssClass="align-self-start"></asp:Label>
            &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: left">
    <asp:Button CssClass="btn" ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" 
          />

            </td>
        </tr>

    </table>

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

</div>



</asp:Content>

