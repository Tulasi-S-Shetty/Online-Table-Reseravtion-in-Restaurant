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
    public partial class SignUp : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=TULASI\SQLEXPRESS;Initial Catalog=TastyBites;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                GenerateAutoID();
            }
        }
        private void GenerateAutoID()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select Count(user_id)from tblregister", con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            i++;
            txtUser.Text = i.ToString();


        }

        protected void btnsignup_Click(object sender, EventArgs e)
        {
             con.Open();
            SqlCommand cmd1=new SqlCommand("select user_id from tblregister where user_id='" + int.Parse(txtUser.Text) + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd1);

            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                Response.Write("<script>alert('User already Exists');</script>");
            }
            else
            {
                SqlCommand cmd = new SqlCommand("insert into tblregister values(@user_id,@fname,@lname,@address,@phoneno,@email_id,@password,@conf_password)", con);
                cmd.Parameters.AddWithValue("@user_id", txtUser.Text);
                cmd.Parameters.AddWithValue("@fname", txtFirst.Text);
                cmd.Parameters.AddWithValue("@lname", txtLast.Text);
                cmd.Parameters.AddWithValue("@address", txtAddress.Text);
                cmd.Parameters.AddWithValue("@phoneno", Convert.ToInt64(txtContact.Text));
                cmd.Parameters.AddWithValue("@email_id", txtEmail.Text);
                cmd.Parameters.AddWithValue("@password", txtPassword.Text);
                cmd.Parameters.AddWithValue("@conf_password", txtConf.Text);
                Session["user"] = txtUser.Text;
                cmd.ExecuteNonQuery();
                Response.Redirect("Login.aspx");

                // cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Registration Successfull');</script>");
                txtFirst.Text = "";
                txtLast.Text = "";
                txtAddress.Text = "";
                txtContact.Text = "";
                txtEmail.Text = "";
                txtPassword.Text = "";
                txtConf.Text = "";
            }
        }
      
    



        }

      
    }
