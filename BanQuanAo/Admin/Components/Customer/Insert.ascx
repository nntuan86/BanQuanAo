﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Insert.ascx.cs" Inherits="BanQuanAo.Admin.Components.Customer.Insert" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor"%>
<form action="Default.aspx?option=customer&cat=process" method="post">
    <div class="content-wrapper">
        <section class="content-header">
            <h1>THÊM MỚI KHÁCH HÀNG</h1>
            <div class="breadcrumb" style="margin-bottom: 17px;">
                <a class="btn btn-danger btn-sm" href="Default.aspx?option=customer" role="button">
                    <i class="fa fa-undo"></i>Thoát
                </a>
            </div>
        </section>
        <section class="content">
            <div class="row">
                <div class="col-md-12">
                    <div class="box">
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-9 col-lg-9">
                                    <div class="form-group">
                                        <label for="">Tên khách hàng</label>
                                        <asp:TextBox ID="txttenkh" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="">Tên đăng nhập</label>
                                        <asp:TextBox ID="txtusername" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="">Mật khẩu</label>
                                        <asp:TextBox ID="txtpass" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="">Địa chỉ</label>
                                        <asp:TextBox ID="txtdiachi" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="">Thành phố</label>
                                        <asp:TextBox ID="txtcity" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="">Email</label>
                                        <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-message">
                                        <asp:Literal ID="ltmessage" runat="server"></asp:Literal>
                                    </div>
                                </div>
                                <div class="col-md-3 col-lg-3">
                                    <div class="form-group">
                                        <label for="">Giới tính</label>
                                        <asp:DropDownList ID="ddlgioitinh" runat="server" CssClass="form-control">
                                            <asp:ListItem Value="1">Nam</asp:ListItem>
                                            <asp:ListItem Value="0">Nữ</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        <label for="">Số điện thoại</label>
                                        <asp:TextBox ID="txtsodt" TextMode="Phone" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="">Ngày sinh</label>
                                        <asp:TextBox ID="datengaysinh" TextMode="Date" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <%--<div class="form-group">
                                        <label for="">Hình ảnh khách hàng</label>
                                        <asp:FileUpload ID="fulImg" runat="server" CssClass="form-control" />
                                    </div>--%>
                                    <div class="form-group">
                                        <label for="">Trạng thái</label>
                                        <asp:DropDownList ID="ddlstatus" runat="server" CssClass="form-control">
                                            <%--<asp:ListItem Value="1">Xuất bản</asp:ListItem>
                                            <asp:ListItem Value="0">Chưa xuất bản</asp:ListItem>--%>
                                        </asp:DropDownList><br />
                                    </div>
                                    <div class="form-group">
                                        <asp:Button ID="btnluu" OnClick="btnluu_Click" Text="Lưu" runat="server" CssClass="form-tuan"></asp:Button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</form>
