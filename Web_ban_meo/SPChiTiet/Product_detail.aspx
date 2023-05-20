<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product_detail.aspx.cs" Inherits="Web_ban_meo.SPChiTiet.Product_detail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../vendor/bootstrap/css/bootstrap.min.css" type="text/css"/>
    <!-- Font awesome -->
    <link rel="stylesheet" href="../vendor/font-awesome/css/font-awesome.min.css" type="text/css"/>
    <link rel="stylesheet" href ="C:\Users\Admin\source\repos\WebsiteBanHang\WebsiteBanHang\css\app.css" />
    </head>
<body>
    <form id="form1" runat="server">
    <!-- header -->
    <nav class="navbar navbar-expand-md navbar-dark sticky-top bg-dark">
        <div class="container">
            <div class="navbar-collapse collapse" id="navbarCollapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="../index1.html">Trang chủ <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="products.html">Sản phẩm</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="contact.html">Liên hệ</a>
                    </li>
                </ul>
                    <input class="form-control mr-sm-2" type="text" placeholder="Tìm kiếm" aria-label="Search"
                        name="keyword_tensanpham"/>
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Tìm kiếm</button>
            </div>
            <ul class="navbar-nav px-3">
                <li class="nav-item text-nowrap">
                    <a class="nav-link" href="cart.html">Giỏ hàng</a>
                </li>
                <li class="nav-item text-nowrap">
                    <!-- Nếu chưa đăng nhập thì hiển thị nút Đăng nhập -->
                    <a class="nav-link" href="login.html">Đăng nhập</a>
                </li>
            </ul>
        </div>
    </nav>
    <!-- end header -->
    <main role="main">
        <!-- Block content - Đục lỗ trên giao diện bố cục chung, đặt tên là `content` -->
        <!-- Danh sách sản phẩm -->
        <section class="jumbotron text-center">
            <div class="container">
                <h1 class="jumbotron-heading">Danh sách Sản phẩm</h1>
                <p class="lead text-muted">Các sản phẩm với chất lượng, uy tín, cam kết từ nhà Sản xuất, phân phối và
                    bảo hành chính hãng.</p>
            </div>
        </section>
  
        <a id="heading" class="heading" data-t="{&quot;n&quot;:&quot;destination&quot;,&quot;t&quot;:13,&quot;b&quot;:1,&quot;c.i&quot;:&quot;AA1bkGqV&quot;,&quot;c.t&quot;:13,&quot;c.v&quot;:&quot;news&quot;,&quot;c.c&quot;:&quot;national&quot;,&quot;c.b&quot;:&quot;VTC&quot;,&quot;ext&quot;:{&quot;width&quot;:300,&quot;height&quot;:304,&quot;slot&quot;:7,&quot;template&quot;:&quot;4c2r-8cards-t1&quot;,&quot;row&quot;:3,&quot;col&quot;:1,&quot;traceIdIndex&quot;:0,&quot;recoId&quot;:&quot;jE7Ts1sNdxQZkqF5LfcMKhyDga&quot;},&quot;c.hl&quot;:&quot;Thay thế kịp thời cán bộ yếu kém, gây nhũng nhiễu trong quản lý đầu tư công&quot;}" href="https://www.msn.com/vi-vn/news/national/thay-thế-kịp-thời-cán-bộ-yếu-kém-gây-nhũng-nhiễu-trong-quản-lý-đầu-tư-công/ar-AA1bkGqV" part="heading" target="_blank"><span aria-level="2" role="heading">
                            <slot></slot>
                        </span></a>
  
        </main>

        <table style="width:100%;">
            <tr>
                <td rowspan="3">
                    <asp:Image ID="Image1" runat="server" Height="327px" Width="390px" />
                </td>
                <td>
                    <asp:Label ID="lblProName" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblProColor" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblProOrigin" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </form>
</body>
</html>