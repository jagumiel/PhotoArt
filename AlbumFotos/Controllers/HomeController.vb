Public Class HomeController
    Inherits System.Web.Mvc.Controller

    Function Index() As ActionResult
        ViewData("Message") = "Tus recuerdos ahora online."

        Return View()
    End Function

    Function About() As ActionResult
        ViewData("Message") = "Your app description page."

        Return View()
    End Function

    Function Contact() As ActionResult
        ViewData("Message") = "Your contact page."

        Return View()
    End Function

    Function Registro() As ActionResult
        ViewData("Message") = "Crea una cuenta y empieza a compartir imágenes."

        Return View()
    End Function
End Class
