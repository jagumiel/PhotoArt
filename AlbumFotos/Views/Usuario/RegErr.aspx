<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
RegErr
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<hgroup class="title">
                <h1>Registro fallido.</h1>
                <h2><%: ViewData("Message") %></h2>
            </hgroup>
    <p>&nbsp;</p>
    <p>Algo fue mal. Puedes volver a intentar registrarte, o ir directamente a iniciar sesión si ya tienes una cuenta.</p>
        <p><a href="Registro">Crear una cuenta</a></p>
    <p><a href="Login">Ir a Login</a></p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
