﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Trek Points.aspx.cs" Inherits="Trek_Points" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="SName" 
        DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
            <table  style="width: 100%; height: 129px">
                <tr>
                    <td rowspan="2" style="width: 82px">
                        <%--<asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("TImage") %>' 
                            Height="150px" Width="250px" />--%>
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="150px" Width="250px"
                                ImageUrl='<%# Eval("TImage") %>'  CommandName="Images" 
                                CommandArgument='<%# Eval("TName") %>' oncommand="ImageButton1_Command"/>
                    </td>
                    <td style="height: 5px">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("TName") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="height: 65px">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("TDescription") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 82px">
                        <asp:Button ID="Button3" runat="server" CssClass="btn" CommandArgument='<%# Eval("TName") %>' 
                            CommandName="Trekspackages" Text="Next" Width="250px" />
                    </td>
                    <td style="text-align:left">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("SName") %>'></asp:Label>
                    </td>
                </tr>
            </table>
           <br />
         
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
        SelectCommand="SELECT * FROM [TrekData] WHERE ([SName] = @SName)">
        <SelectParameters>
            <asp:QueryStringParameter Name="SName" QueryStringField="SName" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </div>
    
</asp:Content>

