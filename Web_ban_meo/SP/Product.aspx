<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Web_ban_meo.SP.Product" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../vendor/bootstrap/css/bootstrap.min.css" type="text/css"/>
    <!-- Font awesome -->
    <link rel="stylesheet" href="../vendor/font-awesome/css/font-awesome.min.css" type="text/css"/>
    <link rel="stylesheet" href ="C:\Users\Admin\source\repos\WebsiteBanHang\WebsiteBanHang\css\app.css" />
    <style type="text/css">
        .auto-style1 {
            height: 32px;
        }
        .auto-style3 {
            width: 12px;
            height: 40px;
        }
        .auto-style6 {
            height: 91px;
        }
        .auto-style7 {
            width: 12px;
            height: 42px;
        }
        .auto-style8 {
            height: 42px;
        }
        </style>
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
        <asp:DataList ID="dlProduct" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" Height="1024px" Width="1180px" DataKeyField="ProID">
            <ItemTemplate>
                <table class="w-100">
                    <tr>
                        <td class="auto-style1" colspan="3" >
                            <asp:Image ID="Image1" runat="server" Height="251px" Width="401px" align="center" ImageUrl='<%# Eval("ProImageURL", "~/image/{0}") %>'/>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3"></td>
                        <td>
                            <h2><b>
                            <asp:Label ID="lblProName" runat="server" align="center" Text='<%# Eval("ProName") %>'></asp:Label></b> </h2>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">Giá:</td>
                        <td class="auto-style8">
                            
                            <asp:Label ID="lblProPrice" runat="server" align="center" Text='<%# Eval("ProPrice") %>'></asp:Label>
                        </td>
                        <td class="auto-style8"></td>
                    </tr>
                    <tr>
                        <td class="auto-style6" colspan="2" align="center">
                            <asp:Button ID="btnMuaNgay" runat="server" Text="Mua ngay" />
                        </td>
                        <td class="auto-style6"></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <asp:Button ID="btnXemchitiet" runat="server" Text="Xem chi tiết" PostBackUrl="~/SPChiTiet/Product_Detail.aspx" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </form>
</body>
</html>