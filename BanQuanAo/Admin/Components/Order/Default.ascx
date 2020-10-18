<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Default.ascx.cs" Inherits="BanQuanAo.Admin.Components.Order.Default" %>
<div class="content-wrapper">
    <section class="content-header">
        <h1>TẤT CẢ ĐƠN HÀNG</h1>
        <div class="breadcrumb" style="margin-bottom: 17px;">
            <a class="btn btn-danger btn-sm" href="Default.aspx?option=order&cat=trash" role="button">
                <span class="glyphicon glyphicon-trash"></span>Thùng rác
            </a>
        </div>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box">
                    <div class="box-body">
                        <div class="row" style="padding: 0px; margin: 0px;">
                            <table class="table-hover table-bordered" id="mytable">
                                <thead>
                                    <tr>
                                        <th style="width: 20px;" class="text-center">ID</th>
                                        <th style="width: 100px;" class="text-center">Tên Khách Hàng</th>
                                        <th style="width: 100px;" class="text-center">Ngày Đặt Hàng</th>
                                        <th style="width: 100px;" class="text-center">Ngày Giao Hàng</th>
                                        <th style="width: 150px;" class="text-center">Địa Chỉ</th>
                                        <th style="width: 100px;" class="text-center">Số điện thoại</th>
                                        <th style="width: 60px;" class="text-center">Chi tiết</th>
                                        <th style="width: 30px;" class="text-center">Trạng thái</th>
                                        <th style="width: 30px;" class="text-center">Xóa</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="rptdonhang" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td class="text-center"><%# Eval("Id") %></td>
                                                <td class="text-center"><%# (Eval("DeliveryName")) %></td>
                                                <td class="text-center"><%# Eval("CreateDate") %></td
                                                <td class="text-center"><%# Eval("ExportDate") %></td>
                                                <td class="text-center"><%# Eval("DeliveryAddress") %></td>
                                                <td class="text-center"><%# Eval("DeliveryPhone") %></td>
                                                <td class="text-center">
                                                    <a class="btn btn-info btn-sm" href="Default.aspx?option=order&cat=detail&id=<%# Eval("Id") %>" role="button">
                                                        <span class="glyphicon glyphicon-th"></span> Chi tiết 
                                                    </a>
                                                </td>
                                                <td class="text-center">
                                                    <a href="Default.aspx?option=order&cat=status&id= <%# Eval("Id") %>">
                                                        <span class="<%# FunStatus(Eval("StateId")) %>"></span>
                                                    </a>
                                                </td>
                                                <td class="text-center">
                                                    <a class="btn btn-danger btn-sm" href="Default.aspx?option=order&cat=deltrash&id=<%# Eval("Id") %>" role="button">
                                                        <span class="glyphicon glyphicon-trash">Xóa</span>
                                                    </a>
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<script> $(document).ready(function () { $('#mytable').DataTable(); });</script>
