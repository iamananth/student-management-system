using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace student_management_system
{
	public partial class Register : System.Web.UI.Page
	{
        string cs = ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adapter;
        DataTable dt;

        protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        public void ClearAllData()
        {
            txtname.Text = "";
            Fname.Text = "";
            txtpass.Text = "";
            txtrepass.Text = "";
            lblmsg.Text = "";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Fname.Text != "" && txtname.Text != "" && txtpass.Text != "")
            {
                if (txtpass.Text != txtrepass.Text)
                {
                    lblmsg.Text = "Passwords not matches";
                }
                else
                {
                    using (con = new SqlConnection(cs))
                    {
                        con.Open();
                        cmd = new SqlCommand("Insert Into Users (Fullname, Uname, Upass) values(@fullname,@uname,@upass)", con);
                        cmd.Parameters.AddWithValue("@fullname", Fname.Text);
                        cmd.Parameters.AddWithValue("@uname", txtname.Text);
                        cmd.Parameters.AddWithValue("@upass", txtpass.Text);
                        cmd.ExecuteNonQuery();
                        ClearAllData();
                        Response.Redirect("login.aspx");
                        con.Close();
                    }
                }
                
            }
            else
            {
                lblmsg.Text = "Fill all details";
            }

           
        }
    }
}