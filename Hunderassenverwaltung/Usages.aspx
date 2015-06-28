<%@ Page Title="Usages" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Usages.aspx.cs" Inherits="Hunderassenverwaltung.Usages" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <% if(User.Identity.IsAuthenticated) { %>
    <h1>Social Usages</h1>
    <telerik:RadGrid ID="uiRadGridForSocialUsages" runat="server" DataSourceID="uiDataSourceForSocialUsages" AllowSorting="True" Skin="MetroTouch" EnableUpdate="True" AllowAutomaticDeletes="True" AllowAutomaticInserts="True" AllowAutomaticUpdates="True">
        <MasterTableView CommandItemDisplay="Top" DataKeyNames="Id" DataSourceID="uiDataSourceForSocialUsages" AutoGenerateColumns="False">
            <CommandItemTemplate>
                <asp:ImageButton ID="uiButtonForAddNewRecords" ImageUrl="Images/AddRecord.png" runat="server" CommandName="InitInsert" Visible='<%# !uiRadGridForSocialUsages.MasterTableView.IsItemInserted && User.IsInRole("Admin") %>'></asp:ImageButton>&nbsp;&nbsp;
            </CommandItemTemplate>
            <Columns>
                <telerik:GridEditCommandColumn ButtonType="ImageButton" UniqueName="EditCommandColumn">
                </telerik:GridEditCommandColumn>
                <telerik:GridButtonColumn Text="Delete" UniqueName="DeleteButtonColumn" CommandName="Delete" ButtonType="ImageButton" />
                <telerik:GridBoundColumn DataField="Id" Visible="false" ReadOnly="True" HeaderText="Id" SortExpression="Id" UniqueName="Id" DataType="System.Int32" FilterControlAltText="Filter Id column"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="Name" HeaderText="Name" SortExpression="Name" UniqueName="Name" FilterControlAltText="Filter Name column"></telerik:GridBoundColumn>
            </Columns>
            <EditFormSettings>
                <EditColumn ButtonType="ImageButton" UniqueName="EditCommandColumn1" FilterControlAltText="Filter EditCommandColumn1 column"></EditColumn>
            </EditFormSettings>
        </MasterTableView>
    </telerik:RadGrid>
    <h1>Work Usages</h1>
    <telerik:RadGrid Skin="MetroTouch" ID="uiRadGridForWorkUsages" runat="server" DataSourceID="uiDataSourceForWorkUsages" GroupPanelPosition="Top" AllowSorting="True" AllowAutomaticUpdates="True" AllowAutomaticInserts="True" AllowAutomaticDeletes="True">
        <MasterTableView DataKeyNames="Id" CommandItemDisplay="Top" DataSourceID="uiDataSourceForWorkUsages" AutoGenerateColumns="False">
            <CommandItemTemplate>
                <asp:ImageButton ID="uiButtonForAddNewRecords" ImageUrl="Images/AddRecord.png" runat="server" CommandName="InitInsert" Visible='<%# !uiRadGridForWorkUsages.MasterTableView.IsItemInserted && User.IsInRole("Admin") %>'></asp:ImageButton>&nbsp;&nbsp;
            </CommandItemTemplate>
            <Columns>
                <telerik:GridEditCommandColumn ButtonType="ImageButton" UniqueName="EditCommandColumn">
                </telerik:GridEditCommandColumn>
                <telerik:GridButtonColumn Text="Delete" UniqueName="DeleteButtonColumn" CommandName="Delete" ButtonType="ImageButton" />
                <telerik:GridBoundColumn DataField="Id" ReadOnly="True" HeaderText="Id" SortExpression="Id" Visible="false" UniqueName="Id" DataType="System.Int32" FilterControlAltText="Filter Id column"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="Name" HeaderText="Name" SortExpression="Name" UniqueName="Name" FilterControlAltText="Filter Name column"></telerik:GridBoundColumn>
            </Columns>
            <EditFormSettings>
                <EditColumn ButtonType="ImageButton" UniqueName="EditCommandColumn1" FilterControlAltText="Filter EditCommandColumn1 column"></EditColumn>
            </EditFormSettings>
        </MasterTableView>
    </telerik:RadGrid>
    <asp:EntityDataSource ID="uiDataSourceForSocialUsages" runat="server" ConnectionString="name=HunderassenverwaltungEntities" EnableDelete="true" EnableInsert="true" EnableUpdate="true" DefaultContainerName="HunderassenverwaltungEntities" EnableFlattening="False" EntitySetName="SocialUsagesSet"></asp:EntityDataSource>
    <asp:EntityDataSource ID="uiDataSourceForWorkUsages" runat="server" ConnectionString="name=HunderassenverwaltungEntities" DefaultContainerName="HunderassenverwaltungEntities" EnableFlattening="False" EntitySetName="WorkUsagesSet" EnableInsert="True" EnableUpdate="True" EnableDelete="True"></asp:EntityDataSource>
    <% } %>
</asp:Content>
