using BanQuanAo.Libraries;
using BanQuanAo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanQuanAo.Component.trangchu
{
    public partial class Default : System.Web.UI.UserControl
    {
        DBBanQuanAo db = new DBBanQuanAo();
        protected void Page_Load(object sender, EventArgs e)
        {
            var list = db.Products
                .Where(m => m.StateId == 1)
                .OrderByDescending(m => m.Created_at)
                .Take(12);
            rptSanPham.DataSource = list.ToList();
            rptSanPham.DataBind();
        }
    }
}