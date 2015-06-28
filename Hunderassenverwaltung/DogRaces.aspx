<%@ Page Title="Dog Races" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DogRaces.aspx.cs" Inherits="Hunderassenverwaltung.DogRaces" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <% if (User.Identity.IsAuthenticated)
       { %>
    <h1>Dog races</h1>
    <telerik:RadGrid OnDeleteCommand="uiRadGridForDogRaces_DeleteCommand" OnUpdateCommand="uiRadGridForDogRaces_UpdateCommand" OnInsertCommand="uiRadGridForDogRaces_InsertCommand" ID="uiRadGridForDogRaces" runat="server" AllowSorting="True" Skin="MetroTouch" EnableUpdate="True" AllowAutomaticDeletes="False" AllowAutomaticInserts="False" AllowAutomaticUpdates="False" CellSpacing="-1" GridLines="Both" GroupPanelPosition="Top" DataSourceID="uiDataSourceForDogRaces">
        <ExportSettings>
            <Pdf PageWidth=""></Pdf>
        </ExportSettings>

        <MasterTableView DataKeyNames="Id" CommandItemDisplay="Top" AutoGenerateColumns="False" DataSourceID="uiDataSourceForDogRaces">
            <Columns>
                <telerik:GridBoundColumn DataField="Id" ReadOnly="True" Visible="false" HeaderText="Id" SortExpression="Id" UniqueName="Id" FilterControlAltText="Filter Id column"></telerik:GridBoundColumn>
                <telerik:GridEditCommandColumn ButtonType="ImageButton" UniqueName="EditCommandColumn">
                </telerik:GridEditCommandColumn>
                <telerik:GridButtonColumn Text="Delete" UniqueName="DeleteButtonColumn" CommandName="Delete" ButtonType="ImageButton" />
                <telerik:GridBoundColumn ColumnValidationSettings-RequiredFieldValidator-ForeColor="Red" ColumnValidationSettings-RequiredFieldValidator-ErrorMessage="This fieldis required!" ColumnValidationSettings-EnableRequiredFieldValidation="true" Visible="true" DataField="name" HeaderText="Name" SortExpression="name" UniqueName="name" FilterControlAltText="Filter Name column"></telerik:GridBoundColumn>
                <telerik:GridNumericColumn ColumnValidationSettings-RequiredFieldValidator-ForeColor="Red" ColumnValidationSettings-RequiredFieldValidator-ErrorMessage="This fieldis required!" ColumnValidationSettings-EnableRequiredFieldValidation="true" Visible="false" DataField="minimumage" HeaderText="Minimum Age" SortExpression="minimumage" UniqueName="minimumage" FilterControlAltText="Filter Minimum Age column"></telerik:GridNumericColumn>
                <telerik:GridNumericColumn ColumnValidationSettings-RequiredFieldValidator-ForeColor="Red" ColumnValidationSettings-RequiredFieldValidator-ErrorMessage="This fieldis required!" ColumnValidationSettings-EnableRequiredFieldValidation="true" Visible="false" DataField="maximumage" HeaderText="Maximum Age" SortExpression="maximumage" UniqueName="maximumage" FilterControlAltText="Filter Maximum Age column"></telerik:GridNumericColumn>
                <telerik:GridNumericColumn ColumnValidationSettings-RequiredFieldValidator-ForeColor="Red" ColumnValidationSettings-RequiredFieldValidator-ErrorMessage="This fieldis required!" ColumnValidationSettings-EnableRequiredFieldValidation="true" Visible="false" DataField="minimumweight" HeaderText="Minimum Weight" SortExpression="minimumweight" UniqueName="minimumweight" FilterControlAltText="Filter Minimum Weight column"></telerik:GridNumericColumn>
                <telerik:GridNumericColumn ColumnValidationSettings-RequiredFieldValidator-ForeColor="Red" ColumnValidationSettings-RequiredFieldValidator-ErrorMessage="This fieldis required!" ColumnValidationSettings-EnableRequiredFieldValidation="true" Visible="false" DataField="maximumweight" HeaderText="Maximum Weight" SortExpression="maximumweight" UniqueName="maximumweight" FilterControlAltText="Filter Maximum Weight column"></telerik:GridNumericColumn>
                <telerik:GridNumericColumn ColumnValidationSettings-RequiredFieldValidator-ForeColor="Red" ColumnValidationSettings-RequiredFieldValidator-ErrorMessage="This fieldis required!" ColumnValidationSettings-EnableRequiredFieldValidation="true" Visible="false" DataField="minimumwithers" HeaderText="Minimum Withers" SortExpression="minimumwithers" UniqueName="minimumwithers" FilterControlAltText="Filter Minimum Withers column"></telerik:GridNumericColumn>
                <telerik:GridNumericColumn ColumnValidationSettings-RequiredFieldValidator-ForeColor="Red" ColumnValidationSettings-RequiredFieldValidator-ErrorMessage="This fieldis required!" ColumnValidationSettings-EnableRequiredFieldValidation="true" Visible="false" DataField="maximumwithers" HeaderText="Maximum Withers" SortExpression="maximumwithers" UniqueName="maximumwithers" FilterControlAltText="Filter Maximum Withers column"></telerik:GridNumericColumn>
                <telerik:GridBoundColumn ColumnValidationSettings-RequiredFieldValidator-ForeColor="Red" ColumnValidationSettings-RequiredFieldValidator-ErrorMessage="This fieldis required!" ColumnValidationSettings-EnableRequiredFieldValidation="true" Visible="false" DataField="history" HeaderText="History" SortExpression="history" UniqueName="history" FilterControlAltText="Filter History column"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn ColumnValidationSettings-RequiredFieldValidator-ForeColor="Red" ColumnValidationSettings-RequiredFieldValidator-ErrorMessage="This fieldis required!" ColumnValidationSettings-EnableRequiredFieldValidation="true" Visible="false" DataField="generalinformation" HeaderText="General Information" SortExpression="generalinformation" UniqueName="generalinformation" FilterControlAltText="Filter General Information column"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn ColumnValidationSettings-RequiredFieldValidator-ForeColor="Red" ColumnValidationSettings-RequiredFieldValidator-ErrorMessage="This fieldis required!" ColumnValidationSettings-EnableRequiredFieldValidation="true" Visible="false" DataField="payattentionto" HeaderText="Pay Attention To" SortExpression="payattentionto" UniqueName="payattentionto" FilterControlAltText="Filter Pay Attention To column"></telerik:GridBoundColumn>
                <telerik:GridTemplateColumn Visible="false" DataField="pictureData" HeaderText="Picture" SortExpression="pictureData" UniqueName="pictureData" FilterControlAltText="Filter Picture column">
                    <ItemTemplate>
                        <telerik:RadBinaryImage runat="server" ID="uiRadBinaryImageForColumn" DataValue='<%#Eval("pictureData") %>'
                            AutoAdjustImageControlSize="false" Height="80px" Width="80px"></telerik:RadBinaryImage>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <telerik:RadAsyncUpload runat="server" ID="AsyncUpload1" AllowedFileExtensions="jpg,jpeg,png,gif" MaxFileSize="6048576">
                        </telerik:RadAsyncUpload>
                    </EditItemTemplate>
                </telerik:GridTemplateColumn>
                <telerik:GridDropDownColumn DataSourceID="uiDataSourceForCountries" Visible="true" DataField="Country" HeaderText="Country" SortExpression="Country" UniqueName="Country" FilterControlAltText="Filter Country column"></telerik:GridDropDownColumn>
                <telerik:GridDropDownColumn ListTextField="Name" ListValueField="Id" DataSourceID="uiDataSourceForFurrs" Visible="true" DataField="FurrId" HeaderText="Furr" SortExpression="Furr" UniqueName="Furr" FilterControlAltText="Filter Furr column"></telerik:GridDropDownColumn>
                <telerik:GridDropDownColumn ListTextField="Name" ListValueField="Id" DataSourceID="uiDataSourceForGroups" Visible="true" DataField="GroupId" HeaderText="Race Group" SortExpression="RaceGroup" UniqueName="RaceGroup" FilterControlAltText="Filter Race Group column"></telerik:GridDropDownColumn>
                <telerik:GridDropDownColumn ListTextField="Name" ListValueField="Id" DataSourceID="uiDataSourceForCharacteristics" Visible="false" DataField="CharacteristicId" HeaderText="Characteristic" SortExpression="Characteristic" UniqueName="Characteristic" FilterControlAltText="Filter Characteristic column"></telerik:GridDropDownColumn>
                <telerik:GridDropDownColumn ListTextField="Name" ListValueField="Id" DataSourceID="uiDataSourceForSocialUsages" Visible="true" DataField="SocialUsageId" HeaderText="Social Usage" SortExpression="SocialUsage" UniqueName="SocialUsage" FilterControlAltText="Filter Social Usage column"></telerik:GridDropDownColumn>
                <telerik:GridDropDownColumn ListTextField="Name" ListValueField="Id" DataSourceID="uiDataSourceForWorkUsages" Visible="true" DataField="WorkUsageId" HeaderText="Work Usage" SortExpression="WorkUsage" UniqueName="WorkUsage" FilterControlAltText="Filter Work Usage column"></telerik:GridDropDownColumn>
            </Columns>
            <NestedViewTemplate>
                <div class="DogBackground">
                    <div style="float: left;">
                        <img id="imageForServer" runat="server" src='<%# "data:image/png;base64," + Convert.ToBase64String((byte[])Eval("pictureData")) %>' />
                    </div>
                    <div style="float: right; width: 50%">

                        <div class="DogPicture">
                        </div>
                        <hr class="lineSeparator" />

                        <table style="width: 100%" class="DogInfo">
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
                            <tr>
                                <td>
                                    <strong>Characteristic:</strong>
                                    <%# Eval("Characteristic") %>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div style="clear: both">
                    </div>
                </div>
            </NestedViewTemplate>
            <CommandItemTemplate>
                <asp:ImageButton ID="uiButtonForAddNewRecords" ImageUrl="Images/AddRecord.png" runat="server" CommandName="InitInsert" Visible='<%# !uiRadGridForDogRaces.MasterTableView.IsItemInserted && User.IsInRole("Admin") %>'></asp:ImageButton>&nbsp;&nbsp;
            </CommandItemTemplate>
            <EditFormSettings>
                <EditColumn ButtonType="ImageButton" UniqueName="EditCommandColumn1" FilterControlAltText="Filter EditCommandColumn1 column"></EditColumn>
            </EditFormSettings>
        </MasterTableView>
    </telerik:RadGrid>
    <% } %>
    <asp:EntityDataSource ID="uiDataSourceForCharacteristics" runat="server" ConnectionString="name=HunderassenverwaltungEntities" DefaultContainerName="HunderassenverwaltungEntities" EnableFlattening="False" EntitySetName="CharacteristicsSet"></asp:EntityDataSource>
    <asp:EntityDataSource ID="uiDataSourceForSocialUsages" runat="server" ConnectionString="name=HunderassenverwaltungEntities" DefaultContainerName="HunderassenverwaltungEntities" EnableFlattening="False" EntitySetName="SocialUsagesSet"></asp:EntityDataSource>
    <asp:EntityDataSource ID="uiDataSourceForWorkUsages" runat="server" ConnectionString="name=HunderassenverwaltungEntities" DefaultContainerName="HunderassenverwaltungEntities" EnableFlattening="False" EntitySetName="WorkUsagesSet"></asp:EntityDataSource>
    <asp:EntityDataSource ID="uiDataSourceForGroups" runat="server" ConnectionString="name=HunderassenverwaltungEntities" DefaultContainerName="HunderassenverwaltungEntities" EnableFlattening="False" EntitySetName="GroupsSet"></asp:EntityDataSource>
    <asp:ObjectDataSource ID="uiDataSourceForCountries" runat="server" SelectMethod="GetCountryList" TypeName="Hunderassenverwaltung.Managers.CountryManager"></asp:ObjectDataSource>
    <asp:EntityDataSource ID="uiDataSourceForFurrs" runat="server" ConnectionString="name=HunderassenverwaltungEntities" DefaultContainerName="HunderassenverwaltungEntities" EnableFlattening="False" EntitySetName="FurrsSet"></asp:EntityDataSource>
    <asp:EntityDataSource runat="server" ID="uiDataSourceForDogRaces" DefaultContainerName="HunderassenverwaltungEntities" ConnectionString="name=HunderassenverwaltungEntities"></asp:EntityDataSource>
</asp:Content>
