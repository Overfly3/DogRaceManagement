using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

namespace Hunderassenverwaltung
{
    public partial class DogRaces : Page
    {
        private const string sqlCommandForSelectRaces = @"SELECT racesset.id AS Id, 
       racesset.NAME AS name, 
       racesset.minimumage, 
       racesset.maximumage, 
       racesset.minimumweight, 
       racesset.maximumweight, 
       racesset.minimumwithers, 
       racesset.maximumwithers, 
       racesset.history, 
       racesset.generalinformation, 
       racesset.payattentionto, 
       racesset.picture, 
       racesset.Country, 
       furrsset.NAME  AS Furr, 
       groupsset.NAME AS RaceGroup 
FROM   racesset 
       INNER JOIN furrsset 
               ON racesset.furrs_id = furrsset.id 
       INNER JOIN groupsset 
               ON racesset.groups_id = groupsset.id";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/Account/Login");
            }
            else
            {
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

    }
}