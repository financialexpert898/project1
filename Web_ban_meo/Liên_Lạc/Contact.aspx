<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Web_ban_meo.Liên_Lạc.Contact" %>

<%@ Register Src="~/HeaderControl.ascx" TagPrefix="uc1" TagName="HeaderControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Nền tảng - Kiến thức cơ bản về WEB | Bảng tin</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../vendor/bootstrap/css/bootstrap.min.css" type="text/css">
    <!-- Font awesome -->
    <link rel="stylesheet" href="../vendor/font-awesome/css/font-awesome.min.css" type="text/css">

    <!-- Custom css - Các file css do chúng ta tự viết -->
    <link rel="stylesheet" href="../assets/css/app.css" type="text/css">
</head>
<body>
<form runat ="server">
    <!-- end header -->
    <uc1:HeaderControl runat="server" ID="HeaderControl" />
    <main role="main">
        <!-- Block content - Đục lỗ trên giao diện bố cục chung, đặt tên là `content` -->
        <div class="container mt-2">
            <h1 class="text-center">Liên hệ với Nền tảng</h1>
            <div class="row">
                <div class="col col-md-6">
                    <img src="../assets/img/marketing/marketing-1.png">
                </div>
                <div class="col col-md-6">
                        <div class="form-group">
                            <label for="email">Email của bạn</label>
                            <input type="email" class="form-control" id="email" name="email"
                                placeholder="Email của bạn"/>
                        </div>
                        <div class="form-group">
                            <label for="title">Tiêu đề của bạn</label>
                            <asp:TextBox ID="txttieude" runat="server" class="form-control" placeholder="Tiêu đề của bạn"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="message">Lời nhắn của bạn</label>
                            <textarea name="message" class="form-control"></textarea>
                        </div>
                        <asp:Button ID="btnguitinnhan" runat="server" Text="Gửi" OnClick="btnguitinnhan_Click" />
                </div>
            </div>
            <div class="row mt-2">
                <div class="col col-md-12">
                </div>
            </div>
        </div>
    </main>
    </form>
</body>
</html>
