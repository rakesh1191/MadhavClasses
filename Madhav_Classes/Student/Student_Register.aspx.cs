using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Madhav_Classes
{
    public partial class Student_Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_Click(object sender, EventArgs e)
        {
            String email = studentEmail.Text;
            String password = studentPassword.Text;
            String firstname = studentFirstName.Text;
            String lastname = studentLastName.Text;


            String sql = String.Format("insert into students(studentEmail, studentPassword, studentFirstName, studentLastName) values ('{0}','{1}','{2}','{3}')",
                email,
                password, firstname, lastname);
            String result = MainClass.insert(sql);

            Response.Redirect("Student_Login.aspx");
        }
    }
}