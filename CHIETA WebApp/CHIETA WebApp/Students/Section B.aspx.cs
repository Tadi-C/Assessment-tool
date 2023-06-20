using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace CHIETA_WebApp.Students
{
    public partial class Section_B : System.Web.UI.Page
    {
        protected string QuestionB { get { return "Calender based maintenance can also be discribed as:"; } }


        protected string OptionJsonB { get { return JsonConvert.SerializeObject(new string[] { "Option 1", "Option 2", "Option 3", "Option 4" }); } }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}