using BanQuanAo.Libraries;
using BanQuanAo.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanQuanAo.Admin.Components.Topic
{
    public partial class Update : System.Web.UI.UserControl
    {
        DBBanQuanAo db = new DBBanQuanAo();
        MyString mystr = new MyString();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            Topics items = db.Topics.Find(id);
            txtloaibaiviet.Text = items.Name;
            txtMetakey.Text = items.Metakey;
            txtMetadesc.Text = items.Metadesc;

            var listcategory = db.Topics.Where(m => m.StateId != 3 && m.Parentid == 0)
                .OrderBy(m => m.Id);
            ddlParentid.DataSource = listcategory.ToList();
            ddlParentid.DataTextField = "Name";
            ddlParentid.DataValueField = "Id";
            ddlParentid.DataBind();
            //ddlParentid.Items.Insert(0, new ListItem("--Chọn cấp cha--", "0"));

            if (db.Topics.Find(items.Parentid) != null)
            {
                ddlParentid.SelectedItem.Text = db.Topics.Find(items.Parentid).Name;
            }
            var listorders = db.Topics.Where(m => m.StateId != 3)
                .OrderBy(m => m.Id);
            ddlOrders.DataSource = listorders.ToList();
            ddlOrders.DataTextField = "Name";
            ddlOrders.DataValueField = "Orders";
            ddlOrders.DataBind();

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
                string stralias = mystr.ToVietAlias(txtloaibaiviet.Text);
                string strname = txtloaibaiviet.Text;
                int count = db.Topics.Where(m => m.Slug == stralias && m.Id != id).Count();
                if (count.Equals(0))
                {
                    string userid = (Session["UserId"].Equals("")) ? "1" : Session["UserId"].ToString();
                    Topics items = db.Topics.Find(id);
                    items.Name = txtloaibaiviet.Text;
                    items.Slug = mystr.ToVietAlias(txtloaibaiviet.Text);
                    items.Parentid = int.Parse(ddlParentid.Text);
                    int order = int.Parse(ddlParentid.Text);
                    items.Parentid = order + 1;
                    items.Metakey = txtMetakey.Text;
                    items.Metadesc = txtMetadesc.Text;
                    items.Updated_at = DateTime.Now;
                    items.Updated_by = int.Parse(userid);
                    items.StateId = int.Parse(ddlstatus.Text);
                    db.Entry(items).State = EntityState.Modified;
                    db.SaveChanges();
                    Response.Redirect("Default.aspx?option=topic");
                }
                else
                {
                    ltmessage.Text = "Tên loại sản phẩm này đã tồn tại";
                }
            }
            catch
            {
                ltmessage.Text = "Bạn chưa nhập liệu, Hãy thêm dữ liệu vào đi";
            }
        }
    }
}