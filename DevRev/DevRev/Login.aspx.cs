using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DevRev
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=DESKTOP-6780A6R\SQLEXPRESS;Initial Catalog=DevRev;Integrated Security=True";
            string qry = "select first_name,last_name,email,password from Registration where email=@email and password=@password";
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@email", TextBox1.Text.ToString());
            cmd.Parameters.AddWithValue("@password", TextBox2.Text.ToString());
            SqlDataReader read = cmd.ExecuteReader();
            if (read.Read())
            {
                
                Session["first_name"] = read.GetValue(0).ToString();
                Session["last_name"] = read.GetValue(1).ToString();
                Session["email"] = read.GetValue(2).ToString();
                con.Close();
                Response.Redirect("Home.aspx");

            }
            else if ((TextBox1.Text == "admin" && TextBox2.Text == "admin123"))
            {
                Response.Redirect("admin_Home.aspx");
            }
            else
            {
                Label3.Text = "Invalid Username (or) Password";
                Label3.ForeColor = System.Drawing.Color.Red;
            }


        }
    }
 }
