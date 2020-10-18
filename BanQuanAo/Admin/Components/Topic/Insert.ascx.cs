using BanQuanAo.Libraries;
using BanQuanAo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanQuanAo.Admin.Components.Topic
{
    public partial class Insert : System.Web.UI.UserControl
    {
        DBBanQuanAo db = new DBBanQuanAo();
        MyString mystr = new MyString();
        protected void Page_Load(object sender, EventArgs e)
        {
            var listtopic = db.Topics.Where(m => m.StateId !=3 && m.Parentid == 0)
                .OrderBy(m => m.Id);
            ddlParentid.DataSource = listtopic.ToList();
            ddlParentid.DataTextField = "Name";
            ddlParentid.DataValueField = "Id";
            ddlParentid.DataBind();

            ddlParentid.Items.Insert(0, new ListItem("--Chọn cấp cha--", "0"));

            var listorders = db.Topics.Where(m => m.StateId !=3)
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
                string stralias = mystr.ToVietAlias(txtloaibaiviet.Text);
                string strname = txtloaibaiviet.Text;
                int count = db.Topics.Where(m => m.Slug == stralias).Count();
                if (count.Equals(0))
                {
                    string userid = (Session["UserId"].Equals("")) ? "1" : Session["UserId"].ToString();
                    Topics items = new Topics();
                    items.Name = txtloaibaiviet.Text;
                    items.Slug = mystr.ToVietAlias(txtloaibaiviet.Text);
                    items.Parentid = int.Parse(ddlParentid.Text);
                    int orders = int.Parse(ddlParentid.Text);
                    items.Orders = orders + 1;
                    items.Metakey = txtMetakey.Text;
                    items.Metadesc = txtMetadesc.Text;
                    items.Created_at = DateTime.Now;
                    items.Created_by = int.Parse(userid);
                    items.Updated_at = DateTime.Now;
                    items.Updated_by = int.Parse(userid);
                    items.StateId = int.Parse(ddlstatus.Text);
                    db.Topics.Add(items);
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
                ltmessage.Text = "Bạn chưa nhập liệu, Hãy nhập liệu vào đi";
            }
        }
    }
}