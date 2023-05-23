using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
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
            connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\buith\OneDrive\Documents\project1\Web_ban_meo\App_Data\Web_ban_meo.mdf;Integrated Security=True";
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


            connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\buith\OneDrive\Documents\project1\Web_ban_meo\App_Data\Web_ban_meo.mdf;Integrated Security=True";
            myConnection = new SqlConnection(connStr);
            myConnection.Open();

            command = new SqlCommand(strSQL, myConnection);
            command.ExecuteNonQuery();
            myConnection.Close();
        }
        public DataTable Login(string username, string password)
        {
            // Tạo kết nối đến cơ sở dữ liệu
            string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\buith\OneDrive\Documents\project1\Web_ban_meo\App_Data\Web_ban_meo.mdf;Integrated Security=True";
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
        public bool CreateAccount(string username, string password, int AdminID)
        {
            // Tạo kết nối đến cơ sở dữ liệu
            string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\buith\OneDrive\Documents\project1\Web_ban_meo\App_Data\Web_ban_meo.mdf;Integrated Security=True";
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                // Tạo câu truy vấn SQL
                string sql = "INSERT INTO AdminUser(UserName, Password, AdminID) VALUES(@username, @password, @AdminID)";
                // Tạo đối tượng SqlCommand
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    // Thêm tham số vào câu truy vấn
                    cmd.Parameters.AddWithValue("@username", username);
                    cmd.Parameters.AddWithValue("@password", password);
                    cmd.Parameters.AddWithValue("@AdminID", AdminID);

                    try
                    {
                        // Mở kết nối
                        conn.Open();
                        // Thực thi câu truy vấn
                        int result = cmd.ExecuteNonQuery();
                        // Kiểm tra số dòng bị ảnh hưởng bởi câu truy vấn
                        if (result > 0)
                        {
                            return true; // tạo tài khoản thành công
                        }
                        else
                        {
                            return false; // tạo tài khoản thất bại
                        }
                    }
                    catch (Exception ex)
                    {
                        // Ghi log lỗi vào file log
                        return false; // tạo tài khoản thất bại
                    }
                }
            }
        }
        public bool CreateCart(string img, string ProName, int price)
        {
            // Tạo kết nối đến cơ sở dữ liệu
            string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\buith\OneDrive\Documents\project1\Web_ban_meo\App_Data\Web_ban_meo.mdf;Integrated Security=True";
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                // Tạo câu truy vấn SQL
                string sql = "INSERT INTO Cart(img,ProName,price) VALUES (@img,@ProName,@price)";
                // Tạo đối tượng SqlCommand
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    // Thêm tham số vào câu truy vấn

                    cmd.Parameters.AddWithValue("@img", img);
                    cmd.Parameters.AddWithValue("@ProName", ProName);
                    cmd.Parameters.AddWithValue("@price", price);
                    try
                    {
                        // Mở kết nối
                        conn.Open();
                        // Thực thi câu truy vấn
                        int result = cmd.ExecuteNonQuery();
                        // Kiểm tra số dòng bị ảnh hưởng bởi câu truy vấn
                        if (result > 0)
                        {
                            return true; // tạo tài khoản thành công
                        }
                        else
                        {
                            return false; // tạo tài khoản thất bại
                        }
                    }
                    catch (Exception ex)
                    {
                        // Ghi log lỗi vào file log
                        return false; // tạo tài khoản thất bại
                    }
                }
            }
        }
        public bool Delete(int STT)
        {
            string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\buith\OneDrive\Documents\project1\Web_ban_meo\App_Data\Web_ban_meo.mdf;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connStr))
            {
                // Mở kết nối
                connection.Open();

                // Tạo câu lệnh SQL
                string sql = "DELETE FROM Cart WHERE STT = @STT";

                // Tạo đối tượng SqlCommand
                using (SqlCommand command = new SqlCommand(sql, connection))
                {
                    // Thêm tham số vào câu lệnh SQL
                    command.Parameters.AddWithValue("@STT", STT);

                    // Thực thi câu lệnh SQL
                    int rowAffected =command.ExecuteNonQuery();
                    if (rowAffected > 0)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
            }

        }
    }
}