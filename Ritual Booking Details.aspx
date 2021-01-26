<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Ritual Booking Details.aspx.cs" Inherits="Ritual_Booking_Details" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
    
        <table  style="width:100%">
            <tr>
                <td  colspan="2" style="width:214px; text-align: center;">
                    <asp:Label ID="Label15" runat="server" Text="Your Transaction Id Number"></asp:Label>
                </td>
                <td style="text-align: left" colspan="2">
                    <asp:Label ID="Label14" runat="server" Font-Bold="True" ForeColor="Black"></asp:Label>
                </td>
            </tr>
            <tr>
                <td  colspan="2" style="width:214px; text-align: center; height: 36px;">
                    <asp:Label ID="Label7" runat="server" style="text-align: center" align="center" Text="Name"></asp:Label>
                </td>
                <td colspan="2" style="height: 36px">
                    <asp:TextBox ID="TextBox8" runat="server" BorderStyle="Solid" BorderWidth="2px" 
                        Height="30px" Width="202px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="Enter Name" ControlToValidate="TextBox8" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                         &nbsp;<asp:RegularExpressionValidator Display = "Dynamic" 
                        ControlToValidate = "TextBox8" ID="RegularExpressionValidator3" 
                        ValidationExpression = "^[\s\S]{4,8}$" runat="server" 
                        ErrorMessage="Minimum 4 and Maximum 8 characters required." ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td  colspan="2" style="width:214px; text-align: center;">
                    <asp:Label ID="Label8" runat="server" Text="Enter Email"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox9" runat="server" BorderStyle="Solid" BorderWidth="2px" 
                        Height="30px" Width="202px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="Enter email " ControlToValidate="TextBox9" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                        ErrorMessage="Enter valid email id" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ControlToValidate="TextBox9" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td  colspan="2" style="width:214px; text-align: center;">
                    <asp:Label ID="Label9" runat="server" style="text-align: center" 
                        Text="Enter Mobile Number"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox11" runat="server" BorderStyle="Solid" 
                        BorderWidth="2px" Height="30px" Width="202px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="Enter Mobile no" ControlToValidate="TextBox11" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                        ErrorMessage="Enter valid mobile no" 
                        ValidationExpression="^[789]\d{9}$" ControlToValidate="TextBox11" 
                        ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td  colspan="2" style="width:214px; text-align: center;">
                    <asp:Label ID="Label10" runat="server" style="text-align: center" 
                        Text="Enter Your Address"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox10" runat="server" BorderStyle="Solid" 
                        BorderWidth="2px" Height="30px" Width="202px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ErrorMessage="Enter address" ControlToValidate="TextBox10" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                         &nbsp;<asp:RegularExpressionValidator Display = "Dynamic" 
                        ControlToValidate = "TextBox10" ID="RegularExpressionValidator4" 
                        ValidationExpression = "^[\s\S]{15,50}$" runat="server" 
                        ErrorMessage="Minimum 15 and Maximum 50 characters required." 
                        ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td  style="height:23px; text-align: center;">
                    <asp:Label ID="Label11" runat="server" 
                        Text="Package Details"></asp:Label>
                </td>
                <td  colspan="3" style="height:23px">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ForeColor="Black">
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="S No" />
                <asp:BoundField DataField="pgname" HeaderText="Package Name" />
                <asp:BoundField DataField="pgprice" HeaderText="Price" />
                <asp:BoundField DataField="pgdescription" 
                    HeaderText="Package Description" />
                <asp:BoundField DataField="pname" HeaderText="Place Name" />
                <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                <asp:BoundField DataField="totalprice" HeaderText="Total Price" />
            </Columns>
        </asp:GridView>
    
                    <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="Label4" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="Label5" runat="server" Visible="False"></asp:Label>
    
                    <asp:Label ID="Label16" runat="server" Visible="False"></asp:Label>
    
                    <asp:Label ID="Label17" runat="server" Visible="False"></asp:Label>
    
                </td>
            </tr>
            <tr style="height:30px">
                <td  colspan="2" style="width:214px; text-align: center;">
                    <asp:Label ID="Label12" runat="server" style="text-align: center" 
                        Text="Departure date"></asp:Label>
                </td>
                <td>
                
                <asp:TextBox ID="TextBox7" runat="server" BorderStyle="Solid" BorderWidth="2px" 
                        Height="30px" Width="202px" ReadOnly="True"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="TextBox7_CalendarExtender" runat="server" 
                        BehaviorID="TextBox7_CalendarExtender" TodaysDateFormat="d MMMM, yyyy" PopupButtonID="ImageButton1" TargetControlID="TextBox7" Format="dd/MM/yyyy">
                    </ajaxToolkit:CalendarExtender>


                    
                
                </td>
                <td style="width:880px; text-align: left;">
                
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="32px" 
                    ImageUrl="~/images/calendar-400x400.png" Width="32px" 
                         />
                
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ErrorMessage="Enter date" ControlToValidate="TextBox7" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                            ControlToValidate="TextBox7" ErrorMessage="Select valid date" ForeColor="Red" 
                            ValidationExpression="^(0[1-9]|[12][0-9]|3[01])[-/.](0[1-9]|1[012])[-/.](19|20)\d\d$"></asp:RegularExpressionValidator>
                
                </td>
            </tr>
            <tr>
                <td  colspan="2" style="width:214px">
                    &nbsp;</td>
                <td colspan="2">
                <asp:DropDownList ID="DropDownList1" runat="server" BorderStyle="solid" 
                        BorderColor="Black" BorderWidth="2px"
                        Height="40px" Width="202px" Font-Bold="True" Font-Size="Small" 
                        ForeColor="Black">
                    <asp:ListItem>Select Transportation</asp:ListItem>
                    <asp:ListItem>Bus</asp:ListItem>
                    <asp:ListItem>Train</asp:ListItem>
                    <asp:ListItem>Plane</asp:ListItem>
                </asp:DropDownList>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="Select" 
                    InitialValue="Select Transportaion" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td  colspan="2" style="width:214px; text-align: center;">
                    <asp:Label ID="Label13" runat="server" style="text-align: center" 
                        Text="Total Price"></asp:Label>
                </td>
                <td colspan="2" style="text-align: left">
                    <asp:Label ID="Label6" runat="server" style="text-align: left"></asp:Label>
                </td>
            </tr>
            <tr>
                <td  colspan="2" style="width:214px; text-align: center;">

                <input type="hidden" runat="server" id="key" name="key" value="gtKFFx" />
        <input type="hidden" runat="server" id="salt" name="salt" value="eCwWELxi" />
        <input type="hidden" runat="server" id="hash" name="hash" value=""  />
        <input type="hidden" runat="server" id="txnid" name="txnid" value="" />
                
                <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Proceed To Book" Width="167px" 
                    onclick="Button1_Click" />
                </td>
                <td colspan="2">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                </td>
            </tr>
            <tr>
                <td  colspan="2" style="width:214px">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td  colspan="2" style="width:214px">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td  colspan="2" style="width:214px">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
    
    </div>
</asp:Content>

