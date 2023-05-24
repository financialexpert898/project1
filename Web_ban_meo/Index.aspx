<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Web_ban_meo.Index" %>

<%@ Register Src="~/HeaderControl.ascx" TagPrefix="uc1" TagName="HeaderControl" %>



<!DOCTYPE html>

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
          <uc1:HeaderControl runat="server" id="HeaderControl" />

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
  <ul id="list-products">
<asp:DataList ID="DataList1" runat="server" RepeatColumns="3" CellPadding="10"  ItemStyle-CssClass="item ">    
            <ItemTemplate> 
                
                <div class="product-container">
                 <div class ="product-separator">
                <asp:Image ID="product" ImageUrl='<%# Eval("ImageUrl", "~/assets/{0}") %>' runat="server" /> 
                 
                <div class="stars">   
                    <% int total_star = 5;   
                       for (int i = 0; i < total_star; i++)   
                       { %>   
                      <span>   
                      <img src="assets/star.png" alt="">   
                      </span>   
                   <% } %></div>   
                <div class="name">    
                    <%# Eval("Name") %>    
                </div>    
                <div class="desc">    
                    <%# Eval("Description") %>    
                </div>    
                <div class="price">    
                    <%# Eval("Price") %>    VND
                </div>
                <div class ="buy-now" alagin ="center">
                    <asp:Button ID="MuaNgay" runat="server" Text="Mua" />
                </div>
            </div>
            </div>
                   
        </ItemTemplate>    
    </asp:DataList>
  </ul>
</div>
 </ul>
</form>
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
                        <div class="name">Bùi Thế Cường</div>

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
                <p>Cung cấp sản phẩm với chất lượng an toàn cho quý khách            </div>
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