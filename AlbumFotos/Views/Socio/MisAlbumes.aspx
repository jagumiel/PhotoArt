<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of AlbumFotos.Albumes)" %>

<script runat="server">

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs)

    End Sub
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
MisAlbumes
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server">

<h2>MisAlbumes</h2>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="portada" HeaderText="portada" SortExpression="portada" />
                    <asp:HyperLinkField DataNavigateUrlFields="nombre" DataNavigateUrlFormatString="../Socio/VerAlbum?" DataTextField="nombre" DataTextFormatString="Ver {0}" HeaderText="enlace" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PhotoArtConnectionString %>" SelectCommand="SELECT [nombre], [portada] FROM [Albumes] WHERE ([nick] = @nick)">
                <SelectParameters>
                    <asp:SessionParameter Name="nick" SessionField="Nick" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

            <div class="editor-field">
                <%: Html.EditorFor(Function(model) model.nombre)%>
                <%: Html.ValidationMessageFor(Function(model) model.nombre)%>
            </div>

            <input type="submit" value="Ver" />

        </p>
        

</form>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
