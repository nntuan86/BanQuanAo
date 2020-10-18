using BanQuanAo.Libraries;
using BanQuanAo.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanQuanAo.Admin.Components.Customer
{
    public partial class Insert : System.Web.UI.UserControl
    {
        DBBanQuanAo db = new DBBanQuanAo();
        MyString mystr = new MyString();
        Customers items = new Customers();
        protected void Page_Load(object sender, EventArgs e)
        {
            //var listcustomer = db.Customers.Where(m => m.StateId != 3 && m.Gender == true).ToList();
            //ddlgioitinh.DataSource = listcustomer;
            //ddlgioitinh.DataBind();
            ddlgioitinh.Items.Insert(0, new ListItem("--Chọn giới tính--", "0"));

            var liststate = db.States.ToList();
            ddlstatus.DataSource = liststate;
            ddlstatus.DataValueField = "Id";
            ddlstatus.DataTextField = "Name";
            ddlstatus.DataBind();
            ddlstatus.Items.Insert(0, new ListItem("--Chọn trạng thái--", "0"));
        }

        protected void btnluu_Click(object sender, EventArgs e)
        {
            try
            {
                string pass = mystr.TOSHA1(txtpass.Text);
                string stralias = mystr.ToVietAlias(txttenkh.Text);
                string strname = txttenkh.Text;
                int count = db.Customers.Where(m => m.Fullname == stralias).Count();
                if (count.Equals(0))
                {
                    string userid = (Session["UserId"].Equals("")) ? "1" : Session["UserId"].ToString();

                    items.Gender = (ddlgioitinh.Text.Equals("1")) ? true : false;

                    items.Fullname = txttenkh.Text;
                    items.Username = txtusername.Text;
                    items.Password = pass;
                    items.Address = txtdiachi.Text;
                    items.City = txtcity.Text;
                    items.Email = txtemail.Text;
                    items.Birthday = DateTime.Now;
                    items.Phone = txtsodt.Text;
                    items.Created_at = DateTime.Now;
                    items.Created_by = 1;
                    items.Updated_at = DateTime.Now;
                    items.Updated_by = 1;
                    items.StateId = int.Parse(ddlstatus.Text);

                    db.Customers.Add(items);
                    db.SaveChanges();
                    Response.Redirect("Default.aspx?option=customer");
                }
                else
                {
                    ltmessage.Text = "Tên khách hàng này đã tồn tại";
                }
            }
            catch
            {
                ltmessage.Text = "Bạn chưa nhập liệu, Hãy nhập liệu vào đi";
            }
        }
    }
}