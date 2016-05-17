<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of AlbumFotos.Usuarios)" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Registro
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Create</h2>

<%-- The following line works around an ASP.NET compiler warning --%>
<%: "" %>

<% Using Html.BeginForm() %>
    <%: Html.AntiForgeryToken() %>
    <%: Html.ValidationSummary(True) %>

    <fieldset>
        <legend>Usuarios</legend>

        <div class="editor-label">
            <%: Html.LabelFor(Function(model) model.nick) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(Function(model) model.nick)%>
            <%: Html.ValidationMessageFor(Function(model) model.nick) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(Function(model) model.pass) %>
        </div>
        <div class="editor-field">
            <%: Html.PasswordFor(Function(model) model.pass)%>
            <%: Html.ValidationMessageFor(Function(model) model.pass) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(Function(model) model.email) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(Function(model) model.email) %>
            <%: Html.ValidationMessageFor(Function(model) model.email) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(Function(model) model.nombre) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(Function(model) model.nombre) %>
            <%: Html.ValidationMessageFor(Function(model) model.nombre) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(Function(model) model.apellido) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(Function(model) model.apellido) %>
            <%: Html.ValidationMessageFor(Function(model) model.apellido) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(Function(model) model.pregunta) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(Function(model) model.pregunta) %>
            <%: Html.ValidationMessageFor(Function(model) model.pregunta) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(Function(model) model.respuesta) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(Function(model) model.respuesta) %>
            <%: Html.ValidationMessageFor(Function(model) model.respuesta) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(Function(model) model.avatar) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(Function(model) model.avatar) %>
            <div class="editor-field">
            <input name="ImageUploaded" type="file">  
        </div>
        </div>

        

        <p>
            <input type="submit" value="Create" />
        </p>
    </fieldset> 

<% End Using %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
