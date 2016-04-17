using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Madhav_Classes
{
    public partial class Professor_Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Check weather session variable null or not
            if (Session["professorEmail"] != null)
            {
                //Retrieving UserName from Session
                String Email = Session["professorEmail"].ToString();
                String sql = String.Format("select * from professors where professorEmail = '{0} '", Email);
                DataTable dt = MainClass.getData(sql);

                String professorProfileImage = dt.Rows[0]["professorProfileImage"].ToString();
                if (professorProfileImage == null) {
                    professorImage.ImageUrl = "../images/default.png";
                }
                else {
                    professorImage.ImageUrl = professorProfileImage;
                }

                professorFirstName.Text = dt.Rows[0]["professorFirstName"].ToString();
                professorEmail.Text = Email;
                professorLastName.Text = dt.Rows[0]["professorLastName"].ToString();
                professorPhone.Text = dt.Rows[0]["professorPhone"].ToString();
                professorAddressLine1.Text = dt.Rows[0]["professorAddressLine1"].ToString();
                professorAddressLine2.Text = dt.Rows[0]["professorAddressLine2"].ToString();
                professorCity.Text = dt.Rows[0]["professorCity"].ToString();
                professorState.Text = dt.Rows[0]["professorState"].ToString();
                professorCountry.Text = dt.Rows[0]["professorCountry"].ToString();
                professorPinCode.Text = dt.Rows[0]["professorPinCode"].ToString();
            }
            else
            {
                Response.Redirect("professor_Login.aspx");
            }
        }
    }
}