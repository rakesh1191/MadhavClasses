using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Madhav_Classes
{
    public partial class Professor_Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["professorEmail"] != null)
            {
                Session["professorEmail"] = null;
                Response.Redirect("Professor_Login.aspx");
            }
        }
    }
}