using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BanQuanAo.Models;
using BanQuanAo.Libraries;
namespace BanQuanAo.Admin.Components.Content
{
    public partial class Default : System.Web.UI.UserControl
    {
        DBBanQuanAo db = new DBBanQuanAo();
        Pagination pt = new Pagination();
        protected void Page_Load(object sender, EventArgs e)
        {
            var list = db.Contents.Where(m => m.StateId != 3).OrderByDescending(m => m.Created_at);
            rptsanpham.DataSource = list.ToList();
            rptsanpham.DataBind();
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
        public string NameContent(object v)
        {
            int catid = int.Parse(v.ToString());
            string catname = db.Topics.Where(m => m.Id == catid).Select(m => m.Name).First();
            if (catname.Equals(0))
            {
                return "Không có chủ đề";
            }
            else
            {
                return catname;
            }
        }
    }
}