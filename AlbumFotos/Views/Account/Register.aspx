<%@ Page Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of AlbumFotos.RegisterModel)" %>

<asp:Content ID="registerTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Registrarse
</asp:Content>

<asp:Content ID="registerContent" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1>Registrarse.</h1>
        <h2>Crea una cuenta y empieza a compartir imágenes.</h2>
    </hgroup>

    <% Using Html.BeginForm() %>
        <%: Html.AntiForgeryToken() %>
        <%: Html.ValidationSummary() %>

        <fieldset>
            <legend>Formulario de registro</legend>
            <ol>
                <li>
                    <%: Html.LabelFor(Function(m) m.UserName) %>
                    <%: Html.TextBoxFor(Function(m) m.UserName) %>
                </li>
                <li>
                    <%: Html.LabelFor(Function(m) m.Password) %>
                    <%: Html.PasswordFor(Function(m) m.Password) %>
                </li>
                <li>
                    <%: Html.LabelFor(Function(m) m.ConfirmPassword) %>
                    <%: Html.PasswordFor(Function(m) m.ConfirmPassword) %>
                </li>
            </ol>
            <input type="submit" value="Registrarse" />
        </fieldset>
    <% End Using %>
</asp:Content>

<asp:Content ID="scriptsContent" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
