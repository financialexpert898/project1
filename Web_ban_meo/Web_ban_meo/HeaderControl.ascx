<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HeaderControl.ascx.cs" Inherits="Web_ban_meo.HeaderControl" %>


   <nav class="navbar navbar-expand-md navbar-dark sticky-top bg-dark">
        <div class="container">

            <div class="navbar-collapse collapse" id="navbarCollapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="Index.aspx">Trang chủ <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="SP/Product.aspx">Sản phẩm</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="pages/contact.html">Liên hệ</a>
  
                    </li>
                </ul>
               
                <form>
                    <asp:TextBox ID="txtSearch" runat="server" class="form-control mr-sm-2"  ></asp:TextBox>
                    <asp:Button ID="btnTimKiem" runat="server" Text="Search" OnClick="btnTimKiem_Click" class="btn btn-outline-success my-2 my-sm-0"/>
                </form>
            </div>
            <ul class="navbar-nav px-3">
                <li class="nav-item text-nowrap">
                    <a class="nav-link" href="pages/cart.html">Giỏ hàng</a>
                <li class="nav-item text-nowrap">
                    <!-- Nếu chưa đăng nhập thì hiển thị nút Đăng nhập -->
                    <a class="nav-link" href="Đăng_Nhập/Login.aspx">Đăng Xuất</a>
                </li>
            </ul>
        </div>
    </nav>
