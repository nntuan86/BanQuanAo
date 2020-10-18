<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ListBanNhieu.ascx.cs" Inherits="BanQuanAo.Modules.ListBanNhieu" %>
<div class="list-group">
    <a href="#" class="list-group-item disabled category-title">
        <span class="glyphicon glyphicon-list"></span>BÁN NHIỀU NHẤT
    </a>
    <div class="row" style="padding: 10px 0px; border: 3px solid #e8e8e8; margin-left: 0px; margin-right: 0px;">
        <asp:Repeater ID="rptbannhieu" runat="server">
            <ItemTemplate>
                <div class="bannhieu">
                    <a href="Default.aspx?option=sanpham&id=<%# Eval("Slug") %>">
                        <img src="Public/Images/Sanpham/<%#Eval("Img") %>" class="img-responsive" alt="Image">
                        <h3 class="text-center" style="color:blue;"><%#Eval("Name") %></h3>
                    </a>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</div>
