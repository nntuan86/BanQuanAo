<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Giohang.ascx.cs" Inherits="BanQuanAo.Modules.Giohang" %>
<asp:Repeater ID="rptg" runat="server">
    <ItemTemplate>
        <a href="Default.aspx?option=giohang"><span class="glyphicon glyphicon-shopping-cart" style="padding-top:10px;"></span>Giỏ hàng</a>
    </ItemTemplate>
</asp:Repeater>
