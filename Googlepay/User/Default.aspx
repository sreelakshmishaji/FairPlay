<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/User/userwork.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <section class="inner-banner">
	<div class="container">
		<h3 class="text-center">
          
            Mobile Apps</h3>
	</div>
</section>
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
     <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
&nbsp;<asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click"  />
    
</asp:Content>

