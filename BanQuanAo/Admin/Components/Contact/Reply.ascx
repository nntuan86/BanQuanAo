<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Reply.ascx.cs" Inherits="BanQuanAo.Admin.Components.Contact.Reply" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor"%>
<form action="Default.aspx?option=contact&cat=process" method="post">
    <div class="content-wrapper">
        <section class="content-header">
            <h1>Trả lời liên hệ</h1>
            <div class="breadcrumb" style="margin-bottom: 17px;">
                <i class="fa fa-undo"></i>Thoát
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
                                        <label>Họ và tên</label>
                                        <asp:TextBox ID="txthoten" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label>Số điện thoại</label>
                                        <asp:TextBox ID="txtphone" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label>Email</label>
                                        <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label>Tiêu đề</label>
                                        <asp:TextBox ID="txttitle" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label>Nội dung trả lời</label>
                                        <CKEditor:CKEditorControl id="CKEDetail" width="100%" runat="server"
                                            basepath="CKEditor"></CKEditor:CKEditorControl>
                                    </div>
                                    <div class="form-group">
                                        <asp:Button ID="btnGui" OnClick="btnGui_Click" Text="Gửi" runat="server" CssClass="form-tuan"></asp:Button>
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
