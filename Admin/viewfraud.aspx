<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" EnableEventValidation="false" CodeFile="viewfraud.aspx.cs" Inherits="Admin_viewfraud" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="../sweetalert.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js" type="text/javascript"></script>
<link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/start/jquery-ui.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section class="inner-banner">
	<div class="container">
		<h3 class="text-center">Fraud Details</h3>
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
      <section class="contact py-5">
	
	<div class="contact-cont pb-3">
		<div class="container">
			<div class="row mail-w3l-w3pvt-">
				<div class="col-lg-6" style="margin-left: 274px;">
					<div class="w3pvt-info_mail_grid_right">
						<form action="#" method="post">
                              <asp:Label ID="Label3" runat="server" Font-Bold="true" Text="Fraud" style="    margin-left: -220px;"></asp:Label>
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
    background: #f4f8fb;" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"   >
                                    <asp:ListItem>select</asp:ListItem>
                                    <asp:ListItem>Recommend</asp:ListItem>
                                    <asp:ListItem>Download</asp:ListItem>
                                     <asp:ListItem>Rating & comment</asp:ListItem>
                                  
                                </asp:DropDownList>
                                <%--<asp:Label ID="lblIPAddress" runat="server" Text="Label"></asp:Label>--%>
							</div>
                           
						
						</form>
					</div>
				</div>
			
			</div>
		</div>
	</div>
	
</section>
      <script type="text/javascript" >

             function success() {
                 
                     $("#modal_dialog").dialog({
                         title: "Details",
                         buttons: {
                             Close: function () {
                                 $(this).dialog('close');
                             }
                         },
                         modal: true
                     });
                         return false;
                   };
        </script>

     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" OnRowCommand="GridView1_RowCommand" style="margin-left: 229px; " ForeColor="#333333" GridLines="None" Width="914px" Height="221px"   >
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
             <asp:TemplateField HeaderText="User">
               <EditItemTemplate>
                   <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
               </EditItemTemplate>
               <ItemTemplate>
                  <asp:LinkButton ID="btnDelete" CommandArgument='<%# Eval("uid") %>' Text='<%# Eval("name") %>'    CommandName="view1"   runat="server" ForeColor="#CC0000" ></asp:LinkButton>
               </ItemTemplate>
           </asp:TemplateField>
           <asp:BoundField DataField="Appname" HeaderText="Application Name" />
            <asp:BoundField DataField="date" HeaderText="Date"  DataFormatString="{0:dd/MM/yyyy}" />
           <asp:BoundField DataField="time" HeaderText="Time" />
           <asp:BoundField DataField="ip" HeaderText="Ip No" />
               
          
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
    <div id="modal_dialog" style="display: none;    width: 729px;
    min-height: 0px;
    height: 225px;">
      <asp:DataList ID="DataList1" runat="server" style="margin-left: -3px;">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" rowspan="6">
                        <asp:Image ID="Image2" runat="server"  style="border-radius: 50%;" Height="97px" Width="110px" ImageUrl='<%# Eval("photo") %>' />
                          <br />
                         <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#CC3300" Text="Name"></asp:Label>
                        &nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                        <br />
                        <br />
                         <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#CC3300" Text="Mobile"></asp:Label>
                        &nbsp;<asp:Label ID="Label9" runat="server" Text='<%# Eval("phone") %>'></asp:Label>
                        <br />
                       <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="#CC3300" Text="Email"></asp:Label>
                        
                        <asp:Label ID="Label8" runat="server" Font-Bold="False" Text='<%# Eval("email") %>'></asp:Label>
                        <br />
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
               
            </table>
        </ItemTemplate>
    </asp:DataList>
</div>
</asp:Content>

