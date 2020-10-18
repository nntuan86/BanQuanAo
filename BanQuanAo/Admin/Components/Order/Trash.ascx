<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Trash.ascx.cs" Inherits="BanQuanAo.Admin.Components.Order.Trash" %>

<div class="content-wrapper">
    <section class="content-header">
        <h1>THÙNG RÁC ĐƠN HÀNG</h1>
        <div class="breadcrumb" style="margin-bottom:17px;">
            <a class="btn btn-danger btn-sm" href="Default.aspx?option=order" role="button">
               <i class="fa fa-undo"></i>Thoát
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
                                        <th style="width: 50px;" class="text-center">Mã KH</th>
                                        <th style="width: 150px;" class="text-center">Tên Khách Hàng</th>
                                        <th style="width: 120px;" class="text-center">Ngày Đặt Hàng</th>
                                        <th style="width: 300px;" class="text-center">Địa Chỉ</th>
                                        <th style="width: 100px;" class="text-center">Thành phố</th>
                                        <th style="width: 60px;" class="text-center">Chi tiết</th>
                                        <th style="width: 30px;" class="text-center">Trạng thái</th>
                                        <th style="width: 90px;" class="text-center">Khôi phục</th>
                                        <th style="width: 90px;" class="text-center">Xóa vĩnh viễn</th>
                                        
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="rptthungrac" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td class="text-center"><%# Eval("Id") %></td>
                                                <td class="text-center"><%# Eval("Custemerid") %></td>
                                                <td class="text-center"><%# NameCustomer(Eval("Custemerid")) %></td>
                                                <td class="text-center"><%# Eval("Orderdate") %></td>
                                                <td class="text-center"><%# Eval("Address") %></td>
                                                <td class="text-center"><%# Eval("City") %></td>
                                                <td class="text-center">
                                                    <a class="btn btn-danger btn-sm" href="Default.aspx?option=order&cat=detail&id=<%# Eval("Id") %>" role="button">
                                                        <span class="glyphicon glyphicon-th"></span> Chi tiết 
                                                    </a>
                                                </td>
                                                <td class="text-center">
                                                    <a href="Default.aspx?option=order&cat=status&id= <%# Eval("Id") %>">
                                                        <span class="<%# FunStatus(Eval("StateId")) %>"></span>
                                                    </a>
                                                </td>
                                                <td class="text-center">
                                                    <a class="btn btn-info btn-sm" href="Default.aspx?option=order&cat=retrash&id=<%# Eval("Id") %>" role="button">
                                                        <span class="glyphicon glyphicon-edit">Khôi phục</span>
                                                    </a>
                                                </td>
                                                <td class="text-center">
                                                    <a class="btn btn-danger btn-sm" href="Default.aspx?option=order&cat=delete&id=<%# Eval("Id") %>" role="button">
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