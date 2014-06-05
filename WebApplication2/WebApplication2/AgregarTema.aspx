<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarTema.aspx.cs" Inherits="WebApplication2.AgregarTema" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Nombre:<asp:TextBox ID="nombre" runat="server" style="margin-left: 97px"></asp:TextBox>
        <br />
        Descripcion:<asp:TextBox ID="descripcion" runat="server" style="margin-left: 75px"></asp:TextBox>
        <br />
        Mensaje:<asp:TextBox ID="mensaje" runat="server" style="margin-left: 96px"></asp:TextBox>
        <br />
        Privacidad:<asp:RadioButton ID="Privada" runat="server" OnCheckedChanged="Privada_CheckedChanged" Text="Privada" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="Publica" runat="server" Text="Publica" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 67px" Text="Agregar" Width="56px" />
        <asp:Button ID="Button2" runat="server" style="margin-left: 90px" Text="Cancelar" />
    
    </div>
    </form>
</body>
</html>
