using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BanQuanAo.Models;
namespace BanQuanAo.Components.Search
{
    public partial class Default : System.Web.UI.UserControl
    {
        DBBanQuanAo db = new DBBanQuanAo();
        protected void Page_Load(object sender, EventArgs e)
        {
            string keyword = Request.QueryString["keyword"];
            List<Products> list = new List<Products>();
            list = db.Products.Where(m => m.Name.Contains(keyword) || m.Slug.Contains(keyword)).ToList();
            rptTimkiem.DataSource = list;
            rptTimkiem.DataBind();
        }
    }
}