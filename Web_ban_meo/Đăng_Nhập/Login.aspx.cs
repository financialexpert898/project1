using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteBanHang.Database;
namespace Web_ban_meo.Đăng_Nhập
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }


        protected void BtnDangNhap_Click(object sender, EventArgs e)
        {
            // Lấy tên đăng nhập và mật khẩu từ các điều khiển trên giao diện
            string userName = username.Text;
            string passWord = password.Text;

            // Thực hiện đăng nhập bằng phương thức Login
            RunDataSanPham run = new RunDataSanPham();
            DataTable dt = run.Login(userName, passWord);

            // Kiểm tra kết quả trả về
            if (dt.Rows.Count > 0)
            {
                Session["username"] = username.Text.Trim();
                Session["password"] = password.Text.Trim();
                // Đăng nhập thành công, mở giao diện chính
                lblMessage.Text = "Đăng nhập khẩu thành công";
                Response.Redirect("~/Index.aspx");

            }
            else
            {
                // Đănng nhập thậts bại
                lblMessage.Text = "Đăng nhập thất bại";
                Response.Redirect("~/Đăng_Nhập/Login.aspx");

            }
        }
    }
}