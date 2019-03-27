using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CitizenScience_UIPrototype
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ddlAdminAction_Change(object sender, EventArgs e)
        {
            string page = ddlAdminAction.SelectedValue;
            switch (page)
            {
                case "addLocation":
                    break;
                case "uploadSensorData":
                    break;
                case "downloadSensorData":
                    break;
                case "manageAdmins":
                    break;
                case "editGallery":
                    break;
                case "editAbout":
                    break;
                case "":
                    break;
            }
        }
        protected void ddlSensorDownloadWatersheds_Change(object sender, EventArgs e)
        {

        }
    }
}