using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanQuanAo
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strPath = "~/Components/";
            if(string.IsNullOrEmpty(Request.QueryString["option"]))
            {
                strPath += "Trangchu/Default.ascx";
            }
            else
            {
                strPath+=Request.QueryString["option"].ToString()+"/";
                if(string.IsNullOrEmpty(Request.QueryString["id"]))
                {
                    if (string.IsNullOrEmpty(Request.QueryString["cat"]))
                    {
                        strPath += "Default.ascx";
                    }
                    else
                    {
                        strPath += "Category.ascx";
                    }
                }
                else
                {
                    strPath += "Detail.ascx";
                        
                }
            }
            Control ct = new Control();
            ct = Page.LoadControl(strPath);
            Noidung.Controls.Add(ct);
        }
    }
}