<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="View Bookings.aspx.cs" Inherits="View_Bookings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" DataKeyNames="ID">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" 
                SortExpression="Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <%--<asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Address" />--%>
          <%--  <asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Address" />--%>
            <asp:BoundField DataField="start_date" HeaderText="start_date" 
                SortExpression="start_date" />
            <asp:BoundField DataField="Mode" HeaderText="Mode" 
                SortExpression="Mode" />
            <asp:BoundField DataField="PeopleCount" HeaderText="PeopleCount" 
                SortExpression="PeopleCount" />
            <asp:BoundField DataField="PackageName" HeaderText="PackageName" 
                SortExpression="PackageName" />
            <asp:BoundField DataField="PlaceName" HeaderText="PlaceName" 
                SortExpression="PlaceName" />
            <%--<asp:BoundField DataField="Price" HeaderText="Price" 
                SortExpression="Price" />--%>
            <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice" 
                SortExpression="TotalPrice" />
           <%-- <asp:BoundField DataField="Price" HeaderText="Price" 
                SortExpression="Price" />--%>
           <%-- <asp:BoundField DataField="User_name" HeaderText="User_name" 
                SortExpression="User_name" />--%>
           <%-- <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="ID" />--%>
            <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" 
                SortExpression="MobileNo" />
            <asp:BoundField DataField="TransactionID" HeaderText="TransactionID" 
                SortExpression="TransactionID" />
           <%-- <asp:BoundField DataField="User_name" HeaderText="User_name" 
                SortExpression="User_name" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="ID" />--%>
            <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Delete" 
                ShowHeader="True" Text="Delete" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
        
        SelectCommand="SELECT * FROM [BookingData] WHERE ([User_name] = @User_name)" 
        DeleteCommand="DELETE FROM BookingData WHERE (ID = @ID)">
        <DeleteParameters>
            <asp:Parameter Name="ID" />
        </DeleteParameters>
        <SelectParameters>
            <asp:SessionParameter Name="User_name" SessionField="New" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

