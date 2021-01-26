<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="invoice.aspx.cs" Inherits="invoice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>Thanks<br />
        <asp:Label ID="Thanks" runat="server"></asp:Label></div>
<div>
            Enter Transaction ID no:-<asp:TextBox ID="TextBox1" runat="server" 
                BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" ForeColor="Black"></asp:TextBox>
&nbsp;
            <asp:Button CssClass="btn" ID="Button1" runat="server" Text="Generate Invoice" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="User_name" HeaderText="User_name" 
                        SortExpression="User_name" />
                    <asp:BoundField DataField="TransactionID" HeaderText="TransactionID" 
                        SortExpression="TransactionID" />
                    <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice" 
                        SortExpression="TotalPrice" />
                    <asp:BoundField DataField="PeopleCount" HeaderText="PeopleCount" 
                        SortExpression="PeopleCount" />
                    <asp:BoundField DataField="PlaceName" HeaderText="PlaceName" 
                        SortExpression="PlaceName" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
                
                SelectCommand="SELECT [Name], [User_name], [TransactionID], [TotalPrice], [PeopleCount], [PlaceName] FROM [BookingData] WHERE ([User_name] = @User_name)">
                <SelectParameters>
                    <asp:SessionParameter Name="User_name" SessionField="New" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
        </div>
</asp:Content>

