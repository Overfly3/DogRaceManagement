using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using Hunderassenverwaltung.Managers;
using Hunderassenverwaltung.Models;

namespace Hunderassenverwaltung
{
    public partial class DogRaces : Page
    {
        private byte[] myFileData;
        private const string sqlCommandForSelectRaces = @"
SELECT RacesSet.id AS Id, 
       RacesSet.NAME AS name, 
       RacesSet.minimumage, 
       RacesSet.maximumage, 
       RacesSet.minimumweight, 
       RacesSet.maximumweight, 
       RacesSet.minimumwithers, 
       RacesSet.maximumwithers, 
       RacesSet.history, 
       RacesSet.generalinformation, 
       RacesSet.payattentionto, 
       RacesSet.picture AS pictureData, 
       RacesSet.Country, 
       FurrsSet.NAME  AS Furr,
	   FurrsSet.Id AS FurrId,
       GroupsSet.NAME AS RaceGroup,
	   GroupsSet.Id AS GroupId,
       CharacteristicsSet.NAME AS Characteristic,
	   CharacteristicsSet.Id AS CharacteristicId,
       SocialUsagesSet.NAME AS SocialUsage,
	   SocialUsagesSet.Id AS SocialUsageId,
       WorkUsagesSet.NAME AS WorkUsage,
	   WorkUsagesSet.Id AS WorkUsageId
FROM   RacesSet 
       INNER JOIN furrsset 
               ON RacesSet.furrs_id = FurrsSet.id 
       INNER JOIN GroupsSet 
               ON RacesSet.groups_id = GroupsSet.id
       INNER JOIN CharacteristicsSet 
               ON RacesSet.CharacteristicsSetId = CharacteristicsSet.id
       INNER JOIN SocialUsagesSet 
               ON RacesSet.SocialUsagesSetId = SocialUsagesSet.id
       INNER JOIN WorkUsagesSet 
               ON RacesSet.WorkUsagesSetId = WorkUsagesSet.id";
        private Hashtable myValues;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/Account/Login");
            }
            else
            {
                bool isAdmin = User.IsInRole("Admin");
                uiRadGridForDogRaces.MasterTableView.GetColumn("EditCommandColumn").Visible = isAdmin;
                uiRadGridForDogRaces.MasterTableView.GetColumn("DeleteButtonColumn").Visible = isAdmin;
                uiDataSourceForDogRaces.CommandText = sqlCommandForSelectRaces;
            }
        }
        protected string NormalizeValue(object inputValue)
        {
            return inputValue.ToString().Replace(" ", "");
        }
        protected string GetDogImageUrl(object container)
        {
            Hashtable values = new Hashtable();
            (container as GridNestedViewItem).ParentItem.ExtractValues(values);
            return String.Format("~/Grid/Examples/Overview/Images/Dogs/{0}_{1}.png", NormalizeValue(values["DogRaceName"]), NormalizeValue(values["Model"]));
        }

        protected void uiRadGridForDogRaces_InsertCommand(object sender, GridCommandEventArgs e)
        {
            getImageFromColumn(e);

            //get info from grid
            RaceManager manager = new RaceManager();
            GridEditableItem editableItem = ((GridEditableItem)e.Item);
            myValues = new Hashtable();
            editableItem.ExtractValues(myValues);
            RacesSet race = new RacesSet();

            fillRaceEntity(race);

            

            //save entity
            manager.CreateRace(race);
        }

        private void fillRaceEntity(RacesSet race)
        {
            //fill entity
            race.Name = myValues["name"].ToString();
            race.MinimumAge = Int16.Parse(myValues["minimumage"].ToString());
            race.MaximumAge = Int16.Parse(myValues["maximumage"].ToString());
            race.MinimumWeight = Int16.Parse(myValues["minimumweight"].ToString());
            race.MaximumWeight = Int16.Parse(myValues["maximumweight"].ToString());
            race.MinimumWithers = Int16.Parse(myValues["minimumwithers"].ToString());
            race.MaximumWithers = Int16.Parse(myValues["maximumwithers"].ToString());
            race.History = myValues["history"].ToString();
            race.GeneralInformation = myValues["generalinformation"].ToString();
            race.PayAttentionTo = myValues["payattentionto"].ToString();
            race.Picture = myFileData;
            race.Country = myValues["Country"].ToString();
            race.Furrs_Id = Int32.Parse(myValues["FurrId"].ToString());
            race.Groups_Id = Int32.Parse(myValues["GroupId"].ToString());
            race.CharacteristicsSetId = Int32.Parse(myValues["CharacteristicId"].ToString());
            race.SocialUsagesSetId = Int32.Parse(myValues["SocialUsageId"].ToString());
            race.WorkUsagesSetId = Int32.Parse(myValues["WorkUsageId"].ToString());
        }

        private void getImageFromColumn(GridCommandEventArgs e)
        {
            //get image
            GridEditFormItem insertItem = e.Item as GridEditFormItem;
            RadAsyncUpload radAsyncUpload = insertItem["pictureData"].FindControl("AsyncUpload1") as RadAsyncUpload;
            UploadedFile file = radAsyncUpload.UploadedFiles[0];
            myFileData = new byte[file.InputStream.Length];
            file.InputStream.Read(myFileData, 0, (int)file.InputStream.Length);
        }

        protected void uiRadGridForDogRaces_UpdateCommand(object sender, GridCommandEventArgs e)
        {
            //get image
            getImageFromColumn(e);

            //get info from grid
            RaceManager manager = new RaceManager();
            GridEditableItem editableItem = ((GridEditableItem)e.Item);
            myValues = new Hashtable();
            editableItem.ExtractValues(myValues);
            RacesSet race = manager.GetRaceById(Int32.Parse(editableItem.GetDataKeyValue("Id").ToString()));
            
            fillRaceEntity(race);

            //save entity
            manager.UpdateChanges(race);
        }

        protected void uiRadGridForDogRaces_DeleteCommand(object sender, GridCommandEventArgs e)
        {
            new RaceManager().DeleteRace(Int32.Parse((e.Item as GridDataItem).GetDataKeyValue("Id").ToString()));
        }
    }
}