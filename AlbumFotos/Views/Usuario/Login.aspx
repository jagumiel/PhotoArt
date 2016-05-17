<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of AlbumFotos.Usuarios)" %>

<script runat="server">

    Protected Sub BotonLogin_Click(sender As Object, e As EventArgs)
        MsgBox("Hola")
    End Sub
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
Login
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<form id="form1" runat="server">
<h2>Login</h2>
        <p><table width="auto" border="1" align="center">
  <tr>
    <td>
        <asp:Label ID="LabelMail" runat="server" Text="E-mail:"></asp:Label>
      </td>
    <td>
                <div class="editor-field">
            <%: Html.EditorFor(Function(model) model.email) %>
            <%: Html.ValidationMessageFor(Function(model) model.email) %>
        </div>
      </td>
  </tr>
  <tr>
    <td>
        <asp:Label ID="LabelPass" runat="server" Text="Contraseña:"></asp:Label>
      </td>
    <td>

        <div class="editor-field">
            <%: Html.PasswordFor(Function(model) model.pass)%>
            <%: Html.ValidationMessageFor(Function(model) model.pass) %>
        </div>
      </td>
  </tr>
  <tr>
    <td colspan="2" style="text-align: center">
        <input type="submit" value="Login" /></td>
  </tr>
</table></p>

    </form>




</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
