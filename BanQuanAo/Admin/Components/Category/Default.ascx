<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Default.ascx.cs" Inherits="BanQuanAo.Admin.Components.Category.Default" %>
<div class="content-wrapper">
    <section class="content-header">
        <h1>TẤT CẢ CÁC LOẠI SẢN PHẨM</h1>
        <div class="breadcrumb" style="margin-bottom: 17px;">
            <a class="btn btn-info btn-sm" href="Default.aspx?option=category&cat=insert" role="button">
                <span class="glyphicon glyphicon-plus"></span>Thêm mới
            </a>
            <a class="btn btn-danger btn-sm" href="Default.aspx?option=category&cat=trash" role="button">
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
                                        <th style="width: 10px;" class="text-center">ID</th>
                                        <th>Tên loại sản phẩm</th>
                                        <th style="width: 30px;" class="text-center">Trạng khái</th>
                                        <th style="width: 30px;" class="text-center">Sửa</th>
                                        <th style="width: 30px;" class="text-center">Xóa</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="rptloaisp" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td class="text-center"><%# Eval("Id") %></td>
                                                <td><%# Eval("Name") %></td>
                                                <td class="text-center">
                                                    <a href="Default.aspx?option=category&cat=status&id= <%# Eval("Id") %>">
                                                        <span class="<%# FunStatus(Eval("StateId")) %>"></span>
                                                    </a>
                                                </td>
                                                <td class="text-center">
                                                    <a class="btn btn-info btn-sm" href="Default.aspx?option=category&cat=update&id=<%# Eval("Id") %>" role="button">
                                                        <span class="glyphicon glyphicon-edit">Sửa</span>
                                                    </a>
                                                </td>
                                                <td class="text-center">
                                                    <a class="btn btn-danger btn-sm" href="Default.aspx?option=category&cat=deltrash&id=<%# Eval("Id") %>" role="button">
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
