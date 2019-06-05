<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/User/userwork.master" AutoEventWireup="true" CodeFile="mobilemanuals.aspx.cs" Inherits="User_mobilemanuals" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <section class="inner-banner">
	<div class="container">
		<h3 class="text-center">Mobile Manuals</h3>
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

     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" Height="145px" style="margin-left: 222px; margin-top: 44px;" Width="1130px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" >
        <Columns>
            <asp:TemplateField HeaderText="No">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                      <asp:Label ID="Label5" runat="server" Text='<%# Container.DataItemIndex + 1 %>' Font-Bold="True"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="mobile" HeaderText="Mobile" />
            <asp:BoundField DataField="os" HeaderText="Os" />
           
            <%--<asp:BoundField DataField="date" HeaderText="Date" DataFormatString="{0:dd/MM/yyyy}" />--%>
            <%--<asp:BoundField DataField="status" HeaderText="Status" />--%>
            <asp:TemplateField HeaderText="Download">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                     <asp:LinkButton ID="LinkButton1" runat="server" OnClick="DownloadFile" CommandArgument='<%# Eval("booklet") %>'>Download</asp:LinkButton>
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

