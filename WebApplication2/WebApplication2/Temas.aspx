<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Temas.aspx.cs" Inherits="WebApplication2.Temas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Temas:
        <asp:DropDownList ID="id_tema" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="id_tema">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ForoConnectionString %>" SelectCommand="SELECT [id_tema], [nombre], [descripcion], [id_usuario] FROM [tema] WHERE ([id_categoria] = @id_categoria2)">
            <SelectParameters>
                <asp:SessionParameter Name="id_categoria2" SessionField="id_categoria" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
        Usuario:
        <asp:DropDownList ID="id_usuario" runat="server" DataSourceID="SqlDataSource1" DataTextField="id_usuario" DataValueField="id_usuario">
        </asp:DropDownList>
        <br />
    
    </div>
        <asp:Button ID="Button1" runat="server" style="margin-left: 78px" Text="Comentar" OnClick="Button1_Click" Width="95px" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-left: 77px" Text="Nuevo Tema" Width="116px" />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" style="margin-left: 101px" Text="Eliminar Tema" />
        <br />
        <br />
        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Ver Perfil" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" style="margin-left: 247px" Text="Salir" Width="121px" />
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" style="margin-left: 518px" Text="Buzon Entrada" />
    </form>
</body>
</html>
