<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VerPerfil.aspx.cs" Inherits="WebApplication2.VerPerfil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Nombre:<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="id_usuario">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ForoConnectionString %>" SelectCommand="SELECT * FROM [usuario] WHERE ([id_usuario] = @id_usuario2)">
            <SelectParameters>
                <asp:SessionParameter Name="id_usuario2" SessionField="id_usuario2" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        Edad:<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="fecha_nacimiento" DataValueField="id_usuario">
        </asp:DropDownList>
        <br />
        <br />
        Sexo:<asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="sexo" DataValueField="id_usuario">
        </asp:DropDownList>
        <br />
        <br />
        Numero de Comentarios:<asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource1" DataTextField="cantidad_comentarios" DataValueField="id_usuario">
        </asp:DropDownList>
        <br />
        <br />
        Fecha de Registro:<asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource1" DataTextField="fecha_registro" DataValueField="id_usuario">
        </asp:DropDownList>
        <br />
        <br />
        Temas:<asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource2" DataTextField="nombre" DataValueField="id_tema">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ForoConnectionString %>" SelectCommand="SELECT * FROM [tema] WHERE ([id_usuario] = @id_usuario) ORDER BY [id_tema] DESC">
            <SelectParameters>
                <asp:SessionParameter Name="id_usuario" SessionField="id_usuario2" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        Comentarios:<asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="SqlDataSource3" DataTextField="id_tema" DataValueField="id_comentario">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ForoConnectionString %>" SelectCommand="SELECT TOP 5 * FROM [comentario] WHERE ([id_usuario] = @id_usuario) ORDER BY [id_comentario] DESC">
            <SelectParameters>
                <asp:SessionParameter Name="id_usuario" SessionField="id_usuario2" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Salir" />
    </form>
</body>
</html>
