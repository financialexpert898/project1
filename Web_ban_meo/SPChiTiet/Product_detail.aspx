<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product_detail.aspx.cs" Inherits="Web_ban_meo.SPChiTiet.Product_detail" %>

<%@ Register Src="~/HeaderControl.ascx" TagPrefix="uc1" TagName="HeaderControl" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat ="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Nền tảng - Kiến thức cơ bản về WEB | Bảng tin</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../vendor/bootstrap/css/bootstrap.min.css" type="text/css">
    <!-- Font awesome -->
    <link rel="stylesheet" href="../vendor/font-awesome/css/font-awesome.min.css" type="text/css">

    <!-- Custom css - Các file css do chúng ta tự viết -->
    <link rel="stylesheet" href="../assets/css/product-detail.css" type="text/css"/>
</head>
<body>

    <form id="form1" runat="server">
    <!-- header -->
        <uc1:HeaderControl runat="server" ID="HeaderControl" />
    <!-- end header -->

        <!-- Block content - Đục lỗ trên giao diện bố cục chung, đặt tên là `content` -->
        <!-- Danh sách sản phẩm -->
       
       <main role="main">
          <!-- Block content - Đục lỗ trên giao diện bố cục chung, đặt tên là `content` -->
        <div class="container mt-4">
            <div id="thongbao" class="alert alert-danger d-none face" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ProDuct] WHERE ([ProID] = @ProID)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="ProID" QueryStringField="ProID" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
  <asp:DataList ID="DataList1"  DataKeyField="ProID" runat="server" RepeatColumns="1" DataSourceID="SqlDataSource1" OnItemCommand= "DataList1_ItemCommand">
    <ItemTemplate>
             <div class="card">
                <div class="container-fliud">
                    <form name="frmsanphamchitiet" id="frmsanphamchitiet" method="post"
                        action="/php/twig/frontend/giohang/themvaogiohang">
                        <div class="wrapper row">
                            <div class="preview col-md-6">
                                <div class="preview-pic tab-content">
                
         <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ProImageURL", "~/image/{0}") %>' />
         
         </div>
            <ul class="preview-thumbnail nav nav-tabs"></ul>
          </div>

        <div class="details col-md-6">
                                <h3 class="product-title">
            <asp:Label ID="ProductName" runat="server" Text='<%# Eval("ProName") %>' />
        </h3>
                                <div class="rating">
                                    <div class="stars">
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                    </div>
                                    <span class="review-no">999 reviews</span>
                                </div>
            <p>
                <b>Giống Loài:</b> <asp:Label ID="Label2" runat="server" Text='<%# Eval("ProSort") %>'></asp:Label></p>
                 <p>
                     <b>Màu Sắc</b>:
                     <asp:Label ID="Label3" runat="server" Text='<%# Eval("ProColor") %>'></asp:Label>
                 </p>   
             <p class="product-description">
            <ol><b>Mô tả chi tiết:</b>
                <li>
                    Tên khoa học:
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("ProScienceName") %>'></asp:Label>

                </li>
                <li>Tuổi thọ:
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("ProLongevity") %>'></asp:Label>
                </li>
                <li>Nguồn gốc:
                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("ProOrigin") %>'></asp:Label>
                </li>
                <li>Cân nặng:
                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("ProWeight") %>'></asp:Label>
                </li>
            </ol>
                 <p>
                 </p>
                 <h4 class="price">Giá hiện tại: <span>
                     <asp:Label ID="Label4" runat="server" Text='<%# Eval("ProPrice") %>'></asp:Label>
                     VND</span></h4>
                 <h7>
                     Ngày Đăng:
                     <asp:Label ID="Label5" runat="server" Text='<%# Eval("UpdateDate") %>' />
                 </h7>
                 <div>
                     <asp:Button ID="btnaddtoCart" runat="server" Text="Thêm Vào Giỏ Hàng" class="add-to-cart btn btn-default" CommandName="AddToCart" />
                 </div>
                                <p>
                 </p>
                                </p>

                            </div>

                        </div>
                    </form>
                </div>
            </div>         
    
    </ItemTemplate>
</asp:DataList>
    </div>
</main>

    </form>

</body>
</html>