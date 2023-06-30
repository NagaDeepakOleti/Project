using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services.Description;
using System.Drawing;
using System.Text.RegularExpressions;

namespace DevRev
{
    public partial class Register: System.Web.UI.Page
    {
      /* public static bool IsValidPassword(string password)
        {
            string pattern = @"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d\S]{8,}$";
            Regex regex = new Regex(pattern);
            return regex.IsMatch(password);
        }
        public static bool IsValidEmail(string email)
        {
            string pattern = @"^[\w\.-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)*\.[a-zA-Z]{2,6}$";
            Regex regex = new Regex(pattern);
            return regex.IsMatch(email);
        }*/
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string firstname = TextBox1.Text.ToString();
            string lastname = TextBox2.Text.ToString();
            string email = TextBox3.Text.ToString();
            /*bool isEmailValid = IsValidEmail(email);*/
            string password = TextBox4.Text.ToString();
            // bool isPasswordValid = IsValidPassword(password); 
            string connectionString = @"Data Source=DESKTOP-6780A6R\SQLEXPRESS;Initial Catalog=DevRev;Integrated Security=True";
            string sql = "INSERT INTO Registration(first_name,last_name,email,password) VALUES (@first_name,@last_name,@email,@password)";
            string qury = "select first_name,last_name,email from Registration where first_name=@first_name or last_name=@last_name or email=@email";
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand(qury, con);
            cmd.Parameters.AddWithValue("@first_name", TextBox1.Text.ToString());
            cmd.Parameters.AddWithValue("@last_name", TextBox2.Text.ToString());
            cmd.Parameters.AddWithValue("@email", TextBox3.Text.ToString());
            SqlDataReader read = cmd.ExecuteReader();

            if (string.IsNullOrEmpty(firstname) || string.IsNullOrEmpty(lastname) || string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
            {
                msg.Text = "Fill the required field";
                msg.ForeColor = Color.Red;
                if (string.IsNullOrEmpty(firstname))
                {
                    TextBox1.BorderColor = Color.Red;
                }
                else if (string.IsNullOrEmpty(lastname))
                {
                    TextBox2.BorderColor = Color.Red;
                }
                else if (string.IsNullOrEmpty(email))
                {
                    TextBox3.BorderColor = Color.Red;
                }
                else if(string.IsNullOrEmpty(password))
                {
                    TextBox4.BorderColor = Color.Red;
                }
                else
                {
                    TextBox1.BorderColor = Color.Red;
                    TextBox2.BorderColor = Color.Red;
                    TextBox3.BorderColor = Color.Red;
                    TextBox4.BorderColor = Color.Red;
                }
            }

            else if (read.Read())
            {
                Session["first_name"] = read.GetValue(0).ToString();
                Session["last_name"] = read.GetValue(1).ToString();
                Session["email"] = read.GetValue(2).ToString();
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
                        command.CommandType = CommandType.Text;
                        command.Parameters.AddWithValue("@first_name", TextBox1.Text.ToString());
                        command.Parameters.AddWithValue("@last_name", TextBox2.Text.ToString());
                        command.Parameters.AddWithValue("@email", TextBox3.Text.ToString());
                        command.Parameters.AddWithValue("@password", TextBox4.Text.ToString());
                        connection.Open();
                        command.ExecuteNonQuery();

                    }
                    
                }

                Response.Redirect("Login.aspx");

            }
        }
    }
}