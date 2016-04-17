using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Madhav_Classes
{
    public partial class Professor_Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_Click(object sender, EventArgs e)
        {
            String email = professorEmail.Text;
            String password = professorPassword.Text;
            String firstname = professorFirstName.Text;
            String lastname = professorLastName.Text;


            String sql = String.Format("insert into professors(professorEmail, professorPassword, professorFirstName, professorLastName) values ('{0}','{1}','{2}','{3}')",
                email,
                password, firstname, lastname);
            String result = MainClass.insert(sql);

            Response.Redirect("Professor_Login.aspx");
        }
    }
}