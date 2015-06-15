<%@ Page Title="Properties" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Property.aspx.cs" Inherits="Hunderassenverwaltung.Property" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <% if(User.Identity.IsAuthenticated) { %>
        <h1>Furr</h1>
    <telerik:RadGrid ID="uiRadGridForFurr" runat="server" DataSourceID="uiDataSourceForFurr" AllowSorting="True" Skin="MetroTouch" EnableUpdate="True" AllowAutomaticDeletes="True" AllowAutomaticInserts="True" AllowAutomaticUpdates="True" CellSpacing="-1" GridLines="Both" GroupPanelPosition="Top">
        <MasterTableView CommandItemDisplay="Top" DataKeyNames="Id" DataSourceID="uiDataSourceForFurr" AutoGenerateColumns="False">
            <CommandItemTemplate>
                <asp:LinkButton ID="uiButtonForAddNewRecord" runat="server" CommandName="InitInsert" Visible='<%# !uiRadGridForFurr.MasterTableView.IsItemInserted %>'><img style="border:0px;vertical-align:middle;" alt="" src="Images/AddRecord.png"/>Add new record</asp:LinkButton>&nbsp;&nbsp;
            </CommandItemTemplate>
            <Columns>
                <telerik:GridEditCommandColumn ButtonType="ImageButton" UniqueName="EditCommandColumn">
                </telerik:GridEditCommandColumn>
                <telerik:GridButtonColumn Text="Delete" CommandName="Delete" ButtonType="ImageButton" />
                <telerik:GridBoundColumn Visible="false" DataField="Id" ReadOnly="True" HeaderText="Id" SortExpression="Id" UniqueName="Id" DataType="System.Int32" FilterControlAltText="Filter Id column"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="Name" HeaderText="Name" SortExpression="Name" UniqueName="Name" FilterControlAltText="Filter Name column"></telerik:GridBoundColumn>
            </Columns>
            <EditFormSettings>
                <EditColumn ButtonType="ImageButton" UniqueName="EditCommandColumn1" FilterControlAltText="Filter EditCommandColumn1 column"></EditColumn>
            </EditFormSettings>
        </MasterTableView>
    </telerik:RadGrid>
    <asp:EntityDataSource runat="server" ID="uiDataSourceForFurr" DefaultContainerName="HunderassenverwaltungEntities" ConnectionString="name=HunderassenverwaltungEntities" EnableFlattening="False" EntitySetName="FurrsSet" EnableDelete="True" EnableInsert="True" EnableUpdate="True"></asp:EntityDataSource>
    <h1>Characteristics</h1>
    <telerik:RadGrid ID="uiRadGridForCharacteristics" runat="server" DataSourceID="uiDataSourceForCharacteristics" AllowSorting="True" Skin="MetroTouch" EnableUpdate="True" AllowAutomaticDeletes="True" AllowAutomaticInserts="True" AllowAutomaticUpdates="True" CellSpacing="-1" GridLines="Both" GroupPanelPosition="Top">
        <MasterTableView CommandItemDisplay="Top" DataKeyNames="Id" DataSourceID="uiDataSourceForCharacteristics" AutoGenerateColumns="False">
            <CommandItemTemplate>
                <asp:LinkButton ID="uiButtonForAddNewRecord" runat="server" CommandName="InitInsert" Visible='<%# !uiRadGridForCharacteristics.MasterTableView.IsItemInserted %>'><img style="border:0px;vertical-align:middle;" alt="" src="Images/AddRecord.png"/>Add new record</asp:LinkButton>&nbsp;&nbsp;
            </CommandItemTemplate>
            <Columns>
                <telerik:GridEditCommandColumn ButtonType="ImageButton" UniqueName="EditCommandColumn">
                </telerik:GridEditCommandColumn>
                <telerik:GridButtonColumn Text="Delete" CommandName="Delete" ButtonType="ImageButton" />
                <telerik:GridBoundColumn Visible="false" DataField="Id" ReadOnly="True" HeaderText="Id" SortExpression="Id" UniqueName="Id" DataType="System.Int32" FilterControlAltText="Filter Id column"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="Name" HeaderText="Name" SortExpression="Name" UniqueName="Name" FilterControlAltText="Filter Name column"></telerik:GridBoundColumn>
            </Columns>
            <EditFormSettings>
                <EditColumn ButtonType="ImageButton" UniqueName="EditCommandColumn1" FilterControlAltText="Filter EditCommandColumn1 column"></EditColumn>
            </EditFormSettings>
        </MasterTableView>
    </telerik:RadGrid>
    <asp:EntityDataSource runat="server" ID="uiDataSourceForCharacteristics" DefaultContainerName="HunderassenverwaltungEntities" ConnectionString="name=HunderassenverwaltungEntities" EnableFlattening="False" EntitySetName="CharacteristicsSet" EnableDelete="True" EnableInsert="True" EnableUpdate="True"></asp:EntityDataSource>
    <h1>Groups</h1>
    <telerik:RadGrid ID="uiRadGridForGroups" runat="server" DataSourceID="uiDataSourceForGroup" AllowSorting="True" Skin="MetroTouch" EnableUpdate="True" AllowAutomaticDeletes="True" AllowAutomaticInserts="True" AllowAutomaticUpdates="True" CellSpacing="-1" GridLines="Both" GroupPanelPosition="Top">
        <MasterTableView CommandItemDisplay="Top" DataKeyNames="Id" DataSourceID="uiDataSourceForGroup" AutoGenerateColumns="False">
            <CommandItemTemplate>
                <asp:LinkButton ID="uiButtonForAddNewRecord" runat="server" CommandName="InitInsert" Visible='<%# !uiRadGridForGroups.MasterTableView.IsItemInserted %>'><img style="border:0px;vertical-align:middle;" alt="" src="Images/AddRecord.png"/>Add new record</asp:LinkButton>&nbsp;&nbsp;
            </CommandItemTemplate>
            <Columns>
                <telerik:GridEditCommandColumn ButtonType="ImageButton" UniqueName="EditCommandColumn">
                </telerik:GridEditCommandColumn>
                <telerik:GridButtonColumn Text="Delete" CommandName="Delete" ButtonType="ImageButton" />
                <telerik:GridBoundColumn Visible="false" DataField="Id" ReadOnly="True" HeaderText="Id" SortExpression="Id" UniqueName="Id" DataType="System.Int32" FilterControlAltText="Filter Id column"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="Name" HeaderText="Name" SortExpression="Name" UniqueName="Name" FilterControlAltText="Filter Name column"></telerik:GridBoundColumn>
            </Columns>
            <EditFormSettings>
                <EditColumn ButtonType="ImageButton" UniqueName="EditCommandColumn1" FilterControlAltText="Filter EditCommandColumn1 column"></EditColumn>
            </EditFormSettings>
        </MasterTableView>
    </telerik:RadGrid>
    <% } %>
    <asp:EntityDataSource runat="server" ID="uiDataSourceForGroup" DefaultContainerName="HunderassenverwaltungEntities" ConnectionString="name=HunderassenverwaltungEntities" EnableFlattening="False" EntitySetName="GroupsSet" EnableDelete="True" EnableInsert="True" EnableUpdate="True"></asp:EntityDataSource>
</asp:Content>
