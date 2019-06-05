<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/User/userwork.master" AutoEventWireup="true" CodeFile="symmetrickey.aspx.cs" Inherits="User_symmetrickey" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <section class="inner-banner">
	<div class="container">
		<h3 class="text-center">Keys</h3>
	</div>
</section>
<!-- //inner banner -->

<!-- page details -->
<div class="breadcrumb-agile">
	<div class="container">
		<ol class="breadcrumb">
			<li class="breadcrumb-item">
				<a href="user.aspx">Home</a>
			</li>
			<li class="breadcrumb-item active" aria-current="page"> Our Services</li>
		</ol>
	</div>
</div>
     <section class="contact py-5" id="div" runat="server">
	<!-- contact content -->
	<div class="contact-cont pb-3">
		<div class="container">
			<div class="row mail-w3l-w3pvt-">
				<div class="col-lg-6" style="margin-left: 274px;">
					<div class="w3pvt-info_mail_grid_right" >
						<form action="#" method="post">
                           
                            <%--<asp:Label ID="Label4" runat="server" Font-Bold="true" Text="Mobile Os" style="    margin-left: -220px;"></asp:Label>--%>

							<div class="form-group" style="margin-top: -33px;">
								<%--<input type="email" name="Email" class="form-control" placeholder="Your Email Id" required="">--%>
                                <asp:Label ID="Label1" runat="server" Font-Bold="true" Text="Label"></asp:Label>
                                <asp:LinkButton ID="LinkButton3" CssClass="btn btn-primary" style="margin-left: -480px;" runat="server" OnClick="LinkButton3_Click">Generate Key</asp:LinkButton>
                                <asp:TextBox ID="txtkey" runat="server" type="text" placeholder="Symmetric key" class="form-control" Font-Bold="True" ForeColor="Black"></asp:TextBox>
                             
                              <%--  <asp:FileUpload ID="FileUpload1"  type="text" class="form-control" runat="server" />--%>

							</div>
                           
							
                            <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">View Key</asp:LinkButton>
                             
							<%--<button type="submit" class="btn">Submit</button>--%>
                            <asp:Button ID="Button1" runat="server" Text="Submit" style="cursor: pointer;
    outline: none;
    padding: 12px;
    font-size: 16px;
    color: #fff;
    background: #333;
    width: 100%;
    text-transform: uppercase;
    border: none;
    letter-spacing: 2px;
    border-radius: 0px;
    -webkit-border-radius: 0px;
    -o-border-radius: 0px;
    -ms-border-radius: 0px;
    -moz-border-radius: 0px;
    -webkit-transition: 0.5s all;
    -moz-transition: 0.5s all;
    -o-transition: 0.5s all;
    -ms-transition: 0.5s all;
    transition: 0.5s all;" OnClick="Button1_Click"   />
						</form>
					</div>
				</div>
				
			</div>
		</div>
	</div>
	<!-- //contact content -->
</section>
</asp:Content>

