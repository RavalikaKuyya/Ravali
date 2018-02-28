using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Design
{
    public partial class form : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
        string str = "Data Source=DESKTOP-I2H5110;Initial Catalog=RavalikaRaj;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                {

                    SqlConnection con = new SqlConnection(str);
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = " Select * From Fullname ";
                    cmd.Connection = con;
                    con.Open();
                    DataTable dt = new DataTable();

                    dt.Load(cmd.ExecuteReader());
                    con.Close();

                    ddl1.DataSource = dt;
                    ddl1.DataTextField = "Full Name";
                    ddl1.DataValueField = "ID";
                    ddl1.DataBind();
                    ddl1.Items.Insert(0, new ListItem("--Select--", "0"));
                }
                {
                    SqlConnection con = new SqlConnection(str);
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = " Select * From reason ";
                    cmd.Connection = con;
                    con.Open();
                    DataTable dt1 = new DataTable();

                    dt1.Load(cmd.ExecuteReader());
                    con.Close();

                    ddl2.DataSource = dt1;
                    ddl2.DataTextField = "reason";
                    ddl2.DataValueField = "ID";
                    ddl2.DataBind();
                    ddl2.Items.Insert(0, new ListItem("--Select--", "0"));
                }
                {
                    SqlConnection con = new SqlConnection(str);
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = " Select * From leave ";
                    cmd.Connection = con;
                    con.Open();
                    DataTable dt2 = new DataTable();

                    dt2.Load(cmd.ExecuteReader());
                    con.Close();

                    ddl3.DataSource = dt2;
                    ddl3.DataTextField = "leave";
                    ddl3.DataValueField = "ID";
                    ddl3.DataBind();
                    ddl3.Items.Insert(0, new ListItem("--Select--", "0"));
                }

                if (ddl1.SelectedValue != "0" && ddl2.SelectedValue != "0" && ddl3.SelectedValue != "0" && fromdate.Text != "" && todate.Text != "")
                {
                    btnsave.Enabled = true;
                }
              
            

            }
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            if (ddl1.SelectedValue != "0" && ddl2.SelectedValue != "0" && ddl3.SelectedValue != "0" && fromdate.Text != ""  && todate.Text != "")
            {
                //int x = 1;
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
                //SqlCommand cmd = new SqlCommand("select * from Fullname whe")
                //string d = Convert.ToDateTime(fromdate).ToString("dd/mm/yyyy");
                SqlCommand cmd = new SqlCommand("insert into empdetail values('" + ddl1.SelectedItem + "','" + ddl2.SelectedItem + "','" + fromdate.Text + "','" + todate.Text + "','" + ddl3.SelectedItem + "')", con);
                con.Open();
                int i = cmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(),
                "alert",
                "alert('User details saved sucessfully');window.location ='form.aspx';",
                true);
              
                con.Close();

            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(),
                "alert",
                "alert('Please fill all the cells');window.location ='form.aspx';",
                true);

            }
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            Response.Redirect("task1.aspx");
        }
    }
}