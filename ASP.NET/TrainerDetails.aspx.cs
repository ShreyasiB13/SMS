﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentCourseRegistrationWeb1
{
    public partial class TrainerDetails : System.Web.UI.Page
    {
    
        protected void Page_Load(object sender, EventArgs e)
        {
            viewtraines();
        }

        protected void viewtraines()
        {
            SqlConnection con = new SqlConnection(@"Data Source = 10.0.1.7; Initial Catalog = StudentCourseRegistration; Integrated Security = True");
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "Select * from Trainer";
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            GridView1.DataSource = rdr;
            GridView1.DataBind();
            con.Close();


        }

    }
}