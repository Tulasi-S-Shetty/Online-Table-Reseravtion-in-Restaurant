using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace Template.Templates
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=TULASI\SQLEXPRESS;Initial Catalog=TastyBites;Integrated Security=True");

        protected void btnUnpost_Click(object sender, EventArgs e)
        {
             con.Open();
            SqlCommand cmd = new SqlCommand("Select * from tblfeedback where user_id='" + txtId.Text + "' AND status='true'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Close();
                SqlCommand cmd1 = new SqlCommand("Update tblfeedback set status='false' where user_id='" + txtId.Text + "'", con);
                cmd1.ExecuteNonQuery();
                Response.Write("<script>alert('Feedback Unposted Successfully');</script>");
                con.Close();

            }
            else
            {
                Response.Write("<script>alert('User Id Does not exist');</script>");
            }


        }
    }
}