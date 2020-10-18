using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BanQuanAo.Models;
using System.Data.Entity;
namespace BanQuanAo.Admin.Components.Content
{
    public partial class Status : System.Web.UI.UserControl
    {
        DBBanQuanAo db = new DBBanQuanAo();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"].Trim());
            Contents items = db.Contents.Find(id);
            if (items == null)
            {
                Response.Redirect("Default.aspx?option=category");
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
                items.Updated_at = DateTime.Now;
                items.Updated_by = int.Parse(Session["UserId"].ToString());
                db.Entry(items).State = EntityState.Modified;
                db.SaveChanges();
                Response.Redirect("Default.aspx?option=content");
            }
            
        }
    }
}