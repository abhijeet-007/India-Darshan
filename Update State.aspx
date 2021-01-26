<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Update State.aspx.cs" Inherits="Update_State" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>

    <table border="1" style="width: 100%">
        <tr>
            <td style="width: 237px; height: 40px">
                <asp:Label ID="Label5" runat="server" Text="Enter State Name"></asp:Label>
                :-</td>
            <td style="height: 40px">
                <%--<asp:TextBox ID="TextBox3" runat="server" Width="202px" BorderStyle="Solid" 
                    Height="35px"></asp:TextBox>--%>
                    <asp:DropDownList ID="DropDownList1" AppendDataBoundItems="True" 
                    DataValueField="SName" DataTextField="SName" runat="server" Height="35px" 
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
                <asp:Button ID="Button3" CssClass="btn" runat="server" Text="Click To Search" 
                    onclick="Button3_Click" />
                &nbsp;
                <asp:Label ID="Label6" runat="server"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
    </table>

<%--</div>
<div>--%>

    <asp:FormView ID="FormView1" runat="server" DataKeyNames="SName" 
        DataSourceID="SqlDataSource1" DefaultMode="Edit" 
        onitemupdating="FormView1_ItemUpdating" Visible="False" Width="1350px">
        <EditItemTemplate>
            <table border="1" style="width: 100%; height: 145px">
                <tr>
                    <td style="text-align: left;">
                        State Name:-</td>
                </tr>
                <tr>
                    <td style="text-align: left;">
                        <asp:Label ID="SNameLabel1" runat="server" ForeColor="#000066" 
                            Text='<%# Eval("SName") %>' />
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: left;">
                        State Image:-</td>
                </tr>
                <tr>
                    <td>
                        <asp:FileUpload ID="SImageTextBox" runat="server" BorderColor="Black" 
                            BorderStyle="Solid" />
                        <%--<asp:TextBox ID="SImageTextBox" runat="server" Text='<%# Bind("SImage") %>' />--%>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left;">
                        Second Image:-</td>
                </tr>
                <tr>
                    <td>
                        <asp:FileUpload ID="SImageTextBox2" runat="server" BorderColor="Black" 
                            BorderStyle="Solid" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left;">
                        Third Image:-</td>
                </tr>
                <tr>
                    <td>
                        <asp:FileUpload ID="SImageTextBox3" runat="server" BorderColor="Black" 
                            BorderStyle="Solid" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left;">
                        State Description:- </td>
                </tr>
                <tr>
                    <td style="height: 261px;">
                        <asp:TextBox ID="SDescriptionTextBox" runat="server" Height="255px" 
                            Text='<%# Bind("SDescription") %>' Width="487px" />
                        <ajaxToolkit:HtmlEditorExtender ID="SDescriptionTextBox_HtmlEditorExtender" 
                            runat="server" BehaviorID="SDescriptionTextBox_HtmlEditorExtender" 
                            EnableSanitization="false" TargetControlID="SDescriptionTextBox">
                        </ajaxToolkit:HtmlEditorExtender>
                    </td>
                </tr>
                <tr style="width: 226px">
                <td style="text-align: left">
                    <asp:Label ID="Label8" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr style="width: 226px">
                    <td style="text-align: left">
                        <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" CssClass="btn" onclick="UpdateButton_Click" 
                            Text="Update" />
                        <asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="False" 
                            CommandName="Cancel" CssClass="btn" Text="Cancel" />
                        &nbsp;
                    </td>
                </tr>
            </table>
            
            <br />
            
            <%--<asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />--%>
            <%--<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />--%>&nbsp;
        </EditItemTemplate>
        <InsertItemTemplate>
            SName:
            <asp:TextBox ID="SNameTextBox" runat="server" Text='<%# Bind("SName") %>' />
            <br />
            SImage:
            <asp:TextBox ID="SImageTextBox" runat="server" Text='<%# Bind("SImage") %>' />
            <br />
            SDescription:
            <asp:TextBox ID="SDescriptionTextBox" runat="server" 
                Text='<%# Bind("SDescription") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            SName:-
            <asp:Label ID="SNameLabel" runat="server" Text='<%# Eval("SName") %>' />
            <br />
            SImage:-
            <asp:Label ID="SImageLabel" runat="server" Text='<%# Bind("SImage") %>' />
            <br />
            SDescription:-
            <asp:Label ID="SDescriptionLabel" runat="server" 
                Text='<%# Bind("SDescription") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CausesValidation="False" Text="Edit" CommandName="Edit" />
            <%--<asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />--%>
            <asp:Button ID="DeleteButton" runat="server" Text="Delete" CommandName="Delete" CausesValidation="False"/>
            &nbsp;<%--<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />--%><asp:Button ID="NewButton" runat="server" Text="New" CausesValidation="False" CommandName="New" />
            &nbsp;<%--<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New"
                CommandName="New" Text="New" />--%>
        </ItemTemplate>
    </asp:FormView>
    <br />
    <asp:Label ID="Label7" runat="server"></asp:Label>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
        DeleteCommand="DELETE FROM [StateData] WHERE [SName] = @SName" 
        InsertCommand="INSERT INTO [StateData] ([SName], [SImage], [SDescription]) VALUES (@SName, @SImage, @SDescription)" 
        SelectCommand="SELECT [SName], [SImage], [SDescription] FROM [StateData] WHERE ([SName] = @SName)"
        UpdateCommand="UPDATE [StateData] SET [SDescription] = @SDescription WHERE [SName] = @SName">
        <DeleteParameters>
            <asp:Parameter Name="SName" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="SName" Type="String" />
            <asp:Parameter Name="SImage" Type="String" />
            <asp:Parameter Name="SDescription" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="SName" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <%--<asp:Parameter Name="SImage" Type="String" />--%>
            <asp:Parameter Name="SDescription" Type="String" />
            <asp:Parameter Name="SName" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    &nbsp;
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
</div>
</asp:Content>

