<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <hgroup class="title">
        <h1>Área de Socios.</h1>
        <h3>Menú del socio:</h3>
        <p>&nbsp;</p>
    </hgroup>

    <Ul>
        <li><a href="Socio/MisAlbumes">Mis Álbumes</a></li>
        <li><a href="Socio/FormNuevoAlbum">Crear un nuevo álbum</a></li>
        <li>Explorar álbumes</li>
    </Ul>

    <!--Si es administrador que aparezca un enlace para ir al panel de administración.-->

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
