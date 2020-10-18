using BanQuanAo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanQuanAo.Modules
{
    public partial class Mainmenu : System.Web.UI.UserControl
    {
        DBBanQuanAo db = new DBBanQuanAo();
        protected void Page_Load(object sender, EventArgs e)
        {
            var listmainmenu = db.Categorys.Where(m => m.Parentid == 0 && m.StateId == 1).OrderBy(m => m.Created_at).ToList();
            string strhtml = "";
            {
                strhtml += "<div id='cssmenu_mainmenu'>";
                strhtml += "<ul>";
                strhtml += "<li class='active' style='padding-top:5px; padding-left: 80px; padding-right: 40px;'><a href='Default.aspx'><span><img src='Public/Images/Icons/home.png' width='20' height='20'></span></a></li>";
                foreach (var item in listmainmenu)
                {

                    var listmainmenu2 = db.Categorys.Where(m => m.Parentid == item.Id && m.StateId == 1).OrderBy(m => m.Orders).ToList();
                    if (!listmainmenu.Count.Equals(0))
                    {
                        strhtml += "<li class='has-sub' style='padding-top:7px; padding-right:15px;'>";
                        strhtml += "<a href='Default.aspx?option=sanpham&cat=" + item.Slug + "'>" + item.Name + "</a>";
                        strhtml += "<ul>";
                        foreach (var item2 in listmainmenu2)
                        {
                            strhtml += "<li class='last'>";
                            strhtml += "<a href='Default.aspx?option=sanpham&cat=" + item2.Slug + "'>" + item2.Name + "</a>";
                            strhtml += "</li>";
                        }
                        strhtml += "</ul>";
                        strhtml += "</li>";
                    }
                    else
                        strhtml += "<li class='last' style='padding-top:7px;'><a href='Default.aspx?option=sanpham&cat=" + item.Slug + "'>" + item.Name + "</span></a></li>";
                        
                }
                //giohang
                strhtml +="<li>";
                strhtml +="<a href='Default.aspx?option=giohang'>";
                strhtml += "<span class='glyphicon glyphicon-shopping-cart' style='padding-top:10px;'>";
                strhtml += "</span>";
                strhtml += "</a>";
                strhtml +="</li>";
                //end
                strhtml += "</ul>";
                strhtml += "</div>";
                ltrMainmeu.Text = strhtml;
            }
        }
    }
}