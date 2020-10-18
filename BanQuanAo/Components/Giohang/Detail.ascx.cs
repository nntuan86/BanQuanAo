using BanQuanAo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanQuanAo.Components.Giohang
{
    public partial class Detail : System.Web.UI.UserControl
    {
        DBBanQuanAo db = new DBBanQuanAo();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            Products sp = db.Products.Find(id);
            if (sp == null)
                Response.Redirect("Default.aspx");
            else
            {
               if (Session["GioHang"].Equals(""))
                {
                    List<MyCart> giohang = new List<MyCart>();
                    MyCart mycart = new MyCart();
                    mycart.Masp = sp.Id;
                    mycart.Tensp = sp.Name;
                    mycart.Img = sp.Img;
                    mycart.Giasp = sp.Price_buy;
                    mycart.SoLuong = 1;
                    mycart.Tien = sp.Price_buy;
                    giohang.Add(mycart);
                    Session["GioHang"] = giohang;
                }
                else
                {
                    List<MyCart> giohang = (List<MyCart>)Session["GioHang"];
                    if(giohang.Exists(m=>m.Masp==id))
                    {
                        MyCart mycart = giohang.Find(m => m.Masp == id);
                        mycart.SoLuong += 1;
                        mycart.Tien = (mycart.SoLuong+1)*mycart.Giasp;
                        giohang.Add(mycart);
                    }
                    else
                    {
                        MyCart mycart = new MyCart();
                        mycart.Masp = sp.Id;
                        mycart.Tensp = sp.Name;
                        mycart.Img = sp.Img;
                        mycart.Giasp = sp.Price_buy;
                        mycart.SoLuong = 1;
                        mycart.Tien = sp.Price_buy;
                        giohang.Add(mycart);
                    }
                    Session["GioHang"] = giohang;
                }
                Response.Redirect("Default.aspx?option=giohang");
            }
        }
    }
}