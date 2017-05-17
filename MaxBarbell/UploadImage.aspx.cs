using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MaxBarbell
{
    public partial class UploadImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string itemId = Request.QueryString["ItemID"];
            string filename = itemId + ".jpg";

            CurrentImage.ImageUrl = "~/Images/" + filename;

        
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string itemId = Request.QueryString["ItemID"];

            string filename = itemId + ".jpg";
            string saveLocation = Server.MapPath("~/Images/" + filename);

            imageFileUploadControl.SaveAs(saveLocation);



        }
    }
}