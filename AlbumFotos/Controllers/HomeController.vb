Public Class HomeController
    Inherits System.Web.Mvc.Controller

    Function Index() As ActionResult
        ViewData("Message") = "Tus recuerdos ahora online."
        If Session("Rol") Is Nothing Then
            Return View()
        Else
            Dim miRol = CType(Session.Item("Rol"), String)
            If (String.Equals(miRol, "admin")) Then
                Return RedirectToAction("../Admin/Index")
            Else
                Return RedirectToAction("../Socio/Index")
            End If
        End if

    End Function

    Function About() As ActionResult
        ViewData("Message") = "Your app description page."

        Return View()
    End Function

    Function Contact() As ActionResult
        ViewData("Message") = "Your contact page."

        Return View()
    End Function


End Class
