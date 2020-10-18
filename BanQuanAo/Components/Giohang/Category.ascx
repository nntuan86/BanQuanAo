<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Category.ascx.cs" Inherits="BanQuanAo.Components.Giohang.Category" %>

<%--<asp:Repeater ID="rptthanhtoan" runat="server">
    <ItemTemplate>
        <form action="#" method="post" accept-charset="utf-8">
    <div class="ui dimmer modals page transition visible active" style="display: block !important;">
        <div class="ui modal gbcc_modal gbcc_order_form transition visible active scrolling" style="display: block !important;">
            <div class="header">Đặt Hàng Online</div>
            <div class="content ui form">
                <div class="fields">
                    <div class="gbcc_checkout_box field wide seven" style="margin-left: 2%; padding-left: 2%;">
                        <div class="ui horizontal divider" style="font-size: 15px">Thông Tin Người Nhận</div>
                        <div class="customer-order-detail" style="font-family: Arial, sans-serif; font-weight: normal; font-size: 14px;">
                            <div class="input-group" style="margin-top: 25px;">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input type="text" class="form-control" name="deliveryname" placeholder="Nhập tên người nhận hàng">
                            </div>
                            <div class="input-group" style="margin-top: 5px;">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-phone-alt"></i></span>
                                <input class="form-control" type="text" name="phonedeliveryname" placeholder="Số điện thoại">
                            </div>
                            <div class="input-group" style="margin-top: 5px;">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                <input class="form-control" name="deliveryaddress" placeholder="Địa chỉ giao hàng">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <p class="text-center"><em style="font-weight: 700; font-size: 12px; font-family: Arial, sans-serif;">(Trong 60' Shop sẽ gọi cho bạn để xác nhận đơn hàng 9h - 21h30)</em></p>
            <div class="actions">
                <div class="ui deny button" onclick="window.history.go(-1)" style="width: 100px; height: 40px; font-size: 14px;">
                    Hủy
                </div>
                <input type="submit" class="btn btn-success" name="LUU" value="Đặt Hàng">
            </div>
        </div>
    </div>
</form>


    </ItemTemplate>
</asp:Repeater>--%>
<form action="#" method="post" accept-charset="utf-8">
    <div class="ui dimmer modals page transition visible active" style="display: block !important;">
        <div class="ui modal gbcc_modal gbcc_order_form transition visible active scrolling" style="display: block !important;">
            <div class="header">Đặt Hàng Online</div>
            <div class="content ui form">
                <div class="fields">
                    <div class="gbcc_checkout_box field wide seven" style="margin-left: 2%; padding-left: 2%;">
                        <div class="ui horizontal divider" style="font-size: 15px">Thông Tin Người Nhận</div>
                        <div class="customer-order-detail" style="font-family: Arial, sans-serif; font-weight: normal; font-size: 14px;">
                            <div class="input-group" style="margin-top: 25px;">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input type="text" class="form-control" name="deliveryname" placeholder="Nhập tên người nhận hàng">
                            </div>
                            <div class="input-group" style="margin-top: 5px;">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-phone-alt"></i></span>
                                <input class="form-control" type="text" name="phonedeliveryname" placeholder="Số điện thoại">
                            </div>
                            <div class="input-group" style="margin-top: 5px;">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                <input class="form-control" name="deliveryaddress" placeholder="Địa chỉ giao hàng">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <p class="text-center"><em style="font-weight: 700; font-size: 12px; font-family: Arial, sans-serif;">(Trong 60' Shop sẽ gọi cho bạn để xác nhận đơn hàng 9h - 21h30)</em></p>
            <div class="actions">
                <div class="ui deny button" onclick="window.history.go(-1)" style="width: 100px; height: 40px; font-size: 14px;">
                    Hủy
                </div>
                <input type="submit" class="btn btn-success" name="LUU" value="Đặt Hàng">
            </div>
        </div>
    </div>
</form>

