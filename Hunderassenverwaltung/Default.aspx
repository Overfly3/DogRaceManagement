<%@ Page Title="Dog race management" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Hunderassenverwaltung._Default" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <% if(User.Identity.IsAuthenticated) { %>
        <h1>Users</h1>
        <div>
            <asp:ImageButton ID="uiImageButtonForExcel" runat="server" ImageUrl="images/Excel_ExcelML.png" OnClick="uiImageButtonForExcel_Click" AlternateText="Excel" />
        </div>
        <telerik:RadGrid ID="uiRadGridForUser" Skin="MetroTouch" AllowSorting="True" AllowPaging="True" OnItemCreated="RadGrid1_ItemCreated" PageSize="20" runat="server" AllowFilteringByColumn="True" GroupPanelPosition="Top" CellSpacing="-1" GridLines="Both" DataSourceID="uiDataSourceForUsers" AllowAutomaticDeletes="True" AllowAutomaticInserts="True" AllowAutomaticUpdates="True" AllowCustomPaging="True" ShowFooter="True">
            <ClientSettings AllowColumnsReorder="True" ReorderColumnsOnClient="True">
            </ClientSettings>
            <MasterTableView InsertItemDisplay="Top" CommandItemDisplay="Top" DataKeyNames="Id" AllowCustomPaging="False" DataSourceID="uiDataSourceForUsers" ShowFooter="False" AutoGenerateColumns="False">
                <CommandItemTemplate>
                    
                    <asp:ImageButton ID="uiButtonForAddNewRecords" ImageUrl="Images/AddRecord.png" runat="server" CommandName="InitInsert" Visible='<%# !uiRadGridForUser.MasterTableView.IsItemInserted && User.IsInRole("Admin") %>'></asp:ImageButton>&nbsp;&nbsp;
                </CommandItemTemplate>
                <Columns>
                    <telerik:GridBoundColumn DataField="Id" ReadOnly="True" Visible="false" HeaderText="Id" SortExpression="Id" UniqueName="Id" FilterControlAltText="Filter Id column"></telerik:GridBoundColumn>
                    
                    <telerik:GridEditCommandColumn ButtonType="ImageButton" UniqueName="EditCommandColumn">
                    </telerik:GridEditCommandColumn>
                    <telerik:GridButtonColumn Text="Delete" CommandName="Delete" ButtonType="ImageButton" />
                    <telerik:GridBoundColumn DataField="Name" HeaderText="Name" SortExpression="Name" UniqueName="Name" FilterControlAltText="Filter Name column"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Prename" HeaderText="Prename" SortExpression="Prename" UniqueName="Prename" FilterControlAltText="Filter Prename column"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Address" HeaderText="Address" SortExpression="Address" UniqueName="Address" FilterControlAltText="Filter Address column"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Zip" HeaderText="Zip" SortExpression="Zip" UniqueName="Zip" FilterControlAltText="Filter Zip column"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="City" HeaderText="City" SortExpression="City" UniqueName="City" FilterControlAltText="Filter City column"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Email" HeaderText="Email" SortExpression="Email" UniqueName="Email" FilterControlAltText="Filter Email column"></telerik:GridBoundColumn>
                </Columns>
                <EditFormSettings>
                    <EditColumn ButtonType="ImageButton" UniqueName="EditCommandColumn1" FilterControlAltText="Filter EditCommandColumn1 column"></EditColumn>
                </EditFormSettings>
                <PagerStyle AlwaysVisible="True" />
            </MasterTableView>
            <PagerStyle AlwaysVisible="True" PageSizes="10;20;50" />
        </telerik:RadGrid>
        <asp:EntityDataSource EnableDelete="true" EnableInsert="true" EnableUpdate="true" ID="uiDataSourceForUsers" runat="server" OrderBy="it.[Name] ASC" ConnectionString="name=HunderassenverwaltungEntities" DefaultContainerName="HunderassenverwaltungEntities" EnableFlattening="False" EntitySetName="AspNetUsers"></asp:EntityDataSource>
    <% } %>
</asp:Content>

