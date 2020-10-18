<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Update.ascx.cs" Inherits="BanQuanAo.Admin.Components.Product.Update" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<form action="Default.aspx?option=product&cat=process" method="post">
    <div class="content-wrapper">

        <section class="content-header">
            <h1>CẬP NHẬT SẢN PHẨM</h1>
            <div class="breadcrumb" style="margin-bottom: 17px;">
                <a class="btn btn-info btn-sm" href="Default.aspx?option=product&cat=insert" role="button">
                    <span class="glyphicon glyphicon-plus"></span>Thêm mới
                </a>
                <a class="btn btn-danger btn-sm" href="Default.aspx?option=product" role="button">
                    <i class="fa fa-undo"></i>Thoát
                </a>
            </div>
        </section>
        <section class="content">
            <div class="row">
                <div class="col-md-12">
                    <div class="box">
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-9 col-lg-9">
                                    <div class="form-group">
                                        <label for="">Tên loại sản phẩm</label>
                                        <asp:TextBox ID="txtsp" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="">Chi tiết sản phẩm</label>
                                        <CKEditor:CKEditorControl ID="CKEDetail" Width="100%" runat="server"
                                            BasePath="CKEditor"></CKEditor:CKEditorControl>
                                    </div>
                                    <div class="form-group">
                                        <label for="">Meta Desc - SEO</label>
                                        <asp:TextBox ID="txtMetadesc" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="">Meta Key - SEO</label>
                                        <asp:TextBox ID="txtMetakey" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-message">
                                        <asp:Literal ID="ltmessage" runat="server"></asp:Literal>
                                    </div>
                                </div>
                                <div class="col-md-3 col-lg-3">
                                    <div class="form-group">
                                        <label for="">Loại sản phẩm</label>
                                        <asp:DropDownList ID="ddlcatid" runat="server" CssClass="form-control"></asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        <label for="">Số lượng</label>
                                        <asp:TextBox ID="txtsoluong" TextMode="Number" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="">Giá bán</label>
                                        <asp:TextBox ID="txtgiaban" TextMode="Number" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="">Giá khuyến mãi</label>
                                        <asp:TextBox ID="txtgiakhuyenmai" TextMode="Number" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="">Hình ảnh sản phẩm</label>
                                        <asp:FileUpload ID="fulImg" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="form-group">
                                        <label for="">Trạng thái</label>
                                        <asp:DropDownList ID="ddlstatus" runat="server" CssClass="form-control">
                                            <%--<asp:ListItem Value="1">Xuất bản</asp:ListItem>
                                            <asp:ListItem Value="0">Chưa xuất bản</asp:ListItem>--%>
                                        </asp:DropDownList><br />
                                    </div>
                                    <div class="form-group">
                                        <asp:Button ID="btnluu" OnClick="btnluu_Click" Text="Lưu" runat="server" CssClass="form-tuan"></asp:Button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</form>
