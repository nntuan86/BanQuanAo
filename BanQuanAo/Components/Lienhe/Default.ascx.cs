using BanQuanAo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanQuanAo.Components.Lienhe
{
    public partial class Default : System.Web.UI.UserControl
    {
        DBBanQuanAo db = new DBBanQuanAo();
        Contacts contact = new Contacts();
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btnGui_Click(object sender, EventArgs e)
        {
            contact.Fullname = txtFullname.Text;
            contact.Email = txtEmail.Text;
            contact.Phone = txtPhone.Text;
            contact.Title = txtTitle.Text;
            //contact.Detail = txtContent.Text;
            contact.Created_by = 1;
            contact.Updated_by = 1;
            contact.Created_at = DateTime.Now;
            contact.Updated_at = DateTime.Now;
            contact.StateId = 1;
            db.Contacts.Add(contact);
            db.SaveChanges();
            Response.Write("<script>alert('Cảm ơn đã liên hệ với chúng tôi');</script>");
            txtFullname.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
            txtTitle.Text = "";
            txtContent.Text = "";
        }
    }
}