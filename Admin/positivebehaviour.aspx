<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="positivebehaviour.aspx.cs" Inherits="Admin_positivebehaviour" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="../sweetalert.min.js"></script>
     <link href="../jquery-confirm-master/dist/jquery-confirm.min.css" rel="stylesheet" />
    <link href="../jquery-confirm-master/demo/demo.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <section class="inner-banner">
	<div class="container">
		<h3 class="text-center">Application analysis</h3>
	</div>
</section>
<!-- //inner banner -->
     <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="../jquery-confirm-master/js/jquery-confirm.js"></script>
    <script src="../jquery-confirm-master/dist/jquery-confirm.min.js"></script>
    <script src="../jquery-confirm-master/demo/demo.js"></script>
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
     <script type="text/javascript" >

          function okk() {

              $.dialog({
                  backgroundDismissAnimation: 'shake',
                  animationBounce: 1.5,
                  animationSpeed: 400,
                  rtl: false,


                  title: 'No Comments',
                  content: 'Check another'
              });
             
          }


        </script>

   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" style="margin-left: 426px; margin-top: 60px;" ForeColor="#333333" GridLines="None" Width="621px" OnRowCommand="GridView1_RowCommand" >
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
           <asp:BoundField DataField="Appname" HeaderText="Application" />
          <asp:TemplateField HeaderText="Logo">
               <EditItemTemplate>
                   <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
               </EditItemTemplate>
               <ItemTemplate>
                   <asp:Image ID="Image1" runat="server" Height="142px" Width="128px" ImageUrl='<%# Eval("Applogo") %>' />
               </ItemTemplate>
           </asp:TemplateField>
           <asp:BoundField DataField="name" HeaderText="Developername" />
           <asp:TemplateField HeaderText="Check">
               <EditItemTemplate>
                   <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
               </EditItemTemplate>
               <ItemTemplate>
                   <asp:LinkButton ID="LinkButton2" ForeColor="Red" CommandArgument='<%# Eval("apid") %>'  CommandName="view1"   runat="server">Check</asp:LinkButton>
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
   


</asp:Content>

