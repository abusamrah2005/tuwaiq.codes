using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_Management
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["FinalDataConnectionString"].ConnectionString;
        string res;
        int ID;
        protected void Page_Load(object sender, EventArgs e)
        {
            Button2.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text == "" )
            {
                Response.Write("<script>alert('ادخل الاسم ');</script>");
            }
            else if (TextBox7.Text == "")
            {
                Response.Write("<script>alert('ادخل الدرجه ');</script>");
            }
            else
            {
                AddStudent();
                GridView1.DataBind();
                TextBox2.Text = "";
                TextBox7.Text = "";
            }

           
        }

        void AddStudent()
        {

            int deg = Convert.ToInt32(TextBox7.Text);
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd1 = new SqlCommand("insert into ss (name,grade,res) values (@name,@grade,@res)", con);

            cmd1.Parameters.AddWithValue("@name", TextBox2.Text);
            cmd1.Parameters.AddWithValue("@grade", TextBox7.Text);
            if (deg > 100 || deg < 0)
            {
                Response.Write("<script>alert('درجه خاطئه اعد الادخال ');</script>");
           
            }
            else if (deg >= 60 )
            {
                res = "ناجح";
                cmd1.Parameters.AddWithValue("@res", res);
                cmd1.ExecuteNonQuery();
                con.Close();
            }
            else if (deg <= 59)
            {
                res = "راسب";
                cmd1.Parameters.AddWithValue("@res", res);
                cmd1.ExecuteNonQuery();
                con.Close();

            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Button2.Visible = true;
            Button1.Visible = false;

            TextBox2.Text= GridView1.SelectedRow.Cells[2].Text;
            TextBox7.Text = GridView1.SelectedRow.Cells[3].Text;
            Session["ID"] = GridView1.SelectedRow.Cells[1].Text;
            ID = Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text);

            Response.Write(GridView1.SelectedRow.Cells[1].Text);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            if (TextBox2.Text == "")
            {
                Response.Write("<script>alert('ادخل الاسم ');</script>");
            }
            else if (TextBox7.Text == "")
            {
                Response.Write("<script>alert('ادخل الدرجه ');</script>");
            }
            else
            {
                Button1.Visible = true;
                editstudent();
                GridView1.DataBind();
                TextBox2.Text = "";
                TextBox7.Text = "";
            }
   
        }

        void editstudent()
        {

            int deg = Convert.ToInt32(TextBox7.Text);
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd1 = new SqlCommand("UPDATE ss set name=@name,grade=@grade,res=@res where ID = '" + GridView1.SelectedRow.Cells[1].Text + "'", con);

            cmd1.Parameters.AddWithValue("@name", TextBox2.Text);
            cmd1.Parameters.AddWithValue("@grade", TextBox7.Text);
            if (deg > 100 || deg <= 0)
            {

                Response.Write("<script>alert('درجه خاطئه اعد الادخال ');</script>");
                return;
         
            }
            else if (deg >= 60 )
            {
                res = "ناجح";
                cmd1.Parameters.AddWithValue("@res", res);
                cmd1.ExecuteNonQuery();
                con.Close();
            }
            else if (deg <= 59)
            {
                res = "راسب";
                cmd1.Parameters.AddWithValue("@res", res);
                cmd1.ExecuteNonQuery();
                con.Close();
            }
        }

        protected void TextBox8_TextChanged(object sender, EventArgs e)
        {

        }
    }
}