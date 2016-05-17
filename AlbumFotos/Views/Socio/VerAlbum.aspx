<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
VerAlbum
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server">

<h2>VerAlbum</h2>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="album" HeaderText="album" SortExpression="album" />
                    <asp:BoundField DataField="ruta" HeaderText="ruta" SortExpression="ruta" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PhotoArtConnectionString %>" SelectCommand="SELECT [album], [ruta] FROM [Fotos] WHERE (([nick] = @nick) AND ([album] = @album))">
                <SelectParameters>
                    <asp:SessionParameter Name="nick" SessionField="Nick" Type="String" />
                    <asp:SessionParameter Name="album" SessionField="Album" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <Ul>
        <li><a href="MisAlbumes">Mis Álbumes</a></li>
        <li><a href="SubirFoto">Subir una nueva fotografía</a></li>
        <li>Explorar álbumes</li>
    </Ul>

    </form>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
