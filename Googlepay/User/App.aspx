<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/User/userwork.master" AutoEventWireup="true" CodeFile="App.aspx.cs" Inherits="User_App" %>

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
        </style>
    <script src="../sweetalert.min.js"></script>
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

     <asp:DataList ID="DataList2" runat="server" style="    width: 562px; margin-left: 314px;    margin-top: 55px;">
        <ItemTemplate>
            <table class="w-100">
                  <tr>
                    <td>
                         <asp:Label ID="Label1" runat="server" Font-Bold="true" style="    margin-left: -156px;
    font-size: larger;color: #093394;" Text='<%# Eval("Appname") %>'></asp:Label>
                    </td>
                </tr>
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
              
                  <tr>
                      <td>
                          <cc1:Rating ID="Rating1" runat="server" AutoPostBack="true" CurrentRating='<%# Eval("AverageRating") %>' EmptyStarCssClass="Star" FilledStarCssClass="FilledStar" StarCssClass="Star" WaitingStarCssClass="WaitingStar">
                          </cc1:Rating>
                          &nbsp;<br />
                          <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="#CC0000" Text="Downloads :-"></asp:Label>
                          &nbsp;
                          <asp:Label ID="Label12" runat="server" Font-Bold="True" Text='<%# Eval("download") %>'></asp:Label>
                      </td>
                  </tr>
            </table>
            
            <asp:Image ID="Image2" runat="server" Height="183px" ImageUrl='<%# Eval("Applogo") %>' Width="200px" style="    margin-left: -204px;
    margin-top: -376px;" />
           
            <br />
            <br />
            <br />
            <br />
        </ItemTemplate>
      </asp:DataList>
    <asp:LinkButton ID="LinkButton2" CssClass="btn btn-primary" style="    margin-left: 736px; margin-top: -145px;" runat="server" OnClick="LinkButton2_Click">Add Review</asp:LinkButton>
    <asp:LinkButton ID="LinkButton4" CssClass="btn btn-primary" style="        margin-left: 506px;
    margin-top: -187px;" runat="server" OnClick="LinkButton4_Click1" >View Comments</asp:LinkButton>
     <asp:LinkButton ID="LinkButton3" CssClass="btn btn-primary" style="         margin-left: -338px;
    margin-top: -187px;" runat="server" OnClick="LinkButton3_Click" >Recommend</asp:LinkButton>
    <asp:Label ID="Label8" runat="server" style="    margin-left: -542px; font-size: larger;" Font-Bold="true" Text="Label"></asp:Label>
    <asp:Label ID="Label9" runat="server" style="   margin-left: -403px; font-size: larger;" Font-Bold="true" Text="Label"></asp:Label>


      <div class="monthly-grid">
						 <asp:Panel ID="Panel1" runat="server" BackColor="Silver" Height="354px" Width="716px" style=" margin-left: 177px;   background-color: #ffffff;">
        <div>

           <br />
    <br />
        <h3 style="color: #800080">Please Enter Your Feedback Comment</h3>
    <br />
        
         your rating  :<cc1:Rating ID="Rating2" runat="server"  EmptyStarCssClass="Star" FilledStarCssClass="FilledStar" OnChanged="Rating2_Changed"  StarCssClass="Star" WaitingStarCssClass="WaitingStar" >
                </cc1:Rating>
    <br />
          
                
          
        your comment   :        <asp:TextBox ID="TextBox1" class="form-control" type="text" placeholder="comment " AutoPostBack="true" runat="server" Height="94px" TextMode="MultiLine" Width="400px" ></asp:TextBox>
           
           
           <br />
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"  CssClass="btn btn-danger" style="    margin-left: 197px;
    margin-top: 8px;">Submit</asp:LinkButton>
           <%--     <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-danger" OnClick="Button1_Click" />--%>
          
   
    </div> 
   <%--    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> --%>
    <br />   
        <br />
     <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </cc1:ToolkitScriptManager>
    </asp:Panel>
					</div>

    <br />
    <%--<asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <table class="w-100">
                <tr>
                    <td>
                        &nbsp;</td>
                    <td class="text-center">
                        &nbsp;</td>
                    <td class="text-center">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" ForeColor="Blue" Text='<%# Eval("name") %>'></asp:LinkButton>
                    </td>
                    <td class="text-center">
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("comment") %>'></asp:Label>
                    </td>
                    <td class="text-center">
                        <cc1:Rating ID="Rating1" runat="server" AutoPostBack="true" CurrentRating='<%# Eval("AverageRating") %>' EmptyStarCssClass="Star" FilledStarCssClass="FilledStar" StarCssClass="Star" WaitingStarCssClass="WaitingStar">
                        </cc1:Rating>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>--%>

   <%-- <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" Height="145px" style="margin-left: 222px; margin-top: -49px;" Width="903px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnRowCommand="GridView1_RowCommand" >
        <Columns>
            <asp:TemplateField HeaderText="No">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                      <asp:Label ID="Label5" runat="server" Text='<%# Container.DataItemIndex + 1 %>' Font-Bold="True"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                     <asp:LinkButton ID="LinkButton1" runat="server"  CommandArgument='<%# Eval("uid") %>' CommandName="data" Text='<%# Eval("name") %>'></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
          
           

             <asp:TemplateField HeaderText="Comment">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("comment") %>'></asp:Label>
                   
                     
                    
                </ItemTemplate>
            </asp:TemplateField>
           
         
            <asp:TemplateField HeaderText="Replay">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton6" runat="server"  CommandArgument='<%# Eval("rid") %>' CommandName="rate" ><i class="fa fa-reply" aria-hidden="true"></i></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Rating">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                     <cc1:Rating ID="Rating1" runat="server" AutoPostBack="true" CurrentRating='<%# Eval("AverageRating") %>' EmptyStarCssClass="Star" FilledStarCssClass="FilledStar" StarCssClass="Star" WaitingStarCssClass="WaitingStar">
                        </cc1:Rating>
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
    </asp:GridView>--%>

     <asp:DataList ID="DataList1" runat="server" style="    margin-left: 303px;
    margin-top: -89px;" OnItemCommand="DataList1_ItemCommand">
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
                                                    <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("rid") %>'  CommandName="view" style="margin-left: 300px;"><i class="fa fa-reply" style="color:red"></i>
