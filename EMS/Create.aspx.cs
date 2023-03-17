using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCreate_Click(object sender, EventArgs e)
        {
            SqlConnection sqlConnection = new SqlConnection("Data Source=YP-LPT\\SQLEXPRESS;Initial Catalog=EMS;Integrated Security=True");
            sqlConnection.Open();
            if (sqlConnection.State == System.Data.ConnectionState.Open)
            {
                string insertDataQuery = @"INSERT INTO Employee (FirstName, LastName, Address) 
                                           VALUES (@FirstName, @LastName, @Address)";

                SqlCommand command = new SqlCommand(insertDataQuery, sqlConnection);

                command.Parameters.AddWithValue("@FirstName", txtName.Text);
                command.Parameters.AddWithValue("@LastName", txtSurname.Text);
                command.Parameters.AddWithValue("@Address", txtAddress.Text);
                command.ExecuteNonQuery();

                //label is showed if all runs correctly
                lblCreated.Visible = true;
                txtName.Text = string.Empty;
                txtSurname.Text = string.Empty;
                txtAddress.Text = string.Empty;
            }
            else
            {
                lblNotCreated.Visible = true;
            }
        }

      
    }
}