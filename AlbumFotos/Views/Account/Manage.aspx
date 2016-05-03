<%@ Page Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of AlbumFotos.LocalPasswordModel)" %>

<asp:Content ID="manageTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Administrar cuenta
</asp:Content>

<asp:Content ID="manageContent" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1>Administrar cuenta.</h1>
    </hgroup>

    <p class="message-success"><%: ViewData("StatusMessage") %></p>

    <p>Ha iniciado sesión como <strong><%: User.Identity.Name %></strong>.</p>

    <% If ViewData("HasLocalPassword") Then
        Html.RenderPartial("_ChangePasswordPartial")
    Else 
        Html.RenderPartial("_SetPasswordPartial")
    End If %>

    <section id="externalLogins">
        <%: Html.Action("RemoveExternalLogins") %>

        <h3>Agregar un inicio de sesión externo</h3>
        <%: Html.Action("ExternalLoginsList", New With { .ReturnUrl = ViewData("ReturnUrl") }) %>
    </section>
</asp:Content>

<asp:Content ID="scriptsContent" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>