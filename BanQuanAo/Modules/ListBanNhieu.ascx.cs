using BanQuanAo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanQuanAo.Modules
{
    public partial class ListBanNhieu : System.Web.UI.UserControl
    {
        DBBanQuanAo db = new DBBanQuanAo();
        protected void Page_Load(object sender, EventArgs e)
        {
            var list = db.Products
                .Where(m => m.StateId==1)
                .OrderByDescending(m => m.Created_by)
                .Take(3);
            rptbannhieu.DataSource = list.ToList();
            rptbannhieu.DataBind();
        }
    }
}