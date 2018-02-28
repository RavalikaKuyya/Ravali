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
    public partial class task1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            Response.Redirect("form.aspx");
        }

    }
}