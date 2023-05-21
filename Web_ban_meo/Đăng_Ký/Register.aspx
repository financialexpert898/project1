<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Web_ban_meo.Đăng_Ký.Register" %>

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

</head>
<body>
    <form id="form1" runat="server">
          <main role="main">
        <!-- Block content - Đục lỗ trên giao diện bố cục chung, đặt tên là `content` -->
        <form name="frmdangky" id="frmdangky" method="post" action="#">
            <div class="container mt-4">
                <div class="row justify-content-center">
                    <div class="col-md-6">
                        <div class="card mx-4">
                            <div class="card-body p-4">
                                <h1>Đăng ký</h1>
                                <p class="text-muted">Tạo tài khoản</p>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="fa fa-user"></i>
                                        </span>
                                    </div>
                                  <asp:TextBox ID="txtBusername" runat="server" class="form-control" placeholder="Tên tải khoản"></asp:TextBox>
                                </div>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="fa fa-user"></i>
                                        </span>
                                    </div>
                                    <asp:TextBox ID="txtBpassword" runat="server" class="form-control" type="password"  placeholder="Nhập Mật Khẩu"></asp:TextBox>
                                </div>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="fa fa-user"></i>
                                        </span>
                                    </div>
                                    <asp:TextBox ID="txtBre_enterpassword" runat="server" class="form-control" type="password" placeholder="Nhập Lại Mật Khẩu"></asp:TextBox> 
                                </div>
                              
         
                              
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="fa fa-user"></i>
                                        </span>
                                    </div>
                                    <asp:TextBox ID="txtBcmnd" runat="server" class="form-control" placeholder ="CMND"></asp:TextBox>
                                </div>
                                <asp:Button ID="btnCreateAccount" runat="server" Text="Tạo Tài Khoản" class="btn btn-block btn-success" OnClick="btnCreateAccount_Click" />
                            </div>
                            <div class="card-footer p-4">
                                <div class="row">
                                    <div class="col-12">
                                        <center>Nếu bạn đã có Tài khoản, xin mời Đăng nhập</center>
                                        <a class="btn btn-primary form-control"
                                            href="../Đăng_Nhập/Login.aspx">Đăng nhập</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <!-- End block content -->
    </form>
</body>
</html>
