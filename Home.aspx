<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Places" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div style="font-size: x-large">Welcome to India Darshan</div>

    <asp:DataList ID="DataList1" runat="server" DataKeyField="PName" 
        DataSourceID="SqlDataSource1" >
        <ItemTemplate>
            <table style="width: 100%; height: 170px">
                <tr>
                    <td style="height: 34px">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("PName") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("PImage") %>' 
                            Height="300px" Width="500px" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
        SelectCommand="SELECT [PImage], [PName] FROM [PlaceData]"></asp:SqlDataSource>


</asp:Content>

