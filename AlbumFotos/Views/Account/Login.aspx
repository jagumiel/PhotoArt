<%@ Page Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of AlbumFotos.LoginModel)" %>

<asp:Content ID="loginTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Iniciar sesión
</asp:Content>

<asp:Content ID="loginContent" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1>Iniciar sesión.</h1>
    </hgroup>

    <section id="loginForm">
    <h2>Utilice una cuenta local para iniciar sesión.</h2>
    <% Using Html.BeginForm(New With { .ReturnUrl = ViewData("ReturnUrl") }) %>
        <%: Html.AntiForgeryToken() %>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Formulario de inicio de sesión</legend>
            <ol>
                <li>
                    <%: Html.LabelFor(Function(m) m.UserName) %>
                    <%: Html.TextBoxFor(Function(m) m.UserName) %>
                    <%: Html.ValidationMessageFor(Function(m) m.UserName) %>
                </li>
                <li>
                    <%: Html.LabelFor(Function(m) m.Password) %>
                    <%: Html.PasswordFor(Function(m) m.Password) %>
                    <%: Html.ValidationMessageFor(Function(m) m.Password) %>
                </li>
                <li>
                    <%: Html.CheckBoxFor(Function(m) m.RememberMe) %>
                    <%: Html.LabelFor(Function(m) m.RememberMe, New With { .Class = "checkbox" }) %>
                </li>
            </ol>
            <input type="submit" value="Iniciar sesión" />
        </fieldset>
        <p>
            <%: Html.ActionLink("Registrarse", "Register") %> si no tiene una cuenta.
        </p>
    <% End Using %>
    </section>

    <section class="social" id="socialLoginForm">
        <h2>Usar otro servicio para iniciar sesión.</h2>
        <%: Html.Action("ExternalLoginsList", New With { .ReturnUrl = ViewData("ReturnUrl") }) %>
    </section>
</asp:Content>

<asp:Content ID="scriptsContent" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
