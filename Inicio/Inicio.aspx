<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Inicio.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <link href="Estilos.css" rel="stylesheet" />
    <form id="form1" runat="server">
        <div id="buscador">
            <asp:TextBox runat="server" ID="txtBuscar"></asp:TextBox>
            <asp:Button runat="server" ID="btnBuscar" Text="Buscar Noticia" OnClick="btnbuscar_Click" />
            <br />
        </div>
        <div id="contenedor">
            <table>
                <tr>
                    <td>
                        <asp:Label runat="server" ID="lblTitulo">Aqui va el titulo </asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" ID="lblAutor">Aqui va el autor </asp:Label>
                    </td>
                </tr>
                
                 <tr>
                    <td>
                        <asp:Label runat="server" ID="lblDescripcion">Aqui va la descripcion </asp:Label>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:image runat="server" ID="imgConsumo"> </asp:image>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label runat="server" ID="lblFecha">Aqui va la fecha </asp:Label>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label runat="server" ID="lblContenido">Aqui va el contenido </asp:Label>
                    </td>
                </tr>
            </table>
            <div id="contenedorBotones">
                <table>
                    <tr>
                        <td>
                            <asp:Button runat="server" ID="btnBack" Text="<" />
                        </td>
                        <td>
                            <asp:Label runat="server" ID="lblActual">Actual</asp:Label>
                            <label>de</label>
                            <asp:Label runat="server" ID="lblTotal">Total</asp:Label>
                        </td>
                        <td>
                            <asp:Button runat="server" ID="btnForward" Text=">" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
