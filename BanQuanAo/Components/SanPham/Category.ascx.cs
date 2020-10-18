using BanQuanAo.Libraries;
using BanQuanAo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanQuanAo.Component.sanpham
{
    public partial class Category : System.Web.UI.UserControl
    {
        DBBanQuanAo db = new DBBanQuanAo();
        protected void Page_Load(object sender, EventArgs e)
        {
            Pagination pt = new Pagination();
            int pagesize = 15;
            int pagecurrent = pt.PageCurrent();
            int first = pt.PageFirst(pagecurrent, pagesize);
            string catlink = Request.QueryString["cat"];
            int catid = db.Categorys
                .Where(m => m.Slug == catlink).Select(m => m.Id).First();

            List<int> listcat = db.Categorys
                .Where(m => m.StateId == 1 && m.Parentid == catid)
                .Select(m => m.Id)
                .ToList();
            listcat.Add(catid);
            var list = db.Products
                .Where(m => m.StateId == 1 && listcat.Contains(m.Catid))
                .OrderByDescending(m => m.Created_at)
                .Skip(first).Take(pagesize);
            rptSanPham.DataSource = list.ToList();
            rptSanPham.DataBind();
            int total = db.Products
                .Where(m => m.StateId == 1 && listcat.Contains(m.Catid)).Count();
            ltPhantrang.Text = pt.PageLink(total, pagesize, pagecurrent, "Default.aspx?option=sanpham&cat=" + catlink);
        }
    }
}