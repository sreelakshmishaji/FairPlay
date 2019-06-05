<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="developerAutherization.aspx.cs" Inherits="Admin_developerAutherization" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 116px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section class="inner-banner">
	<div class="container">
		<h3 class="text-center">Developer Autherization</h3>
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


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" Height="145px" style="margin-top: 44px;" Width="1169px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnRowCommand="GridView1_RowCommand" CssClass="auto-style1">
        <Columns>
            <asp:TemplateField HeaderText="No">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                      <asp:Label ID="Label5" runat="server" Text='<%# Container.DataItemIndex + 1 %>' Font-Bold="True"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="name" HeaderText="Name" />
            <asp:BoundField DataField="email" HeaderText="Email" />
            <asp:BoundField DataField="phone" HeaderText="Phone" />
            <asp:BoundField DataField="address" HeaderText="Address" />
            <asp:BoundField DataField="date" HeaderText="Date Of birth" DataFormatString="{0:dd/MM/yyyy}" />
            <asp:BoundField DataField="status" HeaderText="Status" />
            <asp:TemplateField HeaderText="Autherize">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                     <asp:LinkButton ID="LinkButton1" CommandArgument='<%# Eval("dvid") %>'  CommandName="view"  runat="server"><i class="fa fa-check" style="color:forestgreen ;font-size:25px" aria-hidden="true"></i></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#6c757d" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
</asp:Content>

