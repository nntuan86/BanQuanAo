<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Slideshow.ascx.cs" Inherits="BanQuanAo.Modules.Slideshow" %>



<div id="carousel-id" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <asp:Literal ID="ltslideshow1" runat="server"></asp:Literal>
    </ol>
    <div class="carousel-inner">
        <asp:Literal ID="ltslideshow2" runat="server"></asp:Literal>
    </div>
    <a class="left carousel-control" href="#carousel-id" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    </a>
    <a class="right carousel-control" href="#carousel-id" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    </a>
</div>