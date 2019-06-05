<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="mobilemanuals.aspx.cs" EnableEventValidation="false" Inherits="Admin_mobilemanuals" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<%--   <link href="//netdna.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" rel="stylesheet" >
    <link href="../jquery-confirm-master/css/jquery-confirm.css" rel="stylesheet" />--%>
    <link href="../jquery-confirm-master/dist/jquery-confirm.min.css" rel="stylesheet" />
    <link href="../jquery-confirm-master/demo/demo.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <section class="inner-banner">
	<div class="container">
		<h3 class="text-center">Review Filters</h3>
	</div>
</section>
     <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="../jquery-confirm-master/js/jquery-confirm.js"></script>
    <script src="../jquery-confirm-master/dist/jquery-confirm.min.js"></script>
    <script src="../jquery-confirm-master/demo/demo.js"></script>
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
   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" style="margin-left: 426px; margin-top: 60px;" ForeColor="#333333" GridLines="None" Width="621px" OnRowCommand="GridView1_RowCommand">
       <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
       <Columns>
           <asp:TemplateField HeaderText="No">
               <EditItemTemplate>
                   <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
               </EditItemTemplate>
               <ItemTemplate>
                  <asp:Label ID="Label5" runat="server" Text='<%# Container.DataItemIndex + 1 %>' Font-Bold="True"></asp:Label>
               </ItemTemplate>
           </asp:TemplateField>
           <asp:BoundField DataField="mobile" HeaderText="Mobile" />
           <asp:BoundField DataField="os" HeaderText="OS" />
           <asp:BoundField DataField="name" HeaderText="Developername" />
           <asp:TemplateField HeaderText="Booklet">
               <EditItemTemplate>
                   <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
               </EditItemTemplate>
               <ItemTemplate>
                   <asp:LinkButton ID="LinkButton1" runat="server" OnClick="DownloadFile" CommandArgument='<%# Eval("booklet") %>'>Download</asp:LinkButton>
               </ItemTemplate>
           </asp:TemplateField>
            <asp:BoundField DataField="status" HeaderText="Status" />
           <asp:TemplateField HeaderText="Testing">
               <EditItemTemplate>
                   <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
               </EditItemTemplate>
               <ItemTemplate>
                   <asp:LinkButton ID="LinkButton2" CommandArgument='<%# Eval("mbid") %>'  CommandName="view1"   runat="server">Test</asp:LinkButton>
                   <%-- <asp:LinkButton ID="LinkButton3" CommandArgument='<%# Eval("mbid") %>'  CommandName="view2"   runat="server">Malware</asp:LinkButton>--%>
               </ItemTemplate>
           </asp:TemplateField>
       </Columns>
       <EditRowStyle BackColor="#999999" />
       <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
       <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
       <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
       <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
       <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
       <SortedAscendingCellStyle BackColor="#E9E7E2" />
       <SortedAscendingHeaderStyle BackColor="#506C8C" />
       <SortedDescendingCellStyle BackColor="#FFFDF8" />
       <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
   
      <script type="text/javascript" >

          function ok() {

              $.dialog({
                  backgroundDismissAnimation: 'shake',
                  animationBounce: 1.5,
                  animationSpeed: 400,
                  rtl: false,


                  title: 'Affected',
                  content: 'Virus Content'
              });
             
          }


        </script>
     <script type="text/javascript" >

          function okk() {

              $.dialog({
                  backgroundDismissAnimation: 'shake',
                  animationBounce: 1.5,
                  animationSpeed: 400,
                  rtl: false,


                  title: 'Secure',
                  content: 'Virus Free'
              });
             
          }


        </script>
</asp:Content>

