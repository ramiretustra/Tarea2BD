<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearUsuario.aspx.cs" Inherits="WebApplication2.CrearUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Usuario:<asp:TextBox ID="user" runat="server" style="margin-left: 160px"></asp:TextBox>
        <br />
        Contraseña:<asp:TextBox ID="pass1" runat="server" style="margin-left: 144px" TextMode="Password"></asp:TextBox>
        <br />
        Confirmar Contraseña:<asp:TextBox ID="pass2" runat="server" style="margin-left: 80px" TextMode="Password"></asp:TextBox>
        <br />
        Fecha de Nacimiento:<asp:TextBox ID="dob" runat="server" style="margin-left: 88px" TextMode="Date"></asp:TextBox>
        <br />
        Sexo:<asp:TextBox ID="sexo" runat="server" style="margin-left: 185px"></asp:TextBox>
        <br />
        Avatar:<asp:TextBox ID="avatar" runat="server" style="margin-left: 175px"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 90px; margin-top: 35px" Text="Crear" Width="77px" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-left: 123px" Text="Cancelar" />
    
    </div>
    </form>
</body>
</html>
