<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Trash.ascx.cs" Inherits="BanQuanAo.Admin.Components.Contact.Trash" %>

<div class="content-wrapper">
    <section class="content-header">
        <h1>THÙNG RÁC LIÊN HỆ</h1>
        <div class="breadcrumb" style="margin-bottom:17px;">
            <a class="btn btn-danger btn-sm" href="Default.aspx?option=contact" role="button">
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
                                        <th class="text-center" style="width: 50px;">Họ tên</th>
                                        <th class="text-center" style="width: 50px;">Email</th>
                                        <th class="text-center" style="width: 50px;">Phone</th>
                                        <th class="text-center" style="width: 250px;">Tiêu đề</th>
                                        <th class="text-center" style="width: 250px;">Nội dung</th>
                                        <th style="width: 30px;" class="text-center">Trạng thái</th>
                                        <th style="width: 90px;" class="text-center">Khôi phục</th>
                                        <th style="width: 90px;" class="text-center">Xóa vĩnh viễn</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="rptthungrac" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td><%# Eval("Id") %></td>
                                                <td><%# Eval("FullName") %></td>
                                                <td><%# Eval("Email") %></td>
                                                <td><%# Eval("Phone") %></td>
                                                <td><%# Eval("Title") %></td>
                                                <td><%# Eval("Detail") %></td>
                                                <td class="text-center">
                                                    <a href="Default.aspx?option=contact&cat=status&id= <%# Eval("Id") %>">
                                                        <span class="<%# FunStatus(Eval("StateId")) %>"></span>
                                                    </a>
                                                </td>
                                                <td class="text-center">
                                                    <a class="btn btn-info btn-sm" href="Default.aspx?option=contact&cat=retrash&id=<%# Eval("Id") %>" role="button">
                                                        <span class="glyphicon glyphicon-edit">Khôi phục</span>
                                                    </a>
                                                </td>
                                                <td class="text-center">
                                                    <a class="btn btn-danger btn-sm" href="Default.aspx?option=contact&cat=delete&id=<%# Eval("Id") %>" role="button">
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