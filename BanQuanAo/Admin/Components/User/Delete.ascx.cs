using BanQuanAo.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanQuanAo.Admin.Components.User
{
    public partial class Delete : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DBBanQuanAo db = new DBBanQuanAo();
            int id = int.Parse(Request.QueryString["id"].Trim());
            Users items = db.Users.Find(id);
            string strPath = Server.MapPath("../Public/Images/User/");
            string strNameFile = items.Img;
            if (strNameFile.Equals("Userdefault.jpg"))
            {
                string nameing = db.Users.Where(m => m.Id == id).Select(m => m.Img).First();
                File.Delete(strPath + nameing);
            }
            db.Users.Remove(items);
            db.SaveChanges();

            Response.Redirect("Default.aspx?option=User&cat=trash");
        }
    }
}