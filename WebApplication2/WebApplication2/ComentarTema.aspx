<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ComentarTema.aspx.cs" Inherits="WebApplication2.ComentarTema" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Comentarios:
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="mensaje" DataValueField="id_comentario" Height="16px" Width="537px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ForoConnectionString %>" SelectCommand="SELECT [id_comentario], [mensaje] FROM [comentario] WHERE ([id_tema] = @id_tema)">
            <SelectParameters>
                <asp:SessionParameter Name="id_tema" SessionField="id_tema" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
        Comentarios Usuario:
        <asp:DropDownList ID="id_comentariouser" runat="server" DataSourceID="SqlDataSource2" DataTextField="mensaje" DataValueField="id_comentario" Width="486px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ForoConnectionString %>" SelectCommand="SELECT [id_comentario], [mensaje] FROM [comentario] WHERE (([id_tema] = @id_tema) AND ([id_usuario] = @id_usuario))">
            <SelectParameters>
                <asp:SessionParameter Name="id_tema" SessionField="id_tema" Type="Decimal" />
                <asp:SessionParameter Name="id_usuario" SessionField="id_usuario" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <asp:TextBox ID="comentario" runat="server" Height="130px" Width="630px"></asp:TextBox>
        <br />
    
    </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 50px" Text="Comentar" />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="margin-left: 126px" Text="Editar" Width="74px" />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" style="margin-left: 176px" Text="Eliminar" />
        <p>
        <asp:Button ID="Button2" runat="server" style="margin-left: 257px" Text="Volver" Width="75px" OnClick="Button2_Click" />
        </p>
    </form>
</body>
</html>
