<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ListCategory.ascx.cs" Inherits="BanQuanAo.Modules.ListCategory" %>

<div class="list-group">
    <a href="#" class="list-group-item disabled category-title">
        <span class="glyphicon glyphicon-list"></span>   DANH MỤC SẢN PHẨM
    </a>
    <div class="row" style="padding: 10px 0px; border: 3px solid #e8e8e8; margin-left: 0px; margin-right: 0px;  ">
        <asp:Literal ID="ltlistcategory" runat="server"></asp:Literal>
    </div>
</div>