<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Usuario:<asp:TextBox ID="user" runat="server" style="margin-left: 85px"></asp:TextBox>
        <br />
        Contraseña:<asp:TextBox ID="pass" runat="server" style="margin-left: 62px" TextMode="Password"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 107px; margin-top: 24px" Text="Log In" />
        <br />
        <br />
        No tienes cuenta?<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-left: 15px" Text="Sign In" />
    
    </div>
    </form>
</body>
</html>
