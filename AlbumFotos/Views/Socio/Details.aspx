<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of AlbumFotos.Albumes)" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

<fieldset>
    <legend>Albumes</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(Function(model) model.Codigo) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(Function(model) model.Codigo) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(Function(model) model.nick) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(Function(model) model.nick) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(Function(model) model.nombre) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(Function(model) model.nombre) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(Function(model) model.acceso) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(Function(model) model.acceso) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(Function(model) model.portada) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(Function(model) model.portada) %>
    </div>
</fieldset>
<p>
    <%--<%: Html.ActionLink("Edit", "Edit", New With {.id = Model.PrimaryKey}) %> |--%>
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
