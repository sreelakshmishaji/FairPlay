<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <%--<script src="sweetalert.min.js"></script>
      <link href="lobibox-master/demo/animate.css" rel="stylesheet" />
<link rel="stylesheet" href="lobibox-master/dist/css/lobibox.min.css">

    <link href="lobibox-master/demo/demo.css" rel="stylesheet" />
   
   
    <link rel="stylesheet" href="lobibox-master/bootstrap/dist/css/lobibox.css">
    <script src="lobibox-master/gruntfile.js"></script>--%>

    <script src="sweetalert.min.js"></script>
    <link href="lobibox-master/demo/animate.css" rel="stylesheet" />
    <link href="lobibox-master/dist/css/lobibox.css" rel="stylesheet" />
    <link href="lobibox-master/dist/css/lobibox.min.css" rel="stylesheet" />
    <link href="lobibox-master/demo/demo.css" rel="stylesheet" />
    <link href="lobibox-master/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="lobibox-master/gruntfile.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
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

          function okk() {

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
                            
                              alert();
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

            function alert() {
                swal({
                    title: "Malware detected",
                    text: "You clicked the button!",
                    icon: "warning",
                    button: "OK",
                });
            }

        </script>

     <script type="text/javascript" >

            function successalert() {
                swal({
                    title: "Booklet Uploaded",
                    text: "You clicked the button!",
                    icon: "success",
                    button: "OK",
                });
            }

        </script>

      <script type="text/javascript" >

            function success() {
                swal({
                    title: "Error Occured",
                    text: "Please try again!",
                    icon: "warning",
                    button: "OK",
                });
            }
          
        </script>
           <script type="text/javascript" >

               function App() {
                swal({
                    title: "Please Check ",
                    text: "It must be an application",
                    icon: "warning",
                    button: "OK",
                });
            }
          
        </script>
          <script src="lobibox-master/bootstrap/dist/js/bootstrap.min.js"></script> <script src="lobibox-master/dist/js/lobibox.min.js"></script>
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
    </form>
</body>
</html>
