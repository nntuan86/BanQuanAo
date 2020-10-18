using BanQuanAo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanQuanAo.Admin.Components.Contact
{
    public partial class Delete : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DBBanQuanAo db = new DBBanQuanAo();
            int id = int.Parse(Request.QueryString["id"].Trim());
            Contacts items = db.Contacts.Find(id);
            if (items != null)
            {
                db.Contacts.Remove(items);
                db.SaveChanges();
            }
            Response.Redirect("Default.aspx?option=contact&cat=trash");
        }
    }
}