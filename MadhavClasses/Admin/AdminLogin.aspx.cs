using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MadhavClasses.Admin
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            String Email = email.Text;
            String Password = password.Text;

            String get_admin = String.Format("Select * from admins where admin_email = '{0}' and admin_password='{1}'", Email, Password);
            DataTable got_data = MadhavClass.get_data(get_admin);

            if (got_data.Rows.Count!=0) {
                Session["admin_email"] = Email;
                Response.Redirect("Gallery.aspx");
            }

        }
    }
}