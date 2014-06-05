<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="WebApplication2.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Categorias:
        <asp:DropDownList ID="id_categoria" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="id_categoria">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ForoConnectionString %>" SelectCommand="SELECT [id_categoria], [nombre] FROM [categoria]"></asp:SqlDataSource>
        <br />
    
    </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 69px" Text="Ir a Categoria" />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="margin-left: 221px" Text="Eliminar" Width="99px" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-left: 235px" Text="Log Out" Width="108px" />
        <p>
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Inbox" />
        </p>
    </form>
</body>
</html>
