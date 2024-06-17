using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Template.Templates
{
    public partial class Admin : System.Web.UI.MasterPage
    {
      
        protected void btnView_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewBooking.aspx");


        }

        protected void btnTable_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewTables.aspx");

        }

        protected void btnFeedback_Click(object sender, EventArgs e)
        {
            Response.Redirect("Feedback.aspx");

        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.html");

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("Webform2.aspx");

        }

       
       
    }
}