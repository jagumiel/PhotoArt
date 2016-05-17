Public Class AdminController
    Inherits System.Web.Mvc.Controller
    Dim m As New AlbumFotos.PhotoArtEntities

    '
    ' GET: /Admin

    Function Index() As ActionResult
        Return View()
    End Function

    Function AdministrarUsuarios() As ActionResult
        ' m.Usuarios.
        'm.SaveChanges()

        Return View()
    End Function

End Class