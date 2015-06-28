using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hunderassenverwaltung
{
    public partial class Usages : Page
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
                uiRadGridForSocialUsages.MasterTableView.GetColumn("EditCommandColumn").Visible = isAdmin;
                uiRadGridForSocialUsages.MasterTableView.GetColumn("DeleteButtonColumn").Visible = isAdmin;
                uiRadGridForWorkUsages.MasterTableView.GetColumn("EditCommandColumn").Visible = isAdmin;
                uiRadGridForWorkUsages.MasterTableView.GetColumn("DeleteButtonColumn").Visible = isAdmin;
            }
        }
    }
}