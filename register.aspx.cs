using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Emailsender
{
    public partial class register : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\cogen.mdf;Integrated Security=True;Connect Timeout=30");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;
            string cpassword = txtcPassword.Text;
            string mobile = contact.Text;
            string gender = Gender.Text;


            if(password.CompareTo(cpassword)==1)
            {
                string insert = "insert into [dbo].[Table](Username, Password, Mobile, Gender) values ('" + username + "', '" + password + "', '" + mobile + "','" + gender + "')";
                SqlCommand cmd = new SqlCommand(insert, conn);
                conn.Open();
                int k = cmd.ExecuteNonQuery();
                if (k != 0)
                {
                    lblMessage.Text = "Record Inserted Succesfully into the Database";
                    lblMessage.ForeColor = System.Drawing.Color.CornflowerBlue;
                }
                conn.Close();
            }
            else
            {
                lblMessage.Text = "Password Not Matching";
            }
        }
    }
}