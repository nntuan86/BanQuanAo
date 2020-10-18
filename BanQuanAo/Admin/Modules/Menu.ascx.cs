using BanQuanAo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanQuanAo.Admin.Modules
{
    public partial class Menu : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DBBanQuanAo db = new DBBanQuanAo();
            //int id = int.Parse(Request.QueryString["id"].ToString());
            int sessionid = int.Parse(Session["UserId"].ToString());
            var listthongtin = db.Users.Where(m => m.StateId == 1 && m.Id == sessionid).ToList();
            rptthongtin.DataSource = listthongtin;
            rptthongtin.DataBind();
        }
    }
}