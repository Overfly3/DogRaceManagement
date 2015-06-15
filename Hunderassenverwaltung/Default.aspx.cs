using Hunderassenverwaltung.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

namespace Hunderassenverwaltung
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/Account/Login");
            }
        }

        protected void uiImageButtonForExcel_Click(object sender, ImageClickEventArgs e)
        {
            uiRadGridForUser.ExportSettings.Excel.Format = GridExcelExportFormat.ExcelML;
            uiRadGridForUser.ExportSettings.IgnorePaging = true;
            uiRadGridForUser.ExportSettings.ExportOnlyData = true;
            uiRadGridForUser.ExportSettings.OpenInNewWindow = true;
            uiRadGridForUser.MasterTableView.ExportToExcel();
        }
    }
}