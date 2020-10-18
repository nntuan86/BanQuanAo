<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Default.ascx.cs" Inherits="BanQuanAo.Components.Lienhe.Default" %>
<section id="contact">
  <div class="container">
    <div class="well well-sm">
      <h3><strong>Liên Hệ với chúng tôi</strong></h3>
    </div>
	
	<div class="row">
	  <div class="col-md-7">
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.086115921069!2d106.68207231418282!3d10.80471626162688!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528dbbc901fcf%3A0xcf50028128c80e94!2zMjAvMTMgVGjDrWNoIFF14bqjbmcgxJDhu6ljLCBwaMaw4budbmcgNSwgUGjDuiBOaHXhuq1uLCBI4buTIENow60gTWluaCwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1524187718966"
               width="100%" height="315" frameborder="0" style="border:0" allowfullscreen></iframe>
      </div>
      <div class="col-md-4">
          <h4><strong style="color:blue;">Thông tin liên hệ</strong></h4>
        <form>
            <div class="form-group">
                <asp:TextBox ID="txtFullname" runat="server" CssClass="form-control" placeholder="Họ và tên" />
            </div>
            <div class="form-group">
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email" />
            </div>
            <div class="form-group">
                <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="Số điện thoại" />
            </div>
            <div class="form-group">
                <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control" placeholder="Chủ đề liên hệ" />
            </div>
            <div class="form-group">
                <asp:TextBox ID="txtContent" runat="server" CssClass="form-control" placeholder="Nội dung" />
            </div>
            
            <div class="form-group">
                <asp:Button ID="btnGui" OnClick="btnGui_Click" runat="server" Text="Gửi" />
            </div>
        </form>
      </div>
    </div>
  </div>
</section>
