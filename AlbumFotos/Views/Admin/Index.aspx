<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of AlbumFotos.PhotoArtEntitiesT_Album)" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <hgroup class="title">
        <h1>Área de administración.</h1>
        <h3>Menú del administrador:</h3>
        <p>&nbsp;</p>
    </hgroup>

    <Ul>
        <li><a href="Admin/AdministrarUsuarios">Administrar Usuarios</a></li>
        <li><a href="FormNuevoAlbum">Crear un nuevo álbum</a></li>
        <li>Explorar álbumes</li>
    </Ul>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
