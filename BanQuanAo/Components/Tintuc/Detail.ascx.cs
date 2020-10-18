using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BanQuanAo.Models;
namespace BanQuanAo.Components.Tintuc
{
    public partial class Detail : System.Web.UI.UserControl
    {
        DBBanQuanAo db = new DBBanQuanAo();
        protected void Page_Load(object sender, EventArgs e)
        {
            string alias = Request.QueryString["id"];
            var row = db.Contents.Where(m => m.StateId == 1 && m.Slug == alias).ToList();
            gvChitiet.DataSource = row;
            gvChitiet.DataBind();
        }
    }
}