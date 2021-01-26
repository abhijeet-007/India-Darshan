<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Update Image Slider.aspx.cs" Inherits="Update_Image_Slider" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table border="1" style="width: 100%">
        <tr>
            <td style="width: 237px; height: 40px">
                <asp:Label ID="Label5" runat="server" Text="Enter Image Name"></asp:Label>
                :-</td>
            <td style="height: 40px">
                <%--<asp:TextBox ID="TextBox3" runat="server" Width="202px" BorderStyle="Solid" 
                    Height="35px"></asp:TextBox>--%>
                    <asp:DropDownList ID="DropDownList1" AppendDataBoundItems="True" 
                    DataValueField="Name" DataTextField="Name" runat="server" Height="35px" 
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

    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Name" DefaultMode="Edit" onitemupdating="FormView1_ItemUpdating"
        DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            <table style="width: 100%">
                <tr>
                    <td>
                        Name:</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="NameLabel1" runat="server" Text='<%# Eval("Name") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        IsActive:
                    </td>
                </tr>
                <tr>
                    <td>
                        <%--<asp:TextBox ID="IsActiveTextBox" runat="server" 
                            Text='<%# Bind("IsActive") %>' />--%>
                        <asp:DropDownList ID="IDropDownList2"  runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        ImageName:
                    </td>
                </tr>
                <tr>
                    <td>
                        <%--<asp:TextBox ID="ImageNameTextBox" runat="server" 
                            Text='<%# Bind("ImageName") %>' />--%>
                        <asp:FileUpload ID="IFileUpload1"  runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" onclick="UpdateButton_Click" />
                        <asp:Button ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        <%--<asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />--%>
                    </td>
                </tr>
            </table>
        </EditItemTemplate>
        <InsertItemTemplate>
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            IsActive:
            <asp:TextBox ID="IsActiveTextBox" runat="server" 
                Text='<%# Bind("IsActive") %>' />
            <br />
            ImageName:
            <asp:TextBox ID="ImageNameTextBox" runat="server" 
                Text='<%# Bind("ImageName") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
    </asp:FormView>

    <br />
    <asp:Label ID="Label7" runat="server"></asp:Label>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
        DeleteCommand="DELETE FROM [ImageSlider] WHERE [Name] = @Name" 
        InsertCommand="INSERT INTO [ImageSlider] ([Name], [IsActive], [ImageName]) VALUES (@Name, @IsActive, @ImageName)" 
        SelectCommand="SELECT [Name], [IsActive], [ImageName] FROM [ImageSlider] WHERE ([Name] = @Name)" 
        UpdateCommand="UPDATE [ImageSlider] SET [IsActive] = @IsActive, [ImageName] = @ImageName WHERE [Name] = @Name">
        <DeleteParameters>
            <asp:Parameter Name="Name" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="IsActive" Type="Int32" />
            <asp:Parameter Name="ImageName" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Name" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="IsActive" Type="Int32" />
            <asp:Parameter Name="ImageName" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </asp:Content>

