<%@ Page Language="C#" AutoEventWireup="true" CodeFile="popupz.aspx.cs" Inherits="popupz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../sweetalert.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js" type="text/javascript"></script>
<link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/blitzer/jquery-ui.css"
    rel="stylesheet" type="text/css" />
<script type="text/javascript">

    function success() {
    
        $("#dialog").dialog({
            modal: true,
            autoOpen: false,
            title: "jQuery Dialog",
            width: 1000,
            height: 8000
        });
        //$("#btnShow").click(function () {
            $('#dialog').dialog('open');
       
    };
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <input type="button" id="btnShow" value="Show Popup" />
<div id="dialog" style="display: none" align = "center">
    This is a jQuery Dialog.
</div>
    </div>
     

        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">LinkButton</asp:LinkButton>
     <script type="text/javascript">
        function comnt() {

          

                $(function () {
                    $("#dialog").dialog({
                        modal: true,
                        autoOpen: false,
                        title: "jQuery Dialog",
                        width: 1000,
                        height: 8000
                    });
                    $("#bb").click(function () {
                        $('#dialog').dialog('open');
                    });
                });
          
        };
        
</script>

    </form>
</body>
</html>
