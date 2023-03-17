using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnDelete_Click(object sender, EventArgs e)
        {
            SqlConnection sqlConnection = new SqlConnection("Data Source=YP-LPT\\SQLEXPRESS;Initial Catalog=EMS;Integrated Security=True");
            sqlConnection.Open();
            if (sqlConnection.State == System.Data.ConnectionState.Open)
            {
                string deleteQuery = @"DELETE FROM Employee WHERE EmployeeID = @EmployeeID";

                SqlCommand command = new SqlCommand(deleteQuery, sqlConnection);

                command.Parameters.AddWithValue("@EmployeeID", txtEmpID.Text);
                command.ExecuteNonQuery();


                sqlConnection.Close();

                //label is showed if all runs correctly
                lblDeleted.Visible = true;

            }
            else
            {
                lblNotDeleted.Visible = true;
            }
        }
    }
}