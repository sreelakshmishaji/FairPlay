<%@ Page Title="" Language="C#" MasterPageFile="~/User/userwork.master" AutoEventWireup="true" CodeFile="mobileApplications.aspx.cs" EnableEventValidation="false" Inherits="User_mobileApplications" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style1 {
            width: 192px;
        }
    </style>
    <script src="../sweetalert.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <section class="inner-banner">
	<div class="container">
		<h3 class="text-center">Mobile Apps</h3>
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



    

<section class="news py-5" id="news">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" style="    margin-left: 135px;" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" >
        

    <ItemTemplate>
	<div class="container py-lg-3" style="width: 88%">
       
            <table class="w-100">
       
		<div class="row blog-grids" style="width: 266px">
			<div class="col-lg-4 col-md-6 newsgrid1" style="left: 0px; top: 0px; width: 80%">
   <tr><td colspan="2">
                 <asp:Image ID="Image1" runat="server" class="img-fluid"  ImageUrl='<%# Eval("Applogo") %>' alt="news image"  />
				<%--<img src="User temp/images/a1.jpg" alt="news image" class="img-fluid">--%>
				<%--<h4 class="mt-4"><a href="single.html"><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
				                 </a></h4>--%>
               </td>
				
                  
                       
                     </tr>
                     <tr>
                         <td class="auto-style1">
                   
               
               
				<ul class="blog-info mt-2">
					<li class="mr-4">
                       <%-- <span class="fa fa-eye" style="    margin-bottom: 16px;"></span>
                         40 views--%>
                        <asp:LinkButton ID="LinkButton1"  CommandName="view" CommandArgument='<%# Eval("apid") %>' runat="server">Details</asp:LinkButton>
					</li>
					
				</ul> </td> 
                         <td>
                             <li> <asp:LinkButton ID="LinkButton2"  CommandName="view1" CustomParameter='<%# Eval("apid") %>' CommandArgument='<%# Eval("app") %>' OnClick="DownloadFile" runat="server">Download</asp:LinkButton></li></td>
                </tr>
				<%--<a href="single.html" class="read">Read More <span class="fa fa-long-arrow-right"></span></a>--%>
			</div>
		
		</div>	</div>
          </table>
        	 </ItemTemplate>
	
         </asp:DataList>
</section>

   






<%--    <asp:panel runat="server"></asp:panel>--%>

    <asp:panel runat="server" id="panel1"  Visible="False" >
         <section class="contact py-5" id="div" runat="server">
	
	<div class="contact-cont pb-3">
		<div class="container">
			<div class="row mail-w3l-w3pvt-">
				<div class="col-lg-6" style="margin-left: 274px;">
					<div class="w3pvt-info_mail_grid_right" >
						<form action="#" method="post">
                           
                         

							<div class="form-group" style="margin-top: -33px;">
								
                                <asp:Label ID="Label1" runat="server" Font-Bold="true" Text="Label"></asp:Label>
                                <asp:LinkButton ID="LinkButton3" CssClass="btn btn-primary" style="margin-left: -480px;" runat="server" OnClick="LinkButton3_Click">Generate Key</asp:LinkButton>
                                <asp:TextBox ID="txtkey" runat="server" type="text" placeholder="Symmetric key" class="form-control" Font-Bold="True" ForeColor="Black"></asp:TextBox>
                             
							</div>
                           
							
                            <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">View Key</asp:LinkButton>
                             
                            <asp:Button ID="Button1" runat="server" Text="Submit" style="cursor: pointer; outline: none;
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
</section>
    </asp:panel>
     <script type="text/javascript" >

            function success() {
                swal({
                    title: "Key matched",
                    text: "Successfull",
                    icon: "success",
                    button: "OK",
                });
            }
          
        </script>
    <%--<section class="contact py-5" id="div" runat="server">
	
	<div class="contact-cont pb-3">
		<div class="container">
			<div class="row mail-w3l-w3pvt-">
				<div class="col-lg-6" style="margin-left: 274px;">
					<div class="w3pvt-info_mail_grid_right" >
						<form action="#" method="post">
                           
                         

							<div class="form-group" style="margin-top: -33px;">
								
                                <asp:Label ID="Label1" runat="server" Font-Bold="true" Text="Label"></asp:Label>
                                <asp:LinkButton ID="LinkButton3" CssClass="btn btn-primary" style="margin-left: -219px;" runat="server" OnClick="LinkButton3_Click">Generate Key</asp:LinkButton>
                                <asp:TextBox ID="txtkey" runat="server" type="text" placeholder="Symmetric key" class="form-control" Font-Bold="True" ForeColor="Black"></asp:TextBox>
                             
							</div>
                           
							
                            <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">View Key</asp:LinkButton>
                             
                            <asp:Button ID="Button1" runat="server" Text="Submit" style="cursor: pointer; outline: none;
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
</section>--%>

</asp:Content>

