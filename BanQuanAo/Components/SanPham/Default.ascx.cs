using BanQuanAo.Libraries;
using BanQuanAo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanQuanAo.Components.SanPham
{
    public partial class Default : System.Web.UI.UserControl
    {
        DBBanQuanAo db = new DBBanQuanAo();
        protected void Page_Load(object sender, EventArgs e)
        {
            Pagination pt = new Pagination();
            int pagesize = 15;
            int pagecurrent = pt.PageCurrent();
            int first = pt.PageFirst(pagecurrent, pagesize);
            var list = db.Products
                .Where(m => m.StateId == 1)
                .OrderByDescending(m => m.Created_at)
                .Skip(first).Take(pagesize);
            rptsanpham.DataSource = list.ToList();
            rptsanpham.DataBind();
            int total = db.Products
                .Where(m => m.StateId == 1).Count();
            ltPhantrang.Text = pt.PageLink(total, pagesize, pagecurrent, "Default.aspx?option=sanpham");
        }
    }
}