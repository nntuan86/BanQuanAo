<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Default.ascx.cs" Inherits="BanQuanAo.Admin.Components.Topic.Default" %>
<div class="content-wrapper">
    <section class="content-header">
        <h1>TẤT CẢ CHỦ ĐỀ BÀI VIẾT</h1>
        <div class="breadcrumb" style="margin-bottom: 17px;">
            <a class="btn btn-info btn-sm" href="Default.aspx?option=topic&cat=insert" role="button">
                <span class="glyphicon glyphicon-plus"></span>Thêm mới

            </a>
            <a class="btn btn-danger btn-sm" href="Default.aspx?option=topic&cat=trash" role="button">
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
                                        <th>Tên loại bài viết</th>
                                        <th>Liên kết</th>
                                        <th style="width: 30px;" class="text-center">Trạng thái</th>
                                        <th style="width: 30px;" class="text-center">Sửa</th>
                                        <th style="width: 30px;" class="text-center">Xóa</th>
                                        
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="rptsanpham" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td class="text-center"><%# Eval("Id") %></td>
                                                <td><%# Eval("Name") %></td>
                                                <td><%# Eval("Slug") %></td>
                                                <td class="text-center">
                                                    <a href="Default.aspx?option=topic&cat=status&id= <%# Eval("Id") %>">
                                                        <span class="<%# FunStatus(Eval("StateId")) %>"></span>
                                                    </a>
                                                </td>
                                                <td class="text-center">
                                                    <a class="btn btn-info btn-sm" href="Default.aspx?option=topic&cat=update&id=<%# Eval("Id") %>" role="button">
                                                        <span class="glyphicon glyphicon-edit">Sửa</span>
                                                    </a>
                                                </td>
                                                <td class="text-center">
                                                    <a class="btn btn-danger btn-sm" href="Default.aspx?option=topic&cat=deltrash&id=<%# Eval("Id") %>" role="button">
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
