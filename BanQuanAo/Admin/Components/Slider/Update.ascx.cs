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

namespace BanQuanAo.Admin.Components.Slider
{
    public partial class Update : System.Web.UI.UserControl
    {
        DBBanQuanAo db = new DBBanQuanAo();
        MyString mystr = new MyString();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            Slideshow items = db.Slideshows.Find(id);

            //fulImg.FileName = items.Img.ToString();
            txttenhinh.Text = items.Name.ToString();
            txtlink.Text = items.Slug.ToString();
            var listorders = db.Slideshows.Where(m => m.StateId != 3)
                .OrderBy(m => m.Id);
            ddlOrders.DataSource = listorders.ToList();
            ddlOrders.DataTextField = "Name";
            ddlOrders.DataValueField = "Orders";
            ddlOrders.DataBind();
            {
                ddlOrders.SelectedItem.Text = db.Slideshows.Find(items.Orders).Name;
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
                string stralias = mystr.ToVietAlias(txttenhinh.Text);
                string strname = txttenhinh.Text;
                int count = db.Slideshows.Where(m => m.Slug == stralias && m.Id != id).Count();
                if (count.Equals(0))
                {

                    string userid = (Session["UserId"].Equals("")) ? "1" : Session["UserId"].ToString();
                    Slideshow items = db.Slideshows.Find(id);
                    items.Name = txttenhinh.Text;
                    items.Slug = mystr.ToVietAlias(txttenhinh.Text);
                    //Image

                    string strPath = Server.MapPath("../Public/Images/Slideshow/");
                    string strNameFile = fulImg.FileName;

                    if (!strNameFile.Length.Equals(0))
                    {
                        strNameFile = "productdefault.jpg";
                        string nameing = db.Slideshows.Where(m => m.Id == id).Select(m => m.Img).First();
                        File.Delete(strPath + nameing);
                        while (File.Exists(strPath + strNameFile))
                        {
                            strNameFile = "nnt" + strNameFile;
                        }
                        items.Img = strNameFile;
                        fulImg.SaveAs(strPath + strNameFile);
                    }



                    items.Updated_at = DateTime.Now;
                    items.Updated_by = int.Parse(userid);
                    items.StateId = int.Parse(ddlstatus.Text);
                    db.Entry(items).State = EntityState.Modified;
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
                ltmessage.Text = "Bạn chưa nhập liệu, Hãy thêm dữ liệu vào đi";
            }
        }
    }
}