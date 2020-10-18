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

namespace BanQuanAo.Admin.Components.Product
{
    public partial class Update : System.Web.UI.UserControl
    {
        DBBanQuanAo db = new DBBanQuanAo();
        MyString mystr = new MyString();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            Products items = db.Products.Find(id);
            
            //fulImg.FileName=items.Img.ToString();
            ddlcatid.Text = items.Catid.ToString();
            txtsp.Text=items.Name;
            CKEDetail.Text=items.Detail;
            txtMetakey.Text=items.Metakey;
            txtMetadesc.Text = items.Metadesc;
            txtsoluong.Text = items.Number.ToString();
            txtgiaban.Text = items.Price_buy.ToString();
            txtgiakhuyenmai.Text = items.Price_sale.ToString();

            var listcategory = db.Categorys.Where(m => m.StateId !=3 && m.Parentid != 0).ToList();
            ddlcatid.DataSource = listcategory.ToList();
            ddlcatid.DataTextField = "Name";
            ddlcatid.DataValueField = "Id";
            ddlcatid.DataBind();
            if (db.Products.Find(items.Catid) != null)
            {
                ddlcatid.SelectedItem.Text = db.Products.Find(items.Catid).Name;
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
                string stralias = mystr.ToVietAlias(txtsp.Text);
                string strname = txtsp.Text;
                int count = db.Products.Where(m => m.Slug == stralias && m.Id != id).Count();
                if (count.Equals(0))
                {

                    string userid = (Session["UserId"].Equals("")) ? "1" : Session["UserId"].ToString();
                    Products items = db.Products.Find(id);
                    items.Catid = int.Parse(ddlcatid.Text);
                    items.Name = txtsp.Text;
                    items.Slug = mystr.ToVietAlias(txtsp.Text);
                    
                    
                    //Image

                    string strPath = Server.MapPath("../Public/Images/Sanpham/");
                    string strNameFile = fulImg.FileName;
                    
                    if (!strNameFile.Length.Equals(0))
                    {
                        strNameFile = "productdefault.jpg";
                        string nameing = db.Products.Where(m=>m.Id==id).Select(m=>m.Img).First();
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
                    items.Number = int.Parse(txtsoluong.Text);
                    items.Price_buy = int.Parse(txtgiaban.Text);
                    items.Price_sale = int.Parse(txtgiakhuyenmai.Text);
                    items.Updated_at = DateTime.Now;
                    items.Updated_by = int.Parse(userid);
                    items.StateId = int.Parse(ddlstatus.Text);
                    db.Entry(items).State = EntityState.Modified;
                    db.SaveChanges();
                    Response.Redirect("Default.aspx?option=product");
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