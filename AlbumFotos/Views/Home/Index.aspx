<%@ Page Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Inicio <%--Aquí es donde damos título a la página actual.--%>
</asp:Content>

<asp:Content ID="indexFeatured" ContentPlaceHolderID="FeaturedContent" runat="server">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>Álbum de Fotos</h1>
                <h2><%: ViewData("Message") %></h2>
            </hgroup>
            <p>
                Bienvenido a nuestra aplicación. Aquí podras crear tus álbumes de fotografías y compartirlos con quien quieras.</p>
        </div>
    </section>
</asp:Content>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Te recomendamos que eches un vistazo a los siguientes álbumes.</h3>
    <ol class="round">
        <table border="1" style="width: 729px">
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
    </ol>
<br />
Añadir algo.
</asp:Content>
