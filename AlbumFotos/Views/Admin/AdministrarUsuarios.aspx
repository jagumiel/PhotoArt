<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of AlbumFotos.PhotoArtEntities)" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
AdministrarUsuarios
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server">

<h2>AdministrarUsuarios</h2>

<%-- The following line works around an ASP.NET compiler warning --%>
<%: "" %>

<% Using Html.BeginForm() %>
    <%: Html.AntiForgeryToken() %>
    <%: Html.ValidationSummary(True) %>

    <fieldset>
        <legend>PhotoArtEntities</legend>

        <p>
            <input type="submit" value="Save" />
        </p>
    </fieldset>
<% End Using %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="email" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="nick" HeaderText="nick" SortExpression="nick" />
            <asp:BoundField DataField="pass" HeaderText="pass" SortExpression="pass" />
            <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" SortExpression="email" />
            <asp:BoundField DataField="rol" HeaderText="rol" SortExpression="rol" />
            <asp:BoundField DataField="confirmado" HeaderText="confirmado" SortExpression="confirmado" />
            <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
            <asp:BoundField DataField="apellido" HeaderText="apellido" SortExpression="apellido" />
            <asp:BoundField DataField="pregunta" HeaderText="pregunta" SortExpression="pregunta" />
            <asp:BoundField DataField="respuesta" HeaderText="respuesta" SortExpression="respuesta" />
            <asp:BoundField DataField="avatar" HeaderText="avatar" SortExpression="avatar" />
            <asp:BoundField DataField="baja" HeaderText="baja" SortExpression="baja" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PhotoArtConnectionString %>" SelectCommand="SELECT * FROM [Usuarios]"></asp:SqlDataSource>
    <br />
</div>

    </form>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
