using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Madhav_Classes
{
    public partial class Professor_Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            String sql = String.Format("select * from professors where professorEmail = '{0}' and professorPassword = '{1}' ", professorEmail.Text, professorPassword.Text);
            DataTable dt = MainClass.getData(sql);
            if (dt.Rows.Count != 0)
            {
                //Storing UserName in Session
                Session["professorEmail"] = professorEmail.Text;
                Response.Redirect("Professor_Home.aspx");
            }
        }
    }
}