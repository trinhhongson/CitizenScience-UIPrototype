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
            if (!IsPostBack)
            {
                divAddLocation.Visible = false;
                divUploadSensorData.Visible = false;
                divDownloadSensorData.Visible = false;
                divManageAdmins.Visible = false;
                divEditGallery.Visible = false;
                divEditAbout.Visible = false;                
            }
        }

        //  FUNCTION TO NAVIGATE ADMIN PANELS
        protected void Navigate(object sender, EventArgs e)
        {
            LinkButton lnk = sender as LinkButton;            
            switch (lnk.Attributes["CustomParameter"].ToString())
            {
                case "location":
                    lblPanelTitle.Text = "New Location:";
                    divAddLocation.Visible = true;
                    divUploadSensorData.Visible = false;
                    divDownloadSensorData.Visible = false;
                    divManageAdmins.Visible = false;
                    divEditGallery.Visible = false;
                    divEditAbout.Visible = false;
                    break;
                case "upload":
                    lblPanelTitle.Text = "Upload Sensor Data:";
                    divAddLocation.Visible = false;
                    divUploadSensorData.Visible = true;
                    divDownloadSensorData.Visible = false;
                    divManageAdmins.Visible = false;
                    divEditGallery.Visible = false;
                    divEditAbout.Visible = false;

                    divUploadError.Visible = false;
                    break;
                case "download":
                    lblPanelTitle.Text = "Download Sensor Data:";
                    divAddLocation.Visible = false;
                    divUploadSensorData.Visible = false;
                    divDownloadSensorData.Visible = true;
                    divManageAdmins.Visible = false;
                    divEditGallery.Visible = false;
                    divEditAbout.Visible = false;
                    break;
                case "admins":
                    lblPanelTitle.Text = "Manage Admins:";
                    divAddLocation.Visible = false;
                    divUploadSensorData.Visible = false;
                    divDownloadSensorData.Visible = false;
                    divManageAdmins.Visible = true;
                    divEditGallery.Visible = false;
                    divEditAbout.Visible = false;

                    divNewAdmin.Visible = false;
                    break;
                case "gallery":
                    lblPanelTitle.Text = "Manage Gallery:";
                    divAddLocation.Visible = false;
                    divUploadSensorData.Visible = false;
                    divDownloadSensorData.Visible = false;
                    divManageAdmins.Visible = false;
                    divEditGallery.Visible = true;
                    divEditAbout.Visible = false;

                    divEditAlbum.Visible = false;
                    divAddNewAlbum.Visible = false;
                    break;
                case "about":
                    lblPanelTitle.Text = "Manage About:";
                    divAddLocation.Visible = false;
                    divUploadSensorData.Visible = false;
                    divDownloadSensorData.Visible = false;
                    divManageAdmins.Visible = false;
                    divEditGallery.Visible = false;
                    divEditAbout.Visible = true;

                    divEditAboutSection.Visible = false;
                    //divAddAboutSection.Visible = false;
                    break;
            }
        }

        ////////////////////////////////////////////////////////////////////////////////////////      ADD LOCATION FUNCTIONS
        
        protected void btnAddLocation_Click(object sender, EventArgs e)
        {
            
        }

        ////////////////////////////////////////////////////////////////////////////////////////      DOWNLOAD WATERSHED DATA FUNCTIONS
        protected void ddlSensorDownloadWatersheds_Change(object sender, EventArgs e)
        {
        }


////////////////////////////////////////////////////////////////////////////////////////      UPLOAD WATERSHED DATA FUNCTIONS
        protected void btnUploadSensorData_Click(object sender, EventArgs e)
        {
            //  Show error div
            divUploadError.Visible = true;
        }
        protected void HideUploadError(object sender, EventArgs e)
        {
            //  Hide error div
            divUploadError.Visible = false;
        }

        ////////////////////////////////////////////////////////////////////////////////////////      MANAGE ADMINS FUNCTIONS        
        protected void btnAddNewAdmin_Click(object sender, EventArgs e)
        {
            divNewAdmin.Visible = true;
        }
        protected void HideNewAdmin(object sender, EventArgs e)
        {
            divNewAdmin.Visible = false;
        }


        ////////////////////////////////////////////////////////////////////////////////////////      MANAGE GALLERY FUNCTIONS
        protected void btnEditAlbum_Click(object sender, EventArgs e)
        {
            divEditAlbum.Visible = true;
            divAddNewAlbum.Visible = false;
        }
        //  Open New Album Form
        protected void btnAddAlbum_Click(object sender, EventArgs e)
        {
            divEditAlbum.Visible = false;
            divAddNewAlbum.Visible = true;
        }
        //  Submit New Album Form
        protected void btnCreateAlbum_Click(object sender, EventArgs e)
        {
            divAddNewAlbum.Visible = false;
        }
        protected void btnCloseEditGallery_Click(object sender, EventArgs e)
        {
            divEditAlbum.Visible = false;
        }


        ////////////////////////////////////////////////////////////////////////////////////////      MANAGE ABOUT FUNCTIONS   
        ///
        protected void btnAddAboutSection_Click(object sender, EventArgs e)
        {
            //divAddAboutSection.Visible = true;
            divEditAboutSection.Visible = false;
        }
        protected void btnEditAboutSection_Click(object sender, EventArgs e)
        {
            //divAddAboutSection.Visible = false;
            divEditAboutSection.Visible = true;
        }
        protected void HideEditAboutSection(object sender, EventArgs e)
        {
            divEditAboutSection.Visible = false;
        }
        protected void HideAddAboutSection(object sender, EventArgs e)
        {
            //divAddAboutSection.Visible = false;
        }
    }
}