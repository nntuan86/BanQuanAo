using BanQuanAo.Libraries;
using BanQuanAo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanQuanAo.Admin.Components.Category
{
    public partial class Insert : System.Web.UI.UserControl
    {
        DBBanQuanAo db = new DBBanQuanAo();
        MyString mystr = new MyString();
        protected void Page_Load(object sender, EventArgs e)
        {
            var listcategory = db.Categorys.Where(m => m.StateId !=3 && m.Parentid == 0)
                .OrderBy(m => m.Id);
            ddlParentid.DataSource = listcategory.ToList();
            ddlParentid.DataTextField = "Name";
            ddlParentid.DataValueField = "Id";
            ddlParentid.DataBind();

            ddlParentid.Items.Insert(0, new ListItem("--Chọn cấp cha--", "0"));

            var listorders = db.Categorys.Where(m => m.StateId !=3)
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
            ddlstatus.Items.Insert(0, new ListItem("--Chọn trạng thái--", "0"));
        }

        protected void btnluu_Click(object sender, EventArgs e)
        {
            try
            {
                string stralias = mystr.ToVietAlias(txtloaisp.Text);
                string strname = txtloaisp.Text;
                int count = db.Categorys.Where(m => m.Slug == stralias).Count();
                if (count.Equals(0))
                {
                    string userid = (Session["UserId"].Equals("")) ? "1" : Session["UserId"].ToString();
                    Categorys items = new Categorys();
                    items.Name = txtloaisp.Text;
                    items.Slug = mystr.ToVietAlias(txtloaisp.Text);
                    items.Parentid = int.Parse(ddlParentid.Text);
                    int orders = int.Parse(ddlParentid.Text);
                    items.Metakey = txtMetakey.Text;
                    items.Metadesc = txtMetadesc.Text;
                    items.Created_at = DateTime.Now;
                    items.Created_by = int.Parse(userid);
                    items.Updated_at = DateTime.Now;
                    items.Updated_by = int.Parse(userid);
                    items.StateId = int.Parse(ddlstatus.Text);
                    db.Categorys.Add(items);
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
                ltmessage.Text = "Bạn chưa nhập liệu, Hãy nhập liệu vào đi";
            }
        }
    }
}