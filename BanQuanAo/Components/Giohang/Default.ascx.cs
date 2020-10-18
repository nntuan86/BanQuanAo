using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BanQuanAo.Models;

namespace BanQuanAo.Components.Giohang
{
    public partial class Default : System.Web.UI.UserControl
    {
        DBBanQuanAo db = new DBBanQuanAo();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Session["GioHang"].Equals(""))
            {
                List<MyCart> giohang = (List< MyCart>)Session["GioHang"];
                rtgiohang.DataSource=giohang;
                rtgiohang.DataBind();
                double tongtien = 0;
                foreach (var item in giohang)
                {
                    tongtien += item.Tien;  

                }
                lttongtien.Text = tongtien.ToString();
            }
        }
    }
}