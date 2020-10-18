<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Default.ascx.cs" Inherits="BanQuanAo.Components.Search.Default" %>
<%@ Register Src="~/Modules/ListCategory.ascx" TagPrefix="uc1" TagName="ListCategory" %>


<%--<div class="row">
    <div class="col-md-3">
        <uc1:ListCategory runat="server" ID="ListCategory1" />
    </div>

    <div class="col-md-9">
        <h2 class="text-center">Kết quả tìm kiếm</h2>
        <div class="row">   
            <asp:Repeater ID="rptTimkiem" runat="server">
                <ItemTemplate>
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                        <div class="product">
                            <div class="product-image">
                                <a href="Default.aspx?option=sanpham&id=<%# Eval("Slug") %>">
                                    <img style="height: 260px;" src="Public/Images/Sanpham/<%# Eval("Img") %>" class="img-responsive" />
                                </a>
                            </div>
                            <div class="product-name text-center">
                                <h4>
                                    <a href="Default.aspx?option=sanpham&id=<%# Eval("Slug") %>" title="">
                                        <%# Eval("Name") %>
                                    </a>
                                </h4>
                            </div>
                            <div class="product-price text-center">
                                <a href="Default.aspx?option=sanpham&id=<%# Eval("Slug") %>">
                                    <h4 class="h4-price"><%# Eval("Price","{0:0,0} VNĐ") %></h4>
                                </a>
                            </div>
                            <div class="product-viewcart">
                                <button type="button" class="btn btn-info btn-mua">
                                    <span class="glyphicon glyphicon-shopping-cart"></span>Mua ngay
                                </button>
                                <a class="btn btn-danger btn-xem" href="Default.aspx?option=sanpham&id=<%# Eval("Slug") %>" role="button">Chi tiết</a>
                            </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</div>--%>

<h2>Kết quả</h2>
<asp:Repeater ID="rptTimkiem" runat="server">
    <ItemTemplate>

        <div class="col-md-3">
            <div class="thumbnail">
                <img style="width: 260px; height: 180px;" src="Public/images/sanpham/<%# Eval("Img") %>" alt="" class="img-reponsize">
                <div class="caption">
                    <h3><%# Eval("Name") %></h3>
                    <p><%# Eval("Price_buy","{0:0,00} VNĐ")  %></p>
                    <p>
                        <a href="Default.aspx?option=Sanpham&id=<%# Eval("Slug")%>"
                            class="btn btn-primary" role="button">Chi tiết</a>
                        <a href="Default.aspx?option=Card&cat=addCard&id=<%# Eval("Slug")%>" class="btn btn-default" role="button">Mua</a>
                    </p>
                </div>
            </div>

        </div>

    </ItemTemplate>
</asp:Repeater>

