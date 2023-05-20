<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Web_ban_meo.Index" %>
<!DOCTYPE html>

</script>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css" type="text/css">
	<link rel="stylesheet" href="assets/style.css" type="text/css">
    <!-- Font awesome -->


    <!-- Custom css - Các file css do chúng ta tự viết -->

</head>

<body>
      <form runat="server">
    <!-- header -->
        <!-- header -->
    <nav class="navbar navbar-expand-md navbar-dark sticky-top bg-dark">
        <div class="container">

            <div class="navbar-collapse collapse" id="navbarCollapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.html">Trang chủ <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="pages/products.html">Sản phẩm</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="pages/contact.html">Liên hệ</a>
                    </li>
                </ul>
                 
                        
                    <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Text="Tìm Kiếm"/> 
                        <asp:Label ID="lblMessage" runat="server" Text="111"></asp:Label>
                    
                
            
            </div>
            <ul class="navbar-nav px-3">
                <li class="nav-item text-nowrap">
                    <a class="nav-link" href="pages/cart.html">Giỏ hàng</a>
                </li>
                <li class="nav-item text-nowrap">
                    <!-- Nếu chưa đăng nhập thì hiển thị nút Đăng nhập -->
                    <a class="nav-link" href="pages/login.html">Đăng nhập</a>
                </li>
            </ul>
        </div>
    </nav>
        <div id="banner">
            <div class="box-left">
                <h2>
                    <span>NHỮNG CHÚ MÈO</span>
                    <br>
                    <span>ĐÁNG YÊU</span>
                </h2>
                <p>Chuyên cung cấp những bé mèo
                    đáng yêu và mạnh khỏe đến những người
                    có sở thích nuôi thú cưng
                </p>
                <button>Mua ngay</button>
            </div>
            <div class="box-right">
                <img src="assets/c1.png" alt="">
                <img src="assets/c2.png" alt="">
                <img src="assets/c3.png" alt="">
            </div>
            <div class="to-bottom">
                <a href="">
                    <img src="assets/to_bottom.png" alt="">
                </a>
            </div>
        </div>
        <div id="wp-products">
            <h2>SẢN PHẨM CỦA CHÚNG TÔI</h2>

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"> 
    <Columns> 
        <asp:TemplateField> 
            <ItemTemplate> 
                <div class="item"> 
                    <asp:Image ID="product" ImageUrl='<%# Eval("ImageUrl", "~/assets/{0}") %>' runat="server" /> 
                    <div class="stars">
                   
                       
                        <% int total_star = 5;
                            for (int i = 0; i < total_star; i++)
                            { %>
                          <span><img src="assets/star.png" alt=""></span>
                      <% } %>
                    </div>
                    <div class="name"> 
                        <%# Eval("Name") %> 
                    </div> 
                    <div class="desc"> 
                        <%# Eval("Description") %> 
                    </div> 
                    <div class="price"> 
                        <%# Eval("Price") %> 
                    </div> 
                </div> 
            </ItemTemplate> 
        </asp:TemplateField> 
    </Columns> 
