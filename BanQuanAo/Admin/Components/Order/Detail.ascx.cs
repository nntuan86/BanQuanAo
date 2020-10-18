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
    public partial class Detail : System.Web.UI.UserControl
    {
        DBBanQuanAo db = new DBBanQuanAo();
        Pagination pt = new Pagination();
        protected void Page_Load(object sender, EventArgs e)
        {
            var listorder = db.Orders.Where(m => m.StateId!=3);
            fvchitiet.DataSource = listorder.ToList();
            fvchitiet.DataBind();
        }
        public string FullNameCustomer(object v)
        {
            int catid = int.Parse(v.ToString());
            string catfullname = db.Customers.Where(m => m.Id == catid).Select(m => m.Fullname).First();
            if (catfullname.Equals(0))
            {
                return "Không có tên khách hàng";
            }
            else
            {
                return catfullname;
            }
        }
        //public string NameCustomer(object v)
        //{
        //    return "Không có tên";
        //}
        public string EmailCustommer(object v)
        {
            int catid = int.Parse(v.ToString());
            string catemail = db.Customers.Where(m => m.Id == catid).Select(m => m.Email).First();
            if (catemail.Equals(0))
            {
                return "Không có Email";
            }
            else
            {
                return catemail;
            }
            
        }
        public string NameProduct(object v)
        {
            int catid = int.Parse(v.ToString());
            string catproduct = db.Products.Where(m => m.Id == catid).Select(m => m.Name).First();
            if (catproduct.Equals(0))
            {
                return "Không có tên sản phẩm";
            }
            else
            {
                return catproduct;
            }

        }
        //public string ImgProduct(object v)
        //{
        //    int catid = int.Parse(v.ToString());
        //    string catimg = db.Products.Where(m => m.Id == catid).Select(m => m.Img).First();
        //    if (catimg.Equals(0))
        //    {
        //        return "Không có hình ảnh";
        //    }
        //    else
        //    {
        //        return catimg;
        //    }

        //}
        public string Price(object v)
        {
            return "Không có tên";
        }
        public string Saleprice(object v)
        {
            return "Không có tên";
        }
        public string Sumprice(object v)
        {
            return "Không có tên";
        }
    }
}