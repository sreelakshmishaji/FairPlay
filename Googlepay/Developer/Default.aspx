<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="lobibox-master/demo/animate.css" rel="stylesheet" />
<link rel="stylesheet" href="lobibox-master/dist/css/lobibox.min.css">
<script src="lobibox-master/bootstrap/dist/js/bootstrap.min.js"></script>
    <link href="lobibox-master/demo/demo.css" rel="stylesheet" />
    <script src="lobibox-master/dist/js/lobibox.min.js"></script>
    <link rel="stylesheet" href="lobibox-master/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="lobibox-master/bootstrap/dist/css/lobibox.css">
    <script src="lobibox-master/gruntfile.js"></script>
     <script src="sweetalert.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <script type="text/javascript" >
        // Confirm
Lobibox.confirm({

});        

// Alert
Lobibox.alert(
  'error|success|warning|info', // Any of the following
  {
 
  }
); 

// Prompt
Lobibox.prompt(
  '', // Any HTML5 input type is valid
  {
  
  }
);  

// Progress
Lobibox.progress({
  //Options
});

// Window
Lobibox.window({
  //Options
});

        </script>
        <script type="text/html">
            Lobibox.base.OPTIONS = {

// DO NOT change this value. 
// Some functionality is depended on it
bodyClass       : 'lobibox-open',

// DO NOT change this object. 
// Some functionality is depended on it
modalClasses : {
    'error'     : 'lobibox-error',
    'success'   : 'lobibox-success',
    'info'      : 'lobibox-info',
    'warning'   : 'lobibox-warning',
    'confirm'   : 'lobibox-confirm',
    'progress'  : 'lobibox-progress',
    'prompt'    : 'lobibox-prompt',
    'default'   : 'lobibox-default',
    'window'    : 'lobibox-window'
},

// This is option how buttons can be shown. 
// What are buttonsAlign option available values
buttonsAlign: ['left', 'center', 'right'],

// You can change the title or class of buttons from here or use the same structure object for button when creating messagebox
// closeOnClick : true will close the messagebox when clicking this type of button. 
// Set it to false not to close messagebox when clicking on it
buttons: {
  ok: {
    'class': 'lobibox-btn lobibox-btn-default',
    text: 'OK',
    closeOnClick: true
  },
cancel: {
    'class': 'lobibox-btn lobibox-btn-cancel',
    text: 'Cancel',
    closeOnClick: true
  },
  yes: {
    'class': 'lobibox-btn lobibox-btn-yes',
    text: 'Yes',
    closeOnClick: true
  },
  no: {
    'class': 'lobibox-btn lobibox-btn-no',
    text: 'No',
    closeOnClick: true
  }
}
};


//Overriding default options
Lobibox.base.OPTIONS = $.extend({}, Lobibox.base.OPTIONS, {
... //override any options except those above which is written "DO NOT change"
});
        </script>
    <%--<div class="progress lobibox-progress-outer">\n\
                <div class="progress-bar progress-bar-danger progress-bar-striped lobibox-progress-element" data-role="progress-text" role="progressbar"></div>\n\
                </div>--%>
           <asp:FileUpload ID="FileUpload1" runat="server" />
        <div style="margin-left: 280px">
            <asp:Button ID="Button2" runat="server" Text="upld" Width="67px" />
        </div>
    <div>
    
        <br />

        <asp:DataList ID="DataList1" runat="server" style="margin-left: -3px;">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" rowspan="6">
                        <asp:Image ID="Image1" runat="server"  style="border-radius: 50%;" Height="97px" Width="110px" ImageUrl='<%# Eval("photo") %>' />
                        <br />
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#CC3300" Text="Email"></asp:Label>
                        &nbsp;&nbsp;
                        <asp:Label ID="Label8" runat="server" Font-Bold="False" Text='<%# Eval("email") %>'></asp:Label>
                        <br />
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#CC3300" Text="Mobile"></asp:Label>
                        &nbsp;<asp:Label ID="Label9" runat="server" Text='<%# Eval("phone") %>'></asp:Label>
                        <br />
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <%--<tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                </tr>--%>
                <%--<tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>--%>
                <%--<tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>--%>
                <%--<tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>--%>
                <%--<tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>--%>
            </table>
        </ItemTemplate>
    </asp:DataList>














        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Button" />
        <br />

            <div class="lobibox-notify lobibox-notify-success animated-fast flipInX" runat="server" id="mybox"  style="width: 400px;display:none;"><div class="lobibox-notify-icon"><i class="glyphicon glyphicon-ok-sign"></i></div><div class="lobibox-notify-body"><div class="lobibox-notify-title">Success<div></div></div><div class="lobibox-notify-msg">Files were successfully uploaded</div></div><span class="lobibox-close">×</span><div class="lobibox-delay-indicator"><div style="width: 62.6667%;"></div></div></div>
    
    </div>

         <script type="text/javascript" >

          function ok() {

              Lobibox.progress({
                  title: 'Please wait',
                  label: 'Uploading files...',
                  buttons: {
                      cancel: "Cancel",
                     
                     
                  },
                  progressTpl: '<div class="progress lobibox-progress-outer">\n\
                <div class="progress-bar progress-bar-danger progress-bar-striped lobibox-progress-element" data-role="progress-text" role="progressbar"></div>\n\
                </div>',
                  onShow: function ($this) {
                      var i = 0;
                      var inter = setInterval(function () {
                          window.console.log(i);
                          if (i > 100) {
                              inter = clearInterval(inter);
                            
                              successalert();
                                  switch (value) {

                                      case "Check":
           
                                         
                                          this.close;
            
                                          break;

                                     
      

                                      default:
         
                                  }
                              
                                 
                          }
                          i = i + 0.1;
                          $this.setProgress(i);
                      }, 10);
                      
                  }
              });

             
          }
</script>
         <script type="text/javascript" >

            function successalert() {
                swal({
                    title: "Application Uploaded",
                    text: "You clicked the button!",
                    icon: "warning",
                    button: "OK",
                });
            }

        </script>

        <%-- <script type="text/javascript" >

            function successalert() {
                swal("3 Minute Depression Test", {
                    buttons: {
                        cancel: "Cancel",
                      
                        Check: true,
                    },
                })
.then((value) => {
    switch (value) {

        case "Check":
           
            window.location.href = "mindmeasure.aspx";
            
            break;

      

        default:
         
    }
});
            }

    </script>--%>

      
        <link href="lobibox-master/demo/animate.css" rel="stylesheet" />
        <script src="lobibox-master/demo/demo.js"></script>
        <script src="lobibox-master/dist/js/lobibox.js"></script>
        <script src="lobibox-master/dist/js/lobibox.min.js"></script>
        <script src="lobibox-master/dist/js/messageboxes.js"></script>
        <script src="lobibox-master/dist/js/messageboxes.min.js"></script>
        <script src="lobibox-master/dist/js/notifications.js"></script>
        <script src="lobibox-master/dist/js/notifications.min.js"></script>
        <script src="lobibox-master/js/lobibox.js"></script>
             <script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
     <script src="lobibox-master/js/notifications.js"></script>
    <script src="lobibox-master/js/messageboxes.js"></script>
    </div>
    </form>
</body>
</html>
