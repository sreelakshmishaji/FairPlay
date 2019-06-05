﻿<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/Developer/developer.master" AutoEventWireup="true" CodeFile="AddApplication.aspx.cs" Inherits="Developer_AddApplication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      

      <script src="../sweetalert.min.js"></script>
      <link href="../lobibox-master/demo/animate.css" rel="stylesheet" />
<link rel="stylesheet" href="../lobibox-master/dist/css/lobibox.min.css">

    <link href="../lobibox-master/demo/demo.css" rel="stylesheet" />
   
   
    <link rel="stylesheet" href="../lobibox-master/bootstrap/dist/css/lobibox.css">
    <script src="../lobibox-master/gruntfile.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <section class="inner-banner">
	<div class="container">
		<h3 class="text-center">Add Application</h3>
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
                              <asp:Label ID="Label3" runat="server" Font-Bold="true" Text="Mobile" style="    margin-left: -220px;"></asp:Label>
							<div class="form-group" style="    margin-top: -33px;">
								<%--<input type="text" name="Name" class="form-control" placeholder="Enter Your Name" required="">--%>
                                <asp:DropDownList ID="DropDownList1" AutoPostBack="true" runat="server" placeholder="Mobile" type="text" class="form-control" style="outline: none;
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
    background: #f4f8fb;" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                  
                                </asp:DropDownList>

							</div>
                            <asp:Label ID="Label4" runat="server" Font-Bold="true" Text="Mobile Os" style="    margin-left: -220px;"></asp:Label>
							<div class="form-group" style="margin-top: -33px;">
								<%--<input type="email" name="Email" class="form-control" placeholder="Your Email Id" required="">--%>
                                <asp:TextBox ID="txtos" runat="server" type="text" placeholder="Mobile Os" class="form-control" Font-Bold="True" ForeColor="Black"></asp:TextBox>
                             
                              <%--  <asp:FileUpload ID="FileUpload1"  type="text" class="form-control" runat="server" />--%>

							</div>
                            <asp:Label ID="Label5" runat="server" Font-Bold="true" Text="Application Name" style="    margin-left: -220px;"></asp:Label>
							<div class="form-group" style="margin-top: -33px;">
								<%--<input type="text" name="phone" class="form-control" placeholder="Phone Number" required="">--%>
                                   <asp:TextBox ID="txtappname" runat="server" type="text" placeholder="Application Name" class="form-control"></asp:TextBox>
							</div>
                             <asp:Label ID="Label6" runat="server" Font-Bold="true" Text="Application Uses" style="    margin-left: -220px;"></asp:Label>
							<div class="form-group" style="margin-top: -33px;">
								   <asp:TextBox ID="txtAppuses" runat="server" type="text" placeholder="Application Uses" class="form-control"></asp:TextBox>
							</div>
                           <asp:Label ID="Label7" runat="server" Font-Bold="true" Text="Application Description" style="    margin-left: -220px;"></asp:Label>
							<div class="form-group" style="margin-top: -33px;">
								   <asp:TextBox ID="txtAppdesc" runat="server" type="text" placeholder="Application Description" class="form-control"></asp:TextBox>
							</div>
                            <asp:Label ID="Label1" runat="server" Font-Bold="true" Text="Logo" style="    margin-left: -220px;"></asp:Label>
                             <div class="form-group" style="    margin-top: -33px;">
                                 
                                 <asp:FileUpload ID="FileUpload1" type="text" class="form-control" placeholder="Application Logo"  runat="server" />
							</div>
                             <asp:Label ID="Label2" runat="server" Font-Bold="true" Text="Application" style="    margin-left: -220px;"></asp:Label>
                             <div class="form-group" style="    margin-top: -33px;">
								    <asp:FileUpload ID="FileUpload2" type="text" class="form-control" placeholder="Application "  runat="server" />
							</div>
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
      <script type="text/javascript" >

          function ok() {

              Lobibox.progress({
                  title: 'Please wait',
                  label: 'Scanning files...',
                  buttons: {
                      cancel: "Cancel",

                     
                  },
                  progressTpl: '<div class="progress lobibox-progress-outer">\n\
                <div class="progress-bar progress-bar-danger progress-bar-striped lobibox-progress-element" data-role="progress-text" role="progressbar"></div>\n\
                </div>',
                  onShow: function ($this) {
                      var i = 0;
                      var inter = setInterval(function () {
                          window.console.log(i);
                          if (i > 100) {
                              inter = clearInterval(inter);
                            
                              successalert();
                                  switch (value) {

                                      case "Check":
           
                                         
                                          this.close;
            
                                          break;

                                     
      

                                      default:
         
                                  }
                              
                                 
                          }
                          i = i + 0.1;
                          $this.setProgress(i);
                      }, 10);
                      
                  }
              });

             
          }
</script>

      <script type="text/javascript" >

          function okk() {

              Lobibox.progress({
                  title: 'Please wait',
                  label: 'Scanning files...',
                  buttons: {
                      cancel: "Cancel",

                     
                  },
                  progressTpl: '<div class="progress lobibox-progress-outer">\n\
                <div class="progress-bar progress-bar-danger progress-bar-striped lobibox-progress-element" data-role="progress-text" role="progressbar"></div>\n\
                </div>',
                  onShow: function ($this) {
                      var i = 0;
                      var inter = setInterval(function () {
                          window.console.log(i);
                          if (i > 100) {
                              inter = clearInterval(inter);
                            
                              alert();
                                  switch (value) {

                                      case "Check":
           
                                         
                                          this.close;
            
                                          break;

                                     
      

                                      default:
         
                                  }
                              
                                 
                          }
                          i = i + 0.1;
                          $this.setProgress(i);
                      }, 10);
                      
                  }
              });

             
          }
</script>
       







     <script type="text/javascript" >

            function alert() {
                swal({
                    title: "Malware detected",
                    text: "Caution!",
                    icon: "warning",
                    button: "OK",
                });
            }

        </script>

     <script type="text/javascript" >

            function successalert() {
                swal({
                    title: "Application Uploaded",
                    text: "Malware Free!",
                    icon: "success",
                    button: "OK",
                });
            }

        </script>

      <script type="text/javascript" >

            function success() {
                swal({
                    title: "Error Occured",
                    text: "Please try again!",
                    icon: "warning",
                    button: "OK",
                });
            }
          
        </script>
           <script type="text/javascript" >

               function App() {
                swal({
                    title: "Please Check ",
                    text: "It must be an application",
                    icon: "warning",
                    button: "OK",
                });
            }
          
        </script>
        <script src="../lobibox-master/bootstrap/dist/js/bootstrap.min.js"></script> <script src="../lobibox-master/dist/js/lobibox.min.js"></script>
    <link href="../lobibox-master/demo/animate.css" rel="stylesheet" />
        <script src="../lobibox-master/demo/demo.js"></script>
        <script src="../lobibox-master/dist/js/lobibox.js"></script>
        <script src="../lobibox-master/dist/js/lobibox.min.js"></script>
        <script src="../lobibox-master/dist/js/messageboxes.js"></script>
        <script src="../lobibox-master/dist/js/messageboxes.min.js"></script>
        <script src="../lobibox-master/dist/js/notifications.js"></script>
        <script src="../lobibox-master/dist/js/notifications.min.js"></script>
        <script src="../lobibox-master/js/lobibox.js"></script>
             <script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
     <script src="../lobibox-master/js/notifications.js"></script>
    <script src="../lobibox-master/js/messageboxes.js"></script>
</asp:Content>

