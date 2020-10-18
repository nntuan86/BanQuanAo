using BanQuanAo.Libraries;
using BanQuanAo.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanQuanAo.Admin.Components.Content
{
    public partial class Insert : System.Web.UI.UserControl
    {
        DBBanQuanAo db = new DBBanQuanAo();
        MyString mystr = new MyString();
        Contents items = new Contents();
        protected void Page_Load(object sender, EventArgs e)
        {
            var listtopic = db.Topics.Where(m => m.StateId !=3 && m.Parentid == 0).ToList();
            ddlcatid.DataSource = listtopic.ToList();
            ddlcatid.DataTextField = "Name";
            ddlcatid.DataValueField = "Id";
            ddlcatid.DataBind();
            ddlcatid.Items.Insert(0, new ListItem("--Chọn cấp cha--", "0"));

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
                string stralias = mystr.ToVietAlias(txttenbaiviet.Text);
                string strname = txttenbaiviet.Text;
                int count = db.Contents.Where(m => m.Slug == stralias).Count();
                if (count.Equals(0))
                {
                    string userid = (Session["UserId"].Equals("")) ? "1" : Session["UserId"].ToString();
                    items.Catid = int.Parse(ddlcatid.Text);
                    items.Title = txttenbaiviet.Text;
                    items.Slug = mystr.ToVietAlias(txttenbaiviet.Text);
                    //Images
                    string strPath = Server.MapPath("../Public/Images/Tintuc/");
                    string strNameFile = fulImg.FileName;
                    if (strNameFile.Length.Equals(0))
                    {
                        strNameFile = "contentdefault.jpg";
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
                    items.Detail = CKEDetail.Text.Trim();
                    items.Metakey = txtMetakey.Text;
                    items.Metadesc = txtMetadesc.Text;
                    items.Created_at = DateTime.Now;
                    items.Created_by = 1;
                    items.Updated_at = DateTime.Now;
                    items.Updated_by = 1;
                    items.StateId = int.Parse(ddlstatus.Text);
                    db.Contents.Add(items);
                    db.SaveChanges();
                    Response.Redirect("Default.aspx?option=content");
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