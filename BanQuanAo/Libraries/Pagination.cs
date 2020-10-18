using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BanQuanAo.Libraries
{
    public class Pagination
    {
        public int PageCurrent()
        {
            if (string.IsNullOrEmpty(HttpContext.Current.Request.QueryString["page"]))
                return 1;
            else
                return Convert.ToInt32(HttpContext.Current.Request.QueryString["page"]);
        }
        public int PageFirst(int pageCurrent, int pageSize)
        {
            return (pageCurrent - 1) * pageSize;
        }
        public string PageLink(int Total, int pageSize, int pageCurrent, string Url)
        {
            string html = "<ul class='pagination'>";
            if (Total == 0) return html;
            int numPage = Total / pageSize;
            if (Total % pageSize != 0)
                numPage++;
            if (numPage == 1)
                return html;
            if (pageCurrent == 1)
            {
                html += "<a><li>Trang Đầu </a></li>";
                html += "<a><li>Trước </a></li>";
            }
            else
            {
                html += "<li><a href='" + Url + "&page=1'>Trang Đầu </a></li>";
                html += "<li><a href='" + Url + "&page=" + (pageCurrent - 1) + "'>Trước</a></li>";
            }
            if (pageCurrent <= 3)
            {
                for (int i = 1; (i <= 5) && (i <= numPage); i++)
                {
                    if (i == pageCurrent)
                        html += "<li><a>" + i + "</a></li>";
                    else
                    {
                        html += "<li><a href='" + Url + "&page=" + i + "'>[" + i + "]</a></li>";
                    }
                }
            }
            else
            {
                if(numPage>=pageCurrent+2)
                {
                    for (int i = pageCurrent-2; (i <= pageCurrent+2) && (i <= numPage); i++)
                    {
                        if(i==pageCurrent)
                        {
                            html += "<li><a>" + i + "</a></li>";
                        }
                        else
                        {
                            html += "<li><a href='" + Url + "&page="+i+"'>["+i+"]</a></li>";
                        }
                    }
                }
                else
                {
                    for (int i = numPage - 4; i <= numPage; i++)
                    {
                        if (i >0)
                        {
                            if (i ==pageCurrent)
                            {
                                html += "<li><a>" + i + "</a></li>";
                            }
                            else
                            {
                                html += "<li><a href='" + Url + "&page=" + i + "'>[" + i + "]</a></li>";
                            }
                        }                
                    }
                }
            }
            if(pageCurrent==numPage)
            {
                html += "<a><li>Sau </a></li>";
                html += "<a><li>Trang cuối </a></li>";
            }
            else
            {
                html += "<li><a href='" + Url + "&page="+(pageCurrent+1)+"'>Sau </a></li>";
                html += "<li><a href='" + Url + "&page=" + numPage + "'>Trang cuối</a></li>";
            }
            html += "</ul>";
            return html;
        }
    }
}