<%@ Page Title="" Language="C#" MasterPageFile="~/User/userwork.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="User_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
    <style type="text/css">
        .Star
        {
            background-image: url(../images/Star.gif);
            height: 17px;
            width: 17px;
        }
        .WaitingStar
        {
            background-image: url(../images/WaitingStar.gif);
            height: 17px;
            width: 17px;
        }
        .FilledStar
        {
            background-image: url(../images/FilledStar.gif);
            height: 17px;
            width: 17px;
        }
        .auto-style1 {
            height: 22px;
        }
        .auto-style2 {
            height: 7px;
        }
        .auto-style3 {
            margin-right: 16px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section class="inner-banner">
	<div class="container">
		<h3 class="text-center">Mobile Apps</h3>
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


 <asp:DataList ID="DataList1" runat="server" style="margin-left: 118px;" >
        <ItemTemplate>
            <br />
            <table class="w-100">
                <tr>
                    <td rowspan="2">
                        <asp:Image ID="Image1" runat="server" Height="89px" ImageUrl='<%# Eval("photo") %>' style="border-radius: 50%;" Width="70px" />
                    </td>
                    <td class="auto-style1"></td>
                    <td class="auto-style1">
                        <asp:Label ID="Label8" runat="server" Font-Bold="False" Text='<%# Eval("name") %>'></asp:Label>
                    </td>
                    <td class="auto-style1"></td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style2">
                        <cc1:Rating ID="Rating1" runat="server" AutoPostBack="true" CurrentRating='<%# Eval("AverageRating") %>' EmptyStarCssClass="Star" FilledStarCssClass="FilledStar" Height="26px" StarCssClass="Star" WaitingStarCssClass="WaitingStar" Width="95px">
                        </cc1:Rating>
                    </td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("comment") %>'></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                       

                                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("rid") %>' CommandName="view" style="margin-left: 300px;" OnClick="LinkButton2_Click"><i class="fa fa-reply" style="color:red"></i>
</asp:LinkButton>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        <asp:LinkButton ID="LinkButton6" runat="server" CommandArgument='<%# Eval("rid") %>' CommandName="rate" style="margin-left: 5px;" OnClick="LinkButton6_Click"><i class="fa fa-reply-all"></i>Replay</asp:LinkButton>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>

     <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </cc1:ToolkitScriptManager>
    
 <asp:DataList ID="DataList2" runat="server" style="margin-left: 194px;
    margin-top: -56px;
" CssClass="auto-style3" >
        <ItemTemplate>
            <br />
            <table class="w-100">
                <tr>
                    <td rowspan="2">
                        <asp:Image ID="Image1" runat="server" Height="49px" ImageUrl='<%# Eval("photo") %>' style="border-radius: 50%;" Width="44px" />
                    </td>
                    <td class="auto-style1"></td>
                    <td class="auto-style1">
                        <asp:Label ID="Label8" runat="server" Font-Bold="true" Text='<%# Eval("name") %>'></asp:Label>
                    </td>
                    <td class="auto-style1"></td>
                    <td class="auto-style1"></td>
                </tr>
                <%--<tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style2">
                        <cc1:Rating ID="Rating1" runat="server" AutoPostBack="true" CurrentRating='<%# Eval("AverageRating") %>' EmptyStarCssClass="Star" FilledStarCssClass="FilledStar" Height="26px" StarCssClass="Star" WaitingStarCssClass="WaitingStar" Width="95px">
                        </cc1:Rating>
                    </td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>--%>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label10" style="    margin-left: -52px;" runat="server" Text='<%# Eval("replay") %>'></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <%--<tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("rid") %>' CommandName="view" style="margin-left: 300px;"><i class="fa fa-reply" style="color:red"></i>
                           </asp:LinkButton>
                        <asp:LinkButton ID="LinkButton6" runat="server" CommandArgument='<%# Eval("rid") %>' CommandName="rate" style="margin-left: 45px;" OnClick="LinkButton6_Click"><i class="fa fa-reply-all"></i>Replay</asp:LinkButton>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>--%>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
    
      <div class="monthly-grid">
						 <asp:Panel ID="Panel1" runat="server" BackColor="Silver" Height="354px" Width="716px" style=" margin-left: 177px;     margin-top: -109px;   background-color: #ffffff;">
        <div>

           <br />
    <br />
       <%-- <h3 style="color: #800080">Please Enter Your comment</h3>--%>
    <br />
    
          
                
          
       <%-- your comment   : --%>       <asp:TextBox ID="TextBox1" class="form-control" type="text" placeholder="comment " AutoPostBack="true" runat="server" Height="44px" style="    margin-top: 22px;" TextMode="MultiLine" Width="400px" ></asp:TextBox>
           
               
      <asp:LinkButton ID="LinkButton1" runat="server"   style="    margin-left: 323px;
    margin-top: -427px;" OnClick="LinkButton1_Click"><i class="fa fa-send-o" style="font-size:32px;color:red;font-size: 26px;
    color: #f4f8fb;
    border-radius: 50%;
    background-color: black;
    width: 37px;
    height: 33px;
    /* margin-top: 4px; */
    /* align-content: center; */
    /* top: 55px; */
    position: relative;
    top: -36px;
    margin-left: 85px;"></i></asp:LinkButton>
         
        
           <%--     <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-danger" OnClick="Button1_Click" />--%>
          
   
    </div> 
   <%--    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> --%>
    <br />   
        <br />
     
    </asp:Panel>
					</div>
  

</asp:Content>

