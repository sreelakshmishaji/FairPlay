<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="analysis.aspx.cs" Inherits="Admin_analysis" %>
<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <section class="inner-banner">
	<div class="container">
		<h3 class="text-center">Review Filters</h3>
	</div>
</section>
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
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" style="margin-left: 426px; margin-top: 60px;" ForeColor="#333333" GridLines="None" Width="621px"  >
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
           <asp:BoundField DataField="name" HeaderText="User" />
          <%--<asp:TemplateField HeaderText="Logo">
               <EditItemTemplate>
                   <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
               </EditItemTemplate>
               <ItemTemplate>
                   <asp:Image ID="Image1" runat="server" Height="142px" Width="128px" ImageUrl='<%# Eval("Applogo") %>' />
               </ItemTemplate>
           </asp:TemplateField>--%>
           <asp:BoundField DataField="comment" HeaderText="Comment" />
           <%--<asp:TemplateField HeaderText="Check">
               <EditItemTemplate>
                   <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
               </EditItemTemplate>
               <ItemTemplate>
                   <asp:LinkButton ID="LinkButton2" ForeColor="Red" CommandArgument='<%# Eval("apid") %>'  CommandName="view1"   runat="server">Check</asp:LinkButton>
               </ItemTemplate>
           </asp:TemplateField>--%>
  
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

     <div>
        <asp:Chart ID="Chart2" runat="server" Width="651px" Height="368px" style="        
    margin-left: 318px;"  EnableTheming="True" Palette="Chocolate">
    <Titles>
        <asp:Title ShadowOffset="3" Name="Items" IsDockedInsideChartArea="False" />
    </Titles>
    <Legends>
        <asp:Legend Alignment="Center" Docking="Bottom" IsTextAutoFit="False" Name="Default"
            LegendStyle="Row" />
    </Legends>
    <Series>
        <asp:Series Name="Default" ChartType="Spline" YValuesPerPoint="2" />
    </Series>
    <ChartAreas>
        <asp:ChartArea Name="ChartArea1" BorderWidth="0" />
    </ChartAreas>
</asp:Chart>
    </div>

     <asp:Button ID="Button1" runat="server" Text="Comment analysis" style="cursor: pointer;
    outline: none;
    padding: 12px;
    font-size: 9px;
    color: #fff;
    background: #333;
    width: 100%;
    text-transform: uppercase;
    border: none;
    letter-spacing: 2px;
    border-radius: 0px;
    -webkit-border-radius: 0px;
    -o-border-radius: 0px;
    -ms-border-radius: 0px;
    -moz-border-radius: 0px;
    -webkit-transition: 0.5s all;
    -moz-transition: 0.5s all;
    -o-transition: 0.5s all;
    -ms-transition: 0.5s all;
    transition: 0.5s all;     width: 142px;
    margin-left: 643px;
    height: 34px;
    margin-top: 16px;" OnClick="Button1_Click"  />
</asp:Content>

