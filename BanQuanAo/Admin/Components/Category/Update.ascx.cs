using BanQuanAo.Libraries;
using BanQuanAo.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanQuanAo.Admin.Components.Category
{
    public partial class Update : System.Web.UI.UserControl
    {
        DBBanQuanAo db = new DBBanQuanAo();
        MyString mystr = new MyString();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            Categorys items = db.Categorys.Find(id);
            txtloaisp.Text = items.Name;
            txtMetakey.Text = items.Metakey;
            txtMetadesc.Text = items.Metadesc;

            var listcategory = db.Categorys.Where(m => m.StateId !=3 && m.Parentid == 0)
                .OrderBy(m => m.Id);
            ddlParentid.DataSource = listcategory.ToList();
            ddlParentid.DataTextField = "Name";
            ddlParentid.DataValueField = "Id";
            ddlParentid.DataBind();
            ddlParentid.Items.Insert(0, new ListItem("--Chọn cấp cha--", "0"));

            if (db.Categorys.Find(items.Parentid) != null)
            {
                ddlParentid.SelectedItem.Text = db.Categorys.Find(items.Parentid).Name;
            }
            var listorders = db.Categorys.Where(m => m.StateId !=3 )
                .OrderBy(m => m.Id);
            ddlOrders.DataSource = listorders.ToList();
            ddlOrders.DataTextField = "Name";
            ddlOrders.DataValueField = "Orders";
            ddlOrders.DataBind();
            ddlOrders.Items.Insert(0, new ListItem("--Chọn cấp con--", "0"));

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
                string stralias = mystr.ToVietAlias(txtloaisp.Text);
                string strname = txtloaisp.Text;
                int count = db.Categorys.Where(m => m.Slug == stralias && m.Id != id).Count();
                if (count.Equals(0))
                {
                    string userid = (Session["UserId"].Equals("")) ? "1" : Session["UserId"].ToString();
                    Categorys items = db.Categorys.Find(id);
                    items.Name = txtloaisp.Text;
                    items.Slug = mystr.ToVietAlias(txtloaisp.Text);
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
                    Response.Redirect("Default.aspx?option=category");
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