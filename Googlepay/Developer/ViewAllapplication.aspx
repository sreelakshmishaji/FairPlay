<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/Developer/developer.master" AutoEventWireup="true" CodeFile="ViewAllapplication.aspx.cs" Inherits="Developer_ViewAllapplication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            height: 31px;
        }
        .auto-style3 {
            height: 85px;
        }
    </style>
     <link href="../User/User temp/css/bootstrap.css" rel='stylesheet' type='text/css' /><!-- bootstrap css -->
    <link href="../User/User temp/css/style.css" rel='stylesheet' type='text/css' /><!-- custom css -->
    <link href="../User/User temp/css/font-awesome.min.css" rel="stylesheet"><!-- fontawesome css -->

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <section class="inner-banner">
	<div class="container">
		<h3 class="text-center">View All Application</h3>
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
    <%--<section class="news py-5" id="news">
	<div class="container py-lg-3">
		<div class="row blog-grids">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" Width="548px">
        <ItemTemplate>
            <div class="col-lg-4 col-md-6 newsgrid1">
                <asp:Image ID="Image1" runat="server" alt="news image"  class="img-fluid" ImageUrl='<%# Eval("Applogo") %>'  Height="235px" Width="250px"/>
           
				
				<ul class="blog-info mt-2">
					<li class="mr-4"><span class="fa fa-eye"></span> 40 views</li>
					<li><span class="fa fa-comments-o"></span> 20 comments</li>
				</ul>
				<a href="single.html" class="read">Read More <span class="fa fa-long-arrow-right"></span></a>
			</div>
           
        </ItemTemplate>
      </asp:DataList>
            </div>
        </div>
        </section>--%>


    <%--<section class="news py-5" id="news">
        <div class="container py-lg-3">
            <div class="row blog-grids">
                <div class="col-lg-4 col-md-6 newsgrid1">
                     <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server"   class="img-fluid" Height="183px" ImageUrl='<%# Eval("Applogo") %>' Width="267px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;
            <br />
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Appname") %>' class="mt-4" Font-Bold="True" Font-Size="Larger"></asp:Label>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="view" CommandArgument='<%# Eval("apid") %>'>More info</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </ItemTemplate>

    </asp:DataList>
			&nbsp;&nbsp;&nbsp;
			</div>
                </div>
            </div>
        </section>--%>
    
<section class="news py-5" id="news">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" style="    margin-left: 135px;" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" >
        

    <ItemTemplate>
	<div class="container py-lg-3" style="width: 88%">
       
            <table class="w-100">
       
		<div class="row blog-grids" style="width: 266px">
			<div class="col-lg-4 col-md-6 newsgrid1" style="left: 0px; top: 0px; width: 80%">
   <tr><td colspan="2">
                 <asp:Image ID="Image1" runat="server" class="img-fluid"  ImageUrl='<%# Eval("Applogo") %>' alt="news image"  />
				<%--<img src="User temp/images/a1.jpg" alt="news image" class="img-fluid">--%>
				<%--<h4 class="mt-4"><a href="single.html"><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
				                 </a></h4>--%>
               </td>
				
                  
                       
                     </tr>
                     <tr>
                         <td class="auto-style1">
                   
               
               
				<ul class="blog-info mt-2">
					<li class="mr-4">
                       <%-- <span class="fa fa-eye" style="    margin-bottom: 16px;"></span>
                         40 views--%>
                       <asp:Label ID="Label1" runat="server" Text='<%# Eval("Appname") %>' class="mt-4" Font-Bold="True" Font-Size="Medium"></asp:Label>					</li>
					
				</ul> </td> 
                         <td>
                             <li> <asp:LinkButton ID="LinkButton1" runat="server" CommandName="view" CommandArgument='<%# Eval("apid") %>'>More info</asp:LinkButton></li></td>
                </tr>
				<%--<a href="single.html" class="read">Read More <span class="fa fa-long-arrow-right"></span></a>--%>
			</div>
		
		</div>	</div>
          </table>
        	 </ItemTemplate>
	
         </asp:DataList>
</section>
    <br />
    <asp:DataList ID="DataList2" runat="server" style="    width: 562px; margin-left: 314px;">
        <ItemTemplate>
            <table class="w-100">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="#CC0000" Text="OS  :-"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("os") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;<asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="#CC0000" Text="Application Uses  :-"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("Appuses") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="#CC0000" Text="Description  :-"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("Appdescription") %>'></asp:Label>
                    </td>
                </tr>
            </table>
            <asp:Image ID="Image2" runat="server" Height="183px" ImageUrl='<%# Eval("Applogo") %>' Width="200px" style="    margin-left: -204px;
    margin-top: -423px;" />
            <br />
            <br />
            <br />
            <br />
        </ItemTemplate>
      </asp:DataList>
   
</asp:Content>

