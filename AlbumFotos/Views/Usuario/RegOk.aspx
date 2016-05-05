<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
RegOk
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

                <hgroup class="title">
                <h1>Registro satisfactorio.</h1>
                <h2><%: ViewData("Message") %></h2>
            </hgroup>

    <p>
        Pulsa el siguiente enlace para iniciar sesión y empezar a usar el álbum.:</p>
    <p>
        <a href="Login">Ir a Login</a>&nbsp;</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    </asp:Content>
