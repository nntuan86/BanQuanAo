<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Default.ascx.cs" Inherits="BanQuanAo.Components.Giohang.Default" %>
<%--<table class="table table-hover">
    <thead>
        <tr>
            <th>Hình ảnh</th>
            <th>Tên sản phẩm</th>
            <th>Số lượng</th>
            <th>Giá sản phẩm</th>
            <th>Thành Tiền</th>
        </tr>
    </thead>
    <tbody>
        <asp:FormView ID="fvDetails" runat="server">
            <ItemTemplate>
                <tr>
                    <td>
                        <img style="height: 75px; width: 75px;" src="~/Images/san/9.Img" alt="Alternate Text" /></td>
                    <td>
                        <input name="" type="number" value="@cart[item.Id]" min="0" max="10" /></td>
                    <td><%# Eval("Price_buy","{0:0,00} VNĐ")  %></td>
                    <td><a href="~/gio-hang" class="RemoveLink" data-id="@item.Id">Xóa</a></td>
                </tr>
            </ItemTemplate>
        </asp:FormView>
    </tbody>

</table>

<script type="text/javascript">
    $(function () {
        $('.RemoveLink').click(function () {
            var x = $(this).attr("data-id");
            if (confirm("Đối tượng sẽ bị xóa.Bạn có muốn không ?")) {
                $.ajax({
                    type: "POST",
                    url: '@Url.Action("RemoveCart", "Product")',
                    data: { id: x }
                });
                $("#row-" + x).remove();
            }
        })
    })
</script>--%>

<%--<style>
    .alert-wrap .alert {
        margin-top: 10px;
        margin-bottom: 5px;
    }

    .alert-wrap .alert-info {
        background-color: #fff;
        border: 2px solid #f68d45;
        color: #f68d45;
    }
</style>--%>
<div class="well well-sm">
    <h3><strong>Giỏ hàng</strong></h3>
</div>
<form name="formcn" action="Default.aspx?option=giohang&car=updatecart&id=edit" method="post" accept-charset="utf-8">
    <div class="col-md-9">
        <div class="form-group" style="border: 1px dashed #459ff6; border-radius: 8px; background: white;">
            <table class="table" style="margin: auto">
                <thead>
                    <tr>
                        <th class="text-center" style="width: 100px;">Hình ảnh</th>
                        <th>Tên sản phẩm</th>
                        <th class="text-center" style="width: 90px;">Số lượng</th>
                        <th class="text-center" style="width: 90px;">Giá thành</th>
                        <th class="text-center" style="width: 90px;">Thành tiền</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="rtgiohang" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <img src="Public/Images/Sanpham/<%# Eval("Img") %>" class="img-responsive" style="width: 100px"></td>
                                <td><%# Eval("TenSP") %>
                                    <p>
                                        <a href="Default.aspx?option=giohang&cat=dellcart&id=<%# Eval("Masp") %>">
                                            <span class="glyphicon glyphicon-trash"></span>
                                           
                                            <a  href="Default.aspx?option=giohang&cat=dellcart&masp=<%# Eval("Masp") %>" style="padding-right: 10px;">Xóa</a>
                                        </a>
                                        <a href="Default.aspx?option=sanpham"><span>Tiếp tục mua sắm</span></a>
                                    </p>
                                </td>
                                <td><%# Eval("SoLuong") %></td>
                                <td><%# Eval("GiaSP") %></td>
                                <td><%# Eval("Tien") %></td>
                                <td class="text-center"></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                    <tr>
                        <td class="text-right" colspan="6">
                            <a href="Default.aspx?option=giohang&car=dellcart&id=all" class="btn btn-delete">Xóa tất cả</a>
                            <button type="submit" name="CAPNHAT" class="btn btn-info">Cập nhật</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="col-md-3">
        <div class="form-group" style="border: 1px dashed #459ff6; border-radius: 8px; background: white;">
            <table class="table" style="margin: auto;">
                <thead>
                    <tr>
                        <th>
                            <strong>Tổng tiền (chưa bao gồm thuế VAT)</strong>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="text-center">
                            <asp:Literal ID="lttongtien" runat="server"></asp:Literal>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <p style="padding-left: 12.5%; padding-bottom: 5%;">
            <a href="Default.aspx?option=giohang&cat=thanhtoan" class="btn btn-thanhtoan">Tiến hành thanh toán</a>
        </p>
    </div>
    <asp:Repeater ID="rpchitetgohang" runat="server">
        <ItemTemplate>
            <div class="form-group" style="border: 1px solid white; border-radius: 8px; background: white; margin: 0;">
                <img src="public/images/cart-empty.png" alt="Không có sản phẩm nào trong giỏ hàng của bạn." style="margin-left: 43%; margin-right: 57%; display: block;">
                <div class="empty-cart text-center">
                    <p class="message" style="margin: 0 0 10px;">Không có sản phẩm nào trong giỏ hàng của bạn.</p>
                    <a href="Default.aspx?option=sanpham" class="btn btn-yellow">Tiếp tục mua sắm</a>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</form>
