<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Reviewfilters.aspx.cs" Inherits="Admin_Reviewfilters" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section class="inner-banner">
	<div class="container">
		<h3 class="text-center">Review Filters</h3>
	</div>
</section>
<!-- //inner banner -->

<!-- page details -->
<div class="breadcrumb-agile">
	<div class="container">
		<ol class="breadcrumb">
			<li class="breadcrumb-item">
				<a href="Admin.aspx">Home</a>
			</li>
			<li class="breadcrumb-item active" aria-current="page"> Our Services</li>
		</ol>
	</div>
</div>
    <section class="contact py-5">
	<!-- contact content -->
	<div class="contact-cont pb-3">
		<div class="container">
			<div class="row mail-w3l-w3pvt-">
				<div class="col-lg-6" style="margin-left: 274px;">
					<div class="w3pvt-info_mail_grid_right">
						<form action="#" method="post">
							<div class="form-group">
								<%--<input type="text" name="Name" class="form-control" placeholder="Enter Your Name" required="">--%>
                                <%--<asp:DropDownList ID="DropDownList1" runat="server" type="text" class="form-control" style="outline: none;
    padding: 12px 20px;
    font-size: 15px;
    color: #555;
    letter-spacing: 1px;
    width: 100%;
    border-radius: 0px;
    -webkit-border-radius: 0px;
    -o-border-radius: 0px;
    -ms-border-radius: 0px;
    -moz-border-radius: 0px;
    border: none;
    background: #f4f8fb;">
                                    <asp:ListItem Value="0">select</asp:ListItem>
                                    <asp:ListItem Value="1">Positive</asp:ListItem>
                                    <asp:ListItem Value="2">Negative</asp:ListItem>
                                </asp:DropDownList>--%>

							</div>
							<div class="form-group">
								<%--<input type="email" name="Email" class="form-control" placeholder="Your Email Id" required="">--%>
                                <%--<asp:TextBox ID="TextBox1" runat="server" type="text" class="form-control"></asp:TextBox>--%>
                                <asp:FileUpload ID="FileUpload1"  type="text" class="form-control" runat="server" />

							</div>
							<%--<div class="form-group">
								<input type="text" name="phone" class="form-control" placeholder="Phone Number" required="">
							</div>--%>
							<%--<div class="form-group">
								<textarea name="Message" placeholder="Enter Message Here" required=""></textarea>
							</div>--%>
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
    transition: 0.5s all;" OnClick="Button1_Click" />
						</form>
					</div>
				</div>
				<%--<div class="col-lg-5 mt-lg-0 mt-5">
					<div class="contact-left-w3ls">
						<h3>Contact Info</h3>
						<div class="row visit">
							<div class="col-md-1 col-sm-2 col-2 contact-icon-wthree  pl-2 pr-0">
								<span class="fa fa-home" aria-hidden="true"></span>
							</div>
							<div class="col-md-11 col-sm-10 col-10 contact-text-w3pvt-info">
								<h4>Visit us</h4>
								<p>1127 Block, 2nd cross, 4th floor,
								<br>5th street, London.</p>
							</div>
						</div>
						<div class="row mail-w3 my-4">
							<div class="col-md-1 col-sm-2 col-2 contact-icon-wthree pl-2 pr-0">
								<span class="fa fa-envelope-open-o" aria-hidden="true"></span>
							</div>
							<div class="col-md-11 col-sm-10 col-10 contact-text-w3pvt-info">
								<h4>Mail us</h4>
								<p><a href="mailto:info@examplemail.com">info@examplemail.com</a></p>
							</div>
						</div>
						<div class="row call">
							<div class="col-md-1 col-sm-2 col-2 contact-icon-wthree pl-2 pr-0">
								<span class="fa fa-phone" aria-hidden="true"></span>
							</div>
							<div class="col-md-11 col-sm-10 col-10 contact-text-w3pvt-info">
								<h4>Call us</h4>
								<p>(+121)-098-8907-9987</p>
							</div>
						</div>
					</div>
				</div>--%>
			</div>
		</div>
	</div>
	<!-- //contact content -->
</section>
</asp:Content>

