using BanQuanAo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanQuanAo.Admin.Components.Order
{
    public partial class Delete : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DBBanQuanAo db = new DBBanQuanAo();
            int id = int.Parse(Request.QueryString["id"].Trim());
            Orders items = db.Orders.Find(id);
            if (items != null)
            {
                db.Orders.Remove(items);
                db.SaveChanges();
            }
            Response.Redirect("Default.aspx?option=order&cat=trash");
        }
    }
}