<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Trash.ascx.cs" Inherits="BanQuanAo.Admin.Components.Content.Trash" %>

<div class="content-wrapper">
    <section class="content-header">
        <h1>THÙNG RÁC BÀI VIẾT</h1>
        <div class="breadcrumb" style="margin-bottom: 17px;">
            <a class="btn btn-info btn-sm" href="Default.aspx?option=content&cat=insert" role="button">
                <span class="glyphicon glyphicon-plus"></span>Thêm mới
            </a>
            <a class="btn btn-danger btn-sm" href="Default.aspx?option=content" role="button">
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
                                        <th style="width:30px;" class="text-center">ID</th>
                                        <th style="width: 220px;">Hình</th>
                                        <th style="width: 100px;">Tiêu đề bài viết</th>
										<th style="width: 50px;">Chủ đề bài viết</th>
										<th>Nội dung bài viết</th>
                                        <th style="width:30px;" class="text-center">Trạng khái</th>
                                        <th style="width:90px;" class="text-center">Khôi phục</th>
                                        <th style="width:90px;" class="text-center">Xóa vĩnh viễn</th>
                                        
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="rptthungrac" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td class="text-center"><%# Eval("Id") %></td>
                                                <td>
                                                    <img style="height: 260px;" src="../Public/Images/TinTuc/<%# Eval("Img") %>" class="img-responsive" /></td>
                                                <td class="text-center"><%# Eval("Title") %></td>
                                                <td class="text-center"><%# Eval("Catid") %></td>
                                                <td class="text-center"><%# Eval("Detail") %></td>
                                                <td class="text-center">
                                                    <a href="Default.aspx?option=content&cat=status&id= <%# Eval("Id") %>">
                                                        <span class="<%# FunStatus(Eval("StateId")) %>"></span>
                                                    </a>
                                                </td>
                                                <td class="text-center">
                                                    <a class="btn btn-info btn-sm" href="Default.aspx?option=content&cat=retrash&id=<%# Eval("Id") %>" role="button">
                                                        <span class="glyphicon glyphicon-edit">Khôi phục</span>
                                                    </a>
                                                </td>
                                                <td class="text-center">
                                                    <a class="btn btn-danger btn-sm" href="Default.aspx?option=content&cat=delete&id=<%# Eval("Id") %>" role="button">
                                                        <span class="glyphicon glyphicon-trash">Xóa</span>
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
