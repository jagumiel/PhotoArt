<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<script runat="server">

    Protected Sub Page_Load(sender As Object, e As EventArgs)

    End Sub
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
Registro
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server">
        <hgroup class="title">
            <h1>Registro</h1>
            <h2><%: ViewData("Message") %></h2>
            </hgroup>
        <p>&nbsp;</p>
<table width="auto" border="1" align="center">
  <tr>
    <td>
        <asp:Label ID="LabelUsuario" runat="server" Text="Usuario:"></asp:Label>
      </td>
    <td>
        <asp:TextBox ID="TB_Usuario" runat="server"></asp:TextBox>
      </td>
  </tr>
  <tr>
    <td>
        <asp:Label ID="LabelPass" runat="server" Text="Contraseña:"></asp:Label>
      </td>
    <td>
        <asp:TextBox ID="TB_Pass" runat="server" TextMode="Password"></asp:TextBox>
      </td>
  </tr>
  <tr>
    <td>
        <asp:Label ID="LabelPass2" runat="server" Text="Repetir Contraseña:"></asp:Label>
      </td>
    <td>
        <asp:TextBox ID="TB_Pass2" runat="server" TextMode="Password"></asp:TextBox>
      </td>
  </tr>
  <tr>
    <td>
        <asp:Label ID="LabelMail" runat="server" Text="E-Mail"></asp:Label>
      </td>
    <td>
        <asp:TextBox ID="TB_Mail" runat="server" TextMode="Email"></asp:TextBox>
      </td>
  </tr>
  <tr>
    <td>
        <asp:Label ID="LabelNombre" runat="server" Text="Nombre"></asp:Label>
      </td>
    <td>
        <asp:TextBox ID="TB_Nombre" runat="server"></asp:TextBox>
      </td>
  </tr>
  <tr>
    <td>
        <asp:Label ID="LabelApellido" runat="server" Text="Apellido"></asp:Label>
      </td>
    <td>
        <asp:TextBox ID="TB_Apellido" runat="server"></asp:TextBox>
      </td>
  </tr>
  <tr>
    <td>
        <asp:Label ID="LabelPregunta" runat="server" Text="Pregunta Secreta"></asp:Label>
      </td>
    <td>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="0">Por qué todo junto va separado y separado va todo junto</asp:ListItem>
            <asp:ListItem Value="1">Qué cuentan las ovejas para poder dormir</asp:ListItem>
            <asp:ListItem Value="2"> Por qué para apagar Windows hay que ir al botón de Inicio</asp:ListItem>
            <asp:ListItem Value="3">Cuál fue el color de tu primer coche</asp:ListItem>
        </asp:DropDownList>
      </td>
  </tr>
  <tr>
    <td style="height: 28px">
        <asp:Label ID="LabelRespuesta" runat="server" Text="Respuesta Secreta:"></asp:Label>
      </td>
    <td style="height: 28px">
        <asp:TextBox ID="TB_Respuesta" runat="server"></asp:TextBox>
      </td>
  </tr>
  <tr>
    <td style="height: 28px">
        <asp:Label ID="LabelAvatar" runat="server" Text="Avatar:"></asp:Label>
      </td>
    <td style="height: 28px">
        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
      </td>
  </tr>
  </table>
    </form>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
