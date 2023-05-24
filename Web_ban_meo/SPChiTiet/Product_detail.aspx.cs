using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_ban_meo.SP;
using WebsiteBanHang.Database;


namespace Web_ban_meo.SPChiTiet
{
    public partial class Product_detail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "AddToCart")
            {
                // Lấy ra control Image1 trong ItemTemplate 
                
                Image img = (Image)e.Item.FindControl("Image1");
                // Lấy đường dẫn URL của control Image1 
                string img1 = img.ImageUrl;
                string originalString = img1;
                int index = originalString.IndexOf('/', originalString.IndexOf('/') + 1);
                string newString = originalString.Substring(index + 1);
                // Sử dụng biến img1 theo ý muốn 
                // Ví dụ: gán vào một control khác hoặc xử lý dữ liệu
                Label lbl = (Label)e.Item.FindControl("ProductName");
                string proname = lbl.Text;
                Label lbl1 = (Label)e.Item.FindControl("Label4");
                string lbl4 = lbl1.Text;
                int price = int.Parse(lbl4);
               
                RunDataSanPham run = new RunDataSanPham();
                bool check=run.CreateCart(newString, proname, price);
                if (check)
                {
                    string message = "Thêm Sản phẩm vào giỏ hàng thành công ";

                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Thông báo", "alert('" + message + "')", true);
                }
            }
            if(e.CommandName == "Delete")
            {

            }
           
        }

    }
}