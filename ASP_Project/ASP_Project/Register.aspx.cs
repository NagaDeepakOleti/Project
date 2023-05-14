using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace ASP_Project
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Reg_Click(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=DESKTOP-6780A6R\SQLEXPRESS;Initial Catalog=msdb;Integrated Security=True";
            string sql = "INSERT INTO Registration(first_name,last_name,email,password) VALUES (@first_name,@last_name,@email,@password)";


            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(sql, connection))
                {
                    command.CommandType = CommandType.Text;
                    command.Parameters.AddWithValue("@first_name", TextBox1.Text.ToString());
                    command.Parameters.AddWithValue("@last_name", TextBox2.Text.ToString());
                    command.Parameters.AddWithValue("@email", TextBox3.Text.ToString());
                    command.Parameters.AddWithValue("@password", TextBox4.Text.ToString());
                    connection.Open();
                    command.ExecuteNonQuery();
                   
                }
            }
           
            

        }
    }
  }