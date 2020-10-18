using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanQuanAo.Admin
{
    public partial class Default1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"].ToString().Equals(""))
            {
                Response.Redirect("Login.aspx");
            }
            string strpath = "Components/";
            if (string.IsNullOrEmpty(Request.QueryString["option"]))
            {
                strpath += "Dashboard/Default.ascx";
            }
            else
            {
                strpath += Request.QueryString["option"] + "/";
                if (string.IsNullOrEmpty(Request.QueryString["cat"]))
                {
                    strpath += "Default.ascx";
                }
                else
                {
                    strpath += Request.QueryString["cat"].ToString() + ".ascx";
                }
            }
            Control ct = new Control();
            ct = Page.LoadControl(strpath);
            NoiDung.Controls.Add(ct);
        }
    }
}