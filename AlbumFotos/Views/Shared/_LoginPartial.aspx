<%@ Page Language="VB" Inherits="System.Web.Mvc.ViewPage" %>
<!--% If (Request.IsAuthenticated) Then %-->
<% If (Session("Email") Is Nothing) Then%>
    <ul>
        <li><%: Html.ActionLink("Registrarse", "Registro", "Usuario", routeValues:=Nothing, htmlAttributes:=New With {.id = "registerLink"})%></li>
        <li><%: Html.ActionLink("Iniciar sesión", "Login", "Usuario", routeValues:=Nothing, htmlAttributes:=New With {.id = "loginLink"})%></li>
    </ul>
<% Else %>
    <ul>        
        <li><%: Html.ActionLink("Cerrar sesión", "Logout", "Usuario", routeValues:=Nothing, htmlAttributes:=New With {.id = "logoutLink"})%></li>
    </ul>
<% End If %>


