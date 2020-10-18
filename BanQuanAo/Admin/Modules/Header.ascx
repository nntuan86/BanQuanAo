<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="BanQuanAo.Admin.Modules.Header" %>
<header class="main-header">
    <a href="Default.aspx" class="logo">
        <span class="logo-mini"><b>QT </b></span>
        <span class="logo-lg"><b>Quản Trị </b></span>
    </a>
    <nav class="navbar navbar-static-top">
        <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
            <span class="sr-only">Toggle navigation</span>
        </a>
        <asp:Repeater ID="rptthongtin" runat="server">
            <ItemTemplate>
                <div class="navbar-custom-menu">
                    <ul class="nav navbar-nav">
                        <li class="dropdown user user-menu">
                            <a href="Default.aspx" class="dropdown-toggle" data-toggle="dropdown" role="button">
                                <%--<img src="../Public/Images/User/<%# Eval("Img") %>" class="user-image" alt="User">--%>
                                <span class="hidden-xs"><%# Eval("FullName") %></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="user-header">
                                    <img src="../Public/Images/User/<%# Eval("Img") %>" class="img-circle" alt="Image User">
                                    <p><%# Eval("FullName") %><small><%# Eval("Phone") %> </small></p>
                                </li>
                                <li class="user-footer">
                                    <div class="pull-left">
                                        <a href="Default.aspx" class="btn btn-default btn-flat"><span class="glyphicon glyphicon-user"></span>Thông tin thành viên </a>
                                    </div>
                                    <div class="pull-right">
                                        <a href="Logout.aspx" class="btn btn-default btn-flat"><span class="glyphicon glyphicon-remove-sign"></span>Thoát </a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </nav>
</header>