</asp:GridView> 
</form>


                <div class="item">
                    <img src="assets/product_3.png" alt="">
                    <div class="stars">
                        <span>
                            <img src="assets/star.png" alt="">
                        </span>
                        <span>
                            <img src="assets/star.png" alt="">
                        </span>
                        <span>
                            <img src="assets/star.png" alt="">
                        </span>
                        <span>
                            <img src="assets/star.png" alt="">
                        </span>
                        <span>
                            <img src="assets/star.png" alt="">
                        </span>
                    </div>

                    <div class="name">Mèo tam thể</div>
                    <div class="desc">Bộ lông với ba màu sắc khác<br>
                    nhau. Trông chúng thật lung linh phải không</div>
                    <div class="price">500.000 VNĐ</div>
                </div>
                <div class="item">
                    <img src="assets/product_4.png" alt="">
                    <div class="stars">
                        <span>
                            <img src="assets/star.png" alt="">
                        </span>
                        <span>
                            <img src="assets/star.png" alt="">
                        </span>
                        <span>
                            <img src="assets/star.png" alt="">
                        </span>
                        <span>
                            <img src="assets/star.png" alt="">
                        </span>
                        <span>
                            <img src="assets/star.png" alt="">
                        </span>
                    </div>

                    <div class="name">Mèo ba tư</div>
                    <div class="desc">Bộ lông xù trắng tinh trông chúng thật đẹp phải không?</div>
                    <div class="price">2.000.000 VNĐ</div>
                </div>

                <div class="item">
                    <img src="assets/product_5.png" alt="">
                    <div class="stars">
                        <span>
                            <img src="assets/star.png" alt="">
                        </span>
                        <span>
                            <img src="assets/star.png" alt="">
                        </span>
                        <span>
                            <img src="assets/star.png" alt="">
                        </span>
                        <span>
                            <img src="assets/star.png" alt="">
                        </span>
                        <span>
                            <img src="assets/star.png" alt="">
                        </span>
                    </div>

                    <div class="name">Mèo xiêm</div>
                    <div class="desc">Với đôi mắt trông như những viên pha lê trong các bộ phim điện ảnh</div>
                    <div class="price">1.000.000 VNĐ</div>
                </div>

                <div class="item">
                    <img src="assets/product_6.png" alt="">
                    <div class="stars">
                        <span>
                            <img src="assets/star.png" alt="">
                        </span>
                        <span>
                            <img src="assets/star.png" alt="">
                        </span>
                        <span>
                            <img src="assets/star.png" alt="">
                        </span>
                        <span>
                            <img src="assets/star.png" alt="">
                        </span>
                        <span>
                            <img src="assets/star.png" alt="">
                        </span>
                    </div>

                    <div class="name">Mèo chân ngắn</div>
                    <div class="desc">Sự cute của chúng có khiến bạn yêu thích?</div>
                    <div class="price">900.000 VNĐ</div>
                </div>
            </ul>
            <div class="list-page">
                <div class="item">
                    <a href="">1</a>
                </div>
                <div class="item">
                    <a href="">2</a>
                </div>
                <div class="item">
                    <a href="">3</a>
                </div>
                <div class="item">
                    <a href="">4</a>
                </div>
            </div>
        </div>

        <div id="saleoff">
            <div class="box-left">
                <h1>
                    <span>GIẢM GIÁ LÊN ĐẾN</span>
                    <span>25%</span>
                </h1>
            </div>
            <div class="box-right"></div>
        </div>

        <div id="comment">
            <h2>NHẬN XÉT CỦA KHÁCH HÀNG</h2>
            <div id="comment-body">
                <div class="prev">
                    <a href="#">
                        <img src="assets/prev.png" alt="">
                    </a>
                </div>
             
                <ul id="list-comment">
                    <li class="item">
                        <div class="avatar">
                            <img src="assets/avatar_1.png" alt="">

                        </div>
                        <div class="stars">
                            <span>
                                <img src="assets/star.png" alt="">
                            </span>
                            <span>
                                <img src="assets/star.png" alt="">
                            </span>
                            <span>
                                <img src="assets/star.png" alt="">
                            </span>
                            <span>
                                <img src="assets/star.png" alt="">
                            </span>
                            <span>
                                <img src="assets/star.png" alt="">
                            </span>
                        </div>
                        <div class="name">Trương Khánh Minh</div>

                        <div class="text">
                            <p>Người bán có tâm, có tầm, mèo nhận về giống hình mẫu, khỏe mạnh và phát triển tốt</p>
                        </div>
                    
                    <li class="item">
                        <div class="avatar">
                            <img src="assets/avatar_1.png" alt="">

                        </div>
                        <div class="stars">
                            <span>
                                <img src="assets/star.png" alt="">
                            </span>
                            <span>
                                <img src="assets/star.png" alt="">
                            </span>
                            <span>
                                <img src="assets/star.png" alt="">
                            </span>
                            <span>
                                <img src="assets/star.png" alt="">
                            </span>
                            <span>
                                <img src="assets/star.png" alt="">
                            </span>
                        </div>
                        <div class="name">Trần Ngọc Sơn</div>

                        <div class="text">
                            <p>Thật tuyệt khi đã chọn mua đúng nơi. Dịch vụ tốt, tư vấn tận tâm.</p>
                        </div>
                    </li>
                    <li class="item">
                        <div class="avatar">
                            <img src="assets/avatar_1.png" alt="">

                        </div>
                        <div class="stars">
                            <span>
                                <img src="assets/star.png" alt="">
                            </span>
                            <span>
                                <img src="assets/star.png" alt="">
                            </span>
                            <span>
                                <img src="assets/star.png" alt="">
                            </span>
                            <span>
                                <img src="assets/star.png" alt="">
                            </span>
                            <span>
                                <img src="assets/star.png" alt="">
                            </span>
                        </div>
                        <div class="name">Nguyễn Trần Vi</div>

                        <div class="text">
                            <p>Mèo trông thật đáng yêu, giá cả hợp lí.Điểm 10 cho chất lượng</p>
                        </div>
                    </li>
                </ul>
                <div class="next">
                    <a href="#">
                        <img src="assets/next.png" alt="">
                    </a>
                </div>
            </div>
        </div>

        <div id="footer">
            <div class="box">
                <div class="logo">
                    <img src="assets/logo.png" alt="">
                </div>
                <p>Cung cấp sản phẩm với chất lượng an toàn cho quý khách</p>
            </div>
            <div class="box">
                <h3>NỘI DUNG</h3>
                <ul class="quick-menu"><li>
                    <div class="item">
                        <a href="">Trang chủ</a>
                    </div>
                    <div class="item">
                        <a href="">Sản phẩm</a>
                    </div>
                    <div class="item">
                        <a href="">Blog</a>
                    </div>
                    <div class="item">
                        <a href="">Liên hệ</a>
                    </div></li>
                </ul>
            </div>
            <div class="box">
                <h3>LIÊN HỆ</h3>
                <form action="">
                    <input type="text" placeholder="Địa chỉ email">
                    <button>Nhận tin</button>
                </form>
            </div>
        </div>
    </div>
    <script src="script.js"></script>
</body>

</html>