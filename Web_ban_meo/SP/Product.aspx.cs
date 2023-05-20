using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteBanHang.Database;

namespace Web_ban_meo.SP
{
    public partial class Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadProduct();
            }
        }
        private void LoadProduct()
        {
            RunDataSanPham run = new RunDataSanPham();
            string strSQL = "SELECT * FROM ProDuct";
            dlProduct.DataSource = run.GetData(strSQL);
            dlProduct.DataBind();
        }

        protected void btnXemchitiet_Click(object sender, EventArgs e)
        {

        }
    }
}