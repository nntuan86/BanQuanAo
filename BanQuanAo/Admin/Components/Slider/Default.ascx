<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Default.ascx.cs" Inherits="BanQuanAo.Admin.Components.slider.Default" %>


<div class="content-wrapper">
    <section class="content-header">
        <h1>TẤT CẢ CÁC LOẠI SLIDESHOW</h1>
        <div class="breadcrumb" style="margin-bottom: 17px;">
            <a class="btn btn-info btn-sm" href="Default.aspx?option=slider&cat=insert" role="button">
                <span class="glyphicon glyphicon-plus"></span>Thêm mới

            </a>
            <a class="btn btn-danger btn-sm" href="Default.aspx?option=slider&cat=trash" role="button">
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
                                        <th class="text-center" style="width: 20px;">ID</th>
                                        <th style="width: 400px;">Hình ảnh</th>
                                        <th style="width:100px;" class="text-center">Tên hình</th>
                                        <th style="width:100px;" class="text-center">Vị trí</th>
                                        <th style="width:50px;" class="text-center">Trạng khái</th>
                                        <th style="width:50px;" class="text-center">Xóa</th>
                                        <th style="width:50px;" class="text-center">Sửa</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="rptslider" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td><%# Eval("Id") %></td>
                                                <td><img style="height: 170px; width: 300px;" src="../Public/Images/Slideshow/<%# Eval("Img") %>" /></td>
                                               
                                                <td><%# Eval("Name") %></td>
                                                <td class="text-center"><%# Eval("Link") %></td>
                                                <td class="text-center">
                                                    <a href="Default.aspx?option=slider&cat=status&id=<%# Eval("Id") %>">
                                                        <span class="<%# FunStatus (Eval("StateId")) %>"></span>
                                                    </a>
                                                </td>
                                                <td class="text-center">
                                                    <a href="Default.aspx?option=slider&cat=update&id=<%# Eval("Id") %>" class="btn btn-info btn-sm">
                                                        <span class="glyphicon glyphicon-edit"></span>Sửa
                                                    </a>
                                                </td>
                                                <td class="text-center">
                                                    <a href="Default.aspx?option=slider&cat=deltrash&id=<%# Eval("Id") %>" class="btn btn-danger btn-sm">
                                                        <span class="glyphicon glyphicon-trash"></span>Xoá
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
