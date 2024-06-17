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
    public partial class WebForm11 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=TULASI\SQLEXPRESS;Initial Catalog=TastyBites;Integrated Security=True");

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            //con.Open();

            //SqlCommand cmd = new SqlCommand("insert into tblfeedback values(@user_id,@name,@comment,@status)", con);
            //cmd.Parameters.AddWithValue("@user_id", Convert.ToInt32(txtUser.Text));
            //cmd.Parameters.AddWithValue("@name", txtName.Text);
            //cmd.Parameters.AddWithValue("@comment", txtComment.Text);
            //cmd.Parameters.AddWithValue("@status", "true");

            //cmd.ExecuteNonQuery();
            //con.Close();

            //Response.Write("<script>alert('Thanks For giving Valauble Feedback');</script>");

            ////Label4.Text = "Thanks for giving the valuable feedback";

            //txtUser.Text = "";
            //txtName.Text = "";
            //txtComment.Text = "";


        }

        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            con.Open();

            SqlCommand cmd = new SqlCommand("insert into tblfeedback values(@user_id,@name,@comment,@status)", con);
            cmd.Parameters.AddWithValue("@user_id", Session["user"]);
            cmd.Parameters.AddWithValue("@name", txtName.Text);
            cmd.Parameters.AddWithValue("@comment", txtComment.Text);
            cmd.Parameters.AddWithValue("@status", "true");

            cmd.ExecuteNonQuery();
            con.Close();

            Response.Write("<script>alert('Thanks For giving Valauble Feedback');</script>");

            //Label4.Text = "Thanks for giving the valuable feedback";

            txtUser.Text = "";
            txtName.Text = "";
            txtComment.Text = "";


        }
    }
}