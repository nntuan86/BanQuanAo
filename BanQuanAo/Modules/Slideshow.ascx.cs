using BanQuanAo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanQuanAo.Modules
{
    public partial class Slideshow : System.Web.UI.UserControl
    {
        DBBanQuanAo db = new DBBanQuanAo();
        protected void Page_Load(object sender, EventArgs e)
        {
            var list = db.Slideshows
                .Where(m => m.StateId == 1)
                .OrderBy(m => m.Orders).ToList();
            string strslider01 = "";
            string strslider02 = "";
            int d = 0;
            foreach(var s in list)
            {
                if(d==0)
                {

                    strslider01 += "<li data-target='#carousel-id' data-slide-to='" + d.ToString() + "' class='active'></li>";
                    strslider02 += "<div class='item active'>";
                    strslider02 += "<img  src='Public/Images/Slideshow/" + s.Img + "' class='img-responsive'  alt='Image' >";
                    strslider02 += "</div>";
                }
                else
                {
                    strslider01 += "<li data-target='#carousel-id' data-slide-to='" + d.ToString() + "'></li>";
                    strslider02 += "<div class='item'>";
                    strslider02 += "<img  src='Public/Images/Slideshow/" + s.Img + "' class='img-responsive'  alt='Image' >";
                    strslider02 += "</div>";
                }
                d++;
            }
            ltslideshow1.Text = strslider01;
            ltslideshow2.Text = strslider02;
        }
    }
}