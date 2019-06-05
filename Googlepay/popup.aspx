<%@ Page Language="C#" AutoEventWireup="true" CodeFile="popup.aspx.cs" Inherits="popup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js" type="text/javascript"></script>
<link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/start/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="sweetalert.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
      <%--  <script type="text/javascript">
    $("[id*=btnModalPopup]").live("click", function () {
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
    });
</script>--%>
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



    <div>
    <div id="modal_dialog" style="display: none;    width: 729px;
    min-height: 0px;
    height: 225px;">
      <asp:DataList ID="DataList1" runat="server" style="margin-left: -3px;">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" rowspan="6">
                        <asp:Image ID="Image1" runat="server"  style="border-radius: 50%;" Height="97px" Width="110px" ImageUrl='<%# Eval("photo") %>' />
                          <br />
                         <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#CC3300" Text="Name"></asp:Label>
                        &nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                        <br />
                        <br />
                         <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#CC3300" Text="Mobile"></asp:Label>
                        &nbsp;<asp:Label ID="Label9" runat="server" Text='<%# Eval("phone") %>'></asp:Label>
                        <br />
                       <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#CC3300" Text="Email"></asp:Label>
                        
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
<asp:Button ID="btnModalPopup" runat="server" Text="Show Modal Popup" OnClick="btnModalPopup_Click" />
    </div>
    </form>
</body>
</html>
