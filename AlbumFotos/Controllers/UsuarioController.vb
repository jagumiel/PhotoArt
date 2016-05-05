Public Class UsuarioController

    Inherits System.Web.Mvc.Controller
    Dim m As New AlbumFotos.PhotoArtEntities
    Dim logicaUsuario As New BibliotecaDeFunciones.Usuario_Logic


    '
    ' GET: /Usuario

    Function Index() As ActionResult
        Return View()
    End Function

    '
    ' GET: /Usuario/Details/5

    Function Details(ByVal id As Integer) As ActionResult
        Return View()
    End Function

    '
    ' GET: /Usuario/Create

    Function Registro() As ActionResult
        Return View()
    End Function

    '
    ' POST: /Usuario/Create

    <HttpPost()> _
    Function Registro(ByVal miUser As Usuarios) As ActionResult
        Try
            m.Usuarios.Add(miUser)
            m.SaveChanges()
            'Se podría enviar un mail de confirmación, pero le enviamos por ahora a la página de Login
            ViewData("Message") = "Registro Correcto."
            Return RedirectToAction("RegOk")
        Catch
            Return RedirectToAction("RegErr")
        End Try
    End Function


    Function Login() As ActionResult
        Return View()
    End Function

    <HttpPost()> _
    Function Login(ByVal miUser As Usuarios) As ActionResult
        Try
            Dim email As String = miUser.email
            Dim pass As String = miUser.pass
            Dim rol As String
            If (logicaUsuario.iniciarSesion(email, pass)) Then
                '¿Socio o Admin?
                rol = logicaUsuario.obtenerRol(email)
                If (String.Equals(rol, "admin")) Then
                    'Hacer admin (Redirigir a página admin)
                Else
                    'Hacer socio (Redirigir a página socio)
                End If
                Return RedirectToAction("RegOk") 'PROVISIONAL!!!
            Else
                Return RedirectToAction("RegErr")
            End If
        Catch ex As Exception
            Return RedirectToAction("RegErr")
        End Try
    End Function

    '
    ' GET: /Usuario/Edit/5

    Function Edit(ByVal id As Integer) As ActionResult
        Return View()
    End Function

    '
    ' POST: /Usuario/Edit/5

    <HttpPost()> _
    Function Edit(ByVal id As Integer, ByVal collection As FormCollection) As ActionResult
        Try
            ' TODO: Add update logic here

            Return RedirectToAction("Index")
        Catch
            Return View()
        End Try
    End Function

    '
    ' GET: /Usuario/Delete/5

    Function Delete(ByVal id As Integer) As ActionResult
        Return View()
    End Function

    '
    ' POST: /Usuario/Delete/5

    <HttpPost()> _
    Function Delete(ByVal id As Integer, ByVal collection As FormCollection) As ActionResult
        Try
            ' TODO: Add delete logic here

            Return RedirectToAction("Index")
        Catch
            Return View()
        End Try
    End Function

    Function RegOk() As ActionResult
        ViewData("Message") = "Ya estás dado de alta en nuestro sistema."
        Return View()
    End Function

    Function RegErr() As ActionResult
        ViewData("Message") = "No se ha podido completar la solicitud."
        Return View()
    End Function

End Class