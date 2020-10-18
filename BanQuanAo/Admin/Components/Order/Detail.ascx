<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Detail.ascx.cs" Inherits="BanQuanAo.Admin.Components.Order.Detail" %>

<form action="Default.aspx?option=content&cat=process" method="post">
    <div class="content-wrapper" style="background: #f4f4f4;">
        <section class="content-header">
            <h1>CHI TIẾT ĐƠN HÀNG</h1>
            <div class="breadcrumb" style="margin-bottom: 17px;">
                <a class="btn btn-danger btn-sm" href="Default.aspx?option=order" role="button">
                    <span class="glyphicon glyphicon-remove"></span>Thoát
                </a>
            </div>
        </section>
        <asp:FormView ID="fvchitiet" runat="server">
            <ItemTemplate>
                <div class="panel-body">
                    <div class="col-md-12">
                        <div class="form-group">
                            <p>Tên khách hàng : <%# FullNameCustomer(Eval("Custemerid")) %></p>
                        </div>
                        <div class="form-group">
                            <p>Địa chỉ khách hàng : <strong><%# Eval("Address") %> , <%# Eval("City") %> , <%# Eval("Country") %></strong></p>
                        </div>
                        <div class="form-group">
                            <p>
                                Ngày đặt hàng :<%# Eval("Orderdate") %>
                            </p>
                        </div>
                        <div class="form-group">
                            <p>
                                Ngày nhận hàng :<%# Eval("Shipperdate") %>
                            </p>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:FormView>

        <asp:Repeater ID="rptchitiet" runat="server">
            <ItemTemplate>
                <div class="panel-body" style="width: 90%; margin: auto; padding: auto;">
                    <div class="row">
                        <div class="col-md-9">
                            <div style="border: 2px solid #D3D3D3; border-radius: 8px; background: #FFFFE0;">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th class="text-center" style="width: 100px;">Hình ảnh</th>
                                            <th>Tên sản phẩm</th>
                                            <th class="text-center" style="width: 90px;">Số lượng</th>
                                            <th class="text-center" style="width: 140px;">Đơn giá</th>
                                            <th class="text-center" style="width: 140px;">Giảm giá</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <%--<td>
                                                <img style="height: 260px;" src="../Public/Images/Sanpham/<%# ImgProduct(Eval("Img")) %>" class="img-responsive" />
                                            </td>--%>
                                            <td><%# NameProduct(Eval("Productid")) %></td>
                                            <td><%# Eval("Total") %></td>
                                            <td><%# Eval("Price_buy") %></td>
                                            <td><%# Eval("Discount") %></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div style="border: 2px solid #D3D3D3; border-radius: 8px; background: #FFFFE0; margin: 50 30px 0px; padding-left: 10%;">
                                <p style="padding-top: 10px;">Thành tiền : <%# Price(Eval("Price_buy","{0:0,0} VNĐ")) %></p>
                                <p style="padding-top: 10px;">Giảm : <%# Saleprice(Eval("Price_buy","{0:0,0} VNĐ")) %></p>
                                <p style="border-bottom: 1px solid #D3D3D3;"></p>
                                <p>Tổng tiền thanh toán : <strong style="font-size: 22px; color: #fe3834;"><%# Sumprice(Eval("Price_buy","{0:0,0} VNĐ")) %></strong></p>
                            </div>
                            <div class="text-right" style="padding-right: 23%; padding-top: 20px;">
                                <a class="btn btn-danger btn-sm" href="Default.aspx?option=order&cat=deltrash&id=<%# Eval("Id") %>" role="button">
                                    <span class="glyphicon glyphicon-trash"></span>Xóa đơn hàng
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</form>

