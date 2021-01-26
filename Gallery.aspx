<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 
    <div id="sliderFrame">
        <div id="slider">

        <asp:Repeater runat="server" ID="rpt">
        <ItemTemplate>
        <asp:Image runat="server" ID="img" ImageUrl='<%#Eval ("ImageName","images/{0}") %>' />
        </ItemTemplate>
        </asp:Repeater>

            <%--<a href="http://www.menucool.com/javascript-image-slider" target="_blank">
                <img src="images/image-slider-1.jpg" alt="Welcome to Menucool.com" />
            </a>
            <img src="images/image-slider-2.jpg" />
            <img src="images/image-slider-3.jpg" alt="" />
            <img src="images/image-slider-4.jpg" alt="#htmlcaption" />
            <img src="images/image-slider-5.jpg" />--%>
        </div>
        <div id="htmlcaption" style="display: none;">
            <em>HTML</em> caption. Link to <a href="http://www.google.com/">Google</a>.
        </div>
    </div>
    <br />
    <br />
    
    




<%---------------------------------------------------------%>
       
    <asp:DataList ID="DataList1" runat="server" DataKeyField="SName" 
        DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand" 
        RepeatColumns="4" RepeatDirection="Horizontal" >

        <ItemTemplate>
            <table align="center" class="style1">
                <tr>
                    <td class="style2">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("SName") %>' 
                            Font-Bold="True" Font-Size="Large" ForeColor="#000066"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center" style="text-align: center">
                        <asp:ImageButton ID="ImageButton1" runat="server" 
                            CommandArgument='<%# Eval("SName") %>' CommandName="Placessg" Height="150px" 
                            ImageUrl='<%# Eval("SImage") %>' Width="300px" />

                            
                    </td>
                </tr>
            </table>
            
            
        </ItemTemplate>
    </asp:DataList>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
        SelectCommand="SELECT [SImage], [SName] FROM [StateData]">

       
    </asp:SqlDataSource>

</asp:Content>

