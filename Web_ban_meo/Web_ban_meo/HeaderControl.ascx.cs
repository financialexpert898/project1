using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_ban_meo
{
    public partial class HeaderControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("~/Đăng_Nhập/Login.aspx");
            }
        }
        protected void btnTimKiem_Click(object sender, EventArgs e)
        {

        }
    }
}