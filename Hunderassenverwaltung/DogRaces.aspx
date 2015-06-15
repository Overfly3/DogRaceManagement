<%@ Page Title="Dog Races" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DogRaces.aspx.cs" Inherits="Hunderassenverwaltung.DogRaces" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <% if(User.Identity.IsAuthenticated) { %>
    <h1>Dog races</h1>
    <telerik:RadGrid AutoGenerateColumns="true" ID="uiRadGridForDogRaces" runat="server" DataSourceID="uiDataSourceForDogRaces" AllowSorting="True" Skin="MetroTouch" EnableUpdate="True" AllowAutomaticDeletes="True" AllowAutomaticInserts="True" AllowAutomaticUpdates="True" CellSpacing="-1" GridLines="Both" GroupPanelPosition="Top">
        <MasterTableView CommandItemDisplay="Top" DataKeyNames="Id" DataSourceID="uiDataSourceForDogRaces" AutoGenerateColumns="False">
            <CommandItemTemplate>
                <asp:LinkButton ID="uiButtonForAddNewRecord" runat="server" CommandName="InitInsert" Visible='<%# !uiRadGridForDogRaces.MasterTableView.IsItemInserted %>'><img style="border:0px;vertical-align:middle;" alt="" src="Images/AddRecord.png"/>Add new record</asp:LinkButton>&nbsp;&nbsp;
            </CommandItemTemplate>
            <EditFormSettings>
                <EditColumn ButtonType="ImageButton" UniqueName="EditCommandColumn1" FilterControlAltText="Filter EditCommandColumn1 column"></EditColumn>
            </EditFormSettings>
        </MasterTableView>
    </telerik:RadGrid>
    <% } %>
    <asp:EntityDataSource CommandText="SELECT RacesSet.Id AS Id, RacesSet.Name AS Name, RacesSet.MinimumAge, RacesSet.MaximumAge, RacesSet.MinimumWeight, RacesSet.MaximumWeight, RacesSet.MinimumWithers, RacesSet.MaximumWithers, RacesSet.History, RacesSet.GeneralInformation, RacesSet.PayAttentionTo, Picture, RacesSet.[Country], FurrsSet.Name AS Furr, GroupsSet.Name AS RaceGroup FROM RacesSet INNER JOIN FurrsSet ON Furrs_Id = FurrsSet.Id INNER JOIN GroupsSet ON Groups_Id = GroupsSet.Id" runat="server" ID="uiDataSourceForDogRaces" DefaultContainerName="HunderassenverwaltungEntities" ConnectionString="name=HunderassenverwaltungEntities"></asp:EntityDataSource>
</asp:Content>
