using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hunderassenverwaltung
{
    public partial class Property : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/Account/Login");
            }
            else
            {
                bool isAdmin = User.IsInRole("Admin");
                uiRadGridForCharacteristics.MasterTableView.GetColumn("EditCommandColumn").Visible = isAdmin;
                uiRadGridForCharacteristics.MasterTableView.GetColumn("DeleteButtonColumn").Visible = isAdmin;
                uiRadGridForFurr.MasterTableView.GetColumn("EditCommandColumn").Visible = isAdmin;
                uiRadGridForFurr.MasterTableView.GetColumn("DeleteButtonColumn").Visible = isAdmin;
                uiRadGridForGroups.MasterTableView.GetColumn("EditCommandColumn").Visible = isAdmin;
                uiRadGridForGroups.MasterTableView.GetColumn("DeleteButtonColumn").Visible = isAdmin;
            }
        }
    }
}