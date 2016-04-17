using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Madhav_Classes.Admin
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            String sql = String.Format("select * from adminsList where adminEmail = '{0}' and adminPassword = '{1}'", adminEmail.Text, adminPassword.Text);
            DataTable dt = MainClass.getData(sql);

            if (dt.Rows.Count!=0) {
                Session["adminEmail"] = adminEmail.Text;
                Response.Redirect("Admin_Home.aspx");
            }
        }
    }
}