using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Madhav_Classes
{
    public partial class Professor_MakeTest : System.Web.UI.Page
    {
        String Email;
        protected void Page_Load(object sender, EventArgs e)
        {
            Email = Session["professorEmail"].ToString();
            int professorId = MainClass.getIdFromEmail(Email);

        }
    }
}