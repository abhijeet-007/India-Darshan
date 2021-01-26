<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dinvoice.aspx.cs" Inherits="dinvoice" EnableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Panel ID="Panel1" Width="800" runat="server" Visible="False">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style6">INDIA DARSHAN</td>
                    <td>BILL</td>
                </tr>
                <tr>
                    <td class="auto-style6">Contact No:-8879178126<br /> Email Address:- <a href="mailto:abc@gmail.com">
                        India_Darshan@gmail.com</a><br />
                        <br />
                    </td>
                    <td>Bill No:-<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                        <br />
                        Date:-<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">To<br /> Name:-<asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                        Address:-<asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                        Mobile No:-<asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                        Email Address:-<asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style7" colspan="2">
                        <asp:GridView ID="GridView1" runat="server" 
                            onrowdatabound="GridView1_RowDataBound" AutoGenerateColumns="False" 
                            CellPadding="4" ForeColor="#333333" GridLines="None" Height="188px" 
                            Width="942px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
               
                                <asp:BoundField DataField="TransactionID" HeaderText="TransactionID" 
                                    SortExpression="TransactionID" />
                                <asp:BoundField DataField="PlaceName" HeaderText="PlaceName" 
                                    SortExpression="PlaceName" />
                                <asp:BoundField DataField="PackageName" HeaderText="PackageName" 
                                    SortExpression="PackageName" />
                                <asp:BoundField DataField="Mode" HeaderText="Mode" SortExpression="Mode" />
                                <asp:BoundField DataField="PeopleCount" HeaderText="PeopleCount" 
                                    SortExpression="PeopleCount" />
                                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                       
                        <div class="auto-style8">
                            Total cost:-<asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="2">Thank you for your Business</td>
                </tr>
            </table>
            <asp:Button ID="Button2" runat="server" Text="Download Pdf" OnClick="Button2_Click" />
        </asp:Panel>
    </form>
</body>
</html>