</asp:LinkButton>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("dg") %>'></asp:Label>
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

     <asp:DataList ID="DataList3" runat="server" style="margin-left: 404px;
    margin-top: -56px;" CssClass="auto-style3" >
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
               
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label10" style="    margin-left: -52px;" runat="server" Text='<%# Eval("replay") %>'></asp:Label>
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
    
      <div class="monthly-grid">
						 <asp:Panel ID="Panel2" runat="server" BackColor="Silver" Height="354px" Width="716px" style=" margin-left: 373px;     margin-top: -109px;   background-color: #ffffff;">
        <div>

           <br />
    <br />
      
    <br />
    
          
                
          
       <asp:TextBox ID="TextBox4" class="form-control" type="text" placeholder="comment " AutoPostBack="true" runat="server" Height="44px" style="    margin-top: 22px;" TextMode="MultiLine" Width="400px" ></asp:TextBox>
           
               
      <asp:LinkButton ID="LinkButton5" runat="server"   style="    margin-left: 323px;
    margin-top: -427px;" OnClick="LinkButton5_Click" ><i class="fa fa-send-o" style="font-size:32px;color:red;font-size: 26px;
    color: #f4f8fb;
    border-radius: 50%;
    background-color: black;
    width: 37px;
    height: 33px;
   
    position: relative;
    top: -36px;
    margin-left: 85px;" ></i></asp:LinkButton>
         
        
       
          
   
    </div> 

    <br />   
        <br />
     
    </asp:Panel>
					</div>














     <script type="text/javascript" >

            function successalert() {
                swal({
                    title: "Successfully Rated",
                    text: "You clicked the button!",
                    icon: "success",
                    button: "OK",
                });
            }

        </script>
</asp:Content>

