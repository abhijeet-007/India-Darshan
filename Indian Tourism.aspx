<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Indian Tourism.aspx.cs" Inherits="Indian_Tourism" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<link href="Styles/Bootstrap/css/bootstrap-grid.css" rel="stylesheet" type="text/css" />
    <link href="Styles/Bootstrap/css/bootstrap-grid.min.css" rel="stylesheet" type="text/css" />
    <link href="Styles/Bootstrap/css/bootstrap-reboot.css" rel="stylesheet" type="text/css" />
    <link href="Styles/Bootstrap/css/bootstrap-reboot.min.css" rel="stylesheet" type="text/css" />
    <link href="Styles/Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="Styles/Bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="Styles/Bootstrap/js/bootstrap.bundle.js" type="text/javascript"></script>
    <script src="Styles/Bootstrap/js/bootstrap.bundle.min.js" type="text/javascript"></script>
    <script src="Styles/Bootstrap/js/bootstrap.js" type="text/javascript"></script>
    <script src="Styles/Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>


    <link href="App_Themes/Theme1/styles/layout.css" rel="stylesheet" type="text/css" />

<div>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
            SelectCommand="SELECT * FROM [StateData]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DataList ID="DataList1" runat="server" DataKeyField="SName" 
            DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>

</div>
</asp:Content>

