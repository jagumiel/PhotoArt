Public Class UserController
    Inherits System.Web.Mvc.Controller
    Public FuncionesUsuario As New BibliotecaDeFunciones.Usuario_Logic
    '
    ' GET: /User


    Function Registro() As ActionResult
        ViewData("Message") = "Crea una cuenta y empieza a compartir imágenes."

        Return View()
    End Function

    Function RegistrarUsuario(ByVal nick As String, ByVal pass As String, ByVal email As String, ByVal nombre As String, ByVal apellido As String, ByVal pregunta As String, ByVal respuesta As String, ByVal avatar As String) As ActionResult
        Dim miNick = Request.QueryString("nick")
        MsgBox(nick)

        'nick, pass, email, rol, confirmado, nombre, apellido, pregunta, respuesta, avatar, baja
        FuncionesUsuario.insertarUsuario(nick, pass, email, nombre, apellido, pregunta, respuesta, avatar)
        'Devolver vista Login.
        Return View()
    End Function

    Function LogIn(ByVal email As String, ByVal pass As String)
        FuncionesUsuario.iniciarSesion(email, pass)
        Return View()
    End Function

End Class