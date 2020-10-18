<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Trash.ascx.cs" Inherits="BanQuanAo.Admin.Components.Product.Trash" %>

<div class="content-wrapper">
    <section class="content-header">
        <h1>THÙNG RÁC SẢN PHẨM</h1>
        <div class="breadcrumb" style="margin-bottom: 17px;">
            <a class="btn btn-info btn-sm" href="Default.aspx?option=product&cat=insert" role="button">
                <span class="glyphicon glyphicon-plus"></span>Thêm mới
            </a>
            <a class="btn btn-danger btn-sm" href="Default.aspx?option=product" role="button">
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
                                        <th style="width: 30px;" class="text-center">ID</th>
                                        <th style="width: 180px;">Hình ảnh</th>
                                        <th style="width: 200px;">Tên sản phẩm</th>
                                        <th style="width: 200px;">Loại sản phẩm</th>
                                        <th style="width: 30px;" class="text-center">Trạng khái</th>
                                        <th style="width: 90px;" class="text-center">Khôi phục</th>
                                        <th style="width: 90px;" class="text-center">Xóa vĩnh viễn</th>
                                        
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="rptthungrac" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td class="text-center"><%# Eval("Id") %></td>
                                                <td>
                                                    <img style="height: 260px;" src="../Public/Images/Sanpham/<%# Eval("Img") %>" class="img-responsive" /></td>
                                                <td><%# Eval("Name") %></td>
                                                <td><%# Eval("Catid") %></td>
                                                <td class="text-center">
                                                    <a href="Default.aspx?option=Product&cat=status&id= <%# Eval("Id") %>">
                                                        <span class="<%# FunStatus(Eval("StateId")) %>"></span>
                                                    </a>
                                                </td>
                                                <td class="text-center">
                                                    <a class="btn btn-info btn-sm" href="Default.aspx?option=product&cat=retrash&id=<%# Eval("Id") %>" role="button">
                                                        <span class="glyphicon glyphicon-edit">Khôi phục</span>
                                                    </a>
                                                </td>
                                                <td class="text-center">
                                                    <a class="btn btn-danger btn-sm" href="Default.aspx?option=product&cat=delete&id=<%# Eval("Id") %>" role="button">
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
