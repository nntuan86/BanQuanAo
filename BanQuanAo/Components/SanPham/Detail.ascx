<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Detail.ascx.cs" Inherits="BanQuanAo.Component.sanpham.Detail" %>
<%@ Register Src="~/Modules/ListCategory.ascx" TagPrefix="uc1" TagName="ListCategory" %>

<div class="row">
    <div class="col-md-3">
        <uc1:ListCategory runat="server" ID="ListCategory" />
    </div>
    <div class="col-md-9">
        <div class="row">
            <asp:FormView ID="fvchitiet" runat="server" Width="100%">
                <ItemTemplate>
                    <h3><strong>Sản phẩm: <%# Eval("Name") %></strong></h3>
                    <div class="col-md-5">
                        <img src="Public/Images/Sanpham/<%# Eval("Img") %>" class="img-responsive" />
                    </div>
                    <div class="col-md-7">
                        <del>
                            <h3 style="color: blue">Giá: <%# Eval("Price_buy","{0:0,0} VNĐ") %></h3>
                        </del>
                        </br>
                        <h3 style="color: red">Giảm còn: <%# Eval("Price_sale","{0:0,0} VNĐ") %></h3>
                        </br>
                        <h3>Số lượng còn lại: <%#Eval("Number") %> </h3>
                        </h3>
                        <div class="form-inline">
                            <asp:TextBox ID="txtNumber" Min="1" Max="100" Step="1" Value="1" TextMode="Number" CssClass="form-control" runat="server" />
                            <a class="btn btn-info btn-xem" href="default.aspx?option=giohang&cat=addcart&id=<%# Eval("id") %>" role="button">
                                <span class="glyphicon glyphicon-shopping-cart"></span>Mua ngay
                            </a>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <h2 style="color:blue;">1.Chi tiết sản phẩm</h2></br>
                        <h3>- <%# Eval("Detail") %></h3>
                    </div>
                </ItemTemplate>
            </asp:FormView>
        </div>
        <div class="row">
            <h2 style="color:blue;">2.Sản phẩm cùng loại</h2>
            <asp:Repeater ID="rptcungloai" runat="server">
                <ItemTemplate>
                    <div class="col-md-3">
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
                                <a class="btn btn-info btn-mua-chitiet" href="default.aspx?option=giohang&cat=addCart&id=<%# Eval("Id") %>" role="button">
                                    <span class="glyphicon glyphicon-shopping-cart"></span>Mua ngay
                                </a>
                                <a href="Default.aspx?option=sanpham&id=<%# Eval("Slug") %>" role="button" class="btn btn-danger btn-xemcungloai">Chi tiết</a>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</div>
