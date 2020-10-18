<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BanQuanAo.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../Public/css/bootstrap.min.css" rel="stylesheet" />
    <title>Đăng nhập</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <h5 class="text-center">Đăng Nhập Hệ Thống</h5>
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                                    <asp:TextBox ID="txtuser" runat="server" CssClass="form-control" placeholder="Tài khoản" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                                    <asp:TextBox ID="txtpass" TextMode="Password" runat="server" CssClass="form-control" placeholder="Mật khẩu" />
                                </div>
                            </div>
                            <div class="text-center" style="color: red;">
                                <asp:Literal ID="ltthongbao" runat="server"></asp:Literal>
                            </div>
                        </div>
                        <asp:Button ID="btndangnhap" OnClick="btndangnhap_Click" CssClass="btn btn-sm btn-primary btn-block" runat="server" Text="Đăng Nhập" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
