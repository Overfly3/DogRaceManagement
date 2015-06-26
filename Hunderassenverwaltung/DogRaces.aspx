<%@ Page Title="Dog Races" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DogRaces.aspx.cs" Inherits="Hunderassenverwaltung.DogRaces" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <% if (User.Identity.IsAuthenticated)
       { %>
    <h1>Dog races</h1>
    <telerik:RadGrid ID="uiRadGridForDogRaces" runat="server" AllowSorting="True" Skin="MetroTouch" EnableUpdate="True" AllowAutomaticDeletes="True" AllowAutomaticInserts="True" AllowAutomaticUpdates="True" CellSpacing="-1" GridLines="Both" GroupPanelPosition="Top" DataSourceID="uiDataSourceForDogRaces">
        <ExportSettings>
            <Pdf PageWidth=""></Pdf>
        </ExportSettings>

        <MasterTableView CommandItemDisplay="Top" AutoGenerateColumns="False" DataSourceID="uiDataSourceForDogRaces">
            <Columns>
                <telerik:GridBoundColumn DataField="name" HeaderText="Name" SortExpression="name" UniqueName="name" FilterControlAltText="Filter Name column"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn Visible="false" DataField="minimumage" HeaderText="Minimum Age" SortExpression="minimumage" UniqueName="minimumage" FilterControlAltText="Filter Minimum Age column"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn Visible="false" DataField="maximumage" HeaderText="Maximum Age" SortExpression="maximumage" UniqueName="maximumage" FilterControlAltText="Filter Maximum Age column"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn Visible="false" DataField="minimumweight" HeaderText="Minimum Weight" SortExpression="minimumweight" UniqueName="minimumweight" FilterControlAltText="Filter Minimum Weight column"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn Visible="false" DataField="maximumweight" HeaderText="Maximum Weight" SortExpression="maximumweight" UniqueName="maximumweight" FilterControlAltText="Filter Maximum Weight column"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn Visible="false" DataField="minimumwithers" HeaderText="Minimum Withers" SortExpression="minimumwithers" UniqueName="minimumwithers" FilterControlAltText="Filter Minimum Withers column"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn Visible="false" DataField="maximumwithers" HeaderText="Maximum Withers" SortExpression="maximumwithers" UniqueName="maximumwithers" FilterControlAltText="Filter Maximum Withers column"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn Visible="false" DataField="history" HeaderText="History" SortExpression="history" UniqueName="history" FilterControlAltText="Filter History column"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn Visible="false" DataField="generalinformation" HeaderText="General Information" SortExpression="generalinformation" UniqueName="generalinformation" FilterControlAltText="Filter General Information column"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn Visible="false" DataField="payattentionto" HeaderText="Pay Attention To" SortExpression="payattentionto" UniqueName="payattentionto" FilterControlAltText="Filter Pay Attention To column"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn Visible="false" DataField="picture" HeaderText="Picture" SortExpression="picture" UniqueName="picture" FilterControlAltText="Filter Picture column"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="Country" HeaderText="Country" SortExpression="Country" UniqueName="Country" FilterControlAltText="Filter Country column"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="Furr" HeaderText="Furr" SortExpression="Furr" UniqueName="Furr" FilterControlAltText="Filter Furr column"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="RaceGroup" HeaderText="Race Group" SortExpression="RaceGroup" UniqueName="RaceGroup" FilterControlAltText="Filter Race Group column"></telerik:GridBoundColumn>
            </Columns>
            <NestedViewTemplate>
                <div class="DogBackground" style='<%# NormalizeValue(String.Format("background-image: url(Images/LargeLogos/{0}.png);", Eval("DogRaceName"))) %>'>
                    <div style="float: left;">
                        <telerik:RadBinaryImage ID="DogImage" runat="server" AlternateText="Dog Image" DataValue="<%# Eval("picture") == DBNull.Value? new System.Byte[0]: Eval("picture") %>" />
                    </div>
                    <div style="float: right; width: 50%">

                        <div class="DogPicture">
                            <h3><%# Eval("picture") %></h3>
                        </div>
                        <hr class="lineSeparator" />

                        <table width="100%" class="DogInfo">
                            <tr>
                                <td>
                                    <strong>Race:</strong>
                                    <%# Eval("name") %>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>Minimum Age:</strong>
                                    <%# Eval("minimumage") %>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>Maximum Age:</strong>
                                    <%# Eval("maximumage") %>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>Minimum Weight:</strong>
                                    <%# Eval("minimumweight") %>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>Maximum Weight:</strong>
                                    <%# Eval("maximumweight") %>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>Minimum Withers:</strong>
                                    <%# Eval("minimumwithers") %>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>Maximum Withers:</strong>
                                    <%# Eval("maximumwithers") %>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>History:</strong>
                                    <%# Eval("history") %>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>General Information:</strong>
                                    <%# Eval("generalinformation") %>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>Pay Attention To:</strong>
                                    <%# Eval("payattentionto") %>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div style="clear: both">
                    </div>
                </div>
            </NestedViewTemplate>
            <CommandItemTemplate>
                <asp:LinkButton ID="uiButtonForAddNewRecord" runat="server" CommandName="InitInsert" Visible='<%# !uiRadGridForDogRaces.MasterTableView.IsItemInserted %>'><img style="border:0px;vertical-align:middle;" alt="" src="Images/AddRecord.png"/>Add new record</asp:LinkButton>&nbsp;&nbsp;
            </CommandItemTemplate>
            <EditFormSettings>
                <EditColumn ButtonType="ImageButton" UniqueName="EditCommandColumn1" FilterControlAltText="Filter EditCommandColumn1 column"></EditColumn>
            </EditFormSettings>
        </MasterTableView>
    </telerik:RadGrid>
    <% } %>
    <asp:EntityDataSource runat="server" ID="uiDataSourceForDogRaces" DefaultContainerName="HunderassenverwaltungEntities" ConnectionString="name=HunderassenverwaltungEntities"></asp:EntityDataSource>
</asp:Content>
