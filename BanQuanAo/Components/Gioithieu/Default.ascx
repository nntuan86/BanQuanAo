<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Default.ascx.cs" Inherits="BanQuanAo.Component.Gioithieu.Default" %>
<%@ Register Src="~/Modules/ListCategory.ascx" TagPrefix="uc1" TagName="ListCategory" %>
<div class="row">
    <div class="col-md-3">
        <uc1:ListCategory runat="server" ID="ListCategory" />
    </div>
    <div class="col-md-9">
        <div class="pannel pannel-default">
            <div class="pannel-body">
                <ol class="breadcrumb">
                    <li><a href="Default.aspx">Trang chủ</a></li>
                    <li class="active">Giới thiệu</li>
                </ol>
                <asp:FormView ID="gvGioithieu" runat="server">
                    <ItemTemplate>

                        <h2 class="text-center" style="color:#4800ff"><%# Eval("Title") %></h2>
                        <img class="" src="Public/Images/TinTuc/<%# Eval("Img") %>" />
                        <%# Eval("Detail") %>
                    </ItemTemplate>
                </asp:FormView>
            </div>
        </div>
    </div>
</div>
