<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuzonEntrada.aspx.cs" Inherits="WebApplication2.BuzonEntrada" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Mensaje :<asp:DropDownList ID="id_mensaje" runat="server" DataSourceID="SqlDataSource2" DataTextField="mensaje" DataValueField="id_mensaje">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ForoConnectionString %>" SelectCommand="SELECT * FROM [mensaje_privado] WHERE ([id_buzon] = @id_buzon)">
            <SelectParameters>
                <asp:SessionParameter Name="id_buzon" SessionField="id_buzon" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
        Remitente:<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="id_remitente" DataValueField="id_mensaje">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ForoConnectionString %>" SelectCommand="SELECT [id_mensaje], [id_remitente], [id_buzon], [leido], [mensaje], [fecha_de_envio] FROM [mensaje_privado] WHERE ([id_buzon] = @id_buzon)">
            <SelectParameters>
                <asp:Parameter DefaultValue="2" Name="id_buzon" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        Fecha de Envio:<asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource2" DataTextField="fecha_de_envio" DataValueField="id_mensaje">
        </asp:DropDownList>
        <br />
        <br />
        Leido:
        <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource2" DataTextField="leido" DataValueField="id_mensaje">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Leer" style="height: 26px" />
    
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="margin-left: 56px" Text="Redactar" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-left: 57px" Text="Salir" />
    
    </div>
    </form>
</body>
</html>
