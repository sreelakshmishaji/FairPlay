<%@ Page Language="C#" AutoEventWireup="true" CodeFile="antivrs.aspx.cs" Inherits="antivrs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <div style="margin-left: 280px">
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="upld" Width="67px" />
        </div>
    <div>
    
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Button" style="height: 26px" />
        <br />
    
    </div>
    </form>
</body>
</html>
