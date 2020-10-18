using BanQuanAo.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanQuanAo.Admin.Components.Order
{
    public partial class Deltrash : System.Web.UI.UserControl
    {
        DBBanQuanAo db = new DBBanQuanAo();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"].Trim());
            Orders items = db.Orders.Find(id);
            items.StateId = 3;
            db.Entry(items).State = EntityState.Modified;
            db.SaveChanges();
            Response.Redirect("Default.aspx?option=order");
        }
    }
}