using BanQuanAo.Libraries;
using BanQuanAo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanQuanAo.Component.Gioithieu
{
    public partial class Default : System.Web.UI.UserControl
    {
        DBBanQuanAo db = new DBBanQuanAo();
        protected void Page_Load(object sender, EventArgs e)
        {
            int catid = db.Topics
                .Where(m => m.StateId == 1)
                .Select(m => m.Id).First();
            var row = db.Contents
                .Where(m => m.Catid == catid).ToList();
            if (!row.Count.Equals(0))
            {
                gvGioithieu.DataSource = row;
                gvGioithieu.DataBind();
            }
        }
    }
}