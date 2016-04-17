using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Madhav_Classes
{
    public partial class Student_Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["studentEmail"] != null)
            {
                Session["studentEmail"] = null;
                Response.Redirect("Student_Login.aspx");
            }
        }
    }
}