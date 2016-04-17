using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Madhav_Classes
{
    public partial class Student_Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Check weather session variable null or not
            if (Session["studentEmail"] != null)
            {
                //Retrieving UserName from Session
                String Email = Session["studentEmail"].ToString();
                String sql = String.Format("select * from students where studentEmail = '{0} '", Email);
                DataTable dt = MainClass.getData(sql);

                studentEmail.Text = Email;

                studentFirstName.Text = dt.Rows[0]["studentFirstName"].ToString();
                studentLastName.Text = dt.Rows[0]["studentLastName"].ToString();
                studentPhone.Text = dt.Rows[0]["studentPhone"].ToString();
                studentAddressLine1.Text = dt.Rows[0]["studentAddressLine1"].ToString();
                studentAddressLine2.Text = dt.Rows[0]["studentAddressLine2"].ToString();
                studentCity.Text = dt.Rows[0]["studentCity"].ToString();
                studentState.Text = dt.Rows[0]["studentState"].ToString();
                studentCountry.Text = dt.Rows[0]["studentCountry"].ToString();
                studentPinCode.Text = dt.Rows[0]["studentPinCode"].ToString();

                //Process Image
                String studentProfileImage = dt.Rows[0]["studentProfileImage"].ToString();
                if (studentProfileImage == "") {
                    studentImage.ImageUrl = "../images/profile_images/default.png";
                }
                else {
                    studentImage.ImageUrl = studentProfileImage;
                }

            }
            else
            {
                Response.Redirect("student_Login.aspx");
            }
        }
    }
}