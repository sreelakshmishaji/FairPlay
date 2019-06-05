<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/Developer/developer.master" AutoEventWireup="true" CodeFile="Developerprofile.aspx.cs" Inherits="Developer_Developerprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 214px;
        }
        .auto-style2 {
            width: 211px;
        }
        .auto-style3 {
            height: 35px;
        }
        .auto-style4 {
            width: 90px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="inner-banner">
	<div class="container">
		<h3 class="text-center">Profile</h3>
	</div>
</section>
<!-- //inner banner -->

<!-- page details -->
<div class="breadcrumb-agile">
	<div class="container">
		<ol class="breadcrumb">
			<li class="breadcrumb-item">
				<a href="developerhome.aspx">Home</a>
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
                                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn-danger" style="    margin-left: -286px;" OnClick="LinkButton1_Click">View Profile</asp:LinkButton>
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
    transition: 0.5s all;" OnClick="Button1_Click"  />
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
    <br />
   


    <asp:DataList ID="DataList1" runat="server" style="margin-left: 118px;">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" rowspan="6">
                        <asp:Image ID="Image1" runat="server"  style="border-radius: 50%;" Height="210px" Width="205px" ImageUrl='<%# Eval("photo") %>' />
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#CC3300" Text="Email"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label8" runat="server" Font-Bold="False" Text='<%# Eval("email") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#CC3300" Text="Mobile"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("phone") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#CC3300" Text="Address"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="#CC3300" Text="Date of Birth"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("date","{0:d MMM yyyy}") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="#CC3300" Text="Gender"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label12" runat="server" Text='<%# Eval("gender") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="#CC3300" Text="Status"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label13" runat="server" Text='<%# Eval("status") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
   


</asp:Content>

