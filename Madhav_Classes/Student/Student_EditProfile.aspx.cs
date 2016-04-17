using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Madhav_Classes
{
    public partial class Student_EditProfile : System.Web.UI.Page
    {
        String Email;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Check weather session variable null or not
                if (Session["studentEmail"] != null)
                {
                    //Retrieving UserName from Session
                    Email = Session["studentEmail"].ToString();
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
                    if (studentProfileImage == "")
                    {
                        studentImage.ImageUrl = "../images/default.png";
                    }
                    else
                    {
                        studentImage.ImageUrl = studentProfileImage;
                    }
                }
                else
                {
                    Response.Redirect("student_Login.aspx");
                }
            }
        }

        protected void Save_Click(object sender, EventArgs e)
        {
            //Getting the Session Variable
            Email = Session["studentEmail"].ToString();

            String sql = String.Format("update students set studentFirstName='{0}'," +
                "studentLastName='{1}'," +
                "studentPhone='{2}'," +
                "studentAddressLine1='{3}'," +
                "studentAddressLine2='{4}'," +
                "studentCity='{5}'," +
                "studentState='{6}'," +
                "studentCountry='{7}'," +
                "studentPinCode='{8}'" +
                "where studentEmail = '{9}' ", studentFirstName.Text, studentLastName.Text, studentPhone.Text, studentAddressLine1.Text, studentAddressLine2.Text,
                studentCity.Text, studentState.Text, studentCountry.Text, studentPinCode.Text, Email);

            //file upload code
            if (studentImageUpload.HasFiles)
            {
                try
                {

                    //Save image to filesystem
                    string q = "../images/ImageGallery/" + studentImageUpload.FileName;
                    studentImageUpload.SaveAs(MapPath(q));

                    //Save path to database
                    String updateImage = String.Format("update students set studentProfileImage='{0}' where studentEmail='{1}'", q, Email);
                    MainClass.insert(updateImage);
                }
                catch (Exception ex) { System.Diagnostics.Debug.WriteLine(ex.ToString()); }

            }
            MainClass.insert(sql);
            Response.Redirect("Student_Profile.aspx");
        }
    }
}