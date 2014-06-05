<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditarPerfil.aspx.cs" Inherits="WebApplication2.EditarPerfil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Contraseña:<asp:TextBox ID="contraseña" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        Repetir Contraseña:<asp:TextBox ID="contraseña2" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        Fecha de Nacimiento:<asp:TextBox ID="fecha" runat="server"></asp:TextBox>
        <br />
        <br />
        Avatar URL:
        <asp:TextBox ID="url" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Editar" Width="50px" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-left: 29px" Text="Salir" />
    
    </div>
    </form>
</body>
</html>
