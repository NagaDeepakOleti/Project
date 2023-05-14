using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Input;

namespace ASP_Project
{
    public partial class Room : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=DESKTOP-6780A6R\SQLEXPRESS;Initial Catalog=msdb;Integrated Security=True";
            string sql = "INSERT INTO Room(Name,Phone,Aod,Nop,Rt) VALUES (@Name,@Phone,@Aod,@Nop,@Rt)";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(sql, connection))
                {
                    command.CommandType = CommandType.Text;
                    command.Parameters.AddWithValue("@Name",name.Text.ToString());
                    command.Parameters.AddWithValue("@Phone", phone.Text.ToString());
                    command.Parameters.AddWithValue("@Aod", aadhar.Text.ToString());
                    command.Parameters.AddWithValue("@Nop", nop.Text.ToString());
                    command.Parameters.AddWithValue("@Rt", RoomType.Text.ToString());

                    connection.Open();
                   int row= command.ExecuteNonQuery();
                    if(row>0)
                    {
                        Confirm.Text = "Room booked Succesfully";
                        Confirm.ForeColor = Color.Green;
                    }
                    else
                    {
                        Confirm.Text = "Not booked";
                        Confirm.ForeColor = Color.Red;
                    }
                    connection.Close();



                }
            }
        }
    }
}