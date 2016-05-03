<%@ Page Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of AlbumFotos.RegisterExternalLoginModel)" %>

<asp:Content ID="externalLoginConfirmationTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Registrarse con su <%: ViewData("ProviderDisplayName") %> cuenta
</asp:Content>

<asp:Content ID="externalLoginConfirmationContent" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1>Registrarse.</h1>
        <h2>Asociar su cuenta de <%: ViewBag.ProviderDisplayName %>.</h2>
    </hgroup>

    <% Using Html.BeginForm("ExternalLoginConfirmation", "Account", New With { .ReturnUrl = ViewData("ReturnUrl") }) %>
        <%: Html.AntiForgeryToken() %>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Formulario de asociación</legend>
            <p>
                Se ha autenticado correctamente con <strong><%: ViewData("ProviderDisplayName") %></strong>.
                Escriba un nombre de usuario para este sitio y haga clic en el botón Confirmar para finalizar
                el inicio de sesión.
            </p>
            <ol>
                <li class="name">
                    <%: Html.LabelFor(Function(m) m.UserName) %>
                    <%: Html.TextBoxFor(Function(m) m.UserName) %>
                    <%: Html.ValidationMessageFor(Function(m) m.UserName) %>
                </li>
            </ol>
            <%: Html.HiddenFor(Function(m) m.ExternalLoginData) %>
            <input type="submit" value="Registrarse" />
        </fieldset>
    <% End Using %>
</asp:Content>

<asp:Content ID="scriptsContent" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
