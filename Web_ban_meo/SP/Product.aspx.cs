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

        protected void dlProduct_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "nutxemchitiet")
            {
                Response.Redirect("/SPChiTiet/Product_detail.aspx?ProID=" + e.CommandArgument.ToString());
            }
        }

        protected void dlProduct_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

    }
}