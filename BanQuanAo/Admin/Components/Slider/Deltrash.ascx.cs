using BanQuanAo.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanQuanAo.Admin.Components.Slider
{
    public partial class Deltrash : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DBBanQuanAo db = new DBBanQuanAo();
            int id = int.Parse(Request.QueryString["id"]);
            Slideshow items = db.Slideshows.Find(id);
            items.StateId = 3;
            items.Updated_at = DateTime.Now;
            //items.Updated_by = int.Parse(Session["UserId"].ToString());
            db.Entry(items).State = EntityState.Modified;
            db.SaveChanges();
            Response.Redirect("Default.aspx?option=slider");
        }
    }
}