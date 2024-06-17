using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Template.Templates
{
    public partial class TableReserve : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("CancelBooking.aspx");

        }

        protected void btnReserve_Click(object sender, EventArgs e)
        {
            Response.Redirect("TableReserve.aspx");

        }

        protected void btnFeedback_Click1(object sender, EventArgs e)
        {
            Response.Redirect("CustomerFeedback.aspx");


        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.html");


        }
    }
}