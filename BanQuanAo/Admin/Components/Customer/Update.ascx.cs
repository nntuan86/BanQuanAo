using BanQuanAo.Libraries;
using BanQuanAo.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanQuanAo.Admin.Components.Customer
{
    public partial class Update : System.Web.UI.UserControl
    {
        DBBanQuanAo db = new DBBanQuanAo();
        MyString mystr = new MyString();
        Customers items = new Customers();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            items = db.Customers.Find(id);

            //fulImg.FileName=items.Img.ToString();
            txttenkh.Text = items.Fullname;
            txtusername.Text = items.Username;
            txtpass.Text = items.Password;
            txtdiachi.Text = items.Address;
            txtcity.Text = items.City;
            txtemail.Text = items.Email;
            txtsodt.Text = items.Phone;
            //datengaysinh = DateTime.Now(items.Birthday);

            var listcustomer = db.Customers.Where(m => m.StateId != 3 && m.Gender == true).ToList();
            ddlgioitinh.DataSource = listcustomer;
            ddlgioitinh.DataBind();
            ddlgioitinh.Items.Insert(0, new ListItem("--Chọn giới tính--", "0"));


            var liststate = db.States.ToList();
            ddlstatus.DataSource = liststate;
            ddlstatus.DataValueField = "Id";
            ddlstatus.DataTextField = "Name";
            ddlstatus.DataBind();
        }

        protected void btnluu_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            try
            {
                string pass = mystr.TOSHA1(txtpass.Text);
                string stralias = mystr.ToVietAlias(txttenkh.Text);
                int count = db.Customers.Where(m => m.Fullname == stralias && m.Id != id).Count();
                if (count.Equals(0))
                {
                    string userid = (Session["UserId"].Equals("")) ? "1" : Session["UserId"].ToString();
                    Customers items = db.Customers.Find(id);

                    items.Fullname = txttenkh.Text;
                    items.Username = txtusername.Text;
                    items.Password = pass;
                    items.Address = txtdiachi.Text;
                    items.City = txtcity.Text;
                    items.Email = txtemail.Text;
                    items.Birthday = DateTime.Now;

                    items.Updated_at = DateTime.Now;
                    items.Updated_by = int.Parse(userid);
                    items.StateId = int.Parse(ddlstatus.Text);
                    db.Entry(items).State = EntityState.Modified;
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
                ltmessage.Text = "Bạn chưa nhập liệu, Hãy thêm dữ liệu vào đi";
            }
        }
    }
}