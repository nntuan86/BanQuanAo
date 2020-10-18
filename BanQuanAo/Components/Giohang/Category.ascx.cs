using BanQuanAo.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanQuanAo.Components.Giohang
{
    public partial class Category : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //DBBanQuanAo db = new DBBanQuanAo();
            //MyCart items = new MyCart();

            //int id = int.Parse(Request.QueryString["Masp"].Trim());
            //items = db.MyCarts.Find(id);
            //string strPath = Server.MapPath("../Public/Images/Cart/");
            //string strNameFile = items.Img;
            //if (!strNameFile.Length.Equals(0))
            //{
            //    strNameFile = "Cartdefault.jpg";
            //    string nameing = db.MyCarts.Where(m => m.Masp == id).Select(m => m.Img).First();
            //    File.Delete(strPath + nameing);
            //    while (File.Exists(strPath + strNameFile))
            //    {
            //        strNameFile = "nnt" + strNameFile;
            //    }
            //    items.Img = strNameFile;
            //}


            //db.MyCarts.Remove(items);
            //db.SaveChanges();

            //Response.Redirect("Default.aspx?option=giohang");
        }
    }
}