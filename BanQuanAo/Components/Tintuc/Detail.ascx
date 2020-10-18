<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Detail.ascx.cs" Inherits="BanQuanAo.Components.Tintuc.Detail" %>
<%@ Register Src="~/Modules/ListCategory.ascx" TagPrefix="uc1" TagName="ListCategory" %>



<div class="row">
    <div class="col-md-3">
        <uc1:ListCategory runat="server" ID="ListCategory1" />
    </div>
    <div class="col-md-9">
        <asp:FormView ID="gvChitiet" runat="server">
            <ItemTemplate>
                <ol class="breadcrumb">
                    <li><a href="Default.aspx">Trang chủ</a></li>
                    <li><a href="Default.aspx?option=tintuc"></a>Tin tức</li>
                    <li class="active"><%# Eval("Title") %></li>
                </ol>
                <h1 class="text-center"><%# Eval("Title") %></h1>
                <p><%# Eval("Detail") %></p>
                <img class="" src="Public/Images/TinTuc/<%# Eval("Img") %>" />
            </ItemTemplate>
        </asp:FormView>

    </div>
</div>
