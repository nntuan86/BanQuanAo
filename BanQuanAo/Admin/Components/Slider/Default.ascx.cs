using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BanQuanAo.Libraries;
using BanQuanAo.Models;

namespace BanQuanAo.Admin.Components.slider
{
    public partial class Default : System.Web.UI.UserControl
    {
        DBBanQuanAo db = new DBBanQuanAo();
        Pagination pt = new Pagination();
        protected void Page_Load(object sender, EventArgs e)
        {
            var list = db.Slideshows.Where(m => m.StateId != 3).OrderByDescending(m => m.Created_at);
            rptslider.DataSource = list.ToList();
            rptslider.DataBind();
        }
        public string FunStatus(object v)
        {
            int stateid = int.Parse(v.ToString());
            if (stateid.Equals(1))
            {
                return "fa fa-toggle-on text-info fa-tuan";
            }
            else
            {
                return "fa fa-toggle-off text-danger fa-tuan";
            }
        }
    }
}