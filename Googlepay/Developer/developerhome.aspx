<%@ Page Title="" Language="C#" MasterPageFile="~/Developer/developer.master" AutoEventWireup="true" CodeFile="developerhome.aspx.cs" Inherits="Developer_developerhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="inner-banner">
	<div class="container">
		<h3 class="text-center">Developer Home</h3>
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
      <div class="what py-5" id="what">
	<div class="container pb-lg-5">
		<div class="row pt-xl-4">
			<div class="col-lg-7 serv_bottom text-center">
				<div class="row mt-lg-5">
					<div class="col-sm-6">
						<div class="bottom-gd">
							<h4 class="my-sm-3 mt-3 mb-2">User Profile</h4>
							<%--<p>Sit amet mattis quam, sit amet exc epteur sint occaecat cupidatat.</p>--%>
                            <a href="Developerprofile.aspx">View Profile </a>
                            
						</div>
					</div>
					<div class="col-sm-6 mt-sm-0 mt-4">
						<div class="bottom-gd">
							<h4 class="my-sm-3 mt-3 mb-2">Mobile Details</h4>
							 <a href="MobileAndOs.aspx">Add Mobile & Os</a><br />
                            <a href="Addmobilebooklet.aspx">Add Mobile Booklet</a>
                           

						</div>
					</div>
				</div>
				<div class="row mt-sm-5 mt-4">
					<div class="col-sm-6">
						<div class="bottom-gd">
							<h4 class="my-sm-3 mt-3 mb-2">Application Details</h4>
							 <a href="AddApplication.aspx">Add Application Details</a><br />
                             <a href="ViewAllapplication.aspx"> View All Applications</a>
						</div>
					</div>
					<%--<div class="col-sm-6 mt-sm-0 mt-4">
						<div class="bottom-gd">
							<h4 class="my-sm-3 mt-3 mb-2">Fraud User & Malware Details </h4>
							<a href="">All Malware Deatails For Mobiles</a><br />
                             <a href="">View All Search Rank Fraud User </a>
						</div>
					</div>--%>
				</div>
				<div class="row mt-sm-5 mt-4">
					<%--<div class="col-sm-6">
						<div class="bottom-gd">
							<h4 class="my-sm-3 mt-3 mb-2">Apps Review </h4>
							<a href="">All Application Positive Behaviour</a><br />
                             <a href="">All Application Negative Behaviour </a>
						</div>
					</div>--%>
					<div class="col-sm-6 mt-sm-0 mt-4">
						<%--<div class="bottom-gd">
							<h4 class="my-sm-3 mt-3 mb-2">Chart Results</h4>
							<a href="">View All Application Hits In Charts</a><br />
                             <a href="">View All Application Download In Charts </a><br />
                             <a href="">View All Application Rating In Charts </a><br />
                             <a href="">View Number Of time Application Fraud In Charts </a>
						</div>--%>
					</div>
				</div>
			</div>
			<div class="col-lg-5 col-sm-6 about-right mt-lg-0 mt-5">
				<img src="developertemp/images/Cloud-Gaming-Cover.jpg" class="img-fluid" alt="" style="    margin-top: 60px;">
                	<img src="developertemp/images/google-apps.jpg" class="img-fluid" alt="">
			</div>
            
		</div>
	</div>
</div>
</asp:Content>

