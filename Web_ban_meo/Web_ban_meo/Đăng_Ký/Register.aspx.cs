using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteBanHang.Database;
namespace Web_ban_meo.Đăng_Ký
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreateAccount_Click(object sender, EventArgs e)
        {
            
            string username = txtBusername.Text;
            string password = txtBpassword.Text;
            string re_enterpassword = txtBre_enterpassword.Text;
            string  CMND = txtBcmnd.Text;


            if (password == "" || username == "" || CMND == "")
            {
                string message = "Bạn Điền Thiếu Thông Tin ";

                Page.ClientScript.RegisterStartupScript(this.GetType(), "Thông báo", "alert('" + message + "')", true);
            }
            else if (!int.TryParse(CMND, out int AdminID))
            {
                string message = "CMND không hợp lệ";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Thông báo", "alert('" + message + "')", true);
            }
            else
            {

                if (password == re_enterpassword)
                {
                    RunDataSanPham run = new RunDataSanPham();
                    bool check = run.CreateAccount(username, password, AdminID);
                    if (check)
                    {

                        string message = "Tạo Tài Khoản Thành Công Chúc Bạn Chọn Được Một Chú Mèo Như Ý";
                        string redirectUrl = "../Đăng_Nhập/Login.aspx"; // Thay đổi đường dẫn tới trang cần chuyển hướng
                        string script = "alert('" + message + "'); window.location.href = '" + redirectUrl + "';";
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Thông báo", script, true);

                    }

                    else
                    {
                        string message = "Tài Khoản Của bạn đã bị trùng";
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Thông báo", "alert('" + message + "');", true);
                    }

                }
                else
                {
                    string message = "Mật Khẩu Bạn Nhập Không Trùng Nhau ";

                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Thông báo", "alert('" + message + "')", true);
                }
            }
        }

    }
}