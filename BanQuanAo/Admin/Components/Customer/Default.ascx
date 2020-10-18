<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Default.ascx.cs" Inherits="BanQuanAo.Admin.Components.Customer.Default" %>
<div class="content-wrapper">
    <section class="content-header">
        <h1>TẤT CẢ KHÁCH HÀNG</h1>
        <div class="breadcrumb" style="margin-bottom: 17px;">
            <a class="btn btn-info btn-sm" href="Default.aspx?option=customer&cat=insert" role="button">
                <span class="glyphicon glyphicon-plus"></span>Thêm mới

            </a>
            <a class="btn btn-danger btn-sm" href="Default.aspx?option=customer&cat=trash" role="button">
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
                                        <th class="text-center">Họ và tên</th>
                                        <th style="width: 100px;" class="text-center">Tên đăng nhập</th>
                                        <th style="width: 100px;" class="text-center">Mật khẩu</th>
                                        <th class="text-center">E-mail</th>
                                        <th style="width: 90px;" class="text-center">Giới tính</th>
                                        <th style="width: 80px;" class="text-center">Ngày sinh</th>
                                        <th style="width: 90px;" class="text-center">Số điện thoại</th>
                                        <th style="width: 200px;" class="text-center">Địa chỉ</th>
                                        <th style="width: 30px;" class="text-center">Trạng thái</th>
                                        <th style="width: 30px;" class="text-center">Sửa</th>
                                        <th style="width: 30px;" class="text-center">Xóa</th>
                                        
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="rptkhachhang" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td class="text-center"><%# Eval("Id") %></td>
                                                <td class="text-center"><%# Eval("FullName") %></td>
                                                <td class="text-center"><%# Eval("UserName") %></td>
                                                <td class="text-center"> <%# Eval("Password") %></td>
                                                <td class="text-center"> <%# Eval("Email") %></td>
                                                <td class="text-center"><%# Gioitinh(Eval("Gender")) %></td>
                                                <td class="text-center"> <%# Eval("Birthday") %></td>
                                                <td class="text-center"> <%# Eval("Phone") %></td>
                                                <td class="text-center"> <%# Eval("Address") %> , <%# Eval("City") %></td>
                                                <td class="text-center">
                                                    <a href="Default.aspx?option=Customer&cat=status&id= <%# Eval("Id") %>">
                                                        <span class="<%# FunStatus(Eval("StateId")) %>"></span>
                                                    </a>
                                                </td>
                                                <td class="text-center">
                                                    <a class="btn btn-info btn-sm" href="Default.aspx?option=customer&cat=update&id=<%# Eval("Id") %>" role="button">
                                                        <span class="glyphicon glyphicon-edit">Sửa</span> 
                                                    </a>
                                                </td>
                                                <td class="text-center">
                                                    <a class="btn btn-danger btn-sm" href="Default.aspx?option=customer&cat=deltrash&id=<%# Eval("Id") %>" role="button">
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
