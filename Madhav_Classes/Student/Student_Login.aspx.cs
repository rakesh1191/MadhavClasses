using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Madhav_Classes
{
    public partial class Student_Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {

            String sql = String.Format("select * from students where studentEmail = '{0}' and studentPassword = '{1}' ", studentEmail.Text, studentPassword.Text);
            DataTable dt = MainClass.getData(sql);
            if (dt.Rows.Count != 0)
            {
                //Storing UserName in Session
                Session["studentEmail"] = studentEmail.Text;
                Response.Redirect("Student_Home.aspx");
            }
            else {
                Invalid.Visible = true;
            }
        }
    }
}