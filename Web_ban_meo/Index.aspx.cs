using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_ban_meo.SP;
using WebsiteBanHang.Database;

namespace Web_ban_meo
{
    public partial class Index : System.Web.UI.Page
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
            string strSQL = "SELECT * FROM Test";
            DataTable dt = run.GetData(strSQL); // GetData trả về một DataTable
            GridView1.DataSource = dt;
            GridView1.DataBind();
            
           
        }
    }
}