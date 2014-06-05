<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LeerMensaje.aspx.cs" Inherits="WebApplication2.LeerMensaje" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Mensaje:
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="mensaje" DataValueField="id_mensaje">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ForoConnectionString %>" SelectCommand="SELECT * FROM [mensaje_privado] WHERE (([id_buzon] = @id_buzon2) AND ([id_mensaje] = @id_mensaje))">
            <SelectParameters>
                <asp:SessionParameter Name="id_buzon2" SessionField="id_buzon" Type="Decimal" />
                <asp:SessionParameter Name="id_mensaje" SessionField="id_mensaje" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        Remitente:
        <asp:DropDownList ID="id_remitente" runat="server" DataSourceID="SqlDataSource1" DataTextField="id_remitente" DataValueField="id_remitente">
        </asp:DropDownList>
        <br />
        Fecha:
        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="fecha_de_envio" DataValueField="id_mensaje">
        </asp:DropDownList>
        <br />
        <br />
        <asp:TextBox ID="mensaje" runat="server" Height="147px" Width="625px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Responder" />
    
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-left: 94px" Text="Volver" />
    
    </div>
    </form>
</body>
</html>
