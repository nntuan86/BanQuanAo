using BanQuanAo.Libraries;
using BanQuanAo.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanQuanAo.Admin.Components.Slider
{
    public partial class Insert : System.Web.UI.UserControl
    {
        DBBanQuanAo db = new DBBanQuanAo();
        MyString mystr = new MyString();
        Slideshow items = new Slideshow();
        protected void Page_Load(object sender, EventArgs e)
        {
            var listorders = db.Slideshows.Where(m => m.StateId != 3)
                .OrderBy(m => m.Id);
            ddlOrders.DataSource = listorders.ToList();
            ddlOrders.DataTextField = "Name";
            ddlOrders.DataValueField = "Orders";
            ddlOrders.DataBind();
            ddlOrders.Items.Insert(0, new ListItem("--Sắp xếp--", "0"));

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
                string stralias = mystr.ToVietAlias(txttenhinh.Text);
                string strname = txttenhinh.Text;
                int count = db.Slideshows.Where(m => m.Slug == stralias).Count();
                if (count.Equals(0))
                {
                    string userid = (Session["UserId"].Equals("")) ? "1" : Session["UserId"].ToString();
                    items.Name = txttenhinh.Text;
                    items.Slug = mystr.ToVietAlias(txttenhinh.Text);
                    //Images
                    string strPath = Server.MapPath("../Public/Images/Slideshow/");
                    string strNameFile = fulImg.FileName;
                    if (strNameFile.Length.Equals(0))
                    {
                        strNameFile = "slideshows.jpg";
                    }
                    else
                    {
                        if (File.Exists(strPath + strNameFile))
                        {
                            strNameFile = "nnt" + strNameFile;
                        }
                        fulImg.SaveAs(strPath + strNameFile);
                    }
                    items.Img = strNameFile;

                    int orders = int.Parse(ddlOrders.Text);
                    items.Orders = orders + 1;

                    items.Created_at = DateTime.Now;
                    items.Created_by = int.Parse(userid);
                    items.Updated_at = DateTime.Now;
                    items.Updated_by = int.Parse(userid);
                    items.StateId = int.Parse(ddlstatus.Text);
                    db.Slideshows.Add(items);
                    db.SaveChanges();
                    Response.Redirect("Default.aspx?option=slider");
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