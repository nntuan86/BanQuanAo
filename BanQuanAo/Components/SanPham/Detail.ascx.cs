using BanQuanAo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanQuanAo.Component.sanpham
{
    public partial class Detail : System.Web.UI.UserControl
    {
        DBBanQuanAo db = new DBBanQuanAo();
        protected void Page_Load(object sender, EventArgs e)
        {
            string alias = Request.QueryString["id"];
            var list = db.Products.Where(m => m.StateId == 1 && m.Slug == alias);
            fvchitiet.DataSource = list.ToList();
            fvchitiet.DataBind();
            int catid = db.Products.Where(m => m.Slug == alias).Select(m => m.Catid).First();
            var listcungloai = db.Products.Where(m => m.Catid == catid && m.StateId == 1 && m.Slug != alias).Take(5).ToList();
            rptcungloai.DataSource = listcungloai.ToList();
            rptcungloai.DataBind();
        }
    }
}