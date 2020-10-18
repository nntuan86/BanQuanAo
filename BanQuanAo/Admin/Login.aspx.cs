using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BanQuanAo.Models;
using System.Text;
using System.Security.Cryptography;
using BanQuanAo.Libraries;
namespace BanQuanAo.Admin
{
   
    public partial class Login : System.Web.UI.Page
    {
        DBBanQuanAo db = new DBBanQuanAo();
        MyString mystr = new MyString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btndangnhap_Click(object sender, EventArgs e)
        {
            //Demo
            //int id = int.Parse(Request.QueryString["id"].ToString());
            //end
            string user = txtuser.Text.ToString();
            string pass = mystr.TOSHA1(txtpass.Text);
            int countuser = db.Users.Where(m => m.Username == user).Count();
            if(countuser!=0)
            {
                int countuserpass = db.Users.Where(m => m.Username == user && m.Password == pass).Count();
                if(countuserpass!=0)
                {
                    var item = db.Users.Where(m => m.Username == user && m.Password == pass).First();
                    Session["UserName"] = item.Username;
                    Session["FullName"] = item.Fullname;
                    Session["UserId"] = item.Id;
                   
                    Response.Redirect("Default.aspx");
                         //demo
                    //Response.Redirect("Default.aspx?option=user&id="+id);
                    //end
                    
                }
                else
                {
                    ltthongbao.Text = "Mật khẩu sai";
                    //ltthongbao.Text = pass;
                }
            }
            else
            {
                ltthongbao.Text = "Tài khoản không tồn tại";
            }
        }
    }
}