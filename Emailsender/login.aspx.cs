using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Emailsender
{
    public partial class login : System.Web.UI.Page
    { 
        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\cogen.mdf;Integrated Security=True;Connect Timeout=30");
        protected void Page_Load(object sender, EventArgs e)
        {
            // Optional: Add any initial setup or actions here
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text;

            if (username == password)
            {
                string check = "SELECT COUNT(*) FROM [dbo].[Table] WHERE Username=@Username AND Password=@Password";
                using (SqlCommand command = new SqlCommand(check, conn))
                {
                    command.Parameters.AddWithValue("@Username", username);
                    command.Parameters.AddWithValue("@Password", password);
                    conn.Open();
                    int count = (int)command.ExecuteScalar();
                    conn.Close();

                    if (count > 0)
                    {
                        // Successful login
                        Response.Redirect("email.aspx");
                    }
                    else
                    {
                        // Failed login
                        lblMessage.Text = "Invalid credentials. Please try again.";
                    }
                }
            }
            else
            {
                lblMessage.Text = "Username and Password not matching";
            }


        }
    }
}

/*
 * 
 *             //line to insert from db
            //string insert = "insert into [dbo].[Table](Username, Password) values ('" + username + "', '" + password + "')";
            //SqlCommand cmd = new SqlCommand(insert, conn);
            //cmd.ExecuteNonQuery();
            //line to fetch from db

            //string check = "select count(*) into [dbo].[Table] where Username ='" + username + "' and Password = '" + password + "')";
 * 
 * 
 * 
 *
 *SqlCommand cmd = new SqlCommand(check, conn);

                conn.Open();
            
            int tmp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            
            if(tmp == 1)
            {
                Response.Redirect("email.aspx");
            }
            else
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Invalid Username or Password...........";
            }    
                conn.Close();
*/


