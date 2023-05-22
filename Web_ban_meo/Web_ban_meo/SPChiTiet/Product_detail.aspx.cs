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
            RunDataSanPham run = new RunDataSanPham();
            string strSQL = "SELECT * FROM ProDuct";
            DataList1.DataSource = run.GetData(strSQL);
            DataList1.DataBind();
        }

    }
}