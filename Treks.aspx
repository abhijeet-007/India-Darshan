<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Treks.aspx.cs" Inherits="Treks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    
    <div class="bg-white">

    <div>
        <table style="width: 100%" >
            <tr style="height: 40%">
                <td style="width: 175px">
     <h4>Search State :- </h4>
                </td>
                <td style="width: 224px">
                    <asp:TextBox ID="searchfield" runat="server" BorderStyle="Solid" Width="218px" 
                        Height="25px"></asp:TextBox>
                </td>
                <td>
        <asp:Button CssClass="btn-light" ID="Bsearch" runat="server" Text="Search" OnClick="Search" 
                        Width="120px" BorderColor="Gray" BorderStyle="Solid" Height="35px"/>

                </td>
            </tr>
        </table>

        <br />

        <asp:DataList ID="DataList1" runat="server" DataKeyField="SName" 
             OnItemCommand="DataList1_ItemCommand" 
            RepeatColumns="1" RepeatDirection="Horizontal">
            <ItemTemplate>
                
                <table style="width: 100%; height: 129px">
                    <tr>
                        <td rowspan="2" style="width: 82px">
                            <asp:Image ID="Image1" runat="server" Height="150px" 
                                ImageUrl='<%# Eval("SImage") %>' Width="250px" />
                        </td>
                        <td style="height: 5px">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("SName") %>' Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 65px">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("SDescription") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 82px">
                            <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("SName") %>' 
                                CommandName="Placess" CssClass="btn" Text="Next" Width="250px" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
               
            </ItemTemplate>
        </asp:DataList>

        <!--<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
            SelectCommand="SELECT * FROM [StateData]"></asp:SqlDataSource>-->

    
    

</div>

    </div>
    
</asp:Content>

