using BanQuanAo.Libraries;
using BanQuanAo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanQuanAo.Admin.Components.Order
{
    public partial class Trash : System.Web.UI.UserControl
    {
        DBBanQuanAo db = new DBBanQuanAo();
        Pagination pt = new Pagination();
        protected void Page_Load(object sender, EventArgs e)    
        {
            var list = db.Orders.Where(m => m.StateId == 3);
            rptthungrac.DataSource = list.ToList();
            rptthungrac.DataBind();
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
        public string NameCustomer(object v)
        {
            int catid = int.Parse(v.ToString());
            string name = db.Customers.Where(m => m.Id == catid).Select(m => m.Fullname).First();
            if(name.Equals(0))
            {
                return "Không có tên";
            }
            else
            {
                return name;
            }
        }
    }
}