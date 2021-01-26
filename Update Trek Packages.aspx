<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Update Trek Packages.aspx.cs" Inherits="Update_Trek_Packages" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
<table border="1" style="width: 100%">
        <tr>
            <td style="width: 237px; height: 40px">
                <asp:Label ID="Label5" runat="server" Text="Enter Package Name"></asp:Label>
                :-</td>
            <td style="height: 40px">
                <%--<asp:TextBox ID="TextBox1" runat="server" Height="35px" Width="202px"></asp:TextBox>--%>
                <asp:DropDownList ID="DropDownList1" AppendDataBoundItems="True" 
                    DataValueField="TPgName" DataTextField="TPgName" runat="server" Height="35px" 
                    BorderStyle="Solid" BorderColor="Black" 
                    Width="202px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 237px; height: 64px">
            </td>
            <td style="height: 64px; text-align: left;">
                <br />
                <asp:Button ID="Button3" runat="server" CssClass="btn" Text="Click To Search" 
                    onclick="Button3_Click"  />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
    </table>

    <div>
    

        <asp:FormView ID="FormView1" runat="server" DataKeyNames="TPgName" 
            DataSourceID="SqlDataSource1" DefaultMode="Edit" onitemupdated="FormView1_ItemUpdating" Visible="False" >
            <EditItemTemplate>
                <table style="width: 100%">
                    <tr>
                        <td style="text-align: left">
                            PgName:</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="PgNameTextBox" runat="server" BorderStyle="Solid" 
                                Height="35px" Text='<%# Bind("TPgName") %>' Width="202px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left">
                            PgPrice:</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="PgPriceTextBox" runat="server" BorderStyle="Solid" 
                                Height="35px" Text='<%# Bind("TPgPrice") %>' Width="202px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left">
                            PgDescription</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid" Height="255px" 
                                Text='<%# Bind("TPgDescription") %>' Width="487px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left">
                            PgDetails:</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="PgDescriptionTextBox" runat="server" BorderStyle="Solid" 
                                Height="255px" Text='<%# Bind("TPgDetails") %>' Width="487px" />
                            <ajaxToolkit:HtmlEditorExtender ID="PgDescriptionTextBox_HtmlEditorExtender" 
                                runat="server" BehaviorID="PgDescriptionTextBox_HtmlEditorExtender" 
                                EnableSanitization="false" TargetControlID="PgDescriptionTextBox">
                            </ajaxToolkit:HtmlEditorExtender>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left">
                            PName:</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="PNameTextBox" runat="server" BorderStyle="Solid" Height="35px" 
                                Text='<%# Bind("TName") %>' Width="202px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left">
                            ID:
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left">
                            <asp:Label ID="IDLabel1" runat="server" Text='<%# Bind("ID") %>' />
                        </td>
                    </tr>
                    <tr>
                    <td style="text-align: left">
                        <asp:Label ID="Label8" runat="server"></asp:Label>
                    </td>
                    </tr>
                    <tr>
                        <td style="text-align: left">
                            <br />
                            <asp:Button ID="UpdateButton" runat="server" CssClass="btn" CausesValidation="True" 
                                CommandName="Update" Text="Update" />
                            <asp:Button ID="UpdateCancelButton" CssClass="btn" runat="server" CausesValidation="False" 
                                CommandName="Cancel" Text="Cancel" />
                        </td>
                    </tr>
                </table>
                
                
                <%--<asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />--%>
                &nbsp;
               <%--<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />--%>
            </EditItemTemplate>
            <InsertItemTemplate>
                PgName:
                <asp:TextBox ID="PgNameTextBox" runat="server" Text='<%# Bind("TPgName") %>' />
                <br />
                PgPrice:
                <asp:TextBox ID="PgPriceTextBox" runat="server" Text='<%# Bind("TPgPrice") %>' />
                <br />
                PgDescription:
                <asp:TextBox ID="PgDescriptionTextBox" runat="server" 
                    Text='<%# Bind("TPgDescription") %>' />
                <br />
                PName:
                <asp:TextBox ID="PNameTextBox" runat="server" Text='<%# Bind("TName") %>' />
                <br />

                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                PgName:
                <asp:Label ID="PgNameLabel" runat="server" Text='<%# Bind("TPgName") %>' />
                <br />
                PgPrice:
                <asp:Label ID="PgPriceLabel" runat="server" Text='<%# Bind("TPgPrice") %>' />
                <br />
                PgDescription:
                <asp:Label ID="PgDescriptionLabel" runat="server" 
                    Text='<%# Bind("TPgDescription") %>' />
                <br />
                PName:
                <asp:Label ID="PNameLabel" runat="server" Text='<%# Bind("TName") %>' />
                <br />
                ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Bind("ID") %>' />
                <br />

                <asp:Button ID="EditButton" runat="server" CausesValidation="False" Text="Edit" CommandName="Edit" />

                <%--<asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="Edit" />--%>

                    &nbsp; <asp:Button ID="DeleteButton" runat="server" Text="Delete" CommandName="Delete" CausesValidation="False"/>
               <%--<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="Delete" />--%>
                <%--&nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                    CommandName="New" Text="New" />--%>
            </ItemTemplate>
        </asp:FormView>
        <br />
        <asp:Label ID="Label7" runat="server"></asp:Label>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
            DeleteCommand="DELETE FROM [TPackageData] WHERE [ID] = @ID" 
            InsertCommand="INSERT INTO [TPackageData] ([TPgName], [TPgPrice], [TPgDescription]) VALUES (@TPgName, @TPgPrice, @TPgDescription)" 
            SelectCommand="SELECT * FROM [TPackageData] WHERE [TPgName] = @TPgName" 
            
            UpdateCommand="UPDATE [TPackageData] SET [TPgName] = @TPgName, [TPgPrice] = @TPgPrice, [TPgDescription] = @TPgDescription, [TPgDetails] = @TPgDetails WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TPgName" Type="String" />
                <asp:Parameter Name="TPgPrice" Type="Int32" />
                <asp:Parameter Name="TPgDescription" Type="String" />
                <asp:Parameter Name="TPName" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="TPgName" PropertyName="Text" 
                    Type="String" />
                <%--<asp:ControlParameter ControlID="TextBox1" Name="ID" PropertyName="Text" 
                    Type="Int32" />--%>
            </SelectParameters>
            <UpdateParameters>
            <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="TPgName" Type="String" />
                <asp:Parameter Name="TPgPrice" Type="Int32" />
                <asp:Parameter Name="TPgDescription" Type="String" />
                <asp:Parameter Name="TPgDetails" Type="String" />
                <asp:Parameter Name="TName" Type="String" />
                <%--<asp:Parameter Name="ID" Type="Int32" />--%>
            </UpdateParameters>
        </asp:SqlDataSource>
    

        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    

    </div>
    </div>
</asp:Content>

