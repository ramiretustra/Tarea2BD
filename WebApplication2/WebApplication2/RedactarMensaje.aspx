<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RedactarMensaje.aspx.cs" Inherits="WebApplication2.RedactarMensaje" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Para:
        <asp:DropDownList ID="id_usuario" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="id_usuario">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ForoConnectionString %>" SelectCommand="SELECT [id_usuario], [nombre] FROM [usuario]"></asp:SqlDataSource>
    
    </div>
        <asp:TextBox ID="mensaje" runat="server" Height="177px" Width="589px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Enviar" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-left: 92px" Text="Volver" />
    </form>
</body>
</html>
