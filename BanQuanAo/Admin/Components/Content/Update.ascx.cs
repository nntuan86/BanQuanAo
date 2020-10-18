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

namespace BanQuanAo.Admin.Components.Content
{
    public partial class Update : System.Web.UI.UserControl
    {
        DBBanQuanAo db = new DBBanQuanAo();
        MyString mystr = new MyString();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            Contents items = db.Contents.Find(id);
            ddlcatid.Text = items.Catid.ToString();
            txttenbaiviet.Text=items.Title;
            CKEDetail.Text=items.Detail;
            txtMetakey.Text=items.Metakey;
            txtMetadesc.Text = items.Metadesc;

            var listtopic = db.Topics.Where(m => m.StateId != 3);
            ddlcatid.DataSource = listtopic.ToList();
            ddlcatid.DataTextField = "Name";
            ddlcatid.DataValueField = "Id";
            ddlcatid.DataBind();
            if (db.Contents.Find(items.Catid) != null)
            {
                ddlcatid.SelectedItem.Text = db.Contents.Find(items.Catid).Title;
            }

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
                string stralias = mystr.ToVietAlias(txttenbaiviet.Text);
                string strname = txttenbaiviet.Text;
                int count = db.Contents.Where(m => m.Slug == stralias && m.Id != id).Count();
                if (count.Equals(0))
                {

                    string userid = (Session["UserId"].Equals("")) ? "1" : Session["UserId"].ToString();
                    Contents items = db.Contents.Find(id);
                    items.Catid = int.Parse(ddlcatid.Text);
                    items.Title = txttenbaiviet.Text;
                    items.Slug = mystr.ToVietAlias(txttenbaiviet.Text);
                    //Image

                    string strPath = Server.MapPath("../Public/Images/Tintuc/");
                    string strNameFile = fulImg.FileName;

                    if (!strNameFile.Length.Equals(0))
                    {
                        strNameFile = "contentdefault.jpg";
                        string nameing = db.Contents.Where(m => m.Id == id).Select(m => m.Img).First();
                        File.Delete(strPath + nameing);
                        while (File.Exists(strPath + strNameFile))
                        {
                            strNameFile = "nnt" + strNameFile;
                        }
                        items.Img = strNameFile;
                        fulImg.SaveAs(strPath + strNameFile);
                    }

                    items.Detail = CKEDetail.Text.Trim();
                    items.Metakey = txtMetakey.Text;
                    items.Metadesc = txtMetadesc.Text;
                    items.Updated_at = DateTime.Now;
                    items.Updated_by = int.Parse(userid);
                    items.StateId = int.Parse(ddlstatus.Text);
                    db.Entry(items).State = EntityState.Modified;
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
                ltmessage.Text = "Bạn chưa nhập liệu, Hãy thêm dữ liệu vào đi";
            }
        }
    }
}