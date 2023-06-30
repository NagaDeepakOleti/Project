﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace DevRev
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        

        protected void Button2_Click(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=DESKTOP-6780A6R\SQLEXPRESS;Initial Catalog=DevRev;Integrated Security=True";
            string sql = "INSERT INTO SlotBooking(Full_Name,Aadhaar_Number,Date_Of_Birth,Distict,City) VALUES (@fullname,@aadhaar_no,@dob,@distict,@city)";
            string qury = "select Full_Name,Aadhaar_Number from SlotBooking where Full_Name=@fullname or Aadhaar_Number=@aadhaar_no ";
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand(qury, con);
            cmd.Parameters.AddWithValue("@fullname", TextBox2.Text.ToString());
            cmd.Parameters.AddWithValue("@aadhaar_no", TextBox3.Text.ToString());
            SqlDataReader read = cmd.ExecuteReader();
             if (read.Read())
            {
                Session["fullname"] = read.GetValue(0).ToString();
                Session["aadhaar_no"] = read.GetValue(1).ToString();
                con.Close();
                msg.Text = "Data is Already Exist";
                msg.ForeColor = Color.Red;
            }

            else
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand(sql, connection))
                    {
                        connection.Open();
                        command.CommandType = CommandType.Text;
                        command.Parameters.AddWithValue("@fullname", TextBox2.Text.ToString());
                        command.Parameters.AddWithValue("@aadhaar_no", TextBox3.Text.ToString());
                        command.Parameters.AddWithValue("@dob", TextBox4.Text.ToString());
                        command.Parameters.AddWithValue("@distict", TextBox5.Text.ToString());
                        command.Parameters.AddWithValue("@city", TextBox6.Text.ToString());

                        command.ExecuteNonQuery();
                        msg.Text = "Data Added Sucessfully";
                        msg.ForeColor = Color.Green;
                    }

                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=DESKTOP-6780A6R\SQLEXPRESS;Initial Catalog=DevRev;Integrated Security=True";
            string qry = "select city from City where city=@city";
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@city", TextBox1.Text.ToString());
            SqlDataReader read = cmd.ExecuteReader();
            if (read.Read())
            {
                Session["city"] = read.GetValue(0).ToString();
                con.Close();

                fund.Text = "Vaccine center is Avalible";
                fund.ForeColor = Color.Green;
            }
            else
            {
                fund.Text = "Vaccine center is Not Avalible";
                fund.ForeColor = Color.Red;

            }
        }
    }

     
    }
