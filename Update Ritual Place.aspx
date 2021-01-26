<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Update Ritual Place.aspx.cs" Inherits="Update_Ritual_Place" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>

    <table border="1" style="width: 100%">
        <tr>
            <td style="width: 244px; height: 40px">
                <asp:Label ID="Label5" runat="server" Text="Enter Place Name"></asp:Label>
                :-</td>
            <td style="height: 40px">
                <%--<asp:TextBox ID="TextBox3" runat="server" BorderStyle="Solid" Height="35px" 
                    Width="202px"></asp:TextBox>--%>
                    <asp:DropDownList ID="DropDownList1" AppendDataBoundItems="True" 
                    DataValueField="RName" DataTextField="RName" runat="server" Height="35px" 
                    BorderStyle="Solid" BorderColor="Black" 
                    Width="202px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 244px; height: 64px">
                <asp:Button ID="Button3" CssClass="btn" runat="server" Text="Click To Search" 
                    onclick="Button3_Click" />
            </td>
            <td style="height: 64px; left:auto">
                <br />
                &nbsp;
                <asp:Label ID="Label6" runat="server"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
    </table>

</div>

<div>

  

    <asp:FormView ID="FormView1" runat="server" DataKeyNames="RName" 
        DataSourceID="SqlDataSource1" DefaultMode="Edit" 
        onitemupdated="FormView1_ItemUpdating" Visible="False">
        <EditItemTemplate>
            <table style="width: 100%; height: 145px;" border="1">
                <tr>
                    <td style="text-align: left">
                        PName:
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left">
                        <asp:Label ID="PNameLabel1" runat="server" Text='<%# Eval("RName") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left">
                        PImage:</td>
                </tr>
                <tr>
                    <td>
                        <asp:FileUpload ID="PImageTextBox" runat="server" BorderColor="Black" 
                            BorderStyle="Solid" />
                        <%-- <asp:TextBox ID="PImageTextBox" runat="server" Text='<%# Bind("PImage") %>' />--%></td>
                </tr>
                <tr>
                    <td style="text-align: left">
                        Second Image:-</td>
                </tr>
                <tr>
                    <td>
                        <asp:FileUpload ID="PImageTextBox2" runat="server" BorderColor="Black" 
                            BorderStyle="Solid" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left">
                        Third Image:-</td>
                </tr>
                <tr>
                    <td>
                        <asp:FileUpload ID="PImageTextBox3" runat="server" BorderColor="Black" 
                            BorderStyle="Solid" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left">
                        PDescription:</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="PDescriptionTextBox" runat="server" Height="255px" 
                            Text='<%# Bind("RDescription") %>' Width="487px" />
                        <ajaxToolkit:HtmlEditorExtender ID="PDescriptionTextBox_HtmlEditorExtender" 
                            runat="server" BehaviorID="PDescriptionTextBox_HtmlEditorExtender" 
                            EnableSanitization="false" TargetControlID="PDescriptionTextBox">
                        </ajaxToolkit:HtmlEditorExtender>
                    </td>
                </tr>
                <tr>
                <td style="text-align: left">

                    <asp:Label ID="Label8" runat="server"></asp:Label>

                </td>
                </tr>
                <tr>
                    <td style="text-align: left">
                        <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" CssClass="btn" onclick="UpdateButton_Click" 
                            Text="Update" />
                        <asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="False" 
                            CommandName="Cancel" CssClass="btn" Text="Cancel" />
                    </td>
                </tr>
            </table>
        </EditItemTemplate>
        <InsertItemTemplate>
            PName:
            <asp:TextBox ID="PNameTextBox" runat="server" Text='<%# Bind("RName") %>' />
            <br />
            PImage:
            <asp:TextBox ID="PImageTextBox" runat="server" Text='<%# Bind("RImage") %>' />
            <br />
            PDescription:
            <asp:TextBox ID="PDescriptionTextBox" runat="server" 
                Text='<%# Bind("RDescription") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            PName:
            <asp:Label ID="PNameLabel" runat="server" Text='<%# Eval("RName") %>' />
            <br />
            PImage:
            <asp:Label ID="PImageLabel" runat="server" Text='<%# Bind("RImage") %>' />
            <br />
            PDescription:
            <asp:Label ID="PDescriptionLabel" runat="server" 
                Text='<%# Bind("RDescription") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CausesValidation="False" Text="Edit" CommandName="Edit" />

           <%-- <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Edit" />--%>
                <asp:Button ID="Button1" runat="server" Text="Delete" CommandName="Delete" CausesValidation="False"/>
            &nbsp;<%--<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Delete" />--%>&nbsp;<%--<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" />--%>
        </ItemTemplate>
    </asp:FormView>
  <asp:Label ID="Label7" runat="server"></asp:Label>
    <br />
  
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
        DeleteCommand="DELETE FROM [RitualData] WHERE [RName] = @RName" 
        InsertCommand="INSERT INTO [RitualData] ([RName], [RImage], [RDescription]) VALUES (@RName, @RImage, @RDescription)" 
        SelectCommand="SELECT [RName], [RImage], [RDescription] FROM [RitualData] WHERE ([RName] = @RName)" 
        UpdateCommand="UPDATE [RitualData] SET [RDescription] = @RDescription WHERE [RName] = @RName">
        <DeleteParameters>
            <asp:Parameter Name="RName" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="RName" Type="String" />
            <asp:Parameter Name="RImage" Type="String" />
            <asp:Parameter Name="RDescription" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="RName" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <%--<asp:Parameter Name="PImage" Type="String" />--%>
            <asp:Parameter Name="RDescription" Type="String" />
            <asp:Parameter Name="RName" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

  

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
&nbsp;</div>
</asp:Content>

