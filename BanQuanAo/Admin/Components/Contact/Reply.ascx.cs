using BanQuanAo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanQuanAo.Admin.Components.Contact
{
    public partial class Reply : System.Web.UI.UserControl
    {
        DBBanQuanAo db = new DBBanQuanAo();
        Contacts contact = new Contacts();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGui_Click(object sender, EventArgs e)
        {
            try
            {
                contact.Fullname = txthoten.Text;
                contact.Email = txtemail.Text;
                contact.Phone = txtphone.Text;
                contact.Title = txttitle.Text;
                contact.Title = CKEDetail.Text;
                contact.Created_by = 1;
                contact.Updated_by = 1;
                contact.Created_at = DateTime.Now;
                contact.Updated_at = DateTime.Now;
                contact.StateId = 1;
                Response.Write("<script>alert('Đã gửi tới người yêu cầu');</script>");
                txthoten.Text = "";
                txtemail.Text = "";
                txtphone.Text = "";
                txttitle.Text = "";
                CKEDetail.Text = "";
            }
            catch
            {
                Response.Write("<script>alert('Chưa nhập dữ liệu, nhập dữ liệu vào đi');</script>");
            }
        }
    }
}