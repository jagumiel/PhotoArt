<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of AlbumFotos.Albumes)" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    FormNuevoAlbum
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>FormNuevoAlbum</h2>

<%-- The following line works around an ASP.NET compiler warning --%>
<%: "" %>

<% Using Html.BeginForm() %>
    <%: Html.AntiForgeryToken() %>
    <%: Html.ValidationSummary(True) %>

    <fieldset>
        <legend>Albumes</legend>

        <div class="editor-label">
            <%: Html.LabelFor(Function(model) model.nombre) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(Function(model) model.nombre) %>
            <%: Html.ValidationMessageFor(Function(model) model.nombre) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(Function(model) model.acceso) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(Function(model) model.acceso) %>
            <%: Html.ValidationMessageFor(Function(model) model.acceso) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(Function(model) model.portada) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(Function(model) model.portada) %>
            <%: Html.ValidationMessageFor(Function(model) model.portada) %>
        </div>

        <p>
            <input type="submit" value="Create" />
        </p>
    </fieldset>
<% End Using %>

<div>
    <%: Html.ActionLink("Volver atrás", "Index")%>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
