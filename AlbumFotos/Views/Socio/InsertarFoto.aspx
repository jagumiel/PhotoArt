<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
InsertarFoto
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>InsertarFoto</h2>

<% Using (Html.BeginForm("GuardarFoto", "Socio", FormMethod.Post, New With {.enctype = "multipart/form-data"}))%>
        <input name="f" type="file" />
        <input type="submit" value="Upload File" />
 <% End Using%>
</asp:Content>
