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
    public partial class WebForm8 : System.Web.UI.Page
    {
        static Int32 bookingId;
        static String startdate;
        static String enddate;
        SqlConnection con = new SqlConnection(@"Data Source=TULASI\SQLEXPRESS;Initial Catalog=TastyBites;Integrated Security=True");


        protected void btnBook_Click(object sender, EventArgs e)
        {

            SqlConnection mycon = new SqlConnection(@"Data Source=TULASI\SQLEXPRESS;Initial Catalog=TastyBites;Integrated Security=True");
            //SqlCommand cmd2 = new SqlCommand("Select user_id,table_id,name,capacity,starttime,endtime,date,table_type", mycon);
            mycon.Open();
            SqlCommand cmd2 = new SqlCommand("insert into tblreserve values(@user_id,@table_id,@booking_id,@name,@date,@starttime,@endtime,@table_type,@capacity,@status)", mycon);
            cmd2.Parameters.AddWithValue("@user_id", Session["user"]);
            cmd2.Parameters.AddWithValue("@table_id", DropDownList5.SelectedValue.ToString());
            cmd2.Parameters.AddWithValue("@booking_id", Convert.ToInt32(txtBookingID.Text));

            cmd2.Parameters.AddWithValue("@name", txtName.Text);
            cmd2.Parameters.AddWithValue("@date", Calendar1.SelectedDate);

            cmd2.Parameters.AddWithValue("@starttime", DropDownList1.SelectedValue.ToString());
            cmd2.Parameters.AddWithValue("@endtime", DropDownList2.SelectedValue.ToString());

            cmd2.Parameters.AddWithValue("@table_type", DropDownList3.SelectedItem.Value);
            cmd2.Parameters.AddWithValue("@capacity", DropDownList4.SelectedItem.Value);

            cmd2.Parameters.AddWithValue("@status", "Reserved");

           // Session["user"] = txtId.Text;




            //cmd2.Parameters.AddWithValue("@booking_id", Convert.ToInt32(txtBookingId.Text));

            cmd2.ExecuteNonQuery();

            Response.Write("<script>alert('Table Booked Successfully');</script>");
            Label5.Text = "Booking Id" + txtBookingID + DropDownList5.SelectedItem.Text + " Has been Booked from " + startdate + "to" + enddate;

        }
        private void findAvailableTable()
        {
            SqlConnection cnn = new SqlConnection(@"Data Source=TULASI\SQLEXPRESS;Initial Catalog=TastyBites;Integrated Security=True");
            String myquery = "Select DISTINCT table_id from tblreserve where ((starttime between '" + startdate + "' and '" + enddate + "') or (endtime between '" + startdate + "' and '" + enddate + "'))";

            //SqlConnection con = new SqlConnection(cnn);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label4.Text = "Tables are available";

                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    DropDownList5.Items.Remove(DropDownList5.Items.FindByValue(dr["table_id"].ToString()));
                }
                if (DropDownList5.Items.Count == 0)
                {
                    Response.Write("<script>alert('No Tables available in this time interval');</script>");
                }
            }
            else
            {
                Label4.Text = "Available Tables are given below";
            }

            con.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList3.Items.Insert(0, "");
            DropDownList4.Items.Insert(0, "");

            if (!IsPostBack)
            {
                GenerateBookingID();
            }
        }


        private void GenerateBookingID()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select Count(booking_id) from tblreserve", con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            i += 1011;
            txtBookingID.Text = i.ToString();
        }

        protected void btnCheck_Click(object sender, EventArgs e)
        {
            startdate = Calendar1.SelectedDate.Year + "-" + Calendar1.SelectedDate.Month + "-" + Calendar1.SelectedDate.Day + " " + DropDownList1.Text;
            enddate = Calendar1.SelectedDate.Year + "-" + Calendar1.SelectedDate.Month + "-" + Calendar1.SelectedDate.Day + " " + DropDownList2.Text;
            Response.Write(startdate);
            findAvailableTable();
            DropDownList3.Visible = true;
            DropDownList4.Visible = true;
        }

       
        


                        
    }
}