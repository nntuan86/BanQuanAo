<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Search.ascx.cs" Inherits="BanQuanAo.Modules.Search" %>
<div class="form-inline search text-center">
    <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" placeholder="Tìm kiếm....." />
    <asp:Button ID="btnTimkiem" OnClick="btnTimkiem_Click" runat="server" Text="Tìm Kiếm" CssClass="width:100px; height:40px;" role="button" />
</div>

