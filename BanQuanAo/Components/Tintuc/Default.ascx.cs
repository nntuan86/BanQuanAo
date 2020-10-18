using BanQuanAo.Libraries;
using BanQuanAo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanQuanAo.Components.Tintuc
{
    public partial class Default : System.Web.UI.UserControl
    {
        DBBanQuanAo db = new DBBanQuanAo();
        Pagination pt = new Pagination();
        protected void Page_Load(object sender, EventArgs e)
        {
            int pageSize = 5;
            int pageCurrent = pt.PageCurrent();
            int pageFirst = pt.PageFirst(pageCurrent, pageSize);
            int catid = db.Topics
                .Where(m => m.StateId == 1)
                .Select(m => m.Id).First();
            int Total = db.Contents
                .Where(m => m.StateId == 1 && m.Catid != catid).Count();
            var list = db.Contents
                .Where(m => m.StateId == 1 && m.Catid != catid)
                .OrderByDescending(m => m.Created_at)
                .Skip(pageFirst).Take(pageSize);

            rpttintuc.DataSource = list.ToList();
            rpttintuc.DataBind();
            ltPhantrang.Text = pt.PageLink(Total, pageSize, pageCurrent, "Default.aspx?option=tintuc");
        }
    }
}