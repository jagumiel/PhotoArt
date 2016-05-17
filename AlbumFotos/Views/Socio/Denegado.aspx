<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
Denegado
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <hgroup class="title">
        <h1>Acceso Denegado.</h1>
        <h2><%: ViewData("Message") %></h2>
    </hgroup>

    <p>No tienes acceso a ésta página. Inicia sesión o crea una cuenta.</p>
    <p><a href="../Usuario/Registro">Crear una cuenta</a></p>
    <p><a href="../Usuario/Login">Ir a Login</a></p>
    
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
