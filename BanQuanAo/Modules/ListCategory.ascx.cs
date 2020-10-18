using BanQuanAo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanQuanAo.Modules
{
    public partial class ListCategory : System.Web.UI.UserControl
    {
        DBBanQuanAo db = new DBBanQuanAo();
        protected void Page_Load(object sender, EventArgs e)
        {
            var listcategory1 = db.Categorys.Where(m => m.Parentid == 0 && m.StateId == 1).OrderBy(m => m.Orders).ToList();
            string strhtml = "";
            {
                strhtml += "<div id='cssmenu'>";
                strhtml += "<ul>";
                foreach (var item in listcategory1)
                {
                    strhtml += "<li class='active has-sub'>";
                    strhtml += "<a href='Default.aspx?option=sanpham&cat=" + item.Slug + "'>" + item.Name + "</a>";
                    var listcategory2 = db.Categorys.Where(m => m.Parentid == item.Id && m.StateId == 1).OrderBy(m => m.Orders).ToList();
                    if (!listcategory1.Count.Equals(0))
                    {
                        strhtml += "<ul>";
                        foreach (var item2 in listcategory2)
                        {
                            strhtml += "<li class='last'>";
                            strhtml += "<a href='Default.aspx?option=sanpham&cat=" + item2.Slug + "'>" + item2.Name + "</a>";
                            strhtml += "</li>";
                        }
                        strhtml += "</ul>";
                    }
                    else
                        strhtml += "</ul>";
                }
                
                strhtml += "</div>";
                ltlistcategory.Text = strhtml;
            }
        }  
    }
}