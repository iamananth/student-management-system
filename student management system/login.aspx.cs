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
    
    public partial class login : System.Web.UI.Page
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

        public void ClearAllData()
        {
            Uname.Text = "";
            Upass.Text = "";
            lblmsg.Text = "";

        }

        protected void onlogin_Click(object sender, EventArgs e)
        {
            if (Uname.Text != "" && Upass.Text != "")
            {
                Session["uname"] = Uname.Text;
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("select * from Users where Uname=@username and Upass=@word", con);
                    cmd.Parameters.AddWithValue("@username", Uname.Text);
                    cmd.Parameters.AddWithValue("@word", Upass.Text);
                    adapter = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);
                    int i = cmd.ExecuteNonQuery();
                    if (dt.Rows.Count > 0)
                    {
                        ClearAllData();
                        Response.Redirect("StudentInfo.aspx");
                    }
                    con.Close();
                }
            }
            else
            {
                lblmsg.Text = "Invalid User";
            }
        }
    }
}