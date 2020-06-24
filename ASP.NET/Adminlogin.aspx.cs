using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentCourseRegistrationWeb1
{
    public partial class Adminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection con = new SqlConnection(@"Data Source = 10.0.1.7; Initial Catalog = StudentCourseRegistration; Integrated Security = True");
        SqlCommand cmd = new SqlCommand();

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Boolean successFlag = false;
            cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "Select * from Admin where Admin_Username = @username AND  Admin_Password =@pwd";
            cmd.Parameters.AddWithValue("@username", TxtUsername.Text);
            cmd.Parameters.AddWithValue("@pwd", TxtPwd.Text);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                successFlag = true;
            }
            if (successFlag)
            {
                Response.Write("ValidCredentials");
            }
            else
                Response.Write("Invalid Credentials");
            Response.Redirect("AdminDashboard");
            con.Close();
        }
        protected void btnCancel_Click(object sender, EventArgs e)
        {

        }

    }
}