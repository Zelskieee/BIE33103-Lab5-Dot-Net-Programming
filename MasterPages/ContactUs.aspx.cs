using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Lab5.MasterPages
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitForm_Click(object sender, EventArgs e)
        {
            string ID = id.Text;
            string Name = name.Text;
            string Email = email.Text;
            string Comment = comment.Text;

            SqlConnection con = new SqlConnection
                ("Data Source = LAPTOP-BM8BRT21\\SQLEXPRESS; Initial Catalog = TestDatabase; Integrated Security = True; Pooling = False");

            SqlCommand com = new SqlCommand();

            try
            {
                con.Open();

                com.Connection = con;

                //Response.Write("Successful\n");

                SqlDataAdapter cmd = new SqlDataAdapter();// Create a object of SqlDataAdapter class
                cmd.InsertCommand = new SqlCommand("INSERT INTO contactus VALUES (@id, @name, @email, @comment) ", con); //Pass the connection object to cmd

                cmd.InsertCommand.Parameters.Add("@id", SqlDbType.VarChar).Value = ID;
                cmd.InsertCommand.Parameters.Add("@name", SqlDbType.Text).Value = Name;
                cmd.InsertCommand.Parameters.Add("@email", SqlDbType.Text).Value = Email;
                cmd.InsertCommand.Parameters.Add("@comment", SqlDbType.Text).Value = Comment;

                cmd.InsertCommand.ExecuteNonQuery(); //to execute the SQL command
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());

            }
            finally
            {
                con.Close();

                id.Text = string.Empty;
                name.Text = string.Empty;
                email.Text = string.Empty;
                comment.Text = string.Empty;
            }
        }
    }
}