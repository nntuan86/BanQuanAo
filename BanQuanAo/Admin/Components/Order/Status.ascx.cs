using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BanQuanAo.Models;
using System.Data.Entity;
namespace BanQuanAo.Admin.Components.Order
{
    public partial class Status : System.Web.UI.UserControl
    {
        DBBanQuanAo db = new DBBanQuanAo();

        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"].Trim());
            Orders items = db.Orders.Find(id);
            if (items == null)
            {
                Response.Redirect("Default.aspx?option=order");
            }
            else
            {
                if (items.StateId.Equals(1))
                {
                    items.StateId = 2;
                }
                else
                {
                    items.StateId = 1;
                }
                db.Entry(items).State = EntityState.Modified;
                db.SaveChanges();
                Response.Redirect("Default.aspx?option=order");
            }

        }
    }
}