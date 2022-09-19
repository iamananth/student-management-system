using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace student_management_system
{
    public partial class StudentInfo : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adapter;
        DataTable dt;

        public void DataLoad()
        {
            if(Page.IsPostBack)
            {
                dgViewStudents.DataBind();
            }
        }

        public void ClearAllData()
        {
            txtname.Text = "";
            txtemail.Text = "";
            txtdob.Text = DateTime.Today.Date.ToString();
            txtgender.SelectedValue = txtgender.Items[0].ToString();
            txtchk.Checked = false;
            lblmsg.Text = "";

        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblsid.Text = dgViewStudents.SelectedRow.Cells[1].Text;
            txtname.Text = dgViewStudents.SelectedRow.Cells[2].Text;
            txtemail.Text = dgViewStudents.SelectedRow.Cells[3].Text;
            txtgender.Text = dgViewStudents.SelectedRow.Cells[4].Text;
            txtdob.Text = dgViewStudents.SelectedRow.Cells[5].Text;
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if(txtname.Text != "" && txtemail.Text != "" && txtchk.Checked)
            {
                using(con=new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("Insert Into Students (Name, Email, Gender, BirthDate) values(@name,@email,@gender,@birthdate)", con);
                    cmd.Parameters.AddWithValue("@name",txtname.Text);
                    cmd.Parameters.AddWithValue("@email", txtemail.Text);
                    cmd.Parameters.AddWithValue("@gender", txtgender.Text);
                    cmd.Parameters.AddWithValue("@birthdate", txtdob.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    DataLoad();
                    ClearAllData();
                }
            }
            else
            {
                lblmsg.Text = "Fill all";
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (txtname.Text != "" && txtemail.Text != "" && txtchk.Checked)
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("Update Students Set Name=@name, Email=@email, Gender=@gender, BirthDate=@birthdate where StudentID = @studentid", con);
                    cmd.Parameters.AddWithValue("@name", txtname.Text);
                    cmd.Parameters.AddWithValue("@email", txtemail.Text);
                    cmd.Parameters.AddWithValue("@gender", txtgender.Text);
                    cmd.Parameters.AddWithValue("@birthdate", txtdob.Text);
                    cmd.Parameters.AddWithValue("@studentid", lblsid.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    DataLoad();
                    ClearAllData();
                }
            }
            else
            {
                lblmsg.Text = "Fill all";
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            using (con = new SqlConnection(cs))
            {
                con.Open();
                cmd = new SqlCommand("Delete From Students Where StudentID=@studentid", con);
                cmd.Parameters.AddWithValue("@studentid", lblsid.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                DataLoad();
                ClearAllData();
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            ClearAllData();
        }
    }
}