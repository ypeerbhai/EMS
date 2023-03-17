using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS
{
    public partial class ViewEmployees : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnRetrieveEmp_Click(object sender, EventArgs e)
        {
            SqlConnection sqlConnection = new SqlConnection("Data Source=YP-LPT\\SQLEXPRESS;Initial Catalog=EMS;Integrated Security=True");
            sqlConnection.Open();
            SqlCommand sqlCommand = new SqlCommand("SELECT * FROM Employees WHERE EmployeID = '" + txtEmpID.Text + "';", sqlConnection);

            SqlDataReader dataReader = sqlCommand.ExecuteReader();
            LBInfo.Items.Add("Employee ID:          " + dataReader["EmployeID"].ToString());
            LBInfo.Items.Add("Employee First Name:  " + dataReader["FirstName"].ToString());
            LBInfo.Items.Add("Employee Last Name:   " + dataReader["LastName"].ToString());
            LBInfo.Items.Add("Employee Address:     " + dataReader["Address"].ToString());
        }

        protected void BtnRetrieveAll_Click(object sender, EventArgs e)
        {
            SqlConnection sqlConnection = new SqlConnection("Data Source=YP-LPT\\SQLEXPRESS;Initial Catalog=EMS;Integrated Security=True");
            sqlConnection.Open();
            SqlCommand sqlCommand = new SqlCommand("SELECT * FROM Employees", sqlConnection);

            SqlDataReader dataReader = sqlCommand.ExecuteReader();
            LBInfo.Items.Add("Employee ID:          " + dataReader["EmployeID"].ToString());
            LBInfo.Items.Add("Employee First Name:  " + dataReader["FirstName"].ToString());
            LBInfo.Items.Add("Employee Last Name:   " + dataReader["LastName"].ToString());
            LBInfo.Items.Add("Employee Address:     " + dataReader["Address"].ToString());
        }
    }
}