using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteBanHang.Database;

namespace Web_ban_meo.Giỏ_Hàng
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCart();
            }
            
        }
        protected void LoadCart()
        {
            RunDataSanPham run = new RunDataSanPham();
            string strSQL = "SELECT * FROM Cart"; ;
            gvCart.DataSource = run.GetData(strSQL);
            gvCart.DataBind();

        }

        protected void gvCart_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int rowIndex = e.RowIndex;
            int STT = Convert.ToInt32(gvCart.DataKeys[rowIndex].Value); // Lấy giá trị khóa chính
            RunDataSanPham run = new RunDataSanPham();
            run.Delete(STT); // Xóa hàng trong cơ sở dữ liệu
            gvCart.DataBind(); // Cập nhật lại GridView
            Response.Redirect("~/Giỏ Hàng/Cart.aspx");
        }

    }
}