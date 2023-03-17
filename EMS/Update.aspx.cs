using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS
{
    public partial class Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            SqlConnection sqlConnection = new SqlConnection("Data Source=YP-LPT\\SQLEXPRESS;Initial Catalog=EMS;Integrated Security=True");
            sqlConnection.Open();
            if (sqlConnection.State == System.Data.ConnectionState.Open)
            {
                string updateQuery = @"UPDATE Employee SET Address = @NewAddress 
                               WHERE FirstName = @FirstName";

                SqlCommand command = new SqlCommand(updateQuery, sqlConnection);

                command.Parameters.AddWithValue("@FirstName", txtName.Text);
                command.Parameters.AddWithValue("@NewAddress", txtAddress.Text);
                command.ExecuteNonQuery();


                sqlConnection.Close();

                //label is showed if all runs correctly
                lblUpdated.Visible = true;

            }
            else
            {
                lblUpdated.Visible = true;
            }
        }

        protected void BtnView_Click(object sender, EventArgs e)
        {
            lblUpdated.Visible = true;
            SqlConnection sqlConnection = new SqlConnection("Data Source=YP-LPT\\SQLEXPRESS;Initial Catalog=EMS;Integrated Security=True");
            sqlConnection.Open();
            SqlCommand sqlCommand = new SqlCommand("SELECT * from Employee WHERE FirstName = '" + txtName.Text + "';", sqlConnection);

            SqlDataReader dataReader = sqlCommand.ExecuteReader();
            lbCreateUpdateView.Items.Add("Updated Employee");
            lbCreateUpdateView.Items.Add("Employee ID      :" + dataReader["EmployeeID"].ToString());
            lbCreateUpdateView.Items.Add("Employee Name    :" + dataReader["FirstName"].ToString());
            lbCreateUpdateView.Items.Add("Employee Surname :" + dataReader["LastName"].ToString());
            lbCreateUpdateView.Items.Add("Employee Number  :" + dataReader["Address"].ToString());

            dataReader.Close();
            txtName.Text = string.Empty;
            txtAddress.Text = string.Empty;


        }
    }
}