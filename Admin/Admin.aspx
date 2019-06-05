<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="inner-banner">
	<div class="container">
		<h3 class="text-center">Admin Home</h3>
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
    <div class="what py-5" id="what">
	<div class="container pb-lg-5">
		<div class="row pt-xl-4">
			<div class="col-lg-7 serv_bottom text-center">
				<div class="row mt-lg-5">
					<div class="col-sm-6">
						<div class="bottom-gd">
							<h4 class="my-sm-3 mt-3 mb-2">Users & Autherization</h4>
							<%--<p>Sit amet mattis quam, sit amet exc epteur sint occaecat cupidatat.</p>--%>
                            <a href="developerAutherization.aspx">View App Developers & Authorize</a><br />
                            <a href="UserAutherisation.aspx">View Users & Authorize</a>
						</div>
					</div>
					<div class="col-sm-6 mt-sm-0 mt-4">
						<div class="bottom-gd">
							<h4 class="my-sm-3 mt-3 mb-2">Apps Operations</h4>
							 <a href="Reviewfilters.aspx">Add Review Filters</a><br />
                            <a href="mobilemanuals.aspx">View All Mobile Manuals</a><br />
                             <%--<a href="">View All Uploaded Apps with Rank & Rating Details</a>--%>

						</div>
					</div>
				</div>
				<div class="row mt-sm-5 mt-4">
					<div class="col-sm-6">
						<div class="bottom-gd">
							<h4 class="my-sm-3 mt-3 mb-2">More Operations</h4>
							 <a href="viewcomments.aspx">View All Apps With Review,Co Review  Details</a><br />
                             <a href="symmetrickeyrequests.aspx"> View Symmetric Key Requests</a>
						</div>
					</div>
					<div class="col-sm-6 mt-sm-0 mt-4">
						<div class="bottom-gd">
							<h4 class="my-sm-3 mt-3 mb-2">Fraud User & Malware Details </h4>
							<a href="malware.aspx">All Malware Deatails For Mobiles</a><br />
                             <a href="viewfraud.aspx">View All Search Rank Fraud User </a>
						</div>
					</div>
				</div>
				<div class="row mt-sm-5 mt-4">
					<div class="col-sm-6">
						<div class="bottom-gd">
							<h4 class="my-sm-3 mt-3 mb-2">Apps Review </h4>
							<a href="positivebehaviour.aspx">All Application  Behaviour</a><br />
                             <%--<a href="">All Application Negative Behaviour </a>--%>
						</div>
					</div>
					<div class="col-sm-6 mt-sm-0 mt-4">
						<div class="bottom-gd">
							<h4 class="my-sm-3 mt-3 mb-2">Chart Results</h4>
							<%--<a href="">View All Application Hits In Charts</a>--%><br />
                             <a href="downloadcountgraph.aspx">View All Application Download In Charts </a><br />
                             <a href="averageratinggraph.aspx">View All Application Rating In Charts </a><br />
                             <a href="Fraudchart.aspx">View Number Of time Application Fraud In Charts </a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-5 col-sm-6 about-right mt-lg-0 mt-5">
				<img src="Admintemp/images/app-development-services.png" class="img-fluid" alt="" style="    margin-top: 60px;">
                	<img src="Admintemp/images/Play_store_ANDROIDPIT-w782.jpg" class="img-fluid" alt="">
			</div>
            
		</div>
	</div>
</div>
</asp:Content>

