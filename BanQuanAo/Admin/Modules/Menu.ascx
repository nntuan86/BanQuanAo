<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Menu.ascx.cs" Inherits="BanQuanAo.Admin.Modules.Menu" %>
<section class="sidebar">
    <asp:Repeater ID="rptthongtin" runat="server">
        <ItemTemplate>
            <div class="user-panel">
    </div>
        </ItemTemplate>
    </asp:Repeater> 
    <ul class="sidebar-menu" data-widget="tree">
        <li class="header text-center" style="font-size: 20px; color: white;">Danh Mục Quản Lý </li>
        <li class="treeview">
            <a href="Default.aspx?option=category">
                <i class="fa fa-dashboard"></i><span>Loại sản phẩm </span>
                <span class="pull-right-conntainer">
                    <i class="fa fa-angle-left pull-right"></i>
                </span>
            </a>
            <ul class="treeview-menu">
                <li><a href="Default.aspx?option=category"><i class="fa fa-circle-o"></i>Tất cả loại sản phẩm</a></li>
                <li><a href="Default.aspx?option=category&cat=insert"><i class="fa fa-circle-o"></i>Thêm loại sản phẩm</a></li>
            </ul>
        </li>
        <li class="treeview">
            <a href="Default.aspx?option=product"><i class="fa fa-files-o"></i>
                <span>Sản phẩm</span>
                <span class="pull-right-conntainer"><i class="fa fa-angle-left pull-right"></i></span>
            </a>
            <ul class="treeview-menu">
                <li><a href="Default.aspx?option=product"><i class="fa fa-circle-o"></i>Tất cả sản phẩm</a></li>
                <li><a href="Default.aspx?option=product&cat=insert"><i class="fa fa-circle-o"></i>Thêm sản phẩm</a></li>
            </ul>
        </li>
        <li>
            <a href="Default.aspx?option=order">
                <i class="fa fa-calendar"></i><span>Đơn hàng</span>
            </a>
        </li>
        <li class="treeview">
            <a href="Default.aspx?option=topic">
                <i class="fa fa-pie-chart"></i><span>Chủ đề bài viết</span>
                <span class="pull-right-conntainer">
                    <i class="fa fa-angle-left pull-right"></i>
                </span>
            </a>
            <ul class="treeview-menu">
                <li><a href="Default.aspx?option=topic"><i class="fa fa-circle-o"></i>Tất cả chủ đề bài viết</a></li>
                <li><a href="Default.aspx?option=topic&cat=insert"><i class="fa fa-circle-o"></i>Thêm chủ đề bài viết</a></li>
            </ul>
        </li>
        <li class="treeview">
            <a href="Default.aspx?option=content">
                <i class="fa fa-laptop"></i>
                <span>Bài viết</span>
                <span class="pull-right-conntainer"><i class="fa fa-angle-left pull-right"></i></span>
            </a>
            <ul class="treeview-menu">
                <li><a href="Default.aspx?option=content"><i class="fa fa-circle-o"></i>Tất cả bài viết</a></li>
                <li><a href="Default.aspx?option=content&cat=insert"><i class="fa fa-circle-o"></i>Thêm bài viết</a></li>
            </ul>
        </li>
        <li class="treeview">
            <a href="Default.aspx?option=customer">
                <i class="fa fa-table"></i><span>Khách hàng</span>
                <span class="pull-right-conntainer"><i class="fa fa-angle-left pull-right"></i></span>
            </a>
            <ul class="treeview-menu">
                <li><a href="Default.aspx?option=customer"><i class="fa fa-circle-o"></i>Danh sách khách hàng</a></li>
                <li><a href="Default.aspx?option=customer&cat=insert"><i class="fa fa-circle-o"></i>Thêm khách hàng</a></li>
            </ul>
        </li>
        <li>
            <a href="Default.aspx?option=contact">
                <i class="fa fa-calendar"></i><span>Liên hệ</span>
            </a>
        </li>
        <li class="treeview">
            <a href="Default.aspx?option=slider">
                <i class="fa fa-table"></i><span>Slider</span>
                <span class="pull-right-conntainer"><i class="fa fa-angle-left pull-right"></i></span>
            </a>
            <ul class="treeview-menu">
                <li><a href="Default.aspx?option=slider"><i class="fa fa-circle-o"></i>Danh sách Slider</a></li>
                <li><a href="Default.aspx?option=slider&cat=insert"><i class="fa fa-circle-o"></i>Thêm mới Slider</a></li>
            </ul>
        </li>
        <li class="treeview">
            <a href="Default.aspx?option=user">
                <i class="fa fa-table"></i><span>Tài khoản</span>
                <span class="pull-right-conntainer"><i class="fa fa-angle-left pull-right"></i></span>
            </a>
            <ul class="treeview-menu">
                <li><a href="Default.aspx?option=user"><i class="fa fa-circle-o"></i>Danh sách tài khoản</a></li>
                <li><a href="Default.aspx?option=user&cat=insert"><i class="fa fa-circle-o"></i>Thêm tài khoản</a></li>
            </ul>
        </li>
        <li>
            <a href="Logout.aspx">
                <i class="fa fa-cricle-o text-aqua" style="font-size:15px;">Thoát</i>
            </a>
        </li>

    </ul>
</section>
