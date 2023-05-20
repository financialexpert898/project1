using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebsiteBanHang.Database
{
    public class RunDataSanPham
    {
        public DataTable GetData(string strSQL)
        {
            string connStr;
            SqlConnection myConnection;
            SqlDataAdapter myAdapter;

            DataTable dt = new DataTable();

            //mở kết nối
            connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Web_ban_meo\Web_ban_meo\Web_ban_meo\App_Data\Web_ban_meo.mdf;Integrated Security=True";
            myConnection = new SqlConnection(connStr);
            myConnection.Open();

            //lấy dữ liệu 
            myAdapter = new SqlDataAdapter(strSQL, connStr);
            myAdapter.Fill(dt);
            myConnection.Close();

            return dt;
        }
        public void Execute(string strSQL)
        {
            string connStr;
            SqlConnection myConnection;
            SqlCommand command;

            DataTable dt = new DataTable();


            connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Web_ban_meo\Web_ban_meo\Web_ban_meo\App_Data\Web_ban_meo.mdf;Integrated Security=True";
            myConnection = new SqlConnection(connStr);
            myConnection.Open();

            command = new SqlCommand(strSQL, myConnection);
            command.ExecuteNonQuery();
            myConnection.Close();
        }
    }
}