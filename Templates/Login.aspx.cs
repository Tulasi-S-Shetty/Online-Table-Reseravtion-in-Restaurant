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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=TULASI\SQLEXPRESS;Initial Catalog=TastyBites;Integrated Security=True ");

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            SqlConnection con1 = new SqlConnection(@"Data Source=TULASI\SQLEXPRESS;Initial Catalog=TastyBites;Integrated Security=True");
            SqlCommand cmd2 = new SqlCommand("Select user_id from tblRegister where email_id='" + txtEmail.Text + "'", con1);
            con1.Open();
            SqlDataReader dr = cmd2.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    txtId.Text = (dr["user_id"].ToString());
                }
                dr.Close();
                cmd2.ExecuteNonQuery();
                con1.Close();
            }
            con1.Close();


            SqlConnection con = new SqlConnection(@"Data Source=TULASI\SQLEXPRESS;Initial Catalog=TastyBites;Integrated Security=True");
            con.Open();
            SqlCommand cmd1 = new SqlCommand("select * from tblregister where email_id='" + txtEmail.Text + "' and password='" + txtPassword.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (txtEmail.Text == "admin123@gmail.com" & txtPassword.Text == "96110026")
            {
                Response.Redirect("WebForm2.aspx");
            }
            else if (dt.Rows.Count == 1)
            {

                SqlCommand cmd = new SqlCommand("insert into tblLogin values(@user_id,@email_id,@password)", con);
                cmd.Parameters.AddWithValue("@user_id", txtId.Text);
                cmd.Parameters.AddWithValue("@email_id", txtEmail.Text);
                cmd.Parameters.AddWithValue("@password", txtPassword.Text);
                // cmd.ExecuteNonQuery();

                // Session["user_id"] = txtId.Text;
                Session["email_id"] = dt.Rows[0][0].ToString();
                Session["password"] = dt.Rows[0][1].ToString();
                Session["user"] = txtId.Text;
                //Response.Redirect("TableReserve.aspx");
                cmd.ExecuteNonQuery();
                Response.Redirect("TableReserve.aspx");

                txtEmail.Text = "";
                txtPassword.Text = "";

            }
            else
            {
                Response.Write("<script>alert('Incorrect Password');</script>");
            }


        }
    }
}