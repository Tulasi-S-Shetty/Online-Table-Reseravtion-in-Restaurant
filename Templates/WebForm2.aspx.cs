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
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=TULASI\SQLEXPRESS;Initial Catalog=TastyBites;Integrated Security=True");

        
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd1 = new SqlCommand("select table_type , capacity from tblManage where capacity='" + txtCapacity.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                Response.Write("<script>alert('Table Capacity already Exists');</script>");
            }

            //SqlConnection con = new SqlConnection(@"Data Source=TULASI\SQLEXPRESS;Initial Catalog=TastyBites;Integrated Security=True");
            //con.Open();
            else
            {
                SqlCommand cmd = new SqlCommand("insert into tblManage values(@table_id,@table_type,@capacity,@status)", con);
                cmd.Parameters.AddWithValue("@table_id", Convert.ToInt32(txtId.Text));
                cmd.Parameters.AddWithValue("@table_type", txtType.Text);
                cmd.Parameters.AddWithValue("@capacity", Convert.ToInt32(txtCapacity.Text));
                cmd.Parameters.AddWithValue("@status", "true");


                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Table Added Succesfully');</script>");

            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
             if(!IsPostBack)
            {
                GenerateAutoID();
            }
        }
        private void GenerateAutoID()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select Count(table_id)from tblManage", con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            i += 1000;
            txtId.Text = i.ToString();
        }
    }
    

}
