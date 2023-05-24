<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Web_ban_meo.SP.Product" %>

<%@ Register Src="~/HeaderControl.ascx" TagPrefix="uc1" TagName="HeaderControl" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <title>Nền tảng - Kiến thức cơ bản về WEB | Bảng tin</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../vendor/bootstrap/css/bootstrap.min.css" type="text/css"/>
    <!-- Font awesome -->
    <link rel="stylesheet" href="../vendor/font-awesome/css/font-awesome.min.css" type="text/css"/>
    <!-- Custom css - Các file css do chúng ta tự viết -->
    <link rel="stylesheet" href="../assets/css/app.css" type="text/css"/>
    <style>
    .product-item {
            padding-right: 50px; /* tạo khoảng cách 20px giữa các cột */
            padding-bottom: 50px;
        }
    .product-separator {
    height: 450px;
    /* định dạng phần ngăn cách ở đây */
}
    </style>
    </head>
<body>
    <form id="form1" runat="server">
    <!-- header -->
<uc1:HeaderControl runat="server" ID="HeaderControl" />
    <!-- end header -->
     <main role="main">
        <!-- Block content - Đục lỗ trên giao diện bố cục chung, đặt tên là `content` -->
        <!-- Danh sách sản phẩm -->
        <section class="jumbotron text-center">
            <div class="container">
                <h1 class="jumbotron-heading">Danh sách Sản phẩm</h1>
                <p class="lead text-muted">Các sản phẩm với chất lượng, uy tín, cam kết từ nhà Sản xuất, phân phối và
                    bảo hành
                    chính hãng.</p>
            </div>
        </section>
         <div class="danhsachsanpham py-5 bg-light"/>
           <div class="danhsachsanpham py-5 bg-light"/>
            <div class="container">
              <div class="col-md-4">
                   <div class="card mb-4 shadow-sm">
        <asp:DataList ID="dlProduct" runat="server" RepeatColumns="3"  DataKeyField="ProID" OnItemCommand="dlProduct_ItemCommand" RepeatDirection="Horizontal" OnSelectedIndexChanged="dlProduct_SelectedIndexChanged">
           <ItemStyle CssClass="product-item" />
            <ItemTemplate>   
                <div class ="product-separator">
                            <asp:Image ID="Image1" runat="server" Height="268px" Width="346px" align="center" ImageUrl='<%# Eval("ProImageURL", "~/image/{0}") %>' />             
                     <h5><asp:Label ID="Label1" runat="server" Text ='<%# Eval("ProName") %>'></asp:Label> </h5>
                      <small class ="text-muted text-right"><b>Giá: <asp:Label ID="label2" runat ="server" Text ='<%# Eval("ProPrice") %>'></asp:Label> VND</b> </small>
                      <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                       <asp:Button ID="btnxemchitiet" runat="server" Text="Xem chi tiết" CommandArgument='<%# Eval("ProID") %>' CommandName="nutxemchitiet"  class="btn btn-sm btn-outline-secondary" /> 
                                        
                    <div class="card-body">
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>
        </ItemTemplate>
        </asp:DataList>
                 </div>
            </div>
        </div>
       </main>
    </form>
</body>
</html>