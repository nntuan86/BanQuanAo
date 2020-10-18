<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Default.ascx.cs" Inherits="BanQuanAo.Components.Tintuc.Default" %>
<%@ Register Src="~/Modules/ListCategory.ascx" TagPrefix="uc1" TagName="ListCategory" %>

<div class="row">
    <div class="col-md-3">
        <uc1:ListCategory runat="server" ID="ListCategory" />
    </div>
    <div class="col-md-9">
        <ol class="breadcrumb">
            <li><a href="Default.aspx">Trang chủ</a></li>
            <li class="active">Tin tức</li>

        </ol>
        <asp:Repeater ID="rpttintuc" runat="server">
            <ItemTemplate>
                <div class="tintuc">
                    <div class="row">
                        <div class="col-md-4">
                            <a href="Default.aspx?option=tintuc&id=<%# Eval("Slug") %>">
                                <img class="" src="Public/Images/TinTuc/<%# Eval("Img") %>" />
                            </a>
                        </div>
                        <div class="col-md-8">
                            <h2>
                                <a href="Default.aspx?option=tintuc&id=<%# Eval("Slug") %>">
                                    <%# Eval("Title") %>
                                </a>
                            </h2>
                            <%# Eval("Detail") %>
                            <div>
                                <a href="Default.aspx?option=tintuc&id=<%# Eval("Slug") %>">Đọc thêm</a>
                            </div>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <div class="row">
            <asp:Literal ID="ltPhantrang" runat="server"></asp:Literal>
        </div>
    </div>
</div>
