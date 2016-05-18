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
    <form id="form1" runat="server">
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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ruta" HeaderText="ruta" SortExpression="ruta" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PhotoArtConnectionString %>" SelectCommand="SELECT ruta FROM Fotos INNER JOIN Albumes ON Fotos.album=Albumes.nombre WHERE Albumes.acceso='Publico';"></asp:SqlDataSource>
        <br />
<br />
Añadir algo.
</form>
</asp:Content>