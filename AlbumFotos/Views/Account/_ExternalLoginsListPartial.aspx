﻿<%@ Page Language="VB" Inherits="System.Web.Mvc.ViewPage(Of ICollection(Of AuthenticationClientData))" %>
<%@ Import Namespace="Microsoft.Web.WebPages.OAuth" %>

<% If Model.Count = 0 Then %>
    <div class="message-info">
        <p>No hay ningún servicio de autenticación externa configurado. Consulte <a href="http://go.microsoft.com/fwlink/?LinkId=252166">este artículo</a>
        para obtener detalles sobre la configuración de esta aplicación ASP.NET para que admita el inicio de sesión a través de servicios externos.</p>
    </div>
<% Else
    Using Html.BeginForm("ExternalLogin", "Account", New With { .ReturnUrl = ViewData("ReturnUrl") }) %>
    <%: Html.AntiForgeryToken() %>
    <fieldset id="socialLoginList">
        <legend>Inicie sesión con otro servicio</legend>
        <p>
        <% For Each p as AuthenticationClientData in Model %>
            <button type="submit" name="provider" value="<%: p.AuthenticationClient.ProviderName %>" title="Inicie sesión con su <%: p.DisplayName %> cuenta"><%: p.DisplayName%></button>
        <% Next %>
        </p>
    </fieldset>
    <% End Using
End If %>