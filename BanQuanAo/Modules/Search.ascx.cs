using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanQuanAo.Modules
{
    public partial class Search : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnTimkiem_Click(object sender, EventArgs e)
        {

            if (txtSearch.Text == "")
            {
                Response.Write("<script>alert('Bạn chưa nhập từ khóa')</script>");
            }
            else
            {
                Response.Redirect("Default.aspx?option=search&keyword=" + txtSearch.Text + " ");
            }
        }
    }
}