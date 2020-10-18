using BanQuanAo.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanQuanAo.Admin.Components.Content
{
    public partial class Deltrash : System.Web.UI.UserControl
    {
        DBBanQuanAo db = new DBBanQuanAo();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"].Trim());
            Contents items = db.Contents.Find(id);
            items.StateId = 3;
            items.Updated_at = DateTime.Now;
            items.Updated_by = int.Parse(Session["UserId"].ToString());
            db.Entry(items).State = EntityState.Modified;
            db.SaveChanges();
            Response.Redirect("Default.aspx?option=content");
        }
    }
}