﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Web_ban_meo.Đăng_Nhập.Login" %>




<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../vendor/bootstrap/css/bootstrap.min.css" type="text/css">
    <!-- Font awesome -->
    <link rel="stylesheet" href="../vendor/font-awesome/css/font-awesome.min.css" type="text/css">

    <!-- Custom css - Các file css do chúng ta tự viết -->
    <link rel="stylesheet" href="../assets/css/app.css" type="text/css">
</head>
<body>
    <form id="form1" runat="server">
        <!-- header -->
        
    <main role="main">
        <!-- Block content - Đục lỗ trên giao diện bố cục chung, đặt tên là `content` -->
        <form name="frmdangnhap" id="frmdangnhap" method="post" action="#">
            <div class="container mt-4">
                <div class="row justify-content-center">
                    <div class="col-md-8">
                        <div class="card-group">
                            <div class="card p-4">
                                <div class="card-body">
                                    <h1>Đăng nhập</h1>
                                    <p class="text-muted">Nhập thông tin Tài khoản</p>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <i class="icon-user"></i>
                                            </span>
                                        </div>
                                      <asp:TextBox ID="username" runat="server" cssclass="form-control" placeholder ="username"></asp:TextBox >
                                    </div>
                                    <div class="input-group mb-4">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <i class="icon-lock"></i>
                                            </span>
                                        </div>
                                        <asp:TextBox ID="password" runat="server"  cssclass ="form-control" type ="password" placeholder =" password"></asp:TextBox>
                                    </div>
                                    <div class="row">
                                        <div class="col-6">
                                            <asp:Button ID="BtnDangNhap" runat="server" Text="Đăng Nhập" class="btn btn-primary px-4" OnClick="BtnDangNhap_Click"/>
                                        </div>
                                        <div class="col-6 text-right">
                                            <asp:Button ID="btnforgot" runat="server" Text="Quên Mật Khẩu" class="btn btn-link px-0" />   
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card text-white bg-primary py-5 d-md-down-none" style="width:44%">
                                <div class="card-body text-center">
                                    <div>
                                        <h2>Đăng ký</h2>
                                        <p>Đăng ký để làm thành viên của Trang web bán hàng. Bạn sẽ được một số quyền
                                            lợi nhất
                                            định khi làm thành viên của Chúng tôi.</p>
                                        <a class="btn btn-primary active mt-3" href="../Đăng_Ký/register.aspx">Đăng ký ngay!</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <!-- End block content -->
    </main>
    <!-- end footer -->
    </form>
</body>
</html>
