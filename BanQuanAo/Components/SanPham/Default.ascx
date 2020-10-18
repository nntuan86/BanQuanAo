<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Default.ascx.cs" Inherits="BanQuanAo.Components.SanPham.Default" %>
<%@ Register Src="~/Modules/ListCategory.ascx" TagPrefix="uc1" TagName="ListCategory" %>
<%@ Register Src="~/Modules/ListBanNhieu.ascx" TagPrefix="uc1" TagName="ListBanNhieu" %>

<div class="row">
    <div class="col-md-3">
        <uc1:ListCategory runat="server" ID="ListCategory1" />
        <uc1:ListBanNhieu runat="server" ID="ListBanNhieu" />
    </div>
    <div class="col-md-9">
        <h3>Tất cả sản phẩm</h3>
        <div class="row">
            <asp:Repeater ID="rptsanpham" runat="server">
                <ItemTemplate>
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                        <div class="product">
                            <div class="product-image">
                                <a href="Default.aspx?option=sanpham&id=<%# Eval("Slug") %>">
                                    <img style="height: 260px;"  src="Public/Images/Sanpham/<%# Eval("Img") %>" class="img-responsive" />
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
                                    <h4 class="h4-price"><%# Eval("Price_buy","{0:0,0} VNĐ") %></h4>
                                </a>
                            </div>
                            <div class="product-viewcart">
                                <a class="btn btn-info btn-mua" href="default.aspx?option=giohang&cat=addCart&id=<%# Eval("Id") %>" role="button">
                                    <span class="glyphicon glyphicon-shopping-cart"></span>Mua ngay
                                </a>
                                <a class="btn btn-danger btn-xem" href="Default.aspx?option=sanpham&id=<%# Eval("Slug") %>" role="button" >Chi tiết</a>

                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div class="text-center">
            <asp:Literal ID="ltPhantrang" runat="server"></asp:Literal>
        </div>
    </div>
</div>
