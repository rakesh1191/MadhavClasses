using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Madhav_Classes
{
    public partial class Professor_EditProfile : System.Web.UI.Page
    {
        String Email;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Check weather session variable null or not
                if (Session["professorEmail"] != null)
                {
                    //Retrieving UserName from Session
                    Email = Session["professorEmail"].ToString();
                    String sql = String.Format("select * from professors where professorEmail = '{0} '", Email);
                    DataTable dt = MainClass.getData(sql);

                    professorEmail.Text = Email;
                    professorFirstName.Text = dt.Rows[0]["professorFirstName"].ToString();
                    professorLastName.Text = dt.Rows[0]["professorLastName"].ToString();
                    professorPhone.Text = dt.Rows[0]["professorPhone"].ToString();
                    professorAddressLine1.Text = dt.Rows[0]["professorAddressLine1"].ToString();
                    professorAddressLine2.Text = dt.Rows[0]["professorAddressLine2"].ToString();
                    professorCity.Text = dt.Rows[0]["professorCity"].ToString();
                    professorState.Text = dt.Rows[0]["professorState"].ToString();
                    professorCountry.Text = dt.Rows[0]["professorCountry"].ToString();
                    professorPinCode.Text = dt.Rows[0]["professorPinCode"].ToString();

                    //Process Image
                    String professorProfileImage = dt.Rows[0]["professorProfileImage"].ToString();
                    if (professorProfileImage == "")
                    {
                        professorImage.ImageUrl = "../images/default.png";
                    }
                    else
                    {
                        professorImage.ImageUrl = professorProfileImage;
                    }
                }
                else
                {
                    Response.Redirect("professor_Login.aspx");
                }
            }
        }

        protected void Save_Click(object sender, EventArgs e)
        {
            //Getting the Session Variable
            Email = Session["professorEmail"].ToString();

            String sql = String.Format("update professors set professorFirstName='{0}',"+
                "professorLastName='{1}',"+
                "professorPhone='{2}'," +
                "professorAddressLine1='{3}'," +
                "professorAddressLine2='{4}'," +
                "professorCity='{5}'," +
                "professorState='{6}'," +
                "professorCountry='{7}'," +
                "professorPinCode='{8}'" +
                "where professorEmail = '{9}' ", professorFirstName.Text, professorLastName.Text, professorPhone.Text, professorAddressLine1.Text, professorAddressLine2.Text,
                professorCity.Text, professorState.Text, professorCountry.Text, professorPinCode.Text, Email);

            //Update Image
          
            //file upload code
            if (professorImageUpload.HasFiles)
            {
                try {
                    
                    //Save image to filesystem
                    string q = "../images/ImageGallery/" + professorImageUpload.FileName;
                    professorImageUpload.SaveAs(MapPath(q));

                    //Save path to database
                    String updateImage = String.Format("update professors set professorProfileImage='{0}' where professorEmail='{1}'", q, Email);
                    MainClass.insert(updateImage);
                }
                catch (Exception ex) { System.Diagnostics.Debug.WriteLine(ex.ToString()); }

            }

            MainClass.insert(sql);
            Response.Redirect("Professor_Profile.aspx");
        
        }
    }
}