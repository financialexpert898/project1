<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Web_ban_meo.Giỏ_Hàng.Cart" %>

<%@ Register Src="~/HeaderControl.ascx" TagPrefix="uc1" TagName="HeaderControl" %>


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
        <uc1:HeaderControl runat="server" ID="HeaderControl" />
                    <!-- Nếu chưa đăng nhập thì hiển thị nút Đăng nhập -->
                 
    <!-- end header -->

    <main role="main">
        <!-- Block content - Đục lỗ trên giao diện bố cục chung, đặt tên là `content` -->
        <div class="container mt-4">
            <div id="thongbao" class="alert alert-danger d-none face" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>

            <h1 class="text-center">Giỏ hàng</h1> 
<div class="row"> 
    <div class="col col-md-12">
        <div style="position:relative;">
        <asp:GridView ID="gvCart" runat="server" AutoGenerateColumns="False" OnRowDeleting="gvCart_RowDeleting" DataKeyNames="STT"> 
            <Columns> 
                <asp:BoundField DataField="STT" HeaderText="STT" /> 
                <asp:TemplateField HeaderText="Ảnh đại diện"> 
                    <ItemTemplate> 
                        <asp:Image ID="imgAvatar" runat="server" ImageUrl='<%# Eval("img", "~/image/{0}") %>' CssClass="hinhdaidien" /> 
                    </ItemTemplate> 
                </asp:TemplateField> 
                <asp:BoundField DataField="proName" HeaderText="Tên sản phẩm" /> 
  
                <asp:BoundField DataField="price" HeaderText="Đơn giá" DataFormatString="{0:#,##0.00}" HtmlEncode="false" ItemStyle-HorizontalAlign="Right" /> 
               
                <asp:TemplateField HeaderText="Bỏ Khỏi Giỏ"> 
                    <ItemTemplate> 
                        <asp:Button ID="btnDelete" runat="server" Text="Xóa" CssClass="btn btn-danger btn-delete-sanpham" CommandName="Delete" CommandArgument='<%# Eval("STT") %>'  /> 
                    </ItemTemplate> 
                </asp:TemplateField> 
            </Columns> 
        </asp:GridView> 
              <div style="position:absolute; bottom:-10; left:50%; transform:translateX(-100%);">
        <a class="btn btn-primary btn-md"><i class="fa fa-shopping-cart" aria-hidden="true"></i> Thanh toán</a> 
    </div>
</div>
    </div> 
</div>
          
        <!-- End block content -->
    </main>
    </form>
</body>
</html>
