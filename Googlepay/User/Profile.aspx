<%@ Page Title="" Language="C#" MasterPageFile="~/User/userwork.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="User_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section class="inner-banner">
	<div class="container">
		<h3 class="text-center">User Profile</h3>
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
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("date") %>'></asp:Label>
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

