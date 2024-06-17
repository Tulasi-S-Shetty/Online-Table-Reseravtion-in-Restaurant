using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Template.Templates
{
    public partial class WebForm6 : System.Web.UI.Page
    {
       
        protected void btnUnpost_Click(object sender, EventArgs e)
        {
            Response.Redirect("DltFeedback.aspx");

        }
    }
}