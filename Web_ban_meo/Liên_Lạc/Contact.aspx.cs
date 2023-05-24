using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_ban_meo.Liên_Lạc
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) {
        
        }

        protected void btnguitinnhan_Click(object sender, EventArgs e)
        {
            string tieude =txttieude.Text.ToString();
            if (tieude != "")
            {
                string message = "Bạn Đã Gửi Thành Công ";

                Page.ClientScript.RegisterStartupScript(this.GetType(), "Thông báo", "alert('" + message + "')", true);
            }
        }
    }
}