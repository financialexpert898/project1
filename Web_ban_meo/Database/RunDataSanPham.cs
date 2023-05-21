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
        public DataTable Login(string username, string password)
        {
            // Tạo kết nối đến cơ sở dữ liệu
           string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Web_ban_meo\Web_ban_meo\Web_ban_meo\App_Data\Web_ban_meo.mdf;Integrated Security=True";
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                // Tạo câu truy vấn SQL
                string sql = "SELECT * FROM AdminUser WHERE UserName = @username AND Password = @password";
                // Tạo đối tượng SqlCommand
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    // Thêm tham số vào câu truy vấn
                    cmd.Parameters.AddWithValue("@username", username);
                    cmd.Parameters.AddWithValue("@password", password);
                    // Thực thi câu truy vấn và trả về DataTable chứa kết quả
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        return dt;
                    }
                }
            }
        }
    }
}