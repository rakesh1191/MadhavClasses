using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Madhav_Classes.Admin
{
    public partial class AdminImages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String getImages = String.Format("select * from adminImages");
            DataTable dt = MainClass.getData(getImages);

            imageList.DataSource = dt;
            imageList.DataBind();
        }

        protected void UploadImage_Click(object sender, EventArgs e)
        {
            String imageTitle = ImageTitle.Text;

            //file upload code
            if (file.HasFiles)
            {
                string q = "../images/ImageGallery/" + file.FileName;
                file.SaveAs(MapPath(q));

                //Inserting in db
                String sql = String.Format("insert into adminImages(imagePath, imageTitle, imageDate, imageTime) values ('{0}','{1}','{2}','{3}') " , q, ImageTitle.Text, DateTime.Now.ToString("dd/MM/yyyy"), DateTime.Now.ToString("hh: mm ss tt:") );
                System.Diagnostics.Debug.WriteLine(sql);
                String result = MainClass.insert(sql);
            }
        }
    }
}