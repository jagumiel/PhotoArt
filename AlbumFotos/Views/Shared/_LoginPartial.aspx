﻿<%@ Page Language="VB" Inherits="System.Web.Mvc.ViewPage" %>
<% If (Request.IsAuthenticated) Then %>
    Hola, <%: Html.ActionLink(User.Identity.Name, "Manage", "Account", routeValues:=Nothing, htmlAttributes:=New With {.class = "username", .title = "Manage" }) %>!
    <% Using Html.BeginForm("LogOff", "Account", FormMethod.Post, New With { .Id = "logoutForm" }) %>
        <%: Html.AntiForgeryToken() %>
        <a href="javascript:document.getElementById('logoutForm').submit()">Cerrar sesión</a>
    <% End Using %>
<% Else %>
    <ul>
        <li><%: Html.ActionLink("Registrarse", "Registro", "Usuario", routeValues:=Nothing, htmlAttributes:=New With {.id = "registerLink"})%></li>
        <li><%: Html.ActionLink("Iniciar sesión", "Login", "Usuario", routeValues:=Nothing, htmlAttributes:=New With {.id = "loginLink"})%></li>
    </ul>
<% End If %>