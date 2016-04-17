using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Madhav_Classes
{
    public partial class Gallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String getImages = String.Format("select * from adminImages");
            DataTable dt = MainClass.getData(getImages);

            imageList.DataSource = dt;
            imageList.DataBind();
        }
    }
}