using BanQuanAo.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanQuanAo.Admin.Components.Product
{
    public partial class Delete : System.Web.UI.UserControl
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            DBBanQuanAo db = new DBBanQuanAo();
            int id = int.Parse(Request.QueryString["id"].Trim());
            Products items = db.Products.Find(id);

            string strPath = Server.MapPath("../Public/Images/Sanpham/");
            string strNameFile = items.Img;
            if (!strNameFile.Length.Equals(0))
            {
                strNameFile = "productdefault.jpg";
                string nameing = db.Products.Where(m => m.Id == id).Select(m => m.Img).First();
                File.Delete(strPath + nameing);
                while (File.Exists(strPath + strNameFile))
                {
                    strNameFile = "nnt" + strNameFile;
                }
                items.Img = strNameFile;
            }


            db.Products.Remove(items);
            db.SaveChanges();

            Response.Redirect("Default.aspx?option=product&cat=trash");
        }
    }
}