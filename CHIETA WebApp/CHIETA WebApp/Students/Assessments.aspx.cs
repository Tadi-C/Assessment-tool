﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CHIETA_WebApp.Students
{
    public partial class Assessments : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAssess_Click(object sender, EventArgs e)
        {
            DBmethods.paperNumber = "1A";
            Response.Redirect("Section A.aspx");

        }

        protected void btnAssess2_Click(object sender, EventArgs e)
        {
            DBmethods.paperNumber = "2A";
            Response.Redirect("Section A.aspx");
        }

        protected void btnAssess3_Click(object sender, EventArgs e)
        {
            DBmethods.paperNumber = "3A";
            Response.Redirect("Section A.aspx");
        }

        protected void btnBack_ServerClick(object sender, EventArgs e)
        {

        }
    }
}